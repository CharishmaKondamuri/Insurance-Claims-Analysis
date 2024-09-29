# Insurance Claims Analysis using SQL
## Introduction
<p>This project aims to leverage SQL to perform an in-depth analysis of an insurance company's core operational data, focusing on customer demographics, policy sales, and claims management. By utilizing complex SQL queries, the data will uncover key insights that drive business decisions, optimize customer service strategies, and enhance overall operational efficiency.Through this analysis, i will address essential business questions and provide actionable insights by exploring key relationships between customers, agents, policies, and claims. The data will be queried, manipulated, and analyzed to reveal patterns and trends that can improve decision-making processes, identify growth opportunities, and mitigate risks.</p>

<img align="centre" alt="coding" width="1100" src="https://kmrdpartners.com/wp-content/uploads/2017/10/KMRD-Claims-Management-1024x604.jpg">

## Entity Relationship Diagram:
<img align="centre" alt="coding" width="900" src="https://github.com/CharishmaKondamuri/Insurance-Claims-Analysis/blob/main/ERD.png">

## Case Study Questions
#### 1. Calculate the total premium each customer has paid, and rank them based on the total amount paid.

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
#### 2. Find the top 3 agents who have handled the most number of policies.

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

#### 3.Show the total number of claims and the total claim amount for each policy type, pivoted by claim status.

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

#### 4.Find the customers who have never filed any claim.

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

#### 5.For each customer, find their most recent claim, the total claim amount, and the total number of claims.

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

#### 6.Find the maximum claim amount for each customer, and show customers who have more than 2 claims.

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

#### 7.For each customer, calculate the running total of claim amounts ordered by claim date.

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

#### 8.Show the percentage of claims that were approved, rejected, and pending for each agent.

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

#### 9.List policies where the same customer has multiple active policies.

```sql
SELECT p1.PolicyID, p1.CustomerID, p1.StartDate, p1.EndDate
FROM Policies p1
JOIN Policies p2 ON p1.CustomerID = p2.CustomerID
    AND p1.PolicyID <> p2.PolicyID
    AND p1.StartDate <= p2.EndDate
    AND p1.EndDate >= p2.StartDate
ORDER BY p1.CustomerID;
```

#### 10.Find the total claim amount for each customer, but only include customers who have at least one rejected claim.

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





