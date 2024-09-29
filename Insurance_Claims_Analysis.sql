CREATE DATABASE Insurance_Claims;

CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    Location VARCHAR(100),
    Gender VARCHAR(10)
);

CREATE TABLE Agents (
    AgentID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Region VARCHAR(100),
    ExperienceYears INT
);

CREATE TABLE Policies (
    PolicyID SERIAL PRIMARY KEY,
    PolicyType VARCHAR(50) NOT NULL,
    StartDate DATE,
    EndDate DATE,
    Premium DECIMAL(10, 2),
    CustomerID INT REFERENCES Customers(CustomerID),
    AgentID INT REFERENCES Agents(AgentID)
);

CREATE TABLE Claims (
    ClaimID SERIAL PRIMARY KEY,
    PolicyID INT REFERENCES Policies(PolicyID),
    ClaimDate DATE,
    ClaimAmount DECIMAL(10, 2),
    ClaimStatus VARCHAR(50)
);


INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Martinez', 73, 'Vancouver', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Jones', 53, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Garcia', 44, 'Edmonton', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Johnson', 77, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Martinez', 38, 'Toronto', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Miller', 51, 'Quebec City', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Miller', 77, 'Edmonton', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Davis', 46, 'Winnipeg', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Miller', 71, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Brown', 77, 'Winnipeg', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Davis', 19, 'Winnipeg', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Brown', 38, 'Calgary', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Rodriguez', 33, 'Vancouver', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Jones', 54, 'Montreal', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Rodriguez', 19, 'Vancouver', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Brown', 59, 'Winnipeg', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Johnson', 57, 'Quebec City', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Rodriguez', 67, 'Edmonton', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Brown', 42, 'Ottawa', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Rodriguez', 55, 'Calgary', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Rodriguez', 26, 'Vancouver', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Smith', 61, 'Quebec City', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Rodriguez', 78, 'Montreal', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Brown', 60, 'Edmonton', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Miller', 57, 'Edmonton', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Williams', 38, 'Montreal', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Garcia', 76, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Miller', 47, 'Ottawa', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Brown', 70, 'Toronto', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Brown', 62, 'Toronto', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Miller', 54, 'Vancouver', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Rodriguez', 80, 'Montreal', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Williams', 67, 'Toronto', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Garcia', 59, 'Quebec City', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Jones', 40, 'Vancouver', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Brown', 45, 'Edmonton', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Johnson', 68, 'Montreal', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Martinez', 26, 'Ottawa', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Martinez', 37, 'Toronto', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Martinez', 36, 'Montreal', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Rodriguez', 77, 'Calgary', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Miller', 25, 'Quebec City', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Garcia', 28, 'Vancouver', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Williams', 44, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Jones', 43, 'Ottawa', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Brown', 28, 'Winnipeg', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Miller', 58, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Garcia', 46, 'Winnipeg', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Rodriguez', 70, 'Edmonton', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Davis', 57, 'Winnipeg', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Brown', 36, 'Ottawa', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Johnson', 65, 'Ottawa', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Williams', 60, 'Ottawa', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Johnson', 28, 'Ottawa', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Jones', 79, 'Edmonton', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Martinez', 67, 'Montreal', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Johnson', 63, 'Winnipeg', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Brown', 21, 'Edmonton', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Davis', 77, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Rodriguez', 55, 'Calgary', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Williams', 50, 'Calgary', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Williams', 56, 'Winnipeg', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Brown', 57, 'Vancouver', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Rodriguez', 37, 'Quebec City', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Jones', 26, 'Ottawa', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Johnson', 46, 'Winnipeg', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Williams', 70, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Miller', 25, 'Toronto', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Rodriguez', 33, 'Calgary', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Jones', 53, 'Winnipeg', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Garcia', 40, 'Winnipeg', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Williams', 28, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Martinez', 30, 'Vancouver', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Miller', 44, 'Vancouver', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Brown', 61, 'Ottawa', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Brown', 45, 'Vancouver', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Smith', 49, 'Vancouver', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Williams', 63, 'Toronto', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Rodriguez', 72, 'Montreal', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Williams', 58, 'Montreal', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Brown', 54, 'Toronto', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Brown', 70, 'Ottawa', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Martinez', 53, 'Quebec City', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Davis', 49, 'Vancouver', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Smith', 42, 'Winnipeg', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Smith', 42, 'Toronto', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Jones', 20, 'Calgary', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Johnson', 18, 'Montreal', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Johnson', 50, 'Quebec City', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Martinez', 27, 'Vancouver', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Garcia', 64, 'Ottawa', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Davis', 42, 'Calgary', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Williams', 48, 'Calgary', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Martinez', 72, 'Calgary', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Brown', 30, 'Montreal', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Rodriguez', 71, 'Vancouver', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Martinez', 42, 'Ottawa', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Smith', 41, 'Montreal', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Jones', 27, 'Edmonton', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Williams', 53, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Williams', 64, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Williams', 43, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Davis', 52, 'Calgary', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Rodriguez', 35, 'Vancouver', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Brown', 23, 'Winnipeg', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Williams', 23, 'Toronto', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Rodriguez', 45, 'Quebec City', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Davis', 62, 'Edmonton', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Smith', 71, 'Winnipeg', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Williams', 33, 'Vancouver', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Davis', 33, 'Toronto', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Rodriguez', 33, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Johnson', 37, 'Quebec City', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Jones', 44, 'Montreal', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Jones', 25, 'Calgary', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Miller', 62, 'Montreal', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Johnson', 25, 'Edmonton', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Smith', 75, 'Edmonton', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Miller', 19, 'Calgary', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Brown', 43, 'Montreal', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Miller', 55, 'Montreal', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Brown', 34, 'Montreal', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Davis', 69, 'Toronto', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Garcia', 48, 'Calgary', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Williams', 18, 'Edmonton', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Brown', 77, 'Quebec City', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Johnson', 40, 'Calgary', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Martinez', 67, 'Vancouver', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Williams', 72, 'Quebec City', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Miller', 44, 'Quebec City', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Brown', 50, 'Ottawa', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Williams', 69, 'Toronto', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Davis', 43, 'Calgary', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Johnson', 63, 'Edmonton', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Williams', 31, 'Edmonton', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Miller', 74, 'Montreal', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Johnson', 32, 'Winnipeg', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Johnson', 54, 'Calgary', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Miller', 50, 'Winnipeg', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Garcia', 72, 'Vancouver', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Garcia', 64, 'Montreal', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Johnson', 29, 'Ottawa', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Brown', 70, 'Vancouver', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Rodriguez', 21, 'Quebec City', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Smith', 39, 'Toronto', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Smith', 70, 'Winnipeg', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Smith', 72, 'Calgary', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Miller', 49, 'Edmonton', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Johnson', 65, 'Quebec City', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Jones', 24, 'Vancouver', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Jones', 64, 'Edmonton', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Johnson', 46, 'Quebec City', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Martinez', 67, 'Quebec City', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Garcia', 18, 'Edmonton', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Brown', 42, 'Montreal', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Garcia', 29, 'Winnipeg', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Davis', 61, 'Winnipeg', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Miller', 34, 'Calgary', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Miller', 27, 'Vancouver', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Brown', 69, 'Vancouver', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Miller', 68, 'Calgary', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Williams', 46, 'Vancouver', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Johnson', 50, 'Winnipeg', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Davis', 62, 'Montreal', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Martinez', 46, 'Quebec City', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Jones', 24, 'Calgary', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Williams', 36, 'Edmonton', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Jones', 79, 'Toronto', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Johnson', 39, 'Montreal', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Martinez', 65, 'Toronto', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Chris Jones', 63, 'Toronto', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Jones', 39, 'Vancouver', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Rodriguez', 56, 'Montreal', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Smith', 44, 'Montreal', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Martinez', 56, 'Winnipeg', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Garcia', 59, 'Vancouver', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Miller', 54, 'Ottawa', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Garcia', 77, 'Montreal', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Miller', 47, 'Toronto', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Jones', 55, 'Ottawa', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Miller', 54, 'Edmonton', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Rodriguez', 40, 'Vancouver', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Martinez', 76, 'Winnipeg', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Davis', 24, 'Edmonton', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Jones', 25, 'Winnipeg', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Emily Jones', 59, 'Winnipeg', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Davis', 20, 'Montreal', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Davis', 69, 'Montreal', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Johnson', 72, 'Vancouver', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Brown', 43, 'Quebec City', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Michael Williams', 30, 'Quebec City', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Laura Williams', 75, 'Ottawa', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Smith', 79, 'Quebec City', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('John Martinez', 36, 'Winnipeg', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Jones', 21, 'Toronto', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('David Martinez', 60, 'Montreal', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Alex Johnson', 73, 'Winnipeg', 'Other');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Anna Rodriguez', 79, 'Vancouver', 'Male');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Sarah Rodriguez', 74, 'Montreal', 'Female');
INSERT INTO Customers (Name, Age, Location, Gender) VALUES ('Jane Smith', 55, 'Calgary', 'Female');

INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('John Williams', 'Central', 21);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Martinez', 'North', 9);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Garcia', 'Central', 28);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Jones', 'Central', 2);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Garcia', 'East', 17);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Williams', 'South', 11);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Miller', 'West', 12);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Johnson', 'East', 4);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Jones', 'South', 8);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Rodriguez', 'North', 20);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Jones', 'Central', 21);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Davis', 'South', 27);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Johnson', 'Central', 8);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Davis', 'South', 12);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Garcia', 'North', 1);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Miller', 'South', 10);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Johnson', 'South', 14);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Rodriguez', 'Central', 7);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Miller', 'South', 16);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Rodriguez', 'Central', 21);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Davis', 'West', 14);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Johnson', 'South', 29);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Brown', 'East', 15);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Williams', 'Central', 8);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Johnson', 'East', 30);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Miller', 'South', 23);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Brown', 'East', 23);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Jones', 'East', 1);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Davis', 'West', 19);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Jones', 'Central', 8);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Brown', 'East', 11);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Johnson', 'East', 26);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Davis', 'West', 13);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Williams', 'East', 24);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Jones', 'Central', 6);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Miller', 'West', 11);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Davis', 'South', 19);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Laura Davis', 'East', 8);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Rodriguez', 'East', 4);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Miller', 'South', 3);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Rodriguez', 'East', 26);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Rodriguez', 'North', 19);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Martinez', 'East', 10);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Smith', 'East', 12);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Davis', 'South', 21);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('John Davis', 'East', 3);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Williams', 'Central', 6);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Davis', 'Central', 7);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Smith', 'Central', 19);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Rodriguez', 'North', 10);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Williams', 'East', 10);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Jones', 'North', 10);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Williams', 'Central', 25);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Rodriguez', 'West', 11);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Brown', 'East', 29);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Williams', 'Central', 11);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Davis', 'Central', 9);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Rodriguez', 'North', 21);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Martinez', 'Central', 5);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Smith', 'Central', 15);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Davis', 'South', 10);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Garcia', 'South', 6);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Davis', 'West', 29);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Johnson', 'West', 5);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Johnson', 'Central', 15);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Brown', 'West', 9);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Smith', 'North', 14);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Jones', 'West', 22);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Rodriguez', 'West', 25);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Martinez', 'North', 13);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Jones', 'North', 7);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Miller', 'North', 20);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Rodriguez', 'South', 25);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Miller', 'East', 24);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Smith', 'East', 20);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Johnson', 'Central', 26);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Jones', 'East', 21);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Smith', 'East', 3);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Garcia', 'West', 20);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Martinez', 'East', 8);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Rodriguez', 'West', 11);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Laura Johnson', 'West', 28);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Garcia', 'West', 23);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Williams', 'West', 28);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Johnson', 'South', 13);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Laura Rodriguez', 'West', 6);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Garcia', 'South', 4);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Brown', 'Central', 25);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Williams', 'East', 6);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Garcia', 'West', 13);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Davis', 'North', 5);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Davis', 'East', 13);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Jones', 'South', 2);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('John Martinez', 'West', 4);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Jones', 'North', 8);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Johnson', 'North', 27);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Rodriguez', 'West', 9);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Smith', 'East', 24);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Rodriguez', 'North', 6);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Davis', 'South', 18);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Jones', 'Central', 9);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Johnson', 'South', 11);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Williams', 'South', 16);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Brown', 'South', 4);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Williams', 'Central', 22);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Brown', 'South', 3);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Smith', 'West', 29);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Laura Brown', 'North', 1);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Smith', 'North', 16);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Miller', 'North', 5);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Jones', 'West', 3);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Smith', 'East', 15);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Smith', 'West', 18);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Smith', 'South', 28);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Davis', 'South', 10);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Martinez', 'East', 20);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Johnson', 'South', 11);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Garcia', 'North', 2);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Brown', 'West', 18);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Williams', 'West', 25);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Davis', 'Central', 24);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('John Smith', 'South', 7);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Smith', 'Central', 30);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Johnson', 'West', 20);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Jones', 'South', 1);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('John Williams', 'Central', 22);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Smith', 'East', 6);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Miller', 'East', 14);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Garcia', 'North', 16);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Garcia', 'West', 13);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Jones', 'West', 8);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Brown', 'North', 15);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Laura Davis', 'East', 8);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Laura Rodriguez', 'West', 20);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Davis', 'West', 7);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Rodriguez', 'Central', 3);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('John Williams', 'East', 24);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Laura Brown', 'Central', 21);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Jones', 'North', 26);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Williams', 'East', 24);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('John Johnson', 'West', 21);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Johnson', 'East', 15);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Miller', 'North', 28);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Brown', 'North', 19);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Davis', 'South', 3);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Rodriguez', 'West', 29);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Jones', 'North', 15);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Rodriguez', 'Central', 4);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Laura Miller', 'Central', 8);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Williams', 'North', 25);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Jones', 'West', 6);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Jones', 'West', 14);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Rodriguez', 'North', 7);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Johnson', 'North', 7);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Johnson', 'West', 29);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Martinez', 'East', 1);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Miller', 'West', 21);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Brown', 'Central', 29);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('David Smith', 'East', 8);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Smith', 'South', 29);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('John Brown', 'South', 8);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Brown', 'Central', 24);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Garcia', 'North', 17);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Martinez', 'South', 14);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Davis', 'West', 2);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Garcia', 'East', 9);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Miller', 'East', 29);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Laura Martinez', 'South', 12);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Martinez', 'East', 22);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Smith', 'East', 21);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Rodriguez', 'West', 9);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Williams', 'South', 13);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Williams', 'North', 2);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Brown', 'East', 2);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Jones', 'East', 14);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Martinez', 'South', 22);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Laura Johnson', 'North', 26);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('John Smith', 'Central', 18);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Johnson', 'East', 4);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Jones', 'South', 11);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Williams', 'South', 21);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Martinez', 'Central', 17);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Martinez', 'Central', 24);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Martinez', 'South', 19);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Jane Williams', 'East', 23);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Smith', 'Central', 17);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Laura Martinez', 'East', 16);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Smith', 'North', 10);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Davis', 'Central', 10);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Martinez', 'West', 28);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Michael Rodriguez', 'Central', 7);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Davis', 'Central', 19);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Anna Martinez', 'East', 1);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Williams', 'Central', 10);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Johnson', 'North', 21);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Chris Davis', 'North', 19);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Emily Rodriguez', 'Central', 11);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Laura Martinez', 'East', 24);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Sarah Davis', 'East', 19);
INSERT INTO Agents (Name, Region, ExperienceYears) VALUES ('Alex Johnson', 'East', 17);



INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2023-11-17', '2029-01-22', 4451.95, 148, 186);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2018-12-19', '2025-09-25', 2680.06, 165, 111);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2015-08-24', '2027-02-08', 3180.35, 141, 55);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2018-10-15', '2028-02-24', 2324.08, 6, 137);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2014-02-03', '2027-06-26', 157.36, 115, 157);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2016-12-03', '2028-06-07', 1093.74, 94, 135);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2019-06-12', '2030-10-12', 3249.76, 195, 184);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2020-09-11', '2026-03-12', 3473.93, 122, 156);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2024-01-11', '2025-09-22', 4069.18, 149, 16);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2020-06-19', '2028-02-09', 3298.93, 139, 7);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2011-04-15', '2025-04-13', 462.87, 35, 158);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2014-06-09', '2026-11-14', 4652.61, 9, 56);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2020-09-19', '2028-06-09', 398.24, 23, 43);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2020-05-14', '2030-01-14', 2120.48, 24, 127);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2015-08-18', '2027-02-11', 3786.87, 186, 90);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2012-07-22', '2028-01-04', 4742.79, 157, 70);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2014-08-14', '2026-08-28', 3307.15, 55, 87);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2011-05-07', '2027-09-06', 2894.36, 162, 88);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2014-07-17', '2025-03-25', 395.19, 123, 88);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2017-09-10', '2028-05-17', 274.7, 142, 126);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2010-04-16', '2030-04-22', 3369.3, 11, 89);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2017-11-08', '2030-05-05', 1666.42, 29, 161);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2021-01-04', '2030-01-22', 2260.26, 123, 130);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2024-11-11', '2029-05-25', 2502.48, 90, 53);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2013-02-26', '2028-09-26', 4204.8, 75, 85);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2018-09-04', '2030-06-03', 3532.79, 128, 100);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2013-03-15', '2027-01-06', 714.84, 168, 145);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2016-09-10', '2026-06-25', 762.7, 55, 9);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2021-05-18', '2027-09-14', 2036.51, 42, 51);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2013-02-04', '2025-08-21', 4199.31, 30, 84);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2020-10-16', '2029-02-04', 2849.33, 160, 33);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2020-07-27', '2027-10-26', 2618.91, 168, 53);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2023-10-16', '2030-04-17', 4144.08, 66, 129);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2020-04-22', '2027-11-20', 3158.16, 18, 97);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2019-01-23', '2029-08-18', 3468.93, 142, 101);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2024-12-26', '2030-09-05', 2708.15, 86, 140);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2014-07-06', '2028-07-01', 3572.65, 137, 3);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2022-05-16', '2026-05-13', 1335.5, 32, 79);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2023-04-27', '2026-07-04', 1114.42, 83, 150);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2012-09-27', '2027-08-16', 2391.31, 126, 64);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2024-01-20', '2028-03-23', 4072.12, 81, 4);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2018-01-28', '2029-01-25', 4982.96, 80, 96);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2016-08-15', '2029-11-17', 3210.18, 74, 4);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2013-07-15', '2030-07-06', 989.19, 193, 8);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2018-01-08', '2027-02-19', 1581.92, 89, 148);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2018-08-20', '2029-02-13', 1596.19, 32, 89);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2019-08-02', '2029-05-19', 4249.66, 162, 102);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2022-06-26', '2025-07-24', 1606.28, 185, 66);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2024-02-15', '2030-02-15', 3484.01, 181, 6);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2022-12-03', '2025-11-21', 1988.73, 158, 151);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2010-12-18', '2025-09-06', 182.73, 148, 194);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2015-05-13', '2025-08-22', 2793.91, 98, 144);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2014-08-15', '2030-10-28', 3655.3, 9, 90);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2013-09-05', '2025-04-05', 3580.61, 67, 150);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2021-04-07', '2025-03-08', 1712.4, 123, 175);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2017-03-09', '2026-02-16', 2805.28, 35, 56);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2015-02-19', '2025-12-25', 4624.62, 72, 132);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2024-12-23', '2029-08-23', 930.33, 110, 127);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2014-03-28', '2028-10-12', 920.94, 200, 91);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2012-04-01', '2026-07-14', 2288.59, 119, 46);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2023-06-28', '2028-03-03', 2511.62, 137, 61);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2013-01-26', '2026-09-15', 278.39, 152, 170);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2011-01-20', '2027-05-09', 2875.57, 132, 69);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2013-09-21', '2029-03-01', 2693.63, 106, 6);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2019-01-10', '2025-08-11', 649.96, 156, 7);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2023-07-22', '2027-03-24', 3900.26, 95, 137);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2014-04-28', '2026-12-02', 4624.47, 79, 67);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2020-02-25', '2025-04-16', 4299.65, 84, 118);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2011-12-08', '2028-03-04', 3805.98, 177, 14);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2017-01-23', '2029-03-16', 4987.99, 105, 65);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2021-06-20', '2030-04-24', 1647.62, 59, 108);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2012-02-12', '2027-05-13', 3580.52, 175, 192);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2012-03-25', '2028-09-13', 4045.05, 42, 43);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2018-01-28', '2030-05-15', 4587.73, 43, 23);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2018-09-03', '2029-08-06', 1377.94, 37, 192);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2020-04-12', '2025-05-07', 2661.4, 189, 37);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2020-12-08', '2027-09-07', 2228.77, 75, 80);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2012-03-01', '2029-03-04', 232.65, 175, 74);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2010-12-18', '2029-01-17', 3710.8, 95, 10);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2016-10-26', '2026-07-07', 3735.05, 130, 161);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2016-12-11', '2027-08-18', 1059.15, 129, 164);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2018-11-04', '2030-08-17', 1746.07, 6, 54);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2018-06-13', '2025-02-01', 1078.63, 40, 105);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2017-06-21', '2027-05-04', 2845.71, 195, 58);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2011-01-06', '2030-08-17', 4006.18, 22, 157);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2010-09-27', '2027-02-21', 3213.09, 172, 102);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2010-12-28', '2026-01-08', 1632.55, 7, 89);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2019-10-04', '2026-06-19', 2801.08, 32, 184);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2011-12-03', '2030-11-15', 2863.98, 181, 95);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2019-06-06', '2027-12-22', 177.02, 2, 56);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2023-05-17', '2025-07-12', 4109.49, 141, 64);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2014-11-03', '2026-09-23', 2662.78, 182, 183);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2010-11-06', '2030-06-14', 292.19, 136, 177);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2013-10-17', '2028-02-02', 3464.53, 66, 81);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2016-10-12', '2027-12-05', 3104.92, 19, 54);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2010-04-12', '2026-11-01', 4179.68, 158, 125);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2010-07-11', '2027-08-27', 794.96, 160, 143);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2018-12-25', '2027-06-15', 1576.05, 188, 98);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2011-11-08', '2030-02-12', 3616.08, 95, 127);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2017-02-01', '2027-01-20', 4190.15, 19, 134);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2015-05-20', '2027-10-06', 2102.96, 184, 105);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2012-07-04', '2026-09-09', 1098.06, 132, 142);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2010-10-12', '2028-06-08', 3567.75, 42, 170);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2015-07-21', '2026-10-27', 2522.41, 80, 16);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2019-07-10', '2026-09-01', 3822.93, 54, 151);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2016-01-17', '2028-12-02', 3702.09, 61, 10);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2020-03-27', '2028-02-15', 1680.51, 96, 142);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2021-02-28', '2028-02-22', 3743.51, 99, 140);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2012-01-24', '2029-06-16', 1574.9, 82, 179);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2023-07-19', '2025-11-03', 149.13, 190, 21);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2014-07-22', '2029-11-06', 4373.98, 25, 69);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2020-06-26', '2029-12-27', 4095.58, 199, 118);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2014-02-18', '2025-12-11', 3617.65, 85, 129);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2015-12-15', '2025-07-27', 564.41, 9, 61);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2022-08-22', '2028-06-17', 2601.64, 145, 111);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2010-09-19', '2026-11-23', 2546.66, 10, 38);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2012-02-05', '2030-10-15', 4520.7, 28, 167);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2014-08-16', '2025-05-15', 4485.55, 107, 134);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2024-11-14', '2029-08-12', 2951.7, 33, 196);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2021-01-27', '2026-03-02', 3374.62, 146, 82);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2022-01-02', '2025-09-25', 4694.23, 158, 26);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2014-06-08', '2029-09-15', 1463.68, 5, 139);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2014-01-21', '2027-07-07', 1447.16, 173, 120);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2018-09-09', '2026-08-20', 131.93, 95, 196);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2024-03-17', '2029-07-16', 308.59, 50, 95);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2017-05-03', '2027-02-18', 2043.28, 150, 52);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2017-01-03', '2025-01-12', 4973.62, 36, 165);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2020-09-17', '2025-04-14', 169.12, 91, 74);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2022-03-04', '2026-09-27', 1288.06, 191, 188);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2013-01-04', '2028-01-13', 4465.7, 178, 166);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2019-11-06', '2030-09-13', 4603.33, 58, 182);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2014-04-21', '2025-09-26', 1978.49, 41, 137);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2017-05-02', '2028-05-10', 3222.64, 172, 179);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2015-06-23', '2026-05-28', 756.41, 198, 143);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2010-05-21', '2028-08-10', 1136.02, 115, 72);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2014-09-15', '2025-05-05', 717.09, 79, 66);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2021-07-07', '2028-04-13', 1934.45, 198, 50);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2012-05-28', '2029-04-10', 3606.41, 87, 164);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2021-02-08', '2028-01-21', 2890.41, 8, 169);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2016-05-04', '2030-07-07', 4081.55, 170, 11);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2010-02-19', '2030-09-24', 1369.07, 162, 18);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2016-08-01', '2027-05-19', 1044.51, 66, 158);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2020-06-13', '2029-01-14', 779.19, 76, 70);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2019-08-20', '2030-09-09', 237.7, 54, 152);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2014-02-16', '2029-01-21', 4978.15, 72, 166);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2010-04-11', '2029-04-21', 1704.08, 155, 74);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2017-02-28', '2028-03-27', 440.8, 158, 146);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2014-05-03', '2028-03-28', 1741.81, 139, 30);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2012-11-28', '2027-01-14', 1241.88, 141, 119);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2011-05-06', '2029-06-26', 4878.95, 58, 83);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2018-02-08', '2027-04-04', 4223.63, 185, 192);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2019-10-28', '2028-07-11', 2439.4, 35, 180);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2015-11-07', '2028-10-13', 887.19, 93, 154);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2012-03-01', '2026-10-21', 4686.4, 180, 29);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2015-08-09', '2028-11-14', 4469.71, 76, 121);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2021-10-10', '2027-04-22', 3860.96, 77, 95);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2013-04-27', '2025-07-24', 4896.26, 153, 87);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2015-05-18', '2027-06-12', 492.57, 6, 78);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2014-01-16', '2027-08-23', 368.66, 114, 102);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2015-04-21', '2030-06-13', 4019.51, 60, 96);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2019-09-03', '2025-03-03', 2869.41, 165, 68);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2021-06-13', '2027-04-08', 4215.03, 70, 29);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2024-11-15', '2025-01-13', 1049.64, 139, 114);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2017-12-10', '2029-09-11', 3647.43, 116, 56);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2016-07-08', '2025-03-21', 2179.16, 17, 40);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2022-08-21', '2027-03-07', 2666.31, 4, 66);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2010-07-11', '2026-09-15', 119.65, 153, 15);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2018-04-22', '2029-06-10', 529.99, 55, 163);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2016-05-21', '2025-10-14', 3249.85, 75, 133);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2014-10-05', '2026-01-05', 2698.25, 162, 32);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2012-02-02', '2026-02-18', 3411.85, 71, 105);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2024-10-23', '2026-05-12', 1575.01, 31, 187);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2017-06-21', '2028-04-22', 3033.32, 11, 130);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2017-03-09', '2026-03-06', 326.47, 148, 198);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2015-12-13', '2028-01-08', 218.26, 90, 134);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2011-07-27', '2030-02-18', 2546.42, 115, 59);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2017-08-15', '2029-05-01', 4026.45, 158, 28);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2020-02-15', '2026-02-14', 3367.37, 118, 169);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2019-02-12', '2026-10-03', 146.94, 41, 138);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2010-05-12', '2028-10-16', 3042.58, 118, 118);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2024-10-06', '2027-05-06', 4713.33, 58, 26);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2020-10-26', '2030-12-15', 2862.31, 25, 36);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2015-02-10', '2028-03-19', 2077.72, 98, 41);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2013-04-07', '2026-07-22', 2977.12, 2, 145);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2011-12-19', '2030-02-13', 3729.22, 189, 158);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2018-12-24', '2028-06-01', 2373.29, 14, 171);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2021-03-01', '2030-03-03', 1680.89, 145, 121);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2020-04-04', '2028-05-26', 1729.36, 27, 182);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Life', '2011-08-09', '2026-09-05', 4822.03, 193, 168);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2017-07-27', '2029-10-02', 790.6, 138, 131);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2016-02-19', '2027-09-28', 4205.78, 81, 37);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2024-03-09', '2028-09-22', 3184.65, 13, 149);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Home', '2024-10-27', '2027-11-16', 1522.82, 77, 191);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2011-12-28', '2028-05-22', 2554.35, 39, 69);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2020-10-27', '2030-05-03', 3376.69, 29, 168);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2013-10-07', '2030-09-06', 597.97, 141, 185);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Auto', '2017-09-11', '2029-03-13', 2888.05, 114, 166);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Health', '2012-06-26', '2026-04-01', 1575.45, 39, 83);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2022-05-28', '2029-12-05', 2855.34, 17, 138);
INSERT INTO Policies (PolicyType, StartDate, EndDate, Premium, CustomerID, AgentID) VALUES ('Travel', '2022-05-16', '2030-09-17', 4109.44, 164, 21);


INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (150, '2021-02-17', 33159.45, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (6, '2021-02-10', 31700.51, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (17, '2021-07-26', 39092.26, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (8, '2021-02-09', 37968.27, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (128, '2021-07-18', 41384.02, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (167, '2021-10-01', 20999.63, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (15, '2021-07-15', 47205.77, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (63, '2021-02-06', 11839.18, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (18, '2021-09-15', 9376.06, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (2, '2021-12-08', 37552.87, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (140, '2021-01-18', 41021.43, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (175, '2021-10-22', 42231.32, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (53, '2021-09-28', 40208.37, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (120, '2021-02-11', 31936.67, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (22, '2021-09-24', 19787.42, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (100, '2021-01-05', 21053.08, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (90, '2021-05-09', 34214.05, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (20, '2021-04-21', 9179.2, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (104, '2021-11-26', 20561.58, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (167, '2021-04-13', 35514.39, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (190, '2021-10-03', 26908.25, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (22, '2021-03-04', 31753.83, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (186, '2021-02-08', 37839.48, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (33, '2021-05-21', 49225.98, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (153, '2021-02-21', 42186.53, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (15, '2021-11-05', 45396.71, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (62, '2021-11-15', 16512.01, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (100, '2021-05-05', 29011.77, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (124, '2021-01-18', 49159.62, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (90, '2021-07-22', 8298.69, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (110, '2021-07-06', 32255.4, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (47, '2021-10-26', 44595.58, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (135, '2021-11-05', 10598.24, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (1, '2021-02-07', 28669.7, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (111, '2021-07-24', 8674.83, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (60, '2021-06-20', 36670.84, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (173, '2021-05-18', 15828.18, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (148, '2021-01-20', 31928.08, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (53, '2021-03-26', 42784.27, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (99, '2021-03-03', 18062.91, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (53, '2021-05-06', 34506.21, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (31, '2021-09-23', 22617.19, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (148, '2021-07-02', 5158.23, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (96, '2021-03-02', 3644.12, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (22, '2021-09-10', 4550.4, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (56, '2021-02-07', 38769.55, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (16, '2021-01-23', 22380.54, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (196, '2021-09-20', 5440.79, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (135, '2021-02-03', 36087.95, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (71, '2021-04-13', 16232.22, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (62, '2021-12-22', 19403.74, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (86, '2021-10-04', 8313.44, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (20, '2021-06-28', 23637.36, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (175, '2021-08-18', 24665.24, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (117, '2021-08-25', 13674.1, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (111, '2021-05-13', 30045.05, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (123, '2021-09-16', 15476.09, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (72, '2021-10-24', 25756.75, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (125, '2021-01-21', 25094.23, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (123, '2021-06-11', 2932.13, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (159, '2021-11-03', 34193.95, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (42, '2021-11-17', 23885.1, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (36, '2021-01-08', 8620.41, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (87, '2021-10-11', 27928.02, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (147, '2021-12-12', 37627.27, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (27, '2021-01-09', 44197.16, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (72, '2021-06-14', 4406.94, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (4, '2021-05-03', 38975.08, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (98, '2021-05-14', 42604.37, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (74, '2021-03-26', 29777.63, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (107, '2021-03-21', 21847.04, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (22, '2021-12-16', 22582.18, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (145, '2021-08-22', 7990.43, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (179, '2021-12-05', 44894.92, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (186, '2021-12-05', 46648.26, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (138, '2021-06-06', 13722.15, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (42, '2021-04-09', 14446.61, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (80, '2021-06-25', 22463.04, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (94, '2021-05-04', 38368.52, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (30, '2021-08-08', 6645.22, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (162, '2021-04-04', 8287.59, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (195, '2021-12-28', 29575.67, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (131, '2021-04-18', 22644.4, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (151, '2021-11-22', 36691.38, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (146, '2021-04-01', 23403.87, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (29, '2021-06-03', 17698.04, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (179, '2021-06-12', 12330.04, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (171, '2021-08-23', 34544.26, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (141, '2021-04-11', 35853.23, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (90, '2021-03-14', 8769.94, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (79, '2021-08-27', 36385.13, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (200, '2021-03-19', 30144.99, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (31, '2021-07-27', 30924.29, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (167, '2021-10-11', 6193.65, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (153, '2021-05-05', 49739.68, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (179, '2021-10-21', 24200.02, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (187, '2021-11-26', 10155.42, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (56, '2021-04-10', 22662.66, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (125, '2021-04-10', 13588.9, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (65, '2021-12-05', 31390.5, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (127, '2021-04-03', 22287.31, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (161, '2021-01-01', 46433.55, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (19, '2021-05-04', 10399.7, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (52, '2021-04-01', 7614.17, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (43, '2021-03-06', 33508.26, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (63, '2021-01-26', 41546.15, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (146, '2021-04-12', 35114.01, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (138, '2021-07-13', 46405.62, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (121, '2021-10-22', 49894.11, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (135, '2021-01-01', 9275.79, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (76, '2021-10-20', 25259.78, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (173, '2021-02-07', 39392.62, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (129, '2021-04-09', 9415.66, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (36, '2021-09-14', 41591.11, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (90, '2021-06-14', 21283.69, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (153, '2021-04-24', 46809.31, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (175, '2021-08-23', 4579.16, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (196, '2021-03-23', 694.97, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (197, '2021-08-12', 36762.6, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (83, '2021-12-11', 25663.64, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (94, '2021-02-26', 44619.44, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (141, '2021-06-06', 28517.06, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (31, '2021-06-15', 22822.52, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (26, '2021-04-13', 44770.1, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (3, '2021-03-12', 36045.34, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (186, '2021-10-17', 46510.46, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (36, '2021-06-22', 381.39, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (84, '2021-06-15', 3801.5, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (59, '2021-08-10', 2680.65, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (148, '2021-09-03', 19586.97, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (169, '2021-04-18', 27084.9, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (59, '2021-10-12', 44195.52, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (158, '2021-11-07', 28621.4, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (11, '2021-02-04', 10513.85, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (180, '2021-04-14', 34877.43, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (163, '2021-12-14', 34633.38, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (105, '2021-02-23', 37049.72, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (143, '2021-09-02', 42637.47, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (171, '2021-03-04', 705.56, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (101, '2021-04-27', 10425.62, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (197, '2021-11-20', 21843.65, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (195, '2021-01-27', 3057.11, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (152, '2021-08-25', 12974.11, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (25, '2021-06-15', 28160.5, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (78, '2021-05-06', 4760.35, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (22, '2021-05-12', 13357.22, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (111, '2021-12-25', 27870.7, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (76, '2021-02-16', 23871.74, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (44, '2021-10-19', 818.04, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (119, '2021-10-12', 4037.12, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (95, '2021-02-17', 40511.58, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (120, '2021-09-10', 39615.43, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (37, '2021-08-27', 34533.77, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (64, '2021-08-23', 9291.03, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (107, '2021-01-07', 8844.41, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (67, '2021-12-01', 19719.72, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (161, '2021-06-04', 41645.88, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (50, '2021-07-09', 25229.67, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (1, '2021-07-14', 7385.47, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (176, '2021-12-15', 35586.99, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (125, '2021-08-01', 27634.93, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (154, '2021-10-20', 39843.33, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (115, '2021-10-09', 3516.72, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (187, '2021-09-25', 452.38, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (98, '2021-11-07', 39705.63, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (146, '2021-12-13', 35759.69, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (169, '2021-05-12', 36762.47, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (22, '2021-02-13', 2215.85, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (74, '2021-10-12', 20322.57, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (142, '2021-05-06', 21506.06, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (193, '2021-04-24', 49954.99, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (113, '2021-03-14', 47383.4, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (135, '2021-09-22', 49366.41, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (115, '2021-05-18', 4014.4, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (97, '2021-04-16', 33873.32, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (63, '2021-06-13', 35297.31, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (141, '2021-12-11', 1076.72, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (53, '2021-04-05', 8422.71, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (135, '2021-01-01', 33884.24, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (135, '2021-11-28', 49263.88, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (82, '2021-07-25', 34930.38, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (167, '2021-03-19', 39017.62, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (80, '2021-08-06', 36466.36, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (102, '2021-05-07', 19499.6, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (27, '2021-11-16', 33084.0, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (52, '2021-09-23', 23442.91, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (56, '2021-09-04', 24433.42, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (139, '2021-02-16', 20792.11, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (82, '2021-06-18', 36669.4, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (74, '2021-11-12', 1950.2, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (50, '2021-07-02', 28587.57, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (10, '2021-12-11', 12434.62, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (10, '2021-02-07', 23345.21, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (9, '2021-06-07', 553.63, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (89, '2021-05-24', 4384.18, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (78, '2021-01-20', 12520.57, 'Pending');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (157, '2021-06-17', 15638.43, 'Approved');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (39, '2021-04-04', 13032.1, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (25, '2021-03-09', 35223.23, 'Rejected');
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimStatus) VALUES (47, '2021-10-24', 47809.02, 'Approved');


SELECT * from Customers;

SELECT * from Agents;

SELECT * from policies;

SELECT * from Claims;

--1. Total Premiums and Ranking by Customer: Query to calculate the total premium each customer has paid, and rank them based on the total amount paid.
SELECT 
    c.CustomerID,
    c.Name,
    SUM(p.Premium) AS TotalPremiumPaid,
    RANK() OVER (ORDER BY SUM(p.Premium) DESC) AS PremiumRank
FROM Customers c
JOIN Policies p ON c.CustomerID = p.CustomerID
GROUP BY c.CustomerID, c.Name;

--2. Top 3 Agents by Number of Policies: Query to find the top 3 agents who have handled the most number of policies.
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

--3.Claims Summary by Policy Type: Query to show the total number of claims and the total claim amount for each policy type, pivoted by claim status.
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

--4.Customers with No Claims Filed: Query to find the customers who have never filed any claim.
SELECT c.CustomerID, c.Name
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM Policies p
    JOIN Claims cl ON p.PolicyID = cl.PolicyID
    WHERE p.CustomerID = c.CustomerID
);

--5.Most Recent and Total Claims per Customer: Query to find each customer's most recent claim, total claim amount, and the total number of claims.
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



--6. Maximum Claim Amount per Customer: Query to find the maximum claim amount for each customer, and show customers who have more than 2 claims.
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

--7.Running Total of Claim Amounts: Query to calculate the running total of claim amounts for each customer, ordered by claim date.
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

--8.Percentage of Approved, Rejected, and Pending Claims by Agent: Query to show the percentage of claims that were approved, rejected, and pending for each agent.
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


--9.Customers with Multiple Active Policies: Query to list policies where the same customer has multiple active policies.
SELECT p1.PolicyID, p1.CustomerID, p1.StartDate, p1.EndDate
FROM Policies p1
JOIN Policies p2 ON p1.CustomerID = p2.CustomerID
    AND p1.PolicyID <> p2.PolicyID
    AND p1.StartDate <= p2.EndDate
    AND p1.EndDate >= p2.StartDate
ORDER BY p1.CustomerID;

--10.Total Claim Amount for Customers with Rejected Claims: Query to find the total claim amount for each customer, including only customers who have at least one rejected claim.
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






