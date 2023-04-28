-- Cleansed DimCustomer --
SELECT 
  c.[CustomerKey], 
  -- [GeographyKey],
  --[CustomerAlternateKey],
  -- [Title],
  c.[FirstName] AS [First Name], 
  -- [MiddleName],
  c.[LastName] AS [Last Name], 
  [FirstName] + ' ' + [LastName] AS [Full Name], 
  -- [NameStyle],
  --[BirthDate],
  --[MaritalStatus],
  -- [Suffix],
  CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
  --[EmailAddress],
  --[YearlyIncome],
  --[TotalChildren],
  --[NumberChildrenAtHome],
  --[EnglishEducation],
  --[SpanishEducation],
  --[FrenchEducation],
  --[EnglishOccupation],
  --[SpanishOccupation],
  --[FrenchOccupation],
  --[HouseOwnerFlag],
  --[NumberCarsOwned],
  --[AddressLine1],
  --[AddressLine2],
  --[Phone],
  c.[DateFirstPurchase], 
  --[CommuteDistance],
  g.[city] AS [Customer City] --Joined in Customer city from geography table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g ON c.[GeographyKey] = g.[GeographyKey]
ORDER BY
	CustomerKey ASC -- Ordered list by CustomerKey

