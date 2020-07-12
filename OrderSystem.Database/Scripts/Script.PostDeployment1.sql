/*
部署後指令碼樣板							
--------------------------------------------------------------------------------------
 此檔案包含要附加到組建指令碼的 SQL 陳述式		
 使用 SQLCMD 語法可將檔案包含在部署後指令碼中			
 範例:      :r .\myfile.sql								
 使用 SQLCMD 語法可參考部署後指令碼中的變數		
 範例:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
INSERT INTO t_order(f_id, f_price, f_cost) VALUES('A2020026001', 100, 90)
INSERT INTO t_order(f_id, f_price, f_cost) VALUES('A2020026002', 120, 100)
INSERT INTO t_order(f_id, f_price, f_cost) VALUES('A2020026003', 150, 110)
GO

INSERT INTO t_shippingOrder(f_orderId, f_orderStatus) VALUES('A2020026001', 1);
GO

INSERT INTO t_product(f_name, f_price, f_cost) VALUES(N'小綠吸塵器', 5999, 2000);
INSERT INTO t_product(f_name, f_price, f_cost) VALUES(N'小藍吸塵器', 8999, 3000);
GO