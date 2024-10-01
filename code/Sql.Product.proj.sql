SELECT 
  [ProductKey] 
    ,[ProductAlternateKey] as [ProductItemKey]
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
    ,[EnglishProductName] as [Product], 
  pc.[EnglishProductCategoryName] as [Category], 
  ps.[EnglishProductSubcategoryName] as [Sub category] 
  --,[SpanishProductName]
  --,[FrenchProductName]
    ,[StandardCost] 
  --,[FinishedGoodsFlag]
    ,[Color] 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
    ,[Size] 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
    ,[ProductLine] 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
    ,[ModelName] 
  --,[LargePhoto]
    ,[EnglishDescription] as ProductDescripition
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
    , ISNULL (p.Status, 'Outdated') as [ProductStatus] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] as p 
  Left join [AdventureWorksDW2022].[dbo].[DimProductSubcategory] as ps 
  on p.[ProductSubcategoryKey] = ps.[ProductSubcategoryKey] 
  Left join[AdventureWorksDW2022].[dbo].[DimProductCategory] as pc 
  on ps.[ProductCategoryKey] = ps.[ProductCategoryKey]

