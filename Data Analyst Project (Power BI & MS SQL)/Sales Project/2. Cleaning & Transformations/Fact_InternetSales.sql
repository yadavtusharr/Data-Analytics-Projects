--Cleansed FactIternetSales -- 
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  --[PromotionKey], 
  --[CurrencyKey], 
  [SalesTerritoryKey], 
  [SalesOrderNumber], 
  --[SalesOrderLineNumber], 
  --[RevisionNumber], 
  --[OrderQuantity], 
  --[UnitPrice], 
  --[ExtendedAmount], 
  --[UnitPriceDiscountPct], 
  --[DiscountAmount], 
  --[ProductStandardCost], 
  --[TotalProductCost], 
  [SalesAmount],
  --[TaxAmt], 
  --[Freight], 
  --[CarrierTrackingNumber], 
  --[CustomerPONumber], 
  CAST([OrderDate] AS date) AS OrderDate
  --[DueDate], 
  --[ShipDate] 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales]

WHERE 
LEFT ([OrderDateKey], 4) >= YEAR(GETDATE()) - 2 -- Ensures we always only bring 2 years of data from extraction

ORDER BY
	[OrderDateKey] ASC
