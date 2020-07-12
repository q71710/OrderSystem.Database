﻿/*
 預先部署指令碼樣板							
--------------------------------------------------------------------------------------
 此檔案包含要在組建指令碼之前執行的 SQL 陳述式	
 使用 SQLCMD 語法可將檔案包含在預先部署指令碼中			
 範例:      :r .\myfile.sql								
 使用 SQLCMD 語法可參考預先部署指令碼中的變數		
 範例:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF EXISTS(SELECT 1 FROM sys.tables WHERE name = 't_order') TRUNCATE TABLE t_order
IF EXISTS(SELECT 1 FROM sys.tables WHERE name = 't_shippingOrder') TRUNCATE TABLE t_shippingOrder
IF EXISTS(SELECT 1 FROM sys.tables WHERE name = 't_product') TRUNCATE TABLE t_product