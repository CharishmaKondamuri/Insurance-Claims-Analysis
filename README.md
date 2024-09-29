# Insurance Claims Analysis using SQL
## Overview
<p>This project analyzes insurance data to uncover insights about customers, policies, claims, and agent performance. It involves SQL for data analysis, data manipulation, and reporting using a PostgreSQL database.</p>

## Objectives
- Understand customer demographics and their impact on policy sales.
- Analyze insurance claims data to identify trends in claim types and statuses.
- Evaluate agent performance based on policy sales and claim outcomes.
- Generate insights to improve customer satisfaction and optimize insurance processes.

<img align="centre" alt="coding" width="1100" src="https://kmrdpartners.com/wp-content/uploads/2017/10/KMRD-Claims-Management-1024x604.jpg">

## Dataset Description

- **Customers_Data.csv**: Contains demographic information about customers (e.g., age, location, gender).
- **Policies_Data.csv**: Information about insurance policies (e.g., policy type, premium, start and end dates).
- **Claims_Data.csv**: Data on claims filed by customers (e.g., claim date, amount, status).
- **Agents_Data.csv**: Information about agents managing policies and claims (e.g., region, experience).

## Database Schema
<img align="centre" alt="coding" width="900" src="https://github.com/CharishmaKondamuri/Insurance-Claims-Analysis/blob/main/ERD.png">

## Key SQL Analysis
#### 1. Total Premiums and Ranking by Customer 
Query to calculate the total premium each customer has paid, and rank them based on the total amount paid.

```sql
SELECT 
    c.CustomerID,
    c.Name,
    SUM(p.Premium) AS TotalPremiumPaid,
    RANK() OVER (ORDER BY SUM(p.Premium) DESC) AS PremiumRank
FROM Customers c
JOIN Policies p ON c.CustomerID = p.CustomerID
GROUP BY c.CustomerID, c.Name;
```
#### 2. Top 3 Agents by Number of Policies
Query to find the top 3 agents who have handled the most number of policies.

```sql
SELECT 
    a.AgentID,
    a.Name,
    COUNT(p.PolicyID) AS TotalPolicies,
    RANK() OVER (ORDER BY COUNT(p.PolicyID) DESC) AS PolicyRank
FROM Agents a
JOIN Policies p ON a.AgentID = p.AgentID
GROUP BY a.AgentID, a.Name
ORDER BY PolicyRank
LIMIT 3;
```

#### 3.Claims Summary by Policy Type
Query to show the total number of claims and the total claim amount for each policy type, pivoted by claim status.

```sql
SELECT
    p.PolicyType,
    COUNT(CASE WHEN c.ClaimStatus = 'Approved' THEN 1 END) AS ApprovedClaims,
    COUNT(CASE WHEN c.ClaimStatus = 'Pending' THEN 1 END) AS PendingClaims,
    COUNT(CASE WHEN c.ClaimStatus = 'Rejected' THEN 1 END) AS RejectedClaims,
    SUM(CASE WHEN c.ClaimStatus = 'Approved' THEN c.ClaimAmount END) AS ApprovedAmount,
    SUM(CASE WHEN c.ClaimStatus = 'Pending' THEN c.ClaimAmount END) AS PendingAmount,
    SUM(CASE WHEN c.ClaimStatus = 'Rejected' THEN c.ClaimAmount END) AS RejectedAmount
FROM Policies p
JOIN Claims c ON p.PolicyID = c.PolicyID
GROUP BY p.PolicyType;
```

#### 4.Customers with No Claims Filed
Query to find the customers who have never filed any claim.

```sql
SELECT c.CustomerID, c.Name
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM Policies p
    JOIN Claims cl ON p.PolicyID = cl.PolicyID
    WHERE p.CustomerID = c.CustomerID
);
```

#### 5.Most Recent and Total Claims per Customer
Query to find each customer's most recent claim, total claim amount, and the total number of claims.

```sql
WITH CustomerClaims AS (
    -- Get each customer's total claim amount and claim count
    SELECT 
        c.CustomerID,
        c.Name,
        COUNT(cl.ClaimID) AS TotalClaims,
        SUM(cl.ClaimAmount) AS TotalClaimAmount
    FROM Customers c
    LEFT JOIN Policies p ON c.CustomerID = p.CustomerID
    LEFT JOIN Claims cl ON p.PolicyID = cl.PolicyID
    GROUP BY c.CustomerID, c.Name
),
RecentClaims AS (
    -- Get the most recent claim for each customer
    SELECT 
        c.CustomerID,
        MAX(cl.ClaimDate) AS MostRecentClaimDate,
        MAX(cl.ClaimAmount) AS MostRecentClaimAmount
    FROM Customers c
    LEFT JOIN Policies p ON c.CustomerID = p.CustomerID
    LEFT JOIN Claims cl ON p.PolicyID = cl.PolicyID
    GROUP BY c.CustomerID
)

-- Combine the results from both CTEs
SELECT 
    cc.CustomerID,
    cc.Name,
    rc.MostRecentClaimDate,
    rc.MostRecentClaimAmount,
    cc.TotalClaims,
    cc.TotalClaimAmount
FROM CustomerClaims cc
LEFT JOIN RecentClaims rc ON cc.CustomerID = rc.CustomerID;
```

#### 6.Maximum Claim Amount per Customer
Query to find the maximum claim amount for each customer, showing customers who have more than 2 claims.

```sql
WITH ClaimSummary AS (
    SELECT 
        c.CustomerID,
        c.Name,
        COUNT(cl.ClaimID) AS TotalClaims,
        MAX(cl.ClaimAmount) AS MaxClaimAmount
    FROM Customers c
    JOIN Policies p ON c.CustomerID = p.CustomerID
    JOIN Claims cl ON p.PolicyID = cl.PolicyID
    GROUP BY c.CustomerID, c.Name
)
SELECT *
FROM ClaimSummary
WHERE TotalClaims > 2;
```

#### 7.Running Total of Claim Amounts
Query to calculate the running total of claim amounts for each customer, ordered by claim date.

```sql
SELECT
    c.CustomerID,
    c.Name,
    cl.ClaimDate,
    cl.ClaimAmount,
    SUM(cl.ClaimAmount) OVER (PARTITION BY c.CustomerID ORDER BY cl.ClaimDate) AS RunningTotalClaim
FROM Customers c
JOIN Policies p ON c.CustomerID = p.CustomerID
JOIN Claims cl ON p.PolicyID = cl.PolicyID
ORDER BY c.CustomerID, cl.ClaimDate;
```

#### 8.Percentage of Approved, Rejected, and Pending Claims by Agent
Query to show the percentage of claims that were approved, rejected, and pending for each agent.

```sql
SELECT 
    a.AgentID,
    a.Name,
    COUNT(CASE WHEN c.ClaimStatus = 'Approved' THEN 1 END)::DECIMAL / COUNT(*) * 100 AS ApprovedPercentage,
    COUNT(CASE WHEN c.ClaimStatus = 'Pending' THEN 1 END)::DECIMAL / COUNT(*) * 100 AS PendingPercentage,
    COUNT(CASE WHEN c.ClaimStatus = 'Rejected' THEN 1 END)::DECIMAL / COUNT(*) * 100 AS RejectedPercentage
FROM Agents a
JOIN Policies p ON a.AgentID = p.AgentID
JOIN Claims c ON p.PolicyID = c.PolicyID
GROUP BY a.AgentID, a.Name;
```

#### 9.Customers with Multiple Active Policies
Query to list policies where the same customer has multiple active policies.

```sql
SELECT p1.PolicyID, p1.CustomerID, p1.StartDate, p1.EndDate
FROM Policies p1
JOIN Policies p2 ON p1.CustomerID = p2.CustomerID
    AND p1.PolicyID <> p2.PolicyID
    AND p1.StartDate <= p2.EndDate
    AND p1.EndDate >= p2.StartDate
ORDER BY p1.CustomerID;
```

#### 10.Total Claim Amount for Customers with Rejected Claims
Query to find the total claim amount for each customer, including only customers who have at least one rejected claim.

```sql
SELECT c.CustomerID, c.Name, SUM(cl.ClaimAmount) AS TotalClaimAmount
FROM Customers c
JOIN Policies p ON c.CustomerID = p.CustomerID
JOIN Claims cl ON p.PolicyID = cl.PolicyID
WHERE c.CustomerID IN (
    SELECT p.CustomerID
    FROM Policies p
    JOIN Claims cl ON p.PolicyID = cl.PolicyID
    WHERE cl.ClaimStatus = 'Rejected'
)
GROUP BY c.CustomerID, c.Name;
```





