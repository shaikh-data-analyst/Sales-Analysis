SELECT 
   c.[CustomerKey] 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  ,c.[FirstName] 
  --,[MiddleName]
  ,c.[LastName]
  ,c.FirstName + ' ' + c.LastName as [FullName] 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  --,[Gender]
	, case when c.Gender = 'm' then 'Male' 
	  when c.Gender = 'f' then 'Female' 
	  end as [Gender] 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  ,c.[DateFirstPurchase] 
  --,[CommuteDistance]
  ,g.[City] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] as c 
  left join [AdventureWorksDW2022].[dbo].[DimGeography] as g 
  on g.GeographyKey = c.GeographyKey


