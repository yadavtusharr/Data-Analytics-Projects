-- Cleansed DimProduct--
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS [ProductItemCode], 
  --[ProductSubcategoryKey],
  --[WeightUnitMeasureCode],
  --[SizeUnitMeasureCode],
  p.[EnglishProductName] AS [Product Name], 
  ps.[EnglishProductSubcategoryName] AS [Sub Category], 
  -- Joined in From Product Subcategory Table
  pc.[EnglishProductCategoryName] AS [Category], 
  -- Joined in From Product Category Table
  --[SpanishProductName],
  --[FrenchProductName],
  --[StandardCost],
  --[FinishedGoodsFlag],
  p.[Color] AS [Product Color], 
  --[SafetyStockLevel],
  --[ReorderPoint],
  --[ListPrice],
  p.[Size] AS [Product Size], 
  --[SizeRange],
  --[Weight],
  --[DaysToManufacture],
  p.[ProductLine] AS [Product Line], 
  --[DealerPrice],
  --[Class],
  --[Style],
  p.[ModelName] AS [Product Model Number], 
  --[LargePhoto],
  p.[EnglishDescription] AS Description, 
  --[FrenchDescription],
  --[ChineseDescription],
  --[ArabicDescription],
  --[HebrewDescription],
  --[ThaiDescription],
  --[GermanDescription],
  --[JapaneseDescription],
  --[TurkishDescription],
  --p.[StartDate],
  --p.[EndDate],
  ISNULL(p.[Status], 'OutDated') AS ProductStatus 
FROM 
  [dbo].[DimProduct] AS p 
  LEFT JOIN [dbo].[DimProductSubcategory] AS ps ON p.[ProductSubcategoryKey] = ps.[ProductSubcategoryKey] 
  LEFT JOIN [dbo].[DimProductCategory] AS pc ON ps.[ProductCategoryKey] = pc.[ProductCategoryKey] 
ORDER BY 
  [ProductKey] ASC
