
CREATE TABLE [dbo].[DimEmployee](
	[EmployeeKey] [int] NOT NULL,
	[EmployeeName] [nchar](100) NULL,
	[EmployeePosition] [nchar](50) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DimProduct](
	[ProductKey] [int] NOT NULL,
	[ProductName] [nchar](100) NULL,
	[CategoryName] [nchar](100) NULL,
	[Brand] [nchar](50) NULL,
	[Size] [nchar](50) NULL,
	[ProductColor] [nchar](30) NULL,
	[Model] [nchar](50) NULL
 ) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DimShipper](
	[ShipperKey] [int] NOT NULL,
	[ShipperName] [nchar](100) NULL,
	[ShipperAddress] [nchar](100) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DimTime](
	[TimeKey] [int] NOT NULL,
	[Year] [int] NULL,
	[Quarter] [int] NULL,
	[MonthSeq] [int] NULL,
	[DayofWeek] [int] NULL,
	[MonthName] [nchar](20) NULL,
	[DayName] [nchar](20) NULL,
	[Date] [date] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DimTerritories](
	[TerritoriesKey] [nchar](20) NOT NULL,
	[TerritoryName] [nchar](50) NULL,
	[CountryName] [nchar](50) NULL,
	[RegionName] [nchar](50) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DimCustomer](
	[CustomerKey] [nchar](5) NOT NULL,
	[CustomerName] [nchar](100) NULL,
	[CompanyName] [nchar](100) NULL,
	[CustomerGender] [nchar](10) NULL,
	[CustomerSalary] [decimal](10, 2) NULL,
	[CustomerJob] [nchar](100) NULL,
    [CustomerAddress] [nchar](100) NULL,
    [CustomerCity] [nchar](50) NULL,
    [CustomerCountry] [nchar](50) NULL,
    [CustomerRegion] [nchar](50) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FactSaleAnalysis](
	[TimeKey] [int] NOT NULL,
	[EmployeeKey] [int] NOT NULL,
	[ProductKey] [int] NOT NULL,
	[CustomerKey] [nchar](5) NOT NULL,
	[SupplierKey] [int] NOT NULL,
	[TerritoriesKey] [nchar](20) NOT NULL,
	[Quantity] [int] NULL,
	[Amount] [decimal](10, 2) NULL,
	[ValueTax] [decimal](10, 2) NULL,
	[Profit] [decimal](10, 2) NULL,
	[Cost] [decimal](10, 2) NULL,
	[Price] [decimal](10, 2) NULL,
	[OrderID] [varchar](10) NULL
) ON [PRIMARY]
GO
