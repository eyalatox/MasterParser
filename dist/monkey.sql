SELECT StartTime, EndTime
WHERE Name = N'StartTime' AND Object_ID = Object_ID(N'MonkeyWallet.Eligible'))
BEGIN
	EXEC sp_executesql N'ALTER TABLE [MonkeyWallet].[Eligible] ADD StartTime DATETIME2 NOT NULL'
	
	EXEC sp_executesql N'ALTER TABLE [MonkeyWallet].[Eligible] ADD EndTime DATETIME2 NOT NULL'
END