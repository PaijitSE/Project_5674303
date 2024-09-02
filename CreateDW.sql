CREATE TABLE [dbo].[DimEmployee](
	[EmployeeKey] [int] NOT NULL,
	[RegionName] [nchar](15) NULL,
	[Territory] [nchar](15) NULL,
	[TerritoryCountry] [nchar](15) NULL,
	[EmployeeName] [nchar](30) NULL,
	[Title] [nchar](30) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DimProduct](
	[ProductKey] [int] NOT NULL,
	[ProductName] [nchar](40) NULL,
	[CategoryName] [nchar](15) NULL,
	[Brand] [nchar](50) NULL,
	[Size] [nchar](20) NULL,
	[ProductColor] [nchar](30) NULL,
	[Model] [nchar](50) NULL
 ) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DimShipper](
	[ShipperKey] [int] NOT NULL,
	[ShipperName] [nchar](40) NULL,
	[ShipperAddress] [nchar](60) NULL
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

USE [NorthwindDW]
GO

/****** Object:  Table [dbo].[DimCustomer]    Script Date: 27/8/2567 14:21:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomer](
	[CustomerKey] [nchar](5) NOT NULL,
	[CustomerName] [nchar](40) NULL,
	[Address] [nchar](60) NULL,
	[Region] [nchar](15) NULL,
	[Country] [nchar](15) NULL,
	[Gender] [nchar](10) NULL,
	[IncomeLength] [nchar](10) NULL,
	[Occupation] [nchar](20) NULL,
	[CustomerCountry] [nchar](15) NULL,
	[CustomerCity] [nchar](15) NULL
 ) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FactSaleAnalysis](
	[TimeKey] [int] NOT NULL,
	[EmployeeKey] [int] NOT NULL,
	[ProductKey] [int] NOT NULL,
	[CustomerKey] [nchar](5) NOT NULL,
	[SupplierKey] [int] NOT NULL,
	[QuantitySold] [int] NULL,
	[SalesRevenue] [decimal](10, 2) NULL,
	[ValueAddedTax] [decimal](10, 2) NULL,
	[Profit] [decimal](10, 2) NULL,
	[Cost] [decimal](10, 2) NULL,
	[SellingPrice] [decimal](10, 2) NULL,
	[OrderID] [int] NULL
) ON [PRIMARY]
GO

