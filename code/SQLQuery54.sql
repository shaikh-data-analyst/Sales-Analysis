SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date, 
  --[DayNumberOfWeek] 
  [EnglishDayNameOfWeek] as Day, 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] as Weekno, 
  --[EnglishMonthName]
  left(EnglishMonthName, 3) as Month, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear], 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
From 
  [AdventureWorksDW2022].[dbo].[DimDate]


