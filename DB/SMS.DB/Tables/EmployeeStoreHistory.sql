CREATE TABLE [dbo].[EmployeeStoreHistory]
(
	EmployeeStoreHistoryIdPK INT NOT NULL PRIMARY KEY,
	EmployeeIDFK INT NOT NULL,
	StoreIDFk INT NOT NULL,
	StartDate DATETIME NOT NULL,
	EndDate DATETIME NULL,
	CreatedBy VARCHAR(512) NOT NULL,
	CreatedOn DATETIME NOT NULL DEFAULT(GETDATE()),
	LastUpdatedBy VARCHAR(512) NULL,
	LastUpdatedOn DATETIME NULL
	CONSTRAINT FK_EmployeeStoreHistory_Store FOREIGN KEY (StoreIDFK) REFERENCES Store(StoreIDPK),
	CONSTRAINT FK_EmployeeStoreHistory_Employee FOREIGN KEY (EmployeeIDFK) REFERENCES Employee(EmployeeIDPK)



)
