CREATE TABLE IF NOT EXISTS `__EFMigrationsHistory` (
    `MigrationId` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
    `ProductVersion` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK___EFMigrationsHistory` PRIMARY KEY (`MigrationId`)
) CHARACTER SET=utf8mb4;

START TRANSACTION;

ALTER DATABASE CHARACTER SET utf8mb4;

CREATE TABLE `AspNetRoles` (
    `Id` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` varchar(256) CHARACTER SET utf8mb4 NULL,
    `NormalizedName` varchar(256) CHARACTER SET utf8mb4 NULL,
    `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AspNetRoles` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessSegment` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `EmployeeLowRangeValue` int NOT NULL,
    `EmployeeHighRangeValue` int NOT NULL,
    CONSTRAINT `PK_BusinessSegment` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessType` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ContactsGroup` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ContactsGroup` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Country` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Enabled` tinyint(1) NOT NULL,
    `ISOAlpha3` longtext CHARACTER SET utf8mb4 NULL,
    `ISOAlpha2` longtext CHARACTER SET utf8mb4 NULL,
    `CountryFlagUrl` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `ISO2` longtext CHARACTER SET utf8mb4 NULL,
    `ISO3` longtext CHARACTER SET utf8mb4 NULL,
    `PhoneCode` longtext CHARACTER SET utf8mb4 NULL,
    `CurrencyCode` longtext CHARACTER SET utf8mb4 NULL,
    `FlagUrl` longtext CHARACTER SET utf8mb4 NULL,
    `Emoji` longtext CHARACTER SET utf8mb4 NULL,
    `EmojiUnicode` longtext CHARACTER SET utf8mb4 NULL,
    `Capital` longtext CHARACTER SET utf8mb4 NULL,
    `Region` longtext CHARACTER SET utf8mb4 NULL,
    `LatLng` longtext CHARACTER SET utf8mb4 NULL,
    `Subregion` longtext CHARACTER SET utf8mb4 NULL,
    `Population` bigint NOT NULL,
    `Demonym` longtext CHARACTER SET utf8mb4 NULL,
    `Area` double NULL,
    `Gini` double NULL,
    `NativeName` longtext CHARACTER SET utf8mb4 NULL,
    `NumericCode` longtext CHARACTER SET utf8mb4 NULL,
    `CIOC` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Country` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CountryLanguage` (
    `Iso639_1` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Iso639_2` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `LanguageNativeName` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CountryLanguage` PRIMARY KEY (`Iso639_1`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Entity` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Internal` tinyint(1) NOT NULL,
    CONSTRAINT `PK_Entity` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ExpenseType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Enabled` tinyint(1) NOT NULL,
    CONSTRAINT `PK_ExpenseType` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Fee` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `AddedPercent` decimal(65,30) NOT NULL,
    `AddedAmount` decimal(65,30) NOT NULL,
    `TaxPercent` decimal(65,30) NOT NULL,
    CONSTRAINT `PK_Fee` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemGoogleCategory` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Path` longtext CHARACTER SET utf8mb4 NULL,
    `Icon` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Disabled` tinyint(1) NOT NULL,
    `Featured` tinyint(1) NOT NULL,
    `DisplayOnMenu` tinyint(1) NOT NULL,
    `MenuImage` longtext CHARACTER SET utf8mb4 NULL,
    `BannerCode` longtext CHARACTER SET utf8mb4 NULL,
    `BannerImage` longtext CHARACTER SET utf8mb4 NULL,
    `PrimaryImage` longtext CHARACTER SET utf8mb4 NULL,
    `StartingAtAmountInUSD` double NOT NULL,
    `ParentItemGoogleCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemGoogleCategory` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemGoogleCategory_ItemGoogleCategory_ParentItemGoogleCatego~` FOREIGN KEY (`ParentItemGoogleCategoryID`) REFERENCES `ItemGoogleCategory` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `OpenIddictEntityFrameworkCoreScope` (
    `Id` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ConcurrencyToken` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Descriptions` longtext CHARACTER SET utf8mb4 NULL,
    `DisplayName` longtext CHARACTER SET utf8mb4 NULL,
    `DisplayNames` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Properties` longtext CHARACTER SET utf8mb4 NULL,
    `Resources` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_OpenIddictEntityFrameworkCoreScope` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PartnerTier` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` tinyint(1) NOT NULL,
    `Description` tinyint(1) NOT NULL,
    CONSTRAINT `PK_PartnerTier` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `RegionalBlock` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Acronym` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_RegionalBlock` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Timezone` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `UtcOffset` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Timezone` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AspNetRoleClaims` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `RoleId` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ClaimType` longtext CHARACTER SET utf8mb4 NULL,
    `ClaimValue` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AspNetRoleClaims` PRIMARY KEY (`Id`),
    CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AcademicInstitution` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AcademicInstitution` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_AcademicInstitution_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Bank` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Image` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Bank` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Bank_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CountryAltSpelling` (
    `CountryAltSpellingID` int NOT NULL AUTO_INCREMENT,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryAlternativeSpelling` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CountryAltSpelling` PRIMARY KEY (`CountryAltSpellingID`),
    CONSTRAINT `FK_CountryAltSpelling_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CountryBorder` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BorderCountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CountryBorder` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CountryBorder_Country_BorderCountryID` FOREIGN KEY (`BorderCountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_CountryBorder_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CountryCallingCode` (
    `CountryCallingCodeID` int NOT NULL AUTO_INCREMENT,
    `CallingCode` longtext CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CountryCallingCode` PRIMARY KEY (`CountryCallingCodeID`),
    CONSTRAINT `FK_CountryCallingCode_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CountryNameTranslations` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `De` longtext CHARACTER SET utf8mb4 NULL,
    `Es` longtext CHARACTER SET utf8mb4 NULL,
    `Fr` longtext CHARACTER SET utf8mb4 NULL,
    `Ja` longtext CHARACTER SET utf8mb4 NULL,
    `It` longtext CHARACTER SET utf8mb4 NULL,
    `Br` longtext CHARACTER SET utf8mb4 NULL,
    `Pt` longtext CHARACTER SET utf8mb4 NULL,
    `Nl` longtext CHARACTER SET utf8mb4 NULL,
    `Hr` longtext CHARACTER SET utf8mb4 NULL,
    `Fa` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CountryNameTranslations` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CountryNameTranslations_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CountryState` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CountryState` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CountryState_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CountryTopLevelDomain` (
    `CountryTopLevelDomainID` int NOT NULL AUTO_INCREMENT,
    `Domain` longtext CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CountryTopLevelDomain` PRIMARY KEY (`CountryTopLevelDomainID`),
    CONSTRAINT `FK_CountryTopLevelDomain_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Currency` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Enabled` tinyint(1) NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Symbol` longtext CHARACTER SET utf8mb4 NULL,
    `ISOCode` longtext CHARACTER SET utf8mb4 NULL,
    `IsBaseCurrency` tinyint(1) NOT NULL,
    `ExchangeValue` double NOT NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Currency` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Currency_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CountryLanguageRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryLanguageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CountryLanguageRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CountryLanguageRecord_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_CountryLanguageRecord_CountryLanguage_CountryLanguageID` FOREIGN KEY (`CountryLanguageID`) REFERENCES `CountryLanguage` (`Iso639_1`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Column` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Internal` tinyint(1) NOT NULL,
    `PrimaryKey` tinyint(1) NOT NULL,
    `ForeignKey` tinyint(1) NOT NULL,
    `ColumnType` int NOT NULL,
    `EntityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Column` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Column_Entity_EntityID` FOREIGN KEY (`EntityID`) REFERENCES `Entity` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Row` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Internal` tinyint(1) NOT NULL,
    `EntityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Row` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Row_Entity_EntityID` FOREIGN KEY (`EntityID`) REFERENCES `Entity` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `View` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `EntityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_View` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_View_Entity_EntityID` FOREIGN KEY (`EntityID`) REFERENCES `Entity` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CountryRegionalBlockRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `RegionalBlockID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CountryRegionalBlockRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CountryRegionalBlockRecord_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_CountryRegionalBlockRecord_RegionalBlock_RegionalBlockID` FOREIGN KEY (`RegionalBlockID`) REFERENCES `RegionalBlock` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `RegionalBlockAlternativeAcronym` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `RegionalBlockID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_RegionalBlockAlternativeAcronym` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_RegionalBlockAlternativeAcronym_RegionalBlock_RegionalBlockID` FOREIGN KEY (`RegionalBlockID`) REFERENCES `RegionalBlock` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `RegionalBlockAlternativeName` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `RegionalBlockID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_RegionalBlockAlternativeName` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_RegionalBlockAlternativeName_RegionalBlock_RegionalBlockID` FOREIGN KEY (`RegionalBlockID`) REFERENCES `RegionalBlock` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CountryTimeZoneRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TimezoneID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CountryTimeZoneRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CountryTimeZoneRecord_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_CountryTimeZoneRecord_Timezone_TimezoneID` FOREIGN KEY (`TimezoneID`) REFERENCES `Timezone` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `City` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `ImageUrl` longtext CHARACTER SET utf8mb4 NULL,
    `StateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Latitude` longtext CHARACTER SET utf8mb4 NULL,
    `Longitude` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_City` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_City_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_City_CountryState_StateID` FOREIGN KEY (`StateID`) REFERENCES `CountryState` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ForeignKey` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `EntityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ColumnID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ForeignEntityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ForeignColumnID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ForeignKey` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ForeignKey_Column_ColumnID` FOREIGN KEY (`ColumnID`) REFERENCES `Column` (`ID`),
    CONSTRAINT `FK_ForeignKey_Column_ForeignColumnID` FOREIGN KEY (`ForeignColumnID`) REFERENCES `Column` (`ID`),
    CONSTRAINT `FK_ForeignKey_Entity_EntityID` FOREIGN KEY (`EntityID`) REFERENCES `Entity` (`ID`),
    CONSTRAINT `FK_ForeignKey_Entity_ForeignEntityID` FOREIGN KEY (`ForeignEntityID`) REFERENCES `Entity` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Cell` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ColumnID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `RowID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Value` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Cell` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Cell_Column_ColumnID` FOREIGN KEY (`ColumnID`) REFERENCES `Column` (`ID`),
    CONSTRAINT `FK_Cell_Row_RowID` FOREIGN KEY (`RowID`) REFERENCES `Row` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AccessKeyPair` (
    `IP` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Disabled` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CSR` longtext CHARACTER SET utf8mb4 NULL,
    `PublicKey` longtext CHARACTER SET utf8mb4 NULL,
    `PrivateKey` longtext CHARACTER SET utf8mb4 NULL,
    `AesKey` longblob NULL,
    `AesIV` longblob NULL,
    CONSTRAINT `PK_AccessKeyPair` PRIMARY KEY (`IP`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Account` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Group` tinyint(1) NOT NULL,
    `Frozen` tinyint(1) NOT NULL,
    `Closed` tinyint(1) NOT NULL,
    `ReadOnly` tinyint(1) NOT NULL,
    `Verified` tinyint(1) NOT NULL,
    `Disable` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `VerificationTimestamp` datetime(6) NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Path` longtext CHARACTER SET utf8mb4 NULL,
    `Prefix` longtext CHARACTER SET utf8mb4 NULL,
    `TaxRate` decimal(65,30) NOT NULL,
    `AccountBalanceCriteria` int NOT NULL,
    `AccountRootType` int NOT NULL,
    `Balance` decimal(65,30) NOT NULL,
    `DebitsBalance` decimal(65,30) NOT NULL,
    `CreditsBalance` decimal(65,30) NOT NULL,
    `LastBalance` datetime(6) NOT NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LedgerID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IBAN` longtext CHARACTER SET utf8mb4 NULL,
    `SWIFT` longtext CHARACTER SET utf8mb4 NULL,
    `BranchCode` longtext CHARACTER SET utf8mb4 NULL,
    `BankAccountNumber` longtext CHARACTER SET utf8mb4 NULL,
    `BankID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BankProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Account` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Account_Account_ParentAccountID` FOREIGN KEY (`ParentAccountID`) REFERENCES `Account` (`ID`),
    CONSTRAINT `FK_Account_Bank_BankID` FOREIGN KEY (`BankID`) REFERENCES `Bank` (`ID`),
    CONSTRAINT `FK_Account_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AccountGroup` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `ParentAccountGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AccountGroup` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_AccountGroup_AccountGroup_ParentAccountGroupID` FOREIGN KEY (`ParentAccountGroupID`) REFERENCES `AccountGroup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AccountHolderLogin` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Suspicious` tinyint(1) NOT NULL,
    `Aknowledged` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `IPLookupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IP` longtext CHARACTER SET utf8mb4 NULL,
    `DeviceOS` longtext CHARACTER SET utf8mb4 NULL,
    `DeviceBrand` longtext CHARACTER SET utf8mb4 NULL,
    `DeviceModel` longtext CHARACTER SET utf8mb4 NULL,
    `DeviceFamily` longtext CHARACTER SET utf8mb4 NULL,
    `UserAgentPatch` longtext CHARACTER SET utf8mb4 NULL,
    `UserAgentFamily` longtext CHARACTER SET utf8mb4 NULL,
    `UserAgentMinor` longtext CHARACTER SET utf8mb4 NULL,
    `UserAgentMajor` longtext CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AccountHolderLogin` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AccountHolderSettings` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DarkTheme` tinyint(1) NOT NULL,
    `Cookies` tinyint(1) NOT NULL,
    `Analytics` tinyint(1) NOT NULL,
    `ForexRates` longtext CHARACTER SET utf8mb4 NULL,
    `ExchangeRatesUpdatedTimestamp` datetime(6) NOT NULL,
    CONSTRAINT `PK_AccountHolderSettings` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AccountingEntry` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `AccountingEntryType` int NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Debit` decimal(65,30) NOT NULL,
    `Credit` decimal(65,30) NOT NULL,
    `ForexRate` decimal(65,30) NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `DebitAccountID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `CreditAccountID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `JournalEntryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `PaymentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `RefundRequestID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentDisputeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `RequestDate` datetime(6) NULL,
    `PaymentChargeback_PaymentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BankProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentChargeback_PaymentDisputeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentChargeback_WalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AccountingEntry` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_AccountingEntry_Account_CreditAccountID` FOREIGN KEY (`CreditAccountID`) REFERENCES `Account` (`ID`),
    CONSTRAINT `FK_AccountingEntry_Account_DebitAccountID` FOREIGN KEY (`DebitAccountID`) REFERENCES `Account` (`ID`),
    CONSTRAINT `FK_AccountingEntry_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AccountingPeriodClosingVoucher` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `PostingDate` datetime(6) NOT NULL,
    `Remarks` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalYearID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AccountingPeriodClosingVoucher` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_AccountingPeriodClosingVoucher_Account_AccountID` FOREIGN KEY (`AccountID`) REFERENCES `Account` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AccountRelation` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `AccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AccountRelation` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_AccountRelation_Account_AccountID` FOREIGN KEY (`AccountID`) REFERENCES `Account` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AccountType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AccountType` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ActivityFeed` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DealUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MarketingCampaignID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MarketingListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ActivityFeed` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ActivityRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Completed` tinyint(1) NOT NULL,
    `DueDate` datetime(6) NOT NULL,
    `EnableEmailActivities` tinyint(1) NOT NULL,
    `EnableTaskActivities` tinyint(1) NOT NULL,
    `EnableFaxActivities` tinyint(1) NOT NULL,
    `EnableAlertActivities` tinyint(1) NOT NULL,
    `EnableAppointmentActivities` tinyint(1) NOT NULL,
    `EnableAnnotationActivities` tinyint(1) NOT NULL,
    `EnableLetterActivities` tinyint(1) NOT NULL,
    `EnablePhoneCallActivities` tinyint(1) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentActivityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ActivityTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ActivityFeedID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `InChargeBusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ActivityRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ActivityRecord_ActivityFeed_ActivityFeedID` FOREIGN KEY (`ActivityFeedID`) REFERENCES `ActivityFeed` (`ID`),
    CONSTRAINT `FK_ActivityRecord_ActivityRecord_ParentActivityID` FOREIGN KEY (`ParentActivityID`) REFERENCES `ActivityRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ActivityType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ActivityType` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Agreement` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AgreementTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Agreement` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AgreementRevision` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `LanguageCode` longtext CHARACTER SET utf8mb4 NULL,
    `LanguageIso639_1` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AgreementID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ActiveRevision` tinyint(1) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `StartDate` datetime(6) NOT NULL,
    `AgreementRevisionBody` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AgreementRevision` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_AgreementRevision_Agreement_AgreementID` FOREIGN KEY (`AgreementID`) REFERENCES `Agreement` (`ID`),
    CONSTRAINT `FK_AgreementRevision_CountryLanguage_LanguageIso639_1` FOREIGN KEY (`LanguageIso639_1`) REFERENCES `CountryLanguage` (`Iso639_1`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AgreementType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AgreementType` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AppliedFee` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `FeeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BaseAmount` decimal(65,30) NOT NULL,
    `TotalCost` decimal(65,30) NOT NULL,
    `TotalTaxes` decimal(65,30) NOT NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `WalletWithdrawID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentChargebackID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentRefundID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentGatewayID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AppliedFee` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_AppliedFee_AccountingEntry_PaymentChargebackID` FOREIGN KEY (`PaymentChargebackID`) REFERENCES `AccountingEntry` (`ID`),
    CONSTRAINT `FK_AppliedFee_AccountingEntry_PaymentRefundID` FOREIGN KEY (`PaymentRefundID`) REFERENCES `AccountingEntry` (`ID`),
    CONSTRAINT `FK_AppliedFee_Fee_FeeID` FOREIGN KEY (`FeeID`) REFERENCES `Fee` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AppliedTaxPolicyRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TaxPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `InvoiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TaxAmountInUSD` double NOT NULL,
    `TaxBaseAmountInUSD` double NOT NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BillingItemRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AppliedFeeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AppliedTaxPolicyRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_AppliedTaxPolicyRecord_AppliedFee_AppliedFeeID` FOREIGN KEY (`AppliedFeeID`) REFERENCES `AppliedFee` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AppraisalSession` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AppraisalWorkflowID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AppraisalStageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `EmployeeProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AppraisalSession` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AspNetUserClaims` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `UserId` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ClaimType` longtext CHARACTER SET utf8mb4 NULL,
    `ClaimValue` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AspNetUserClaims` PRIMARY KEY (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AspNetUserLogins` (
    `LoginProvider` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ProviderKey` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ProviderDisplayName` longtext CHARACTER SET utf8mb4 NULL,
    `UserId` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK_AspNetUserLogins` PRIMARY KEY (`LoginProvider`, `ProviderKey`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AspNetUserRoles` (
    `UserId` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `RoleId` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK_AspNetUserRoles` PRIMARY KEY (`UserId`, `RoleId`),
    CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AspNetUsers` (
    `Id` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Handler` longtext CHARACTER SET utf8mb4 NULL,
    `NameIdentifier` longtext CHARACTER SET utf8mb4 NULL,
    `PublicIdentifier` longtext CHARACTER SET utf8mb4 NULL,
    `PublicName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
    `LastName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `IdentityProvider` longtext CHARACTER SET utf8mb4 NULL,
    `JobTitle` longtext CHARACTER SET utf8mb4 NULL,
    `ProfileCoverURL` longtext CHARACTER SET utf8mb4 NULL,
    `AvatarURL` longtext CHARACTER SET utf8mb4 NULL,
    `About` varchar(256) CHARACTER SET utf8mb4 NULL,
    `Status` varchar(140) CHARACTER SET utf8mb4 NULL,
    `WebURL` longtext CHARACTER SET utf8mb4 NULL,
    `FacebookURL` longtext CHARACTER SET utf8mb4 NULL,
    `YouTubeURL` longtext CHARACTER SET utf8mb4 NULL,
    `LinkedInURL` longtext CHARACTER SET utf8mb4 NULL,
    `TwitterHandler` varchar(15) CHARACTER SET utf8mb4 NULL,
    `InstagramUsername` longtext CHARACTER SET utf8mb4 NULL,
    `GithubUsername` longtext CHARACTER SET utf8mb4 NULL,
    `TaxID` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Birthday` datetime(6) NOT NULL,
    `Gender` int NOT NULL,
    `Availability` int NOT NULL,
    `LastLoginIP` varchar(39) CHARACTER SET utf8mb4 NULL,
    `SelectedBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SelectedBusinessAs` longtext CHARACTER SET utf8mb4 NULL,
    `CountryLanguageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryStateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TimezoneID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `UserName` varchar(256) CHARACTER SET utf8mb4 NULL,
    `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 NULL,
    `Email` varchar(256) CHARACTER SET utf8mb4 NULL,
    `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 NULL,
    `EmailConfirmed` tinyint(1) NOT NULL,
    `PasswordHash` longtext CHARACTER SET utf8mb4 NULL,
    `SecurityStamp` longtext CHARACTER SET utf8mb4 NULL,
    `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 NULL,
    `PhoneNumber` longtext CHARACTER SET utf8mb4 NULL,
    `PhoneNumberConfirmed` tinyint(1) NOT NULL,
    `TwoFactorEnabled` tinyint(1) NOT NULL,
    `LockoutEnd` datetime(6) NULL,
    `LockoutEnabled` tinyint(1) NOT NULL,
    `AccessFailedCount` int NOT NULL,
    CONSTRAINT `PK_AspNetUsers` PRIMARY KEY (`Id`),
    CONSTRAINT `FK_AspNetUsers_City_CityID` FOREIGN KEY (`CityID`) REFERENCES `City` (`ID`),
    CONSTRAINT `FK_AspNetUsers_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_AspNetUsers_CountryLanguage_CountryLanguageID` FOREIGN KEY (`CountryLanguageID`) REFERENCES `CountryLanguage` (`Iso639_1`),
    CONSTRAINT `FK_AspNetUsers_CountryState_CountryStateID` FOREIGN KEY (`CountryStateID`) REFERENCES `CountryState` (`ID`),
    CONSTRAINT `FK_AspNetUsers_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_AspNetUsers_Timezone_TimezoneID` FOREIGN KEY (`TimezoneID`) REFERENCES `Timezone` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AspNetUserTokens` (
    `UserId` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `LoginProvider` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Value` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AspNetUserTokens` PRIMARY KEY (`UserId`, `LoginProvider`, `Name`),
    CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `IPLookup` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `IP` longtext CHARACTER SET utf8mb4 NULL,
    `ISP` longtext CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `UserAgent` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessName` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessWebsite` longtext CHARACTER SET utf8mb4 NULL,
    `City` longtext CHARACTER SET utf8mb4 NULL,
    `Region` longtext CHARACTER SET utf8mb4 NULL,
    `Continent` longtext CHARACTER SET utf8mb4 NULL,
    `Longitud` longtext CHARACTER SET utf8mb4 NULL,
    `Latitud` longtext CHARACTER SET utf8mb4 NULL,
    `Tor` tinyint(1) NOT NULL,
    `ASN` bigint NOT NULL,
    `VPN` tinyint(1) NOT NULL,
    `Bot` tinyint(1) NOT NULL,
    `Proxy` tinyint(1) NOT NULL,
    `Mobile` tinyint(1) NOT NULL,
    `Banned` tinyint(1) NOT NULL,
    `RecentAbuse` tinyint(1) NOT NULL,
    `KnownAttacker` tinyint(1) NOT NULL,
    `DeviceOS` longtext CHARACTER SET utf8mb4 NULL,
    `DeviceBrand` longtext CHARACTER SET utf8mb4 NULL,
    `DeviceModel` longtext CHARACTER SET utf8mb4 NULL,
    `DeviceFamily` longtext CHARACTER SET utf8mb4 NULL,
    `UserAgentPatch` longtext CHARACTER SET utf8mb4 NULL,
    `UserAgentFamily` longtext CHARACTER SET utf8mb4 NULL,
    `UserAgentMinor` longtext CHARACTER SET utf8mb4 NULL,
    `UserAgentMajor` longtext CHARACTER SET utf8mb4 NULL,
    `Timezone` longtext CHARACTER SET utf8mb4 NULL,
    `Host` longtext CHARACTER SET utf8mb4 NULL,
    `FraudScore` bigint NOT NULL,
    `Message` longtext CHARACTER SET utf8mb4 NULL,
    `Success` tinyint(1) NOT NULL,
    `Data` longtext CHARACTER SET utf8mb4 NULL,
    `DataLabel` longtext CHARACTER SET utf8mb4 NULL,
    `Data1` longtext CHARACTER SET utf8mb4 NULL,
    `Data1Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data2` longtext CHARACTER SET utf8mb4 NULL,
    `Data2Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data3` longtext CHARACTER SET utf8mb4 NULL,
    `Data3Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data4` longtext CHARACTER SET utf8mb4 NULL,
    `Data4Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data5` longtext CHARACTER SET utf8mb4 NULL,
    `Data5Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data6` longtext CHARACTER SET utf8mb4 NULL,
    `Data6Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data7` longtext CHARACTER SET utf8mb4 NULL,
    `Data7Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data8` longtext CHARACTER SET utf8mb4 NULL,
    `Data8Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data9` longtext CHARACTER SET utf8mb4 NULL,
    `Data9Label` longtext CHARACTER SET utf8mb4 NULL,
    `AcknowledgedIP` tinyint(1) NOT NULL,
    `AcknowledgedDevice` tinyint(1) NOT NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_IPLookup` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_IPLookup_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_IPLookup_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Asset` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `IsExistingAsset` tinyint(1) NOT NULL,
    `CalculateDepreciation` tinyint(1) NOT NULL,
    `AllowMontlyDepreciation` tinyint(1) NOT NULL,
    `OpeningDepreciation` double NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `AssetType` int NOT NULL,
    `AssetOwner` int NOT NULL,
    `PurchaseDate` datetime(6) NOT NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AssetCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PurchaseInvoiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PurchaseReceiptID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationDepartmentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AssetLocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FinancialBookID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Asset` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AssetCategory` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AssetCategory` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AssetDepreciationRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FinancialBookID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AssetDepreciationRecord` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AssetTransfer` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `IsRootTransfer` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `SerialList` longtext CHARACTER SET utf8mb4 NULL,
    `Quantity` longtext CHARACTER SET utf8mb4 NULL,
    `Serial` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AssetID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PreviousShareTransferID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PreviousAssetTransferID` longtext CHARACTER SET utf8mb4 NULL,
    `SourceLocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DestinationLocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SourceContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DestinationContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SourceDepartmentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DestinationDepartmentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AssetTransfer` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_AssetTransfer_Asset_AssetID` FOREIGN KEY (`AssetID`) REFERENCES `Asset` (`ID`),
    CONSTRAINT `FK_AssetTransfer_AssetTransfer_PreviousShareTransferID` FOREIGN KEY (`PreviousShareTransferID`) REFERENCES `AssetTransfer` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `AssetValueAmend` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FinancialBookID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_AssetValueAmend` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BankGuarantee` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Margin` double NOT NULL,
    `Charges` double NOT NULL,
    `BeneficiaryName` longtext CHARACTER SET utf8mb4 NULL,
    `GuaranteeNumber` longtext CHARACTER SET utf8mb4 NULL,
    `GuaranteeConditions` longtext CHARACTER SET utf8mb4 NULL,
    `FixedDepositNumber` double NOT NULL,
    `StartDate` datetime(6) NOT NULL,
    `EndDate` datetime(6) NOT NULL,
    `ValidityInDays` int NOT NULL,
    `BankGuaranteeType` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BankProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BankAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BankGuarantee` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BankGuarantee_Account_BankAccountID` FOREIGN KEY (`BankAccountID`) REFERENCES `Account` (`ID`),
    CONSTRAINT `FK_BankGuarantee_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BillingCoupon` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ReleaseDateTime` datetime(6) NOT NULL,
    `ExpirationDateTime` datetime(6) NOT NULL,
    `Published` tinyint(1) NOT NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `RestrictedEmails` longtext CHARACTER SET utf8mb4 NULL,
    `AllowedEmails` longtext CHARACTER SET utf8mb4 NULL,
    `AllowedItems` longtext CHARACTER SET utf8mb4 NULL,
    `AllowedCountries` longtext CHARACTER SET utf8mb4 NULL,
    `RestrictedCountries` longtext CHARACTER SET utf8mb4 NULL,
    `UsageLimit` int NOT NULL,
    `UsageLimitPerUser` int NOT NULL,
    `UsageLimitPerItem` int NOT NULL,
    `ForceSingle` tinyint(1) NOT NULL,
    `GrantsFreeShipping` tinyint(1) NOT NULL,
    `MinimumSpend` decimal(65,30) NOT NULL,
    `MaximumSpend` decimal(65,30) NOT NULL,
    `DiscountPercent` decimal(65,30) NOT NULL,
    `DiscountAmount` decimal(65,30) NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BillingCoupon` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BillingCoupon_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BillingItemRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Quantity` double NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Free` tinyint(1) NOT NULL,
    `FreeReason` longtext CHARACTER SET utf8mb4 NULL,
    `FreeReasonCode` longtext CHARACTER SET utf8mb4 NULL,
    `Data` longtext CHARACTER SET utf8mb4 NULL,
    `DataLabel` longtext CHARACTER SET utf8mb4 NULL,
    `Data1` longtext CHARACTER SET utf8mb4 NULL,
    `Data1Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data2` longtext CHARACTER SET utf8mb4 NULL,
    `Data2Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data3` longtext CHARACTER SET utf8mb4 NULL,
    `Data3Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data4` longtext CHARACTER SET utf8mb4 NULL,
    `Data4Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data5` longtext CHARACTER SET utf8mb4 NULL,
    `Data5Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data6` longtext CHARACTER SET utf8mb4 NULL,
    `Data6Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data7` longtext CHARACTER SET utf8mb4 NULL,
    `Data7Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data8` longtext CHARACTER SET utf8mb4 NULL,
    `Data8Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data9` longtext CHARACTER SET utf8mb4 NULL,
    `Data9Label` longtext CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemPriceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PriceListItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `UnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `UnitGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TaxCalculationMethod` int NOT NULL,
    `CostCalculationMethod` int NOT NULL,
    `ForexRatesSnapshot` longtext CHARACTER SET utf8mb4 NULL,
    `ForexRate` double NOT NULL,
    `TotalBaseAmountInUSD` double NOT NULL,
    `TotalProfitInUSD` double NOT NULL,
    `TotalDetailAmountInUSD` double NOT NULL,
    `TotalTaxBaseInUSD` double NOT NULL,
    `TotalDiscountsInUSD` double NOT NULL,
    `TotalTaxesInUSD` double NOT NULL,
    `TotalWithholdingTaxesInUSD` double NOT NULL,
    `TotalShippingCostInUSD` double NOT NULL,
    `TotalShippingTaxesInUSD` double NOT NULL,
    `TotalWarrantyCostInUSD` double NOT NULL,
    `TotalReturnCostInUSD` double NOT NULL,
    `TotalRefundCostInUSD` double NOT NULL,
    `TotalSurchargesInUSD` double NOT NULL,
    `TotalAmountInUSD` double NOT NULL,
    `TotalGlobalDiscountsInUSD` double NOT NULL,
    `TotalGlobalSurchargesInUSD` double NOT NULL,
    `CustomGlobalSurchargesAmount` double NOT NULL,
    `CustomGlobalDiscountsAmount` double NOT NULL,
    `CustomBaseAmount` double NOT NULL,
    `CustomDetailAmount` double NOT NULL,
    `CustomDiscountsAmount` double NOT NULL,
    `CustomTaxBase` double NOT NULL,
    `CustomSurchargesAmount` double NOT NULL,
    `CustomProfitAmount` double NOT NULL,
    `CustomShippingCostAmount` double NOT NULL,
    `CustomShippingTaxAmount` double NOT NULL,
    `CustomTaxAmount` double NOT NULL,
    `CustomWithholdingTaxAmount` double NOT NULL,
    `CustomTotalAmount` double NOT NULL,
    `ReturnPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `RefundPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WarrantyPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemShipmentPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `QuoteItemRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentBillingItemRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Excluded` tinyint(1) NULL,
    `BillingCouponID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingCouponCartRecord_BillingCouponID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CartID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingCouponOrderRecord_BillingCouponID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `InvoiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountingEntryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderItemRecord_OrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentOrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DealUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `QuoteID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BillingItemRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BillingItemRecord_AccountingEntry_AccountingEntryID` FOREIGN KEY (`AccountingEntryID`) REFERENCES `AccountingEntry` (`ID`),
    CONSTRAINT `FK_BillingItemRecord_BillingCoupon_BillingCouponCartRecord_Bill~` FOREIGN KEY (`BillingCouponCartRecord_BillingCouponID`) REFERENCES `BillingCoupon` (`ID`),
    CONSTRAINT `FK_BillingItemRecord_BillingCoupon_BillingCouponID` FOREIGN KEY (`BillingCouponID`) REFERENCES `BillingCoupon` (`ID`),
    CONSTRAINT `FK_BillingItemRecord_BillingCoupon_BillingCouponOrderRecord_Bil~` FOREIGN KEY (`BillingCouponOrderRecord_BillingCouponID`) REFERENCES `BillingCoupon` (`ID`),
    CONSTRAINT `FK_BillingItemRecord_BillingItemRecord_ParentBillingItemRecordID` FOREIGN KEY (`ParentBillingItemRecordID`) REFERENCES `BillingItemRecord` (`ID`),
    CONSTRAINT `FK_BillingItemRecord_BillingItemRecord_QuoteItemRecordID` FOREIGN KEY (`QuoteItemRecordID`) REFERENCES `BillingItemRecord` (`ID`),
    CONSTRAINT `FK_BillingItemRecord_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Blockchain` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `LogoUrl` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Difficulty` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Blockchain` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BlockchainBlock` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Index` int NOT NULL,
    `Data` longtext CHARACTER SET utf8mb4 NULL,
    `Hash` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Nonce` bigint NOT NULL,
    `PreviousHash` longtext CHARACTER SET utf8mb4 NULL,
    `BlockchainID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `PreviousBlockchainBlockID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `WalletAccountID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `NonFungibleTokenID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BlockchainBlock` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BlockchainBlock_Blockchain_BlockchainID` FOREIGN KEY (`BlockchainID`) REFERENCES `Blockchain` (`ID`),
    CONSTRAINT `FK_BlockchainBlock_BlockchainBlock_PreviousBlockchainBlockID` FOREIGN KEY (`PreviousBlockchainBlockID`) REFERENCES `BlockchainBlock` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BlockRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BlockerSocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BlockedSocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BlockRecord` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BrandRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BrandID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BrandRecord` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Budget` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalYearID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `CostCentreID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Budget` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Business` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `PublicIdentifier` longtext CHARACTER SET utf8mb4 NULL,
    `Root` tinyint(1) NOT NULL,
    `Public` tinyint(1) NOT NULL,
    `Personal` tinyint(1) NOT NULL,
    `Verified` tinyint(1) NOT NULL,
    `Deleted` tinyint(1) NOT NULL,
    `CreationTimestamp` datetime(6) NOT NULL,
    `DeletionTimestamp` datetime(6) NOT NULL,
    `BusinessLegalName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BusinessName` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Handler` longtext CHARACTER SET utf8mb4 NOT NULL,
    `EnableAutomaticRenovation` tinyint(1) NOT NULL,
    `AutomaticRenovationToken` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessAvatarURL` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessProfileCoverURL` longtext CHARACTER SET utf8mb4 NULL,
    `AccountingBalance` double NOT NULL,
    `AccountingDebits` double NOT NULL,
    `AccountingCredits` double NOT NULL,
    `TaxID` longtext CHARACTER SET utf8mb4 NULL,
    `DUNS` longtext CHARACTER SET utf8mb4 NULL,
    `Slogan` longtext CHARACTER SET utf8mb4 NULL,
    `About` longtext CHARACTER SET utf8mb4 NULL,
    `CorporateBoilerplate` longtext CHARACTER SET utf8mb4 NULL,
    `LinkedInPageURL` longtext CHARACTER SET utf8mb4 NULL,
    `GithubOrganizationName` longtext CHARACTER SET utf8mb4 NULL,
    `TwitterUsername` longtext CHARACTER SET utf8mb4 NULL,
    `FacebookPageURL` longtext CHARACTER SET utf8mb4 NULL,
    `YouTubeURL` longtext CHARACTER SET utf8mb4 NULL,
    `InstagramUsername` longtext CHARACTER SET utf8mb4 NULL,
    `WhatsAppNumber` longtext CHARACTER SET utf8mb4 NULL,
    `SupportPhoneNumber` longtext CHARACTER SET utf8mb4 NULL,
    `WebURL` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessEmail` longtext CHARACTER SET utf8mb4 NOT NULL,
    `PortalLogoURL` longtext CHARACTER SET utf8mb4 NULL,
    `PortalReverseLogoURL` longtext CHARACTER SET utf8mb4 NULL,
    `IncorporationDate` datetime(6) NULL,
    `ParentBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryStateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TimezoneID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryLanguageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessSegmentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessIndustryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Business` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Business_Business_ParentBusinessID` FOREIGN KEY (`ParentBusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Business_BusinessSegment_BusinessSegmentID` FOREIGN KEY (`BusinessSegmentID`) REFERENCES `BusinessSegment` (`ID`),
    CONSTRAINT `FK_Business_BusinessType_BusinessTypeID` FOREIGN KEY (`BusinessTypeID`) REFERENCES `BusinessType` (`ID`),
    CONSTRAINT `FK_Business_City_CityID` FOREIGN KEY (`CityID`) REFERENCES `City` (`ID`),
    CONSTRAINT `FK_Business_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_Business_CountryLanguage_CountryLanguageID` FOREIGN KEY (`CountryLanguageID`) REFERENCES `CountryLanguage` (`Iso639_1`),
    CONSTRAINT `FK_Business_CountryState_CountryStateID` FOREIGN KEY (`CountryStateID`) REFERENCES `CountryState` (`ID`),
    CONSTRAINT `FK_Business_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_Business_Timezone_TimezoneID` FOREIGN KEY (`TimezoneID`) REFERENCES `Timezone` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessDomain` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Domain` longtext CHARACTER SET utf8mb4 NULL,
    `TXTRecord` longtext CHARACTER SET utf8mb4 NULL,
    `Verified` tinyint(1) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessDomain` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessDomain_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessProfileRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `IsBusinessOwner` tinyint(1) NOT NULL,
    `IsAdmin` tinyint(1) NOT NULL,
    `IsRoot` tinyint(1) NOT NULL,
    `IsDisabled` tinyint(1) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK_BusinessProfileRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessProfileRecord_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_BusinessProfileRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessRelationship` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ParentBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OwnershipPercentage` double NOT NULL,
    `ChildBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessRelationship` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessRelationship_Business_ChildBusinessID` FOREIGN KEY (`ChildBusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessRelationship_Business_ParentBusinessID` FOREIGN KEY (`ParentBusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessTenantSettings` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ForexRates` longtext CHARACTER SET utf8mb4 NULL,
    `ExchangeRatesUpdatedTimestamp` datetime(6) NOT NULL,
    CONSTRAINT `PK_BusinessTenantSettings` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessTenantSettings_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ContactRelationType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `BackName` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ContactRelationType` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ContactRelationType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ContactSource` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ContactSource` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ContactSource_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CostCentresGroup` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Disabled` tinyint(1) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentCostCentresGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CostCentresGroup` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CostCentresGroup_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CostCentresGroup_CostCentresGroup_ParentCostCentresGroupID` FOREIGN KEY (`ParentCostCentresGroupID`) REFERENCES `CostCentresGroup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CustomProperty` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `FormFieldDataType` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CustomProperty` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CustomProperty_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `DeliveryNote` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_DeliveryNote` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_DeliveryNote_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `FinancialBook` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_FinancialBook` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_FinancialBook_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Holiday` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `DurationInDays` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `StartDate` datetime(6) NOT NULL,
    `EndDate` datetime(6) NOT NULL,
    CONSTRAINT `PK_Holiday` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Holiday_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `HolidaySchedule` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_HolidaySchedule` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_HolidaySchedule_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemAttribute` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemAttribute` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemAttribute_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemBrand` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `WebsiteURL` longtext CHARACTER SET utf8mb4 NULL,
    `LogoURL` longtext CHARACTER SET utf8mb4 NULL,
    `Featured` tinyint(1) NOT NULL,
    `Trending` tinyint(1) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemBrand` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemBrand_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemBundle` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Disabled` tinyint(1) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemBundle` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemBundle_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemFamily` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemFamily` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemFamily_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemGroup` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemGroup` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemGroup_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemRestock` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemRestock` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemRestock_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemTag` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemTag` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemTag_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `JobField` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `ImageURL` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_JobField` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_JobField_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `LeaveType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_LeaveType` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_LeaveType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `LicenseValidation` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Valid` tinyint(1) NOT NULL,
    `Domain` longtext CHARACTER SET utf8mb4 NULL,
    `IP` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_LicenseValidation` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_LicenseValidation_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `LocalizationResource` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Comments` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryLanguageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryLanguageRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Base` longtext CHARACTER SET utf8mb4 NULL,
    `Value` longtext CHARACTER SET utf8mb4 NULL,
    `LocalizationStringID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_LocalizationResource` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_LocalizationResource_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_LocalizationResource_CountryLanguage_CountryLanguageID` FOREIGN KEY (`CountryLanguageID`) REFERENCES `CountryLanguage` (`Iso639_1`),
    CONSTRAINT `FK_LocalizationResource_CountryLanguageRecord_CountryLanguageRe~` FOREIGN KEY (`CountryLanguageRecordID`) REFERENCES `CountryLanguageRecord` (`ID`),
    CONSTRAINT `FK_LocalizationResource_LocalizationResource_LocalizationString~` FOREIGN KEY (`LocalizationStringID`) REFERENCES `LocalizationResource` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PaymentGateway` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PaymentGateway` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PaymentGateway_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ProductionPlan` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ProductionPlan` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ProductionPlan_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SEOKeyWord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Keyword` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SEOKeyWord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SEOKeyWord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShippingClass` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Slug` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShippingClass` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShippingClass_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShippingMethod` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Cost` double NOT NULL,
    `Taxable` tinyint(1) NOT NULL,
    `TaxIncluded` tinyint(1) NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingClassCalculationType` int NOT NULL,
    CONSTRAINT `PK_ShippingMethod` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShippingMethod_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ShippingMethod_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShippingRegion` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `PostalCodes` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShippingRegion` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShippingRegion_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShippingZone` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Default` tinyint(1) NOT NULL,
    `Everywhere` tinyint(1) NOT NULL,
    `PostalCodes` longtext CHARACTER SET utf8mb4 NULL,
    `CountryCodes` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShippingZone` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShippingZone_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SupportTicketType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SupportTicketType` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SupportTicketType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WebsiteTheme` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Enable` tinyint(1) NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `AuthorName` longtext CHARACTER SET utf8mb4 NULL,
    `AuthorUrl` longtext CHARACTER SET utf8mb4 NULL,
    `Version` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Tags` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WebsiteTheme` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WebsiteTheme_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WorkOrderType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WorkOrderType` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WorkOrderType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Workstation` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Workstation` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Workstation_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessApplication` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Namespace` longtext CHARACTER SET utf8mb4 NULL,
    `DisplayName` longtext CHARACTER SET utf8mb4 NULL,
    `AvatarURL` longtext CHARACTER SET utf8mb4 NULL,
    `WebsiteUrl` longtext CHARACTER SET utf8mb4 NULL,
    `IsMultiTenant` tinyint(1) NOT NULL,
    `IsVerified` tinyint(1) NOT NULL,
    `IsDisabled` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `VerificationTimestamp` datetime(6) NOT NULL,
    `SpaUIEngine` int NOT NULL,
    `SpaStaticFilesRootPath` longtext CHARACTER SET utf8mb4 NULL,
    `SpaRelativeSourcePath` longtext CHARACTER SET utf8mb4 NULL,
    `SpaRelativeAppPath` longtext CHARACTER SET utf8mb4 NULL,
    `SpaServerUrl` longtext CHARACTER SET utf8mb4 NULL,
    `SpaPublishScript` longtext CHARACTER SET utf8mb4 NULL,
    `SpaPrePublishScript` longtext CHARACTER SET utf8mb4 NULL,
    `SpaPostPublishScript` longtext CHARACTER SET utf8mb4 NULL,
    `SpaInstallScript` longtext CHARACTER SET utf8mb4 NULL,
    `SpaPreInstallScript` longtext CHARACTER SET utf8mb4 NULL,
    `SpaPostInstallScript` longtext CHARACTER SET utf8mb4 NULL,
    `SpaStartScript` longtext CHARACTER SET utf8mb4 NULL,
    `SpaPreStartScript` longtext CHARACTER SET utf8mb4 NULL,
    `SpaPostStartScript` longtext CHARACTER SET utf8mb4 NULL,
    `SpaPackageManager` longtext CHARACTER SET utf8mb4 NULL,
    `SpaNpmInstallScript` longtext CHARACTER SET utf8mb4 NULL,
    `SpaNpmStartScript` longtext CHARACTER SET utf8mb4 NULL,
    `SpaNpmPublishScript` longtext CHARACTER SET utf8mb4 NULL,
    `SpaRelativeOutputPath` longtext CHARACTER SET utf8mb4 NULL,
    `UseProxyToSpaDevelopmentServer` tinyint(1) NOT NULL,
    `SpaDevelopmentServerUri` longtext CHARACTER SET utf8mb4 NULL,
    `IsSinglePageApplication` tinyint(1) NOT NULL,
    `IsNativeOrDesktopApp` tinyint(1) NOT NULL,
    `SystemLocked` tinyint(1) NOT NULL,
    `RequireHttps` tinyint(1) NOT NULL,
    `RequireAppSecret` tinyint(1) NOT NULL,
    `EnableClientOauthLogin` tinyint(1) NOT NULL,
    `EnableWebOAuthLogin` tinyint(1) NOT NULL,
    `EnableDeviceOAuthLogin` tinyint(1) NOT NULL,
    `AllowAccessToSuiteSettings` tinyint(1) NOT NULL,
    `RequireWebOAuthReauthentication` tinyint(1) NOT NULL,
    `RequireTwoFactorReauthorization` tinyint(1) NOT NULL,
    `EnableEmbeddedBrowserOAuthLogin` tinyint(1) NOT NULL,
    `UseStrictModeForRedirectURIs` tinyint(1) NOT NULL,
    `CountryRestricted` tinyint(1) NOT NULL,
    `RestrictedCountries` longtext CHARACTER SET utf8mb4 NULL,
    `DataDeletionRequestURL` longtext CHARACTER SET utf8mb4 NULL,
    `DeauthorizeCallbackURL` longtext CHARACTER SET utf8mb4 NULL,
    `DataProtectionOfficerEmail` longtext CHARACTER SET utf8mb4 NULL,
    `DataProtectionOfficerName` longtext CHARACTER SET utf8mb4 NULL,
    `DataProtectionOfficerAddress1` longtext CHARACTER SET utf8mb4 NULL,
    `DataProtectionOfficerAddress2` longtext CHARACTER SET utf8mb4 NULL,
    `DataProtectionOfficerAddress3` longtext CHARACTER SET utf8mb4 NULL,
    `DataProtectionOfficerCity` longtext CHARACTER SET utf8mb4 NULL,
    `DataProtectionOfficerState` longtext CHARACTER SET utf8mb4 NULL,
    `DataProtectionOfficerPostalCode` longtext CHARACTER SET utf8mb4 NULL,
    `DataProtectionOfficerCountry` longtext CHARACTER SET utf8mb4 NULL,
    `ContactEmail` longtext CHARACTER SET utf8mb4 NULL,
    `PrivacyPolicyURL` longtext CHARACTER SET utf8mb4 NULL,
    `TermsAndConditionsURL` longtext CHARACTER SET utf8mb4 NULL,
    `AllowedDomains` longtext CHARACTER SET utf8mb4 NULL,
    `ServerIPAllowlist` longtext CHARACTER SET utf8mb4 NULL,
    `UpdateSettingsIPAllowlist` longtext CHARACTER SET utf8mb4 NULL,
    `UpdateSettingsNotificationEmails` longtext CHARACTER SET utf8mb4 NULL,
    `AllowCrossDomainShareRedirects` longtext CHARACTER SET utf8mb4 NULL,
    `ValidOAuthRedirectURIs` longtext CHARACTER SET utf8mb4 NULL,
    `EnableGitRepoManagement` tinyint(1) NOT NULL,
    `MarkedForPublish` tinyint(1) NOT NULL,
    `PublishResultMessages` longtext CHARACTER SET utf8mb4 NULL,
    `InstallResultMessages` longtext CHARACTER SET utf8mb4 NULL,
    `StartResultMessages` longtext CHARACTER SET utf8mb4 NULL,
    `GitResultMessages` longtext CHARACTER SET utf8mb4 NULL,
    `GitRepoUrl` longtext CHARACTER SET utf8mb4 NULL,
    `GitBranch` longtext CHARACTER SET utf8mb4 NULL,
    `GitRepo` longtext CHARACTER SET utf8mb4 NULL,
    `GitUser` longtext CHARACTER SET utf8mb4 NULL,
    `IsGitPrivateRepo` tinyint(1) NOT NULL,
    `GitToken` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK_BusinessApplication` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessApplication_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessApplication_BusinessProfileRecord_BusinessProfileRec~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessIndustry` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `ParentBusinessIndustryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessIndustry` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessIndustry_BusinessIndustry_ParentBusinessIndustryID` FOREIGN KEY (`ParentBusinessIndustryID`) REFERENCES `BusinessIndustry` (`ID`),
    CONSTRAINT `FK_BusinessIndustry_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessPermission` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `IsSystemPermission` tinyint(1) NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Category` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessPermission` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessPermission_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessPermission_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessPosition` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessPosition` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessPosition_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessPosition_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessProcess` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ParentBusinessProcessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK_BusinessProcess` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessProcess_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessProcess_BusinessProcess_ParentBusinessProcessID` FOREIGN KEY (`ParentBusinessProcessID`) REFERENCES `BusinessProcess` (`ID`),
    CONSTRAINT `FK_BusinessProcess_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessProfileInvitation` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Email` longtext CHARACTER SET utf8mb4 NULL,
    `Redeemed` tinyint(1) NOT NULL,
    `RedeemedTimestamp` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK_BusinessProfileInvitation` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessProfileInvitation_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessProfileInvitation_BusinessProfileRecord_BusinessProf~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessSecurityRole` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `IsSystemSecurityRole` tinyint(1) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessSecurityRole` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessSecurityRole_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessSecurityRole_BusinessProfileRecord_BusinessProfileRe~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CognitiveAgent` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Avatar` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CognitiveAgent` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CognitiveAgent_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CognitiveAgent_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CurriculumSkill` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Type` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK_CurriculumSkill` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CurriculumSkill_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CurriculumSkill_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `DiscountList` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `DiscountListType` int NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_DiscountList` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_DiscountList_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_DiscountList_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_DiscountList_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `EmailGroup` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MyProperty` int NOT NULL,
    CONSTRAINT `PK_EmailGroup` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_EmailGroup_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_EmailGroup_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `EmployeeBenefit` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `EffectiveDate` datetime(6) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_EmployeeBenefit` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_EmployeeBenefit_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_EmployeeBenefit_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `EmployeeType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_EmployeeType` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_EmployeeType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_EmployeeType_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `FiscalAuthority` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
    `LogoURL` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_FiscalAuthority` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_FiscalAuthority_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_FiscalAuthority_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_FiscalAuthority_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ForeignExchangeSet` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `UpdateTimestamp` datetime(6) NOT NULL,
    `Year` int NOT NULL,
    `Month` int NOT NULL,
    `Day` int NOT NULL,
    `Values` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ForeignExchangeSet` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ForeignExchangeSet_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ForeignExchangeSet_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Integration` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `APIKeyAuthPosition` int NOT NULL,
    `IntegationAuthType` int NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `LastRenewal` datetime(6) NOT NULL,
    `Expiration` datetime(6) NOT NULL,
    `ExpiresIn` bigint NOT NULL,
    `Scopes` longtext CHARACTER SET utf8mb4 NULL,
    `TokenType` longtext CHARACTER SET utf8mb4 NULL,
    `Nonce` longtext CHARACTER SET utf8mb4 NULL,
    `Username` longtext CHARACTER SET utf8mb4 NULL,
    `Password` longtext CHARACTER SET utf8mb4 NULL,
    `AccessCode` longtext CHARACTER SET utf8mb4 NULL,
    `AuthorizationCode` longtext CHARACTER SET utf8mb4 NULL,
    `BaseURL` longtext CHARACTER SET utf8mb4 NULL,
    `RequestURL` longtext CHARACTER SET utf8mb4 NULL,
    `AccessToken` longtext CHARACTER SET utf8mb4 NULL,
    `RefreshToken` longtext CHARACTER SET utf8mb4 NULL,
    `Realm` longtext CHARACTER SET utf8mb4 NULL,
    `HeaderKey` longtext CHARACTER SET utf8mb4 NULL,
    `APIKey` longtext CHARACTER SET utf8mb4 NULL,
    `ApiSecret` longtext CHARACTER SET utf8mb4 NULL,
    `NonceCount` longtext CHARACTER SET utf8mb4 NULL,
    `ClientNonce` longtext CHARACTER SET utf8mb4 NULL,
    `QualityOfProtection` longtext CHARACTER SET utf8mb4 NULL,
    `Opaque` longtext CHARACTER SET utf8mb4 NULL,
    `DigestAuthAlgorithm` int NOT NULL,
    `ConsumerKey` longtext CHARACTER SET utf8mb4 NULL,
    `ConsumerSecret` longtext CHARACTER SET utf8mb4 NULL,
    `TokenSecret` longtext CHARACTER SET utf8mb4 NULL,
    `Version` longtext CHARACTER SET utf8mb4 NULL,
    `OAuth1SignatureMethod` int NOT NULL,
    `HawkAuthID` longtext CHARACTER SET utf8mb4 NULL,
    `HawkAuthKey` longtext CHARACTER SET utf8mb4 NULL,
    `User` longtext CHARACTER SET utf8mb4 NULL,
    `Ext` longtext CHARACTER SET utf8mb4 NULL,
    `App` longtext CHARACTER SET utf8mb4 NULL,
    `Dlg` longtext CHARACTER SET utf8mb4 NULL,
    `IncludePayloadHash` tinyint(1) NOT NULL,
    `HawkAuthAlgorithm` int NOT NULL,
    `Domain` longtext CHARACTER SET utf8mb4 NULL,
    `Workstation` longtext CHARACTER SET utf8mb4 NULL,
    `AccessKey` longtext CHARACTER SET utf8mb4 NULL,
    `SecretKey` longtext CHARACTER SET utf8mb4 NULL,
    `AWSRegion` longtext CHARACTER SET utf8mb4 NULL,
    `ServiceName` longtext CHARACTER SET utf8mb4 NULL,
    `SessionToken` longtext CHARACTER SET utf8mb4 NULL,
    `ClientToken` longtext CHARACTER SET utf8mb4 NULL,
    `ClientSecret` longtext CHARACTER SET utf8mb4 NULL,
    `HeadersToSign` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EventType` int NULL,
    `EntityType` int NULL,
    `RequestEncoding` int NULL,
    CONSTRAINT `PK_Integration` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Integration_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_Integration_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Integration_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemCategory` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `ImageURL` longtext CHARACTER SET utf8mb4 NULL,
    `IsFeatured` tinyint(1) NOT NULL,
    `EnableForCourses` tinyint(1) NOT NULL,
    `EnableForProducts` tinyint(1) NOT NULL,
    `EnableForLicenses` tinyint(1) NOT NULL,
    `EnableForServices` tinyint(1) NOT NULL,
    `EnableForSubscriptions` tinyint(1) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentItemCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK_ItemCategory` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemCategory_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ItemCategory_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ItemCategory_ItemCategory_ParentItemCategoryID` FOREIGN KEY (`ParentItemCategoryID`) REFERENCES `ItemCategory` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `JobTitle` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `GrossPay` double NOT NULL,
    `NetSalary` double NOT NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_JobTitle` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_JobTitle_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_JobTitle_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `JournalType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_JournalType` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_JournalType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_JournalType_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `LedgerType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `LedgerClass` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_LedgerType` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_LedgerType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_LedgerType_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `MaintenanceVisit` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_MaintenanceVisit` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_MaintenanceVisit_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_MaintenanceVisit_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `MarketingArea` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_MarketingArea` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_MarketingArea_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_MarketingArea_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `MarketingList` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Locked` tinyint(1) NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Purpose` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Source` longtext CHARACTER SET utf8mb4 NULL,
    `Cost` double NOT NULL,
    `ModifiedOn` datetime(6) NOT NULL,
    `LastUsedOn` datetime(6) NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MarketingListType` int NOT NULL,
    `MarketingListTarget` int NOT NULL,
    CONSTRAINT `PK_MarketingList` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_MarketingList_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_MarketingList_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_MarketingList_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Newsletter` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Newsletter` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Newsletter_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Newsletter_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PaymentMode` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PaymentMode` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PaymentMode_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_PaymentMode_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ProficiencyRatingModel` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `MinRatingValue` int NOT NULL,
    `MaxRatingValue` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ProficiencyRatingModel` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ProficiencyRatingModel_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ProficiencyRatingModel_BusinessProfileRecord_BusinessProfile~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ProjectJournal` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Submitted` tinyint(1) NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `JournalType` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ProjectJournal` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ProjectJournal_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ProjectJournal_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ProjectResource` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ProjectResource` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ProjectResource_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ProjectResource_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ProjectResourceRole` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `TargetUtilization` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ProjectResourceRole` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ProjectResourceRole_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ProjectResourceRole_BusinessProfileRecord_BusinessProfileRec~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SalesLiteratureType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SalesLiteratureType` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SalesLiteratureType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SalesLiteratureType_BusinessProfileRecord_BusinessProfileRec~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ServiceCaseType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ServiceCaseType` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ServiceCaseType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ServiceCaseType_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShareClass` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ForexRates` longtext CHARACTER SET utf8mb4 NULL,
    `Value` tinyint(1) NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShareClass` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShareClass_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ShareClass_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ShareClass_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShareIssuance` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `UnitPrice` int NOT NULL,
    `Quantity` int NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShareIssuance` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShareIssuance_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ShareIssuance_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ShareIssuance_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShareTransferReason` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShareTransferReason` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShareTransferReason_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ShareTransferReason_BusinessProfileRecord_BusinessProfileRec~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShippingCourier` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `LogoURL` longtext CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShippingCourier` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShippingCourier_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ShippingCourier_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ShippingCourier_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SocialBadge` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Image` longtext CHARACTER SET utf8mb4 NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SocialBadge` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SocialBadge_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SocialBadge_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SocialPostBucket` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SocialPostBucket` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SocialPostBucket_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SocialPostBucket_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SupplierGroup` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SupplierGroup` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SupplierGroup_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SupplierGroup_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SustainabilityProfile` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SustainabilityProfile` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SustainabilityProfile_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SustainabilityProfile_BusinessProfileRecord_BusinessProfileR~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Territory` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentTerritoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderId` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Territory` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Territory_AspNetUsers_AccountHolderId` FOREIGN KEY (`AccountHolderId`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_Territory_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Territory_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Territory_Territory_ParentTerritoryID` FOREIGN KEY (`ParentTerritoryID`) REFERENCES `Territory` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `TrainingProgram` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_TrainingProgram` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_TrainingProgram_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_TrainingProgram_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `TransactionCategory` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_TransactionCategory` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_TransactionCategory_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_TransactionCategory_BusinessProfileRecord_BusinessProfileRec~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `UnitGroup` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `SystemLocked` tinyint(1) NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_UnitGroup` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_UnitGroup_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_UnitGroup_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CostCentre` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Disabled` tinyint(1) NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `CostCentreType` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CostCentresGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentCostCentreID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CostCentre` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CostCentre_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CostCentre_CostCentre_ParentCostCentreID` FOREIGN KEY (`ParentCostCentreID`) REFERENCES `CostCentre` (`ID`),
    CONSTRAINT `FK_CostCentre_CostCentresGroup_CostCentresGroupID` FOREIGN KEY (`CostCentresGroupID`) REFERENCES `CostCentresGroup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `HolidayScheduleRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `HolidayID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `HolidayScheduleID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_HolidayScheduleRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_HolidayScheduleRecord_Holiday_HolidayID` FOREIGN KEY (`HolidayID`) REFERENCES `Holiday` (`ID`),
    CONSTRAINT `FK_HolidayScheduleRecord_HolidaySchedule_HolidayScheduleID` FOREIGN KEY (`HolidayScheduleID`) REFERENCES `HolidaySchedule` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemAttributeOption` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemAttributeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemAttributeOption` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemAttributeOption_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ItemAttributeOption_ItemAttribute_ItemAttributeID` FOREIGN KEY (`ItemAttributeID`) REFERENCES `ItemAttribute` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SEOKeyWordRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `SEOKeyWordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SEOKeyWordRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SEOKeyWordRecord_SEOKeyWord_SEOKeyWordID` FOREIGN KEY (`SEOKeyWordID`) REFERENCES `SEOKeyWord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShippingMethodClassRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ShippingMethodID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Cost` double NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingClassID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShippingMethodClassRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShippingMethodClassRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ShippingMethodClassRecord_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_ShippingMethodClassRecord_ShippingClass_ShippingClassID` FOREIGN KEY (`ShippingClassID`) REFERENCES `ShippingClass` (`ID`),
    CONSTRAINT `FK_ShippingMethodClassRecord_ShippingMethod_ShippingMethodID` FOREIGN KEY (`ShippingMethodID`) REFERENCES `ShippingMethod` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShippingRegionCountryRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ShippingRegionID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShippingRegionCountryRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShippingRegionCountryRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ShippingRegionCountryRecord_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_ShippingRegionCountryRecord_ShippingRegion_ShippingRegionID` FOREIGN KEY (`ShippingRegionID`) REFERENCES `ShippingRegion` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShippingMethodZoneRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Enabled` tinyint(1) NOT NULL,
    `ShippingMethodID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingZoneID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShippingMethodZoneRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShippingMethodZoneRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ShippingMethodZoneRecord_ShippingMethod_ShippingMethodID` FOREIGN KEY (`ShippingMethodID`) REFERENCES `ShippingMethod` (`ID`),
    CONSTRAINT `FK_ShippingMethodZoneRecord_ShippingZone_ShippingZoneID` FOREIGN KEY (`ShippingZoneID`) REFERENCES `ShippingZone` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShippingRegionZoneRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ShippingRegionID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingZoneID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShippingRegionZoneRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShippingRegionZoneRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ShippingRegionZoneRecord_ShippingRegion_ShippingRegionID` FOREIGN KEY (`ShippingRegionID`) REFERENCES `ShippingRegion` (`ID`),
    CONSTRAINT `FK_ShippingRegionZoneRecord_ShippingZone_ShippingZoneID` FOREIGN KEY (`ShippingZoneID`) REFERENCES `ShippingZone` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WebResource` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `WebsiteThemeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `WebsiteScript_Order` int NULL,
    `Script` longtext CHARACTER SET utf8mb4 NULL,
    `ScriptDisposition` int NULL,
    `Order` int NULL,
    `Style` longtext CHARACTER SET utf8mb4 NULL,
    `StyleSheetDisposition` int NULL,
    CONSTRAINT `PK_WebResource` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WebResource_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_WebResource_WebsiteTheme_WebsiteThemeID` FOREIGN KEY (`WebsiteThemeID`) REFERENCES `WebsiteTheme` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WorkOrder` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WorkOrderTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WorkOrder` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WorkOrder_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_WorkOrder_WorkOrderType_WorkOrderTypeID` FOREIGN KEY (`WorkOrderTypeID`) REFERENCES `WorkOrderType` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessApplicationQueryRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessApplicationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessApplicationQueryRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessApplicationQueryRecord_BusinessApplication_BusinessA~` FOREIGN KEY (`BusinessApplicationID`) REFERENCES `BusinessApplication` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessApplicationReplyURL` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ReplyURL` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessApplicationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessApplicationReplyURL` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessApplicationReplyURL_BusinessApplication_BusinessAppl~` FOREIGN KEY (`BusinessApplicationID`) REFERENCES `BusinessApplication` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessApplicationSecret` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Revoked` tinyint(1) NOT NULL,
    `PublicKey` longtext CHARACTER SET utf8mb4 NULL,
    `PrivateKey` longtext CHARACTER SET utf8mb4 NULL,
    `SigningPublicKey` longtext CHARACTER SET utf8mb4 NULL,
    `SigningPrivateKey` longtext CHARACTER SET utf8mb4 NULL,
    `AccessKeyPairID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `JwtSigningAccessKeyPairID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessApplicationSecretPeriod` int NOT NULL,
    `BusinessApplicationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessApplicationSecret` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessApplicationSecret_AccessKeyPair_AccessKeyPairID` FOREIGN KEY (`AccessKeyPairID`) REFERENCES `AccessKeyPair` (`IP`),
    CONSTRAINT `FK_BusinessApplicationSecret_AccessKeyPair_JwtSigningAccessKeyP~` FOREIGN KEY (`JwtSigningAccessKeyPairID`) REFERENCES `AccessKeyPair` (`IP`),
    CONSTRAINT `FK_BusinessApplicationSecret_BusinessApplication_BusinessApplic~` FOREIGN KEY (`BusinessApplicationID`) REFERENCES `BusinessApplication` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `OpenIddictEntityFrameworkCoreApplication` (
    `Id` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Logo` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessApplicationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ClientId` longtext CHARACTER SET utf8mb4 NULL,
    `ClientSecret` longtext CHARACTER SET utf8mb4 NULL,
    `ConcurrencyToken` longtext CHARACTER SET utf8mb4 NULL,
    `ConsentType` longtext CHARACTER SET utf8mb4 NULL,
    `DisplayName` longtext CHARACTER SET utf8mb4 NULL,
    `DisplayNames` longtext CHARACTER SET utf8mb4 NULL,
    `Permissions` longtext CHARACTER SET utf8mb4 NULL,
    `PostLogoutRedirectUris` longtext CHARACTER SET utf8mb4 NULL,
    `Properties` longtext CHARACTER SET utf8mb4 NULL,
    `RedirectUris` longtext CHARACTER SET utf8mb4 NULL,
    `Requirements` longtext CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_OpenIddictEntityFrameworkCoreApplication` PRIMARY KEY (`Id`),
    CONSTRAINT `FK_OpenIddictEntityFrameworkCoreApplication_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_OpenIddictEntityFrameworkCoreApplication_BusinessApplication~` FOREIGN KEY (`BusinessApplicationID`) REFERENCES `BusinessApplication` (`ID`),
    CONSTRAINT `FK_OpenIddictEntityFrameworkCoreApplication_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WebPortal` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Root` tinyint(1) NOT NULL,
    `Disabled` tinyint(1) NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessDomainID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebsiteThemeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessPortalApplicationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PublicKey` longtext CHARACTER SET utf8mb4 NULL,
    `PrivateKey` longtext CHARACTER SET utf8mb4 NULL,
    `Domain` longtext CHARACTER SET utf8mb4 NULL,
    `Settings` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WebPortal` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WebPortal_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_WebPortal_BusinessApplication_BusinessPortalApplicationID` FOREIGN KEY (`BusinessPortalApplicationID`) REFERENCES `BusinessApplication` (`ID`),
    CONSTRAINT `FK_WebPortal_BusinessDomain_BusinessDomainID` FOREIGN KEY (`BusinessDomainID`) REFERENCES `BusinessDomain` (`ID`),
    CONSTRAINT `FK_WebPortal_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_WebPortal_WebsiteTheme_WebsiteThemeID` FOREIGN KEY (`WebsiteThemeID`) REFERENCES `WebsiteTheme` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessIndustryRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessIndustryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessIndustryRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessIndustryRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessIndustryRecord_BusinessIndustry_BusinessIndustryID` FOREIGN KEY (`BusinessIndustryID`) REFERENCES `BusinessIndustry` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessApplicationRequestedPermission` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `IsOptional` tinyint(1) NOT NULL,
    `BusinessPermissionID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessApplicationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessApplicationRequestedPermission` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessApplicationRequestedPermission_BusinessApplication_B~` FOREIGN KEY (`BusinessApplicationID`) REFERENCES `BusinessApplication` (`ID`),
    CONSTRAINT `FK_BusinessApplicationRequestedPermission_BusinessPermission_Bu~` FOREIGN KEY (`BusinessPermissionID`) REFERENCES `BusinessPermission` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessProcessStage` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `StageOrder` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProcessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentBusinessProcessStageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `DealUnitFlowID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AppraisalWorkflowID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessProcessStage` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessProcessStage_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessProcessStage_BusinessProcess_AppraisalWorkflowID` FOREIGN KEY (`AppraisalWorkflowID`) REFERENCES `BusinessProcess` (`ID`),
    CONSTRAINT `FK_BusinessProcessStage_BusinessProcess_BusinessProcessID` FOREIGN KEY (`BusinessProcessID`) REFERENCES `BusinessProcess` (`ID`),
    CONSTRAINT `FK_BusinessProcessStage_BusinessProcess_DealUnitFlowID` FOREIGN KEY (`DealUnitFlowID`) REFERENCES `BusinessProcess` (`ID`),
    CONSTRAINT `FK_BusinessProcessStage_BusinessProcessStage_ParentBusinessProc~` FOREIGN KEY (`ParentBusinessProcessStageID`) REFERENCES `BusinessProcessStage` (`ID`),
    CONSTRAINT `FK_BusinessProcessStage_BusinessProfileRecord_BusinessProfileRe~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessPermissionGrant` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessPermissionID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `GrantorBusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BusinessApplicationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessApplicationGrantScope` int NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessSecurityRoleID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessPermissionGrant` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessPermissionGrant_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessPermissionGrant_BusinessApplication_BusinessApplicat~` FOREIGN KEY (`BusinessApplicationID`) REFERENCES `BusinessApplication` (`ID`),
    CONSTRAINT `FK_BusinessPermissionGrant_BusinessPermission_BusinessPermissio~` FOREIGN KEY (`BusinessPermissionID`) REFERENCES `BusinessPermission` (`ID`),
    CONSTRAINT `FK_BusinessPermissionGrant_BusinessProfileRecord_BusinessProfil~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_BusinessPermissionGrant_BusinessProfileRecord_GrantorBusines~` FOREIGN KEY (`GrantorBusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_BusinessPermissionGrant_BusinessSecurityRole_BusinessSecurit~` FOREIGN KEY (`BusinessSecurityRoleID`) REFERENCES `BusinessSecurityRole` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SecurityRoleGrant` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `GrantorBusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessSecurityRoleID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BusinessApplicationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SecurityRoleGrant` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SecurityRoleGrant_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SecurityRoleGrant_BusinessApplication_BusinessApplicationID` FOREIGN KEY (`BusinessApplicationID`) REFERENCES `BusinessApplication` (`ID`),
    CONSTRAINT `FK_SecurityRoleGrant_BusinessProfileRecord_BusinessProfileRecor~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_SecurityRoleGrant_BusinessProfileRecord_GrantorBusinessProfi~` FOREIGN KEY (`GrantorBusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_SecurityRoleGrant_BusinessSecurityRole_BusinessSecurityRoleID` FOREIGN KEY (`BusinessSecurityRoleID`) REFERENCES `BusinessSecurityRole` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Discount` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BeginQuantity` double NOT NULL,
    `EndQuantity` double NOT NULL,
    `Percent` double NOT NULL,
    `Value` double NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DiscountListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Discount` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Discount_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Discount_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Discount_DiscountList_DiscountListID` FOREIGN KEY (`DiscountListID`) REFERENCES `DiscountList` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `FiscalIdentificationType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `FiscalAuthorityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_FiscalIdentificationType` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_FiscalIdentificationType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_FiscalIdentificationType_BusinessProfileRecord_BusinessProfi~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_FiscalIdentificationType_FiscalAuthority_FiscalAuthorityID` FOREIGN KEY (`FiscalAuthorityID`) REFERENCES `FiscalAuthority` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `FiscalRegime` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `FiscalAuthorityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_FiscalRegime` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_FiscalRegime_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_FiscalRegime_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_FiscalRegime_FiscalAuthority_FiscalAuthorityID` FOREIGN KEY (`FiscalAuthorityID`) REFERENCES `FiscalAuthority` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `FiscalResponsibility` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `FiscalAuthorityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_FiscalResponsibility` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_FiscalResponsibility_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_FiscalResponsibility_BusinessProfileRecord_BusinessProfileRe~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_FiscalResponsibility_FiscalAuthority_FiscalAuthorityID` FOREIGN KEY (`FiscalAuthorityID`) REFERENCES `FiscalAuthority` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `FiscalYear` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Disabled` tinyint(1) NOT NULL,
    `Default` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Start` datetime(6) NOT NULL,
    `End` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalAuthorityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_FiscalYear` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_FiscalYear_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_FiscalYear_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_FiscalYear_FiscalAuthority_FiscalAuthorityID` FOREIGN KEY (`FiscalAuthorityID`) REFERENCES `FiscalAuthority` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `InvoiceEnumerationRange` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Prefix` longtext CHARACTER SET utf8mb4 NULL,
    `Suffix` longtext CHARACTER SET utf8mb4 NULL,
    `Identifier` longtext CHARACTER SET utf8mb4 NULL,
    `CurrentNumeration` bigint NOT NULL,
    `NumerationFrom` bigint NOT NULL,
    `NumerationTo` bigint NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ValidFrom` datetime(6) NOT NULL,
    `ValidTo` datetime(6) NOT NULL,
    `FiscalAuthorityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DocumentType` int NOT NULL,
    CONSTRAINT `PK_InvoiceEnumerationRange` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_InvoiceEnumerationRange_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_InvoiceEnumerationRange_BusinessProfileRecord_BusinessProfil~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_InvoiceEnumerationRange_FiscalAuthority_FiscalAuthorityID` FOREIGN KEY (`FiscalAuthorityID`) REFERENCES `FiscalAuthority` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WebhookRequestCondition` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `WebhookRequestID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PropertyName` longtext CHARACTER SET utf8mb4 NULL,
    `ExpectedValue` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WebhookRequestCondition` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WebhookRequestCondition_Integration_WebhookRequestID` FOREIGN KEY (`WebhookRequestID`) REFERENCES `Integration` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WebhookRequestDataEntry` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `WebhookRequestID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Key` longtext CHARACTER SET utf8mb4 NULL,
    `PropertyName` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WebhookRequestDataEntry` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WebhookRequestDataEntry_Integration_WebhookRequestID` FOREIGN KEY (`WebhookRequestID`) REFERENCES `Integration` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WebhookRequestHeader` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `WebhookRequestID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `HeaderKey` longtext CHARACTER SET utf8mb4 NULL,
    `HeaderValue` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WebhookRequestHeader` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WebhookRequestHeader_Integration_WebhookRequestID` FOREIGN KEY (`WebhookRequestID`) REFERENCES `Integration` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `PluralTitle` longtext CHARACTER SET utf8mb4 NULL,
    `SingularTitle` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `ImageURL` longtext CHARACTER SET utf8mb4 NULL,
    `GoogleCategoryTaxonomy` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemGoogleCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemType` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ItemType_ItemCategory_ItemCategoryID` FOREIGN KEY (`ItemCategoryID`) REFERENCES `ItemCategory` (`ID`),
    CONSTRAINT `FK_ItemType_ItemGoogleCategory_ItemGoogleCategoryID` FOREIGN KEY (`ItemGoogleCategoryID`) REFERENCES `ItemGoogleCategory` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Ledger` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `DateTime` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LedgerTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Ledger` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Ledger_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Ledger_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Ledger_LedgerType_LedgerTypeID` FOREIGN KEY (`LedgerTypeID`) REFERENCES `LedgerType` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `MarketingCampaign` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Offer` longtext CHARACTER SET utf8mb4 NULL,
    `Active` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ProposedStart` datetime(6) NOT NULL,
    `ProposedEnd` datetime(6) NOT NULL,
    `ActualStart` datetime(6) NOT NULL,
    `ActualEnd` datetime(6) NOT NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `AllocatedBudget` double NOT NULL,
    `ActivityCost` double NOT NULL,
    `MiscCost` double NOT NULL,
    `ExpectedResponsePercent` double NOT NULL,
    `MarketingAreaID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MarketingListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_MarketingCampaign` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_MarketingCampaign_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_MarketingCampaign_BusinessProfileRecord_BusinessProfileRecor~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_MarketingCampaign_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_MarketingCampaign_MarketingArea_MarketingAreaID` FOREIGN KEY (`MarketingAreaID`) REFERENCES `MarketingArea` (`ID`),
    CONSTRAINT `FK_MarketingCampaign_MarketingList_MarketingListID` FOREIGN KEY (`MarketingListID`) REFERENCES `MarketingList` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PaymentTerm` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `IsTemplate` tinyint(1) NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Percentage` double NOT NULL,
    `CreditDays` double NOT NULL,
    `CreditWeeks` double NOT NULL,
    `CreditMonths` double NOT NULL,
    `CreditYears` double NOT NULL,
    `PaymentModeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PaymentTerm` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PaymentTerm_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_PaymentTerm_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_PaymentTerm_PaymentMode_PaymentModeID` FOREIGN KEY (`PaymentModeID`) REFERENCES `PaymentMode` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ProficiencyRatingValue` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Value` longtext CHARACTER SET utf8mb4 NULL,
    `ProficiencyRatingModelID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ProficiencyRatingValue` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ProficiencyRatingValue_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ProficiencyRatingValue_BusinessProfileRecord_BusinessProfile~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ProficiencyRatingValue_ProficiencyRatingModel_ProficiencyRat~` FOREIGN KEY (`ProficiencyRatingModelID`) REFERENCES `ProficiencyRatingModel` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SalesLiterature` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Content` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ModifiedDate` datetime(6) NOT NULL,
    `ExpirationDate` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SalesLiteratureTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SalesLiterature` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SalesLiterature_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SalesLiterature_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_SalesLiterature_SalesLiteratureType_SalesLiteratureTypeID` FOREIGN KEY (`SalesLiteratureTypeID`) REFERENCES `SalesLiteratureType` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Policy` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `IsFree` tinyint(1) NOT NULL,
    `Reduce` tinyint(1) NOT NULL,
    `IsEnabled` tinyint(1) NOT NULL,
    `IsDefault` tinyint(1) NOT NULL,
    `AllowInternational` tinyint(1) NOT NULL,
    `Hours` int NOT NULL,
    `Days` int NOT NULL,
    `Weeks` int NOT NULL,
    `Months` int NOT NULL,
    `Years` int NOT NULL,
    `Value` double NOT NULL,
    `Percentage` double NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryStateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CustomState` longtext CHARACTER SET utf8mb4 NULL,
    `CustomCity` longtext CHARACTER SET utf8mb4 NULL,
    `CityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Zero` tinyint(1) NULL,
    `Reduced` tinyint(1) NULL,
    `Withholding` tinyint(1) NULL,
    `FiscalAuthorityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IsExpressShipmentPolicy` tinyint(1) NULL,
    `ShippingCourierID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IsExtendedWarranty` tinyint(1) NULL,
    `ReturnPolicy_ShippingCourierID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Policy` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Policy_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Policy_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Policy_City_CityID` FOREIGN KEY (`CityID`) REFERENCES `City` (`ID`),
    CONSTRAINT `FK_Policy_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_Policy_CountryState_CountryStateID` FOREIGN KEY (`CountryStateID`) REFERENCES `CountryState` (`ID`),
    CONSTRAINT `FK_Policy_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_Policy_FiscalAuthority_FiscalAuthorityID` FOREIGN KEY (`FiscalAuthorityID`) REFERENCES `FiscalAuthority` (`ID`),
    CONSTRAINT `FK_Policy_ShippingCourier_ReturnPolicy_ShippingCourierID` FOREIGN KEY (`ReturnPolicy_ShippingCourierID`) REFERENCES `ShippingCourier` (`ID`),
    CONSTRAINT `FK_Policy_ShippingCourier_ShippingCourierID` FOREIGN KEY (`ShippingCourierID`) REFERENCES `ShippingCourier` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SocialMediaPost` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Content` longtext CHARACTER SET utf8mb4 NULL,
    `FeaturedImageUrl` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialPostBucketID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SocialMediaPost` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SocialMediaPost_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SocialMediaPost_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_SocialMediaPost_SocialPostBucket_SocialPostBucketID` FOREIGN KEY (`SocialPostBucketID`) REFERENCES `SocialPostBucket` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `TrainingProgramResultSet` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TrainingProgramID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_TrainingProgramResultSet` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_TrainingProgramResultSet_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_TrainingProgramResultSet_BusinessProfileRecord_BusinessProfi~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_TrainingProgramResultSet_TrainingProgram_TrainingProgramID` FOREIGN KEY (`TrainingProgramID`) REFERENCES `TrainingProgram` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Unit` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `UnitGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BaseUnitAmount` double NOT NULL,
    `BaseUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Unit` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Unit_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Unit_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Unit_Unit_BaseUnitID` FOREIGN KEY (`BaseUnitID`) REFERENCES `Unit` (`ID`),
    CONSTRAINT `FK_Unit_UnitGroup_UnitGroupID` FOREIGN KEY (`UnitGroupID`) REFERENCES `UnitGroup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ExpenseClaim` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ExpenseTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `CostCentreID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ExpenseClaim` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ExpenseClaim_CostCentre_CostCentreID` FOREIGN KEY (`CostCentreID`) REFERENCES `CostCentre` (`ID`),
    CONSTRAINT `FK_ExpenseClaim_ExpenseType_ExpenseTypeID` FOREIGN KEY (`ExpenseTypeID`) REFERENCES `ExpenseType` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `OpenIddictEntityFrameworkCoreAuthorization` (
    `Id` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ApplicationId` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ConcurrencyToken` longtext CHARACTER SET utf8mb4 NULL,
    `CreationDate` datetime(6) NULL,
    `Properties` longtext CHARACTER SET utf8mb4 NULL,
    `Scopes` longtext CHARACTER SET utf8mb4 NULL,
    `Status` longtext CHARACTER SET utf8mb4 NULL,
    `Subject` longtext CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_OpenIddictEntityFrameworkCoreAuthorization` PRIMARY KEY (`Id`),
    CONSTRAINT `FK_OpenIddictEntityFrameworkCoreAuthorization_OpenIddictEntityF~` FOREIGN KEY (`ApplicationId`) REFERENCES `OpenIddictEntityFrameworkCoreApplication` (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `MenuContext` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Enable` tinyint(1) NOT NULL,
    `StudioMenu` tinyint(1) NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Category` longtext CHARACTER SET utf8mb4 NULL,
    `Component` longtext CHARACTER SET utf8mb4 NULL,
    `CustomCss` longtext CHARACTER SET utf8mb4 NULL,
    `CustomJs` longtext CHARACTER SET utf8mb4 NULL,
    `CustomHtml` longtext CHARACTER SET utf8mb4 NULL,
    `LoggedInOnly` longtext CHARACTER SET utf8mb4 NULL,
    `BackgroundImage` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebPortalID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Type` int NOT NULL,
    CONSTRAINT `PK_MenuContext` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_MenuContext_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_MenuContext_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_MenuContext_WebPortal_WebPortalID` FOREIGN KEY (`WebPortalID`) REFERENCES `WebPortal` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Taxonomy` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Slug` longtext CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `SeoTitle` longtext CHARACTER SET utf8mb4 NULL,
    `MetaDescription` longtext CHARACTER SET utf8mb4 NULL,
    `CornerstoneContent` tinyint(1) NOT NULL,
    `AllowSerachEngines` tinyint(1) NOT NULL,
    `SeoKeyPhrases` longtext CHARACTER SET utf8mb4 NULL,
    `CanonicalUrl` longtext CHARACTER SET utf8mb4 NULL,
    `ImageURL` longtext CHARACTER SET utf8mb4 NULL,
    `Image` longtext CHARACTER SET utf8mb4 NULL,
    `WebPortalID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Taxonomy` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Taxonomy_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Taxonomy_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Taxonomy_WebPortal_WebPortalID` FOREIGN KEY (`WebPortalID`) REFERENCES `WebPortal` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WebPortalBusinessDomainRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `WebPortalID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessDomainID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WebPortalBusinessDomainRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WebPortalBusinessDomainRecord_BusinessDomain_BusinessDomainID` FOREIGN KEY (`BusinessDomainID`) REFERENCES `BusinessDomain` (`ID`),
    CONSTRAINT `FK_WebPortalBusinessDomainRecord_WebPortal_WebPortalID` FOREIGN KEY (`WebPortalID`) REFERENCES `WebPortal` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Workflow` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebPortalID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Workflow` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Workflow_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Workflow_WebPortal_WebPortalID` FOREIGN KEY (`WebPortalID`) REFERENCES `WebPortal` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessProcessStageRelation` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ChildBusinessProcessStageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentBusinessProcessStageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessProcessStageRelation` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessProcessStageRelation_BusinessProcessStage_ChildBusin~` FOREIGN KEY (`ChildBusinessProcessStageID`) REFERENCES `BusinessProcessStage` (`ID`),
    CONSTRAINT `FK_BusinessProcessStageRelation_BusinessProcessStage_ParentBusi~` FOREIGN KEY (`ParentBusinessProcessStageID`) REFERENCES `BusinessProcessStage` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `FiscalPeriod` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `FromDate` datetime(6) NOT NULL,
    `ToDate` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalYearID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_FiscalPeriod` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_FiscalPeriod_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_FiscalPeriod_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_FiscalPeriod_FiscalYear_FiscalYearID` FOREIGN KEY (`FiscalYearID`) REFERENCES `FiscalYear` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `FiscalYearDistribution` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalYearID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `January` double NOT NULL,
    `February` double NOT NULL,
    `March` double NOT NULL,
    `April` double NOT NULL,
    `May` double NOT NULL,
    `June` double NOT NULL,
    `July` double NOT NULL,
    `August` double NOT NULL,
    `September` double NOT NULL,
    `October` double NOT NULL,
    `November` double NOT NULL,
    `December` double NOT NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BudgetID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_FiscalYearDistribution` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_FiscalYearDistribution_Budget_BudgetID` FOREIGN KEY (`BudgetID`) REFERENCES `Budget` (`ID`),
    CONSTRAINT `FK_FiscalYearDistribution_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_FiscalYearDistribution_BusinessProfileRecord_BusinessProfile~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_FiscalYearDistribution_FiscalYear_FiscalYearID` FOREIGN KEY (`FiscalYearID`) REFERENCES `FiscalYear` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `TaxClass` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Type` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalAuthorityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalYearID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_TaxClass` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_TaxClass_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_TaxClass_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_TaxClass_FiscalAuthority_FiscalAuthorityID` FOREIGN KEY (`FiscalAuthorityID`) REFERENCES `FiscalAuthority` (`ID`),
    CONSTRAINT `FK_TaxClass_FiscalYear_FiscalYearID` FOREIGN KEY (`FiscalYearID`) REFERENCES `FiscalYear` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Journal` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `DateTime` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentJournalID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `JournalTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LedgerID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Journal` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Journal_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Journal_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Journal_Journal_ParentJournalID` FOREIGN KEY (`ParentJournalID`) REFERENCES `Journal` (`ID`),
    CONSTRAINT `FK_Journal_JournalType_JournalTypeID` FOREIGN KEY (`JournalTypeID`) REFERENCES `JournalType` (`ID`),
    CONSTRAINT `FK_Journal_Ledger_LedgerID` FOREIGN KEY (`LedgerID`) REFERENCES `Ledger` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ProjectResourceSkillRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ProjectResourceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectResourceSkillID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProficiencyRatingValueID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectResourceRoleID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ProjectResourceSkillRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ProjectResourceSkillRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ProjectResourceSkillRecord_BusinessProfileRecord_BusinessPro~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ProjectResourceSkillRecord_CurriculumSkill_ProjectResourceSk~` FOREIGN KEY (`ProjectResourceSkillID`) REFERENCES `CurriculumSkill` (`ID`),
    CONSTRAINT `FK_ProjectResourceSkillRecord_ProficiencyRatingValue_Proficienc~` FOREIGN KEY (`ProficiencyRatingValueID`) REFERENCES `ProficiencyRatingValue` (`ID`),
    CONSTRAINT `FK_ProjectResourceSkillRecord_ProjectResource_ProjectResourceID` FOREIGN KEY (`ProjectResourceID`) REFERENCES `ProjectResource` (`ID`),
    CONSTRAINT `FK_ProjectResourceSkillRecord_ProjectResourceRole_ProjectResour~` FOREIGN KEY (`ProjectResourceRoleID`) REFERENCES `ProjectResourceRole` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourrierItemShippingPolicyRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ShippingCourrierID` longtext CHARACTER SET utf8mb4 NULL,
    `ShippingCourierID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemShippingPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourrierItemShippingPolicyRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourrierItemShippingPolicyRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourrierItemShippingPolicyRecord_Policy_ItemShippingPolicyID` FOREIGN KEY (`ItemShippingPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_CourrierItemShippingPolicyRecord_ShippingCourier_ShippingCou~` FOREIGN KEY (`ShippingCourierID`) REFERENCES `ShippingCourier` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PriceList` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Context` int NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `StartDate` datetime(6) NOT NULL,
    `EndDate` datetime(6) NOT NULL,
    `PartnerVisible` tinyint(1) NOT NULL,
    `UnitOfMeasureDependant` tinyint(1) NOT NULL,
    `UnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `UnitGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK_PriceList` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PriceList_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_PriceList_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_PriceList_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_PriceList_Unit_UnitID` FOREIGN KEY (`UnitID`) REFERENCES `Unit` (`ID`),
    CONSTRAINT `FK_PriceList_UnitGroup_UnitGroupID` FOREIGN KEY (`UnitGroupID`) REFERENCES `UnitGroup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `OpenIddictEntityFrameworkCoreToken` (
    `Id` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ApplicationId` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AuthorizationId` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ConcurrencyToken` longtext CHARACTER SET utf8mb4 NULL,
    `CreationDate` datetime(6) NULL,
    `ExpirationDate` datetime(6) NULL,
    `Payload` longtext CHARACTER SET utf8mb4 NULL,
    `Properties` longtext CHARACTER SET utf8mb4 NULL,
    `RedemptionDate` datetime(6) NULL,
    `ReferenceId` longtext CHARACTER SET utf8mb4 NULL,
    `Status` longtext CHARACTER SET utf8mb4 NULL,
    `Subject` longtext CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_OpenIddictEntityFrameworkCoreToken` PRIMARY KEY (`Id`),
    CONSTRAINT `FK_OpenIddictEntityFrameworkCoreToken_OpenIddictEntityFramewor~1` FOREIGN KEY (`AuthorizationId`) REFERENCES `OpenIddictEntityFrameworkCoreAuthorization` (`Id`),
    CONSTRAINT `FK_OpenIddictEntityFrameworkCoreToken_OpenIddictEntityFramework~` FOREIGN KEY (`ApplicationId`) REFERENCES `OpenIddictEntityFrameworkCoreApplication` (`Id`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `MenuContextItem` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `UID` int NOT NULL,
    `Order` int NOT NULL,
    `Column` int NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Text` longtext CHARACTER SET utf8mb4 NULL,
    `Url` longtext CHARACTER SET utf8mb4 NULL,
    `Icon` longtext CHARACTER SET utf8mb4 NULL,
    `Image` longtext CHARACTER SET utf8mb4 NULL,
    `Target` longtext CHARACTER SET utf8mb4 NULL,
    `Category` longtext CHARACTER SET utf8mb4 NULL,
    `Component` longtext CHARACTER SET utf8mb4 NULL,
    `Background` longtext CHARACTER SET utf8mb4 NULL,
    `HTMLContent` longtext CHARACTER SET utf8mb4 NULL,
    `Tooltip` longtext CHARACTER SET utf8mb4 NULL,
    `IsColumn` tinyint(1) NOT NULL,
    `IsSeparator` tinyint(1) NOT NULL,
    `LoggedInOnly` tinyint(1) NOT NULL,
    `FullHeightSubmenu` tinyint(1) NOT NULL,
    `ParentMenuContextItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MenuContextID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MenuContextItemType` int NOT NULL,
    `MenuItemTabTarget` int NOT NULL,
    CONSTRAINT `PK_MenuContextItem` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_MenuContextItem_MenuContext_MenuContextID` FOREIGN KEY (`MenuContextID`) REFERENCES `MenuContext` (`ID`),
    CONSTRAINT `FK_MenuContextItem_MenuContextItem_ParentMenuContextItemID` FOREIGN KEY (`ParentMenuContextItemID`) REFERENCES `MenuContextItem` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WorkflowStage` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `ParentWorkflowStageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WorkflowID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WorkflowStage` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WorkflowStage_Workflow_WorkflowID` FOREIGN KEY (`WorkflowID`) REFERENCES `Workflow` (`ID`),
    CONSTRAINT `FK_WorkflowStage_WorkflowStage_ParentWorkflowStageID` FOREIGN KEY (`ParentWorkflowStageID`) REFERENCES `WorkflowStage` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `TaxRate` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Rate` double NOT NULL,
    `Value` double NOT NULL,
    `UM` longtext CHARACTER SET utf8mb4 NULL,
    `UnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `UnitGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Priority` int NOT NULL,
    `Compound` tinyint(1) NOT NULL,
    `Shipping` tinyint(1) NOT NULL,
    `Withholding` tinyint(1) NOT NULL,
    `SingleTransactionThreshold` double NOT NULL,
    `CumulativeTransactionThreshold` double NOT NULL,
    `FiscalAuthorityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalYearID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TaxClassID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TaxPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_TaxRate` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_TaxRate_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_TaxRate_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_TaxRate_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_TaxRate_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_TaxRate_FiscalAuthority_FiscalAuthorityID` FOREIGN KEY (`FiscalAuthorityID`) REFERENCES `FiscalAuthority` (`ID`),
    CONSTRAINT `FK_TaxRate_FiscalYear_FiscalYearID` FOREIGN KEY (`FiscalYearID`) REFERENCES `FiscalYear` (`ID`),
    CONSTRAINT `FK_TaxRate_Policy_TaxPolicyID` FOREIGN KEY (`TaxPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_TaxRate_TaxClass_TaxClassID` FOREIGN KEY (`TaxClassID`) REFERENCES `TaxClass` (`ID`),
    CONSTRAINT `FK_TaxRate_Unit_UnitID` FOREIGN KEY (`UnitID`) REFERENCES `Unit` (`ID`),
    CONSTRAINT `FK_TaxRate_UnitGroup_UnitGroupID` FOREIGN KEY (`UnitGroupID`) REFERENCES `UnitGroup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `JournalEntry` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Group` tinyint(1) NOT NULL,
    `Opening` tinyint(1) NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `EntryType` int NOT NULL,
    `TransactionType` int NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Date` datetime(6) NOT NULL,
    `ForexRatesSnapshot` longtext CHARACTER SET utf8mb4 NULL,
    `ForexRate` double NOT NULL,
    `Credit` double NOT NULL,
    `Debit` double NOT NULL,
    `DebitAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CreditAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `JournalID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FinancialBookID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentJournalEntryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_JournalEntry` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_JournalEntry_Account_CreditAccountID` FOREIGN KEY (`CreditAccountID`) REFERENCES `Account` (`ID`),
    CONSTRAINT `FK_JournalEntry_Account_DebitAccountID` FOREIGN KEY (`DebitAccountID`) REFERENCES `Account` (`ID`),
    CONSTRAINT `FK_JournalEntry_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_JournalEntry_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_JournalEntry_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_JournalEntry_FinancialBook_FinancialBookID` FOREIGN KEY (`FinancialBookID`) REFERENCES `FinancialBook` (`ID`),
    CONSTRAINT `FK_JournalEntry_Journal_JournalID` FOREIGN KEY (`JournalID`) REFERENCES `Journal` (`ID`),
    CONSTRAINT `FK_JournalEntry_JournalEntry_ParentJournalEntryID` FOREIGN KEY (`ParentJournalEntryID`) REFERENCES `JournalEntry` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PriceListTerritory` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `TerritoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PriceListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PriceListTerritory` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PriceListTerritory_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_PriceListTerritory_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_PriceListTerritory_PriceList_PriceListID` FOREIGN KEY (`PriceListID`) REFERENCES `PriceList` (`ID`),
    CONSTRAINT `FK_PriceListTerritory_Territory_TerritoryID` FOREIGN KEY (`TerritoryID`) REFERENCES `Territory` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `RolePriceMarkup` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Percent` double NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PriceListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_RolePriceMarkup` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_RolePriceMarkup_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_RolePriceMarkup_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_RolePriceMarkup_PriceList_PriceListID` FOREIGN KEY (`PriceListID`) REFERENCES `PriceList` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WorkflowExecution` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `WorkflowID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WorkflowStageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WorkflowExecution` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WorkflowExecution_Workflow_WorkflowID` FOREIGN KEY (`WorkflowID`) REFERENCES `Workflow` (`ID`),
    CONSTRAINT `FK_WorkflowExecution_WorkflowStage_WorkflowStageID` FOREIGN KEY (`WorkflowStageID`) REFERENCES `WorkflowStage` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `TaxRateClassRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `TaxClassID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TaxRateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Rate` double NOT NULL,
    `Priority` int NOT NULL,
    `Compound` tinyint(1) NOT NULL,
    `Shipping` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_TaxRateClassRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_TaxRateClassRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_TaxRateClassRecord_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_TaxRateClassRecord_TaxClass_TaxClassID` FOREIGN KEY (`TaxClassID`) REFERENCES `TaxClass` (`ID`),
    CONSTRAINT `FK_TaxRateClassRecord_TaxRate_TaxRateID` FOREIGN KEY (`TaxRateID`) REFERENCES `TaxRate` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WorkflowState` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Output` longtext CHARACTER SET utf8mb4 NULL,
    `OutputClass` longtext CHARACTER SET utf8mb4 NULL,
    `OutputType` int NOT NULL,
    `WorkflowID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WorkflowStageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WorkflowExecutionID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WorkflowState` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WorkflowState_Workflow_WorkflowID` FOREIGN KEY (`WorkflowID`) REFERENCES `Workflow` (`ID`),
    CONSTRAINT `FK_WorkflowState_WorkflowExecution_WorkflowExecutionID` FOREIGN KEY (`WorkflowExecutionID`) REFERENCES `WorkflowExecution` (`ID`),
    CONSTRAINT `FK_WorkflowState_WorkflowStage_WorkflowStageID` FOREIGN KEY (`WorkflowStageID`) REFERENCES `WorkflowStage` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessDepartment` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Disabled` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentDepartmentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessDepartment` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessDepartment_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessDepartment_BusinessDepartment_ParentDepartmentID` FOREIGN KEY (`ParentDepartmentID`) REFERENCES `BusinessDepartment` (`ID`),
    CONSTRAINT `FK_BusinessDepartment_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessSecurityLog` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Message` longtext CHARACTER SET utf8mb4 NULL,
    `Language` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SigningProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SigningCertificateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessSecurityLog` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessSecurityLog_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessSecurityLog_BusinessProfileRecord_BusinessProfileRec~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessTeam` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `AvatarURL` longtext CHARACTER SET utf8mb4 NULL,
    `IsPublic` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessTeam` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessTeam_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessTeam_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ServiceQueue` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessTeamID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ServiceQueue` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ServiceQueue_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ServiceQueue_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ServiceQueue_BusinessTeam_BusinessTeamID` FOREIGN KEY (`BusinessTeamID`) REFERENCES `BusinessTeam` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessTeamRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessTeamID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmployeeProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessTeamRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessTeamRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessTeamRecord_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_BusinessTeamRecord_BusinessTeam_BusinessTeamID` FOREIGN KEY (`BusinessTeamID`) REFERENCES `BusinessTeam` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessUnit` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Disabled` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentBusinessUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessUnit` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessUnit_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessUnit_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_BusinessUnit_BusinessUnit_ParentBusinessUnitID` FOREIGN KEY (`ParentBusinessUnitID`) REFERENCES `BusinessUnit` (`ID`),
    CONSTRAINT `FK_BusinessUnit_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `BusinessUnitRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_BusinessUnitRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_BusinessUnitRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_BusinessUnitRecord_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_BusinessUnitRecord_BusinessUnit_BusinessUnitID` FOREIGN KEY (`BusinessUnitID`) REFERENCES `BusinessUnit` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Cart` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryStateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Freight` double NOT NULL,
    `Taxes` double NOT NULL,
    `Discounts` double NOT NULL,
    `Surcharges` double NOT NULL,
    `SubTotal` double NOT NULL,
    `Total` double NOT NULL,
    `IP` longtext CHARACTER SET utf8mb4 NULL,
    `ForSpiders` tinyint(1) NOT NULL,
    `IPLookupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `GuestCart_BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Cart` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Cart_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_Cart_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Cart_Business_GuestCart_BusinessID` FOREIGN KEY (`GuestCart_BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Cart_City_CityID` FOREIGN KEY (`CityID`) REFERENCES `City` (`ID`),
    CONSTRAINT `FK_Cart_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_Cart_CountryState_CountryStateID` FOREIGN KEY (`CountryStateID`) REFERENCES `CountryState` (`ID`),
    CONSTRAINT `FK_Cart_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_Cart_IPLookup_IPLookupID` FOREIGN KEY (`IPLookupID`) REFERENCES `IPLookup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CartRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CostCalculationMethod` int NOT NULL,
    `CartID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Quantity` double NOT NULL,
    `ForexRatesSnapshot` longtext CHARACTER SET utf8mb4 NULL,
    `ForexRate` double NOT NULL,
    `TotalDetailAmountInUSD` double NOT NULL,
    `TotalDiscountsInUSD` double NOT NULL,
    `TotalProfitInUSD` double NOT NULL,
    `TotalTaxesInUSD` double NOT NULL,
    `TotalWithholdingTaxesInUSD` double NOT NULL,
    `TotalShippingCostInUSD` double NOT NULL,
    `TotalShippingTaxesInUSD` double NOT NULL,
    `TotalWarrantyCostInUSD` double NOT NULL,
    `TotalReturnCostInUSD` double NOT NULL,
    `TotalRefundCostInUSD` double NOT NULL,
    `TotalSurchargesInUSD` double NOT NULL,
    `TotalAmountInUSD` double NOT NULL,
    `CustomDetailAmount` double NOT NULL,
    `CustomDiscountsAmount` double NOT NULL,
    `CustomSurchargesAmount` double NOT NULL,
    `CustomProfitAmount` double NOT NULL,
    `CustomShippingCostAmount` double NOT NULL,
    `CustomShippingTaxAmount` double NOT NULL,
    `CustomTaxAmount` double NOT NULL,
    `CustomWithholdingTaxAmount` double NOT NULL,
    `CustomTotalAmount` double NOT NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemCartRecord_ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemShippingPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReturnPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `RefundPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WarrantyPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingAddressID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `RecentlyViewedItemRecord_ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CartRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CartRecord_Cart_CartID` FOREIGN KEY (`CartID`) REFERENCES `Cart` (`ID`),
    CONSTRAINT `FK_CartRecord_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_CartRecord_Policy_ItemShippingPolicyID` FOREIGN KEY (`ItemShippingPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_CartRecord_Policy_RefundPolicyID` FOREIGN KEY (`RefundPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_CartRecord_Policy_ReturnPolicyID` FOREIGN KEY (`ReturnPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_CartRecord_Policy_WarrantyPolicyID` FOREIGN KEY (`WarrantyPolicyID`) REFERENCES `Policy` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CognitiveAgentConversation` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Claimed` tinyint(1) NOT NULL,
    `Current` tinyint(1) NOT NULL,
    `AccessKey` longtext CHARACTER SET utf8mb4 NULL,
    `ClaimCode` longtext CHARACTER SET utf8mb4 NULL,
    `ChannelID` longtext CHARACTER SET utf8mb4 NULL,
    `ActivityID` longtext CHARACTER SET utf8mb4 NULL,
    `ActivityFrom` longtext CHARACTER SET utf8mb4 NULL,
    `ConversationID` longtext CHARACTER SET utf8mb4 NULL,
    `AccessCode` longtext CHARACTER SET utf8mb4 NULL,
    `LastActivity` datetime(6) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `State` longtext CHARACTER SET utf8mb4 NULL,
    `History` longtext CHARACTER SET utf8mb4 NULL,
    `Data` longtext CHARACTER SET utf8mb4 NULL,
    `DataLabel` longtext CHARACTER SET utf8mb4 NULL,
    `Data1` longtext CHARACTER SET utf8mb4 NULL,
    `Data1Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data2` longtext CHARACTER SET utf8mb4 NULL,
    `Data2Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data3` longtext CHARACTER SET utf8mb4 NULL,
    `Data3Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data4` longtext CHARACTER SET utf8mb4 NULL,
    `Data4Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data5` longtext CHARACTER SET utf8mb4 NULL,
    `Data5Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data6` longtext CHARACTER SET utf8mb4 NULL,
    `Data6Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data7` longtext CHARACTER SET utf8mb4 NULL,
    `Data7Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data8` longtext CHARACTER SET utf8mb4 NULL,
    `Data8Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data9` longtext CHARACTER SET utf8mb4 NULL,
    `Data9Label` longtext CHARACTER SET utf8mb4 NULL,
    `CognitiveAgentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IndividualID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CognitiveAgentConversation` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CognitiveAgentConversation_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_CognitiveAgentConversation_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CognitiveAgentConversation_Business_ReceptorBusinessID` FOREIGN KEY (`ReceptorBusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CognitiveAgentConversation_BusinessProfileRecord_BusinessPro~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CognitiveAgentConversation_CognitiveAgent_CognitiveAgentID` FOREIGN KEY (`CognitiveAgentID`) REFERENCES `CognitiveAgent` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Commission` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BaseAmount` decimal(65,30) NOT NULL,
    `AddedPercent` decimal(65,30) NOT NULL,
    `AddedAmount` decimal(65,30) NOT NULL,
    `TaxComission` decimal(65,30) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SalaryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmmisorWalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorWalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmmisorContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `PaymentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Commission` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Commission_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Commission_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Contact` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BirthDate` datetime(6) NOT NULL,
    `Gender` int NOT NULL,
    `ContactType` int NOT NULL,
    `ContactStage` int NOT NULL,
    `ContactStatus` int NOT NULL,
    `PreferredContactMethod` int NOT NULL,
    `ReadOnly` tinyint(1) NOT NULL,
    `SystemRequired` tinyint(1) NOT NULL,
    `DUNS` longtext CHARACTER SET utf8mb4 NULL,
    `Domain` longtext CHARACTER SET utf8mb4 NULL,
    `TwitterURL` longtext CHARACTER SET utf8mb4 NULL,
    `FacebookURL` longtext CHARACTER SET utf8mb4 NULL,
    `LinkedInURL` longtext CHARACTER SET utf8mb4 NULL,
    `YoutubeURL` longtext CHARACTER SET utf8mb4 NULL,
    `GithubURL` longtext CHARACTER SET utf8mb4 NULL,
    `Notes` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `LastName` longtext CHARACTER SET utf8mb4 NULL,
    `Email` longtext CHARACTER SET utf8mb4 NULL,
    `IdentityProvider` longtext CHARACTER SET utf8mb4 NULL,
    `ActiveDirectoryID` longtext CHARACTER SET utf8mb4 NULL,
    `IdP_AccessCode` longtext CHARACTER SET utf8mb4 NULL,
    `CoverURL` longtext CHARACTER SET utf8mb4 NULL,
    `AvatarURL` longtext CHARACTER SET utf8mb4 NULL,
    `TaxID` longtext CHARACTER SET utf8mb4 NULL,
    `JobTitle` longtext CHARACTER SET utf8mb4 NULL,
    `Department` longtext CHARACTER SET utf8mb4 NULL,
    `FaxNumber` longtext CHARACTER SET utf8mb4 NULL,
    `OfficialID` longtext CHARACTER SET utf8mb4 NULL,
    `MobilePhone` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessPhone` longtext CHARACTER SET utf8mb4 NULL,
    `AnnualRevenue` longtext CHARACTER SET utf8mb4 NULL,
    `CustomState` longtext CHARACTER SET utf8mb4 NULL,
    `CustomCity` longtext CHARACTER SET utf8mb4 NULL,
    `StreetLine1` longtext CHARACTER SET utf8mb4 NULL,
    `StreetLine2` longtext CHARACTER SET utf8mb4 NULL,
    `PostalCode` longtext CHARACTER SET utf8mb4 NULL,
    `Longitude` longtext CHARACTER SET utf8mb4 NULL,
    `Latitude` longtext CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryStateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TimezoneID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TerritoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryLanguageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OwnerContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PrimaryContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `RelatedAccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `RelatedBusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `RelatedBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LastCampaignDate` datetime(6) NOT NULL,
    `PartnerProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactSourceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemShippingPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingMethodID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CreditLimit` double NOT NULL,
    `AllowCreditHold` tinyint(1) NOT NULL,
    `PaymentTermID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FinancialBookID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AllowMarketingMaterials` tinyint(1) NOT NULL,
    `AllowEmail` tinyint(1) NOT NULL,
    `AllowFax` tinyint(1) NOT NULL,
    `AllowMail` tinyint(1) NOT NULL,
    `AllowFollowEmail` tinyint(1) NOT NULL,
    `AllowBulkEmail` tinyint(1) NOT NULL,
    `PreferedContactMethod` longtext CHARACTER SET utf8mb4 NULL,
    `PersonalNotes` longtext CHARACTER SET utf8mb4 NULL,
    `Birdthday` datetime(6) NOT NULL,
    `Anniversary` datetime(6) NOT NULL,
    `ContactGender` int NOT NULL,
    `ContactMaritalStatus` int NOT NULL,
    `BusinessTeamID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Contact` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Contact_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_Contact_AspNetUsers_RelatedAccountHolderID` FOREIGN KEY (`RelatedAccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_Contact_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Contact_Business_RelatedBusinessID` FOREIGN KEY (`RelatedBusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Contact_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Contact_BusinessProfileRecord_RelatedBusinessProfileRecordID` FOREIGN KEY (`RelatedBusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Contact_BusinessTeam_BusinessTeamID` FOREIGN KEY (`BusinessTeamID`) REFERENCES `BusinessTeam` (`ID`),
    CONSTRAINT `FK_Contact_City_CityID` FOREIGN KEY (`CityID`) REFERENCES `City` (`ID`),
    CONSTRAINT `FK_Contact_Contact_OrganizationID` FOREIGN KEY (`OrganizationID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Contact_Contact_OwnerContactID` FOREIGN KEY (`OwnerContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Contact_Contact_ParentContactID` FOREIGN KEY (`ParentContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Contact_Contact_PrimaryContactID` FOREIGN KEY (`PrimaryContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Contact_ContactSource_ContactSourceID` FOREIGN KEY (`ContactSourceID`) REFERENCES `ContactSource` (`ID`),
    CONSTRAINT `FK_Contact_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_Contact_CountryLanguage_CountryLanguageID` FOREIGN KEY (`CountryLanguageID`) REFERENCES `CountryLanguage` (`Iso639_1`),
    CONSTRAINT `FK_Contact_CountryState_CountryStateID` FOREIGN KEY (`CountryStateID`) REFERENCES `CountryState` (`ID`),
    CONSTRAINT `FK_Contact_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_Contact_FinancialBook_FinancialBookID` FOREIGN KEY (`FinancialBookID`) REFERENCES `FinancialBook` (`ID`),
    CONSTRAINT `FK_Contact_PaymentTerm_PaymentTermID` FOREIGN KEY (`PaymentTermID`) REFERENCES `PaymentTerm` (`ID`),
    CONSTRAINT `FK_Contact_Policy_ItemShippingPolicyID` FOREIGN KEY (`ItemShippingPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_Contact_ShippingMethod_ShippingMethodID` FOREIGN KEY (`ShippingMethodID`) REFERENCES `ShippingMethod` (`ID`),
    CONSTRAINT `FK_Contact_Territory_TerritoryID` FOREIGN KEY (`TerritoryID`) REFERENCES `Territory` (`ID`),
    CONSTRAINT `FK_Contact_Timezone_TimezoneID` FOREIGN KEY (`TimezoneID`) REFERENCES `Timezone` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ContactGroupRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactsGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ContactGroupRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ContactGroupRecord_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_ContactGroupRecord_ContactsGroup_ContactsGroupID` FOREIGN KEY (`ContactsGroupID`) REFERENCES `ContactsGroup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ContactRelation` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Date` datetime(6) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `RelatedContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactRelationTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ContactRelation` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ContactRelation_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ContactRelation_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_ContactRelation_Contact_RelatedContactID` FOREIGN KEY (`RelatedContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_ContactRelation_ContactRelationType_ContactRelationTypeID` FOREIGN KEY (`ContactRelationTypeID`) REFERENCES `ContactRelationType` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `EmailGroupMembership` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `EmailGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_EmailGroupMembership` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_EmailGroupMembership_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_EmailGroupMembership_BusinessProfileRecord_BusinessProfileRe~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_EmailGroupMembership_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_EmailGroupMembership_EmailGroup_EmailGroupID` FOREIGN KEY (`EmailGroupID`) REFERENCES `EmailGroup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `FiscalYearRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalPeriodID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalYearID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_FiscalYearRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_FiscalYearRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_FiscalYearRecord_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_FiscalYearRecord_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_FiscalYearRecord_FiscalPeriod_FiscalPeriodID` FOREIGN KEY (`FiscalPeriodID`) REFERENCES `FiscalPeriod` (`ID`),
    CONSTRAINT `FK_FiscalYearRecord_FiscalYear_FiscalYearID` FOREIGN KEY (`FiscalYearID`) REFERENCES `FiscalYear` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `GenericOption` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Value` longtext CHARACTER SET utf8mb4 NULL,
    `Frozen` tinyint(1) NOT NULL,
    `Autoload` tinyint(1) NOT NULL,
    `Transient` tinyint(1) NOT NULL,
    `Expiration` int NOT NULL,
    `WebPortalID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessApplicationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_GenericOption` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_GenericOption_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_GenericOption_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_GenericOption_BusinessApplication_BusinessApplicationID` FOREIGN KEY (`BusinessApplicationID`) REFERENCES `BusinessApplication` (`ID`),
    CONSTRAINT `FK_GenericOption_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_GenericOption_WebPortal_WebPortalID` FOREIGN KEY (`WebPortalID`) REFERENCES `WebPortal` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `MarketingCampaignResponse` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MarketingCampaignID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_MarketingCampaignResponse` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_MarketingCampaignResponse_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_MarketingCampaignResponse_BusinessProfileRecord_BusinessProf~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_MarketingCampaignResponse_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_MarketingCampaignResponse_MarketingCampaign_MarketingCampaig~` FOREIGN KEY (`MarketingCampaignID`) REFERENCES `MarketingCampaign` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `NewsletterSubscription` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Email` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Verified` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `NewsletterID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_NewsletterSubscription` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_NewsletterSubscription_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_NewsletterSubscription_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_NewsletterSubscription_BusinessProfileRecord_BusinessProfile~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_NewsletterSubscription_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_NewsletterSubscription_Newsletter_NewsletterID` FOREIGN KEY (`NewsletterID`) REFERENCES `Newsletter` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PaymentRequest` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Message` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BankAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentModeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentRequestType` int NOT NULL,
    CONSTRAINT `PK_PaymentRequest` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PaymentRequest_Account_BankAccountID` FOREIGN KEY (`BankAccountID`) REFERENCES `Account` (`ID`),
    CONSTRAINT `FK_PaymentRequest_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_PaymentRequest_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_PaymentRequest_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_PaymentRequest_PaymentMode_PaymentModeID` FOREIGN KEY (`PaymentModeID`) REFERENCES `PaymentMode` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `QuoteRequest` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_QuoteRequest` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_QuoteRequest_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_QuoteRequest_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SocialProfile` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `FollowsCount` int NOT NULL,
    `FollowersCount` int NOT NULL,
    `UnreadedMessagesCount` int NOT NULL,
    `UnreadedNotificationsCount` int NOT NULL,
    `TwitterURL` longtext CHARACTER SET utf8mb4 NULL,
    `FacebookURL` longtext CHARACTER SET utf8mb4 NULL,
    `LinkedInURL` longtext CHARACTER SET utf8mb4 NULL,
    `YoutubeURL` longtext CHARACTER SET utf8mb4 NULL,
    `GithubURL` longtext CHARACTER SET utf8mb4 NULL,
    `Domain` longtext CHARACTER SET utf8mb4 NULL,
    `Notes` longtext CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SocialProfile` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SocialProfile_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_SocialProfile_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SocialProfile_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WishList` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Public` tinyint(1) NOT NULL,
    `CartID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WishList` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WishList_Cart_CartID` FOREIGN KEY (`CartID`) REFERENCES `Cart` (`ID`),
    CONSTRAINT `FK_WishList_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Curriculum` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Undergraduate` tinyint(1) NOT NULL,
    `CertifiedProfessional` tinyint(1) NOT NULL,
    `SoftwareEngineering` tinyint(1) NOT NULL,
    `CloudEngineering` tinyint(1) NOT NULL,
    `FirstLevelSupport` tinyint(1) NOT NULL,
    `SecondLevelSupport` tinyint(1) NOT NULL,
    `Sales` tinyint(1) NOT NULL,
    `HumanResources` tinyint(1) NOT NULL,
    `Education` tinyint(1) NOT NULL,
    `Finance` tinyint(1) NOT NULL,
    `Administrative` tinyint(1) NOT NULL,
    `Executive` tinyint(1) NOT NULL,
    `Commercial` tinyint(1) NOT NULL,
    `Advocate` tinyint(1) NOT NULL,
    `Marketing` tinyint(1) NOT NULL,
    `Research` tinyint(1) NOT NULL,
    `GraphicDesign` tinyint(1) NOT NULL,
    `PartnerAccountRepresentative` tinyint(1) NOT NULL,
    `CustomerSuccessRepresentative` tinyint(1) NOT NULL,
    `StartupSuccessRepresentative` tinyint(1) NOT NULL,
    `SoundEngineering` tinyint(1) NOT NULL,
    `Sustainability` tinyint(1) NOT NULL,
    `Others` tinyint(1) NOT NULL,
    CONSTRAINT `PK_Curriculum` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Curriculum_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `FollowRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `FollowRecordType` int NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `EnableNotifications` tinyint(1) NOT NULL,
    `FollowerSocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FollowedSocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_FollowRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_FollowRecord_SocialProfile_FollowedSocialProfileID` FOREIGN KEY (`FollowedSocialProfileID`) REFERENCES `SocialProfile` (`ID`),
    CONSTRAINT `FK_FollowRecord_SocialProfile_FollowerSocialProfileID` FOREIGN KEY (`FollowerSocialProfileID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Notification` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Readed` tinyint(1) NOT NULL,
    `Message` longtext CHARACTER SET utf8mb4 NULL,
    `Icon` longtext CHARACTER SET utf8mb4 NULL,
    `ImageUrl` longtext CHARACTER SET utf8mb4 NULL,
    `RedirectUrl` longtext CHARACTER SET utf8mb4 NULL,
    `Type` int NOT NULL,
    `IssuedTimestamp` datetime(6) NOT NULL,
    `ReadedTimestamp` datetime(6) NOT NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Notification` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Notification_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Project` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `IsTemplate` tinyint(1) NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ProjectStartDate` datetime(6) NOT NULL,
    `ProjectEndDate` datetime(6) NOT NULL,
    `ProjectBudgetInUSD` double NOT NULL,
    `ProjectOverallCompletionPercentage` int NOT NULL,
    `BusinessTeamID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Project` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Project_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Project_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Project_BusinessTeam_BusinessTeamID` FOREIGN KEY (`BusinessTeamID`) REFERENCES `BusinessTeam` (`ID`),
    CONSTRAINT `FK_Project_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SocialBadgeRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialBadgeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SocialBadgeRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SocialBadgeRecord_SocialBadge_SocialBadgeID` FOREIGN KEY (`SocialBadgeID`) REFERENCES `SocialBadge` (`ID`),
    CONSTRAINT `FK_SocialBadgeRecord_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SocialFeed` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SocialFeed` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SocialFeed_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseCertificate` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CurriculumID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProficiencyRatingValueID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProficiencyRatingModelID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseCertificate` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseCertificate_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseCertificate_BusinessProfileRecord_BusinessProfileRecor~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseCertificate_Curriculum_CurriculumID` FOREIGN KEY (`CurriculumID`) REFERENCES `Curriculum` (`ID`),
    CONSTRAINT `FK_CourseCertificate_ProficiencyRatingModel_ProficiencyRatingMo~` FOREIGN KEY (`ProficiencyRatingModelID`) REFERENCES `ProficiencyRatingModel` (`ID`),
    CONSTRAINT `FK_CourseCertificate_ProficiencyRatingValue_ProficiencyRatingVa~` FOREIGN KEY (`ProficiencyRatingValueID`) REFERENCES `ProficiencyRatingValue` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `IndividualSkillRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `CurriculumSkillID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CurriculumID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProficiencyRatingValueID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProficiencyRatingModelID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_IndividualSkillRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_IndividualSkillRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_IndividualSkillRecord_BusinessProfileRecord_BusinessProfileR~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_IndividualSkillRecord_Curriculum_CurriculumID` FOREIGN KEY (`CurriculumID`) REFERENCES `Curriculum` (`ID`),
    CONSTRAINT `FK_IndividualSkillRecord_CurriculumSkill_CurriculumSkillID` FOREIGN KEY (`CurriculumSkillID`) REFERENCES `CurriculumSkill` (`ID`),
    CONSTRAINT `FK_IndividualSkillRecord_ProficiencyRatingModel_ProficiencyRati~` FOREIGN KEY (`ProficiencyRatingModelID`) REFERENCES `ProficiencyRatingModel` (`ID`),
    CONSTRAINT `FK_IndividualSkillRecord_ProficiencyRatingValue_ProficiencyRati~` FOREIGN KEY (`ProficiencyRatingValueID`) REFERENCES `ProficiencyRatingValue` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `InstitutionDiploma` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `AcademicInstitutionID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CurriculumID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProficiencyRatingValueID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProficiencyRatingModelID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_InstitutionDiploma` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_InstitutionDiploma_AcademicInstitution_AcademicInstitutionID` FOREIGN KEY (`AcademicInstitutionID`) REFERENCES `AcademicInstitution` (`ID`),
    CONSTRAINT `FK_InstitutionDiploma_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_InstitutionDiploma_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_InstitutionDiploma_Curriculum_CurriculumID` FOREIGN KEY (`CurriculumID`) REFERENCES `Curriculum` (`ID`),
    CONSTRAINT `FK_InstitutionDiploma_ProficiencyRatingModel_ProficiencyRatingM~` FOREIGN KEY (`ProficiencyRatingModelID`) REFERENCES `ProficiencyRatingModel` (`ID`),
    CONSTRAINT `FK_InstitutionDiploma_ProficiencyRatingValue_ProficiencyRatingV~` FOREIGN KEY (`ProficiencyRatingValueID`) REFERENCES `ProficiencyRatingValue` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ProfessionalDegree` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `KnowledgeField` longtext CHARACTER SET utf8mb4 NULL,
    `EducationInstitutionName` longtext CHARACTER SET utf8mb4 NULL,
    `Date` datetime(6) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `CurriculumID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProficiencyRatingValueID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProficiencyRatingModelID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ProfessionalDegree` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ProfessionalDegree_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ProfessionalDegree_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ProfessionalDegree_Curriculum_CurriculumID` FOREIGN KEY (`CurriculumID`) REFERENCES `Curriculum` (`ID`),
    CONSTRAINT `FK_ProfessionalDegree_ProficiencyRatingModel_ProficiencyRatingM~` FOREIGN KEY (`ProficiencyRatingModelID`) REFERENCES `ProficiencyRatingModel` (`ID`),
    CONSTRAINT `FK_ProfessionalDegree_ProficiencyRatingValue_ProficiencyRatingV~` FOREIGN KEY (`ProficiencyRatingValueID`) REFERENCES `ProficiencyRatingValue` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `KanbanBoard` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_KanbanBoard` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_KanbanBoard_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_KanbanBoard_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_KanbanBoard_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ProjectBacklog` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ProjectBacklog` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ProjectBacklog_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `TaskList` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Reminder` datetime(6) NOT NULL,
    `Reminded` tinyint(1) NOT NULL,
    `Template` tinyint(1) NOT NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_TaskList` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_TaskList_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_TaskList_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_TaskList_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`),
    CONSTRAINT `FK_TaskList_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ProjectTaskBucket` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `KanbanBoardID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ProjectTaskBucket` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ProjectTaskBucket_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ProjectTaskBucket_BusinessProfileRecord_BusinessProfileRecor~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ProjectTaskBucket_KanbanBoard_KanbanBoardID` FOREIGN KEY (`KanbanBoardID`) REFERENCES `KanbanBoard` (`ID`),
    CONSTRAINT `FK_ProjectTaskBucket_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Task` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `DueDate` datetime(6) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Completed` tinyint(1) NOT NULL,
    `CompletedTimestamp` datetime(6) NOT NULL,
    `CompletionPercentage` int NOT NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TaskListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `StartDate` datetime(6) NULL,
    `DueLine` datetime(6) NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectTaskBucketID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Task` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Task_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Task_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Task_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`),
    CONSTRAINT `FK_Task_ProjectTaskBucket_ProjectTaskBucketID` FOREIGN KEY (`ProjectTaskBucketID`) REFERENCES `ProjectTaskBucket` (`ID`),
    CONSTRAINT `FK_Task_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`),
    CONSTRAINT `FK_Task_TaskList_TaskListID` FOREIGN KEY (`TaskListID`) REFERENCES `TaskList` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ProjectTaskRelationship` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `IsDependenceRelation` tinyint(1) NOT NULL,
    `ParentTaskID` longtext CHARACTER SET utf8mb4 NULL,
    `ParentProjectTaskID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ChildProjectTaskID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ProjectTaskRelationship` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ProjectTaskRelationship_Task_ChildProjectTaskID` FOREIGN KEY (`ChildProjectTaskID`) REFERENCES `Task` (`ID`),
    CONSTRAINT `FK_ProjectTaskRelationship_Task_ParentProjectTaskID` FOREIGN KEY (`ParentProjectTaskID`) REFERENCES `Task` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `TaskAssignment` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Instructions` longtext CHARACTER SET utf8mb4 NULL,
    `TaskID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TaskListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_TaskAssignment` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_TaskAssignment_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`),
    CONSTRAINT `FK_TaskAssignment_Task_TaskID` FOREIGN KEY (`TaskID`) REFERENCES `Task` (`ID`),
    CONSTRAINT `FK_TaskAssignment_TaskList_TaskListID` FOREIGN KEY (`TaskListID`) REFERENCES `TaskList` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ContactProfile` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Verified` tinyint(1) NOT NULL,
    `Submitted` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `VerificationTimestamp` datetime(6) NOT NULL,
    `Data` longtext CHARACTER SET utf8mb4 NULL,
    `DataLabel` longtext CHARACTER SET utf8mb4 NULL,
    `Data1` longtext CHARACTER SET utf8mb4 NULL,
    `Data1Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data2` longtext CHARACTER SET utf8mb4 NULL,
    `Data2Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data3` longtext CHARACTER SET utf8mb4 NULL,
    `Data3Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data4` longtext CHARACTER SET utf8mb4 NULL,
    `Data4Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data5` longtext CHARACTER SET utf8mb4 NULL,
    `Data5Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data6` longtext CHARACTER SET utf8mb4 NULL,
    `Data6Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data7` longtext CHARACTER SET utf8mb4 NULL,
    `Data7Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data8` longtext CHARACTER SET utf8mb4 NULL,
    `Data8Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data9` longtext CHARACTER SET utf8mb4 NULL,
    `Data9Label` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BankID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TaxID` longtext CHARACTER SET utf8mb4 NULL,
    `Phone` longtext CHARACTER SET utf8mb4 NULL,
    `Email` longtext CHARACTER SET utf8mb4 NULL,
    `Address` longtext CHARACTER SET utf8mb4 NULL,
    `Address1` longtext CHARACTER SET utf8mb4 NULL,
    `Address2` longtext CHARACTER SET utf8mb4 NULL,
    `PostalCode` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessName` longtext CHARACTER SET utf8mb4 NULL,
    `CommercialName` longtext CHARACTER SET utf8mb4 NULL,
    `Ticker` longtext CHARACTER SET utf8mb4 NULL,
    `DUNS` longtext CHARACTER SET utf8mb4 NULL,
    `IsPublicCompany` tinyint(1) NULL,
    `IsFactaCustomer` tinyint(1) NULL,
    `TaxPayerType` int NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryStateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalIdentificationTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalAuthorityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalRegimeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `GrossPay` double NULL,
    `NetSalary` double NULL,
    `PayrollCurrency` longtext CHARACTER SET utf8mb4 NULL,
    `JobTitleID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmployeeTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Authorized` tinyint(1) NULL,
    `MarketingCampaignID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LeadStatus` int NULL,
    `LeadRating` int NULL,
    `LeadContext` int NULL,
    `PurchaseTimeframe` int NULL,
    `PreferredContactMethod` int NULL,
    `FiscalYearEnd` datetime(6) NULL,
    `FiscalYearStart` datetime(6) NULL,
    `EmployeeCount` int NULL,
    `IsPublic` tinyint(1) NULL,
    `PartnerProfile_Authorized` tinyint(1) NULL,
    `PercentageOfBusinessForSales` int NULL,
    `PercentageOfBusinessForServices` int NULL,
    `ConsumerMarketBusinessFocusPercentage` int NULL,
    `SMBsMarketBusinessFocusPercentage` int NULL,
    `EnterpriseMarketBusinessFocusPercentage` int NULL,
    `EducationMarketBusinessFocusPercentage` int NULL,
    `OfficialInstitutionsMarketBusinessFocusPercentage` int NULL,
    `HealthcareMarketBusinessFocusPercentage` int NULL,
    `OnStoreDistributionChannel` int NULL,
    `E_CommerceDistributionChannel` int NULL,
    `TeleSalesDistributionChannel` int NULL,
    `DirectSalesDistributionChannel` int NULL,
    `OtherPartners` longtext CHARACTER SET utf8mb4 NULL,
    `PartnerTierID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ContactProfile` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ContactProfile_Bank_BankID` FOREIGN KEY (`BankID`) REFERENCES `Bank` (`ID`),
    CONSTRAINT `FK_ContactProfile_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ContactProfile_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ContactProfile_City_CityID` FOREIGN KEY (`CityID`) REFERENCES `City` (`ID`),
    CONSTRAINT `FK_ContactProfile_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_ContactProfile_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_ContactProfile_CountryState_CountryStateID` FOREIGN KEY (`CountryStateID`) REFERENCES `CountryState` (`ID`),
    CONSTRAINT `FK_ContactProfile_EmployeeType_EmployeeTypeID` FOREIGN KEY (`EmployeeTypeID`) REFERENCES `EmployeeType` (`ID`),
    CONSTRAINT `FK_ContactProfile_FiscalAuthority_FiscalAuthorityID` FOREIGN KEY (`FiscalAuthorityID`) REFERENCES `FiscalAuthority` (`ID`),
    CONSTRAINT `FK_ContactProfile_FiscalIdentificationType_FiscalIdentification~` FOREIGN KEY (`FiscalIdentificationTypeID`) REFERENCES `FiscalIdentificationType` (`ID`),
    CONSTRAINT `FK_ContactProfile_FiscalRegime_FiscalRegimeID` FOREIGN KEY (`FiscalRegimeID`) REFERENCES `FiscalRegime` (`ID`),
    CONSTRAINT `FK_ContactProfile_JobTitle_JobTitleID` FOREIGN KEY (`JobTitleID`) REFERENCES `JobTitle` (`ID`),
    CONSTRAINT `FK_ContactProfile_MarketingCampaign_MarketingCampaignID` FOREIGN KEY (`MarketingCampaignID`) REFERENCES `MarketingCampaign` (`ID`),
    CONSTRAINT `FK_ContactProfile_PartnerTier_PartnerTierID` FOREIGN KEY (`PartnerTierID`) REFERENCES `PartnerTier` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CreditLimit` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Value` double NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CreditLimit` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CreditLimit_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CreditLimit_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CreditLimit_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_CreditLimit_ContactProfile_ContactProfileID` FOREIGN KEY (`ContactProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_CreditLimit_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `DealUnit` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Closed` tinyint(1) NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `PartnerCreated` tinyint(1) NOT NULL,
    `PartnerCollaboration` tinyint(1) NOT NULL,
    `ProposedSolution` longtext CHARACTER SET utf8mb4 NULL,
    `CurrentSituation` longtext CHARACTER SET utf8mb4 NULL,
    `CustomerNeed` longtext CHARACTER SET utf8mb4 NULL,
    `WonDate` datetime(6) NOT NULL,
    `LostDate` datetime(6) NOT NULL,
    `ExpiryDate` datetime(6) NOT NULL,
    `DeliveredDate` datetime(6) NOT NULL,
    `ClosedTimestamp` datetime(6) NOT NULL,
    `ExpectedCloseDate` datetime(6) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `DealUnitStatus` int NOT NULL,
    `DealUnitPurchaseProcess` int NOT NULL,
    `DealUnitForecastCategory` int NOT NULL,
    `DealUnitAmountsCalculation` int NOT NULL,
    `ForexRatesSnapshot` longtext CHARACTER SET utf8mb4 NULL,
    `ForexRate` double NOT NULL,
    `TotalBaseAmountInUSD` double NOT NULL,
    `TotalDetailAmountInUSD` double NOT NULL,
    `TotalDiscountsInUSD` double NOT NULL,
    `TotalProfitInUSD` double NOT NULL,
    `TotalTaxBaseInUSD` double NOT NULL,
    `TotalTaxesInUSD` double NOT NULL,
    `TotalWithholdingTaxesInUSD` double NOT NULL,
    `TotalShippingCostInUSD` double NOT NULL,
    `TotalShippingTaxesInUSD` double NOT NULL,
    `TotalWarrantyCostInUSD` double NOT NULL,
    `TotalReturnCostInUSD` double NOT NULL,
    `TotalRefundCostInUSD` double NOT NULL,
    `TotalSurchargesInUSD` double NOT NULL,
    `TotalAmountInUSD` double NOT NULL,
    `CustomBaseAmount` double NOT NULL,
    `CustomDetailAmount` double NOT NULL,
    `CustomDiscountsAmount` double NOT NULL,
    `CustomSurchargesAmount` double NOT NULL,
    `CustomProfitAmount` double NOT NULL,
    `CustomShippingCostAmount` double NOT NULL,
    `CustomShippingTaxAmount` double NOT NULL,
    `CustomTaxBase` double NOT NULL,
    `CustomTaxAmount` double NOT NULL,
    `CustomWithholdingTaxAmount` double NOT NULL,
    `CustomTotalAmount` double NOT NULL,
    `TotalGlobalDiscountsInUSD` double NOT NULL,
    `TotalGlobalSurchargesInUSD` double NOT NULL,
    `CustomGlobalSurchargesAmount` double NOT NULL,
    `CustomGlobalDiscountsAmount` double NOT NULL,
    `IndividualID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PriceListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TerritoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessTeamID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WorkOrderTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MarketingCampaignID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DealUnitFlowID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DealUnitFlowStageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PartnerProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_DealUnit` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_DealUnit_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_DealUnit_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_DealUnit_Business_ReceptorBusinessID` FOREIGN KEY (`ReceptorBusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_DealUnit_BusinessProcess_DealUnitFlowID` FOREIGN KEY (`DealUnitFlowID`) REFERENCES `BusinessProcess` (`ID`),
    CONSTRAINT `FK_DealUnit_BusinessProcessStage_DealUnitFlowStageID` FOREIGN KEY (`DealUnitFlowStageID`) REFERENCES `BusinessProcessStage` (`ID`),
    CONSTRAINT `FK_DealUnit_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_DealUnit_BusinessTeam_BusinessTeamID` FOREIGN KEY (`BusinessTeamID`) REFERENCES `BusinessTeam` (`ID`),
    CONSTRAINT `FK_DealUnit_Contact_IndividualID` FOREIGN KEY (`IndividualID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_DealUnit_Contact_OrganizationID` FOREIGN KEY (`OrganizationID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_DealUnit_ContactProfile_PartnerProfileID` FOREIGN KEY (`PartnerProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_DealUnit_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_DealUnit_MarketingCampaign_MarketingCampaignID` FOREIGN KEY (`MarketingCampaignID`) REFERENCES `MarketingCampaign` (`ID`),
    CONSTRAINT `FK_DealUnit_PriceList_PriceListID` FOREIGN KEY (`PriceListID`) REFERENCES `PriceList` (`ID`),
    CONSTRAINT `FK_DealUnit_Territory_TerritoryID` FOREIGN KEY (`TerritoryID`) REFERENCES `Territory` (`ID`),
    CONSTRAINT `FK_DealUnit_WorkOrderType_WorkOrderTypeID` FOREIGN KEY (`WorkOrderTypeID`) REFERENCES `WorkOrderType` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `EmployeeDegree` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Institution` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `AchievedDate` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmployeeProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_EmployeeDegree` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_EmployeeDegree_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_EmployeeDegree_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_EmployeeDegree_ContactProfile_EmployeeProfileID` FOREIGN KEY (`EmployeeProfileID`) REFERENCES `ContactProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `FiscalResponsibilityRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `FiscalResponsibilityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_FiscalResponsibilityRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_FiscalResponsibilityRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_FiscalResponsibilityRecord_BusinessProfileRecord_BusinessPro~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_FiscalResponsibilityRecord_ContactProfile_BillingProfileID` FOREIGN KEY (`BillingProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_FiscalResponsibilityRecord_FiscalResponsibility_FiscalRespon~` FOREIGN KEY (`FiscalResponsibilityID`) REFERENCES `FiscalResponsibility` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Item` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Permalink` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Barcode` longtext CHARACTER SET utf8mb4 NULL,
    `SKU` longtext CHARACTER SET utf8mb4 NULL,
    `SKUs` longtext CHARACTER SET utf8mb4 NULL,
    `ISBN13` longtext CHARACTER SET utf8mb4 NULL,
    `ISBN` longtext CHARACTER SET utf8mb4 NULL,
    `ISBNs` longtext CHARACTER SET utf8mb4 NULL,
    `UPC` longtext CHARACTER SET utf8mb4 NULL,
    `UPCs` longtext CHARACTER SET utf8mb4 NULL,
    `EAN` longtext CHARACTER SET utf8mb4 NULL,
    `EANs` longtext CHARACTER SET utf8mb4 NULL,
    `ASIN` longtext CHARACTER SET utf8mb4 NULL,
    `ASINs` longtext CHARACTER SET utf8mb4 NULL,
    `UNSPSC` longtext CHARACTER SET utf8mb4 NULL,
    `UNSPSCs` longtext CHARACTER SET utf8mb4 NULL,
    `GTIN` longtext CHARACTER SET utf8mb4 NULL,
    `GTINs` longtext CHARACTER SET utf8mb4 NULL,
    `MPN` longtext CHARACTER SET utf8mb4 NULL,
    `MPNs` longtext CHARACTER SET utf8mb4 NULL,
    `SupplierCode` longtext CHARACTER SET utf8mb4 NULL,
    `Series` longtext CHARACTER SET utf8mb4 NULL,
    `Part` longtext CHARACTER SET utf8mb4 NULL,
    `Model` longtext CHARACTER SET utf8mb4 NULL,
    `Auction` tinyint(1) NOT NULL,
    `AuctionEnd` datetime(6) NOT NULL,
    `AuctionStart` datetime(6) NOT NULL,
    `TariffHeading` longtext CHARACTER SET utf8mb4 NULL,
    `SystemRequirements` longtext CHARACTER SET utf8mb4 NULL,
    `OperatingSystemSupported` longtext CHARACTER SET utf8mb4 NULL,
    `Title` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `ShortDescription` longtext CHARACTER SET utf8mb4 NULL,
    `PublishedDate` datetime(6) NOT NULL,
    `OfficialDescriptionURL` longtext CHARACTER SET utf8mb4 NULL,
    `PrimaryImageURL` longtext CHARACTER SET utf8mb4 NULL,
    `ValidPrimaryImage` tinyint(1) NOT NULL,
    `PurchaseNote` longtext CHARACTER SET utf8mb4 NULL,
    `Features` longtext CHARACTER SET utf8mb4 NULL,
    `Ingredients` longtext CHARACTER SET utf8mb4 NULL,
    `ReleaseDate` longtext CHARACTER SET utf8mb4 NULL,
    `Pattern` longtext CHARACTER SET utf8mb4 NULL,
    `Material` longtext CHARACTER SET utf8mb4 NULL,
    `Color` longtext CHARACTER SET utf8mb4 NULL,
    `NutritionFacts` longtext CHARACTER SET utf8mb4 NULL,
    `EnergyEfficiencyRating` longtext CHARACTER SET utf8mb4 NULL,
    `Published` tinyint(1) NOT NULL,
    `Deleted` tinyint(1) NOT NULL,
    `Digital` tinyint(1) NOT NULL,
    `PreSale` tinyint(1) NOT NULL,
    `ByRequest` tinyint(1) NOT NULL,
    `Taxable` tinyint(1) NOT NULL,
    `IsMonthlyDeal` tinyint(1) NOT NULL,
    `Featured` tinyint(1) NOT NULL,
    `Hot` tinyint(1) NOT NULL,
    `DisplayOnGlobalMozaic` tinyint(1) NOT NULL,
    `DisplayOnCategoryMozaic` tinyint(1) NOT NULL,
    `DisplayOnBannerMarketingRotation` tinyint(1) NOT NULL,
    `DisplayOnBrandsMozaic` tinyint(1) NOT NULL,
    `MozaicCoverURL` longtext CHARACTER SET utf8mb4 NULL,
    `YoutubeVideoID` longtext CHARACTER SET utf8mb4 NULL,
    `PageCoverBackgroundURL` longtext CHARACTER SET utf8mb4 NULL,
    `Recurrency` decimal(65,30) NOT NULL,
    `PackageContent` longtext CHARACTER SET utf8mb4 NULL,
    `PackagedQuantity` int NOT NULL,
    `Variations` longtext CHARACTER SET utf8mb4 NULL,
    `ShipsToRules` longtext CHARACTER SET utf8mb4 NULL,
    `Categories` longtext CHARACTER SET utf8mb4 NULL,
    `GoogleCategories` longtext CHARACTER SET utf8mb4 NULL,
    `Brands` longtext CHARACTER SET utf8mb4 NULL,
    `OnDiscount` tinyint(1) NOT NULL,
    `IsFixedDiscount` tinyint(1) NOT NULL,
    `IsDeadlineDiscount` tinyint(1) NOT NULL,
    `DiscountPercentage` double NOT NULL,
    `DiscountPrice` double NOT NULL,
    `DiscountAmount` double NOT NULL,
    `DeadlineDiscountFromDate` datetime(6) NOT NULL,
    `DeadlineDiscountDueDate` datetime(6) NOT NULL,
    `InStock` tinyint(1) NOT NULL,
    `LowStock` tinyint(1) NOT NULL,
    `CurrentStock` decimal(65,30) NOT NULL,
    `ManageInventory` tinyint(1) NOT NULL,
    `TaxIncludedInPrice` tinyint(1) NOT NULL,
    `LastFixedPricesUpdateDateTime` datetime(6) NOT NULL,
    `DisableDefaultPolicies` tinyint(1) NOT NULL,
    `RegularPrice` double NOT NULL,
    `EstimatedRegularPriceInUSD` double NOT NULL,
    `EstimatedBasePriceInUSD` double NOT NULL,
    `EstimatedTaxBasePriceInUSD` double NOT NULL,
    `EstimatedProfitInUSD` double NOT NULL,
    `EstimatedSurchargesInUSD` double NOT NULL,
    `EstimatedDiscountsInUSD` double NOT NULL,
    `EstimatedTaxesInUSD` double NOT NULL,
    `EstimatedWitholdingTaxesInUSD` double NOT NULL,
    `EstimatedPaymentCostInUSD` double NOT NULL,
    `EstimatedPaymentTaxInUSD` double NOT NULL,
    `EstimatedDefaultShippingCostInUSD` double NOT NULL,
    `EstimatedDefaultShippingTaxInUSD` double NOT NULL,
    `EstimatedTotalPriceInUSD` double NOT NULL,
    `EstimatedRevenueInUSD` double NOT NULL,
    `EstimatedDealSavingsInUSD` double NOT NULL,
    `ParentItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Weight` longtext CHARACTER SET utf8mb4 NULL,
    `Height` double NOT NULL,
    `Width` double NOT NULL,
    `Length` double NOT NULL,
    `CountryLanguageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `UnitGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `UnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemGoogleCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BrandID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingClassID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemClassID` longtext CHARACTER SET utf8mb4 NULL,
    `ItemClass` int NOT NULL,
    `ItemCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SupplierProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BateryType` longtext CHARACTER SET utf8mb4 NOT NULL,
    `RecurrencyPeriod` int NOT NULL,
    `MeasurementUnits` longtext CHARACTER SET utf8mb4 NOT NULL,
    `ContainsOrIsBattery` tinyint(1) NOT NULL,
    `IsStandaloneBatery` tinyint(1) NOT NULL,
    `BateryWeight` double NOT NULL,
    `NumberOfBatteries` int NOT NULL,
    `WattHours` int NOT NULL,
    `CellsInBattery` int NOT NULL,
    `IsNewArrival` tinyint(1) NOT NULL,
    `IsBestSeller` tinyint(1) NOT NULL,
    `IsProductOfTheMonth` tinyint(1) NOT NULL,
    `IsProductOfTheWeek` tinyint(1) NOT NULL,
    `IsDailyDeal` tinyint(1) NOT NULL,
    `IsWeeklyDeal` tinyint(1) NOT NULL,
    `IsMontlyDeal` tinyint(1) NOT NULL,
    `IsDealersChoice` tinyint(1) NOT NULL,
    `TryWebScraping` tinyint(1) NOT NULL,
    `IsOfficialChoice` tinyint(1) NOT NULL,
    `DisplayShowcaseTab` tinyint(1) NOT NULL,
    `DisplayDescriptionEditor` tinyint(1) NOT NULL,
    `DisplayShortDescriptionEditor` tinyint(1) NOT NULL,
    `RatingAverage` double NOT NULL,
    `MinRating` double NOT NULL,
    `MaxRating` double NOT NULL,
    `ViewsCount` bigint NOT NULL,
    `ReviewsCount` bigint NOT NULL,
    `SalesCount` bigint NOT NULL,
    `CustomAddedPercentage` double NOT NULL,
    `CustomAddedValue` double NOT NULL,
    `CustomTaxPercentage` double NOT NULL,
    `CustomTaxValue` double NOT NULL,
    `CustomTaxDescription` longtext CHARACTER SET utf8mb4 NULL,
    `Minted` tinyint(1) NULL,
    `BlockchainID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MintedTimestamp` datetime(6) NULL,
    `MintTransactionHash` longtext CHARACTER SET utf8mb4 NULL,
    `BlockchainBlockID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Version` longtext CHARACTER SET utf8mb4 NULL,
    `Summary` longtext CHARACTER SET utf8mb4 NULL,
    `SubmitTolerance` longtext CHARACTER SET utf8mb4 NULL,
    `MaxCourseEnrollments` int NULL,
    `TotalEffortInWeeks` int NULL,
    `TotalHoursPerWeek` int NULL,
    `TotalEffortInHours` int NULL,
    `CalificationRanges` longtext CHARACTER SET utf8mb4 NULL,
    `Prerequisites` longtext CHARACTER SET utf8mb4 NULL,
    `MatlabAPI` longtext CHARACTER SET utf8mb4 NULL,
    `StartDateTime` datetime(6) NULL,
    `EndDateTime` datetime(6) NULL,
    `InscriptionsStartDateTime` datetime(6) NULL,
    `InscriptionsEndDateTime` datetime(6) NULL,
    `CourseCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `InstructorProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AllowTrials` tinyint(1) NULL,
    `IsPerpetualLicense` tinyint(1) NULL,
    `MaxLicenseUtilizations` int NULL,
    `TrialLicenseRelativeExpirationInDays` int NULL,
    `StandardLicenseRelativeExpirationInDays` int NULL,
    `ServiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Item` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Item_Blockchain_BlockchainID` FOREIGN KEY (`BlockchainID`) REFERENCES `Blockchain` (`ID`),
    CONSTRAINT `FK_Item_BlockchainBlock_BlockchainBlockID` FOREIGN KEY (`BlockchainBlockID`) REFERENCES `BlockchainBlock` (`ID`),
    CONSTRAINT `FK_Item_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Item_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Item_ContactProfile_InstructorProfileID` FOREIGN KEY (`InstructorProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Item_ContactProfile_SupplierProfileID` FOREIGN KEY (`SupplierProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Item_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_Item_CountryLanguage_CountryLanguageID` FOREIGN KEY (`CountryLanguageID`) REFERENCES `CountryLanguage` (`Iso639_1`),
    CONSTRAINT `FK_Item_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_Item_Item_ParentItemID` FOREIGN KEY (`ParentItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_Item_Item_ServiceID` FOREIGN KEY (`ServiceID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_Item_ItemBrand_BrandID` FOREIGN KEY (`BrandID`) REFERENCES `ItemBrand` (`ID`),
    CONSTRAINT `FK_Item_ItemCategory_CourseCategoryID` FOREIGN KEY (`CourseCategoryID`) REFERENCES `ItemCategory` (`ID`),
    CONSTRAINT `FK_Item_ItemCategory_ItemCategoryID` FOREIGN KEY (`ItemCategoryID`) REFERENCES `ItemCategory` (`ID`),
    CONSTRAINT `FK_Item_ItemGoogleCategory_ItemGoogleCategoryID` FOREIGN KEY (`ItemGoogleCategoryID`) REFERENCES `ItemGoogleCategory` (`ID`),
    CONSTRAINT `FK_Item_ItemType_ItemTypeID` FOREIGN KEY (`ItemTypeID`) REFERENCES `ItemType` (`ID`),
    CONSTRAINT `FK_Item_ShippingClass_ShippingClassID` FOREIGN KEY (`ShippingClassID`) REFERENCES `ShippingClass` (`ID`),
    CONSTRAINT `FK_Item_Unit_UnitID` FOREIGN KEY (`UnitID`) REFERENCES `Unit` (`ID`),
    CONSTRAINT `FK_Item_UnitGroup_UnitGroupID` FOREIGN KEY (`UnitGroupID`) REFERENCES `UnitGroup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `JobOffer` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `JobTitle` longtext CHARACTER SET utf8mb4 NULL,
    `JobOfferDescription` longtext CHARACTER SET utf8mb4 NULL,
    `TechnicalSkills` longtext CHARACTER SET utf8mb4 NULL,
    `NonTechnicalSkills` longtext CHARACTER SET utf8mb4 NULL,
    `Certifications` longtext CHARACTER SET utf8mb4 NULL,
    `ProjectExperience` longtext CHARACTER SET utf8mb4 NULL,
    `Technologies` longtext CHARACTER SET utf8mb4 NULL,
    `IsOfficialJobOffer` tinyint(1) NOT NULL,
    `IsRemoteJobOffer` tinyint(1) NOT NULL,
    `IsMidTimeJobOffer` tinyint(1) NOT NULL,
    `IsUndergraduateOption` tinyint(1) NOT NULL,
    `MinOverallExperienceYears` int NOT NULL,
    `AvailiablePositionsCount` int NOT NULL,
    `JobFieldID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmployerProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `JobTitleID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_JobOffer` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_JobOffer_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_JobOffer_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_JobOffer_ContactProfile_EmployerProfileID` FOREIGN KEY (`EmployerProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_JobOffer_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_JobOffer_JobField_JobFieldID` FOREIGN KEY (`JobFieldID`) REFERENCES `JobField` (`ID`),
    CONSTRAINT `FK_JobOffer_JobTitle_JobTitleID` FOREIGN KEY (`JobTitleID`) REFERENCES `JobTitle` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `LeaveApplication` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Justification` longtext CHARACTER SET utf8mb4 NULL,
    `Approved` tinyint(1) NOT NULL,
    `OnReview` tinyint(1) NOT NULL,
    `LeaveTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmployeeProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_LeaveApplication` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_LeaveApplication_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_LeaveApplication_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_LeaveApplication_ContactProfile_EmployeeProfileID` FOREIGN KEY (`EmployeeProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_LeaveApplication_LeaveType_LeaveTypeID` FOREIGN KEY (`LeaveTypeID`) REFERENCES `LeaveType` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Location` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Verified` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `VerificationTimestamp` datetime(6) NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Company` longtext CHARACTER SET utf8mb4 NULL,
    `Email` longtext CHARACTER SET utf8mb4 NULL,
    `Address1` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Address2` longtext CHARACTER SET utf8mb4 NULL,
    `Address3` longtext CHARACTER SET utf8mb4 NULL,
    `Unit` longtext CHARACTER SET utf8mb4 NULL,
    `CustomCity` longtext CHARACTER SET utf8mb4 NULL,
    `CustomState` longtext CHARACTER SET utf8mb4 NULL,
    `PostalCode` longtext CHARACTER SET utf8mb4 NULL,
    `Phone` longtext CHARACTER SET utf8mb4 NULL,
    `Fax` longtext CHARACTER SET utf8mb4 NULL,
    `Longitud` double NOT NULL,
    `Latitud` double NOT NULL,
    `IsRoutable` tinyint(1) NOT NULL,
    `IsGlobalPrimary` tinyint(1) NOT NULL,
    `IsCountryPrimary` tinyint(1) NOT NULL,
    `CanGenerateLabels` tinyint(1) NOT NULL,
    `IsDefaultSenderAddress` tinyint(1) NOT NULL,
    `IsDefaultReturnAddress` tinyint(1) NOT NULL,
    `IsDefaultShippingLocation` tinyint(1) NOT NULL,
    `IsDefaultBillingLocation` tinyint(1) NOT NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryStateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IsGroup` tinyint(1) NULL,
    `ShipwireWarehouseID` longtext CHARACTER SET utf8mb4 NULL,
    `ParentWarehouseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SupplierProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Location` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Location_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_Location_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Location_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Location_City_CityID` FOREIGN KEY (`CityID`) REFERENCES `City` (`ID`),
    CONSTRAINT `FK_Location_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Location_ContactProfile_SupplierProfileID` FOREIGN KEY (`SupplierProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Location_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_Location_CountryState_CountryStateID` FOREIGN KEY (`CountryStateID`) REFERENCES `CountryState` (`ID`),
    CONSTRAINT `FK_Location_Location_ParentWarehouseID` FOREIGN KEY (`ParentWarehouseID`) REFERENCES `Location` (`ID`),
    CONSTRAINT `FK_Location_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `MarketingAreaSubscription` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PartnerProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MarketingAreaID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_MarketingAreaSubscription` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_MarketingAreaSubscription_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_MarketingAreaSubscription_ContactProfile_PartnerProfileID` FOREIGN KEY (`PartnerProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_MarketingAreaSubscription_MarketingArea_MarketingAreaID` FOREIGN KEY (`MarketingAreaID`) REFERENCES `MarketingArea` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `MarketingListMembership` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `LeadProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MarketingListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_MarketingListMembership` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_MarketingListMembership_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_MarketingListMembership_BusinessProfileRecord_BusinessProfil~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_MarketingListMembership_ContactProfile_LeadProfileID` FOREIGN KEY (`LeadProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_MarketingListMembership_MarketingList_MarketingListID` FOREIGN KEY (`MarketingListID`) REFERENCES `MarketingList` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PurchaseRequest` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SupplierProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PurchaseRequest` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PurchaseRequest_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_PurchaseRequest_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_PurchaseRequest_ContactProfile_SupplierProfileID` FOREIGN KEY (`SupplierProfileID`) REFERENCES `ContactProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Salary` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Amount` double NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmployeeProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Salary` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Salary_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Salary_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Salary_ContactProfile_EmployeeProfileID` FOREIGN KEY (`EmployeeProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Salary_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShareTransfer` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Value` double NOT NULL,
    `NewShareHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FormerShareHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShareTransferReasonID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShareTransfer` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShareTransfer_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ShareTransfer_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ShareTransfer_ContactProfile_FormerShareHolderID` FOREIGN KEY (`FormerShareHolderID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_ShareTransfer_ContactProfile_NewShareHolderID` FOREIGN KEY (`NewShareHolderID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_ShareTransfer_ShareTransferReason_ShareTransferReasonID` FOREIGN KEY (`ShareTransferReasonID`) REFERENCES `ShareTransferReason` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SigningCertificate` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `URL` longtext CHARACTER SET utf8mb4 NULL,
    `CSR` longtext CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `PublicKey` longtext CHARACTER SET utf8mb4 NULL,
    `PrivateKey` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `FileLengthInBits` bigint NOT NULL,
    `CertificateType` int NOT NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SigningProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SigningCertificate` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SigningCertificate_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_SigningCertificate_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SigningCertificate_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_SigningCertificate_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_SigningCertificate_ContactProfile_SigningProfileID` FOREIGN KEY (`SigningProfileID`) REFERENCES `ContactProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SupplierGroupRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `SupplierProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SupplierGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SupplierGroupRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SupplierGroupRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SupplierGroupRecord_BusinessProfileRecord_BusinessProfileRec~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_SupplierGroupRecord_ContactProfile_SupplierProfileID` FOREIGN KEY (`SupplierProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_SupplierGroupRecord_SupplierGroup_SupplierGroupID` FOREIGN KEY (`SupplierGroupID`) REFERENCES `SupplierGroup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `TrainingProgramApplication` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TrainingProgramID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmployeeProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_TrainingProgramApplication` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_TrainingProgramApplication_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_TrainingProgramApplication_BusinessProfileRecord_BusinessPro~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_TrainingProgramApplication_ContactProfile_EmployeeProfileID` FOREIGN KEY (`EmployeeProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_TrainingProgramApplication_TrainingProgram_TrainingProgramID` FOREIGN KEY (`TrainingProgramID`) REFERENCES `TrainingProgram` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Transaction` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Price` double NOT NULL,
    `Quantity` double NOT NULL,
    `ExternalDescription` longtext CHARACTER SET utf8mb4 NULL,
    `BasisQuantity` double NOT NULL,
    `BasisAmount` double NOT NULL,
    `Percent` double NOT NULL,
    `UnitGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `UnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TransactionCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BankProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BankAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectResourceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectTaskID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectResourceRoleID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountingDate` datetime(6) NULL,
    `DocumentDate` datetime(6) NULL,
    `StartDateTime` datetime(6) NULL,
    `EndDateTime` datetime(6) NULL,
    `BillingType` int NULL,
    `CustomerType` int NULL,
    `TransactionType` int NULL,
    `TransactionClass` int NULL,
    `AmountMethod` int NULL,
    `ProjectJournalID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Transaction` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Transaction_Account_BankAccountID` FOREIGN KEY (`BankAccountID`) REFERENCES `Account` (`ID`),
    CONSTRAINT `FK_Transaction_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Transaction_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Transaction_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Transaction_ContactProfile_BankProfileID` FOREIGN KEY (`BankProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Transaction_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_Transaction_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`),
    CONSTRAINT `FK_Transaction_ProjectJournal_ProjectJournalID` FOREIGN KEY (`ProjectJournalID`) REFERENCES `ProjectJournal` (`ID`),
    CONSTRAINT `FK_Transaction_ProjectResource_ProjectResourceID` FOREIGN KEY (`ProjectResourceID`) REFERENCES `ProjectResource` (`ID`),
    CONSTRAINT `FK_Transaction_ProjectResourceRole_ProjectResourceRoleID` FOREIGN KEY (`ProjectResourceRoleID`) REFERENCES `ProjectResourceRole` (`ID`),
    CONSTRAINT `FK_Transaction_Task_ProjectTaskID` FOREIGN KEY (`ProjectTaskID`) REFERENCES `Task` (`ID`),
    CONSTRAINT `FK_Transaction_TransactionCategory_TransactionCategoryID` FOREIGN KEY (`TransactionCategoryID`) REFERENCES `TransactionCategory` (`ID`),
    CONSTRAINT `FK_Transaction_Unit_UnitID` FOREIGN KEY (`UnitID`) REFERENCES `Unit` (`ID`),
    CONSTRAINT `FK_Transaction_UnitGroup_UnitGroupID` FOREIGN KEY (`UnitGroupID`) REFERENCES `UnitGroup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CustomPropertyRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Value` longtext CHARACTER SET utf8mb4 NULL,
    `CustomPropertyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DealUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CustomPropertyRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CustomPropertyRecord_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_CustomPropertyRecord_CustomProperty_CustomPropertyID` FOREIGN KEY (`CustomPropertyID`) REFERENCES `CustomProperty` (`ID`),
    CONSTRAINT `FK_CustomPropertyRecord_DealUnit_DealUnitID` FOREIGN KEY (`DealUnitID`) REFERENCES `DealUnit` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseAssignmentType` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Abbreviation` longtext CHARACTER SET utf8mb4 NULL,
    `Weight` double NOT NULL,
    `Quantity` int NOT NULL,
    `Excluded` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseAssignmentType` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseAssignmentType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseAssignmentType_BusinessProfileRecord_BusinessProfileRe~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseAssignmentType_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseCollectionRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `CourseCollectionID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseCollectionRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseCollectionRecord_Item_CourseCollectionID` FOREIGN KEY (`CourseCollectionID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_CourseCollectionRecord_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseContentGroup` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseContentGroup` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseContentGroup_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseContentGroup_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseContentGroup_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseGradingRubric` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `EnablePoints` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseGradingRubric` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseGradingRubric_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseGradingRubric_BusinessProfileRecord_BusinessProfileRec~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseGradingRubric_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseSection` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Icon` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReleaseDateTime` datetime(6) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `HideFromStudents` tinyint(1) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseSection` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseSection_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseSection_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseSection_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseTeamMembership` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `InstructorProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseTeamMembershipType` int NOT NULL,
    CONSTRAINT `PK_CourseTeamMembership` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseTeamMembership_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseTeamMembership_BusinessProfileRecord_BusinessProfileRe~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseTeamMembership_ContactProfile_InstructorProfileID` FOREIGN KEY (`InstructorProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_CourseTeamMembership_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemAttributeOptionRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AttributeOptionID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemAttributeOptionRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemAttributeOptionRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemAttributeOptionRecord_ItemAttributeOption_AttributeOptio~` FOREIGN KEY (`AttributeOptionID`) REFERENCES `ItemAttributeOption` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemBundleRecord` (
    `ProductBundleRecordID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ParentItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemBundleID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ChildItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemBundleRecord` PRIMARY KEY (`ProductBundleRecordID`),
    CONSTRAINT `FK_ItemBundleRecord_Item_ChildItemID` FOREIGN KEY (`ChildItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemBundleRecord_Item_ParentItemID` FOREIGN KEY (`ParentItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemBundleRecord_ItemBundle_ItemBundleID` FOREIGN KEY (`ItemBundleID`) REFERENCES `ItemBundle` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemCategoryRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ItemCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemCategoryRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemCategoryRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemCategoryRecord_ItemCategory_ItemCategoryID` FOREIGN KEY (`ItemCategoryID`) REFERENCES `ItemCategory` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemFamilyRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ItemFamilyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemFamilyRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemFamilyRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemFamilyRecord_ItemFamily_ItemFamilyID` FOREIGN KEY (`ItemFamilyID`) REFERENCES `ItemFamily` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemGoogleCategoryRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemGoogleCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemGoogleCategoryRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemGoogleCategoryRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemGoogleCategoryRecord_ItemGoogleCategory_ItemGoogleCatego~` FOREIGN KEY (`ItemGoogleCategoryID`) REFERENCES `ItemGoogleCategory` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemGroupRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ItemGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemGroupRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemGroupRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemGroupRecord_ItemGroup_ItemGroupID` FOREIGN KEY (`ItemGroupID`) REFERENCES `ItemGroup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemQuestion` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `NeedsRevision` tinyint(1) NOT NULL,
    `Question` longtext CHARACTER SET utf8mb4 NOT NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK_ItemQuestion` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemQuestion_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ItemQuestion_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemQuestion_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemShippingPolicyRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemShippingPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemShippingPolicyRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemShippingPolicyRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ItemShippingPolicyRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemShippingPolicyRecord_Policy_ItemShippingPolicyID` FOREIGN KEY (`ItemShippingPolicyID`) REFERENCES `Policy` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemTagRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ItemTagID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemTagRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemTagRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemTagRecord_ItemTag_ItemTagID` FOREIGN KEY (`ItemTagID`) REFERENCES `ItemTag` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemTypeRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ItemTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemTypeRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemTypeRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemTypeRecord_ItemType_ItemTypeID` FOREIGN KEY (`ItemTypeID`) REFERENCES `ItemType` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `LicenseAttribute` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LicenseTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_LicenseAttribute` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_LicenseAttribute_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_LicenseAttribute_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_LicenseAttribute_Item_LicenseTypeID` FOREIGN KEY (`LicenseTypeID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `LicenseFeature` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccessKeyPairID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LicenseTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_LicenseFeature` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_LicenseFeature_AccessKeyPair_AccessKeyPairID` FOREIGN KEY (`AccessKeyPairID`) REFERENCES `AccessKeyPair` (`IP`),
    CONSTRAINT `FK_LicenseFeature_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_LicenseFeature_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_LicenseFeature_Item_LicenseTypeID` FOREIGN KEY (`LicenseTypeID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PriceListItem` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Price` double NOT NULL,
    `Percent` double NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `UnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `UnitGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PriceListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DiscountListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `RoundingPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `TransactionCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemPriceListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PriceListItem` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PriceListItem_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_PriceListItem_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_PriceListItem_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_PriceListItem_DiscountList_DiscountListID` FOREIGN KEY (`DiscountListID`) REFERENCES `DiscountList` (`ID`),
    CONSTRAINT `FK_PriceListItem_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_PriceListItem_Policy_RoundingPolicyID` FOREIGN KEY (`RoundingPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_PriceListItem_PriceList_ItemPriceListID` FOREIGN KEY (`ItemPriceListID`) REFERENCES `PriceList` (`ID`),
    CONSTRAINT `FK_PriceListItem_PriceList_PriceListID` FOREIGN KEY (`PriceListID`) REFERENCES `PriceList` (`ID`),
    CONSTRAINT `FK_PriceListItem_TransactionCategory_TransactionCategoryID` FOREIGN KEY (`TransactionCategoryID`) REFERENCES `TransactionCategory` (`ID`),
    CONSTRAINT `FK_PriceListItem_Unit_UnitID` FOREIGN KEY (`UnitID`) REFERENCES `Unit` (`ID`),
    CONSTRAINT `FK_PriceListItem_UnitGroup_UnitGroupID` FOREIGN KEY (`UnitGroupID`) REFERENCES `UnitGroup` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SalesLiteratureRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `SalesLiteratureID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SalesLiteratureRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SalesLiteratureRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SalesLiteratureRecord_BusinessProfileRecord_BusinessProfileR~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_SalesLiteratureRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_SalesLiteratureRecord_SalesLiterature_SalesLiteratureID` FOREIGN KEY (`SalesLiteratureID`) REFERENCES `SalesLiterature` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Schedule` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Disabled` tinyint(1) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `FiscalYearID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `HolidayScheduleID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Sunday` tinyint(1) NOT NULL,
    `Monday` tinyint(1) NOT NULL,
    `Tuesday` tinyint(1) NOT NULL,
    `Wednesday` tinyint(1) NOT NULL,
    `Thursday` tinyint(1) NOT NULL,
    `Friday` tinyint(1) NOT NULL,
    `Saturday` tinyint(1) NOT NULL,
    `UniqueInterval` tinyint(1) NOT NULL,
    `_24x7Interval` tinyint(1) NOT NULL,
    `Start` datetime(6) NOT NULL,
    `End` datetime(6) NOT NULL,
    `TimezoneID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `AssetID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ServiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Schedule` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Schedule_Asset_AssetID` FOREIGN KEY (`AssetID`) REFERENCES `Asset` (`ID`),
    CONSTRAINT `FK_Schedule_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Schedule_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Schedule_FiscalYear_FiscalYearID` FOREIGN KEY (`FiscalYearID`) REFERENCES `FiscalYear` (`ID`),
    CONSTRAINT `FK_Schedule_HolidaySchedule_HolidayScheduleID` FOREIGN KEY (`HolidayScheduleID`) REFERENCES `HolidaySchedule` (`ID`),
    CONSTRAINT `FK_Schedule_Item_ServiceID` FOREIGN KEY (`ServiceID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_Schedule_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`),
    CONSTRAINT `FK_Schedule_Timezone_TimezoneID` FOREIGN KEY (`TimezoneID`) REFERENCES `Timezone` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ServiceQueueRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Order` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ServiceQueueID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ServiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ServiceQueueRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ServiceQueueRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ServiceQueueRecord_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ServiceQueueRecord_Item_ServiceID` FOREIGN KEY (`ServiceID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ServiceQueueRecord_ServiceQueue_ServiceQueueID` FOREIGN KEY (`ServiceQueueID`) REFERENCES `ServiceQueue` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SocialGroup` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `AvatarURL` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SocialGroup` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SocialGroup_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SocialGroup_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_SocialGroup_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_SocialGroup_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `TrainingProgramCourse` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TrainingProgramID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_TrainingProgramCourse` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_TrainingProgramCourse_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_TrainingProgramCourse_BusinessProfileRecord_BusinessProfileR~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_TrainingProgramCourse_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_TrainingProgramCourse_TrainingProgram_TrainingProgramID` FOREIGN KEY (`TrainingProgramID`) REFERENCES `TrainingProgram` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WishListRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `WishListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WishListRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WishListRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_WishListRecord_WishList_WishListID` FOREIGN KEY (`WishListID`) REFERENCES `WishList` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `JobOfferApplication` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Start` datetime(6) NOT NULL,
    `End` datetime(6) NOT NULL,
    `CurriculumID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `JobOfferID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `JobApplicantProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_JobOfferApplication` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_JobOfferApplication_ContactProfile_JobApplicantProfileID` FOREIGN KEY (`JobApplicantProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_JobOfferApplication_Curriculum_CurriculumID` FOREIGN KEY (`CurriculumID`) REFERENCES `Curriculum` (`ID`),
    CONSTRAINT `FK_JobOfferApplication_JobOffer_JobOfferID` FOREIGN KEY (`JobOfferID`) REFERENCES `JobOffer` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `RequiredSkillRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `JobOfferID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmployerProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_RequiredSkillRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_RequiredSkillRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_RequiredSkillRecord_ContactProfile_EmployerProfileID` FOREIGN KEY (`EmployerProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_RequiredSkillRecord_JobOffer_JobOfferID` FOREIGN KEY (`JobOfferID`) REFERENCES `JobOffer` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `LeaveReport` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Content` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LeaveApplicationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_LeaveReport` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_LeaveReport_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_LeaveReport_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_LeaveReport_LeaveApplication_LeaveApplicationID` FOREIGN KEY (`LeaveApplicationID`) REFERENCES `LeaveApplication` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `EmployeeTransfer` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Initial` tinyint(1) NOT NULL,
    `Reason` longtext CHARACTER SET utf8mb4 NULL,
    `Remarks` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `EffectiveDate` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmployeeProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessLocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_EmployeeTransfer` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_EmployeeTransfer_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_EmployeeTransfer_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_EmployeeTransfer_ContactProfile_EmployeeProfileID` FOREIGN KEY (`EmployeeProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_EmployeeTransfer_Location_BusinessLocationID` FOREIGN KEY (`BusinessLocationID`) REFERENCES `Location` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemRestockEntry` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Quantity` double NOT NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WarehouseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemRestockID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderItemRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemRestockEntry` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemRestockEntry_BillingItemRecord_OrderItemRecordID` FOREIGN KEY (`OrderItemRecordID`) REFERENCES `BillingItemRecord` (`ID`),
    CONSTRAINT `FK_ItemRestockEntry_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ItemRestockEntry_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemRestockEntry_ItemRestock_ItemRestockID` FOREIGN KEY (`ItemRestockID`) REFERENCES `ItemRestock` (`ID`),
    CONSTRAINT `FK_ItemRestockEntry_Location_WarehouseID` FOREIGN KEY (`WarehouseID`) REFERENCES `Location` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemRetainSample` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WarehouseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemRetainSample` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemRetainSample_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ItemRetainSample_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemRetainSample_Location_WarehouseID` FOREIGN KEY (`WarehouseID`) REFERENCES `Location` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PointOfSale` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `PriceListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PointOfSale` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PointOfSale_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_PointOfSale_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_PointOfSale_Location_LocationID` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`ID`),
    CONSTRAINT `FK_PointOfSale_PriceList_PriceListID` FOREIGN KEY (`PriceListID`) REFERENCES `PriceList` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Quote` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `EffectiveFrom` datetime(6) NOT NULL,
    `QuoteStatus` int NOT NULL,
    `FreightTerms` int NOT NULL,
    `EffectiveTo` datetime(6) NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Closed` tinyint(1) NOT NULL,
    `CostCalculationMethod` int NOT NULL,
    `ForexRatesSnapshot` longtext CHARACTER SET utf8mb4 NULL,
    `ForexRate` double NOT NULL,
    `TotalBaseAmountInUSD` double NOT NULL,
    `TotalDetailAmountInUSD` double NOT NULL,
    `TotalDiscountsInUSD` double NOT NULL,
    `TotalProfitInUSD` double NOT NULL,
    `TotalTaxBaseInUSD` double NOT NULL,
    `TotalTaxesInUSD` double NOT NULL,
    `TotalWithholdingTaxesInUSD` double NOT NULL,
    `TotalShippingCostInUSD` double NOT NULL,
    `TotalShippingTaxesInUSD` double NOT NULL,
    `TotalWarrantyCostInUSD` double NOT NULL,
    `TotalReturnCostInUSD` double NOT NULL,
    `TotalRefundCostInUSD` double NOT NULL,
    `TotalSurchargesInUSD` double NOT NULL,
    `TotalAmountInUSD` double NOT NULL,
    `CustomBaseAmount` double NOT NULL,
    `CustomDetailAmount` double NOT NULL,
    `CustomDiscountsAmount` double NOT NULL,
    `CustomSurchargesAmount` double NOT NULL,
    `CustomProfitAmount` double NOT NULL,
    `CustomShippingCostAmount` double NOT NULL,
    `CustomShippingTaxAmount` double NOT NULL,
    `CustomTaxBase` double NOT NULL,
    `CustomTaxAmount` double NOT NULL,
    `CustomWithholdingTaxAmount` double NOT NULL,
    `CustomTotalAmount` double NOT NULL,
    `TotalGlobalDiscountsInUSD` double NOT NULL,
    `TotalGlobalSurchargesInUSD` double NOT NULL,
    `CustomGlobalSurchargesAmount` double NOT NULL,
    `CustomGlobalDiscountsAmount` double NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IndividualID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PriceListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DealUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentTermID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingMethodID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingLocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingLocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `SupplierProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Quote` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Quote_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_Quote_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Quote_Business_ReceptorBusinessID` FOREIGN KEY (`ReceptorBusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Quote_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Quote_Contact_IndividualID` FOREIGN KEY (`IndividualID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Quote_Contact_OrganizationID` FOREIGN KEY (`OrganizationID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Quote_ContactProfile_SupplierProfileID` FOREIGN KEY (`SupplierProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Quote_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_Quote_DealUnit_DealUnitID` FOREIGN KEY (`DealUnitID`) REFERENCES `DealUnit` (`ID`),
    CONSTRAINT `FK_Quote_Location_BillingLocationID` FOREIGN KEY (`BillingLocationID`) REFERENCES `Location` (`ID`),
    CONSTRAINT `FK_Quote_Location_ShippingLocationID` FOREIGN KEY (`ShippingLocationID`) REFERENCES `Location` (`ID`),
    CONSTRAINT `FK_Quote_PaymentTerm_PaymentTermID` FOREIGN KEY (`PaymentTermID`) REFERENCES `PaymentTerm` (`ID`),
    CONSTRAINT `FK_Quote_PriceList_PriceListID` FOREIGN KEY (`PriceListID`) REFERENCES `PriceList` (`ID`),
    CONSTRAINT `FK_Quote_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`),
    CONSTRAINT `FK_Quote_ShippingMethod_ShippingMethodID` FOREIGN KEY (`ShippingMethodID`) REFERENCES `ShippingMethod` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WalletAccount` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `CreatedTimestamp` datetime(6) NOT NULL,
    `EnabledToRecievePayments` tinyint(1) NOT NULL,
    `WalletCurrentBalanceInUSD` double NOT NULL,
    `Test` tinyint(1) NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `LegalName` longtext CHARACTER SET utf8mb4 NULL,
    `OfficialID` longtext CHARACTER SET utf8mb4 NULL,
    `OfficialIDExpeditionDate` datetime(6) NOT NULL,
    `CustomAddress` longtext CHARACTER SET utf8mb4 NULL,
    `Phone` longtext CHARACTER SET utf8mb4 NULL,
    `Cellphone` longtext CHARACTER SET utf8mb4 NULL,
    `Department` longtext CHARACTER SET utf8mb4 NULL,
    `City` longtext CHARACTER SET utf8mb4 NULL,
    `EthereumAddress` longtext CHARACTER SET utf8mb4 NULL,
    `EthereumPublicKey` longtext CHARACTER SET utf8mb4 NULL,
    `EthereumPrivateKey` longtext CHARACTER SET utf8mb4 NULL,
    `MainNetEtherBalance` decimal(65,30) NOT NULL,
    `TestNetEtherBalance` decimal(65,30) NOT NULL,
    `BitcoinMainNetAddress` longtext CHARACTER SET utf8mb4 NULL,
    `BitcoinTestNetAddress` longtext CHARACTER SET utf8mb4 NULL,
    `BitcoinPublicKey` longtext CHARACTER SET utf8mb4 NULL,
    `BitcoinPrivateKey` longtext CHARACTER SET utf8mb4 NULL,
    `BitcoinMainNetBalance` decimal(65,30) NOT NULL,
    `BitcoinTestNetBalance` decimal(65,30) NOT NULL,
    `RollingReservePercent` decimal(65,30) NOT NULL,
    `RollingReserveTimeInDays` decimal(65,30) NOT NULL,
    `AccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WalletAccount` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WalletAccount_Account_AccountID` FOREIGN KEY (`AccountID`) REFERENCES `Account` (`ID`),
    CONSTRAINT `FK_WalletAccount_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_WalletAccount_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_WalletAccount_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_WalletAccount_ContactProfile_BillingProfileID` FOREIGN KEY (`BillingProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_WalletAccount_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_WalletAccount_Location_LocationID` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `RetentionBonus` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Amount` double NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SalaryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_RetentionBonus` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_RetentionBonus_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_RetentionBonus_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_RetentionBonus_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_RetentionBonus_Salary_SalaryID` FOREIGN KEY (`SalaryID`) REFERENCES `Salary` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SalaryDeduction` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Amount` double NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SalaryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SalaryDeduction` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SalaryDeduction_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SalaryDeduction_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_SalaryDeduction_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_SalaryDeduction_Salary_SalaryID` FOREIGN KEY (`SalaryID`) REFERENCES `Salary` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SalaryEarning` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Amount` double NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SalaryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SalaryEarning` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SalaryEarning_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SalaryEarning_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_SalaryEarning_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_SalaryEarning_Salary_SalaryID` FOREIGN KEY (`SalaryID`) REFERENCES `Salary` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SignedDocument` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `URL` longtext CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Document` longblob NULL,
    `ContentType` longtext CHARACTER SET utf8mb4 NULL,
    `FileLengthInBits` bigint NOT NULL,
    `SignedDataBase64` longtext CHARACTER SET utf8mb4 NULL,
    `PreSignedDataBase64` longtext CHARACTER SET utf8mb4 NULL,
    `Signed` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SignatorCertificateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SigningProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SignedDocument` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SignedDocument_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_SignedDocument_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SignedDocument_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_SignedDocument_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_SignedDocument_ContactProfile_SigningProfileID` FOREIGN KEY (`SigningProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_SignedDocument_SigningCertificate_SignatorCertificateID` FOREIGN KEY (`SignatorCertificateID`) REFERENCES `SigningCertificate` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseCohort` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `StartDateTime` datetime(6) NOT NULL,
    `EndDateTime` datetime(6) NOT NULL,
    `ExpectedStartDateTime` datetime(6) NOT NULL,
    `ExpectedEndDateTime` datetime(6) NOT NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseContentGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseCohortAssignationMethod` int NOT NULL,
    CONSTRAINT `PK_CourseCohort` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseCohort_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseCohort_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseCohort_CourseContentGroup_CourseContentGroupID` FOREIGN KEY (`CourseContentGroupID`) REFERENCES `CourseContentGroup` (`ID`),
    CONSTRAINT `FK_CourseCohort_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseGradingCriteria` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Percent` double NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `GradingRubricID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseGradingCriteria` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseGradingCriteria_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseGradingCriteria_BusinessProfileRecord_BusinessProfileR~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseGradingCriteria_CourseGradingRubric_GradingRubricID` FOREIGN KEY (`GradingRubricID`) REFERENCES `CourseGradingRubric` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseUnit` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `ReleaseDateTime` datetime(6) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Content` longtext CHARACTER SET utf8mb4 NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseSectionID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseContentGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseUnit` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseUnit_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseUnit_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseUnit_CourseContentGroup_CourseContentGroupID` FOREIGN KEY (`CourseContentGroupID`) REFERENCES `CourseContentGroup` (`ID`),
    CONSTRAINT `FK_CourseUnit_CourseSection_CourseSectionID` FOREIGN KEY (`CourseSectionID`) REFERENCES `CourseSection` (`ID`),
    CONSTRAINT `FK_CourseUnit_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemQuestionReply` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Reply` longtext CHARACTER SET utf8mb4 NOT NULL,
    `NeedsRevision` tinyint(1) NOT NULL,
    `SentimentScore` double NOT NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemQuestionID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK_ItemQuestionReply` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemQuestionReply_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ItemQuestionReply_ItemQuestion_ItemQuestionID` FOREIGN KEY (`ItemQuestionID`) REFERENCES `ItemQuestion` (`ID`),
    CONSTRAINT `FK_ItemQuestionReply_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `GenericRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `TaxPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemPriceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PricingRuleID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PriceListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemPricingRuleRecord_ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemRefundPolicyRecord_ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `RefundPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemWarrantyPolicyRecord_ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WarrantyPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemReturnPolicyRecord_ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReturnPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemSellingMarginPolicyRecord_ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemSellingMarginPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_GenericRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_GenericRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_GenericRecord_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_GenericRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_GenericRecord_Item_ItemPricingRuleRecord_ItemID` FOREIGN KEY (`ItemPricingRuleRecord_ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_GenericRecord_Item_ItemRefundPolicyRecord_ItemID` FOREIGN KEY (`ItemRefundPolicyRecord_ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_GenericRecord_Item_ItemReturnPolicyRecord_ItemID` FOREIGN KEY (`ItemReturnPolicyRecord_ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_GenericRecord_Item_ItemSellingMarginPolicyRecord_ItemID` FOREIGN KEY (`ItemSellingMarginPolicyRecord_ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_GenericRecord_Item_ItemWarrantyPolicyRecord_ItemID` FOREIGN KEY (`ItemWarrantyPolicyRecord_ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_GenericRecord_Policy_ItemSellingMarginPolicyID` FOREIGN KEY (`ItemSellingMarginPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_GenericRecord_Policy_PricingRuleID` FOREIGN KEY (`PricingRuleID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_GenericRecord_Policy_RefundPolicyID` FOREIGN KEY (`RefundPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_GenericRecord_Policy_ReturnPolicyID` FOREIGN KEY (`ReturnPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_GenericRecord_Policy_TaxPolicyID` FOREIGN KEY (`TaxPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_GenericRecord_Policy_WarrantyPolicyID` FOREIGN KEY (`WarrantyPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_GenericRecord_PriceList_PriceListID` FOREIGN KEY (`PriceListID`) REFERENCES `PriceList` (`ID`),
    CONSTRAINT `FK_GenericRecord_PriceListItem_ItemPriceID` FOREIGN KEY (`ItemPriceID`) REFERENCES `PriceListItem` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `TimeInterval` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `IsBreak` tinyint(1) NOT NULL,
    `OccustOnMonday` tinyint(1) NOT NULL,
    `OccustOnTuesday` tinyint(1) NOT NULL,
    `OccustOnWednesday` tinyint(1) NOT NULL,
    `OccustOnThursday` tinyint(1) NOT NULL,
    `OccustOnFriday` tinyint(1) NOT NULL,
    `OccustOnSaturday` tinyint(1) NOT NULL,
    `OccustOnSunday` tinyint(1) NOT NULL,
    `Start` datetime(6) NOT NULL,
    `End` datetime(6) NOT NULL,
    `RepeatEvery` int NOT NULL,
    `RepetitionCriteria` int NOT NULL,
    `RecurrenceStart` datetime(6) NOT NULL,
    `RecurrenceEnd` datetime(6) NOT NULL,
    `DayOfTheWeek` int NOT NULL,
    `ScheduleID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentTimeIntervalID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmployeeProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LeaveApplicationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Shift_BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Shift_EmployeeProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TrainingProgramEvent_BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TrainingProgramEvent_BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TrainingProgramID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_TimeInterval` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_TimeInterval_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_TimeInterval_Business_Shift_BusinessID` FOREIGN KEY (`Shift_BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_TimeInterval_Business_TrainingProgramEvent_BusinessID` FOREIGN KEY (`TrainingProgramEvent_BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_TimeInterval_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_TimeInterval_BusinessProfileRecord_TrainingProgramEvent_Busi~` FOREIGN KEY (`TrainingProgramEvent_BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_TimeInterval_ContactProfile_EmployeeProfileID` FOREIGN KEY (`EmployeeProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_TimeInterval_ContactProfile_Shift_EmployeeProfileID` FOREIGN KEY (`Shift_EmployeeProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_TimeInterval_LeaveApplication_LeaveApplicationID` FOREIGN KEY (`LeaveApplicationID`) REFERENCES `LeaveApplication` (`ID`),
    CONSTRAINT `FK_TimeInterval_Schedule_ScheduleID` FOREIGN KEY (`ScheduleID`) REFERENCES `Schedule` (`ID`),
    CONSTRAINT `FK_TimeInterval_TimeInterval_ParentTimeIntervalID` FOREIGN KEY (`ParentTimeIntervalID`) REFERENCES `TimeInterval` (`ID`),
    CONSTRAINT `FK_TimeInterval_TrainingProgram_TrainingProgramID` FOREIGN KEY (`TrainingProgramID`) REFERENCES `TrainingProgram` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SocialGroupEnrollmentRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `IsOwner` tinyint(1) NOT NULL,
    `IsAdmin` tinyint(1) NOT NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `GroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SocialGroupEnrollmentRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SocialGroupEnrollmentRecord_SocialGroup_GroupID` FOREIGN KEY (`GroupID`) REFERENCES `SocialGroup` (`ID`),
    CONSTRAINT `FK_SocialGroupEnrollmentRecord_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemBid` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Amount` decimal(65,30) NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemBid` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemBid_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_ItemBid_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemBid_WalletAccount_WalletAccountID` FOREIGN KEY (`WalletAccountID`) REFERENCES `WalletAccount` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Order` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Closed` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `LastUpdated` datetime(6) NOT NULL,
    `RequestedDelivery` datetime(6) NOT NULL,
    `OrderType` int NOT NULL,
    `OrderStatus` int NOT NULL,
    `FreightTerms` int NOT NULL,
    `CostCalculationMethod` int NOT NULL,
    `ForexRatesSnapshot` longtext CHARACTER SET utf8mb4 NULL,
    `ForexRate` double NOT NULL,
    `TotalBaseAmountInUSD` double NOT NULL,
    `TotalDetailAmountInUSD` double NOT NULL,
    `TotalTaxBaseInUSD` double NOT NULL,
    `TotalDiscountsInUSD` double NOT NULL,
    `TotalProfitInUSD` double NOT NULL,
    `TotalTaxesInUSD` double NOT NULL,
    `TotalWithholdingTaxesInUSD` double NOT NULL,
    `TotalShippingCostInUSD` double NOT NULL,
    `TotalShippingTaxesInUSD` double NOT NULL,
    `TotalWarrantyCostInUSD` double NOT NULL,
    `TotalReturnCostInUSD` double NOT NULL,
    `TotalRefundCostInUSD` double NOT NULL,
    `TotalSurchargesInUSD` double NOT NULL,
    `TotalAmountInUSD` double NOT NULL,
    `CustomBaseAmount` double NOT NULL,
    `CustomDetailAmount` double NOT NULL,
    `CustomDiscountsAmount` double NOT NULL,
    `CustomSurchargesAmount` double NOT NULL,
    `CustomProfitAmount` double NOT NULL,
    `CustomShippingCostAmount` double NOT NULL,
    `CustomShippingTaxAmount` double NOT NULL,
    `CustomTaxBase` double NOT NULL,
    `CustomTaxAmount` double NOT NULL,
    `CustomWithholdingTaxAmount` double NOT NULL,
    `CustomTotalAmount` double NOT NULL,
    `TotalGlobalDiscountsInUSD` double NOT NULL,
    `TotalGlobalSurchargesInUSD` double NOT NULL,
    `CustomGlobalSurchargesAmount` double NOT NULL,
    `CustomGlobalDiscountsAmount` double NOT NULL,
    `FirstName` longtext CHARACTER SET utf8mb4 NULL,
    `LastName` longtext CHARACTER SET utf8mb4 NULL,
    `AddressLine1` longtext CHARACTER SET utf8mb4 NULL,
    `AddressLine2` longtext CHARACTER SET utf8mb4 NULL,
    `PostalCode` longtext CHARACTER SET utf8mb4 NULL,
    `BillingEmail` longtext CHARACTER SET utf8mb4 NULL,
    `CompanyName` longtext CHARACTER SET utf8mb4 NULL,
    `CustomerNotes` longtext CHARACTER SET utf8mb4 NULL,
    `BillingContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingAddressID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingAddressID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IndividualID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryStateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CartID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentOrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `QuoteID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PriceListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingLocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingLocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentTermID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingMethodID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `SalesQuoteID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Order` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Order_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_Order_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Order_Business_ReceptorBusinessID` FOREIGN KEY (`ReceptorBusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Order_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Order_Cart_CartID` FOREIGN KEY (`CartID`) REFERENCES `Cart` (`ID`),
    CONSTRAINT `FK_Order_City_CityID` FOREIGN KEY (`CityID`) REFERENCES `City` (`ID`),
    CONSTRAINT `FK_Order_Contact_BillingContactID` FOREIGN KEY (`BillingContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Order_Contact_IndividualID` FOREIGN KEY (`IndividualID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Order_Contact_OrganizationID` FOREIGN KEY (`OrganizationID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Order_Contact_ShippingContactID` FOREIGN KEY (`ShippingContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Order_ContactProfile_BillingProfileID` FOREIGN KEY (`BillingProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Order_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_Order_CountryState_CountryStateID` FOREIGN KEY (`CountryStateID`) REFERENCES `CountryState` (`ID`),
    CONSTRAINT `FK_Order_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_Order_Location_BillingAddressID` FOREIGN KEY (`BillingAddressID`) REFERENCES `Location` (`ID`),
    CONSTRAINT `FK_Order_Location_BillingLocationID` FOREIGN KEY (`BillingLocationID`) REFERENCES `Location` (`ID`),
    CONSTRAINT `FK_Order_Location_ShippingAddressID` FOREIGN KEY (`ShippingAddressID`) REFERENCES `Location` (`ID`),
    CONSTRAINT `FK_Order_Location_ShippingLocationID` FOREIGN KEY (`ShippingLocationID`) REFERENCES `Location` (`ID`),
    CONSTRAINT `FK_Order_Order_ParentOrderID` FOREIGN KEY (`ParentOrderID`) REFERENCES `Order` (`ID`),
    CONSTRAINT `FK_Order_PaymentTerm_PaymentTermID` FOREIGN KEY (`PaymentTermID`) REFERENCES `PaymentTerm` (`ID`),
    CONSTRAINT `FK_Order_PriceList_PriceListID` FOREIGN KEY (`PriceListID`) REFERENCES `PriceList` (`ID`),
    CONSTRAINT `FK_Order_Quote_QuoteID` FOREIGN KEY (`QuoteID`) REFERENCES `Quote` (`ID`),
    CONSTRAINT `FK_Order_Quote_SalesQuoteID` FOREIGN KEY (`SalesQuoteID`) REFERENCES `Quote` (`ID`),
    CONSTRAINT `FK_Order_ShippingMethod_ShippingMethodID` FOREIGN KEY (`ShippingMethodID`) REFERENCES `ShippingMethod` (`ID`),
    CONSTRAINT `FK_Order_WalletAccount_WalletAccountID` FOREIGN KEY (`WalletAccountID`) REFERENCES `WalletAccount` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PaymentToken` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ValidUntil` datetime(6) NOT NULL,
    `LastUpdated` datetime(6) NOT NULL,
    `Test` tinyint(1) NOT NULL,
    `Mask` longtext CHARACTER SET utf8mb4 NULL,
    `Data` longtext CHARACTER SET utf8mb4 NULL,
    `Token` longtext CHARACTER SET utf8mb4 NULL,
    `TokenId` longtext CHARACTER SET utf8mb4 NULL,
    `Nonce` longtext CHARACTER SET utf8mb4 NULL,
    `Status` longtext CHARACTER SET utf8mb4 NULL,
    `ValidSeconds` int NOT NULL,
    `TokenType` longtext CHARACTER SET utf8mb4 NULL,
    `ObjectType` longtext CHARACTER SET utf8mb4 NULL,
    `CardFranchise` longtext CHARACTER SET utf8mb4 NULL,
    `CardExpiratonMonth` longtext CHARACTER SET utf8mb4 NULL,
    `CardExpiratonYear` longtext CHARACTER SET utf8mb4 NULL,
    `CreatedDateProperty` longtext CHARACTER SET utf8mb4 NULL,
    `WalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentGatewayID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PaymentToken` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PaymentToken_PaymentGateway_PaymentGatewayID` FOREIGN KEY (`PaymentGatewayID`) REFERENCES `PaymentGateway` (`ID`),
    CONSTRAINT `FK_PaymentToken_WalletAccount_WalletAccountID` FOREIGN KEY (`WalletAccountID`) REFERENCES `WalletAccount` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WalletWithdrawRequest` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `RequestedWithdrawAmount` decimal(65,30) NOT NULL,
    `RequestedWithdrawAmountInUSD` decimal(65,30) NOT NULL,
    `WalletWithdrawRequestStatus` int NOT NULL,
    `ForexRate` longtext CHARACTER SET utf8mb4 NULL,
    `ForexRates` longtext CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BankAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WalletWithdrawRequest` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WalletWithdrawRequest_Account_BankAccountID` FOREIGN KEY (`BankAccountID`) REFERENCES `Account` (`ID`),
    CONSTRAINT `FK_WalletWithdrawRequest_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_WalletWithdrawRequest_BusinessProfileRecord_BusinessProfileR~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_WalletWithdrawRequest_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_WalletWithdrawRequest_WalletAccount_WalletAccountID` FOREIGN KEY (`WalletAccountID`) REFERENCES `WalletAccount` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Signature` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ValidationCode` longtext CHARACTER SET utf8mb4 NULL,
    `SignatureImage` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SigningProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SigningDocumentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SigningCertificateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AgreementRevisionID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Signature` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Signature_AgreementRevision_AgreementRevisionID` FOREIGN KEY (`AgreementRevisionID`) REFERENCES `AgreementRevision` (`ID`),
    CONSTRAINT `FK_Signature_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_Signature_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Signature_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Signature_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Signature_ContactProfile_SigningProfileID` FOREIGN KEY (`SigningProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Signature_SignedDocument_SigningDocumentID` FOREIGN KEY (`SigningDocumentID`) REFERENCES `SignedDocument` (`ID`),
    CONSTRAINT `FK_Signature_SigningCertificate_SigningCertificateID` FOREIGN KEY (`SigningCertificateID`) REFERENCES `SigningCertificate` (`ID`),
    CONSTRAINT `FK_Signature_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseEnrollment` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `StudentProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseCohortID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseEnrollment` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseEnrollment_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseEnrollment_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseEnrollment_ContactProfile_StudentProfileID` FOREIGN KEY (`StudentProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_CourseEnrollment_CourseCohort_CourseCohortID` FOREIGN KEY (`CourseCohortID`) REFERENCES `CourseCohort` (`ID`),
    CONSTRAINT `FK_CourseEnrollment_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseGradingCriteriaCategory` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Points` int NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Criteria` longtext CHARACTER SET utf8mb4 NULL,
    `CourseGradingRubricID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseGradingCriteriaID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseGradingCriteriaCategory` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseGradingCriteriaCategory_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseGradingCriteriaCategory_BusinessProfileRecord_Business~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseGradingCriteriaCategory_CourseGradingCriteria_CourseGr~` FOREIGN KEY (`CourseGradingCriteriaID`) REFERENCES `CourseGradingCriteria` (`ID`),
    CONSTRAINT `FK_CourseGradingCriteriaCategory_CourseGradingRubric_CourseGrad~` FOREIGN KEY (`CourseGradingRubricID`) REFERENCES `CourseGradingRubric` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseHandout` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Content` longtext CHARACTER SET utf8mb4 NULL,
    `Url` longtext CHARACTER SET utf8mb4 NULL,
    `File` longblob NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ReleaseDateTime` datetime(6) NOT NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseHandout` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseHandout_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseHandout_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseHandout_CourseUnit_CourseUnitID` FOREIGN KEY (`CourseUnitID`) REFERENCES `CourseUnit` (`ID`),
    CONSTRAINT `FK_CourseHandout_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseLibrary` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ReleaseDateTime` datetime(6) NOT NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseLibrary` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseLibrary_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseLibrary_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseLibrary_CourseUnit_CourseUnitID` FOREIGN KEY (`CourseUnitID`) REFERENCES `CourseUnit` (`ID`),
    CONSTRAINT `FK_CourseLibrary_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseProblemSet` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `OverallScore` double NOT NULL,
    `ReleaseDateTime` datetime(6) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CourseGradingRubricID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseProblemSet` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseProblemSet_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseProblemSet_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseProblemSet_CourseGradingRubric_CourseGradingRubricID` FOREIGN KEY (`CourseGradingRubricID`) REFERENCES `CourseGradingRubric` (`ID`),
    CONSTRAINT `FK_CourseProblemSet_CourseUnit_CourseUnitID` FOREIGN KEY (`CourseUnitID`) REFERENCES `CourseUnit` (`ID`),
    CONSTRAINT `FK_CourseProblemSet_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseWiki` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ReleaseDateTime` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseWiki` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseWiki_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseWiki_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseWiki_CourseUnit_CourseUnitID` FOREIGN KEY (`CourseUnitID`) REFERENCES `CourseUnit` (`ID`),
    CONSTRAINT `FK_CourseWiki_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Payroll` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PayrollPeriodID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Payroll` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Payroll_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Payroll_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Payroll_TimeInterval_PayrollPeriodID` FOREIGN KEY (`PayrollPeriodID`) REFERENCES `TimeInterval` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemOwnership` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ItemBidID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CartID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BlockchainBlockID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemOwnership` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemOwnership_BlockchainBlock_BlockchainBlockID` FOREIGN KEY (`BlockchainBlockID`) REFERENCES `BlockchainBlock` (`ID`),
    CONSTRAINT `FK_ItemOwnership_Cart_CartID` FOREIGN KEY (`CartID`) REFERENCES `Cart` (`ID`),
    CONSTRAINT `FK_ItemOwnership_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemOwnership_ItemBid_ItemBidID` FOREIGN KEY (`ItemBidID`) REFERENCES `ItemBid` (`ID`),
    CONSTRAINT `FK_ItemOwnership_WalletAccount_WalletAccountID` FOREIGN KEY (`WalletAccountID`) REFERENCES `WalletAccount` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Invoice` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Closed` tinyint(1) NOT NULL,
    `Paid` tinyint(1) NOT NULL,
    `Number` bigint NOT NULL,
    `Data` longtext CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Notes` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `TermsAndConditions` longtext CHARACTER SET utf8mb4 NULL,
    `Opening` tinyint(1) NOT NULL,
    `OnHold` tinyint(1) NOT NULL,
    `Expired` tinyint(1) NOT NULL,
    `Reported` tinyint(1) NOT NULL,
    `HoldReason` longtext CHARACTER SET utf8mb4 NULL,
    `IgnorePricingRules` tinyint(1) NOT NULL,
    `RawMaterialsSupplied` tinyint(1) NOT NULL,
    `ToDate` datetime(6) NOT NULL,
    `FromDate` datetime(6) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `PaymentDue` datetime(6) NOT NULL,
    `Expiration` datetime(6) NOT NULL,
    `ReleaseDate` datetime(6) NOT NULL,
    `LastUpdated` datetime(6) NOT NULL,
    `ReportedTimestamp` datetime(6) NOT NULL,
    `InvoiceType` int NOT NULL,
    `DocumentType` int NOT NULL,
    `InvoiceStatus` int NOT NULL,
    `RemainingAmountInUSD` double NOT NULL,
    `ForexRatesSnapshot` longtext CHARACTER SET utf8mb4 NULL,
    `ForexRate` double NOT NULL,
    `TotalBaseAmountInUSD` double NOT NULL,
    `TotalDetailAmountInUSD` double NOT NULL,
    `TotalTaxBaseInUSD` double NOT NULL,
    `TotalDiscountsInUSD` double NOT NULL,
    `TotalProfitInUSD` double NOT NULL,
    `TotalTaxesInUSD` double NOT NULL,
    `TotalWithholdingTaxesInUSD` double NOT NULL,
    `TotalShippingCostInUSD` double NOT NULL,
    `TotalShippingTaxesInUSD` double NOT NULL,
    `TotalWarrantyCostInUSD` double NOT NULL,
    `TotalReturnCostInUSD` double NOT NULL,
    `TotalRefundCostInUSD` double NOT NULL,
    `TotalSurchargesInUSD` double NOT NULL,
    `TotalAmountInUSD` double NOT NULL,
    `CustomBaseAmount` double NOT NULL,
    `CustomDetailAmount` double NOT NULL,
    `CustomTaxBase` double NOT NULL,
    `CustomDiscountsAmount` double NOT NULL,
    `CustomSurchargesAmount` double NOT NULL,
    `CustomProfitAmount` double NOT NULL,
    `CustomShippingCostAmount` double NOT NULL,
    `CustomShippingTaxAmount` double NOT NULL,
    `CustomTaxAmount` double NOT NULL,
    `CustomWithholdingTaxAmount` double NOT NULL,
    `CustomTotalAmount` double NOT NULL,
    `TotalGlobalDiscountsInUSD` double NOT NULL,
    `TotalGlobalSurchargesInUSD` double NOT NULL,
    `CustomGlobalSurchargesAmount` double NOT NULL,
    `CustomGlobalDiscountsAmount` double NOT NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IndividualID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingLocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingLocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmmisorBillingProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorBillingProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `InvoiceEnumerationRangeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmmisorWalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorWalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PriceListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentModeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentTermID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SupplierInvoiceDate` datetime(6) NULL,
    `SupplierInvoiceReference` longtext CHARACTER SET utf8mb4 NULL,
    `PointOfSaleID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Invoice` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Invoice_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_Invoice_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Invoice_Business_ReceptorBusinessID` FOREIGN KEY (`ReceptorBusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Invoice_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Invoice_Contact_IndividualID` FOREIGN KEY (`IndividualID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Invoice_Contact_OrganizationID` FOREIGN KEY (`OrganizationID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Invoice_ContactProfile_EmmisorBillingProfileID` FOREIGN KEY (`EmmisorBillingProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Invoice_ContactProfile_ReceptorBillingProfileID` FOREIGN KEY (`ReceptorBillingProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Invoice_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_Invoice_InvoiceEnumerationRange_InvoiceEnumerationRangeID` FOREIGN KEY (`InvoiceEnumerationRangeID`) REFERENCES `InvoiceEnumerationRange` (`ID`),
    CONSTRAINT `FK_Invoice_Location_BillingLocationID` FOREIGN KEY (`BillingLocationID`) REFERENCES `Location` (`ID`),
    CONSTRAINT `FK_Invoice_Location_ShippingLocationID` FOREIGN KEY (`ShippingLocationID`) REFERENCES `Location` (`ID`),
    CONSTRAINT `FK_Invoice_Order_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`ID`),
    CONSTRAINT `FK_Invoice_PaymentMode_PaymentModeID` FOREIGN KEY (`PaymentModeID`) REFERENCES `PaymentMode` (`ID`),
    CONSTRAINT `FK_Invoice_PaymentTerm_PaymentTermID` FOREIGN KEY (`PaymentTermID`) REFERENCES `PaymentTerm` (`ID`),
    CONSTRAINT `FK_Invoice_PointOfSale_PointOfSaleID` FOREIGN KEY (`PointOfSaleID`) REFERENCES `PointOfSale` (`ID`),
    CONSTRAINT `FK_Invoice_PriceList_PriceListID` FOREIGN KEY (`PriceListID`) REFERENCES `PriceList` (`ID`),
    CONSTRAINT `FK_Invoice_WalletAccount_EmmisorWalletAccountID` FOREIGN KEY (`EmmisorWalletAccountID`) REFERENCES `WalletAccount` (`ID`),
    CONSTRAINT `FK_Invoice_WalletAccount_ReceptorWalletAccountID` FOREIGN KEY (`ReceptorWalletAccountID`) REFERENCES `WalletAccount` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemPackingSlip` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Instructions` longtext CHARACTER SET utf8mb4 NULL,
    `DeliveryNoteID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemPackingSlip` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemPackingSlip_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ItemPackingSlip_DeliveryNote_DeliveryNoteID` FOREIGN KEY (`DeliveryNoteID`) REFERENCES `DeliveryNote` (`ID`),
    CONSTRAINT `FK_ItemPackingSlip_Order_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemPickList` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `OrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WarehouseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemPickList` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemPickList_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ItemPickList_Location_WarehouseID` FOREIGN KEY (`WarehouseID`) REFERENCES `Location` (`ID`),
    CONSTRAINT `FK_ItemPickList_Order_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `OrderRelation` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_OrderRelation` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_OrderRelation_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_OrderRelation_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_OrderRelation_Order_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`ID`),
    CONSTRAINT `FK_OrderRelation_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Shipment` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `IsInternational` tinyint(1) NOT NULL,
    `Delivered` tinyint(1) NOT NULL,
    `Shipped` tinyint(1) NOT NULL,
    `ShippngTimestamp` datetime(6) NOT NULL,
    `DeliveryTimestamp` datetime(6) NOT NULL,
    `ExpectedShippingDate` datetime(6) NOT NULL,
    `ExpectedDeliveryDate` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingItemRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Shipment` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Shipment_BillingItemRecord_BillingItemRecordID` FOREIGN KEY (`BillingItemRecordID`) REFERENCES `BillingItemRecord` (`ID`),
    CONSTRAINT `FK_Shipment_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Shipment_Order_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Entitlement` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Status` int NOT NULL,
    `Quantity` int NOT NULL,
    `Repetitions` int NOT NULL,
    `ChargeAttempts` int NOT NULL,
    `FreeTrialInDays` int NOT NULL,
    `GracePeriodInDays` int NOT NULL,
    `CustomRenewalPeriod` int NOT NULL,
    `RenewalPeriod` int NOT NULL,
    `EnableAutomaticRenew` tinyint(1) NOT NULL,
    `EnableAutomaticDisable` tinyint(1) NOT NULL,
    `EnableAutomaticPayments` tinyint(1) NOT NULL,
    `Data` longtext CHARACTER SET utf8mb4 NULL,
    `DataLabel` longtext CHARACTER SET utf8mb4 NULL,
    `Data1` longtext CHARACTER SET utf8mb4 NULL,
    `Data1Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data2` longtext CHARACTER SET utf8mb4 NULL,
    `Data2Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data3` longtext CHARACTER SET utf8mb4 NULL,
    `Data3Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data4` longtext CHARACTER SET utf8mb4 NULL,
    `Data4Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data5` longtext CHARACTER SET utf8mb4 NULL,
    `Data5Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data6` longtext CHARACTER SET utf8mb4 NULL,
    `Data6Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data7` longtext CHARACTER SET utf8mb4 NULL,
    `Data7Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data8` longtext CHARACTER SET utf8mb4 NULL,
    `Data8Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data9` longtext CHARACTER SET utf8mb4 NULL,
    `Data9Label` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `StartDateTime` datetime(6) NOT NULL,
    `EndDateTime` datetime(6) NOT NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IndividualID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentTokenID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Signature` longtext CHARACTER SET utf8mb4 NULL,
    `PassPhrase` longtext CHARACTER SET utf8mb4 NULL,
    `Class` int NULL,
    `LicenseTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LicensingProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ServiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ServiceLevelID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SubscriptionPlanID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmployeeBenefitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmployeeProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Entitlement` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Entitlement_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_Entitlement_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Entitlement_Business_ReceptorBusinessID` FOREIGN KEY (`ReceptorBusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Entitlement_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Entitlement_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Entitlement_Contact_IndividualID` FOREIGN KEY (`IndividualID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Entitlement_Contact_OrganizationID` FOREIGN KEY (`OrganizationID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Entitlement_ContactProfile_ContactProfileID` FOREIGN KEY (`ContactProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Entitlement_ContactProfile_EmployeeProfileID` FOREIGN KEY (`EmployeeProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Entitlement_ContactProfile_LicensingProfileID` FOREIGN KEY (`LicensingProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Entitlement_EmployeeBenefit_EmployeeBenefitID` FOREIGN KEY (`EmployeeBenefitID`) REFERENCES `EmployeeBenefit` (`ID`),
    CONSTRAINT `FK_Entitlement_Item_LicenseTypeID` FOREIGN KEY (`LicenseTypeID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_Entitlement_Item_ServiceID` FOREIGN KEY (`ServiceID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_Entitlement_Item_ServiceLevelID` FOREIGN KEY (`ServiceLevelID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_Entitlement_Item_SubscriptionPlanID` FOREIGN KEY (`SubscriptionPlanID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_Entitlement_PaymentToken_PaymentTokenID` FOREIGN KEY (`PaymentTokenID`) REFERENCES `PaymentToken` (`ID`),
    CONSTRAINT `FK_Entitlement_WalletAccount_WalletAccountID` FOREIGN KEY (`WalletAccountID`) REFERENCES `WalletAccount` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WalletWithdraw` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `WithdrawStatus` int NOT NULL,
    `WalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WalletWithdrawRequestID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ForexRate` longtext CHARACTER SET utf8mb4 NULL,
    `ForexRates` longtext CHARACTER SET utf8mb4 NULL,
    `BalanceBeforeWithdraw` decimal(65,30) NOT NULL,
    `BalanceAfterWithdraw` decimal(65,30) NOT NULL,
    `WithdrawedAmount` decimal(65,30) NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WalletWithdraw` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WalletWithdraw_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_WalletWithdraw_WalletAccount_WalletAccountID` FOREIGN KEY (`WalletAccountID`) REFERENCES `WalletAccount` (`ID`),
    CONSTRAINT `FK_WalletWithdraw_WalletWithdrawRequest_WalletWithdrawRequestID` FOREIGN KEY (`WalletWithdrawRequestID`) REFERENCES `WalletWithdrawRequest` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseAssignment` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `AsignToAllCohorts` tinyint(1) NOT NULL,
    `Points` double NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Instructions` longtext CHARACTER SET utf8mb4 NULL,
    `DueDateTime` datetime(6) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Resources` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseCohortID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseGradingRubricID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseProblemSetID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseAssignmentTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseAssignment` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseAssignment_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseAssignment_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseAssignment_CourseAssignmentType_CourseAssignmentTypeID` FOREIGN KEY (`CourseAssignmentTypeID`) REFERENCES `CourseAssignmentType` (`ID`),
    CONSTRAINT `FK_CourseAssignment_CourseCohort_CourseCohortID` FOREIGN KEY (`CourseCohortID`) REFERENCES `CourseCohort` (`ID`),
    CONSTRAINT `FK_CourseAssignment_CourseGradingRubric_CourseGradingRubricID` FOREIGN KEY (`CourseGradingRubricID`) REFERENCES `CourseGradingRubric` (`ID`),
    CONSTRAINT `FK_CourseAssignment_CourseProblemSet_CourseProblemSetID` FOREIGN KEY (`CourseProblemSetID`) REFERENCES `CourseProblemSet` (`ID`),
    CONSTRAINT `FK_CourseAssignment_CourseUnit_CourseUnitID` FOREIGN KEY (`CourseUnitID`) REFERENCES `CourseUnit` (`ID`),
    CONSTRAINT `FK_CourseAssignment_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PayrollEntry` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BankAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SalaryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PayrollID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PayrollEntry` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PayrollEntry_Account_BankAccountID` FOREIGN KEY (`BankAccountID`) REFERENCES `Account` (`ID`),
    CONSTRAINT `FK_PayrollEntry_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_PayrollEntry_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_PayrollEntry_Payroll_PayrollID` FOREIGN KEY (`PayrollID`) REFERENCES `Payroll` (`ID`),
    CONSTRAINT `FK_PayrollEntry_Salary_SalaryID` FOREIGN KEY (`SalaryID`) REFERENCES `Salary` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `InvoiceAdjustment` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Priority` int NOT NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `DiscountPercent` double NOT NULL,
    `SurchargePercent` double NOT NULL,
    `DiscountAmount` double NOT NULL,
    `SurchargeAmount` double NOT NULL,
    `TotalDiscount` double NOT NULL,
    `TotalSurcharge` double NOT NULL,
    `Type` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `InvoiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_InvoiceAdjustment` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_InvoiceAdjustment_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_InvoiceAdjustment_BusinessProfileRecord_BusinessProfileRecor~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_InvoiceAdjustment_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_InvoiceAdjustment_Invoice_InvoiceID` FOREIGN KEY (`InvoiceID`) REFERENCES `Invoice` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `InvoiceReference` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ReferralInvoiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReferencedInvoiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_InvoiceReference` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_InvoiceReference_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_InvoiceReference_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_InvoiceReference_Invoice_ReferencedInvoiceID` FOREIGN KEY (`ReferencedInvoiceID`) REFERENCES `Invoice` (`ID`),
    CONSTRAINT `FK_InvoiceReference_Invoice_ReferralInvoiceID` FOREIGN KEY (`ReferralInvoiceID`) REFERENCES `Invoice` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `InvoiceRelation` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `InvoiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `ProjectID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_InvoiceRelation` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_InvoiceRelation_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_InvoiceRelation_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_InvoiceRelation_Invoice_InvoiceID` FOREIGN KEY (`InvoiceID`) REFERENCES `Invoice` (`ID`),
    CONSTRAINT `FK_InvoiceRelation_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemPackingSlipEntry` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Quantity` longtext CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemPackingSlipID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemPackingSlipEntry` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemPackingSlipEntry_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ItemPackingSlipEntry_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemPackingSlipEntry_ItemPackingSlip_ItemPackingSlipID` FOREIGN KEY (`ItemPackingSlipID`) REFERENCES `ItemPackingSlip` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemPickListEntry` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Quantity` double NOT NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WarehouseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemPickListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderItemRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingCouponCartRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingCouponItemRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingCouponOrderRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `DealUnitItemRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `InvoiceItemRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `QuoteItemRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemPickListEntry` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemPickListEntry_BillingItemRecord_BillingCouponCartRecordID` FOREIGN KEY (`BillingCouponCartRecordID`) REFERENCES `BillingItemRecord` (`ID`),
    CONSTRAINT `FK_ItemPickListEntry_BillingItemRecord_BillingCouponItemRecordID` FOREIGN KEY (`BillingCouponItemRecordID`) REFERENCES `BillingItemRecord` (`ID`),
    CONSTRAINT `FK_ItemPickListEntry_BillingItemRecord_BillingCouponOrderRecord~` FOREIGN KEY (`BillingCouponOrderRecordID`) REFERENCES `BillingItemRecord` (`ID`),
    CONSTRAINT `FK_ItemPickListEntry_BillingItemRecord_DealUnitItemRecordID` FOREIGN KEY (`DealUnitItemRecordID`) REFERENCES `BillingItemRecord` (`ID`),
    CONSTRAINT `FK_ItemPickListEntry_BillingItemRecord_InvoiceItemRecordID` FOREIGN KEY (`InvoiceItemRecordID`) REFERENCES `BillingItemRecord` (`ID`),
    CONSTRAINT `FK_ItemPickListEntry_BillingItemRecord_OrderItemRecordID` FOREIGN KEY (`OrderItemRecordID`) REFERENCES `BillingItemRecord` (`ID`),
    CONSTRAINT `FK_ItemPickListEntry_BillingItemRecord_QuoteItemRecordID` FOREIGN KEY (`QuoteItemRecordID`) REFERENCES `BillingItemRecord` (`ID`),
    CONSTRAINT `FK_ItemPickListEntry_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ItemPickListEntry_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ItemPickListEntry_ItemPickList_ItemPickListID` FOREIGN KEY (`ItemPickListID`) REFERENCES `ItemPickList` (`ID`),
    CONSTRAINT `FK_ItemPickListEntry_Location_WarehouseID` FOREIGN KEY (`WarehouseID`) REFERENCES `Location` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShippingLabel` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ExpectedDelivery` datetime(6) NOT NULL,
    `TrackingCode` longtext CHARACTER SET utf8mb4 NULL,
    `LocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShipmentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingCourierID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShippingLabel` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShippingLabel_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ShippingLabel_Location_LocationID` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`ID`),
    CONSTRAINT `FK_ShippingLabel_Shipment_ShipmentID` FOREIGN KEY (`ShipmentID`) REFERENCES `Shipment` (`ID`),
    CONSTRAINT `FK_ShippingLabel_ShippingCourier_ShippingCourierID` FOREIGN KEY (`ShippingCourierID`) REFERENCES `ShippingCourier` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `LicenseAssignment` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `LicenseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LicensingProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_LicenseAssignment` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_LicenseAssignment_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_LicenseAssignment_BusinessProfileRecord_BusinessProfileRecor~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_LicenseAssignment_ContactProfile_LicensingProfileID` FOREIGN KEY (`LicensingProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_LicenseAssignment_Entitlement_LicenseID` FOREIGN KEY (`LicenseID`) REFERENCES `Entitlement` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Payment` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Closed` tinyint(1) NOT NULL,
    `Test` tinyint(1) NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Data` longtext CHARACTER SET utf8mb4 NULL,
    `DataLabel` longtext CHARACTER SET utf8mb4 NULL,
    `Data1` longtext CHARACTER SET utf8mb4 NULL,
    `Data1Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data2` longtext CHARACTER SET utf8mb4 NULL,
    `Data2Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data3` longtext CHARACTER SET utf8mb4 NULL,
    `Data3Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data4` longtext CHARACTER SET utf8mb4 NULL,
    `Data4Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data5` longtext CHARACTER SET utf8mb4 NULL,
    `Data5Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data6` longtext CHARACTER SET utf8mb4 NULL,
    `Data6Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data7` longtext CHARACTER SET utf8mb4 NULL,
    `Data7Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data8` longtext CHARACTER SET utf8mb4 NULL,
    `Data8Label` longtext CHARACTER SET utf8mb4 NULL,
    `Data9` longtext CHARACTER SET utf8mb4 NULL,
    `Data9Label` longtext CHARACTER SET utf8mb4 NULL,
    `Response` longtext CHARACTER SET utf8mb4 NULL,
    `Authorization` longtext CHARACTER SET utf8mb4 NULL,
    `ReferenceCode` longtext CHARACTER SET utf8mb4 NULL,
    `CorrelationCode` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `LastUpdated` datetime(6) NOT NULL,
    `OnBehalfOf` int NOT NULL,
    `PaymentType` int NOT NULL,
    `PaymentStatus` int NOT NULL,
    `ForexRate` decimal(65,30) NOT NULL,
    `BaseCost` decimal(65,30) NOT NULL,
    `TotalCost` decimal(65,30) NOT NULL,
    `TotalTaxes` decimal(65,30) NOT NULL,
    `Signature` longtext CHARACTER SET utf8mb4 NULL,
    `SignatureMismatch` tinyint(1) NOT NULL,
    `IsExternal` tinyint(1) NOT NULL,
    `MarkedForRevision` tinyint(1) NOT NULL,
    `ForexRatesSnapshot` longtext CHARACTER SET utf8mb4 NULL,
    `OfficialID` longtext CHARACTER SET utf8mb4 NULL,
    `OfficialIDExpeditionDate` datetime(6) NOT NULL,
    `FiscalIdentificationTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BillingAddress` longtext CHARACTER SET utf8mb4 NULL,
    `Phone` longtext CHARACTER SET utf8mb4 NULL,
    `Cellphone` longtext CHARACTER SET utf8mb4 NULL,
    `Department` longtext CHARACTER SET utf8mb4 NULL,
    `City` longtext CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `LocationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EntitlementID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AntiFraudScore` decimal(65,30) NOT NULL,
    `CallRecord` longblob NULL,
    `CallRecordURL` longtext CHARACTER SET utf8mb4 NULL,
    `Called` tinyint(1) NOT NULL,
    `Verified` tinyint(1) NOT NULL,
    `PayerPictureTimestamp` longtext CHARACTER SET utf8mb4 NULL,
    `PayerPicture` longtext CHARACTER SET utf8mb4 NULL,
    `IdentificationPictureTimestamp` longtext CHARACTER SET utf8mb4 NULL,
    `IdentificationPicture` longtext CHARACTER SET utf8mb4 NULL,
    `IdentificationBackPicture` longtext CHARACTER SET utf8mb4 NULL,
    `IdentificationBackPictureTimestamp` longtext CHARACTER SET utf8mb4 NULL,
    `IPLookupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `InvoiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountingEntryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentGatewayID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BankAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PayerBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IndividualID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BankID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentTokenID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmmisorWalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorWalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Payment` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Payment_Account_BankAccountID` FOREIGN KEY (`BankAccountID`) REFERENCES `Account` (`ID`),
    CONSTRAINT `FK_Payment_AccountingEntry_AccountingEntryID` FOREIGN KEY (`AccountingEntryID`) REFERENCES `AccountingEntry` (`ID`),
    CONSTRAINT `FK_Payment_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_Payment_Bank_BankID` FOREIGN KEY (`BankID`) REFERENCES `Bank` (`ID`),
    CONSTRAINT `FK_Payment_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Payment_Business_PayerBusinessID` FOREIGN KEY (`PayerBusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Payment_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Payment_Contact_IndividualID` FOREIGN KEY (`IndividualID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Payment_Contact_OrganizationID` FOREIGN KEY (`OrganizationID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Payment_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_Payment_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_Payment_Entitlement_EntitlementID` FOREIGN KEY (`EntitlementID`) REFERENCES `Entitlement` (`ID`),
    CONSTRAINT `FK_Payment_FiscalIdentificationType_FiscalIdentificationTypeID` FOREIGN KEY (`FiscalIdentificationTypeID`) REFERENCES `FiscalIdentificationType` (`ID`),
    CONSTRAINT `FK_Payment_Invoice_InvoiceID` FOREIGN KEY (`InvoiceID`) REFERENCES `Invoice` (`ID`),
    CONSTRAINT `FK_Payment_IPLookup_IPLookupID` FOREIGN KEY (`IPLookupID`) REFERENCES `IPLookup` (`ID`),
    CONSTRAINT `FK_Payment_Location_LocationID` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`ID`),
    CONSTRAINT `FK_Payment_Order_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`ID`),
    CONSTRAINT `FK_Payment_PaymentGateway_PaymentGatewayID` FOREIGN KEY (`PaymentGatewayID`) REFERENCES `PaymentGateway` (`ID`),
    CONSTRAINT `FK_Payment_PaymentToken_PaymentTokenID` FOREIGN KEY (`PaymentTokenID`) REFERENCES `PaymentToken` (`ID`),
    CONSTRAINT `FK_Payment_WalletAccount_EmmisorWalletAccountID` FOREIGN KEY (`EmmisorWalletAccountID`) REFERENCES `WalletAccount` (`ID`),
    CONSTRAINT `FK_Payment_WalletAccount_ReceptorWalletAccountID` FOREIGN KEY (`ReceptorWalletAccountID`) REFERENCES `WalletAccount` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ServiceCase` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IndividualID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ServiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ServiceQueueID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ServiceLevelAgreementID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ServiceCaseTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ServiceCase` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ServiceCase_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_ServiceCase_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ServiceCase_Business_ReceptorBusinessID` FOREIGN KEY (`ReceptorBusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ServiceCase_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ServiceCase_Contact_IndividualID` FOREIGN KEY (`IndividualID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_ServiceCase_Contact_OrganizationID` FOREIGN KEY (`OrganizationID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_ServiceCase_Entitlement_ServiceLevelAgreementID` FOREIGN KEY (`ServiceLevelAgreementID`) REFERENCES `Entitlement` (`ID`),
    CONSTRAINT `FK_ServiceCase_Item_ServiceID` FOREIGN KEY (`ServiceID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ServiceCase_ServiceCaseType_ServiceCaseTypeID` FOREIGN KEY (`ServiceCaseTypeID`) REFERENCES `ServiceCaseType` (`ID`),
    CONSTRAINT `FK_ServiceCase_ServiceQueue_ServiceQueueID` FOREIGN KEY (`ServiceQueueID`) REFERENCES `ServiceQueue` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SupportPriority` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SupportEntitlementID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SupportPriority` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SupportPriority_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SupportPriority_Entitlement_SupportEntitlementID` FOREIGN KEY (`SupportEntitlementID`) REFERENCES `Entitlement` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseAssignmentSubmit` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Content` longtext CHARACTER SET utf8mb4 NULL,
    `Result` longtext CHARACTER SET utf8mb4 NULL,
    `Score` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `CourseAssignmentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `GradingCriteriaCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `InstructorProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `StudentProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseAssignmentSubmit` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseAssignmentSubmit_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseAssignmentSubmit_ContactProfile_InstructorProfileID` FOREIGN KEY (`InstructorProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_CourseAssignmentSubmit_ContactProfile_StudentProfileID` FOREIGN KEY (`StudentProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_CourseAssignmentSubmit_CourseAssignment_CourseAssignmentID` FOREIGN KEY (`CourseAssignmentID`) REFERENCES `CourseAssignment` (`ID`),
    CONSTRAINT `FK_CourseAssignmentSubmit_CourseGradingCriteriaCategory_Grading~` FOREIGN KEY (`GradingCriteriaCategoryID`) REFERENCES `CourseGradingCriteriaCategory` (`ID`),
    CONSTRAINT `FK_CourseAssignmentSubmit_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WebContent` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Order` int NOT NULL,
    `Slug` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Excerpt` longtext CHARACTER SET utf8mb4 NULL,
    `Password` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `HighlightImage` longtext CHARACTER SET utf8mb4 NULL,
    `CanonicalUrl` longtext CHARACTER SET utf8mb4 NULL,
    `SeoTitle` longtext CHARACTER SET utf8mb4 NULL,
    `SeoKeyWords` longtext CHARACTER SET utf8mb4 NULL,
    `SeoKeyPhrases` longtext CHARACTER SET utf8mb4 NULL,
    `MetaDescription` longtext CHARACTER SET utf8mb4 NULL,
    `TwitterImage` longtext CHARACTER SET utf8mb4 NULL,
    `TwitterTitle` longtext CHARACTER SET utf8mb4 NULL,
    `TwitterDescription` longtext CHARACTER SET utf8mb4 NULL,
    `FacebookImage` longtext CHARACTER SET utf8mb4 NULL,
    `FacebookTitle` longtext CHARACTER SET utf8mb4 NULL,
    `FacebookDescription` longtext CHARACTER SET utf8mb4 NULL,
    `FeaturedImageURL` longtext CHARACTER SET utf8mb4 NULL,
    `Content` longtext CHARACTER SET utf8mb4 NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Namespace` longtext CHARACTER SET utf8mb4 NULL,
    `TypeName` longtext CHARACTER SET utf8mb4 NULL,
    `GeneratedCode` longtext CHARACTER SET utf8mb4 NULL,
    `CompiledCode` longblob NULL,
    `CompilationPath` longtext CHARACTER SET utf8mb4 NULL,
    `CodeType` int NULL,
    `HTMLContent` longtext CHARACTER SET utf8mb4 NULL,
    `CSharpContent` longtext CHARACTER SET utf8mb4 NULL,
    `RazorContent` longtext CHARACTER SET utf8mb4 NULL,
    `CSSContent` longtext CHARACTER SET utf8mb4 NULL,
    `JSContent` longtext CHARACTER SET utf8mb4 NULL,
    `CSSFiles` longtext CHARACTER SET utf8mb4 NULL,
    `JSFiles` longtext CHARACTER SET utf8mb4 NULL,
    `RazorGeneratedCode` longtext CHARACTER SET utf8mb4 NULL,
    `CSharpGeneratedCode` longtext CHARACTER SET utf8mb4 NULL,
    `PrecompiledView` longblob NULL,
    `PrecompiledLogic` longblob NULL,
    `PrecompiledLogicSize` int NOT NULL,
    `PrecompiledLogicSizeLong` bigint NOT NULL,
    `PrecompiledViewSize` int NOT NULL,
    `PrecompiledViewSizeLong` bigint NOT NULL,
    `PrecompiledLogicViewSize` int NOT NULL,
    `Template` tinyint(1) NOT NULL,
    `Default` tinyint(1) NOT NULL,
    `Enable` tinyint(1) NOT NULL,
    `EnableComments` tinyint(1) NOT NULL,
    `DisplaySocialBox` tinyint(1) NOT NULL,
    `Published` tinyint(1) NOT NULL,
    `InTrashCan` tinyint(1) NOT NULL,
    `SystemLocked` tinyint(1) NOT NULL,
    `AllowPingbacks` tinyint(1) NOT NULL,
    `AllowTrackbacks` tinyint(1) NOT NULL,
    `CornerstoneContent` tinyint(1) NOT NULL,
    `IsEssentialContent` tinyint(1) NOT NULL,
    `AllowSearchEngineIndexing` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ReleaseDateTime` datetime(6) NOT NULL,
    `LastModification` datetime(6) NOT NULL,
    `TrashedTimestamp` datetime(6) NOT NULL,
    `DeletionTimestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebPortalID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebsiteThemeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentWebContentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentWebContentVersionID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseAssignmentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseAssignmentComponent_CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Form` longtext CHARACTER SET utf8mb4 NULL,
    `WebForum_WebTemplateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebForumCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseForum_CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebPage_WebTemplateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IsHomePage` tinyint(1) NULL,
    `IsStorePage` tinyint(1) NULL,
    `IsCartPage` tinyint(1) NULL,
    `IsBlogPage` tinyint(1) NULL,
    `IsAccountPage` tinyint(1) NULL,
    `IsCheckoutPage` tinyint(1) NULL,
    `IsWishListsPage` tinyint(1) NULL,
    `IsContactPage` tinyint(1) NULL,
    `IsPrivacyPolicyPage` tinyint(1) NULL,
    `IsTermsOfServicePage` tinyint(1) NULL,
    `WebPageVisibility` int NULL,
    `WebPage_WebFormID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BlogPostCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebTemplateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebFormID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseWikiID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseCompletionCertificateTemplate_CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseUnitComponent_CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CoursePage_CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseUpdate_CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MarketingCampaignID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `NewsletterID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WebContent` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WebContent_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_WebContent_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_WebContent_CourseAssignment_CourseAssignmentID` FOREIGN KEY (`CourseAssignmentID`) REFERENCES `CourseAssignment` (`ID`),
    CONSTRAINT `FK_WebContent_CourseUnit_CourseUnitID` FOREIGN KEY (`CourseUnitID`) REFERENCES `CourseUnit` (`ID`),
    CONSTRAINT `FK_WebContent_CourseWiki_CourseWikiID` FOREIGN KEY (`CourseWikiID`) REFERENCES `CourseWiki` (`ID`),
    CONSTRAINT `FK_WebContent_Item_CourseAssignmentComponent_CourseID` FOREIGN KEY (`CourseAssignmentComponent_CourseID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_WebContent_Item_CourseCompletionCertificateTemplate_CourseID` FOREIGN KEY (`CourseCompletionCertificateTemplate_CourseID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_WebContent_Item_CourseForum_CourseID` FOREIGN KEY (`CourseForum_CourseID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_WebContent_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_WebContent_Item_CoursePage_CourseID` FOREIGN KEY (`CoursePage_CourseID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_WebContent_Item_CourseUnitComponent_CourseID` FOREIGN KEY (`CourseUnitComponent_CourseID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_WebContent_Item_CourseUpdate_CourseID` FOREIGN KEY (`CourseUpdate_CourseID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_WebContent_MarketingCampaign_MarketingCampaignID` FOREIGN KEY (`MarketingCampaignID`) REFERENCES `MarketingCampaign` (`ID`),
    CONSTRAINT `FK_WebContent_Newsletter_NewsletterID` FOREIGN KEY (`NewsletterID`) REFERENCES `Newsletter` (`ID`),
    CONSTRAINT `FK_WebContent_Taxonomy_BlogPostCategoryID` FOREIGN KEY (`BlogPostCategoryID`) REFERENCES `Taxonomy` (`ID`),
    CONSTRAINT `FK_WebContent_Taxonomy_WebForumCategoryID` FOREIGN KEY (`WebForumCategoryID`) REFERENCES `Taxonomy` (`ID`),
    CONSTRAINT `FK_WebContent_WebContent_ParentWebContentID` FOREIGN KEY (`ParentWebContentID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_WebContent_WebContent_ParentWebContentVersionID` FOREIGN KEY (`ParentWebContentVersionID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_WebContent_WebContent_WebFormID` FOREIGN KEY (`WebFormID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_WebContent_WebContent_WebForum_WebTemplateID` FOREIGN KEY (`WebForum_WebTemplateID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_WebContent_WebContent_WebPage_WebFormID` FOREIGN KEY (`WebPage_WebFormID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_WebContent_WebContent_WebPage_WebTemplateID` FOREIGN KEY (`WebPage_WebTemplateID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_WebContent_WebContent_WebTemplateID` FOREIGN KEY (`WebTemplateID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_WebContent_WebPortal_WebPortalID` FOREIGN KEY (`WebPortalID`) REFERENCES `WebPortal` (`ID`),
    CONSTRAINT `FK_WebContent_WebsiteTheme_WebsiteThemeID` FOREIGN KEY (`WebsiteThemeID`) REFERENCES `WebsiteTheme` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ShippingPackage` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Code` longtext CHARACTER SET utf8mb4 NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Width` double NOT NULL,
    `Length` double NOT NULL,
    `Height` double NOT NULL,
    `EmptyWeight` double NOT NULL,
    `ServicePackage` tinyint(1) NOT NULL,
    `ShippingCourierID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ShippingLabelID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SpatialUnit` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ShippingPackage` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ShippingPackage_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ShippingPackage_ShippingCourier_ShippingCourierID` FOREIGN KEY (`ShippingCourierID`) REFERENCES `ShippingCourier` (`ID`),
    CONSTRAINT `FK_ShippingPackage_ShippingLabel_ShippingLabelID` FOREIGN KEY (`ShippingLabelID`) REFERENCES `ShippingLabel` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PaymentDeduction` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Amount` double NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CostCentreID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PaymentDeduction` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PaymentDeduction_Account_AccountID` FOREIGN KEY (`AccountID`) REFERENCES `Account` (`ID`),
    CONSTRAINT `FK_PaymentDeduction_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_PaymentDeduction_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_PaymentDeduction_CostCentre_CostCentreID` FOREIGN KEY (`CostCentreID`) REFERENCES `CostCentre` (`ID`),
    CONSTRAINT `FK_PaymentDeduction_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_PaymentDeduction_Payment_PaymentID` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PaymentDispute` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Closed` tinyint(1) NOT NULL,
    `DisputedAmount` decimal(65,30) NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentGatewayID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmmisorWalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorWalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PaymentDispute` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PaymentDispute_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_PaymentDispute_Payment_PaymentID` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`ID`),
    CONSTRAINT `FK_PaymentDispute_PaymentGateway_PaymentGatewayID` FOREIGN KEY (`PaymentGatewayID`) REFERENCES `PaymentGateway` (`ID`),
    CONSTRAINT `FK_PaymentDispute_WalletAccount_EmmisorWalletAccountID` FOREIGN KEY (`EmmisorWalletAccountID`) REFERENCES `WalletAccount` (`ID`),
    CONSTRAINT `FK_PaymentDispute_WalletAccount_ReceptorWalletAccountID` FOREIGN KEY (`ReceptorWalletAccountID`) REFERENCES `WalletAccount` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Receipt` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Closed` tinyint(1) NOT NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ReceiptType` int NOT NULL,
    `OrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `InvoiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK_Receipt` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Receipt_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_Receipt_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Receipt_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Receipt_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Receipt_Invoice_InvoiceID` FOREIGN KEY (`InvoiceID`) REFERENCES `Invoice` (`ID`),
    CONSTRAINT `FK_Receipt_Order_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`ID`),
    CONSTRAINT `FK_Receipt_Payment_PaymentID` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SupportRequest` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Approved` tinyint(1) NOT NULL,
    `ApprovedTimestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SupportEntitlementID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `RefundPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReturnPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WarrantyPolicyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SupportRequest` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SupportRequest_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_SupportRequest_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SupportRequest_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_SupportRequest_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_SupportRequest_Entitlement_SupportEntitlementID` FOREIGN KEY (`SupportEntitlementID`) REFERENCES `Entitlement` (`ID`),
    CONSTRAINT `FK_SupportRequest_Payment_PaymentID` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`ID`),
    CONSTRAINT `FK_SupportRequest_Policy_RefundPolicyID` FOREIGN KEY (`RefundPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_SupportRequest_Policy_ReturnPolicyID` FOREIGN KEY (`ReturnPolicyID`) REFERENCES `Policy` (`ID`),
    CONSTRAINT `FK_SupportRequest_Policy_WarrantyPolicyID` FOREIGN KEY (`WarrantyPolicyID`) REFERENCES `Policy` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ServicePersonnelRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `EmployeeProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ServiceCaseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ServiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ServicePersonnelRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ServicePersonnelRecord_ContactProfile_EmployeeProfileID` FOREIGN KEY (`EmployeeProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_ServicePersonnelRecord_Item_ServiceID` FOREIGN KEY (`ServiceID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ServicePersonnelRecord_ServiceCase_ServiceCaseID` FOREIGN KEY (`ServiceCaseID`) REFERENCES `ServiceCase` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `CourseCompletionCertificate` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `StudentProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseEnrollmentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseCompletionCertificateTemplateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_CourseCompletionCertificate` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_CourseCompletionCertificate_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_CourseCompletionCertificate_BusinessProfileRecord_BusinessPr~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_CourseCompletionCertificate_ContactProfile_StudentProfileID` FOREIGN KEY (`StudentProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_CourseCompletionCertificate_CourseEnrollment_CourseEnrollmen~` FOREIGN KEY (`CourseEnrollmentID`) REFERENCES `CourseEnrollment` (`ID`),
    CONSTRAINT `FK_CourseCompletionCertificate_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_CourseCompletionCertificate_WebContent_CourseCompletionCerti~` FOREIGN KEY (`CourseCompletionCertificateTemplateID`) REFERENCES `WebContent` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `EmailRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `SendedTimestamp` datetime(6) NOT NULL,
    `ReadedTimestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorBusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IndividualID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrganizationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Readed` tinyint(1) NOT NULL,
    `Email` longtext CHARACTER SET utf8mb4 NULL,
    `Content` longtext CHARACTER SET utf8mb4 NULL,
    `MarketingCampaignID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmailTemplateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmailSignatureID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_EmailRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_EmailRecord_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_EmailRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_EmailRecord_Business_ReceptorBusinessID` FOREIGN KEY (`ReceptorBusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_EmailRecord_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_EmailRecord_Contact_IndividualID` FOREIGN KEY (`IndividualID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_EmailRecord_Contact_OrganizationID` FOREIGN KEY (`OrganizationID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_EmailRecord_MarketingCampaign_MarketingCampaignID` FOREIGN KEY (`MarketingCampaignID`) REFERENCES `MarketingCampaign` (`ID`),
    CONSTRAINT `FK_EmailRecord_WebContent_EmailSignatureID` FOREIGN KEY (`EmailSignatureID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_EmailRecord_WebContent_EmailTemplateID` FOREIGN KEY (`EmailTemplateID`) REFERENCES `WebContent` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Review` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ReviewScore` double NOT NULL,
    `ReviewMessage` longtext CHARACTER SET utf8mb4 NOT NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `SupplierProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BlogPostID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TrainingProgramReview_BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TrainingProgramID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Review` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Review_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Review_Business_TrainingProgramReview_BusinessID` FOREIGN KEY (`TrainingProgramReview_BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Review_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_Review_ContactProfile_SupplierProfileID` FOREIGN KEY (`SupplierProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Review_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_Review_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`),
    CONSTRAINT `FK_Review_TrainingProgram_TrainingProgramID` FOREIGN KEY (`TrainingProgramID`) REFERENCES `TrainingProgram` (`ID`),
    CONSTRAINT `FK_Review_WebContent_BlogPostID` FOREIGN KEY (`BlogPostID`) REFERENCES `WebContent` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SocialPost` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Message` longtext CHARACTER SET utf8mb4 NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BlogPostID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialFeedID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebForumID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialGroupID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebPageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SocialPost` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SocialPost_SocialFeed_SocialFeedID` FOREIGN KEY (`SocialFeedID`) REFERENCES `SocialFeed` (`ID`),
    CONSTRAINT `FK_SocialPost_SocialGroup_SocialGroupID` FOREIGN KEY (`SocialGroupID`) REFERENCES `SocialGroup` (`ID`),
    CONSTRAINT `FK_SocialPost_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`),
    CONSTRAINT `FK_SocialPost_WebContent_BlogPostID` FOREIGN KEY (`BlogPostID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_SocialPost_WebContent_WebForumID` FOREIGN KEY (`WebForumID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_SocialPost_WebContent_WebPageID` FOREIGN KEY (`WebPageID`) REFERENCES `WebContent` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `WebFormSubmit` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Body` longtext CHARACTER SET utf8mb4 NULL,
    `WebFormID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_WebFormSubmit` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_WebFormSubmit_WebContent_WebFormID` FOREIGN KEY (`WebFormID`) REFERENCES `WebContent` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `InquiryRequest` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `LastName` longtext CHARACTER SET utf8mb4 NULL,
    `Email` longtext CHARACTER SET utf8mb4 NULL,
    `OrganizationName` longtext CHARACTER SET utf8mb4 NULL,
    `JobRole` longtext CHARACTER SET utf8mb4 NULL,
    `OrganizationDomain` longtext CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Phone` longtext CHARACTER SET utf8mb4 NULL,
    `Message` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PaymentDisputeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WalletAccountID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessTeamID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessUnitID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_InquiryRequest` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_InquiryRequest_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_InquiryRequest_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_InquiryRequest_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_InquiryRequest_BusinessTeam_BusinessTeamID` FOREIGN KEY (`BusinessTeamID`) REFERENCES `BusinessTeam` (`ID`),
    CONSTRAINT `FK_InquiryRequest_BusinessUnit_BusinessUnitID` FOREIGN KEY (`BusinessUnitID`) REFERENCES `BusinessUnit` (`ID`),
    CONSTRAINT `FK_InquiryRequest_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_InquiryRequest_PaymentDispute_PaymentDisputeID` FOREIGN KEY (`PaymentDisputeID`) REFERENCES `PaymentDispute` (`ID`),
    CONSTRAINT `FK_InquiryRequest_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`),
    CONSTRAINT `FK_InquiryRequest_WalletAccount_WalletAccountID` FOREIGN KEY (`WalletAccountID`) REFERENCES `WalletAccount` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `OrderReturn` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Arrived` tinyint(1) NOT NULL,
    `Verified` tinyint(1) NOT NULL,
    `Approved` tinyint(1) NOT NULL,
    `ApprovedTimestamp` datetime(6) NOT NULL,
    `OrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReturnRequestID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_OrderReturn` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_OrderReturn_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_OrderReturn_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_OrderReturn_Order_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`ID`),
    CONSTRAINT `FK_OrderReturn_SupportRequest_ReturnRequestID` FOREIGN KEY (`ReturnRequestID`) REFERENCES `SupportRequest` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `OrderWarranty` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ApprovedTimestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WarrantyRequestID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_OrderWarranty` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_OrderWarranty_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_OrderWarranty_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_OrderWarranty_SupportRequest_WarrantyRequestID` FOREIGN KEY (`WarrantyRequestID`) REFERENCES `SupportRequest` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SupportTicket` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `SupportTicketStatus` int NOT NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SupportTicketTypeID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SupportEntitlementID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SupportPriorityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SupportRequestID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SupportTicket` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SupportTicket_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_SupportTicket_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_SupportTicket_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_SupportTicket_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_SupportTicket_Entitlement_SupportEntitlementID` FOREIGN KEY (`SupportEntitlementID`) REFERENCES `Entitlement` (`ID`),
    CONSTRAINT `FK_SupportTicket_SupportPriority_SupportPriorityID` FOREIGN KEY (`SupportPriorityID`) REFERENCES `SupportPriority` (`ID`),
    CONSTRAINT `FK_SupportTicket_SupportRequest_SupportRequestID` FOREIGN KEY (`SupportRequestID`) REFERENCES `SupportRequest` (`ID`),
    CONSTRAINT `FK_SupportTicket_SupportTicketType_SupportTicketTypeID` FOREIGN KEY (`SupportTicketTypeID`) REFERENCES `SupportTicketType` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SocialComment` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Message` longtext CHARACTER SET utf8mb4 NULL,
    `OwnerSocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialPostID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentCommentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BlogPostID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SocialComment` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SocialComment_SocialComment_ParentCommentID` FOREIGN KEY (`ParentCommentID`) REFERENCES `SocialComment` (`ID`),
    CONSTRAINT `FK_SocialComment_SocialPost_SocialPostID` FOREIGN KEY (`SocialPostID`) REFERENCES `SocialPost` (`ID`),
    CONSTRAINT `FK_SocialComment_SocialProfile_OwnerSocialProfileID` FOREIGN KEY (`OwnerSocialProfileID`) REFERENCES `SocialProfile` (`ID`),
    CONSTRAINT `FK_SocialComment_WebContent_BlogPostID` FOREIGN KEY (`BlogPostID`) REFERENCES `WebContent` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `TaxonomyRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TaxonomyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebContentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `SocialForumPostID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IsMainCategory` tinyint(1) NULL,
    `WebPageCategoryRecord_WebPageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebPageCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebPageTagID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WebPageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BlogPostCategoryRecord_BlogPostID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BlogPostID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `KnowledgeArticleCategoryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `KnowledgeArticleID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_TaxonomyRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_TaxonomyRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_TaxonomyRecord_SocialPost_SocialForumPostID` FOREIGN KEY (`SocialForumPostID`) REFERENCES `SocialPost` (`ID`),
    CONSTRAINT `FK_TaxonomyRecord_Taxonomy_KnowledgeArticleCategoryID` FOREIGN KEY (`KnowledgeArticleCategoryID`) REFERENCES `Taxonomy` (`ID`),
    CONSTRAINT `FK_TaxonomyRecord_Taxonomy_TaxonomyID` FOREIGN KEY (`TaxonomyID`) REFERENCES `Taxonomy` (`ID`),
    CONSTRAINT `FK_TaxonomyRecord_Taxonomy_WebPageCategoryID` FOREIGN KEY (`WebPageCategoryID`) REFERENCES `Taxonomy` (`ID`),
    CONSTRAINT `FK_TaxonomyRecord_Taxonomy_WebPageTagID` FOREIGN KEY (`WebPageTagID`) REFERENCES `Taxonomy` (`ID`),
    CONSTRAINT `FK_TaxonomyRecord_WebContent_BlogPostCategoryRecord_BlogPostID` FOREIGN KEY (`BlogPostCategoryRecord_BlogPostID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_TaxonomyRecord_WebContent_BlogPostID` FOREIGN KEY (`BlogPostID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_TaxonomyRecord_WebContent_KnowledgeArticleID` FOREIGN KEY (`KnowledgeArticleID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_TaxonomyRecord_WebContent_WebContentID` FOREIGN KEY (`WebContentID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_TaxonomyRecord_WebContent_WebPageCategoryRecord_WebPageID` FOREIGN KEY (`WebPageCategoryRecord_WebPageID`) REFERENCES `WebContent` (`ID`),
    CONSTRAINT `FK_TaxonomyRecord_WebContent_WebPageID` FOREIGN KEY (`WebPageID`) REFERENCES `WebContent` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `OrderItemReturn` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Approved` tinyint(1) NOT NULL,
    `Reason` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReturnRequestID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderItemRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderReturnID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_OrderItemReturn` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_OrderItemReturn_BillingItemRecord_OrderItemRecordID` FOREIGN KEY (`OrderItemRecordID`) REFERENCES `BillingItemRecord` (`ID`),
    CONSTRAINT `FK_OrderItemReturn_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_OrderItemReturn_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_OrderItemReturn_Order_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`ID`),
    CONSTRAINT `FK_OrderItemReturn_OrderReturn_OrderReturnID` FOREIGN KEY (`OrderReturnID`) REFERENCES `OrderReturn` (`ID`),
    CONSTRAINT `FK_OrderItemReturn_SupportRequest_ReturnRequestID` FOREIGN KEY (`ReturnRequestID`) REFERENCES `SupportRequest` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `OrderItemWarranty` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ApprovedTimestamp` datetime(6) NOT NULL,
    `Approved` tinyint(1) NOT NULL,
    `Reason` longtext CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `WarrantyRequestID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `OrderWarrantyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_OrderItemWarranty` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_OrderItemWarranty_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_OrderItemWarranty_BusinessProfileRecord_BusinessProfileRecor~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_OrderItemWarranty_OrderWarranty_WarrantyRequestID` FOREIGN KEY (`WarrantyRequestID`) REFERENCES `OrderWarranty` (`ID`),
    CONSTRAINT `FK_OrderItemWarranty_SupportRequest_OrderWarrantyID` FOREIGN KEY (`OrderWarrantyID`) REFERENCES `SupportRequest` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Conversation` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Topic` longtext CHARACTER SET utf8mb4 NULL,
    `Closed` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ClosedTimestamp` datetime(6) NOT NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SupportTicketID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Conversation` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Conversation_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`),
    CONSTRAINT `FK_Conversation_SupportTicket_SupportTicketID` FOREIGN KEY (`SupportTicketID`) REFERENCES `SupportTicket` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `SocialReaction` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Reaction` int NOT NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `BlogPostID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialCommentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialPostID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_SocialReaction` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_SocialReaction_SocialComment_SocialCommentID` FOREIGN KEY (`SocialCommentID`) REFERENCES `SocialComment` (`ID`),
    CONSTRAINT `FK_SocialReaction_SocialPost_SocialPostID` FOREIGN KEY (`SocialPostID`) REFERENCES `SocialPost` (`ID`),
    CONSTRAINT `FK_SocialReaction_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`),
    CONSTRAINT `FK_SocialReaction_WebContent_BlogPostID` FOREIGN KEY (`BlogPostID`) REFERENCES `WebContent` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PrivateMessage` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `SendedTimestamp` datetime(6) NOT NULL,
    `ReadedTimestamp` datetime(6) NOT NULL,
    `ReceivedTimestamp` datetime(6) NOT NULL,
    `Readed` tinyint(1) NOT NULL,
    `Message` longtext CHARACTER SET utf8mb4 NULL,
    `ConversationID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SenderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ReceptorID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PrivateMessage` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PrivateMessage_Conversation_ConversationID` FOREIGN KEY (`ConversationID`) REFERENCES `Conversation` (`ID`),
    CONSTRAINT `FK_PrivateMessage_SocialProfile_ReceptorID` FOREIGN KEY (`ReceptorID`) REFERENCES `SocialProfile` (`ID`),
    CONSTRAINT `FK_PrivateMessage_SocialProfile_SenderID` FOREIGN KEY (`SenderID`) REFERENCES `SocialProfile` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `FileUpload` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NULL,
    `FileUploadURL` longtext CHARACTER SET utf8mb4 NULL,
    `IsFolder` tinyint(1) NOT NULL,
    `FileName` longtext CHARACTER SET utf8mb4 NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Abstract` longtext CHARACTER SET utf8mb4 NULL,
    `Author` longtext CHARACTER SET utf8mb4 NULL,
    `KeyWords` longtext CHARACTER SET utf8mb4 NULL,
    `Notes` longtext CHARACTER SET utf8mb4 NULL,
    `ContentType` longtext CHARACTER SET utf8mb4 NULL,
    `FileLength` bigint NOT NULL,
    `ValidResponse` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `FileUploadPublicAccessType` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ParentFileUploadID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AccountHolderID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL,
    `AgreementID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `AgreementRevisionID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ContactID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseAssignmentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CourseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `TaskID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `InquiryRequestID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SupportRequestID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemAttachment_ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `IsItemMozaicBG` tinyint(1) NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialMediaPostID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SalesLiteratureID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialCommentID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PrivateMessageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `SocialPostID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessTeamID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_FileUpload` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_FileUpload_Agreement_AgreementID` FOREIGN KEY (`AgreementID`) REFERENCES `Agreement` (`ID`),
    CONSTRAINT `FK_FileUpload_AgreementRevision_AgreementRevisionID` FOREIGN KEY (`AgreementRevisionID`) REFERENCES `AgreementRevision` (`ID`),
    CONSTRAINT `FK_FileUpload_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`),
    CONSTRAINT `FK_FileUpload_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_FileUpload_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_FileUpload_BusinessTeam_BusinessTeamID` FOREIGN KEY (`BusinessTeamID`) REFERENCES `BusinessTeam` (`ID`),
    CONSTRAINT `FK_FileUpload_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`),
    CONSTRAINT `FK_FileUpload_CourseAssignment_CourseAssignmentID` FOREIGN KEY (`CourseAssignmentID`) REFERENCES `CourseAssignment` (`ID`),
    CONSTRAINT `FK_FileUpload_FileUpload_ParentFileUploadID` FOREIGN KEY (`ParentFileUploadID`) REFERENCES `FileUpload` (`ID`),
    CONSTRAINT `FK_FileUpload_InquiryRequest_InquiryRequestID` FOREIGN KEY (`InquiryRequestID`) REFERENCES `InquiryRequest` (`ID`),
    CONSTRAINT `FK_FileUpload_Item_CourseID` FOREIGN KEY (`CourseID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_FileUpload_Item_ItemAttachment_ItemID` FOREIGN KEY (`ItemAttachment_ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_FileUpload_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_FileUpload_PrivateMessage_PrivateMessageID` FOREIGN KEY (`PrivateMessageID`) REFERENCES `PrivateMessage` (`ID`),
    CONSTRAINT `FK_FileUpload_SalesLiterature_SalesLiteratureID` FOREIGN KEY (`SalesLiteratureID`) REFERENCES `SalesLiterature` (`ID`),
    CONSTRAINT `FK_FileUpload_SocialComment_SocialCommentID` FOREIGN KEY (`SocialCommentID`) REFERENCES `SocialComment` (`ID`),
    CONSTRAINT `FK_FileUpload_SocialMediaPost_SocialMediaPostID` FOREIGN KEY (`SocialMediaPostID`) REFERENCES `SocialMediaPost` (`ID`),
    CONSTRAINT `FK_FileUpload_SocialPost_SocialPostID` FOREIGN KEY (`SocialPostID`) REFERENCES `SocialPost` (`ID`),
    CONSTRAINT `FK_FileUpload_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`),
    CONSTRAINT `FK_FileUpload_SupportRequest_SupportRequestID` FOREIGN KEY (`SupportRequestID`) REFERENCES `SupportRequest` (`ID`),
    CONSTRAINT `FK_FileUpload_Task_TaskID` FOREIGN KEY (`TaskID`) REFERENCES `Task` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ItemImageRecord` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `ItemImageID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ItemID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ItemImageRecord` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ItemImageRecord_FileUpload_ItemImageID` FOREIGN KEY (`ItemImageID`) REFERENCES `FileUpload` (`ID`),
    CONSTRAINT `FK_ItemImageRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`)
) CHARACTER SET=utf8mb4;

INSERT INTO `ActivityType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('Alert', NULL, NULL, 'Alert');
INSERT INTO `ActivityType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('Appointment', NULL, NULL, 'Appointment');
INSERT INTO `ActivityType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('Email', NULL, NULL, 'Email');
INSERT INTO `ActivityType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('Letter', NULL, NULL, 'Letter');
INSERT INTO `ActivityType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('Note', NULL, NULL, 'Note');
INSERT INTO `ActivityType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('PhoneCall', NULL, NULL, 'Phone Call');
INSERT INTO `ActivityType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('Task', NULL, NULL, 'Task');

INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('accounts_create', NULL, NULL, 'Accounts', NULL, TRUE, 'Create accounts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('accounts_delete', NULL, NULL, 'Accounts', NULL, TRUE, 'Delete accounts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('accounts_manage', NULL, NULL, 'Accounts', NULL, TRUE, 'Manage accounts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('accounts_read', NULL, NULL, 'Accounts', NULL, TRUE, 'Read accounts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('accounts_update', NULL, NULL, 'Accounts', NULL, TRUE, 'Update accounts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('assets_create', NULL, NULL, 'Assets', NULL, TRUE, 'Create assets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('assets_delete', NULL, NULL, 'Assets', NULL, TRUE, 'Delete assets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('assets_manage', NULL, NULL, 'Assets', NULL, TRUE, 'Manage assets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('assets_read', NULL, NULL, 'Assets', NULL, TRUE, 'Read assets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('assets_update', NULL, NULL, 'Assets', NULL, TRUE, 'Update assets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('bots_create', NULL, NULL, 'Bots', NULL, TRUE, 'Create bots');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('bots_delete', NULL, NULL, 'Bots', NULL, TRUE, 'Delete bots');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('bots_manage', NULL, NULL, 'Bots', NULL, TRUE, 'Manage bots');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('bots_read', NULL, NULL, 'Bots', NULL, TRUE, 'Read bots');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('bots_update', NULL, NULL, 'Bots', NULL, TRUE, 'Update bots');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('budgets_create', NULL, NULL, 'Budgets', NULL, TRUE, 'Create budgets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('budgets_delete', NULL, NULL, 'Budgets', NULL, TRUE, 'Delete budgets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('budgets_manage', NULL, NULL, 'Budgets', NULL, TRUE, 'Manage budgets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('budgets_read', NULL, NULL, 'Budgets', NULL, TRUE, 'Read budgets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('budgets_update', NULL, NULL, 'Budgets', NULL, TRUE, 'Update budgets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('campaigns_create', NULL, NULL, 'Campaigns', NULL, TRUE, 'Create campaigns');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('campaigns_delete', NULL, NULL, 'Campaigns', NULL, TRUE, 'Delete campaigns');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('campaigns_manage', NULL, NULL, 'Campaigns', NULL, TRUE, 'Manage campaigns');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('campaigns_read', NULL, NULL, 'Campaigns', NULL, TRUE, 'Read campaigns');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('campaigns_update', NULL, NULL, 'Campaigns', NULL, TRUE, 'Update campaigns');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('contacts_create', NULL, NULL, 'Contacts', NULL, TRUE, 'Create contacts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('contacts_delete', NULL, NULL, 'Contacts', NULL, TRUE, 'Delete contacts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('contacts_manage', NULL, NULL, 'Contacts', NULL, TRUE, 'Manage contacts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('contacts_read', NULL, NULL, 'Contacts', NULL, TRUE, 'Read contacts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('contacts_update', NULL, NULL, 'Contacts', NULL, TRUE, 'Update contacts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('courses_create', NULL, NULL, 'Courses', NULL, TRUE, 'Create courses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('courses_delete', NULL, NULL, 'Courses', NULL, TRUE, 'Delete courses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('courses_manage', NULL, NULL, 'Courses', NULL, TRUE, 'Manage courses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('courses_read', NULL, NULL, 'Courses', NULL, TRUE, 'Read courses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('courses_update', NULL, NULL, 'Courses', NULL, TRUE, 'Update courses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('deal_units_create', NULL, NULL, 'Deal Units', NULL, TRUE, 'Create deal units');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('deal_units_delete', NULL, NULL, 'Deal Units', NULL, TRUE, 'Delete deal units');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('deal_units_manage', NULL, NULL, 'Deal Units', NULL, TRUE, 'Manage deal units');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('deal_units_read', NULL, NULL, 'Deal Units', NULL, TRUE, 'Read deal units');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('deal_units_update', NULL, NULL, 'Deal Units', NULL, TRUE, 'Update deal units');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('employees_create', NULL, NULL, 'Employees', NULL, TRUE, 'Create employees');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('employees_delete', NULL, NULL, 'Employees', NULL, TRUE, 'Delete employees');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('employees_manage', NULL, NULL, 'Employees', NULL, TRUE, 'Manage employees');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('employees_read', NULL, NULL, 'Employees', NULL, TRUE, 'Read employees');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('employees_update', NULL, NULL, 'Employees', NULL, TRUE, 'Update employees');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('expenses_create', NULL, NULL, 'Expenses', NULL, TRUE, 'Create expenses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('expenses_delete', NULL, NULL, 'Expenses', NULL, TRUE, 'Delete expenses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('expenses_manage', NULL, NULL, 'Expenses', NULL, TRUE, 'Manage expenses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('expenses_read', NULL, NULL, 'Expenses', NULL, TRUE, 'Read expenses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('expenses_update', NULL, NULL, 'Expenses', NULL, TRUE, 'Update expenses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('file_uploads_create', NULL, NULL, 'File Uploads', NULL, TRUE, 'Create file uploads');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('file_uploads_delete', NULL, NULL, 'File Uploads', NULL, TRUE, 'Delete file uploads');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('file_uploads_manage', NULL, NULL, 'File Uploads', NULL, TRUE, 'Manage file uploads');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('file_uploads_read', NULL, NULL, 'File Uploads', NULL, TRUE, 'Read file uploads');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('file_uploads_update', NULL, NULL, 'File Uploads', NULL, TRUE, 'Update file uploads');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('financialbooks_create', NULL, NULL, 'Financial books', NULL, TRUE, 'Create financial books');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('financialbooks_delete', NULL, NULL, 'Financial books', NULL, TRUE, 'Delete financial books');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('financialbooks_manage', NULL, NULL, 'Financial books', NULL, TRUE, 'Manage financial books');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('financialbooks_read', NULL, NULL, 'Financial books', NULL, TRUE, 'Read financial books');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('financialbooks_update', NULL, NULL, 'Financial books', NULL, TRUE, 'Update financial books');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('holders_create', NULL, NULL, 'Holders', NULL, TRUE, 'Create holders');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('holders_delete', NULL, NULL, 'Holders', NULL, TRUE, 'Delete holders');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('holders_manage', NULL, NULL, 'Holders', NULL, TRUE, 'Manage holders');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('holders_read', NULL, NULL, 'Holders', NULL, TRUE, 'Read holders');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('holders_update', NULL, NULL, 'Holders', NULL, TRUE, 'Update holders');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('invoices_create', NULL, NULL, 'Invoices', NULL, TRUE, 'Create invoices');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('invoices_delete', NULL, NULL, 'Invoices', NULL, TRUE, 'Delete invoices');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('invoices_manage', NULL, NULL, 'Invoices', NULL, TRUE, 'Manage invoices');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('invoices_read', NULL, NULL, 'Invoices', NULL, TRUE, 'Read invoices');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('invoices_update', NULL, NULL, 'Invoices', NULL, TRUE, 'Update invoices');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('journals_create', NULL, NULL, 'Journals', NULL, TRUE, 'Create journals');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('journals_delete', NULL, NULL, 'Journals', NULL, TRUE, 'Delete journals');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('journals_manage', NULL, NULL, 'Journals', NULL, TRUE, 'Manage journals');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('journals_read', NULL, NULL, 'Journals', NULL, TRUE, 'Read journals');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('journals_update', NULL, NULL, 'Journals', NULL, TRUE, 'Update journals');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('ledgers_create', NULL, NULL, 'Ledgers', NULL, TRUE, 'Create ledgers');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('ledgers_delete', NULL, NULL, 'Ledgers', NULL, TRUE, 'Delete ledgers');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('ledgers_manage', NULL, NULL, 'Ledgers', NULL, TRUE, 'Manage ledgers');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('ledgers_read', NULL, NULL, 'Ledgers', NULL, TRUE, 'Read ledgers');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('ledgers_update', NULL, NULL, 'Ledgers', NULL, TRUE, 'Update ledgers');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('organizations_create', NULL, NULL, 'Organizations', NULL, TRUE, 'Create organizations');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('organizations_delete', NULL, NULL, 'Organizations', NULL, TRUE, 'Delete organizations');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('organizations_manage', NULL, NULL, 'Organizations', NULL, TRUE, 'Manage organizations');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('organizations_read', NULL, NULL, 'Organizations', NULL, TRUE, 'Read organizations');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('organizations_update', NULL, NULL, 'Organizations', NULL, TRUE, 'Update organizations');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('payments_create', NULL, NULL, 'Payments', NULL, TRUE, 'Create payments');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('payments_delete', NULL, NULL, 'Payments', NULL, TRUE, 'Delete payments');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('payments_manage', NULL, NULL, 'Payments', NULL, TRUE, 'Manage payments');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('payments_read', NULL, NULL, 'Payments', NULL, TRUE, 'Read payments');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('payments_update', NULL, NULL, 'Payments', NULL, TRUE, 'Update payments');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_pages_create', NULL, NULL, 'Portal Pages', NULL, TRUE, 'Create pages');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_pages_delete', NULL, NULL, 'Portal Pages', NULL, TRUE, 'Delete pages');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_pages_manage', NULL, NULL, 'Portal Pages', NULL, TRUE, 'Manage pages');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_pages_read', NULL, NULL, 'Portal Pages', NULL, TRUE, 'Read pages');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_pages_update', NULL, NULL, 'Portal Pages', NULL, TRUE, 'Update pages');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_posts_create', NULL, NULL, 'Blog Posts', NULL, TRUE, 'Create blog posts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_posts_delete', NULL, NULL, 'Blog Posts', NULL, TRUE, 'Delete blog posts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_posts_manage', NULL, NULL, 'Blog Posts', NULL, TRUE, 'Manage blog posts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_posts_read', NULL, NULL, 'Blog Posts', NULL, TRUE, 'Read blog posts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_posts_update', NULL, NULL, 'Blog Posts', NULL, TRUE, 'Update blog posts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_settings_create', NULL, NULL, 'Portal Settings', NULL, TRUE, 'Create portal settings');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_settings_delete', NULL, NULL, 'Portal Settings', NULL, TRUE, 'Delete portal settings');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_settings_manage', NULL, NULL, 'Portal Settings', NULL, TRUE, 'Manage portal settings');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_settings_read', NULL, NULL, 'Portal Settings', NULL, TRUE, 'Read portal settings');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portal_settings_update', NULL, NULL, 'Portal Settings', NULL, TRUE, 'Update portal settings');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portals_create', NULL, NULL, 'Portals', NULL, TRUE, 'Create portals');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portals_delete', NULL, NULL, 'Portals', NULL, TRUE, 'Delete portals');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portals_manage', NULL, NULL, 'Portals', NULL, TRUE, 'Manage portals');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portals_read', NULL, NULL, 'Portals', NULL, TRUE, 'Read portals');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('portals_update', NULL, NULL, 'Portals', NULL, TRUE, 'Update portals');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('pricelists_create', NULL, NULL, 'Prices', NULL, TRUE, 'Create price lists');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('pricelists_delete', NULL, NULL, 'Prices', NULL, TRUE, 'Delete price lists');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('pricelists_manage', NULL, NULL, 'Prices', NULL, TRUE, 'Manage price lists');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('pricelists_read', NULL, NULL, 'Prices', NULL, TRUE, 'Read price lists');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('pricelists_update', NULL, NULL, 'Prices', NULL, TRUE, 'Update price lists');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('prices_create', NULL, NULL, 'Prices', NULL, TRUE, 'Create prices');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('prices_delete', NULL, NULL, 'Prices', NULL, TRUE, 'Delete prices');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('prices_manage', NULL, NULL, 'Prices', NULL, TRUE, 'Manage prices');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('prices_read', NULL, NULL, 'Prices', NULL, TRUE, 'Read prices');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('prices_update', NULL, NULL, 'Prices', NULL, TRUE, 'Update prices');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('product_taxonomies_create', NULL, NULL, 'Product taxonomies', NULL, TRUE, 'Create product taxonomies');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('product_taxonomies_delete', NULL, NULL, 'Product taxonomies', NULL, TRUE, 'Delete product taxonomies');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('product_taxonomies_manage', NULL, NULL, 'Product taxonomies', NULL, TRUE, 'Manage product taxonomies');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('product_taxonomies_read', NULL, NULL, 'Product taxonomies', NULL, TRUE, 'Read product taxonomies');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('product_taxonomies_update', NULL, NULL, 'Product taxonomies', NULL, TRUE, 'Update product taxonomies');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('products_create', NULL, NULL, 'Products', NULL, TRUE, 'Create products');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('products_delete', NULL, NULL, 'Products', NULL, TRUE, 'Delete products');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('products_manage', NULL, NULL, 'Products', NULL, TRUE, 'Manage products');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('products_read', NULL, NULL, 'Products', NULL, TRUE, 'Read products');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('products_update', NULL, NULL, 'Products', NULL, TRUE, 'Update products');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('projects_create', NULL, NULL, 'Projects', NULL, TRUE, 'Create projects');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('projects_delete', NULL, NULL, 'Projects', NULL, TRUE, 'Delete projects');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('projects_manage', NULL, NULL, 'Projects', NULL, TRUE, 'Manage projects');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('projects_read', NULL, NULL, 'Projects', NULL, TRUE, 'Read projects');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('projects_update', NULL, NULL, 'Projects', NULL, TRUE, 'Update projects');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('purchase_requests_create', NULL, NULL, 'Purchase Requests', NULL, TRUE, 'Create purchase requests');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('purchase_requests_delete', NULL, NULL, 'Purchase Requests', NULL, TRUE, 'Delete purchase requests');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('purchase_requests_manage', NULL, NULL, 'Purchase Requests', NULL, TRUE, 'Manage purchase requests');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('purchase_requests_read', NULL, NULL, 'Purchase Requests', NULL, TRUE, 'Read purchase requests');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('purchase_requests_update', NULL, NULL, 'Purchase Requests', NULL, TRUE, 'Update purchase requests');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('reports_create', NULL, NULL, 'Reports', NULL, TRUE, 'Create reports');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('reports_delete', NULL, NULL, 'Reports', NULL, TRUE, 'Delete reports');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('reports_manage', NULL, NULL, 'Reports', NULL, TRUE, 'Manage reports');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('reports_read', NULL, NULL, 'Reports', NULL, TRUE, 'Read reports');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('reports_update', NULL, NULL, 'Reports', NULL, TRUE, 'Update reports');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('security_permissions_create', NULL, NULL, 'Security permissions', NULL, TRUE, 'Create security permissions');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('security_permissions_delete', NULL, NULL, 'Security permissions', NULL, TRUE, 'Delete security permissions');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('security_permissions_manage', NULL, NULL, 'Security permissions', NULL, TRUE, 'Manage security permissions');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('security_permissions_read', NULL, NULL, 'Security permissions', NULL, TRUE, 'Read security permissions');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('security_permissions_update', NULL, NULL, 'Security permissions', NULL, TRUE, 'Update security permissions');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('security_roles_create', NULL, NULL, 'Security Roles', NULL, TRUE, 'Create security roles');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('security_roles_delete', NULL, NULL, 'Security Roles', NULL, TRUE, 'Delete security roles');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('security_roles_manage', NULL, NULL, 'Security Roles', NULL, TRUE, 'Manage security roles');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('security_roles_read', NULL, NULL, 'Security Roles', NULL, TRUE, 'Read security roles');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('security_roles_update', NULL, NULL, 'Security Roles', NULL, TRUE, 'Update security roles');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('services_create', NULL, NULL, 'Services', NULL, TRUE, 'Create services');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('services_delete', NULL, NULL, 'Services', NULL, TRUE, 'Delete services');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('services_manage', NULL, NULL, 'Services', NULL, TRUE, 'Manage services');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('services_read', NULL, NULL, 'Services', NULL, TRUE, 'Read services');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('services_update', NULL, NULL, 'Services', NULL, TRUE, 'Update services');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('shares_create', NULL, NULL, 'Shares', NULL, TRUE, 'Create shares');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('shares_delete', NULL, NULL, 'Shares', NULL, TRUE, 'Delete shares');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('shares_manage', NULL, NULL, 'Shares', NULL, TRUE, 'Manage shares');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('shares_read', NULL, NULL, 'Shares', NULL, TRUE, 'Read shares');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('shares_update', NULL, NULL, 'Shares', NULL, TRUE, 'Update shares');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('shippings_create', NULL, NULL, 'Shippings', NULL, TRUE, 'Create shippings');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('shippings_delete', NULL, NULL, 'Shippings', NULL, TRUE, 'Delete shippings');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('shippings_manage', NULL, NULL, 'Shippings', NULL, TRUE, 'Manage shippings');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('shippings_read', NULL, NULL, 'Shippings', NULL, TRUE, 'Read shippings');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('shippings_update', NULL, NULL, 'Shippings', NULL, TRUE, 'Update shippings');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_groups_create', NULL, NULL, 'Social Groups', NULL, TRUE, 'Create social groups');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_groups_delete', NULL, NULL, 'Social Groups', NULL, TRUE, 'Delete social groups');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_groups_manage', NULL, NULL, 'Social Groups', NULL, TRUE, 'Manage social groups');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_groups_read', NULL, NULL, 'Social Groups', NULL, TRUE, 'Read social groups');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_groups_update', NULL, NULL, 'Social Groups', NULL, TRUE, 'Update social groups');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_posts_create', NULL, NULL, 'Social Posts', NULL, TRUE, 'Create social posts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_posts_delete', NULL, NULL, 'Social Posts', NULL, TRUE, 'Delete social posts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_posts_manage', NULL, NULL, 'Social Posts', NULL, TRUE, 'Manage social posts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_posts_read', NULL, NULL, 'Social Posts', NULL, TRUE, 'Read social posts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_posts_update', NULL, NULL, 'Social Posts', NULL, TRUE, 'Update social posts');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_profiles_create', NULL, NULL, 'Social Groups', NULL, TRUE, 'Create social profiles');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_profiles_delete', NULL, NULL, 'Social Groups', NULL, TRUE, 'Delete social profiles');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_profiles_manage', NULL, NULL, 'Social Groups', NULL, TRUE, 'Manage social profiles');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_profiles_read', NULL, NULL, 'Social Groups', NULL, TRUE, 'Read social profiles');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('social_profiles_update', NULL, NULL, 'Social Groups', NULL, TRUE, 'Update social profiles');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('stock_items_create', NULL, NULL, 'Stock items', NULL, TRUE, 'Create stock items');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('stock_items_delete', NULL, NULL, 'Stock items', NULL, TRUE, 'Delete stock items');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('stock_items_manage', NULL, NULL, 'Stock items', NULL, TRUE, 'Manage stock items');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('stock_items_read', NULL, NULL, 'Stock items', NULL, TRUE, 'Read stock items');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('stock_items_update', NULL, NULL, 'Stock items', NULL, TRUE, 'Update stock items');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('studio_access', NULL, NULL, NULL, NULL, TRUE, 'Studio Access (System)');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('subscriptions_create', NULL, NULL, 'Subscriptions', NULL, TRUE, 'Create subscriptions');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('subscriptions_delete', NULL, NULL, 'Subscriptions', NULL, TRUE, 'Delete subscriptions');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('subscriptions_manage', NULL, NULL, 'Subscriptions', NULL, TRUE, 'Manage subscriptions');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('subscriptions_read', NULL, NULL, 'Subscriptions', NULL, TRUE, 'Read subscriptions');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('subscriptions_update', NULL, NULL, 'Subscriptions', NULL, TRUE, 'Update subscriptions');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('taxes_create', NULL, NULL, 'Taxes', NULL, TRUE, 'Create taxes');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('taxes_delete', NULL, NULL, 'Taxes', NULL, TRUE, 'Delete taxes');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('taxes_manage', NULL, NULL, 'Taxes', NULL, TRUE, 'Manage taxes');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('taxes_read', NULL, NULL, 'Taxes', NULL, TRUE, 'Read taxes');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('taxes_update', NULL, NULL, 'Taxes', NULL, TRUE, 'Update taxes');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('tenants_create', NULL, NULL, 'Tenants', NULL, TRUE, 'Create tenants');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('tenants_delete', NULL, NULL, 'Tenants', NULL, TRUE, 'Delete tenants');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('tenants_manage', NULL, NULL, 'Tenants', NULL, TRUE, 'Manage tenants');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('tenants_read', NULL, NULL, 'Tenants', NULL, TRUE, 'Read tenants');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('tenants_update', NULL, NULL, 'Tenants', NULL, TRUE, 'Update tenants');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('tickets_create', NULL, NULL, 'Tickets', NULL, TRUE, 'Create tickets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('tickets_delete', NULL, NULL, 'Tickets', NULL, TRUE, 'Delete tickets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('tickets_manage', NULL, NULL, 'Tickets', NULL, TRUE, 'Manage tickets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('tickets_read', NULL, NULL, 'Tickets', NULL, TRUE, 'Read tickets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('tickets_update', NULL, NULL, 'Tickets', NULL, TRUE, 'Update tickets');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('warehouses_create', NULL, NULL, 'Warehouses', NULL, TRUE, 'Create warehouses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('warehouses_delete', NULL, NULL, 'Warehouses', NULL, TRUE, 'Delete warehouses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('warehouses_manage', NULL, NULL, 'Warehouses', NULL, TRUE, 'Manage warehouses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('warehouses_read', NULL, NULL, 'Warehouses', NULL, TRUE, 'Read warehouses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('warehouses_update', NULL, NULL, 'Warehouses', NULL, TRUE, 'Update warehouses');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('workflows_create', NULL, NULL, 'Workflows', NULL, TRUE, 'Create workflows');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('workflows_delete', NULL, NULL, 'Workflows', NULL, TRUE, 'Delete workflows');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('workflows_manage', NULL, NULL, 'Workflows', NULL, TRUE, 'Manage workflows');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('workflows_read', NULL, NULL, 'Workflows', NULL, TRUE, 'Read workflows');
INSERT INTO `BusinessPermission` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Category`, `Description`, `IsSystemPermission`, `Name`)
VALUES ('workflows_update', NULL, NULL, 'Workflows', NULL, TRUE, 'Update workflows');

INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('business_owner', NULL, NULL, NULL, TRUE, 'Business Owner (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('global_admin', NULL, NULL, NULL, TRUE, 'Global Admin (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('portal_author', NULL, NULL, NULL, TRUE, 'Portal Author (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('portal_blocked', NULL, NULL, NULL, TRUE, 'Portal Blocked (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('portal_collaborator', NULL, NULL, NULL, TRUE, 'Portal Colaborator (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('portal_default', NULL, NULL, NULL, TRUE, 'Portal Application (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('portal_editor', NULL, NULL, NULL, TRUE, 'Portal Editor (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('portal_keymaster', NULL, NULL, NULL, TRUE, 'Portal Keymaster (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('portal_moderator', NULL, NULL, NULL, TRUE, 'Portal Moderator (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('portal_participant', NULL, NULL, NULL, TRUE, 'Portal Participant (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('portal_spectator', NULL, NULL, NULL, TRUE, 'Portal Spectator (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('portal_suscriptor', NULL, NULL, NULL, TRUE, 'Portal Suscriptor (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('store_admin', NULL, NULL, NULL, TRUE, 'Store Admin (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('store_blocked', NULL, NULL, NULL, TRUE, 'Store Blocked (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('store_customer', NULL, NULL, NULL, TRUE, 'Store Customer (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('store_manager', NULL, NULL, NULL, TRUE, 'Store Manager (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('support_agent', NULL, NULL, NULL, TRUE, 'Support Agent (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('support_manager', NULL, NULL, NULL, TRUE, 'Support Manager (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('support_supervisor', NULL, NULL, NULL, TRUE, 'Support Supervisor (System)');
INSERT INTO `BusinessSecurityRole` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `IsSystemSecurityRole`, `Name`)
VALUES ('support_user', NULL, NULL, NULL, TRUE, 'Support User (System)');

INSERT INTO `SalesLiteratureType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('Bulletins', NULL, NULL, 'Bulletins');
INSERT INTO `SalesLiteratureType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('CompanyBackground', NULL, NULL, 'Company Background');
INSERT INTO `SalesLiteratureType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('Manuals', NULL, NULL, 'Manuals');
INSERT INTO `SalesLiteratureType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('MarketingCollateral', NULL, NULL, 'Marketing Collateral');
INSERT INTO `SalesLiteratureType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('News', NULL, NULL, 'News');
INSERT INTO `SalesLiteratureType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('PoliciesAndProcedures', NULL, NULL, 'Policies And Procedures');
INSERT INTO `SalesLiteratureType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('Presentation', NULL, NULL, 'Presentation');
INSERT INTO `SalesLiteratureType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('PriceSheets', NULL, NULL, 'Price Sheets');
INSERT INTO `SalesLiteratureType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('ProductSheet', NULL, NULL, 'Product Sheet');
INSERT INTO `SalesLiteratureType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('SalesLiterature', NULL, NULL, 'Sales Literature');
INSERT INTO `SalesLiteratureType` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Name`)
VALUES ('Spreadsheets', NULL, NULL, 'Spreadsheets');

INSERT INTO `UnitGroup` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `Name`, `SystemLocked`)
VALUES ('Distance', NULL, NULL, NULL, 'Distance', TRUE);
INSERT INTO `UnitGroup` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `Name`, `SystemLocked`)
VALUES ('Mass', NULL, NULL, NULL, 'Mass', TRUE);
INSERT INTO `UnitGroup` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `Name`, `SystemLocked`)
VALUES ('Time', NULL, NULL, NULL, 'Time', TRUE);
INSERT INTO `UnitGroup` (`ID`, `BusinessID`, `BusinessProfileRecordID`, `Description`, `Name`, `SystemLocked`)
VALUES ('Units', NULL, NULL, NULL, 'Units', TRUE);

INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Milligrams', 0.0, NULL, NULL, NULL, 'Milligrams', 'Mass');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Millimeters', 0.0, NULL, NULL, NULL, 'Millimeters', 'Distance');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Second', 0.0, NULL, NULL, NULL, 'Second', 'Time');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Unit', 1.0, NULL, NULL, NULL, 'Unit', 'Units');

INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Centimeters', 10.0, 'Millimeters', NULL, NULL, 'Centimeters', 'Distance');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Dozen', 12.0, 'Unit', NULL, NULL, 'Dozen', 'Units');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Grams', 1000.0, 'Milligrams', NULL, NULL, 'Grams', 'Mass');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Half a Dozen', 6.0, 'Unit', NULL, NULL, 'Half a Dozen', 'Units');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Hundred', 100.0, 'Unit', NULL, NULL, 'Thousand', 'Units');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Minute', 60.0, 'Second', NULL, NULL, 'Minute', 'Time');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Pair', 2.0, 'Unit', NULL, NULL, 'Pair', 'Units');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Thousand', 1000.0, 'Unit', NULL, NULL, 'Thousand', 'Units');

INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Hour', 60.0, 'Minute', NULL, NULL, 'Hour', 'Time');

INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Kilogram', 1000.0, 'Grams', NULL, NULL, 'Kilogram', 'Mass');

INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Meters', 100.0, 'Centimeters', NULL, NULL, 'Meters', 'Distance');

INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Day', 24.0, 'Hour', NULL, NULL, 'Day', 'Time');

INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Kilometers', 1000.0, 'Meters', NULL, NULL, 'Kilometers', 'Distance');

INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Tonne', 1000.0, 'Kilogram', NULL, NULL, 'Tonne', 'Mass');

INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('28 Days Month', 28.0, 'Day', NULL, NULL, '28 Days Month', 'Time');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('29 Days Month', 29.0, 'Day', NULL, NULL, '29 Days Month', 'Time');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('30 Days Month', 30.0, 'Day', NULL, NULL, '30 Days Month', 'Time');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('31 Days Month', 31.0, 'Day', NULL, NULL, '31 Days Month', 'Time');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Leap Year (Gregorian calendar)', 366.0, 'Day', NULL, NULL, 'Leap Year (Gregorian calendar)', 'Time');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Leap Year (Islamic calendar)', 355.0, 'Day', NULL, NULL, 'Leap Year (Islamic calendar)', 'Time');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Week', 7.0, 'Day', NULL, NULL, 'Week', 'Time');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Year (Gregorian calendar)', 365.0, 'Day', NULL, NULL, 'Year (Gregorian calendar)', 'Time');
INSERT INTO `Unit` (`ID`, `BaseUnitAmount`, `BaseUnitID`, `BusinessID`, `BusinessProfileRecordID`, `Name`, `UnitGroupID`)
VALUES ('Year (Islamic calendar)', 354.0, 'Day', NULL, NULL, 'Year (Islamic calendar)', 'Time');

CREATE INDEX `IX_AcademicInstitution_CountryID` ON `AcademicInstitution` (`CountryID`);

CREATE INDEX `IX_AccessKeyPair_AccountHolderID` ON `AccessKeyPair` (`AccountHolderID`);

CREATE INDEX `IX_AccessKeyPair_BusinessID` ON `AccessKeyPair` (`BusinessID`);

CREATE INDEX `IX_AccessKeyPair_BusinessProfileRecordID` ON `AccessKeyPair` (`BusinessProfileRecordID`);

CREATE INDEX `IX_AccessKeyPair_ContactID` ON `AccessKeyPair` (`ContactID`);

CREATE INDEX `IX_Account_AccountGroupID` ON `Account` (`AccountGroupID`);

CREATE INDEX `IX_Account_AccountHolderID` ON `Account` (`AccountHolderID`);

CREATE INDEX `IX_Account_AccountTypeID` ON `Account` (`AccountTypeID`);

CREATE INDEX `IX_Account_BankID` ON `Account` (`BankID`);

CREATE INDEX `IX_Account_BankProfileID` ON `Account` (`BankProfileID`);

CREATE INDEX `IX_Account_BillingProfileID` ON `Account` (`BillingProfileID`);

CREATE INDEX `IX_Account_BusinessID` ON `Account` (`BusinessID`);

CREATE INDEX `IX_Account_BusinessProfileRecordID` ON `Account` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Account_ContactID` ON `Account` (`ContactID`);

CREATE INDEX `IX_Account_CurrencyID` ON `Account` (`CurrencyID`);

CREATE INDEX `IX_Account_LedgerID` ON `Account` (`LedgerID`);

CREATE INDEX `IX_Account_ParentAccountID` ON `Account` (`ParentAccountID`);

CREATE INDEX `IX_AccountGroup_BusinessID` ON `AccountGroup` (`BusinessID`);

CREATE INDEX `IX_AccountGroup_BusinessProfileRecordID` ON `AccountGroup` (`BusinessProfileRecordID`);

CREATE INDEX `IX_AccountGroup_ParentAccountGroupID` ON `AccountGroup` (`ParentAccountGroupID`);

CREATE INDEX `IX_AccountHolderLogin_AccountHolderID` ON `AccountHolderLogin` (`AccountHolderID`);

CREATE INDEX `IX_AccountHolderLogin_IPLookupID` ON `AccountHolderLogin` (`IPLookupID`);

CREATE UNIQUE INDEX `IX_AccountHolderSettings_AccountHolderID` ON `AccountHolderSettings` (`AccountHolderID`);

CREATE INDEX `IX_AccountingEntry_BankProfileID` ON `AccountingEntry` (`BankProfileID`);

CREATE INDEX `IX_AccountingEntry_BusinessID` ON `AccountingEntry` (`BusinessID`);

CREATE INDEX `IX_AccountingEntry_BusinessProfileRecordID` ON `AccountingEntry` (`BusinessProfileRecordID`);

CREATE INDEX `IX_AccountingEntry_CreditAccountID` ON `AccountingEntry` (`CreditAccountID`);

CREATE INDEX `IX_AccountingEntry_CurrencyID` ON `AccountingEntry` (`CurrencyID`);

CREATE INDEX `IX_AccountingEntry_DebitAccountID` ON `AccountingEntry` (`DebitAccountID`);

CREATE INDEX `IX_AccountingEntry_JournalEntryID` ON `AccountingEntry` (`JournalEntryID`);

CREATE INDEX `IX_AccountingEntry_PaymentChargeback_PaymentDisputeID` ON `AccountingEntry` (`PaymentChargeback_PaymentDisputeID`);

CREATE INDEX `IX_AccountingEntry_PaymentChargeback_PaymentID` ON `AccountingEntry` (`PaymentChargeback_PaymentID`);

CREATE INDEX `IX_AccountingEntry_PaymentChargeback_WalletAccountID` ON `AccountingEntry` (`PaymentChargeback_WalletAccountID`);

CREATE INDEX `IX_AccountingEntry_PaymentDisputeID` ON `AccountingEntry` (`PaymentDisputeID`);

CREATE INDEX `IX_AccountingEntry_PaymentID` ON `AccountingEntry` (`PaymentID`);

CREATE INDEX `IX_AccountingEntry_RefundRequestID` ON `AccountingEntry` (`RefundRequestID`);

CREATE INDEX `IX_AccountingEntry_WalletAccountID` ON `AccountingEntry` (`WalletAccountID`);

CREATE INDEX `IX_AccountingPeriodClosingVoucher_AccountID` ON `AccountingPeriodClosingVoucher` (`AccountID`);

CREATE INDEX `IX_AccountingPeriodClosingVoucher_BusinessID` ON `AccountingPeriodClosingVoucher` (`BusinessID`);

CREATE INDEX `IX_AccountingPeriodClosingVoucher_BusinessProfileRecordID` ON `AccountingPeriodClosingVoucher` (`BusinessProfileRecordID`);

CREATE INDEX `IX_AccountingPeriodClosingVoucher_FiscalYearID` ON `AccountingPeriodClosingVoucher` (`FiscalYearID`);

CREATE INDEX `IX_AccountRelation_AccountID` ON `AccountRelation` (`AccountID`);

CREATE INDEX `IX_AccountRelation_BusinessID` ON `AccountRelation` (`BusinessID`);

CREATE INDEX `IX_AccountRelation_BusinessProfileRecordID` ON `AccountRelation` (`BusinessProfileRecordID`);

CREATE INDEX `IX_AccountRelation_ProjectID` ON `AccountRelation` (`ProjectID`);

CREATE INDEX `IX_AccountType_BusinessID` ON `AccountType` (`BusinessID`);

CREATE INDEX `IX_AccountType_BusinessProfileRecordID` ON `AccountType` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ActivityFeed_BusinessID` ON `ActivityFeed` (`BusinessID`);

CREATE UNIQUE INDEX `IX_ActivityFeed_ContactID` ON `ActivityFeed` (`ContactID`);

CREATE UNIQUE INDEX `IX_ActivityFeed_DealUnitID` ON `ActivityFeed` (`DealUnitID`);

CREATE UNIQUE INDEX `IX_ActivityFeed_MarketingCampaignID` ON `ActivityFeed` (`MarketingCampaignID`);

CREATE UNIQUE INDEX `IX_ActivityFeed_MarketingListID` ON `ActivityFeed` (`MarketingListID`);

CREATE UNIQUE INDEX `IX_ActivityFeed_ProjectID` ON `ActivityFeed` (`ProjectID`);

CREATE INDEX `IX_ActivityRecord_ActivityFeedID` ON `ActivityRecord` (`ActivityFeedID`);

CREATE INDEX `IX_ActivityRecord_ActivityTypeID` ON `ActivityRecord` (`ActivityTypeID`);

CREATE INDEX `IX_ActivityRecord_BusinessID` ON `ActivityRecord` (`BusinessID`);

CREATE INDEX `IX_ActivityRecord_BusinessProfileRecordID` ON `ActivityRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ActivityRecord_InChargeBusinessProfileRecordID` ON `ActivityRecord` (`InChargeBusinessProfileRecordID`);

CREATE INDEX `IX_ActivityRecord_ParentActivityID` ON `ActivityRecord` (`ParentActivityID`);

CREATE INDEX `IX_ActivityType_BusinessID` ON `ActivityType` (`BusinessID`);

CREATE INDEX `IX_ActivityType_BusinessProfileRecordID` ON `ActivityType` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Agreement_AgreementTypeID` ON `Agreement` (`AgreementTypeID`);

CREATE INDEX `IX_Agreement_BusinessID` ON `Agreement` (`BusinessID`);

CREATE INDEX `IX_Agreement_ContactID` ON `Agreement` (`ContactID`);

CREATE INDEX `IX_AgreementRevision_AgreementID` ON `AgreementRevision` (`AgreementID`);

CREATE INDEX `IX_AgreementRevision_BusinessID` ON `AgreementRevision` (`BusinessID`);

CREATE INDEX `IX_AgreementRevision_LanguageIso639_1` ON `AgreementRevision` (`LanguageIso639_1`);

CREATE INDEX `IX_AgreementType_BusinessID` ON `AgreementType` (`BusinessID`);

CREATE INDEX `IX_AppliedFee_FeeID` ON `AppliedFee` (`FeeID`);

CREATE INDEX `IX_AppliedFee_PaymentChargebackID` ON `AppliedFee` (`PaymentChargebackID`);

CREATE INDEX `IX_AppliedFee_PaymentGatewayID` ON `AppliedFee` (`PaymentGatewayID`);

CREATE INDEX `IX_AppliedFee_PaymentID` ON `AppliedFee` (`PaymentID`);

CREATE INDEX `IX_AppliedFee_PaymentRefundID` ON `AppliedFee` (`PaymentRefundID`);

CREATE INDEX `IX_AppliedFee_WalletWithdrawID` ON `AppliedFee` (`WalletWithdrawID`);

CREATE INDEX `IX_AppliedTaxPolicyRecord_AppliedFeeID` ON `AppliedTaxPolicyRecord` (`AppliedFeeID`);

CREATE INDEX `IX_AppliedTaxPolicyRecord_BillingItemRecordID` ON `AppliedTaxPolicyRecord` (`BillingItemRecordID`);

CREATE INDEX `IX_AppliedTaxPolicyRecord_BusinessID` ON `AppliedTaxPolicyRecord` (`BusinessID`);

CREATE INDEX `IX_AppliedTaxPolicyRecord_BusinessProfileRecordID` ON `AppliedTaxPolicyRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_AppliedTaxPolicyRecord_InvoiceID` ON `AppliedTaxPolicyRecord` (`InvoiceID`);

CREATE INDEX `IX_AppliedTaxPolicyRecord_ItemID` ON `AppliedTaxPolicyRecord` (`ItemID`);

CREATE INDEX `IX_AppliedTaxPolicyRecord_PaymentID` ON `AppliedTaxPolicyRecord` (`PaymentID`);

CREATE INDEX `IX_AppliedTaxPolicyRecord_TaxPolicyID` ON `AppliedTaxPolicyRecord` (`TaxPolicyID`);

CREATE INDEX `IX_AppraisalSession_AppraisalStageID` ON `AppraisalSession` (`AppraisalStageID`);

CREATE INDEX `IX_AppraisalSession_AppraisalWorkflowID` ON `AppraisalSession` (`AppraisalWorkflowID`);

CREATE INDEX `IX_AppraisalSession_BusinessID` ON `AppraisalSession` (`BusinessID`);

CREATE INDEX `IX_AppraisalSession_BusinessProfileRecordID` ON `AppraisalSession` (`BusinessProfileRecordID`);

CREATE INDEX `IX_AppraisalSession_EmployeeProfileID` ON `AppraisalSession` (`EmployeeProfileID`);

CREATE INDEX `IX_AspNetRoleClaims_RoleId` ON `AspNetRoleClaims` (`RoleId`);

CREATE UNIQUE INDEX `RoleNameIndex` ON `AspNetRoles` (`NormalizedName`);

CREATE INDEX `IX_AspNetUserClaims_UserId` ON `AspNetUserClaims` (`UserId`);

CREATE INDEX `IX_AspNetUserLogins_UserId` ON `AspNetUserLogins` (`UserId`);

CREATE INDEX `IX_AspNetUserRoles_RoleId` ON `AspNetUserRoles` (`RoleId`);

CREATE INDEX `EmailIndex` ON `AspNetUsers` (`NormalizedEmail`);

CREATE INDEX `IX_AspNetUsers_CityID` ON `AspNetUsers` (`CityID`);

CREATE INDEX `IX_AspNetUsers_CountryID` ON `AspNetUsers` (`CountryID`);

CREATE INDEX `IX_AspNetUsers_CountryLanguageID` ON `AspNetUsers` (`CountryLanguageID`);

CREATE INDEX `IX_AspNetUsers_CountryStateID` ON `AspNetUsers` (`CountryStateID`);

CREATE INDEX `IX_AspNetUsers_CurrencyID` ON `AspNetUsers` (`CurrencyID`);

CREATE INDEX `IX_AspNetUsers_SelectedBusinessID` ON `AspNetUsers` (`SelectedBusinessID`);

CREATE INDEX `IX_AspNetUsers_TimezoneID` ON `AspNetUsers` (`TimezoneID`);

CREATE UNIQUE INDEX `UserNameIndex` ON `AspNetUsers` (`NormalizedUserName`);

CREATE INDEX `IX_Asset_AssetCategoryID` ON `Asset` (`AssetCategoryID`);

CREATE INDEX `IX_Asset_AssetLocationID` ON `Asset` (`AssetLocationID`);

CREATE INDEX `IX_Asset_BusinessID` ON `Asset` (`BusinessID`);

CREATE INDEX `IX_Asset_BusinessProfileRecordID` ON `Asset` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Asset_ContactID` ON `Asset` (`ContactID`);

CREATE INDEX `IX_Asset_FinancialBookID` ON `Asset` (`FinancialBookID`);

CREATE INDEX `IX_Asset_ItemID` ON `Asset` (`ItemID`);

CREATE INDEX `IX_Asset_OrganizationDepartmentID` ON `Asset` (`OrganizationDepartmentID`);

CREATE INDEX `IX_Asset_PurchaseInvoiceID` ON `Asset` (`PurchaseInvoiceID`);

CREATE INDEX `IX_Asset_PurchaseReceiptID` ON `Asset` (`PurchaseReceiptID`);

CREATE INDEX `IX_AssetCategory_BusinessID` ON `AssetCategory` (`BusinessID`);

CREATE INDEX `IX_AssetDepreciationRecord_BusinessID` ON `AssetDepreciationRecord` (`BusinessID`);

CREATE INDEX `IX_AssetDepreciationRecord_FinancialBookID` ON `AssetDepreciationRecord` (`FinancialBookID`);

CREATE INDEX `IX_AssetTransfer_AssetID` ON `AssetTransfer` (`AssetID`);

CREATE INDEX `IX_AssetTransfer_BusinessID` ON `AssetTransfer` (`BusinessID`);

CREATE INDEX `IX_AssetTransfer_DestinationContactID` ON `AssetTransfer` (`DestinationContactID`);

CREATE INDEX `IX_AssetTransfer_DestinationDepartmentID` ON `AssetTransfer` (`DestinationDepartmentID`);

CREATE INDEX `IX_AssetTransfer_DestinationLocationID` ON `AssetTransfer` (`DestinationLocationID`);

CREATE UNIQUE INDEX `IX_AssetTransfer_PreviousShareTransferID` ON `AssetTransfer` (`PreviousShareTransferID`);

CREATE INDEX `IX_AssetTransfer_SourceContactID` ON `AssetTransfer` (`SourceContactID`);

CREATE INDEX `IX_AssetTransfer_SourceDepartmentID` ON `AssetTransfer` (`SourceDepartmentID`);

CREATE INDEX `IX_AssetTransfer_SourceLocationID` ON `AssetTransfer` (`SourceLocationID`);

CREATE INDEX `IX_AssetValueAmend_BusinessID` ON `AssetValueAmend` (`BusinessID`);

CREATE INDEX `IX_AssetValueAmend_FinancialBookID` ON `AssetValueAmend` (`FinancialBookID`);

CREATE INDEX `IX_Bank_CountryID` ON `Bank` (`CountryID`);

CREATE INDEX `IX_BankGuarantee_BankAccountID` ON `BankGuarantee` (`BankAccountID`);

CREATE INDEX `IX_BankGuarantee_BankProfileID` ON `BankGuarantee` (`BankProfileID`);

CREATE INDEX `IX_BankGuarantee_BusinessID` ON `BankGuarantee` (`BusinessID`);

CREATE INDEX `IX_BankGuarantee_BusinessProfileRecordID` ON `BankGuarantee` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BankGuarantee_ContactID` ON `BankGuarantee` (`ContactID`);

CREATE INDEX `IX_BankGuarantee_CurrencyID` ON `BankGuarantee` (`CurrencyID`);

CREATE INDEX `IX_BankGuarantee_OrderID` ON `BankGuarantee` (`OrderID`);

CREATE INDEX `IX_BankGuarantee_ProjectID` ON `BankGuarantee` (`ProjectID`);

CREATE INDEX `IX_BillingCoupon_BusinessID` ON `BillingCoupon` (`BusinessID`);

CREATE INDEX `IX_BillingCoupon_BusinessProfileRecordID` ON `BillingCoupon` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BillingCoupon_CurrencyID` ON `BillingCoupon` (`CurrencyID`);

CREATE UNIQUE INDEX `IX_BillingItemRecord_AccountingEntryID` ON `BillingItemRecord` (`AccountingEntryID`);

CREATE INDEX `IX_BillingItemRecord_BillingCouponCartRecord_BillingCouponID` ON `BillingItemRecord` (`BillingCouponCartRecord_BillingCouponID`);

CREATE INDEX `IX_BillingItemRecord_BillingCouponID` ON `BillingItemRecord` (`BillingCouponID`);

CREATE INDEX `IX_BillingItemRecord_BillingCouponOrderRecord_BillingCouponID` ON `BillingItemRecord` (`BillingCouponOrderRecord_BillingCouponID`);

CREATE INDEX `IX_BillingItemRecord_BusinessID` ON `BillingItemRecord` (`BusinessID`);

CREATE INDEX `IX_BillingItemRecord_BusinessProfileRecordID` ON `BillingItemRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BillingItemRecord_CartID` ON `BillingItemRecord` (`CartID`);

CREATE INDEX `IX_BillingItemRecord_CurrencyID` ON `BillingItemRecord` (`CurrencyID`);

CREATE INDEX `IX_BillingItemRecord_DealUnitID` ON `BillingItemRecord` (`DealUnitID`);

CREATE INDEX `IX_BillingItemRecord_InvoiceID` ON `BillingItemRecord` (`InvoiceID`);

CREATE INDEX `IX_BillingItemRecord_ItemID` ON `BillingItemRecord` (`ItemID`);

CREATE INDEX `IX_BillingItemRecord_ItemPriceID` ON `BillingItemRecord` (`ItemPriceID`);

CREATE INDEX `IX_BillingItemRecord_ItemShipmentPolicyID` ON `BillingItemRecord` (`ItemShipmentPolicyID`);

CREATE INDEX `IX_BillingItemRecord_LocationID` ON `BillingItemRecord` (`LocationID`);

CREATE INDEX `IX_BillingItemRecord_OrderID` ON `BillingItemRecord` (`OrderID`);

CREATE INDEX `IX_BillingItemRecord_OrderItemRecord_OrderID` ON `BillingItemRecord` (`OrderItemRecord_OrderID`);

CREATE INDEX `IX_BillingItemRecord_ParentBillingItemRecordID` ON `BillingItemRecord` (`ParentBillingItemRecordID`);

CREATE INDEX `IX_BillingItemRecord_ParentOrderID` ON `BillingItemRecord` (`ParentOrderID`);

CREATE INDEX `IX_BillingItemRecord_PriceListItemID` ON `BillingItemRecord` (`PriceListItemID`);

CREATE INDEX `IX_BillingItemRecord_QuoteID` ON `BillingItemRecord` (`QuoteID`);

CREATE INDEX `IX_BillingItemRecord_QuoteItemRecordID` ON `BillingItemRecord` (`QuoteItemRecordID`);

CREATE INDEX `IX_BillingItemRecord_RefundPolicyID` ON `BillingItemRecord` (`RefundPolicyID`);

CREATE INDEX `IX_BillingItemRecord_ReturnPolicyID` ON `BillingItemRecord` (`ReturnPolicyID`);

CREATE INDEX `IX_BillingItemRecord_UnitGroupID` ON `BillingItemRecord` (`UnitGroupID`);

CREATE INDEX `IX_BillingItemRecord_UnitID` ON `BillingItemRecord` (`UnitID`);

CREATE INDEX `IX_BillingItemRecord_WarrantyPolicyID` ON `BillingItemRecord` (`WarrantyPolicyID`);

CREATE INDEX `IX_Blockchain_BusinessID` ON `Blockchain` (`BusinessID`);

CREATE INDEX `IX_Blockchain_BusinessProfileRecordID` ON `Blockchain` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BlockchainBlock_BlockchainID` ON `BlockchainBlock` (`BlockchainID`);

CREATE INDEX `IX_BlockchainBlock_NonFungibleTokenID` ON `BlockchainBlock` (`NonFungibleTokenID`);

CREATE UNIQUE INDEX `IX_BlockchainBlock_PreviousBlockchainBlockID` ON `BlockchainBlock` (`PreviousBlockchainBlockID`);

CREATE INDEX `IX_BlockchainBlock_WalletAccountID` ON `BlockchainBlock` (`WalletAccountID`);

CREATE INDEX `IX_BlockRecord_BlockedSocialProfileID` ON `BlockRecord` (`BlockedSocialProfileID`);

CREATE INDEX `IX_BlockRecord_BlockerSocialProfileID` ON `BlockRecord` (`BlockerSocialProfileID`);

CREATE INDEX `IX_BrandRecord_BrandID` ON `BrandRecord` (`BrandID`);

CREATE INDEX `IX_BrandRecord_ItemID` ON `BrandRecord` (`ItemID`);

CREATE INDEX `IX_Budget_BusinessID` ON `Budget` (`BusinessID`);

CREATE INDEX `IX_Budget_CostCentreID` ON `Budget` (`CostCentreID`);

CREATE INDEX `IX_Budget_FiscalYearID` ON `Budget` (`FiscalYearID`);

CREATE INDEX `IX_Budget_ProjectID` ON `Budget` (`ProjectID`);

CREATE INDEX `IX_Business_BusinessIndustryID` ON `Business` (`BusinessIndustryID`);

CREATE INDEX `IX_Business_BusinessSegmentID` ON `Business` (`BusinessSegmentID`);

CREATE INDEX `IX_Business_BusinessTypeID` ON `Business` (`BusinessTypeID`);

CREATE INDEX `IX_Business_CityID` ON `Business` (`CityID`);

CREATE INDEX `IX_Business_CountryID` ON `Business` (`CountryID`);

CREATE INDEX `IX_Business_CountryLanguageID` ON `Business` (`CountryLanguageID`);

CREATE INDEX `IX_Business_CountryStateID` ON `Business` (`CountryStateID`);

CREATE INDEX `IX_Business_CurrencyID` ON `Business` (`CurrencyID`);

CREATE INDEX `IX_Business_ParentBusinessID` ON `Business` (`ParentBusinessID`);

CREATE INDEX `IX_Business_TimezoneID` ON `Business` (`TimezoneID`);

CREATE INDEX `IX_BusinessApplication_BusinessID` ON `BusinessApplication` (`BusinessID`);

CREATE INDEX `IX_BusinessApplication_BusinessProfileRecordID` ON `BusinessApplication` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessApplicationQueryRecord_BusinessApplicationID` ON `BusinessApplicationQueryRecord` (`BusinessApplicationID`);

CREATE INDEX `IX_BusinessApplicationReplyURL_BusinessApplicationID` ON `BusinessApplicationReplyURL` (`BusinessApplicationID`);

CREATE INDEX `IX_BusinessApplicationRequestedPermission_BusinessApplicationID` ON `BusinessApplicationRequestedPermission` (`BusinessApplicationID`);

CREATE INDEX `IX_BusinessApplicationRequestedPermission_BusinessPermissionID` ON `BusinessApplicationRequestedPermission` (`BusinessPermissionID`);

CREATE INDEX `IX_BusinessApplicationSecret_AccessKeyPairID` ON `BusinessApplicationSecret` (`AccessKeyPairID`);

CREATE INDEX `IX_BusinessApplicationSecret_BusinessApplicationID` ON `BusinessApplicationSecret` (`BusinessApplicationID`);

CREATE INDEX `IX_BusinessApplicationSecret_JwtSigningAccessKeyPairID` ON `BusinessApplicationSecret` (`JwtSigningAccessKeyPairID`);

CREATE INDEX `IX_BusinessDepartment_BusinessID` ON `BusinessDepartment` (`BusinessID`);

CREATE INDEX `IX_BusinessDepartment_BusinessProfileRecordID` ON `BusinessDepartment` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessDepartment_OrganizationProfileID` ON `BusinessDepartment` (`OrganizationProfileID`);

CREATE INDEX `IX_BusinessDepartment_ParentDepartmentID` ON `BusinessDepartment` (`ParentDepartmentID`);

CREATE INDEX `IX_BusinessDomain_BusinessID` ON `BusinessDomain` (`BusinessID`);

CREATE INDEX `IX_BusinessIndustry_BusinessProfileRecordID` ON `BusinessIndustry` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessIndustry_ParentBusinessIndustryID` ON `BusinessIndustry` (`ParentBusinessIndustryID`);

CREATE INDEX `IX_BusinessIndustryRecord_BusinessID` ON `BusinessIndustryRecord` (`BusinessID`);

CREATE INDEX `IX_BusinessIndustryRecord_BusinessIndustryID` ON `BusinessIndustryRecord` (`BusinessIndustryID`);

CREATE INDEX `IX_BusinessPermission_BusinessID` ON `BusinessPermission` (`BusinessID`);

CREATE INDEX `IX_BusinessPermission_BusinessProfileRecordID` ON `BusinessPermission` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessPermissionGrant_BusinessApplicationID` ON `BusinessPermissionGrant` (`BusinessApplicationID`);

CREATE INDEX `IX_BusinessPermissionGrant_BusinessID` ON `BusinessPermissionGrant` (`BusinessID`);

CREATE INDEX `IX_BusinessPermissionGrant_BusinessPermissionID` ON `BusinessPermissionGrant` (`BusinessPermissionID`);

CREATE INDEX `IX_BusinessPermissionGrant_BusinessProfileRecordID` ON `BusinessPermissionGrant` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessPermissionGrant_BusinessSecurityRoleID` ON `BusinessPermissionGrant` (`BusinessSecurityRoleID`);

CREATE INDEX `IX_BusinessPermissionGrant_GrantorBusinessProfileRecordID` ON `BusinessPermissionGrant` (`GrantorBusinessProfileRecordID`);

CREATE INDEX `IX_BusinessPosition_BusinessID` ON `BusinessPosition` (`BusinessID`);

CREATE INDEX `IX_BusinessPosition_BusinessProfileRecordID` ON `BusinessPosition` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessProcess_BusinessID` ON `BusinessProcess` (`BusinessID`);

CREATE INDEX `IX_BusinessProcess_BusinessProfileRecordID` ON `BusinessProcess` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessProcess_ParentBusinessProcessID` ON `BusinessProcess` (`ParentBusinessProcessID`);

CREATE INDEX `IX_BusinessProcessStage_AppraisalWorkflowID` ON `BusinessProcessStage` (`AppraisalWorkflowID`);

CREATE INDEX `IX_BusinessProcessStage_BusinessID` ON `BusinessProcessStage` (`BusinessID`);

CREATE INDEX `IX_BusinessProcessStage_BusinessProcessID` ON `BusinessProcessStage` (`BusinessProcessID`);

CREATE INDEX `IX_BusinessProcessStage_BusinessProfileRecordID` ON `BusinessProcessStage` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessProcessStage_DealUnitFlowID` ON `BusinessProcessStage` (`DealUnitFlowID`);

CREATE INDEX `IX_BusinessProcessStage_ParentBusinessProcessStageID` ON `BusinessProcessStage` (`ParentBusinessProcessStageID`);

CREATE INDEX `IX_BusinessProcessStageRelation_ChildBusinessProcessStageID` ON `BusinessProcessStageRelation` (`ChildBusinessProcessStageID`);

CREATE INDEX `IX_BusinessProcessStageRelation_ParentBusinessProcessStageID` ON `BusinessProcessStageRelation` (`ParentBusinessProcessStageID`);

CREATE INDEX `IX_BusinessProfileInvitation_BusinessID` ON `BusinessProfileInvitation` (`BusinessID`);

CREATE INDEX `IX_BusinessProfileInvitation_BusinessProfileRecordID` ON `BusinessProfileInvitation` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessProfileRecord_AccountHolderID` ON `BusinessProfileRecord` (`AccountHolderID`);

CREATE INDEX `IX_BusinessProfileRecord_BusinessID` ON `BusinessProfileRecord` (`BusinessID`);

CREATE INDEX `IX_BusinessRelationship_ChildBusinessID` ON `BusinessRelationship` (`ChildBusinessID`);

CREATE INDEX `IX_BusinessRelationship_ParentBusinessID` ON `BusinessRelationship` (`ParentBusinessID`);

CREATE INDEX `IX_BusinessSecurityLog_BusinessID` ON `BusinessSecurityLog` (`BusinessID`);

CREATE INDEX `IX_BusinessSecurityLog_BusinessProfileRecordID` ON `BusinessSecurityLog` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessSecurityLog_SigningCertificateID` ON `BusinessSecurityLog` (`SigningCertificateID`);

CREATE INDEX `IX_BusinessSecurityLog_SigningProfileID` ON `BusinessSecurityLog` (`SigningProfileID`);

CREATE INDEX `IX_BusinessSecurityRole_BusinessID` ON `BusinessSecurityRole` (`BusinessID`);

CREATE INDEX `IX_BusinessSecurityRole_BusinessProfileRecordID` ON `BusinessSecurityRole` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessTeam_BusinessID` ON `BusinessTeam` (`BusinessID`);

CREATE INDEX `IX_BusinessTeam_BusinessProfileRecordID` ON `BusinessTeam` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessTeam_BusinessUnitID` ON `BusinessTeam` (`BusinessUnitID`);

CREATE INDEX `IX_BusinessTeam_OrganizationProfileID` ON `BusinessTeam` (`OrganizationProfileID`);

CREATE INDEX `IX_BusinessTeamRecord_BusinessID` ON `BusinessTeamRecord` (`BusinessID`);

CREATE INDEX `IX_BusinessTeamRecord_BusinessProfileRecordID` ON `BusinessTeamRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessTeamRecord_BusinessTeamID` ON `BusinessTeamRecord` (`BusinessTeamID`);

CREATE INDEX `IX_BusinessTeamRecord_ContactID` ON `BusinessTeamRecord` (`ContactID`);

CREATE INDEX `IX_BusinessTeamRecord_EmployeeProfileID` ON `BusinessTeamRecord` (`EmployeeProfileID`);

CREATE INDEX `IX_BusinessTeamRecord_ProjectID` ON `BusinessTeamRecord` (`ProjectID`);

CREATE UNIQUE INDEX `IX_BusinessTenantSettings_BusinessID` ON `BusinessTenantSettings` (`BusinessID`);

CREATE INDEX `IX_BusinessUnit_BusinessID` ON `BusinessUnit` (`BusinessID`);

CREATE INDEX `IX_BusinessUnit_BusinessProfileRecordID` ON `BusinessUnit` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessUnit_CountryID` ON `BusinessUnit` (`CountryID`);

CREATE INDEX `IX_BusinessUnit_OrganizationProfileID` ON `BusinessUnit` (`OrganizationProfileID`);

CREATE INDEX `IX_BusinessUnit_ParentBusinessUnitID` ON `BusinessUnit` (`ParentBusinessUnitID`);

CREATE INDEX `IX_BusinessUnitRecord_BusinessID` ON `BusinessUnitRecord` (`BusinessID`);

CREATE INDEX `IX_BusinessUnitRecord_BusinessProfileRecordID` ON `BusinessUnitRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_BusinessUnitRecord_BusinessUnitID` ON `BusinessUnitRecord` (`BusinessUnitID`);

CREATE UNIQUE INDEX `IX_Cart_AccountHolderID` ON `Cart` (`AccountHolderID`);

CREATE UNIQUE INDEX `IX_Cart_BusinessID` ON `Cart` (`BusinessID`);

CREATE INDEX `IX_Cart_CityID` ON `Cart` (`CityID`);

CREATE UNIQUE INDEX `IX_Cart_ContactID` ON `Cart` (`ContactID`);

CREATE INDEX `IX_Cart_CountryID` ON `Cart` (`CountryID`);

CREATE INDEX `IX_Cart_CountryStateID` ON `Cart` (`CountryStateID`);

CREATE INDEX `IX_Cart_CurrencyID` ON `Cart` (`CurrencyID`);

CREATE INDEX `IX_Cart_GuestCart_BusinessID` ON `Cart` (`GuestCart_BusinessID`);

CREATE INDEX `IX_Cart_IPLookupID` ON `Cart` (`IPLookupID`);

CREATE INDEX `IX_Cart_LocationID` ON `Cart` (`LocationID`);

CREATE INDEX `IX_CartRecord_CartID` ON `CartRecord` (`CartID`);

CREATE INDEX `IX_CartRecord_CurrencyID` ON `CartRecord` (`CurrencyID`);

CREATE INDEX `IX_CartRecord_ItemCartRecord_ItemID` ON `CartRecord` (`ItemCartRecord_ItemID`);

CREATE INDEX `IX_CartRecord_ItemID` ON `CartRecord` (`ItemID`);

CREATE INDEX `IX_CartRecord_ItemShippingPolicyID` ON `CartRecord` (`ItemShippingPolicyID`);

CREATE INDEX `IX_CartRecord_RecentlyViewedItemRecord_ItemID` ON `CartRecord` (`RecentlyViewedItemRecord_ItemID`);

CREATE INDEX `IX_CartRecord_RefundPolicyID` ON `CartRecord` (`RefundPolicyID`);

CREATE INDEX `IX_CartRecord_ReturnPolicyID` ON `CartRecord` (`ReturnPolicyID`);

CREATE INDEX `IX_CartRecord_ShippingAddressID` ON `CartRecord` (`ShippingAddressID`);

CREATE INDEX `IX_CartRecord_WarrantyPolicyID` ON `CartRecord` (`WarrantyPolicyID`);

CREATE INDEX `IX_Cell_ColumnID` ON `Cell` (`ColumnID`);

CREATE INDEX `IX_Cell_RowID` ON `Cell` (`RowID`);

CREATE INDEX `IX_City_CountryID` ON `City` (`CountryID`);

CREATE INDEX `IX_City_StateID` ON `City` (`StateID`);

CREATE INDEX `IX_CognitiveAgent_BusinessID` ON `CognitiveAgent` (`BusinessID`);

CREATE INDEX `IX_CognitiveAgent_BusinessProfileRecordID` ON `CognitiveAgent` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CognitiveAgentConversation_AccountHolderID` ON `CognitiveAgentConversation` (`AccountHolderID`);

CREATE INDEX `IX_CognitiveAgentConversation_BusinessID` ON `CognitiveAgentConversation` (`BusinessID`);

CREATE INDEX `IX_CognitiveAgentConversation_BusinessProfileRecordID` ON `CognitiveAgentConversation` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CognitiveAgentConversation_CognitiveAgentID` ON `CognitiveAgentConversation` (`CognitiveAgentID`);

CREATE INDEX `IX_CognitiveAgentConversation_IndividualID` ON `CognitiveAgentConversation` (`IndividualID`);

CREATE INDEX `IX_CognitiveAgentConversation_OrganizationID` ON `CognitiveAgentConversation` (`OrganizationID`);

CREATE INDEX `IX_CognitiveAgentConversation_ReceptorBusinessID` ON `CognitiveAgentConversation` (`ReceptorBusinessID`);

CREATE INDEX `IX_Column_EntityID` ON `Column` (`EntityID`);

CREATE INDEX `IX_Commission_BusinessID` ON `Commission` (`BusinessID`);

CREATE INDEX `IX_Commission_BusinessProfileRecordID` ON `Commission` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Commission_EmmisorContactID` ON `Commission` (`EmmisorContactID`);

CREATE INDEX `IX_Commission_EmmisorWalletAccountID` ON `Commission` (`EmmisorWalletAccountID`);

CREATE INDEX `IX_Commission_PaymentID` ON `Commission` (`PaymentID`);

CREATE INDEX `IX_Commission_ReceptorContactID` ON `Commission` (`ReceptorContactID`);

CREATE INDEX `IX_Commission_ReceptorWalletAccountID` ON `Commission` (`ReceptorWalletAccountID`);

CREATE INDEX `IX_Commission_SalaryID` ON `Commission` (`SalaryID`);

CREATE INDEX `IX_Contact_AccountHolderID` ON `Contact` (`AccountHolderID`);

CREATE INDEX `IX_Contact_BusinessID` ON `Contact` (`BusinessID`);

CREATE INDEX `IX_Contact_BusinessProfileRecordID` ON `Contact` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Contact_BusinessTeamID` ON `Contact` (`BusinessTeamID`);

CREATE INDEX `IX_Contact_CityID` ON `Contact` (`CityID`);

CREATE INDEX `IX_Contact_ContactSourceID` ON `Contact` (`ContactSourceID`);

CREATE INDEX `IX_Contact_CountryID` ON `Contact` (`CountryID`);

CREATE INDEX `IX_Contact_CountryLanguageID` ON `Contact` (`CountryLanguageID`);

CREATE INDEX `IX_Contact_CountryStateID` ON `Contact` (`CountryStateID`);

CREATE INDEX `IX_Contact_CurrencyID` ON `Contact` (`CurrencyID`);

CREATE INDEX `IX_Contact_FinancialBookID` ON `Contact` (`FinancialBookID`);

CREATE INDEX `IX_Contact_ItemShippingPolicyID` ON `Contact` (`ItemShippingPolicyID`);

CREATE INDEX `IX_Contact_OrganizationID` ON `Contact` (`OrganizationID`);

CREATE INDEX `IX_Contact_OwnerContactID` ON `Contact` (`OwnerContactID`);

CREATE INDEX `IX_Contact_ParentContactID` ON `Contact` (`ParentContactID`);

CREATE INDEX `IX_Contact_PartnerProfileID` ON `Contact` (`PartnerProfileID`);

CREATE INDEX `IX_Contact_PaymentTermID` ON `Contact` (`PaymentTermID`);

CREATE INDEX `IX_Contact_PrimaryContactID` ON `Contact` (`PrimaryContactID`);

CREATE INDEX `IX_Contact_RelatedAccountHolderID` ON `Contact` (`RelatedAccountHolderID`);

CREATE INDEX `IX_Contact_RelatedBusinessID` ON `Contact` (`RelatedBusinessID`);

CREATE UNIQUE INDEX `IX_Contact_RelatedBusinessProfileRecordID` ON `Contact` (`RelatedBusinessProfileRecordID`);

CREATE INDEX `IX_Contact_ShippingMethodID` ON `Contact` (`ShippingMethodID`);

CREATE INDEX `IX_Contact_TerritoryID` ON `Contact` (`TerritoryID`);

CREATE INDEX `IX_Contact_TimezoneID` ON `Contact` (`TimezoneID`);

CREATE INDEX `IX_ContactGroupRecord_ContactID` ON `ContactGroupRecord` (`ContactID`);

CREATE INDEX `IX_ContactGroupRecord_ContactsGroupID` ON `ContactGroupRecord` (`ContactsGroupID`);

CREATE INDEX `IX_ContactProfile_BankID` ON `ContactProfile` (`BankID`);

CREATE INDEX `IX_ContactProfile_BusinessID` ON `ContactProfile` (`BusinessID`);

CREATE INDEX `IX_ContactProfile_BusinessProfileRecordID` ON `ContactProfile` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ContactProfile_CityID` ON `ContactProfile` (`CityID`);

CREATE INDEX `IX_ContactProfile_ContactID` ON `ContactProfile` (`ContactID`);

CREATE INDEX `IX_ContactProfile_CountryID` ON `ContactProfile` (`CountryID`);

CREATE INDEX `IX_ContactProfile_CountryStateID` ON `ContactProfile` (`CountryStateID`);

CREATE INDEX `IX_ContactProfile_EmployeeTypeID` ON `ContactProfile` (`EmployeeTypeID`);

CREATE INDEX `IX_ContactProfile_FiscalAuthorityID` ON `ContactProfile` (`FiscalAuthorityID`);

CREATE INDEX `IX_ContactProfile_FiscalIdentificationTypeID` ON `ContactProfile` (`FiscalIdentificationTypeID`);

CREATE INDEX `IX_ContactProfile_FiscalRegimeID` ON `ContactProfile` (`FiscalRegimeID`);

CREATE INDEX `IX_ContactProfile_JobTitleID` ON `ContactProfile` (`JobTitleID`);

CREATE INDEX `IX_ContactProfile_MarketingCampaignID` ON `ContactProfile` (`MarketingCampaignID`);

CREATE INDEX `IX_ContactProfile_PartnerTierID` ON `ContactProfile` (`PartnerTierID`);

CREATE INDEX `IX_ContactProfile_WalletAccountID` ON `ContactProfile` (`WalletAccountID`);

CREATE INDEX `IX_ContactRelation_BusinessID` ON `ContactRelation` (`BusinessID`);

CREATE INDEX `IX_ContactRelation_ContactID` ON `ContactRelation` (`ContactID`);

CREATE INDEX `IX_ContactRelation_ContactRelationTypeID` ON `ContactRelation` (`ContactRelationTypeID`);

CREATE INDEX `IX_ContactRelation_RelatedContactID` ON `ContactRelation` (`RelatedContactID`);

CREATE INDEX `IX_ContactRelationType_BusinessID` ON `ContactRelationType` (`BusinessID`);

CREATE INDEX `IX_ContactSource_BusinessID` ON `ContactSource` (`BusinessID`);

CREATE INDEX `IX_Conversation_SocialProfileID` ON `Conversation` (`SocialProfileID`);

CREATE INDEX `IX_Conversation_SupportTicketID` ON `Conversation` (`SupportTicketID`);

CREATE INDEX `IX_CostCentre_BusinessID` ON `CostCentre` (`BusinessID`);

CREATE INDEX `IX_CostCentre_CostCentresGroupID` ON `CostCentre` (`CostCentresGroupID`);

CREATE INDEX `IX_CostCentre_ParentCostCentreID` ON `CostCentre` (`ParentCostCentreID`);

CREATE INDEX `IX_CostCentresGroup_BusinessID` ON `CostCentresGroup` (`BusinessID`);

CREATE INDEX `IX_CostCentresGroup_ParentCostCentresGroupID` ON `CostCentresGroup` (`ParentCostCentresGroupID`);

CREATE INDEX `IX_CountryAltSpelling_CountryID` ON `CountryAltSpelling` (`CountryID`);

CREATE INDEX `IX_CountryBorder_BorderCountryID` ON `CountryBorder` (`BorderCountryID`);

CREATE INDEX `IX_CountryBorder_CountryID` ON `CountryBorder` (`CountryID`);

CREATE INDEX `IX_CountryCallingCode_CountryID` ON `CountryCallingCode` (`CountryID`);

CREATE INDEX `IX_CountryLanguageRecord_CountryID` ON `CountryLanguageRecord` (`CountryID`);

CREATE INDEX `IX_CountryLanguageRecord_CountryLanguageID` ON `CountryLanguageRecord` (`CountryLanguageID`);

CREATE UNIQUE INDEX `IX_CountryNameTranslations_CountryID` ON `CountryNameTranslations` (`CountryID`);

CREATE INDEX `IX_CountryRegionalBlockRecord_CountryID` ON `CountryRegionalBlockRecord` (`CountryID`);

CREATE INDEX `IX_CountryRegionalBlockRecord_RegionalBlockID` ON `CountryRegionalBlockRecord` (`RegionalBlockID`);

CREATE INDEX `IX_CountryState_CountryID` ON `CountryState` (`CountryID`);

CREATE INDEX `IX_CountryTimeZoneRecord_CountryID` ON `CountryTimeZoneRecord` (`CountryID`);

CREATE INDEX `IX_CountryTimeZoneRecord_TimezoneID` ON `CountryTimeZoneRecord` (`TimezoneID`);

CREATE INDEX `IX_CountryTopLevelDomain_CountryID` ON `CountryTopLevelDomain` (`CountryID`);

CREATE INDEX `IX_CourrierItemShippingPolicyRecord_BusinessID` ON `CourrierItemShippingPolicyRecord` (`BusinessID`);

CREATE INDEX `IX_CourrierItemShippingPolicyRecord_ItemShippingPolicyID` ON `CourrierItemShippingPolicyRecord` (`ItemShippingPolicyID`);

CREATE INDEX `IX_CourrierItemShippingPolicyRecord_ShippingCourierID` ON `CourrierItemShippingPolicyRecord` (`ShippingCourierID`);

CREATE INDEX `IX_CourseAssignment_BusinessID` ON `CourseAssignment` (`BusinessID`);

CREATE INDEX `IX_CourseAssignment_BusinessProfileRecordID` ON `CourseAssignment` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseAssignment_CourseAssignmentTypeID` ON `CourseAssignment` (`CourseAssignmentTypeID`);

CREATE INDEX `IX_CourseAssignment_CourseCohortID` ON `CourseAssignment` (`CourseCohortID`);

CREATE INDEX `IX_CourseAssignment_CourseGradingRubricID` ON `CourseAssignment` (`CourseGradingRubricID`);

CREATE INDEX `IX_CourseAssignment_CourseID` ON `CourseAssignment` (`CourseID`);

CREATE INDEX `IX_CourseAssignment_CourseProblemSetID` ON `CourseAssignment` (`CourseProblemSetID`);

CREATE INDEX `IX_CourseAssignment_CourseUnitID` ON `CourseAssignment` (`CourseUnitID`);

CREATE INDEX `IX_CourseAssignmentSubmit_BusinessID` ON `CourseAssignmentSubmit` (`BusinessID`);

CREATE INDEX `IX_CourseAssignmentSubmit_CourseAssignmentID` ON `CourseAssignmentSubmit` (`CourseAssignmentID`);

CREATE INDEX `IX_CourseAssignmentSubmit_CourseID` ON `CourseAssignmentSubmit` (`CourseID`);

CREATE INDEX `IX_CourseAssignmentSubmit_GradingCriteriaCategoryID` ON `CourseAssignmentSubmit` (`GradingCriteriaCategoryID`);

CREATE INDEX `IX_CourseAssignmentSubmit_InstructorProfileID` ON `CourseAssignmentSubmit` (`InstructorProfileID`);

CREATE INDEX `IX_CourseAssignmentSubmit_StudentProfileID` ON `CourseAssignmentSubmit` (`StudentProfileID`);

CREATE INDEX `IX_CourseAssignmentType_BusinessID` ON `CourseAssignmentType` (`BusinessID`);

CREATE INDEX `IX_CourseAssignmentType_BusinessProfileRecordID` ON `CourseAssignmentType` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseAssignmentType_CourseID` ON `CourseAssignmentType` (`CourseID`);

CREATE INDEX `IX_CourseCertificate_BusinessID` ON `CourseCertificate` (`BusinessID`);

CREATE INDEX `IX_CourseCertificate_BusinessProfileRecordID` ON `CourseCertificate` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseCertificate_CurriculumID` ON `CourseCertificate` (`CurriculumID`);

CREATE INDEX `IX_CourseCertificate_ProficiencyRatingModelID` ON `CourseCertificate` (`ProficiencyRatingModelID`);

CREATE INDEX `IX_CourseCertificate_ProficiencyRatingValueID` ON `CourseCertificate` (`ProficiencyRatingValueID`);

CREATE INDEX `IX_CourseCohort_BusinessID` ON `CourseCohort` (`BusinessID`);

CREATE INDEX `IX_CourseCohort_BusinessProfileRecordID` ON `CourseCohort` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseCohort_CourseContentGroupID` ON `CourseCohort` (`CourseContentGroupID`);

CREATE INDEX `IX_CourseCohort_CourseID` ON `CourseCohort` (`CourseID`);

CREATE INDEX `IX_CourseCollectionRecord_CourseCollectionID` ON `CourseCollectionRecord` (`CourseCollectionID`);

CREATE INDEX `IX_CourseCollectionRecord_CourseID` ON `CourseCollectionRecord` (`CourseID`);

CREATE INDEX `IX_CourseCompletionCertificate_BusinessID` ON `CourseCompletionCertificate` (`BusinessID`);

CREATE INDEX `IX_CourseCompletionCertificate_BusinessProfileRecordID` ON `CourseCompletionCertificate` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseCompletionCertificate_CourseCompletionCertificateTempl~` ON `CourseCompletionCertificate` (`CourseCompletionCertificateTemplateID`);

CREATE UNIQUE INDEX `IX_CourseCompletionCertificate_CourseEnrollmentID` ON `CourseCompletionCertificate` (`CourseEnrollmentID`);

CREATE INDEX `IX_CourseCompletionCertificate_CourseID` ON `CourseCompletionCertificate` (`CourseID`);

CREATE INDEX `IX_CourseCompletionCertificate_StudentProfileID` ON `CourseCompletionCertificate` (`StudentProfileID`);

CREATE INDEX `IX_CourseContentGroup_BusinessID` ON `CourseContentGroup` (`BusinessID`);

CREATE INDEX `IX_CourseContentGroup_BusinessProfileRecordID` ON `CourseContentGroup` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseContentGroup_CourseID` ON `CourseContentGroup` (`CourseID`);

CREATE INDEX `IX_CourseEnrollment_BusinessID` ON `CourseEnrollment` (`BusinessID`);

CREATE INDEX `IX_CourseEnrollment_BusinessProfileRecordID` ON `CourseEnrollment` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseEnrollment_CourseCohortID` ON `CourseEnrollment` (`CourseCohortID`);

CREATE INDEX `IX_CourseEnrollment_CourseID` ON `CourseEnrollment` (`CourseID`);

CREATE INDEX `IX_CourseEnrollment_StudentProfileID` ON `CourseEnrollment` (`StudentProfileID`);

CREATE INDEX `IX_CourseGradingCriteria_BusinessID` ON `CourseGradingCriteria` (`BusinessID`);

CREATE INDEX `IX_CourseGradingCriteria_BusinessProfileRecordID` ON `CourseGradingCriteria` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseGradingCriteria_GradingRubricID` ON `CourseGradingCriteria` (`GradingRubricID`);

CREATE INDEX `IX_CourseGradingCriteriaCategory_BusinessID` ON `CourseGradingCriteriaCategory` (`BusinessID`);

CREATE INDEX `IX_CourseGradingCriteriaCategory_BusinessProfileRecordID` ON `CourseGradingCriteriaCategory` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseGradingCriteriaCategory_CourseGradingCriteriaID` ON `CourseGradingCriteriaCategory` (`CourseGradingCriteriaID`);

CREATE INDEX `IX_CourseGradingCriteriaCategory_CourseGradingRubricID` ON `CourseGradingCriteriaCategory` (`CourseGradingRubricID`);

CREATE INDEX `IX_CourseGradingRubric_BusinessID` ON `CourseGradingRubric` (`BusinessID`);

CREATE INDEX `IX_CourseGradingRubric_BusinessProfileRecordID` ON `CourseGradingRubric` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseGradingRubric_CourseID` ON `CourseGradingRubric` (`CourseID`);

CREATE INDEX `IX_CourseHandout_BusinessID` ON `CourseHandout` (`BusinessID`);

CREATE INDEX `IX_CourseHandout_BusinessProfileRecordID` ON `CourseHandout` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseHandout_CourseID` ON `CourseHandout` (`CourseID`);

CREATE INDEX `IX_CourseHandout_CourseUnitID` ON `CourseHandout` (`CourseUnitID`);

CREATE INDEX `IX_CourseLibrary_BusinessID` ON `CourseLibrary` (`BusinessID`);

CREATE INDEX `IX_CourseLibrary_BusinessProfileRecordID` ON `CourseLibrary` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseLibrary_CourseID` ON `CourseLibrary` (`CourseID`);

CREATE INDEX `IX_CourseLibrary_CourseUnitID` ON `CourseLibrary` (`CourseUnitID`);

CREATE INDEX `IX_CourseProblemSet_BusinessID` ON `CourseProblemSet` (`BusinessID`);

CREATE INDEX `IX_CourseProblemSet_BusinessProfileRecordID` ON `CourseProblemSet` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseProblemSet_CourseGradingRubricID` ON `CourseProblemSet` (`CourseGradingRubricID`);

CREATE INDEX `IX_CourseProblemSet_CourseID` ON `CourseProblemSet` (`CourseID`);

CREATE INDEX `IX_CourseProblemSet_CourseUnitID` ON `CourseProblemSet` (`CourseUnitID`);

CREATE INDEX `IX_CourseSection_BusinessID` ON `CourseSection` (`BusinessID`);

CREATE INDEX `IX_CourseSection_BusinessProfileRecordID` ON `CourseSection` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseSection_CourseID` ON `CourseSection` (`CourseID`);

CREATE INDEX `IX_CourseTeamMembership_BusinessID` ON `CourseTeamMembership` (`BusinessID`);

CREATE INDEX `IX_CourseTeamMembership_BusinessProfileRecordID` ON `CourseTeamMembership` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseTeamMembership_CourseID` ON `CourseTeamMembership` (`CourseID`);

CREATE INDEX `IX_CourseTeamMembership_InstructorProfileID` ON `CourseTeamMembership` (`InstructorProfileID`);

CREATE INDEX `IX_CourseUnit_BusinessID` ON `CourseUnit` (`BusinessID`);

CREATE INDEX `IX_CourseUnit_BusinessProfileRecordID` ON `CourseUnit` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseUnit_CourseContentGroupID` ON `CourseUnit` (`CourseContentGroupID`);

CREATE INDEX `IX_CourseUnit_CourseID` ON `CourseUnit` (`CourseID`);

CREATE INDEX `IX_CourseUnit_CourseSectionID` ON `CourseUnit` (`CourseSectionID`);

CREATE INDEX `IX_CourseWiki_BusinessID` ON `CourseWiki` (`BusinessID`);

CREATE INDEX `IX_CourseWiki_BusinessProfileRecordID` ON `CourseWiki` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CourseWiki_CourseID` ON `CourseWiki` (`CourseID`);

CREATE INDEX `IX_CourseWiki_CourseUnitID` ON `CourseWiki` (`CourseUnitID`);

CREATE INDEX `IX_CreditLimit_BusinessID` ON `CreditLimit` (`BusinessID`);

CREATE INDEX `IX_CreditLimit_BusinessProfileRecordID` ON `CreditLimit` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CreditLimit_ContactID` ON `CreditLimit` (`ContactID`);

CREATE INDEX `IX_CreditLimit_ContactProfileID` ON `CreditLimit` (`ContactProfileID`);

CREATE INDEX `IX_CreditLimit_CurrencyID` ON `CreditLimit` (`CurrencyID`);

CREATE INDEX `IX_Currency_CountryID` ON `Currency` (`CountryID`);

CREATE UNIQUE INDEX `IX_Curriculum_SocialProfileID` ON `Curriculum` (`SocialProfileID`);

CREATE INDEX `IX_CurriculumSkill_BusinessID` ON `CurriculumSkill` (`BusinessID`);

CREATE INDEX `IX_CurriculumSkill_BusinessProfileRecordID` ON `CurriculumSkill` (`BusinessProfileRecordID`);

CREATE INDEX `IX_CustomProperty_BusinessID` ON `CustomProperty` (`BusinessID`);

CREATE INDEX `IX_CustomPropertyRecord_ContactID` ON `CustomPropertyRecord` (`ContactID`);

CREATE INDEX `IX_CustomPropertyRecord_CustomPropertyID` ON `CustomPropertyRecord` (`CustomPropertyID`);

CREATE INDEX `IX_CustomPropertyRecord_DealUnitID` ON `CustomPropertyRecord` (`DealUnitID`);

CREATE INDEX `IX_DealUnit_AccountHolderID` ON `DealUnit` (`AccountHolderID`);

CREATE INDEX `IX_DealUnit_BusinessID` ON `DealUnit` (`BusinessID`);

CREATE INDEX `IX_DealUnit_BusinessProfileRecordID` ON `DealUnit` (`BusinessProfileRecordID`);

CREATE INDEX `IX_DealUnit_BusinessTeamID` ON `DealUnit` (`BusinessTeamID`);

CREATE INDEX `IX_DealUnit_CurrencyID` ON `DealUnit` (`CurrencyID`);

CREATE INDEX `IX_DealUnit_DealUnitFlowID` ON `DealUnit` (`DealUnitFlowID`);

CREATE INDEX `IX_DealUnit_DealUnitFlowStageID` ON `DealUnit` (`DealUnitFlowStageID`);

CREATE INDEX `IX_DealUnit_IndividualID` ON `DealUnit` (`IndividualID`);

CREATE INDEX `IX_DealUnit_MarketingCampaignID` ON `DealUnit` (`MarketingCampaignID`);

CREATE INDEX `IX_DealUnit_OrganizationID` ON `DealUnit` (`OrganizationID`);

CREATE INDEX `IX_DealUnit_PartnerProfileID` ON `DealUnit` (`PartnerProfileID`);

CREATE INDEX `IX_DealUnit_PriceListID` ON `DealUnit` (`PriceListID`);

CREATE INDEX `IX_DealUnit_ReceptorBusinessID` ON `DealUnit` (`ReceptorBusinessID`);

CREATE INDEX `IX_DealUnit_TerritoryID` ON `DealUnit` (`TerritoryID`);

CREATE INDEX `IX_DealUnit_WorkOrderTypeID` ON `DealUnit` (`WorkOrderTypeID`);

CREATE INDEX `IX_DeliveryNote_BusinessID` ON `DeliveryNote` (`BusinessID`);

CREATE INDEX `IX_Discount_BusinessID` ON `Discount` (`BusinessID`);

CREATE INDEX `IX_Discount_BusinessProfileRecordID` ON `Discount` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Discount_DiscountListID` ON `Discount` (`DiscountListID`);

CREATE INDEX `IX_DiscountList_BusinessID` ON `DiscountList` (`BusinessID`);

CREATE INDEX `IX_DiscountList_BusinessProfileRecordID` ON `DiscountList` (`BusinessProfileRecordID`);

CREATE INDEX `IX_DiscountList_CurrencyID` ON `DiscountList` (`CurrencyID`);

CREATE INDEX `IX_EmailGroup_BusinessID` ON `EmailGroup` (`BusinessID`);

CREATE INDEX `IX_EmailGroup_BusinessProfileRecordID` ON `EmailGroup` (`BusinessProfileRecordID`);

CREATE INDEX `IX_EmailGroupMembership_BusinessID` ON `EmailGroupMembership` (`BusinessID`);

CREATE INDEX `IX_EmailGroupMembership_BusinessProfileRecordID` ON `EmailGroupMembership` (`BusinessProfileRecordID`);

CREATE INDEX `IX_EmailGroupMembership_ContactID` ON `EmailGroupMembership` (`ContactID`);

CREATE INDEX `IX_EmailGroupMembership_EmailGroupID` ON `EmailGroupMembership` (`EmailGroupID`);

CREATE INDEX `IX_EmailRecord_AccountHolderID` ON `EmailRecord` (`AccountHolderID`);

CREATE INDEX `IX_EmailRecord_BusinessID` ON `EmailRecord` (`BusinessID`);

CREATE INDEX `IX_EmailRecord_BusinessProfileRecordID` ON `EmailRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_EmailRecord_EmailSignatureID` ON `EmailRecord` (`EmailSignatureID`);

CREATE INDEX `IX_EmailRecord_EmailTemplateID` ON `EmailRecord` (`EmailTemplateID`);

CREATE INDEX `IX_EmailRecord_IndividualID` ON `EmailRecord` (`IndividualID`);

CREATE INDEX `IX_EmailRecord_MarketingCampaignID` ON `EmailRecord` (`MarketingCampaignID`);

CREATE INDEX `IX_EmailRecord_OrganizationID` ON `EmailRecord` (`OrganizationID`);

CREATE INDEX `IX_EmailRecord_ReceptorBusinessID` ON `EmailRecord` (`ReceptorBusinessID`);

CREATE INDEX `IX_EmployeeBenefit_BusinessID` ON `EmployeeBenefit` (`BusinessID`);

CREATE INDEX `IX_EmployeeBenefit_BusinessProfileRecordID` ON `EmployeeBenefit` (`BusinessProfileRecordID`);

CREATE INDEX `IX_EmployeeDegree_BusinessID` ON `EmployeeDegree` (`BusinessID`);

CREATE INDEX `IX_EmployeeDegree_BusinessProfileRecordID` ON `EmployeeDegree` (`BusinessProfileRecordID`);

CREATE INDEX `IX_EmployeeDegree_EmployeeProfileID` ON `EmployeeDegree` (`EmployeeProfileID`);

CREATE INDEX `IX_EmployeeTransfer_BusinessID` ON `EmployeeTransfer` (`BusinessID`);

CREATE INDEX `IX_EmployeeTransfer_BusinessLocationID` ON `EmployeeTransfer` (`BusinessLocationID`);

CREATE INDEX `IX_EmployeeTransfer_BusinessProfileRecordID` ON `EmployeeTransfer` (`BusinessProfileRecordID`);

CREATE INDEX `IX_EmployeeTransfer_EmployeeProfileID` ON `EmployeeTransfer` (`EmployeeProfileID`);

CREATE INDEX `IX_EmployeeType_BusinessID` ON `EmployeeType` (`BusinessID`);

CREATE INDEX `IX_EmployeeType_BusinessProfileRecordID` ON `EmployeeType` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Entitlement_AccountHolderID` ON `Entitlement` (`AccountHolderID`);

CREATE INDEX `IX_Entitlement_BusinessID` ON `Entitlement` (`BusinessID`);

CREATE INDEX `IX_Entitlement_BusinessProfileRecordID` ON `Entitlement` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Entitlement_ContactID` ON `Entitlement` (`ContactID`);

CREATE INDEX `IX_Entitlement_ContactProfileID` ON `Entitlement` (`ContactProfileID`);

CREATE INDEX `IX_Entitlement_EmployeeBenefitID` ON `Entitlement` (`EmployeeBenefitID`);

CREATE INDEX `IX_Entitlement_EmployeeProfileID` ON `Entitlement` (`EmployeeProfileID`);

CREATE INDEX `IX_Entitlement_IndividualID` ON `Entitlement` (`IndividualID`);

CREATE INDEX `IX_Entitlement_LicenseTypeID` ON `Entitlement` (`LicenseTypeID`);

CREATE INDEX `IX_Entitlement_LicensingProfileID` ON `Entitlement` (`LicensingProfileID`);

CREATE INDEX `IX_Entitlement_OrganizationID` ON `Entitlement` (`OrganizationID`);

CREATE INDEX `IX_Entitlement_PaymentTokenID` ON `Entitlement` (`PaymentTokenID`);

CREATE INDEX `IX_Entitlement_ReceptorBusinessID` ON `Entitlement` (`ReceptorBusinessID`);

CREATE INDEX `IX_Entitlement_ServiceID` ON `Entitlement` (`ServiceID`);

CREATE INDEX `IX_Entitlement_ServiceLevelID` ON `Entitlement` (`ServiceLevelID`);

CREATE INDEX `IX_Entitlement_SubscriptionPlanID` ON `Entitlement` (`SubscriptionPlanID`);

CREATE INDEX `IX_Entitlement_WalletAccountID` ON `Entitlement` (`WalletAccountID`);

CREATE INDEX `IX_ExpenseClaim_CostCentreID` ON `ExpenseClaim` (`CostCentreID`);

CREATE INDEX `IX_ExpenseClaim_ExpenseTypeID` ON `ExpenseClaim` (`ExpenseTypeID`);

CREATE INDEX `IX_FileUpload_AccountHolderID` ON `FileUpload` (`AccountHolderID`);

CREATE INDEX `IX_FileUpload_AgreementID` ON `FileUpload` (`AgreementID`);

CREATE INDEX `IX_FileUpload_AgreementRevisionID` ON `FileUpload` (`AgreementRevisionID`);

CREATE INDEX `IX_FileUpload_BusinessID` ON `FileUpload` (`BusinessID`);

CREATE INDEX `IX_FileUpload_BusinessProfileRecordID` ON `FileUpload` (`BusinessProfileRecordID`);

CREATE INDEX `IX_FileUpload_BusinessTeamID` ON `FileUpload` (`BusinessTeamID`);

CREATE INDEX `IX_FileUpload_ContactID` ON `FileUpload` (`ContactID`);

CREATE INDEX `IX_FileUpload_CourseAssignmentID` ON `FileUpload` (`CourseAssignmentID`);

CREATE INDEX `IX_FileUpload_CourseID` ON `FileUpload` (`CourseID`);

CREATE INDEX `IX_FileUpload_InquiryRequestID` ON `FileUpload` (`InquiryRequestID`);

CREATE INDEX `IX_FileUpload_ItemAttachment_ItemID` ON `FileUpload` (`ItemAttachment_ItemID`);

CREATE INDEX `IX_FileUpload_ItemID` ON `FileUpload` (`ItemID`);

CREATE INDEX `IX_FileUpload_ParentFileUploadID` ON `FileUpload` (`ParentFileUploadID`);

CREATE INDEX `IX_FileUpload_PrivateMessageID` ON `FileUpload` (`PrivateMessageID`);

CREATE INDEX `IX_FileUpload_SalesLiteratureID` ON `FileUpload` (`SalesLiteratureID`);

CREATE INDEX `IX_FileUpload_SocialCommentID` ON `FileUpload` (`SocialCommentID`);

CREATE INDEX `IX_FileUpload_SocialMediaPostID` ON `FileUpload` (`SocialMediaPostID`);

CREATE INDEX `IX_FileUpload_SocialPostID` ON `FileUpload` (`SocialPostID`);

CREATE INDEX `IX_FileUpload_SocialProfileID` ON `FileUpload` (`SocialProfileID`);

CREATE INDEX `IX_FileUpload_SupportRequestID` ON `FileUpload` (`SupportRequestID`);

CREATE INDEX `IX_FileUpload_TaskID` ON `FileUpload` (`TaskID`);

CREATE INDEX `IX_FinancialBook_BusinessID` ON `FinancialBook` (`BusinessID`);

CREATE INDEX `IX_FiscalAuthority_BusinessID` ON `FiscalAuthority` (`BusinessID`);

CREATE INDEX `IX_FiscalAuthority_BusinessProfileRecordID` ON `FiscalAuthority` (`BusinessProfileRecordID`);

CREATE INDEX `IX_FiscalAuthority_CountryID` ON `FiscalAuthority` (`CountryID`);

CREATE INDEX `IX_FiscalIdentificationType_BusinessID` ON `FiscalIdentificationType` (`BusinessID`);

CREATE INDEX `IX_FiscalIdentificationType_BusinessProfileRecordID` ON `FiscalIdentificationType` (`BusinessProfileRecordID`);

CREATE INDEX `IX_FiscalIdentificationType_FiscalAuthorityID` ON `FiscalIdentificationType` (`FiscalAuthorityID`);

CREATE INDEX `IX_FiscalPeriod_BusinessID` ON `FiscalPeriod` (`BusinessID`);

CREATE INDEX `IX_FiscalPeriod_BusinessProfileRecordID` ON `FiscalPeriod` (`BusinessProfileRecordID`);

CREATE INDEX `IX_FiscalPeriod_FiscalYearID` ON `FiscalPeriod` (`FiscalYearID`);

CREATE INDEX `IX_FiscalRegime_BusinessID` ON `FiscalRegime` (`BusinessID`);

CREATE INDEX `IX_FiscalRegime_BusinessProfileRecordID` ON `FiscalRegime` (`BusinessProfileRecordID`);

CREATE INDEX `IX_FiscalRegime_FiscalAuthorityID` ON `FiscalRegime` (`FiscalAuthorityID`);

CREATE INDEX `IX_FiscalResponsibility_BusinessID` ON `FiscalResponsibility` (`BusinessID`);

CREATE INDEX `IX_FiscalResponsibility_BusinessProfileRecordID` ON `FiscalResponsibility` (`BusinessProfileRecordID`);

CREATE INDEX `IX_FiscalResponsibility_FiscalAuthorityID` ON `FiscalResponsibility` (`FiscalAuthorityID`);

CREATE INDEX `IX_FiscalResponsibilityRecord_BillingProfileID` ON `FiscalResponsibilityRecord` (`BillingProfileID`);

CREATE INDEX `IX_FiscalResponsibilityRecord_BusinessID` ON `FiscalResponsibilityRecord` (`BusinessID`);

CREATE INDEX `IX_FiscalResponsibilityRecord_BusinessProfileRecordID` ON `FiscalResponsibilityRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_FiscalResponsibilityRecord_FiscalResponsibilityID` ON `FiscalResponsibilityRecord` (`FiscalResponsibilityID`);

CREATE INDEX `IX_FiscalYear_BusinessID` ON `FiscalYear` (`BusinessID`);

CREATE INDEX `IX_FiscalYear_BusinessProfileRecordID` ON `FiscalYear` (`BusinessProfileRecordID`);

CREATE INDEX `IX_FiscalYear_FiscalAuthorityID` ON `FiscalYear` (`FiscalAuthorityID`);

CREATE INDEX `IX_FiscalYearDistribution_BudgetID` ON `FiscalYearDistribution` (`BudgetID`);

CREATE INDEX `IX_FiscalYearDistribution_BusinessID` ON `FiscalYearDistribution` (`BusinessID`);

CREATE INDEX `IX_FiscalYearDistribution_BusinessProfileRecordID` ON `FiscalYearDistribution` (`BusinessProfileRecordID`);

CREATE INDEX `IX_FiscalYearDistribution_FiscalYearID` ON `FiscalYearDistribution` (`FiscalYearID`);

CREATE INDEX `IX_FiscalYearRecord_BusinessID` ON `FiscalYearRecord` (`BusinessID`);

CREATE INDEX `IX_FiscalYearRecord_BusinessProfileRecordID` ON `FiscalYearRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_FiscalYearRecord_ContactID` ON `FiscalYearRecord` (`ContactID`);

CREATE INDEX `IX_FiscalYearRecord_FiscalPeriodID` ON `FiscalYearRecord` (`FiscalPeriodID`);

CREATE INDEX `IX_FiscalYearRecord_FiscalYearID` ON `FiscalYearRecord` (`FiscalYearID`);

CREATE INDEX `IX_FollowRecord_FollowedSocialProfileID` ON `FollowRecord` (`FollowedSocialProfileID`);

CREATE INDEX `IX_FollowRecord_FollowerSocialProfileID` ON `FollowRecord` (`FollowerSocialProfileID`);

CREATE INDEX `IX_ForeignExchangeSet_BusinessID` ON `ForeignExchangeSet` (`BusinessID`);

CREATE INDEX `IX_ForeignExchangeSet_BusinessProfileRecordID` ON `ForeignExchangeSet` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ForeignKey_ColumnID` ON `ForeignKey` (`ColumnID`);

CREATE INDEX `IX_ForeignKey_EntityID` ON `ForeignKey` (`EntityID`);

CREATE INDEX `IX_ForeignKey_ForeignColumnID` ON `ForeignKey` (`ForeignColumnID`);

CREATE INDEX `IX_ForeignKey_ForeignEntityID` ON `ForeignKey` (`ForeignEntityID`);

CREATE INDEX `IX_GenericOption_AccountHolderID` ON `GenericOption` (`AccountHolderID`);

CREATE INDEX `IX_GenericOption_BusinessApplicationID` ON `GenericOption` (`BusinessApplicationID`);

CREATE INDEX `IX_GenericOption_BusinessID` ON `GenericOption` (`BusinessID`);

CREATE INDEX `IX_GenericOption_ContactID` ON `GenericOption` (`ContactID`);

CREATE INDEX `IX_GenericOption_WebPortalID` ON `GenericOption` (`WebPortalID`);

CREATE INDEX `IX_GenericRecord_BusinessID` ON `GenericRecord` (`BusinessID`);

CREATE INDEX `IX_GenericRecord_BusinessProfileRecordID` ON `GenericRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_GenericRecord_ItemID` ON `GenericRecord` (`ItemID`);

CREATE INDEX `IX_GenericRecord_ItemPriceID` ON `GenericRecord` (`ItemPriceID`);

CREATE INDEX `IX_GenericRecord_ItemPricingRuleRecord_ItemID` ON `GenericRecord` (`ItemPricingRuleRecord_ItemID`);

CREATE INDEX `IX_GenericRecord_ItemRefundPolicyRecord_ItemID` ON `GenericRecord` (`ItemRefundPolicyRecord_ItemID`);

CREATE INDEX `IX_GenericRecord_ItemReturnPolicyRecord_ItemID` ON `GenericRecord` (`ItemReturnPolicyRecord_ItemID`);

CREATE INDEX `IX_GenericRecord_ItemSellingMarginPolicyID` ON `GenericRecord` (`ItemSellingMarginPolicyID`);

CREATE INDEX `IX_GenericRecord_ItemSellingMarginPolicyRecord_ItemID` ON `GenericRecord` (`ItemSellingMarginPolicyRecord_ItemID`);

CREATE INDEX `IX_GenericRecord_ItemWarrantyPolicyRecord_ItemID` ON `GenericRecord` (`ItemWarrantyPolicyRecord_ItemID`);

CREATE INDEX `IX_GenericRecord_PriceListID` ON `GenericRecord` (`PriceListID`);

CREATE INDEX `IX_GenericRecord_PricingRuleID` ON `GenericRecord` (`PricingRuleID`);

CREATE INDEX `IX_GenericRecord_RefundPolicyID` ON `GenericRecord` (`RefundPolicyID`);

CREATE INDEX `IX_GenericRecord_ReturnPolicyID` ON `GenericRecord` (`ReturnPolicyID`);

CREATE INDEX `IX_GenericRecord_TaxPolicyID` ON `GenericRecord` (`TaxPolicyID`);

CREATE INDEX `IX_GenericRecord_WarrantyPolicyID` ON `GenericRecord` (`WarrantyPolicyID`);

CREATE INDEX `IX_Holiday_BusinessID` ON `Holiday` (`BusinessID`);

CREATE INDEX `IX_HolidaySchedule_BusinessID` ON `HolidaySchedule` (`BusinessID`);

CREATE INDEX `IX_HolidayScheduleRecord_HolidayID` ON `HolidayScheduleRecord` (`HolidayID`);

CREATE INDEX `IX_HolidayScheduleRecord_HolidayScheduleID` ON `HolidayScheduleRecord` (`HolidayScheduleID`);

CREATE INDEX `IX_IndividualSkillRecord_BusinessID` ON `IndividualSkillRecord` (`BusinessID`);

CREATE INDEX `IX_IndividualSkillRecord_BusinessProfileRecordID` ON `IndividualSkillRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_IndividualSkillRecord_CurriculumID` ON `IndividualSkillRecord` (`CurriculumID`);

CREATE INDEX `IX_IndividualSkillRecord_CurriculumSkillID` ON `IndividualSkillRecord` (`CurriculumSkillID`);

CREATE INDEX `IX_IndividualSkillRecord_ProficiencyRatingModelID` ON `IndividualSkillRecord` (`ProficiencyRatingModelID`);

CREATE INDEX `IX_IndividualSkillRecord_ProficiencyRatingValueID` ON `IndividualSkillRecord` (`ProficiencyRatingValueID`);

CREATE INDEX `IX_InquiryRequest_AccountHolderID` ON `InquiryRequest` (`AccountHolderID`);

CREATE INDEX `IX_InquiryRequest_BusinessID` ON `InquiryRequest` (`BusinessID`);

CREATE INDEX `IX_InquiryRequest_BusinessProfileRecordID` ON `InquiryRequest` (`BusinessProfileRecordID`);

CREATE INDEX `IX_InquiryRequest_BusinessTeamID` ON `InquiryRequest` (`BusinessTeamID`);

CREATE INDEX `IX_InquiryRequest_BusinessUnitID` ON `InquiryRequest` (`BusinessUnitID`);

CREATE INDEX `IX_InquiryRequest_CountryID` ON `InquiryRequest` (`CountryID`);

CREATE INDEX `IX_InquiryRequest_PaymentDisputeID` ON `InquiryRequest` (`PaymentDisputeID`);

CREATE INDEX `IX_InquiryRequest_SocialProfileID` ON `InquiryRequest` (`SocialProfileID`);

CREATE INDEX `IX_InquiryRequest_WalletAccountID` ON `InquiryRequest` (`WalletAccountID`);

CREATE INDEX `IX_InstitutionDiploma_AcademicInstitutionID` ON `InstitutionDiploma` (`AcademicInstitutionID`);

CREATE INDEX `IX_InstitutionDiploma_BusinessID` ON `InstitutionDiploma` (`BusinessID`);

CREATE INDEX `IX_InstitutionDiploma_BusinessProfileRecordID` ON `InstitutionDiploma` (`BusinessProfileRecordID`);

CREATE INDEX `IX_InstitutionDiploma_CurriculumID` ON `InstitutionDiploma` (`CurriculumID`);

CREATE INDEX `IX_InstitutionDiploma_ProficiencyRatingModelID` ON `InstitutionDiploma` (`ProficiencyRatingModelID`);

CREATE INDEX `IX_InstitutionDiploma_ProficiencyRatingValueID` ON `InstitutionDiploma` (`ProficiencyRatingValueID`);

CREATE INDEX `IX_Integration_AccountHolderID` ON `Integration` (`AccountHolderID`);

CREATE INDEX `IX_Integration_BusinessID` ON `Integration` (`BusinessID`);

CREATE INDEX `IX_Integration_BusinessProfileRecordID` ON `Integration` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Invoice_AccountHolderID` ON `Invoice` (`AccountHolderID`);

CREATE INDEX `IX_Invoice_BillingLocationID` ON `Invoice` (`BillingLocationID`);

CREATE INDEX `IX_Invoice_BusinessID` ON `Invoice` (`BusinessID`);

CREATE INDEX `IX_Invoice_BusinessProfileRecordID` ON `Invoice` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Invoice_CurrencyID` ON `Invoice` (`CurrencyID`);

CREATE INDEX `IX_Invoice_EmmisorBillingProfileID` ON `Invoice` (`EmmisorBillingProfileID`);

CREATE INDEX `IX_Invoice_EmmisorWalletAccountID` ON `Invoice` (`EmmisorWalletAccountID`);

CREATE INDEX `IX_Invoice_IndividualID` ON `Invoice` (`IndividualID`);

CREATE INDEX `IX_Invoice_InvoiceEnumerationRangeID` ON `Invoice` (`InvoiceEnumerationRangeID`);

CREATE INDEX `IX_Invoice_OrderID` ON `Invoice` (`OrderID`);

CREATE INDEX `IX_Invoice_OrganizationID` ON `Invoice` (`OrganizationID`);

CREATE INDEX `IX_Invoice_PaymentModeID` ON `Invoice` (`PaymentModeID`);

CREATE INDEX `IX_Invoice_PaymentTermID` ON `Invoice` (`PaymentTermID`);

CREATE INDEX `IX_Invoice_PointOfSaleID` ON `Invoice` (`PointOfSaleID`);

CREATE INDEX `IX_Invoice_PriceListID` ON `Invoice` (`PriceListID`);

CREATE INDEX `IX_Invoice_ReceptorBillingProfileID` ON `Invoice` (`ReceptorBillingProfileID`);

CREATE INDEX `IX_Invoice_ReceptorBusinessID` ON `Invoice` (`ReceptorBusinessID`);

CREATE INDEX `IX_Invoice_ReceptorWalletAccountID` ON `Invoice` (`ReceptorWalletAccountID`);

CREATE INDEX `IX_Invoice_ShippingLocationID` ON `Invoice` (`ShippingLocationID`);

CREATE INDEX `IX_InvoiceAdjustment_BusinessID` ON `InvoiceAdjustment` (`BusinessID`);

CREATE INDEX `IX_InvoiceAdjustment_BusinessProfileRecordID` ON `InvoiceAdjustment` (`BusinessProfileRecordID`);

CREATE INDEX `IX_InvoiceAdjustment_CurrencyID` ON `InvoiceAdjustment` (`CurrencyID`);

CREATE INDEX `IX_InvoiceAdjustment_InvoiceID` ON `InvoiceAdjustment` (`InvoiceID`);

CREATE INDEX `IX_InvoiceEnumerationRange_BusinessID` ON `InvoiceEnumerationRange` (`BusinessID`);

CREATE INDEX `IX_InvoiceEnumerationRange_BusinessProfileRecordID` ON `InvoiceEnumerationRange` (`BusinessProfileRecordID`);

CREATE INDEX `IX_InvoiceEnumerationRange_FiscalAuthorityID` ON `InvoiceEnumerationRange` (`FiscalAuthorityID`);

CREATE INDEX `IX_InvoiceReference_BusinessID` ON `InvoiceReference` (`BusinessID`);

CREATE INDEX `IX_InvoiceReference_BusinessProfileRecordID` ON `InvoiceReference` (`BusinessProfileRecordID`);

CREATE INDEX `IX_InvoiceReference_ReferencedInvoiceID` ON `InvoiceReference` (`ReferencedInvoiceID`);

CREATE INDEX `IX_InvoiceReference_ReferralInvoiceID` ON `InvoiceReference` (`ReferralInvoiceID`);

CREATE INDEX `IX_InvoiceRelation_BusinessID` ON `InvoiceRelation` (`BusinessID`);

CREATE INDEX `IX_InvoiceRelation_BusinessProfileRecordID` ON `InvoiceRelation` (`BusinessProfileRecordID`);

CREATE INDEX `IX_InvoiceRelation_InvoiceID` ON `InvoiceRelation` (`InvoiceID`);

CREATE INDEX `IX_InvoiceRelation_ProjectID` ON `InvoiceRelation` (`ProjectID`);

CREATE INDEX `IX_IPLookup_AccountHolderID` ON `IPLookup` (`AccountHolderID`);

CREATE INDEX `IX_IPLookup_CountryID` ON `IPLookup` (`CountryID`);

CREATE INDEX `IX_Item_BlockchainBlockID` ON `Item` (`BlockchainBlockID`);

CREATE INDEX `IX_Item_BlockchainID` ON `Item` (`BlockchainID`);

CREATE INDEX `IX_Item_BrandID` ON `Item` (`BrandID`);

CREATE INDEX `IX_Item_BusinessID` ON `Item` (`BusinessID`);

CREATE INDEX `IX_Item_BusinessProfileRecordID` ON `Item` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Item_CountryID` ON `Item` (`CountryID`);

CREATE INDEX `IX_Item_CountryLanguageID` ON `Item` (`CountryLanguageID`);

CREATE INDEX `IX_Item_CourseCategoryID` ON `Item` (`CourseCategoryID`);

CREATE INDEX `IX_Item_CurrencyID` ON `Item` (`CurrencyID`);

CREATE INDEX `IX_Item_InstructorProfileID` ON `Item` (`InstructorProfileID`);

CREATE INDEX `IX_Item_ItemCategoryID` ON `Item` (`ItemCategoryID`);

CREATE INDEX `IX_Item_ItemGoogleCategoryID` ON `Item` (`ItemGoogleCategoryID`);

CREATE INDEX `IX_Item_ItemTypeID` ON `Item` (`ItemTypeID`);

CREATE INDEX `IX_Item_ParentItemID` ON `Item` (`ParentItemID`);

CREATE INDEX `IX_Item_ServiceID` ON `Item` (`ServiceID`);

CREATE INDEX `IX_Item_ShippingClassID` ON `Item` (`ShippingClassID`);

CREATE INDEX `IX_Item_SupplierProfileID` ON `Item` (`SupplierProfileID`);

CREATE INDEX `IX_Item_UnitGroupID` ON `Item` (`UnitGroupID`);

CREATE INDEX `IX_Item_UnitID` ON `Item` (`UnitID`);

CREATE INDEX `IX_ItemAttribute_BusinessID` ON `ItemAttribute` (`BusinessID`);

CREATE INDEX `IX_ItemAttributeOption_BusinessID` ON `ItemAttributeOption` (`BusinessID`);

CREATE INDEX `IX_ItemAttributeOption_ItemAttributeID` ON `ItemAttributeOption` (`ItemAttributeID`);

CREATE INDEX `IX_ItemAttributeOptionRecord_AttributeOptionID` ON `ItemAttributeOptionRecord` (`AttributeOptionID`);

CREATE INDEX `IX_ItemAttributeOptionRecord_ItemID` ON `ItemAttributeOptionRecord` (`ItemID`);

CREATE INDEX `IX_ItemBid_CurrencyID` ON `ItemBid` (`CurrencyID`);

CREATE INDEX `IX_ItemBid_ItemID` ON `ItemBid` (`ItemID`);

CREATE INDEX `IX_ItemBid_WalletAccountID` ON `ItemBid` (`WalletAccountID`);

CREATE INDEX `IX_ItemBrand_BusinessID` ON `ItemBrand` (`BusinessID`);

CREATE INDEX `IX_ItemBundle_BusinessID` ON `ItemBundle` (`BusinessID`);

CREATE INDEX `IX_ItemBundleRecord_ChildItemID` ON `ItemBundleRecord` (`ChildItemID`);

CREATE INDEX `IX_ItemBundleRecord_ItemBundleID` ON `ItemBundleRecord` (`ItemBundleID`);

CREATE INDEX `IX_ItemBundleRecord_ParentItemID` ON `ItemBundleRecord` (`ParentItemID`);

CREATE INDEX `IX_ItemCategory_BusinessID` ON `ItemCategory` (`BusinessID`);

CREATE INDEX `IX_ItemCategory_BusinessProfileRecordID` ON `ItemCategory` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ItemCategory_ParentItemCategoryID` ON `ItemCategory` (`ParentItemCategoryID`);

CREATE INDEX `IX_ItemCategoryRecord_ItemCategoryID` ON `ItemCategoryRecord` (`ItemCategoryID`);

CREATE INDEX `IX_ItemCategoryRecord_ItemID` ON `ItemCategoryRecord` (`ItemID`);

CREATE INDEX `IX_ItemFamily_BusinessID` ON `ItemFamily` (`BusinessID`);

CREATE INDEX `IX_ItemFamilyRecord_ItemFamilyID` ON `ItemFamilyRecord` (`ItemFamilyID`);

CREATE INDEX `IX_ItemFamilyRecord_ItemID` ON `ItemFamilyRecord` (`ItemID`);

CREATE INDEX `IX_ItemGoogleCategory_ParentItemGoogleCategoryID` ON `ItemGoogleCategory` (`ParentItemGoogleCategoryID`);

CREATE INDEX `IX_ItemGoogleCategoryRecord_ItemGoogleCategoryID` ON `ItemGoogleCategoryRecord` (`ItemGoogleCategoryID`);

CREATE INDEX `IX_ItemGoogleCategoryRecord_ItemID` ON `ItemGoogleCategoryRecord` (`ItemID`);

CREATE INDEX `IX_ItemGroup_BusinessID` ON `ItemGroup` (`BusinessID`);

CREATE INDEX `IX_ItemGroupRecord_ItemGroupID` ON `ItemGroupRecord` (`ItemGroupID`);

CREATE INDEX `IX_ItemGroupRecord_ItemID` ON `ItemGroupRecord` (`ItemID`);

CREATE INDEX `IX_ItemImageRecord_ItemID` ON `ItemImageRecord` (`ItemID`);

CREATE INDEX `IX_ItemImageRecord_ItemImageID` ON `ItemImageRecord` (`ItemImageID`);

CREATE INDEX `IX_ItemOwnership_BlockchainBlockID` ON `ItemOwnership` (`BlockchainBlockID`);

CREATE INDEX `IX_ItemOwnership_CartID` ON `ItemOwnership` (`CartID`);

CREATE INDEX `IX_ItemOwnership_ItemBidID` ON `ItemOwnership` (`ItemBidID`);

CREATE INDEX `IX_ItemOwnership_ItemID` ON `ItemOwnership` (`ItemID`);

CREATE INDEX `IX_ItemOwnership_WalletAccountID` ON `ItemOwnership` (`WalletAccountID`);

CREATE INDEX `IX_ItemPackingSlip_BusinessID` ON `ItemPackingSlip` (`BusinessID`);

CREATE INDEX `IX_ItemPackingSlip_DeliveryNoteID` ON `ItemPackingSlip` (`DeliveryNoteID`);

CREATE INDEX `IX_ItemPackingSlip_OrderID` ON `ItemPackingSlip` (`OrderID`);

CREATE INDEX `IX_ItemPackingSlipEntry_BusinessID` ON `ItemPackingSlipEntry` (`BusinessID`);

CREATE INDEX `IX_ItemPackingSlipEntry_ItemID` ON `ItemPackingSlipEntry` (`ItemID`);

CREATE INDEX `IX_ItemPackingSlipEntry_ItemPackingSlipID` ON `ItemPackingSlipEntry` (`ItemPackingSlipID`);

CREATE INDEX `IX_ItemPickList_BusinessID` ON `ItemPickList` (`BusinessID`);

CREATE INDEX `IX_ItemPickList_OrderID` ON `ItemPickList` (`OrderID`);

CREATE INDEX `IX_ItemPickList_WarehouseID` ON `ItemPickList` (`WarehouseID`);

CREATE INDEX `IX_ItemPickListEntry_BillingCouponCartRecordID` ON `ItemPickListEntry` (`BillingCouponCartRecordID`);

CREATE INDEX `IX_ItemPickListEntry_BillingCouponItemRecordID` ON `ItemPickListEntry` (`BillingCouponItemRecordID`);

CREATE INDEX `IX_ItemPickListEntry_BillingCouponOrderRecordID` ON `ItemPickListEntry` (`BillingCouponOrderRecordID`);

CREATE INDEX `IX_ItemPickListEntry_BusinessID` ON `ItemPickListEntry` (`BusinessID`);

CREATE INDEX `IX_ItemPickListEntry_DealUnitItemRecordID` ON `ItemPickListEntry` (`DealUnitItemRecordID`);

CREATE INDEX `IX_ItemPickListEntry_InvoiceItemRecordID` ON `ItemPickListEntry` (`InvoiceItemRecordID`);

CREATE INDEX `IX_ItemPickListEntry_ItemID` ON `ItemPickListEntry` (`ItemID`);

CREATE INDEX `IX_ItemPickListEntry_ItemPickListID` ON `ItemPickListEntry` (`ItemPickListID`);

CREATE INDEX `IX_ItemPickListEntry_OrderItemRecordID` ON `ItemPickListEntry` (`OrderItemRecordID`);

CREATE INDEX `IX_ItemPickListEntry_QuoteItemRecordID` ON `ItemPickListEntry` (`QuoteItemRecordID`);

CREATE INDEX `IX_ItemPickListEntry_WarehouseID` ON `ItemPickListEntry` (`WarehouseID`);

CREATE INDEX `IX_ItemQuestion_BusinessID` ON `ItemQuestion` (`BusinessID`);

CREATE INDEX `IX_ItemQuestion_ItemID` ON `ItemQuestion` (`ItemID`);

CREATE INDEX `IX_ItemQuestion_SocialProfileID` ON `ItemQuestion` (`SocialProfileID`);

CREATE INDEX `IX_ItemQuestionReply_BusinessID` ON `ItemQuestionReply` (`BusinessID`);

CREATE INDEX `IX_ItemQuestionReply_ItemQuestionID` ON `ItemQuestionReply` (`ItemQuestionID`);

CREATE INDEX `IX_ItemQuestionReply_SocialProfileID` ON `ItemQuestionReply` (`SocialProfileID`);

CREATE INDEX `IX_ItemRestock_BusinessID` ON `ItemRestock` (`BusinessID`);

CREATE INDEX `IX_ItemRestockEntry_BusinessID` ON `ItemRestockEntry` (`BusinessID`);

CREATE INDEX `IX_ItemRestockEntry_ItemID` ON `ItemRestockEntry` (`ItemID`);

CREATE INDEX `IX_ItemRestockEntry_ItemRestockID` ON `ItemRestockEntry` (`ItemRestockID`);

CREATE INDEX `IX_ItemRestockEntry_OrderItemRecordID` ON `ItemRestockEntry` (`OrderItemRecordID`);

CREATE INDEX `IX_ItemRestockEntry_WarehouseID` ON `ItemRestockEntry` (`WarehouseID`);

CREATE INDEX `IX_ItemRetainSample_BusinessID` ON `ItemRetainSample` (`BusinessID`);

CREATE INDEX `IX_ItemRetainSample_ItemID` ON `ItemRetainSample` (`ItemID`);

CREATE INDEX `IX_ItemRetainSample_WarehouseID` ON `ItemRetainSample` (`WarehouseID`);

CREATE INDEX `IX_ItemShippingPolicyRecord_BusinessID` ON `ItemShippingPolicyRecord` (`BusinessID`);

CREATE INDEX `IX_ItemShippingPolicyRecord_ItemID` ON `ItemShippingPolicyRecord` (`ItemID`);

CREATE INDEX `IX_ItemShippingPolicyRecord_ItemShippingPolicyID` ON `ItemShippingPolicyRecord` (`ItemShippingPolicyID`);

CREATE INDEX `IX_ItemTag_BusinessID` ON `ItemTag` (`BusinessID`);

CREATE INDEX `IX_ItemTagRecord_ItemID` ON `ItemTagRecord` (`ItemID`);

CREATE INDEX `IX_ItemTagRecord_ItemTagID` ON `ItemTagRecord` (`ItemTagID`);

CREATE INDEX `IX_ItemType_BusinessID` ON `ItemType` (`BusinessID`);

CREATE INDEX `IX_ItemType_ItemCategoryID` ON `ItemType` (`ItemCategoryID`);

CREATE INDEX `IX_ItemType_ItemGoogleCategoryID` ON `ItemType` (`ItemGoogleCategoryID`);

CREATE INDEX `IX_ItemTypeRecord_ItemID` ON `ItemTypeRecord` (`ItemID`);

CREATE INDEX `IX_ItemTypeRecord_ItemTypeID` ON `ItemTypeRecord` (`ItemTypeID`);

CREATE INDEX `IX_JobField_BusinessID` ON `JobField` (`BusinessID`);

CREATE INDEX `IX_JobOffer_BusinessID` ON `JobOffer` (`BusinessID`);

CREATE INDEX `IX_JobOffer_BusinessProfileRecordID` ON `JobOffer` (`BusinessProfileRecordID`);

CREATE INDEX `IX_JobOffer_CountryID` ON `JobOffer` (`CountryID`);

CREATE INDEX `IX_JobOffer_EmployerProfileID` ON `JobOffer` (`EmployerProfileID`);

CREATE INDEX `IX_JobOffer_JobFieldID` ON `JobOffer` (`JobFieldID`);

CREATE INDEX `IX_JobOffer_JobTitleID` ON `JobOffer` (`JobTitleID`);

CREATE INDEX `IX_JobOfferApplication_CurriculumID` ON `JobOfferApplication` (`CurriculumID`);

CREATE INDEX `IX_JobOfferApplication_JobApplicantProfileID` ON `JobOfferApplication` (`JobApplicantProfileID`);

CREATE INDEX `IX_JobOfferApplication_JobOfferID` ON `JobOfferApplication` (`JobOfferID`);

CREATE INDEX `IX_JobTitle_BusinessID` ON `JobTitle` (`BusinessID`);

CREATE INDEX `IX_JobTitle_BusinessProfileRecordID` ON `JobTitle` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Journal_BusinessID` ON `Journal` (`BusinessID`);

CREATE INDEX `IX_Journal_BusinessProfileRecordID` ON `Journal` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Journal_JournalTypeID` ON `Journal` (`JournalTypeID`);

CREATE INDEX `IX_Journal_LedgerID` ON `Journal` (`LedgerID`);

CREATE INDEX `IX_Journal_ParentJournalID` ON `Journal` (`ParentJournalID`);

CREATE INDEX `IX_JournalEntry_BusinessID` ON `JournalEntry` (`BusinessID`);

CREATE INDEX `IX_JournalEntry_BusinessProfileRecordID` ON `JournalEntry` (`BusinessProfileRecordID`);

CREATE INDEX `IX_JournalEntry_CreditAccountID` ON `JournalEntry` (`CreditAccountID`);

CREATE INDEX `IX_JournalEntry_CurrencyID` ON `JournalEntry` (`CurrencyID`);

CREATE INDEX `IX_JournalEntry_DebitAccountID` ON `JournalEntry` (`DebitAccountID`);

CREATE INDEX `IX_JournalEntry_FinancialBookID` ON `JournalEntry` (`FinancialBookID`);

CREATE INDEX `IX_JournalEntry_JournalID` ON `JournalEntry` (`JournalID`);

CREATE INDEX `IX_JournalEntry_ParentJournalEntryID` ON `JournalEntry` (`ParentJournalEntryID`);

CREATE INDEX `IX_JournalType_BusinessID` ON `JournalType` (`BusinessID`);

CREATE INDEX `IX_JournalType_BusinessProfileRecordID` ON `JournalType` (`BusinessProfileRecordID`);

CREATE INDEX `IX_KanbanBoard_BusinessID` ON `KanbanBoard` (`BusinessID`);

CREATE INDEX `IX_KanbanBoard_BusinessProfileRecordID` ON `KanbanBoard` (`BusinessProfileRecordID`);

CREATE INDEX `IX_KanbanBoard_ProjectID` ON `KanbanBoard` (`ProjectID`);

CREATE INDEX `IX_LeaveApplication_BusinessID` ON `LeaveApplication` (`BusinessID`);

CREATE INDEX `IX_LeaveApplication_BusinessProfileRecordID` ON `LeaveApplication` (`BusinessProfileRecordID`);

CREATE INDEX `IX_LeaveApplication_EmployeeProfileID` ON `LeaveApplication` (`EmployeeProfileID`);

CREATE INDEX `IX_LeaveApplication_LeaveTypeID` ON `LeaveApplication` (`LeaveTypeID`);

CREATE INDEX `IX_LeaveReport_BusinessID` ON `LeaveReport` (`BusinessID`);

CREATE INDEX `IX_LeaveReport_BusinessProfileRecordID` ON `LeaveReport` (`BusinessProfileRecordID`);

CREATE INDEX `IX_LeaveReport_LeaveApplicationID` ON `LeaveReport` (`LeaveApplicationID`);

CREATE INDEX `IX_LeaveType_BusinessID` ON `LeaveType` (`BusinessID`);

CREATE INDEX `IX_Ledger_BusinessID` ON `Ledger` (`BusinessID`);

CREATE INDEX `IX_Ledger_BusinessProfileRecordID` ON `Ledger` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Ledger_LedgerTypeID` ON `Ledger` (`LedgerTypeID`);

CREATE INDEX `IX_LedgerType_BusinessID` ON `LedgerType` (`BusinessID`);

CREATE INDEX `IX_LedgerType_BusinessProfileRecordID` ON `LedgerType` (`BusinessProfileRecordID`);

CREATE INDEX `IX_LicenseAssignment_BusinessID` ON `LicenseAssignment` (`BusinessID`);

CREATE INDEX `IX_LicenseAssignment_BusinessProfileRecordID` ON `LicenseAssignment` (`BusinessProfileRecordID`);

CREATE INDEX `IX_LicenseAssignment_LicenseID` ON `LicenseAssignment` (`LicenseID`);

CREATE INDEX `IX_LicenseAssignment_LicensingProfileID` ON `LicenseAssignment` (`LicensingProfileID`);

CREATE INDEX `IX_LicenseAttribute_BusinessID` ON `LicenseAttribute` (`BusinessID`);

CREATE INDEX `IX_LicenseAttribute_BusinessProfileRecordID` ON `LicenseAttribute` (`BusinessProfileRecordID`);

CREATE INDEX `IX_LicenseAttribute_LicenseTypeID` ON `LicenseAttribute` (`LicenseTypeID`);

CREATE INDEX `IX_LicenseFeature_AccessKeyPairID` ON `LicenseFeature` (`AccessKeyPairID`);

CREATE INDEX `IX_LicenseFeature_BusinessID` ON `LicenseFeature` (`BusinessID`);

CREATE INDEX `IX_LicenseFeature_BusinessProfileRecordID` ON `LicenseFeature` (`BusinessProfileRecordID`);

CREATE INDEX `IX_LicenseFeature_LicenseTypeID` ON `LicenseFeature` (`LicenseTypeID`);

CREATE INDEX `IX_LicenseValidation_BusinessID` ON `LicenseValidation` (`BusinessID`);

CREATE INDEX `IX_LocalizationResource_BusinessID` ON `LocalizationResource` (`BusinessID`);

CREATE INDEX `IX_LocalizationResource_CountryLanguageID` ON `LocalizationResource` (`CountryLanguageID`);

CREATE INDEX `IX_LocalizationResource_CountryLanguageRecordID` ON `LocalizationResource` (`CountryLanguageRecordID`);

CREATE INDEX `IX_LocalizationResource_LocalizationStringID` ON `LocalizationResource` (`LocalizationStringID`);

CREATE INDEX `IX_Location_AccountHolderID` ON `Location` (`AccountHolderID`);

CREATE INDEX `IX_Location_BusinessID` ON `Location` (`BusinessID`);

CREATE INDEX `IX_Location_BusinessProfileRecordID` ON `Location` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Location_CityID` ON `Location` (`CityID`);

CREATE INDEX `IX_Location_ContactID` ON `Location` (`ContactID`);

CREATE INDEX `IX_Location_CountryID` ON `Location` (`CountryID`);

CREATE INDEX `IX_Location_CountryStateID` ON `Location` (`CountryStateID`);

CREATE INDEX `IX_Location_ParentWarehouseID` ON `Location` (`ParentWarehouseID`);

CREATE INDEX `IX_Location_SocialProfileID` ON `Location` (`SocialProfileID`);

CREATE INDEX `IX_Location_SupplierProfileID` ON `Location` (`SupplierProfileID`);

CREATE INDEX `IX_MaintenanceVisit_BusinessID` ON `MaintenanceVisit` (`BusinessID`);

CREATE INDEX `IX_MaintenanceVisit_BusinessProfileRecordID` ON `MaintenanceVisit` (`BusinessProfileRecordID`);

CREATE INDEX `IX_MarketingArea_BusinessID` ON `MarketingArea` (`BusinessID`);

CREATE INDEX `IX_MarketingArea_BusinessProfileRecordID` ON `MarketingArea` (`BusinessProfileRecordID`);

CREATE INDEX `IX_MarketingAreaSubscription_BusinessID` ON `MarketingAreaSubscription` (`BusinessID`);

CREATE INDEX `IX_MarketingAreaSubscription_MarketingAreaID` ON `MarketingAreaSubscription` (`MarketingAreaID`);

CREATE INDEX `IX_MarketingAreaSubscription_PartnerProfileID` ON `MarketingAreaSubscription` (`PartnerProfileID`);

CREATE INDEX `IX_MarketingCampaign_BusinessID` ON `MarketingCampaign` (`BusinessID`);

CREATE INDEX `IX_MarketingCampaign_BusinessProfileRecordID` ON `MarketingCampaign` (`BusinessProfileRecordID`);

CREATE INDEX `IX_MarketingCampaign_CurrencyID` ON `MarketingCampaign` (`CurrencyID`);

CREATE INDEX `IX_MarketingCampaign_MarketingAreaID` ON `MarketingCampaign` (`MarketingAreaID`);

CREATE INDEX `IX_MarketingCampaign_MarketingListID` ON `MarketingCampaign` (`MarketingListID`);

CREATE INDEX `IX_MarketingCampaignResponse_BusinessID` ON `MarketingCampaignResponse` (`BusinessID`);

CREATE INDEX `IX_MarketingCampaignResponse_BusinessProfileRecordID` ON `MarketingCampaignResponse` (`BusinessProfileRecordID`);

CREATE INDEX `IX_MarketingCampaignResponse_ContactID` ON `MarketingCampaignResponse` (`ContactID`);

CREATE INDEX `IX_MarketingCampaignResponse_MarketingCampaignID` ON `MarketingCampaignResponse` (`MarketingCampaignID`);

CREATE INDEX `IX_MarketingList_BusinessID` ON `MarketingList` (`BusinessID`);

CREATE INDEX `IX_MarketingList_BusinessProfileRecordID` ON `MarketingList` (`BusinessProfileRecordID`);

CREATE INDEX `IX_MarketingList_CurrencyID` ON `MarketingList` (`CurrencyID`);

CREATE INDEX `IX_MarketingListMembership_BusinessID` ON `MarketingListMembership` (`BusinessID`);

CREATE INDEX `IX_MarketingListMembership_BusinessProfileRecordID` ON `MarketingListMembership` (`BusinessProfileRecordID`);

CREATE INDEX `IX_MarketingListMembership_LeadProfileID` ON `MarketingListMembership` (`LeadProfileID`);

CREATE INDEX `IX_MarketingListMembership_MarketingListID` ON `MarketingListMembership` (`MarketingListID`);

CREATE INDEX `IX_MenuContext_AccountHolderID` ON `MenuContext` (`AccountHolderID`);

CREATE INDEX `IX_MenuContext_BusinessID` ON `MenuContext` (`BusinessID`);

CREATE INDEX `IX_MenuContext_WebPortalID` ON `MenuContext` (`WebPortalID`);

CREATE INDEX `IX_MenuContextItem_MenuContextID` ON `MenuContextItem` (`MenuContextID`);

CREATE INDEX `IX_MenuContextItem_ParentMenuContextItemID` ON `MenuContextItem` (`ParentMenuContextItemID`);

CREATE INDEX `IX_Newsletter_BusinessID` ON `Newsletter` (`BusinessID`);

CREATE INDEX `IX_Newsletter_BusinessProfileRecordID` ON `Newsletter` (`BusinessProfileRecordID`);

CREATE INDEX `IX_NewsletterSubscription_AccountHolderID` ON `NewsletterSubscription` (`AccountHolderID`);

CREATE INDEX `IX_NewsletterSubscription_BusinessID` ON `NewsletterSubscription` (`BusinessID`);

CREATE INDEX `IX_NewsletterSubscription_BusinessProfileRecordID` ON `NewsletterSubscription` (`BusinessProfileRecordID`);

CREATE INDEX `IX_NewsletterSubscription_ContactID` ON `NewsletterSubscription` (`ContactID`);

CREATE INDEX `IX_NewsletterSubscription_NewsletterID` ON `NewsletterSubscription` (`NewsletterID`);

CREATE INDEX `IX_Notification_SocialProfileID` ON `Notification` (`SocialProfileID`);

CREATE INDEX `IX_OpenIddictEntityFrameworkCoreApplication_BusinessApplication~` ON `OpenIddictEntityFrameworkCoreApplication` (`BusinessApplicationID`);

CREATE INDEX `IX_OpenIddictEntityFrameworkCoreApplication_BusinessID` ON `OpenIddictEntityFrameworkCoreApplication` (`BusinessID`);

CREATE INDEX `IX_OpenIddictEntityFrameworkCoreApplication_BusinessProfileReco~` ON `OpenIddictEntityFrameworkCoreApplication` (`BusinessProfileRecordID`);

CREATE INDEX `IX_OpenIddictEntityFrameworkCoreAuthorization_ApplicationId` ON `OpenIddictEntityFrameworkCoreAuthorization` (`ApplicationId`);

CREATE INDEX `IX_OpenIddictEntityFrameworkCoreToken_ApplicationId` ON `OpenIddictEntityFrameworkCoreToken` (`ApplicationId`);

CREATE INDEX `IX_OpenIddictEntityFrameworkCoreToken_AuthorizationId` ON `OpenIddictEntityFrameworkCoreToken` (`AuthorizationId`);

CREATE INDEX `IX_Order_AccountHolderID` ON `Order` (`AccountHolderID`);

CREATE INDEX `IX_Order_BillingAddressID` ON `Order` (`BillingAddressID`);

CREATE INDEX `IX_Order_BillingContactID` ON `Order` (`BillingContactID`);

CREATE INDEX `IX_Order_BillingLocationID` ON `Order` (`BillingLocationID`);

CREATE INDEX `IX_Order_BillingProfileID` ON `Order` (`BillingProfileID`);

CREATE INDEX `IX_Order_BusinessID` ON `Order` (`BusinessID`);

CREATE INDEX `IX_Order_BusinessProfileRecordID` ON `Order` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Order_CartID` ON `Order` (`CartID`);

CREATE INDEX `IX_Order_CityID` ON `Order` (`CityID`);

CREATE INDEX `IX_Order_CountryID` ON `Order` (`CountryID`);

CREATE INDEX `IX_Order_CountryStateID` ON `Order` (`CountryStateID`);

CREATE INDEX `IX_Order_CurrencyID` ON `Order` (`CurrencyID`);

CREATE INDEX `IX_Order_IndividualID` ON `Order` (`IndividualID`);

CREATE INDEX `IX_Order_OrganizationID` ON `Order` (`OrganizationID`);

CREATE INDEX `IX_Order_ParentOrderID` ON `Order` (`ParentOrderID`);

CREATE INDEX `IX_Order_PaymentTermID` ON `Order` (`PaymentTermID`);

CREATE INDEX `IX_Order_PriceListID` ON `Order` (`PriceListID`);

CREATE INDEX `IX_Order_QuoteID` ON `Order` (`QuoteID`);

CREATE INDEX `IX_Order_ReceptorBusinessID` ON `Order` (`ReceptorBusinessID`);

CREATE INDEX `IX_Order_SalesQuoteID` ON `Order` (`SalesQuoteID`);

CREATE INDEX `IX_Order_ShippingAddressID` ON `Order` (`ShippingAddressID`);

CREATE INDEX `IX_Order_ShippingContactID` ON `Order` (`ShippingContactID`);

CREATE INDEX `IX_Order_ShippingLocationID` ON `Order` (`ShippingLocationID`);

CREATE INDEX `IX_Order_ShippingMethodID` ON `Order` (`ShippingMethodID`);

CREATE INDEX `IX_Order_WalletAccountID` ON `Order` (`WalletAccountID`);

CREATE INDEX `IX_OrderItemReturn_BusinessID` ON `OrderItemReturn` (`BusinessID`);

CREATE INDEX `IX_OrderItemReturn_BusinessProfileRecordID` ON `OrderItemReturn` (`BusinessProfileRecordID`);

CREATE INDEX `IX_OrderItemReturn_OrderID` ON `OrderItemReturn` (`OrderID`);

CREATE INDEX `IX_OrderItemReturn_OrderItemRecordID` ON `OrderItemReturn` (`OrderItemRecordID`);

CREATE INDEX `IX_OrderItemReturn_OrderReturnID` ON `OrderItemReturn` (`OrderReturnID`);

CREATE INDEX `IX_OrderItemReturn_ReturnRequestID` ON `OrderItemReturn` (`ReturnRequestID`);

CREATE INDEX `IX_OrderItemWarranty_BusinessID` ON `OrderItemWarranty` (`BusinessID`);

CREATE INDEX `IX_OrderItemWarranty_BusinessProfileRecordID` ON `OrderItemWarranty` (`BusinessProfileRecordID`);

CREATE INDEX `IX_OrderItemWarranty_OrderWarrantyID` ON `OrderItemWarranty` (`OrderWarrantyID`);

CREATE INDEX `IX_OrderItemWarranty_WarrantyRequestID` ON `OrderItemWarranty` (`WarrantyRequestID`);

CREATE INDEX `IX_OrderRelation_BusinessID` ON `OrderRelation` (`BusinessID`);

CREATE INDEX `IX_OrderRelation_BusinessProfileRecordID` ON `OrderRelation` (`BusinessProfileRecordID`);

CREATE INDEX `IX_OrderRelation_OrderID` ON `OrderRelation` (`OrderID`);

CREATE INDEX `IX_OrderRelation_ProjectID` ON `OrderRelation` (`ProjectID`);

CREATE INDEX `IX_OrderReturn_BusinessID` ON `OrderReturn` (`BusinessID`);

CREATE INDEX `IX_OrderReturn_BusinessProfileRecordID` ON `OrderReturn` (`BusinessProfileRecordID`);

CREATE INDEX `IX_OrderReturn_OrderID` ON `OrderReturn` (`OrderID`);

CREATE INDEX `IX_OrderReturn_ReturnRequestID` ON `OrderReturn` (`ReturnRequestID`);

CREATE INDEX `IX_OrderWarranty_BusinessID` ON `OrderWarranty` (`BusinessID`);

CREATE INDEX `IX_OrderWarranty_BusinessProfileRecordID` ON `OrderWarranty` (`BusinessProfileRecordID`);

CREATE INDEX `IX_OrderWarranty_WarrantyRequestID` ON `OrderWarranty` (`WarrantyRequestID`);

CREATE INDEX `IX_Payment_AccountHolderID` ON `Payment` (`AccountHolderID`);

CREATE INDEX `IX_Payment_AccountingEntryID` ON `Payment` (`AccountingEntryID`);

CREATE INDEX `IX_Payment_BankAccountID` ON `Payment` (`BankAccountID`);

CREATE INDEX `IX_Payment_BankID` ON `Payment` (`BankID`);

CREATE INDEX `IX_Payment_BusinessID` ON `Payment` (`BusinessID`);

CREATE INDEX `IX_Payment_BusinessProfileRecordID` ON `Payment` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Payment_CountryID` ON `Payment` (`CountryID`);

CREATE INDEX `IX_Payment_CurrencyID` ON `Payment` (`CurrencyID`);

CREATE INDEX `IX_Payment_EmmisorWalletAccountID` ON `Payment` (`EmmisorWalletAccountID`);

CREATE INDEX `IX_Payment_EntitlementID` ON `Payment` (`EntitlementID`);

CREATE INDEX `IX_Payment_FiscalIdentificationTypeID` ON `Payment` (`FiscalIdentificationTypeID`);

CREATE INDEX `IX_Payment_IndividualID` ON `Payment` (`IndividualID`);

CREATE INDEX `IX_Payment_InvoiceID` ON `Payment` (`InvoiceID`);

CREATE INDEX `IX_Payment_IPLookupID` ON `Payment` (`IPLookupID`);

CREATE INDEX `IX_Payment_LocationID` ON `Payment` (`LocationID`);

CREATE INDEX `IX_Payment_OrderID` ON `Payment` (`OrderID`);

CREATE INDEX `IX_Payment_OrganizationID` ON `Payment` (`OrganizationID`);

CREATE INDEX `IX_Payment_PayerBusinessID` ON `Payment` (`PayerBusinessID`);

CREATE INDEX `IX_Payment_PaymentGatewayID` ON `Payment` (`PaymentGatewayID`);

CREATE INDEX `IX_Payment_PaymentTokenID` ON `Payment` (`PaymentTokenID`);

CREATE INDEX `IX_Payment_ReceptorWalletAccountID` ON `Payment` (`ReceptorWalletAccountID`);

CREATE INDEX `IX_PaymentDeduction_AccountID` ON `PaymentDeduction` (`AccountID`);

CREATE INDEX `IX_PaymentDeduction_BusinessID` ON `PaymentDeduction` (`BusinessID`);

CREATE INDEX `IX_PaymentDeduction_BusinessProfileRecordID` ON `PaymentDeduction` (`BusinessProfileRecordID`);

CREATE INDEX `IX_PaymentDeduction_CostCentreID` ON `PaymentDeduction` (`CostCentreID`);

CREATE INDEX `IX_PaymentDeduction_CurrencyID` ON `PaymentDeduction` (`CurrencyID`);

CREATE INDEX `IX_PaymentDeduction_PaymentID` ON `PaymentDeduction` (`PaymentID`);

CREATE INDEX `IX_PaymentDispute_CurrencyID` ON `PaymentDispute` (`CurrencyID`);

CREATE INDEX `IX_PaymentDispute_EmmisorWalletAccountID` ON `PaymentDispute` (`EmmisorWalletAccountID`);

CREATE INDEX `IX_PaymentDispute_PaymentGatewayID` ON `PaymentDispute` (`PaymentGatewayID`);

CREATE INDEX `IX_PaymentDispute_PaymentID` ON `PaymentDispute` (`PaymentID`);

CREATE INDEX `IX_PaymentDispute_ReceptorWalletAccountID` ON `PaymentDispute` (`ReceptorWalletAccountID`);

CREATE INDEX `IX_PaymentGateway_BusinessID` ON `PaymentGateway` (`BusinessID`);

CREATE INDEX `IX_PaymentMode_BusinessID` ON `PaymentMode` (`BusinessID`);

CREATE INDEX `IX_PaymentMode_BusinessProfileRecordID` ON `PaymentMode` (`BusinessProfileRecordID`);

CREATE INDEX `IX_PaymentRequest_BankAccountID` ON `PaymentRequest` (`BankAccountID`);

CREATE INDEX `IX_PaymentRequest_BusinessID` ON `PaymentRequest` (`BusinessID`);

CREATE INDEX `IX_PaymentRequest_BusinessProfileRecordID` ON `PaymentRequest` (`BusinessProfileRecordID`);

CREATE INDEX `IX_PaymentRequest_ContactID` ON `PaymentRequest` (`ContactID`);

CREATE INDEX `IX_PaymentRequest_PaymentModeID` ON `PaymentRequest` (`PaymentModeID`);

CREATE INDEX `IX_PaymentTerm_BusinessID` ON `PaymentTerm` (`BusinessID`);

CREATE INDEX `IX_PaymentTerm_BusinessProfileRecordID` ON `PaymentTerm` (`BusinessProfileRecordID`);

CREATE INDEX `IX_PaymentTerm_PaymentModeID` ON `PaymentTerm` (`PaymentModeID`);

CREATE INDEX `IX_PaymentToken_PaymentGatewayID` ON `PaymentToken` (`PaymentGatewayID`);

CREATE INDEX `IX_PaymentToken_WalletAccountID` ON `PaymentToken` (`WalletAccountID`);

CREATE INDEX `IX_Payroll_BusinessID` ON `Payroll` (`BusinessID`);

CREATE INDEX `IX_Payroll_BusinessProfileRecordID` ON `Payroll` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Payroll_PayrollPeriodID` ON `Payroll` (`PayrollPeriodID`);

CREATE INDEX `IX_PayrollEntry_BankAccountID` ON `PayrollEntry` (`BankAccountID`);

CREATE INDEX `IX_PayrollEntry_BusinessID` ON `PayrollEntry` (`BusinessID`);

CREATE INDEX `IX_PayrollEntry_CurrencyID` ON `PayrollEntry` (`CurrencyID`);

CREATE INDEX `IX_PayrollEntry_PayrollID` ON `PayrollEntry` (`PayrollID`);

CREATE INDEX `IX_PayrollEntry_SalaryID` ON `PayrollEntry` (`SalaryID`);

CREATE INDEX `IX_PointOfSale_BusinessID` ON `PointOfSale` (`BusinessID`);

CREATE INDEX `IX_PointOfSale_BusinessProfileRecordID` ON `PointOfSale` (`BusinessProfileRecordID`);

CREATE INDEX `IX_PointOfSale_LocationID` ON `PointOfSale` (`LocationID`);

CREATE INDEX `IX_PointOfSale_PriceListID` ON `PointOfSale` (`PriceListID`);

CREATE INDEX `IX_Policy_BusinessID` ON `Policy` (`BusinessID`);

CREATE INDEX `IX_Policy_BusinessProfileRecordID` ON `Policy` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Policy_CityID` ON `Policy` (`CityID`);

CREATE INDEX `IX_Policy_CountryID` ON `Policy` (`CountryID`);

CREATE INDEX `IX_Policy_CountryStateID` ON `Policy` (`CountryStateID`);

CREATE INDEX `IX_Policy_CurrencyID` ON `Policy` (`CurrencyID`);

CREATE INDEX `IX_Policy_FiscalAuthorityID` ON `Policy` (`FiscalAuthorityID`);

CREATE INDEX `IX_Policy_ReturnPolicy_ShippingCourierID` ON `Policy` (`ReturnPolicy_ShippingCourierID`);

CREATE INDEX `IX_Policy_ShippingCourierID` ON `Policy` (`ShippingCourierID`);

CREATE INDEX `IX_PriceList_BusinessID` ON `PriceList` (`BusinessID`);

CREATE INDEX `IX_PriceList_BusinessProfileRecordID` ON `PriceList` (`BusinessProfileRecordID`);

CREATE INDEX `IX_PriceList_CurrencyID` ON `PriceList` (`CurrencyID`);

CREATE INDEX `IX_PriceList_UnitGroupID` ON `PriceList` (`UnitGroupID`);

CREATE INDEX `IX_PriceList_UnitID` ON `PriceList` (`UnitID`);

CREATE INDEX `IX_PriceListItem_BusinessID` ON `PriceListItem` (`BusinessID`);

CREATE INDEX `IX_PriceListItem_BusinessProfileRecordID` ON `PriceListItem` (`BusinessProfileRecordID`);

CREATE INDEX `IX_PriceListItem_CurrencyID` ON `PriceListItem` (`CurrencyID`);

CREATE INDEX `IX_PriceListItem_DiscountListID` ON `PriceListItem` (`DiscountListID`);

CREATE INDEX `IX_PriceListItem_ItemID` ON `PriceListItem` (`ItemID`);

CREATE INDEX `IX_PriceListItem_ItemPriceListID` ON `PriceListItem` (`ItemPriceListID`);

CREATE INDEX `IX_PriceListItem_PriceListID` ON `PriceListItem` (`PriceListID`);

CREATE INDEX `IX_PriceListItem_RoundingPolicyID` ON `PriceListItem` (`RoundingPolicyID`);

CREATE INDEX `IX_PriceListItem_TransactionCategoryID` ON `PriceListItem` (`TransactionCategoryID`);

CREATE INDEX `IX_PriceListItem_UnitGroupID` ON `PriceListItem` (`UnitGroupID`);

CREATE INDEX `IX_PriceListItem_UnitID` ON `PriceListItem` (`UnitID`);

CREATE INDEX `IX_PriceListTerritory_BusinessID` ON `PriceListTerritory` (`BusinessID`);

CREATE INDEX `IX_PriceListTerritory_BusinessProfileRecordID` ON `PriceListTerritory` (`BusinessProfileRecordID`);

CREATE INDEX `IX_PriceListTerritory_PriceListID` ON `PriceListTerritory` (`PriceListID`);

CREATE INDEX `IX_PriceListTerritory_TerritoryID` ON `PriceListTerritory` (`TerritoryID`);

CREATE INDEX `IX_PrivateMessage_ConversationID` ON `PrivateMessage` (`ConversationID`);

CREATE INDEX `IX_PrivateMessage_ReceptorID` ON `PrivateMessage` (`ReceptorID`);

CREATE INDEX `IX_PrivateMessage_SenderID` ON `PrivateMessage` (`SenderID`);

CREATE INDEX `IX_ProductionPlan_BusinessID` ON `ProductionPlan` (`BusinessID`);

CREATE INDEX `IX_ProfessionalDegree_BusinessID` ON `ProfessionalDegree` (`BusinessID`);

CREATE INDEX `IX_ProfessionalDegree_BusinessProfileRecordID` ON `ProfessionalDegree` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ProfessionalDegree_CurriculumID` ON `ProfessionalDegree` (`CurriculumID`);

CREATE INDEX `IX_ProfessionalDegree_ProficiencyRatingModelID` ON `ProfessionalDegree` (`ProficiencyRatingModelID`);

CREATE INDEX `IX_ProfessionalDegree_ProficiencyRatingValueID` ON `ProfessionalDegree` (`ProficiencyRatingValueID`);

CREATE INDEX `IX_ProficiencyRatingModel_BusinessID` ON `ProficiencyRatingModel` (`BusinessID`);

CREATE INDEX `IX_ProficiencyRatingModel_BusinessProfileRecordID` ON `ProficiencyRatingModel` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ProficiencyRatingValue_BusinessID` ON `ProficiencyRatingValue` (`BusinessID`);

CREATE INDEX `IX_ProficiencyRatingValue_BusinessProfileRecordID` ON `ProficiencyRatingValue` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ProficiencyRatingValue_ProficiencyRatingModelID` ON `ProficiencyRatingValue` (`ProficiencyRatingModelID`);

CREATE INDEX `IX_Project_BusinessID` ON `Project` (`BusinessID`);

CREATE INDEX `IX_Project_BusinessProfileRecordID` ON `Project` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Project_BusinessTeamID` ON `Project` (`BusinessTeamID`);

CREATE INDEX `IX_Project_SocialProfileID` ON `Project` (`SocialProfileID`);

CREATE INDEX `IX_ProjectBacklog_ProjectID` ON `ProjectBacklog` (`ProjectID`);

CREATE INDEX `IX_ProjectJournal_BusinessID` ON `ProjectJournal` (`BusinessID`);

CREATE INDEX `IX_ProjectJournal_BusinessProfileRecordID` ON `ProjectJournal` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ProjectResource_BusinessID` ON `ProjectResource` (`BusinessID`);

CREATE INDEX `IX_ProjectResource_BusinessProfileRecordID` ON `ProjectResource` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ProjectResourceRole_BusinessID` ON `ProjectResourceRole` (`BusinessID`);

CREATE INDEX `IX_ProjectResourceRole_BusinessProfileRecordID` ON `ProjectResourceRole` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ProjectResourceSkillRecord_BusinessID` ON `ProjectResourceSkillRecord` (`BusinessID`);

CREATE INDEX `IX_ProjectResourceSkillRecord_BusinessProfileRecordID` ON `ProjectResourceSkillRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ProjectResourceSkillRecord_ProficiencyRatingValueID` ON `ProjectResourceSkillRecord` (`ProficiencyRatingValueID`);

CREATE INDEX `IX_ProjectResourceSkillRecord_ProjectResourceID` ON `ProjectResourceSkillRecord` (`ProjectResourceID`);

CREATE INDEX `IX_ProjectResourceSkillRecord_ProjectResourceRoleID` ON `ProjectResourceSkillRecord` (`ProjectResourceRoleID`);

CREATE INDEX `IX_ProjectResourceSkillRecord_ProjectResourceSkillID` ON `ProjectResourceSkillRecord` (`ProjectResourceSkillID`);

CREATE INDEX `IX_ProjectTaskBucket_BusinessID` ON `ProjectTaskBucket` (`BusinessID`);

CREATE INDEX `IX_ProjectTaskBucket_BusinessProfileRecordID` ON `ProjectTaskBucket` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ProjectTaskBucket_KanbanBoardID` ON `ProjectTaskBucket` (`KanbanBoardID`);

CREATE INDEX `IX_ProjectTaskBucket_ProjectID` ON `ProjectTaskBucket` (`ProjectID`);

CREATE INDEX `IX_ProjectTaskRelationship_ChildProjectTaskID` ON `ProjectTaskRelationship` (`ChildProjectTaskID`);

CREATE INDEX `IX_ProjectTaskRelationship_ParentProjectTaskID` ON `ProjectTaskRelationship` (`ParentProjectTaskID`);

CREATE INDEX `IX_PurchaseRequest_BusinessID` ON `PurchaseRequest` (`BusinessID`);

CREATE INDEX `IX_PurchaseRequest_BusinessProfileRecordID` ON `PurchaseRequest` (`BusinessProfileRecordID`);

CREATE INDEX `IX_PurchaseRequest_SupplierProfileID` ON `PurchaseRequest` (`SupplierProfileID`);

CREATE INDEX `IX_Quote_AccountHolderID` ON `Quote` (`AccountHolderID`);

CREATE INDEX `IX_Quote_BillingLocationID` ON `Quote` (`BillingLocationID`);

CREATE INDEX `IX_Quote_BusinessID` ON `Quote` (`BusinessID`);

CREATE INDEX `IX_Quote_BusinessProfileRecordID` ON `Quote` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Quote_CurrencyID` ON `Quote` (`CurrencyID`);

CREATE INDEX `IX_Quote_DealUnitID` ON `Quote` (`DealUnitID`);

CREATE INDEX `IX_Quote_IndividualID` ON `Quote` (`IndividualID`);

CREATE INDEX `IX_Quote_OrganizationID` ON `Quote` (`OrganizationID`);

CREATE INDEX `IX_Quote_PaymentTermID` ON `Quote` (`PaymentTermID`);

CREATE INDEX `IX_Quote_PriceListID` ON `Quote` (`PriceListID`);

CREATE INDEX `IX_Quote_ProjectID` ON `Quote` (`ProjectID`);

CREATE INDEX `IX_Quote_ReceptorBusinessID` ON `Quote` (`ReceptorBusinessID`);

CREATE INDEX `IX_Quote_ShippingLocationID` ON `Quote` (`ShippingLocationID`);

CREATE INDEX `IX_Quote_ShippingMethodID` ON `Quote` (`ShippingMethodID`);

CREATE INDEX `IX_Quote_SupplierProfileID` ON `Quote` (`SupplierProfileID`);

CREATE INDEX `IX_QuoteRequest_BusinessID` ON `QuoteRequest` (`BusinessID`);

CREATE INDEX `IX_QuoteRequest_ContactID` ON `QuoteRequest` (`ContactID`);

CREATE INDEX `IX_Receipt_AccountHolderID` ON `Receipt` (`AccountHolderID`);

CREATE INDEX `IX_Receipt_BusinessID` ON `Receipt` (`BusinessID`);

CREATE INDEX `IX_Receipt_BusinessProfileRecordID` ON `Receipt` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Receipt_ContactID` ON `Receipt` (`ContactID`);

CREATE INDEX `IX_Receipt_InvoiceID` ON `Receipt` (`InvoiceID`);

CREATE INDEX `IX_Receipt_OrderID` ON `Receipt` (`OrderID`);

CREATE INDEX `IX_Receipt_PaymentID` ON `Receipt` (`PaymentID`);

CREATE INDEX `IX_RegionalBlockAlternativeAcronym_RegionalBlockID` ON `RegionalBlockAlternativeAcronym` (`RegionalBlockID`);

CREATE INDEX `IX_RegionalBlockAlternativeName_RegionalBlockID` ON `RegionalBlockAlternativeName` (`RegionalBlockID`);

CREATE INDEX `IX_RequiredSkillRecord_BusinessID` ON `RequiredSkillRecord` (`BusinessID`);

CREATE INDEX `IX_RequiredSkillRecord_EmployerProfileID` ON `RequiredSkillRecord` (`EmployerProfileID`);

CREATE INDEX `IX_RequiredSkillRecord_JobOfferID` ON `RequiredSkillRecord` (`JobOfferID`);

CREATE INDEX `IX_RetentionBonus_BusinessID` ON `RetentionBonus` (`BusinessID`);

CREATE INDEX `IX_RetentionBonus_BusinessProfileRecordID` ON `RetentionBonus` (`BusinessProfileRecordID`);

CREATE INDEX `IX_RetentionBonus_CurrencyID` ON `RetentionBonus` (`CurrencyID`);

CREATE INDEX `IX_RetentionBonus_SalaryID` ON `RetentionBonus` (`SalaryID`);

CREATE INDEX `IX_Review_BlogPostID` ON `Review` (`BlogPostID`);

CREATE INDEX `IX_Review_BusinessID` ON `Review` (`BusinessID`);

CREATE INDEX `IX_Review_ContactID` ON `Review` (`ContactID`);

CREATE INDEX `IX_Review_ItemID` ON `Review` (`ItemID`);

CREATE INDEX `IX_Review_SocialProfileID` ON `Review` (`SocialProfileID`);

CREATE INDEX `IX_Review_SupplierProfileID` ON `Review` (`SupplierProfileID`);

CREATE INDEX `IX_Review_TrainingProgramID` ON `Review` (`TrainingProgramID`);

CREATE INDEX `IX_Review_TrainingProgramReview_BusinessID` ON `Review` (`TrainingProgramReview_BusinessID`);

CREATE INDEX `IX_RolePriceMarkup_BusinessID` ON `RolePriceMarkup` (`BusinessID`);

CREATE INDEX `IX_RolePriceMarkup_BusinessProfileRecordID` ON `RolePriceMarkup` (`BusinessProfileRecordID`);

CREATE INDEX `IX_RolePriceMarkup_PriceListID` ON `RolePriceMarkup` (`PriceListID`);

CREATE INDEX `IX_Row_EntityID` ON `Row` (`EntityID`);

CREATE INDEX `IX_Salary_BusinessID` ON `Salary` (`BusinessID`);

CREATE INDEX `IX_Salary_BusinessProfileRecordID` ON `Salary` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Salary_CurrencyID` ON `Salary` (`CurrencyID`);

CREATE INDEX `IX_Salary_EmployeeProfileID` ON `Salary` (`EmployeeProfileID`);

CREATE INDEX `IX_SalaryDeduction_BusinessID` ON `SalaryDeduction` (`BusinessID`);

CREATE INDEX `IX_SalaryDeduction_BusinessProfileRecordID` ON `SalaryDeduction` (`BusinessProfileRecordID`);

CREATE INDEX `IX_SalaryDeduction_CurrencyID` ON `SalaryDeduction` (`CurrencyID`);

CREATE INDEX `IX_SalaryDeduction_SalaryID` ON `SalaryDeduction` (`SalaryID`);

CREATE INDEX `IX_SalaryEarning_BusinessID` ON `SalaryEarning` (`BusinessID`);

CREATE INDEX `IX_SalaryEarning_BusinessProfileRecordID` ON `SalaryEarning` (`BusinessProfileRecordID`);

CREATE INDEX `IX_SalaryEarning_CurrencyID` ON `SalaryEarning` (`CurrencyID`);

CREATE INDEX `IX_SalaryEarning_SalaryID` ON `SalaryEarning` (`SalaryID`);

CREATE INDEX `IX_SalesLiterature_BusinessID` ON `SalesLiterature` (`BusinessID`);

CREATE INDEX `IX_SalesLiterature_BusinessProfileRecordID` ON `SalesLiterature` (`BusinessProfileRecordID`);

CREATE INDEX `IX_SalesLiterature_SalesLiteratureTypeID` ON `SalesLiterature` (`SalesLiteratureTypeID`);

CREATE INDEX `IX_SalesLiteratureRecord_BusinessID` ON `SalesLiteratureRecord` (`BusinessID`);

CREATE INDEX `IX_SalesLiteratureRecord_BusinessProfileRecordID` ON `SalesLiteratureRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_SalesLiteratureRecord_ItemID` ON `SalesLiteratureRecord` (`ItemID`);

CREATE INDEX `IX_SalesLiteratureRecord_SalesLiteratureID` ON `SalesLiteratureRecord` (`SalesLiteratureID`);

CREATE INDEX `IX_SalesLiteratureType_BusinessID` ON `SalesLiteratureType` (`BusinessID`);

CREATE INDEX `IX_SalesLiteratureType_BusinessProfileRecordID` ON `SalesLiteratureType` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Schedule_AssetID` ON `Schedule` (`AssetID`);

CREATE INDEX `IX_Schedule_BusinessID` ON `Schedule` (`BusinessID`);

CREATE INDEX `IX_Schedule_ContactID` ON `Schedule` (`ContactID`);

CREATE INDEX `IX_Schedule_FiscalYearID` ON `Schedule` (`FiscalYearID`);

CREATE INDEX `IX_Schedule_HolidayScheduleID` ON `Schedule` (`HolidayScheduleID`);

CREATE INDEX `IX_Schedule_ProjectID` ON `Schedule` (`ProjectID`);

CREATE INDEX `IX_Schedule_ServiceID` ON `Schedule` (`ServiceID`);

CREATE INDEX `IX_Schedule_TimezoneID` ON `Schedule` (`TimezoneID`);

CREATE INDEX `IX_SecurityRoleGrant_BusinessApplicationID` ON `SecurityRoleGrant` (`BusinessApplicationID`);

CREATE INDEX `IX_SecurityRoleGrant_BusinessID` ON `SecurityRoleGrant` (`BusinessID`);

CREATE INDEX `IX_SecurityRoleGrant_BusinessProfileRecordID` ON `SecurityRoleGrant` (`BusinessProfileRecordID`);

CREATE INDEX `IX_SecurityRoleGrant_BusinessSecurityRoleID` ON `SecurityRoleGrant` (`BusinessSecurityRoleID`);

CREATE INDEX `IX_SecurityRoleGrant_GrantorBusinessProfileRecordID` ON `SecurityRoleGrant` (`GrantorBusinessProfileRecordID`);

CREATE INDEX `IX_SEOKeyWord_BusinessID` ON `SEOKeyWord` (`BusinessID`);

CREATE INDEX `IX_SEOKeyWordRecord_SEOKeyWordID` ON `SEOKeyWordRecord` (`SEOKeyWordID`);

CREATE INDEX `IX_ServiceCase_AccountHolderID` ON `ServiceCase` (`AccountHolderID`);

CREATE INDEX `IX_ServiceCase_BusinessID` ON `ServiceCase` (`BusinessID`);

CREATE INDEX `IX_ServiceCase_BusinessProfileRecordID` ON `ServiceCase` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ServiceCase_IndividualID` ON `ServiceCase` (`IndividualID`);

CREATE INDEX `IX_ServiceCase_OrganizationID` ON `ServiceCase` (`OrganizationID`);

CREATE INDEX `IX_ServiceCase_ReceptorBusinessID` ON `ServiceCase` (`ReceptorBusinessID`);

CREATE INDEX `IX_ServiceCase_ServiceCaseTypeID` ON `ServiceCase` (`ServiceCaseTypeID`);

CREATE INDEX `IX_ServiceCase_ServiceID` ON `ServiceCase` (`ServiceID`);

CREATE INDEX `IX_ServiceCase_ServiceLevelAgreementID` ON `ServiceCase` (`ServiceLevelAgreementID`);

CREATE INDEX `IX_ServiceCase_ServiceQueueID` ON `ServiceCase` (`ServiceQueueID`);

CREATE INDEX `IX_ServiceCaseType_BusinessID` ON `ServiceCaseType` (`BusinessID`);

CREATE INDEX `IX_ServiceCaseType_BusinessProfileRecordID` ON `ServiceCaseType` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ServicePersonnelRecord_EmployeeProfileID` ON `ServicePersonnelRecord` (`EmployeeProfileID`);

CREATE INDEX `IX_ServicePersonnelRecord_ServiceCaseID` ON `ServicePersonnelRecord` (`ServiceCaseID`);

CREATE INDEX `IX_ServicePersonnelRecord_ServiceID` ON `ServicePersonnelRecord` (`ServiceID`);

CREATE INDEX `IX_ServiceQueue_BusinessID` ON `ServiceQueue` (`BusinessID`);

CREATE INDEX `IX_ServiceQueue_BusinessProfileRecordID` ON `ServiceQueue` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ServiceQueue_BusinessTeamID` ON `ServiceQueue` (`BusinessTeamID`);

CREATE INDEX `IX_ServiceQueueRecord_BusinessID` ON `ServiceQueueRecord` (`BusinessID`);

CREATE INDEX `IX_ServiceQueueRecord_BusinessProfileRecordID` ON `ServiceQueueRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ServiceQueueRecord_ServiceID` ON `ServiceQueueRecord` (`ServiceID`);

CREATE INDEX `IX_ServiceQueueRecord_ServiceQueueID` ON `ServiceQueueRecord` (`ServiceQueueID`);

CREATE INDEX `IX_ShareClass_BusinessID` ON `ShareClass` (`BusinessID`);

CREATE INDEX `IX_ShareClass_BusinessProfileRecordID` ON `ShareClass` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ShareClass_CurrencyID` ON `ShareClass` (`CurrencyID`);

CREATE INDEX `IX_ShareIssuance_BusinessID` ON `ShareIssuance` (`BusinessID`);

CREATE INDEX `IX_ShareIssuance_BusinessProfileRecordID` ON `ShareIssuance` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ShareIssuance_CurrencyID` ON `ShareIssuance` (`CurrencyID`);

CREATE INDEX `IX_ShareTransfer_BusinessID` ON `ShareTransfer` (`BusinessID`);

CREATE INDEX `IX_ShareTransfer_BusinessProfileRecordID` ON `ShareTransfer` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ShareTransfer_FormerShareHolderID` ON `ShareTransfer` (`FormerShareHolderID`);

CREATE INDEX `IX_ShareTransfer_NewShareHolderID` ON `ShareTransfer` (`NewShareHolderID`);

CREATE INDEX `IX_ShareTransfer_ShareTransferReasonID` ON `ShareTransfer` (`ShareTransferReasonID`);

CREATE INDEX `IX_ShareTransferReason_BusinessID` ON `ShareTransferReason` (`BusinessID`);

CREATE INDEX `IX_ShareTransferReason_BusinessProfileRecordID` ON `ShareTransferReason` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Shipment_BillingItemRecordID` ON `Shipment` (`BillingItemRecordID`);

CREATE INDEX `IX_Shipment_BusinessID` ON `Shipment` (`BusinessID`);

CREATE INDEX `IX_Shipment_OrderID` ON `Shipment` (`OrderID`);

CREATE INDEX `IX_ShippingClass_BusinessID` ON `ShippingClass` (`BusinessID`);

CREATE INDEX `IX_ShippingCourier_BusinessID` ON `ShippingCourier` (`BusinessID`);

CREATE INDEX `IX_ShippingCourier_BusinessProfileRecordID` ON `ShippingCourier` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ShippingCourier_CountryID` ON `ShippingCourier` (`CountryID`);

CREATE INDEX `IX_ShippingLabel_BusinessID` ON `ShippingLabel` (`BusinessID`);

CREATE INDEX `IX_ShippingLabel_LocationID` ON `ShippingLabel` (`LocationID`);

CREATE INDEX `IX_ShippingLabel_ShipmentID` ON `ShippingLabel` (`ShipmentID`);

CREATE INDEX `IX_ShippingLabel_ShippingCourierID` ON `ShippingLabel` (`ShippingCourierID`);

CREATE INDEX `IX_ShippingMethod_BusinessID` ON `ShippingMethod` (`BusinessID`);

CREATE INDEX `IX_ShippingMethod_CurrencyID` ON `ShippingMethod` (`CurrencyID`);

CREATE INDEX `IX_ShippingMethodClassRecord_BusinessID` ON `ShippingMethodClassRecord` (`BusinessID`);

CREATE INDEX `IX_ShippingMethodClassRecord_CurrencyID` ON `ShippingMethodClassRecord` (`CurrencyID`);

CREATE INDEX `IX_ShippingMethodClassRecord_ShippingClassID` ON `ShippingMethodClassRecord` (`ShippingClassID`);

CREATE INDEX `IX_ShippingMethodClassRecord_ShippingMethodID` ON `ShippingMethodClassRecord` (`ShippingMethodID`);

CREATE INDEX `IX_ShippingMethodZoneRecord_BusinessID` ON `ShippingMethodZoneRecord` (`BusinessID`);

CREATE INDEX `IX_ShippingMethodZoneRecord_ShippingMethodID` ON `ShippingMethodZoneRecord` (`ShippingMethodID`);

CREATE INDEX `IX_ShippingMethodZoneRecord_ShippingZoneID` ON `ShippingMethodZoneRecord` (`ShippingZoneID`);

CREATE INDEX `IX_ShippingPackage_BusinessID` ON `ShippingPackage` (`BusinessID`);

CREATE INDEX `IX_ShippingPackage_ShippingCourierID` ON `ShippingPackage` (`ShippingCourierID`);

CREATE INDEX `IX_ShippingPackage_ShippingLabelID` ON `ShippingPackage` (`ShippingLabelID`);

CREATE INDEX `IX_ShippingRegion_BusinessID` ON `ShippingRegion` (`BusinessID`);

CREATE INDEX `IX_ShippingRegionCountryRecord_BusinessID` ON `ShippingRegionCountryRecord` (`BusinessID`);

CREATE INDEX `IX_ShippingRegionCountryRecord_CountryID` ON `ShippingRegionCountryRecord` (`CountryID`);

CREATE INDEX `IX_ShippingRegionCountryRecord_ShippingRegionID` ON `ShippingRegionCountryRecord` (`ShippingRegionID`);

CREATE INDEX `IX_ShippingRegionZoneRecord_BusinessID` ON `ShippingRegionZoneRecord` (`BusinessID`);

CREATE INDEX `IX_ShippingRegionZoneRecord_ShippingRegionID` ON `ShippingRegionZoneRecord` (`ShippingRegionID`);

CREATE INDEX `IX_ShippingRegionZoneRecord_ShippingZoneID` ON `ShippingRegionZoneRecord` (`ShippingZoneID`);

CREATE INDEX `IX_ShippingZone_BusinessID` ON `ShippingZone` (`BusinessID`);

CREATE INDEX `IX_Signature_AccountHolderID` ON `Signature` (`AccountHolderID`);

CREATE INDEX `IX_Signature_AgreementRevisionID` ON `Signature` (`AgreementRevisionID`);

CREATE INDEX `IX_Signature_BusinessID` ON `Signature` (`BusinessID`);

CREATE INDEX `IX_Signature_BusinessProfileRecordID` ON `Signature` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Signature_ContactID` ON `Signature` (`ContactID`);

CREATE INDEX `IX_Signature_SigningCertificateID` ON `Signature` (`SigningCertificateID`);

CREATE INDEX `IX_Signature_SigningDocumentID` ON `Signature` (`SigningDocumentID`);

CREATE INDEX `IX_Signature_SigningProfileID` ON `Signature` (`SigningProfileID`);

CREATE INDEX `IX_Signature_SocialProfileID` ON `Signature` (`SocialProfileID`);

CREATE INDEX `IX_SignedDocument_AccountHolderID` ON `SignedDocument` (`AccountHolderID`);

CREATE INDEX `IX_SignedDocument_BusinessID` ON `SignedDocument` (`BusinessID`);

CREATE INDEX `IX_SignedDocument_BusinessProfileRecordID` ON `SignedDocument` (`BusinessProfileRecordID`);

CREATE INDEX `IX_SignedDocument_ContactID` ON `SignedDocument` (`ContactID`);

CREATE INDEX `IX_SignedDocument_SignatorCertificateID` ON `SignedDocument` (`SignatorCertificateID`);

CREATE INDEX `IX_SignedDocument_SigningProfileID` ON `SignedDocument` (`SigningProfileID`);

CREATE INDEX `IX_SigningCertificate_AccountHolderID` ON `SigningCertificate` (`AccountHolderID`);

CREATE INDEX `IX_SigningCertificate_BusinessID` ON `SigningCertificate` (`BusinessID`);

CREATE INDEX `IX_SigningCertificate_BusinessProfileRecordID` ON `SigningCertificate` (`BusinessProfileRecordID`);

CREATE INDEX `IX_SigningCertificate_ContactID` ON `SigningCertificate` (`ContactID`);

CREATE INDEX `IX_SigningCertificate_SigningProfileID` ON `SigningCertificate` (`SigningProfileID`);

CREATE INDEX `IX_SocialBadge_BusinessID` ON `SocialBadge` (`BusinessID`);

CREATE INDEX `IX_SocialBadge_BusinessProfileRecordID` ON `SocialBadge` (`BusinessProfileRecordID`);

CREATE INDEX `IX_SocialBadgeRecord_SocialBadgeID` ON `SocialBadgeRecord` (`SocialBadgeID`);

CREATE INDEX `IX_SocialBadgeRecord_SocialProfileID` ON `SocialBadgeRecord` (`SocialProfileID`);

CREATE INDEX `IX_SocialComment_BlogPostID` ON `SocialComment` (`BlogPostID`);

CREATE INDEX `IX_SocialComment_OwnerSocialProfileID` ON `SocialComment` (`OwnerSocialProfileID`);

CREATE INDEX `IX_SocialComment_ParentCommentID` ON `SocialComment` (`ParentCommentID`);

CREATE INDEX `IX_SocialComment_SocialPostID` ON `SocialComment` (`SocialPostID`);

CREATE UNIQUE INDEX `IX_SocialFeed_SocialProfileID` ON `SocialFeed` (`SocialProfileID`);

CREATE INDEX `IX_SocialGroup_BusinessID` ON `SocialGroup` (`BusinessID`);

CREATE INDEX `IX_SocialGroup_BusinessProfileRecordID` ON `SocialGroup` (`BusinessProfileRecordID`);

CREATE UNIQUE INDEX `IX_SocialGroup_CourseID` ON `SocialGroup` (`CourseID`);

CREATE INDEX `IX_SocialGroup_SocialProfileID` ON `SocialGroup` (`SocialProfileID`);

CREATE INDEX `IX_SocialGroupEnrollmentRecord_GroupID` ON `SocialGroupEnrollmentRecord` (`GroupID`);

CREATE INDEX `IX_SocialGroupEnrollmentRecord_SocialProfileID` ON `SocialGroupEnrollmentRecord` (`SocialProfileID`);

CREATE INDEX `IX_SocialMediaPost_BusinessID` ON `SocialMediaPost` (`BusinessID`);

CREATE INDEX `IX_SocialMediaPost_BusinessProfileRecordID` ON `SocialMediaPost` (`BusinessProfileRecordID`);

CREATE INDEX `IX_SocialMediaPost_SocialPostBucketID` ON `SocialMediaPost` (`SocialPostBucketID`);

CREATE INDEX `IX_SocialPost_BlogPostID` ON `SocialPost` (`BlogPostID`);

CREATE INDEX `IX_SocialPost_SocialFeedID` ON `SocialPost` (`SocialFeedID`);

CREATE INDEX `IX_SocialPost_SocialGroupID` ON `SocialPost` (`SocialGroupID`);

CREATE INDEX `IX_SocialPost_SocialProfileID` ON `SocialPost` (`SocialProfileID`);

CREATE INDEX `IX_SocialPost_WebForumID` ON `SocialPost` (`WebForumID`);

CREATE INDEX `IX_SocialPost_WebPageID` ON `SocialPost` (`WebPageID`);

CREATE INDEX `IX_SocialPostBucket_BusinessID` ON `SocialPostBucket` (`BusinessID`);

CREATE INDEX `IX_SocialPostBucket_BusinessProfileRecordID` ON `SocialPostBucket` (`BusinessProfileRecordID`);

CREATE UNIQUE INDEX `IX_SocialProfile_AccountHolderID` ON `SocialProfile` (`AccountHolderID`);

CREATE UNIQUE INDEX `IX_SocialProfile_BusinessID` ON `SocialProfile` (`BusinessID`);

CREATE UNIQUE INDEX `IX_SocialProfile_ContactID` ON `SocialProfile` (`ContactID`);

CREATE INDEX `IX_SocialReaction_BlogPostID` ON `SocialReaction` (`BlogPostID`);

CREATE INDEX `IX_SocialReaction_SocialCommentID` ON `SocialReaction` (`SocialCommentID`);

CREATE INDEX `IX_SocialReaction_SocialPostID` ON `SocialReaction` (`SocialPostID`);

CREATE INDEX `IX_SocialReaction_SocialProfileID` ON `SocialReaction` (`SocialProfileID`);

CREATE INDEX `IX_SupplierGroup_BusinessID` ON `SupplierGroup` (`BusinessID`);

CREATE INDEX `IX_SupplierGroup_BusinessProfileRecordID` ON `SupplierGroup` (`BusinessProfileRecordID`);

CREATE INDEX `IX_SupplierGroupRecord_BusinessID` ON `SupplierGroupRecord` (`BusinessID`);

CREATE INDEX `IX_SupplierGroupRecord_BusinessProfileRecordID` ON `SupplierGroupRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_SupplierGroupRecord_SupplierGroupID` ON `SupplierGroupRecord` (`SupplierGroupID`);

CREATE INDEX `IX_SupplierGroupRecord_SupplierProfileID` ON `SupplierGroupRecord` (`SupplierProfileID`);

CREATE INDEX `IX_SupportPriority_BusinessID` ON `SupportPriority` (`BusinessID`);

CREATE INDEX `IX_SupportPriority_SupportEntitlementID` ON `SupportPriority` (`SupportEntitlementID`);

CREATE INDEX `IX_SupportRequest_AccountHolderID` ON `SupportRequest` (`AccountHolderID`);

CREATE INDEX `IX_SupportRequest_BusinessID` ON `SupportRequest` (`BusinessID`);

CREATE INDEX `IX_SupportRequest_BusinessProfileRecordID` ON `SupportRequest` (`BusinessProfileRecordID`);

CREATE INDEX `IX_SupportRequest_ContactID` ON `SupportRequest` (`ContactID`);

CREATE INDEX `IX_SupportRequest_PaymentID` ON `SupportRequest` (`PaymentID`);

CREATE INDEX `IX_SupportRequest_RefundPolicyID` ON `SupportRequest` (`RefundPolicyID`);

CREATE INDEX `IX_SupportRequest_ReturnPolicyID` ON `SupportRequest` (`ReturnPolicyID`);

CREATE INDEX `IX_SupportRequest_SupportEntitlementID` ON `SupportRequest` (`SupportEntitlementID`);

CREATE INDEX `IX_SupportRequest_WarrantyPolicyID` ON `SupportRequest` (`WarrantyPolicyID`);

CREATE INDEX `IX_SupportTicket_AccountHolderID` ON `SupportTicket` (`AccountHolderID`);

CREATE INDEX `IX_SupportTicket_BusinessID` ON `SupportTicket` (`BusinessID`);

CREATE INDEX `IX_SupportTicket_BusinessProfileRecordID` ON `SupportTicket` (`BusinessProfileRecordID`);

CREATE INDEX `IX_SupportTicket_ContactID` ON `SupportTicket` (`ContactID`);

CREATE INDEX `IX_SupportTicket_SupportEntitlementID` ON `SupportTicket` (`SupportEntitlementID`);

CREATE INDEX `IX_SupportTicket_SupportPriorityID` ON `SupportTicket` (`SupportPriorityID`);

CREATE INDEX `IX_SupportTicket_SupportRequestID` ON `SupportTicket` (`SupportRequestID`);

CREATE INDEX `IX_SupportTicket_SupportTicketTypeID` ON `SupportTicket` (`SupportTicketTypeID`);

CREATE INDEX `IX_SupportTicketType_BusinessID` ON `SupportTicketType` (`BusinessID`);

CREATE UNIQUE INDEX `IX_SustainabilityProfile_BusinessID` ON `SustainabilityProfile` (`BusinessID`);

CREATE INDEX `IX_SustainabilityProfile_BusinessProfileRecordID` ON `SustainabilityProfile` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Task_BusinessID` ON `Task` (`BusinessID`);

CREATE INDEX `IX_Task_BusinessProfileRecordID` ON `Task` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Task_ProjectID` ON `Task` (`ProjectID`);

CREATE INDEX `IX_Task_ProjectTaskBucketID` ON `Task` (`ProjectTaskBucketID`);

CREATE INDEX `IX_Task_SocialProfileID` ON `Task` (`SocialProfileID`);

CREATE INDEX `IX_Task_TaskListID` ON `Task` (`TaskListID`);

CREATE INDEX `IX_TaskAssignment_SocialProfileID` ON `TaskAssignment` (`SocialProfileID`);

CREATE INDEX `IX_TaskAssignment_TaskID` ON `TaskAssignment` (`TaskID`);

CREATE INDEX `IX_TaskAssignment_TaskListID` ON `TaskAssignment` (`TaskListID`);

CREATE INDEX `IX_TaskList_BusinessID` ON `TaskList` (`BusinessID`);

CREATE INDEX `IX_TaskList_BusinessProfileRecordID` ON `TaskList` (`BusinessProfileRecordID`);

CREATE INDEX `IX_TaskList_ProjectID` ON `TaskList` (`ProjectID`);

CREATE INDEX `IX_TaskList_SocialProfileID` ON `TaskList` (`SocialProfileID`);

CREATE INDEX `IX_TaxClass_BusinessID` ON `TaxClass` (`BusinessID`);

CREATE INDEX `IX_TaxClass_BusinessProfileRecordID` ON `TaxClass` (`BusinessProfileRecordID`);

CREATE INDEX `IX_TaxClass_FiscalAuthorityID` ON `TaxClass` (`FiscalAuthorityID`);

CREATE INDEX `IX_TaxClass_FiscalYearID` ON `TaxClass` (`FiscalYearID`);

CREATE INDEX `IX_Taxonomy_BusinessID` ON `Taxonomy` (`BusinessID`);

CREATE INDEX `IX_Taxonomy_BusinessProfileRecordID` ON `Taxonomy` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Taxonomy_WebPortalID` ON `Taxonomy` (`WebPortalID`);

CREATE INDEX `IX_TaxonomyRecord_BlogPostCategoryRecord_BlogPostID` ON `TaxonomyRecord` (`BlogPostCategoryRecord_BlogPostID`);

CREATE INDEX `IX_TaxonomyRecord_BlogPostID` ON `TaxonomyRecord` (`BlogPostID`);

CREATE INDEX `IX_TaxonomyRecord_BusinessID` ON `TaxonomyRecord` (`BusinessID`);

CREATE INDEX `IX_TaxonomyRecord_KnowledgeArticleCategoryID` ON `TaxonomyRecord` (`KnowledgeArticleCategoryID`);

CREATE INDEX `IX_TaxonomyRecord_KnowledgeArticleID` ON `TaxonomyRecord` (`KnowledgeArticleID`);

CREATE INDEX `IX_TaxonomyRecord_SocialForumPostID` ON `TaxonomyRecord` (`SocialForumPostID`);

CREATE INDEX `IX_TaxonomyRecord_TaxonomyID` ON `TaxonomyRecord` (`TaxonomyID`);

CREATE INDEX `IX_TaxonomyRecord_WebContentID` ON `TaxonomyRecord` (`WebContentID`);

CREATE INDEX `IX_TaxonomyRecord_WebPageCategoryID` ON `TaxonomyRecord` (`WebPageCategoryID`);

CREATE INDEX `IX_TaxonomyRecord_WebPageCategoryRecord_WebPageID` ON `TaxonomyRecord` (`WebPageCategoryRecord_WebPageID`);

CREATE INDEX `IX_TaxonomyRecord_WebPageID` ON `TaxonomyRecord` (`WebPageID`);

CREATE INDEX `IX_TaxonomyRecord_WebPageTagID` ON `TaxonomyRecord` (`WebPageTagID`);

CREATE INDEX `IX_TaxRate_BusinessID` ON `TaxRate` (`BusinessID`);

CREATE INDEX `IX_TaxRate_BusinessProfileRecordID` ON `TaxRate` (`BusinessProfileRecordID`);

CREATE INDEX `IX_TaxRate_CountryID` ON `TaxRate` (`CountryID`);

CREATE INDEX `IX_TaxRate_CurrencyID` ON `TaxRate` (`CurrencyID`);

CREATE INDEX `IX_TaxRate_FiscalAuthorityID` ON `TaxRate` (`FiscalAuthorityID`);

CREATE INDEX `IX_TaxRate_FiscalYearID` ON `TaxRate` (`FiscalYearID`);

CREATE INDEX `IX_TaxRate_TaxClassID` ON `TaxRate` (`TaxClassID`);

CREATE INDEX `IX_TaxRate_TaxPolicyID` ON `TaxRate` (`TaxPolicyID`);

CREATE INDEX `IX_TaxRate_UnitGroupID` ON `TaxRate` (`UnitGroupID`);

CREATE INDEX `IX_TaxRate_UnitID` ON `TaxRate` (`UnitID`);

CREATE INDEX `IX_TaxRateClassRecord_BusinessID` ON `TaxRateClassRecord` (`BusinessID`);

CREATE INDEX `IX_TaxRateClassRecord_BusinessProfileRecordID` ON `TaxRateClassRecord` (`BusinessProfileRecordID`);

CREATE INDEX `IX_TaxRateClassRecord_TaxClassID` ON `TaxRateClassRecord` (`TaxClassID`);

CREATE INDEX `IX_TaxRateClassRecord_TaxRateID` ON `TaxRateClassRecord` (`TaxRateID`);

CREATE INDEX `IX_Territory_AccountHolderId` ON `Territory` (`AccountHolderId`);

CREATE INDEX `IX_Territory_BusinessID` ON `Territory` (`BusinessID`);

CREATE INDEX `IX_Territory_BusinessProfileRecordID` ON `Territory` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Territory_ParentTerritoryID` ON `Territory` (`ParentTerritoryID`);

CREATE INDEX `IX_TimeInterval_BusinessID` ON `TimeInterval` (`BusinessID`);

CREATE INDEX `IX_TimeInterval_BusinessProfileRecordID` ON `TimeInterval` (`BusinessProfileRecordID`);

CREATE INDEX `IX_TimeInterval_EmployeeProfileID` ON `TimeInterval` (`EmployeeProfileID`);

CREATE INDEX `IX_TimeInterval_LeaveApplicationID` ON `TimeInterval` (`LeaveApplicationID`);

CREATE INDEX `IX_TimeInterval_ParentTimeIntervalID` ON `TimeInterval` (`ParentTimeIntervalID`);

CREATE INDEX `IX_TimeInterval_ScheduleID` ON `TimeInterval` (`ScheduleID`);

CREATE INDEX `IX_TimeInterval_Shift_BusinessID` ON `TimeInterval` (`Shift_BusinessID`);

CREATE INDEX `IX_TimeInterval_Shift_EmployeeProfileID` ON `TimeInterval` (`Shift_EmployeeProfileID`);

CREATE INDEX `IX_TimeInterval_TrainingProgramEvent_BusinessID` ON `TimeInterval` (`TrainingProgramEvent_BusinessID`);

CREATE INDEX `IX_TimeInterval_TrainingProgramEvent_BusinessProfileRecordID` ON `TimeInterval` (`TrainingProgramEvent_BusinessProfileRecordID`);

CREATE INDEX `IX_TimeInterval_TrainingProgramID` ON `TimeInterval` (`TrainingProgramID`);

CREATE INDEX `IX_TrainingProgram_BusinessID` ON `TrainingProgram` (`BusinessID`);

CREATE INDEX `IX_TrainingProgram_BusinessProfileRecordID` ON `TrainingProgram` (`BusinessProfileRecordID`);

CREATE INDEX `IX_TrainingProgramApplication_BusinessID` ON `TrainingProgramApplication` (`BusinessID`);

CREATE INDEX `IX_TrainingProgramApplication_BusinessProfileRecordID` ON `TrainingProgramApplication` (`BusinessProfileRecordID`);

CREATE INDEX `IX_TrainingProgramApplication_EmployeeProfileID` ON `TrainingProgramApplication` (`EmployeeProfileID`);

CREATE INDEX `IX_TrainingProgramApplication_TrainingProgramID` ON `TrainingProgramApplication` (`TrainingProgramID`);

CREATE INDEX `IX_TrainingProgramCourse_BusinessID` ON `TrainingProgramCourse` (`BusinessID`);

CREATE INDEX `IX_TrainingProgramCourse_BusinessProfileRecordID` ON `TrainingProgramCourse` (`BusinessProfileRecordID`);

CREATE INDEX `IX_TrainingProgramCourse_CourseID` ON `TrainingProgramCourse` (`CourseID`);

CREATE INDEX `IX_TrainingProgramCourse_TrainingProgramID` ON `TrainingProgramCourse` (`TrainingProgramID`);

CREATE INDEX `IX_TrainingProgramResultSet_BusinessID` ON `TrainingProgramResultSet` (`BusinessID`);

CREATE INDEX `IX_TrainingProgramResultSet_BusinessProfileRecordID` ON `TrainingProgramResultSet` (`BusinessProfileRecordID`);

CREATE INDEX `IX_TrainingProgramResultSet_TrainingProgramID` ON `TrainingProgramResultSet` (`TrainingProgramID`);

CREATE INDEX `IX_Transaction_BankAccountID` ON `Transaction` (`BankAccountID`);

CREATE INDEX `IX_Transaction_BankProfileID` ON `Transaction` (`BankProfileID`);

CREATE INDEX `IX_Transaction_BusinessID` ON `Transaction` (`BusinessID`);

CREATE INDEX `IX_Transaction_BusinessProfileRecordID` ON `Transaction` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Transaction_ContactID` ON `Transaction` (`ContactID`);

CREATE INDEX `IX_Transaction_CurrencyID` ON `Transaction` (`CurrencyID`);

CREATE INDEX `IX_Transaction_ProjectID` ON `Transaction` (`ProjectID`);

CREATE INDEX `IX_Transaction_ProjectJournalID` ON `Transaction` (`ProjectJournalID`);

CREATE INDEX `IX_Transaction_ProjectResourceID` ON `Transaction` (`ProjectResourceID`);

CREATE INDEX `IX_Transaction_ProjectResourceRoleID` ON `Transaction` (`ProjectResourceRoleID`);

CREATE INDEX `IX_Transaction_ProjectTaskID` ON `Transaction` (`ProjectTaskID`);

CREATE INDEX `IX_Transaction_TransactionCategoryID` ON `Transaction` (`TransactionCategoryID`);

CREATE INDEX `IX_Transaction_UnitGroupID` ON `Transaction` (`UnitGroupID`);

CREATE INDEX `IX_Transaction_UnitID` ON `Transaction` (`UnitID`);

CREATE INDEX `IX_TransactionCategory_BusinessID` ON `TransactionCategory` (`BusinessID`);

CREATE INDEX `IX_TransactionCategory_BusinessProfileRecordID` ON `TransactionCategory` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Unit_BaseUnitID` ON `Unit` (`BaseUnitID`);

CREATE INDEX `IX_Unit_BusinessID` ON `Unit` (`BusinessID`);

CREATE INDEX `IX_Unit_BusinessProfileRecordID` ON `Unit` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Unit_UnitGroupID` ON `Unit` (`UnitGroupID`);

CREATE INDEX `IX_UnitGroup_BusinessID` ON `UnitGroup` (`BusinessID`);

CREATE INDEX `IX_UnitGroup_BusinessProfileRecordID` ON `UnitGroup` (`BusinessProfileRecordID`);

CREATE INDEX `IX_View_EntityID` ON `View` (`EntityID`);

CREATE UNIQUE INDEX `IX_WalletAccount_AccountHolderID` ON `WalletAccount` (`AccountHolderID`);

CREATE INDEX `IX_WalletAccount_AccountID` ON `WalletAccount` (`AccountID`);

CREATE INDEX `IX_WalletAccount_BillingProfileID` ON `WalletAccount` (`BillingProfileID`);

CREATE UNIQUE INDEX `IX_WalletAccount_BusinessID` ON `WalletAccount` (`BusinessID`);

CREATE UNIQUE INDEX `IX_WalletAccount_ContactID` ON `WalletAccount` (`ContactID`);

CREATE INDEX `IX_WalletAccount_CountryID` ON `WalletAccount` (`CountryID`);

CREATE INDEX `IX_WalletAccount_LocationID` ON `WalletAccount` (`LocationID`);

CREATE INDEX `IX_WalletWithdraw_CurrencyID` ON `WalletWithdraw` (`CurrencyID`);

CREATE INDEX `IX_WalletWithdraw_WalletAccountID` ON `WalletWithdraw` (`WalletAccountID`);

CREATE INDEX `IX_WalletWithdraw_WalletWithdrawRequestID` ON `WalletWithdraw` (`WalletWithdrawRequestID`);

CREATE INDEX `IX_WalletWithdrawRequest_BankAccountID` ON `WalletWithdrawRequest` (`BankAccountID`);

CREATE INDEX `IX_WalletWithdrawRequest_BusinessID` ON `WalletWithdrawRequest` (`BusinessID`);

CREATE INDEX `IX_WalletWithdrawRequest_BusinessProfileRecordID` ON `WalletWithdrawRequest` (`BusinessProfileRecordID`);

CREATE INDEX `IX_WalletWithdrawRequest_CurrencyID` ON `WalletWithdrawRequest` (`CurrencyID`);

CREATE INDEX `IX_WalletWithdrawRequest_WalletAccountID` ON `WalletWithdrawRequest` (`WalletAccountID`);

CREATE INDEX `IX_WebContent_BlogPostCategoryID` ON `WebContent` (`BlogPostCategoryID`);

CREATE INDEX `IX_WebContent_BusinessID` ON `WebContent` (`BusinessID`);

CREATE INDEX `IX_WebContent_BusinessProfileRecordID` ON `WebContent` (`BusinessProfileRecordID`);

CREATE INDEX `IX_WebContent_CourseAssignmentComponent_CourseID` ON `WebContent` (`CourseAssignmentComponent_CourseID`);

CREATE INDEX `IX_WebContent_CourseAssignmentID` ON `WebContent` (`CourseAssignmentID`);

CREATE INDEX `IX_WebContent_CourseCompletionCertificateTemplate_CourseID` ON `WebContent` (`CourseCompletionCertificateTemplate_CourseID`);

CREATE INDEX `IX_WebContent_CourseForum_CourseID` ON `WebContent` (`CourseForum_CourseID`);

CREATE INDEX `IX_WebContent_CourseID` ON `WebContent` (`CourseID`);

CREATE INDEX `IX_WebContent_CoursePage_CourseID` ON `WebContent` (`CoursePage_CourseID`);

CREATE INDEX `IX_WebContent_CourseUnitComponent_CourseID` ON `WebContent` (`CourseUnitComponent_CourseID`);

CREATE INDEX `IX_WebContent_CourseUnitID` ON `WebContent` (`CourseUnitID`);

CREATE INDEX `IX_WebContent_CourseUpdate_CourseID` ON `WebContent` (`CourseUpdate_CourseID`);

CREATE INDEX `IX_WebContent_CourseWikiID` ON `WebContent` (`CourseWikiID`);

CREATE INDEX `IX_WebContent_MarketingCampaignID` ON `WebContent` (`MarketingCampaignID`);

CREATE INDEX `IX_WebContent_NewsletterID` ON `WebContent` (`NewsletterID`);

CREATE INDEX `IX_WebContent_ParentWebContentID` ON `WebContent` (`ParentWebContentID`);

CREATE INDEX `IX_WebContent_ParentWebContentVersionID` ON `WebContent` (`ParentWebContentVersionID`);

CREATE INDEX `IX_WebContent_WebFormID` ON `WebContent` (`WebFormID`);

CREATE INDEX `IX_WebContent_WebForum_WebTemplateID` ON `WebContent` (`WebForum_WebTemplateID`);

CREATE INDEX `IX_WebContent_WebForumCategoryID` ON `WebContent` (`WebForumCategoryID`);

CREATE INDEX `IX_WebContent_WebPage_WebFormID` ON `WebContent` (`WebPage_WebFormID`);

CREATE INDEX `IX_WebContent_WebPage_WebTemplateID` ON `WebContent` (`WebPage_WebTemplateID`);

CREATE INDEX `IX_WebContent_WebPortalID` ON `WebContent` (`WebPortalID`);

CREATE INDEX `IX_WebContent_WebsiteThemeID` ON `WebContent` (`WebsiteThemeID`);

CREATE INDEX `IX_WebContent_WebTemplateID` ON `WebContent` (`WebTemplateID`);

CREATE INDEX `IX_WebFormSubmit_WebFormID` ON `WebFormSubmit` (`WebFormID`);

CREATE INDEX `IX_WebhookRequestCondition_WebhookRequestID` ON `WebhookRequestCondition` (`WebhookRequestID`);

CREATE INDEX `IX_WebhookRequestDataEntry_WebhookRequestID` ON `WebhookRequestDataEntry` (`WebhookRequestID`);

CREATE INDEX `IX_WebhookRequestHeader_WebhookRequestID` ON `WebhookRequestHeader` (`WebhookRequestID`);

CREATE INDEX `IX_WebPortal_BusinessDomainID` ON `WebPortal` (`BusinessDomainID`);

CREATE INDEX `IX_WebPortal_BusinessID` ON `WebPortal` (`BusinessID`);

CREATE INDEX `IX_WebPortal_BusinessPortalApplicationID` ON `WebPortal` (`BusinessPortalApplicationID`);

CREATE INDEX `IX_WebPortal_BusinessProfileRecordID` ON `WebPortal` (`BusinessProfileRecordID`);

CREATE INDEX `IX_WebPortal_WebsiteThemeID` ON `WebPortal` (`WebsiteThemeID`);

CREATE INDEX `IX_WebPortalBusinessDomainRecord_BusinessDomainID` ON `WebPortalBusinessDomainRecord` (`BusinessDomainID`);

CREATE INDEX `IX_WebPortalBusinessDomainRecord_WebPortalID` ON `WebPortalBusinessDomainRecord` (`WebPortalID`);

CREATE INDEX `IX_WebResource_BusinessID` ON `WebResource` (`BusinessID`);

CREATE INDEX `IX_WebResource_WebsiteThemeID` ON `WebResource` (`WebsiteThemeID`);

CREATE INDEX `IX_WebsiteTheme_BusinessID` ON `WebsiteTheme` (`BusinessID`);

CREATE INDEX `IX_WishList_CartID` ON `WishList` (`CartID`);

CREATE INDEX `IX_WishList_ContactID` ON `WishList` (`ContactID`);

CREATE INDEX `IX_WishListRecord_ItemID` ON `WishListRecord` (`ItemID`);

CREATE INDEX `IX_WishListRecord_WishListID` ON `WishListRecord` (`WishListID`);

CREATE INDEX `IX_Workflow_BusinessID` ON `Workflow` (`BusinessID`);

CREATE INDEX `IX_Workflow_WebPortalID` ON `Workflow` (`WebPortalID`);

CREATE INDEX `IX_WorkflowExecution_WorkflowID` ON `WorkflowExecution` (`WorkflowID`);

CREATE INDEX `IX_WorkflowExecution_WorkflowStageID` ON `WorkflowExecution` (`WorkflowStageID`);

CREATE INDEX `IX_WorkflowStage_ParentWorkflowStageID` ON `WorkflowStage` (`ParentWorkflowStageID`);

CREATE INDEX `IX_WorkflowStage_WorkflowID` ON `WorkflowStage` (`WorkflowID`);

CREATE INDEX `IX_WorkflowState_WorkflowExecutionID` ON `WorkflowState` (`WorkflowExecutionID`);

CREATE INDEX `IX_WorkflowState_WorkflowID` ON `WorkflowState` (`WorkflowID`);

CREATE INDEX `IX_WorkflowState_WorkflowStageID` ON `WorkflowState` (`WorkflowStageID`);

CREATE INDEX `IX_WorkOrder_BusinessID` ON `WorkOrder` (`BusinessID`);

CREATE INDEX `IX_WorkOrder_WorkOrderTypeID` ON `WorkOrder` (`WorkOrderTypeID`);

CREATE INDEX `IX_WorkOrderType_BusinessID` ON `WorkOrderType` (`BusinessID`);

CREATE INDEX `IX_Workstation_BusinessID` ON `Workstation` (`BusinessID`);

ALTER TABLE `AccessKeyPair` ADD CONSTRAINT `FK_AccessKeyPair_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`);

ALTER TABLE `AccessKeyPair` ADD CONSTRAINT `FK_AccessKeyPair_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AccessKeyPair` ADD CONSTRAINT `FK_AccessKeyPair_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `AccessKeyPair` ADD CONSTRAINT `FK_AccessKeyPair_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `Account` ADD CONSTRAINT `FK_Account_AccountGroup_AccountGroupID` FOREIGN KEY (`AccountGroupID`) REFERENCES `AccountGroup` (`ID`);

ALTER TABLE `Account` ADD CONSTRAINT `FK_Account_AccountType_AccountTypeID` FOREIGN KEY (`AccountTypeID`) REFERENCES `AccountType` (`ID`);

ALTER TABLE `Account` ADD CONSTRAINT `FK_Account_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`);

ALTER TABLE `Account` ADD CONSTRAINT `FK_Account_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `Account` ADD CONSTRAINT `FK_Account_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `Account` ADD CONSTRAINT `FK_Account_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `Account` ADD CONSTRAINT `FK_Account_ContactProfile_BankProfileID` FOREIGN KEY (`BankProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `Account` ADD CONSTRAINT `FK_Account_ContactProfile_BillingProfileID` FOREIGN KEY (`BillingProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `Account` ADD CONSTRAINT `FK_Account_Ledger_LedgerID` FOREIGN KEY (`LedgerID`) REFERENCES `Ledger` (`ID`);

ALTER TABLE `AccountGroup` ADD CONSTRAINT `FK_AccountGroup_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AccountGroup` ADD CONSTRAINT `FK_AccountGroup_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `AccountHolderLogin` ADD CONSTRAINT `FK_AccountHolderLogin_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`);

ALTER TABLE `AccountHolderLogin` ADD CONSTRAINT `FK_AccountHolderLogin_IPLookup_IPLookupID` FOREIGN KEY (`IPLookupID`) REFERENCES `IPLookup` (`ID`);

ALTER TABLE `AccountHolderSettings` ADD CONSTRAINT `FK_AccountHolderSettings_AspNetUsers_AccountHolderID` FOREIGN KEY (`AccountHolderID`) REFERENCES `AspNetUsers` (`Id`);

ALTER TABLE `AccountingEntry` ADD CONSTRAINT `FK_AccountingEntry_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AccountingEntry` ADD CONSTRAINT `FK_AccountingEntry_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `AccountingEntry` ADD CONSTRAINT `FK_AccountingEntry_ContactProfile_BankProfileID` FOREIGN KEY (`BankProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `AccountingEntry` ADD CONSTRAINT `FK_AccountingEntry_JournalEntry_JournalEntryID` FOREIGN KEY (`JournalEntryID`) REFERENCES `JournalEntry` (`ID`);

ALTER TABLE `AccountingEntry` ADD CONSTRAINT `FK_AccountingEntry_Payment_PaymentChargeback_PaymentID` FOREIGN KEY (`PaymentChargeback_PaymentID`) REFERENCES `Payment` (`ID`);

ALTER TABLE `AccountingEntry` ADD CONSTRAINT `FK_AccountingEntry_Payment_PaymentID` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`ID`);

ALTER TABLE `AccountingEntry` ADD CONSTRAINT `FK_AccountingEntry_PaymentDispute_PaymentChargeback_PaymentDisp~` FOREIGN KEY (`PaymentChargeback_PaymentDisputeID`) REFERENCES `PaymentDispute` (`ID`);

ALTER TABLE `AccountingEntry` ADD CONSTRAINT `FK_AccountingEntry_PaymentDispute_PaymentDisputeID` FOREIGN KEY (`PaymentDisputeID`) REFERENCES `PaymentDispute` (`ID`);

ALTER TABLE `AccountingEntry` ADD CONSTRAINT `FK_AccountingEntry_SupportRequest_RefundRequestID` FOREIGN KEY (`RefundRequestID`) REFERENCES `SupportRequest` (`ID`);

ALTER TABLE `AccountingEntry` ADD CONSTRAINT `FK_AccountingEntry_WalletAccount_PaymentChargeback_WalletAccoun~` FOREIGN KEY (`PaymentChargeback_WalletAccountID`) REFERENCES `WalletAccount` (`ID`);

ALTER TABLE `AccountingEntry` ADD CONSTRAINT `FK_AccountingEntry_WalletAccount_WalletAccountID` FOREIGN KEY (`WalletAccountID`) REFERENCES `WalletAccount` (`ID`);

ALTER TABLE `AccountingPeriodClosingVoucher` ADD CONSTRAINT `FK_AccountingPeriodClosingVoucher_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AccountingPeriodClosingVoucher` ADD CONSTRAINT `FK_AccountingPeriodClosingVoucher_BusinessProfileRecord_Busines~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `AccountingPeriodClosingVoucher` ADD CONSTRAINT `FK_AccountingPeriodClosingVoucher_FiscalYear_FiscalYearID` FOREIGN KEY (`FiscalYearID`) REFERENCES `FiscalYear` (`ID`);

ALTER TABLE `AccountRelation` ADD CONSTRAINT `FK_AccountRelation_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AccountRelation` ADD CONSTRAINT `FK_AccountRelation_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `AccountRelation` ADD CONSTRAINT `FK_AccountRelation_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`);

ALTER TABLE `AccountType` ADD CONSTRAINT `FK_AccountType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AccountType` ADD CONSTRAINT `FK_AccountType_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `ActivityFeed` ADD CONSTRAINT `FK_ActivityFeed_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `ActivityFeed` ADD CONSTRAINT `FK_ActivityFeed_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `ActivityFeed` ADD CONSTRAINT `FK_ActivityFeed_DealUnit_DealUnitID` FOREIGN KEY (`DealUnitID`) REFERENCES `DealUnit` (`ID`);

ALTER TABLE `ActivityFeed` ADD CONSTRAINT `FK_ActivityFeed_MarketingCampaign_MarketingCampaignID` FOREIGN KEY (`MarketingCampaignID`) REFERENCES `MarketingCampaign` (`ID`);

ALTER TABLE `ActivityFeed` ADD CONSTRAINT `FK_ActivityFeed_MarketingList_MarketingListID` FOREIGN KEY (`MarketingListID`) REFERENCES `MarketingList` (`ID`);

ALTER TABLE `ActivityFeed` ADD CONSTRAINT `FK_ActivityFeed_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`);

ALTER TABLE `ActivityRecord` ADD CONSTRAINT `FK_ActivityRecord_ActivityType_ActivityTypeID` FOREIGN KEY (`ActivityTypeID`) REFERENCES `ActivityType` (`ID`);

ALTER TABLE `ActivityRecord` ADD CONSTRAINT `FK_ActivityRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `ActivityRecord` ADD CONSTRAINT `FK_ActivityRecord_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `ActivityRecord` ADD CONSTRAINT `FK_ActivityRecord_BusinessProfileRecord_InChargeBusinessProfile~` FOREIGN KEY (`InChargeBusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `ActivityType` ADD CONSTRAINT `FK_ActivityType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `ActivityType` ADD CONSTRAINT `FK_ActivityType_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `Agreement` ADD CONSTRAINT `FK_Agreement_AgreementType_AgreementTypeID` FOREIGN KEY (`AgreementTypeID`) REFERENCES `AgreementType` (`ID`);

ALTER TABLE `Agreement` ADD CONSTRAINT `FK_Agreement_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `Agreement` ADD CONSTRAINT `FK_Agreement_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `AgreementRevision` ADD CONSTRAINT `FK_AgreementRevision_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AgreementType` ADD CONSTRAINT `FK_AgreementType_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AppliedFee` ADD CONSTRAINT `FK_AppliedFee_Payment_PaymentID` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`ID`);

ALTER TABLE `AppliedFee` ADD CONSTRAINT `FK_AppliedFee_PaymentGateway_PaymentGatewayID` FOREIGN KEY (`PaymentGatewayID`) REFERENCES `PaymentGateway` (`ID`);

ALTER TABLE `AppliedFee` ADD CONSTRAINT `FK_AppliedFee_WalletWithdraw_WalletWithdrawID` FOREIGN KEY (`WalletWithdrawID`) REFERENCES `WalletWithdraw` (`ID`);

ALTER TABLE `AppliedTaxPolicyRecord` ADD CONSTRAINT `FK_AppliedTaxPolicyRecord_BillingItemRecord_BillingItemRecordID` FOREIGN KEY (`BillingItemRecordID`) REFERENCES `BillingItemRecord` (`ID`);

ALTER TABLE `AppliedTaxPolicyRecord` ADD CONSTRAINT `FK_AppliedTaxPolicyRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AppliedTaxPolicyRecord` ADD CONSTRAINT `FK_AppliedTaxPolicyRecord_BusinessProfileRecord_BusinessProfile~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `AppliedTaxPolicyRecord` ADD CONSTRAINT `FK_AppliedTaxPolicyRecord_Invoice_InvoiceID` FOREIGN KEY (`InvoiceID`) REFERENCES `Invoice` (`ID`);

ALTER TABLE `AppliedTaxPolicyRecord` ADD CONSTRAINT `FK_AppliedTaxPolicyRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`);

ALTER TABLE `AppliedTaxPolicyRecord` ADD CONSTRAINT `FK_AppliedTaxPolicyRecord_Payment_PaymentID` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`ID`);

ALTER TABLE `AppliedTaxPolicyRecord` ADD CONSTRAINT `FK_AppliedTaxPolicyRecord_Policy_TaxPolicyID` FOREIGN KEY (`TaxPolicyID`) REFERENCES `Policy` (`ID`);

ALTER TABLE `AppraisalSession` ADD CONSTRAINT `FK_AppraisalSession_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AppraisalSession` ADD CONSTRAINT `FK_AppraisalSession_BusinessProcess_AppraisalWorkflowID` FOREIGN KEY (`AppraisalWorkflowID`) REFERENCES `BusinessProcess` (`ID`);

ALTER TABLE `AppraisalSession` ADD CONSTRAINT `FK_AppraisalSession_BusinessProcessStage_AppraisalStageID` FOREIGN KEY (`AppraisalStageID`) REFERENCES `BusinessProcessStage` (`ID`);

ALTER TABLE `AppraisalSession` ADD CONSTRAINT `FK_AppraisalSession_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `AppraisalSession` ADD CONSTRAINT `FK_AppraisalSession_ContactProfile_EmployeeProfileID` FOREIGN KEY (`EmployeeProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `AspNetUserClaims` ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`);

ALTER TABLE `AspNetUserLogins` ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`);

ALTER TABLE `AspNetUserRoles` ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`);

ALTER TABLE `AspNetUsers` ADD CONSTRAINT `FK_AspNetUsers_Business_SelectedBusinessID` FOREIGN KEY (`SelectedBusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `Asset` ADD CONSTRAINT `FK_Asset_AssetCategory_AssetCategoryID` FOREIGN KEY (`AssetCategoryID`) REFERENCES `AssetCategory` (`ID`);

ALTER TABLE `Asset` ADD CONSTRAINT `FK_Asset_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `Asset` ADD CONSTRAINT `FK_Asset_BusinessDepartment_OrganizationDepartmentID` FOREIGN KEY (`OrganizationDepartmentID`) REFERENCES `BusinessDepartment` (`ID`);

ALTER TABLE `Asset` ADD CONSTRAINT `FK_Asset_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `Asset` ADD CONSTRAINT `FK_Asset_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `Asset` ADD CONSTRAINT `FK_Asset_FinancialBook_FinancialBookID` FOREIGN KEY (`FinancialBookID`) REFERENCES `FinancialBook` (`ID`);

ALTER TABLE `Asset` ADD CONSTRAINT `FK_Asset_Invoice_PurchaseInvoiceID` FOREIGN KEY (`PurchaseInvoiceID`) REFERENCES `Invoice` (`ID`);

ALTER TABLE `Asset` ADD CONSTRAINT `FK_Asset_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`);

ALTER TABLE `Asset` ADD CONSTRAINT `FK_Asset_Location_AssetLocationID` FOREIGN KEY (`AssetLocationID`) REFERENCES `Location` (`ID`);

ALTER TABLE `Asset` ADD CONSTRAINT `FK_Asset_Receipt_PurchaseReceiptID` FOREIGN KEY (`PurchaseReceiptID`) REFERENCES `Receipt` (`ID`);

ALTER TABLE `AssetCategory` ADD CONSTRAINT `FK_AssetCategory_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AssetDepreciationRecord` ADD CONSTRAINT `FK_AssetDepreciationRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AssetDepreciationRecord` ADD CONSTRAINT `FK_AssetDepreciationRecord_FinancialBook_FinancialBookID` FOREIGN KEY (`FinancialBookID`) REFERENCES `FinancialBook` (`ID`);

ALTER TABLE `AssetTransfer` ADD CONSTRAINT `FK_AssetTransfer_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AssetTransfer` ADD CONSTRAINT `FK_AssetTransfer_BusinessDepartment_DestinationDepartmentID` FOREIGN KEY (`DestinationDepartmentID`) REFERENCES `BusinessDepartment` (`ID`);

ALTER TABLE `AssetTransfer` ADD CONSTRAINT `FK_AssetTransfer_BusinessDepartment_SourceDepartmentID` FOREIGN KEY (`SourceDepartmentID`) REFERENCES `BusinessDepartment` (`ID`);

ALTER TABLE `AssetTransfer` ADD CONSTRAINT `FK_AssetTransfer_Contact_DestinationContactID` FOREIGN KEY (`DestinationContactID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `AssetTransfer` ADD CONSTRAINT `FK_AssetTransfer_Contact_SourceContactID` FOREIGN KEY (`SourceContactID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `AssetTransfer` ADD CONSTRAINT `FK_AssetTransfer_Location_DestinationLocationID` FOREIGN KEY (`DestinationLocationID`) REFERENCES `Location` (`ID`);

ALTER TABLE `AssetTransfer` ADD CONSTRAINT `FK_AssetTransfer_Location_SourceLocationID` FOREIGN KEY (`SourceLocationID`) REFERENCES `Location` (`ID`);

ALTER TABLE `AssetValueAmend` ADD CONSTRAINT `FK_AssetValueAmend_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `AssetValueAmend` ADD CONSTRAINT `FK_AssetValueAmend_FinancialBook_FinancialBookID` FOREIGN KEY (`FinancialBookID`) REFERENCES `FinancialBook` (`ID`);

ALTER TABLE `BankGuarantee` ADD CONSTRAINT `FK_BankGuarantee_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `BankGuarantee` ADD CONSTRAINT `FK_BankGuarantee_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `BankGuarantee` ADD CONSTRAINT `FK_BankGuarantee_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `BankGuarantee` ADD CONSTRAINT `FK_BankGuarantee_ContactProfile_BankProfileID` FOREIGN KEY (`BankProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `BankGuarantee` ADD CONSTRAINT `FK_BankGuarantee_Order_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`ID`);

ALTER TABLE `BankGuarantee` ADD CONSTRAINT `FK_BankGuarantee_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`);

ALTER TABLE `BillingCoupon` ADD CONSTRAINT `FK_BillingCoupon_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `BillingCoupon` ADD CONSTRAINT `FK_BillingCoupon_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_BusinessProfileRecord_BusinessProfileRecor~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Cart_CartID` FOREIGN KEY (`CartID`) REFERENCES `Cart` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_DealUnit_DealUnitID` FOREIGN KEY (`DealUnitID`) REFERENCES `DealUnit` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Invoice_InvoiceID` FOREIGN KEY (`InvoiceID`) REFERENCES `Invoice` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Location_LocationID` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Order_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Order_OrderItemRecord_OrderID` FOREIGN KEY (`OrderItemRecord_OrderID`) REFERENCES `Order` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Order_ParentOrderID` FOREIGN KEY (`ParentOrderID`) REFERENCES `Order` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Policy_ItemShipmentPolicyID` FOREIGN KEY (`ItemShipmentPolicyID`) REFERENCES `Policy` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Policy_RefundPolicyID` FOREIGN KEY (`RefundPolicyID`) REFERENCES `Policy` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Policy_ReturnPolicyID` FOREIGN KEY (`ReturnPolicyID`) REFERENCES `Policy` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Policy_WarrantyPolicyID` FOREIGN KEY (`WarrantyPolicyID`) REFERENCES `Policy` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_PriceListItem_ItemPriceID` FOREIGN KEY (`ItemPriceID`) REFERENCES `PriceListItem` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_PriceListItem_PriceListItemID` FOREIGN KEY (`PriceListItemID`) REFERENCES `PriceListItem` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Quote_QuoteID` FOREIGN KEY (`QuoteID`) REFERENCES `Quote` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_Unit_UnitID` FOREIGN KEY (`UnitID`) REFERENCES `Unit` (`ID`);

ALTER TABLE `BillingItemRecord` ADD CONSTRAINT `FK_BillingItemRecord_UnitGroup_UnitGroupID` FOREIGN KEY (`UnitGroupID`) REFERENCES `UnitGroup` (`ID`);

ALTER TABLE `Blockchain` ADD CONSTRAINT `FK_Blockchain_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `Blockchain` ADD CONSTRAINT `FK_Blockchain_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `BlockchainBlock` ADD CONSTRAINT `FK_BlockchainBlock_Item_NonFungibleTokenID` FOREIGN KEY (`NonFungibleTokenID`) REFERENCES `Item` (`ID`);

ALTER TABLE `BlockchainBlock` ADD CONSTRAINT `FK_BlockchainBlock_WalletAccount_WalletAccountID` FOREIGN KEY (`WalletAccountID`) REFERENCES `WalletAccount` (`ID`);

ALTER TABLE `BlockRecord` ADD CONSTRAINT `FK_BlockRecord_SocialProfile_BlockedSocialProfileID` FOREIGN KEY (`BlockedSocialProfileID`) REFERENCES `SocialProfile` (`ID`);

ALTER TABLE `BlockRecord` ADD CONSTRAINT `FK_BlockRecord_SocialProfile_BlockerSocialProfileID` FOREIGN KEY (`BlockerSocialProfileID`) REFERENCES `SocialProfile` (`ID`);

ALTER TABLE `BrandRecord` ADD CONSTRAINT `FK_BrandRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`);

ALTER TABLE `BrandRecord` ADD CONSTRAINT `FK_BrandRecord_ItemBrand_BrandID` FOREIGN KEY (`BrandID`) REFERENCES `ItemBrand` (`ID`);

ALTER TABLE `Budget` ADD CONSTRAINT `FK_Budget_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `Budget` ADD CONSTRAINT `FK_Budget_CostCentre_CostCentreID` FOREIGN KEY (`CostCentreID`) REFERENCES `CostCentre` (`ID`);

ALTER TABLE `Budget` ADD CONSTRAINT `FK_Budget_FiscalYear_FiscalYearID` FOREIGN KEY (`FiscalYearID`) REFERENCES `FiscalYear` (`ID`);

ALTER TABLE `Budget` ADD CONSTRAINT `FK_Budget_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`);

ALTER TABLE `Business` ADD CONSTRAINT `FK_Business_BusinessIndustry_BusinessIndustryID` FOREIGN KEY (`BusinessIndustryID`) REFERENCES `BusinessIndustry` (`ID`);

ALTER TABLE `BusinessDepartment` ADD CONSTRAINT `FK_BusinessDepartment_ContactProfile_OrganizationProfileID` FOREIGN KEY (`OrganizationProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `BusinessSecurityLog` ADD CONSTRAINT `FK_BusinessSecurityLog_ContactProfile_SigningProfileID` FOREIGN KEY (`SigningProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `BusinessSecurityLog` ADD CONSTRAINT `FK_BusinessSecurityLog_SigningCertificate_SigningCertificateID` FOREIGN KEY (`SigningCertificateID`) REFERENCES `SigningCertificate` (`ID`);

ALTER TABLE `BusinessTeam` ADD CONSTRAINT `FK_BusinessTeam_BusinessUnit_BusinessUnitID` FOREIGN KEY (`BusinessUnitID`) REFERENCES `BusinessUnit` (`ID`);

ALTER TABLE `BusinessTeam` ADD CONSTRAINT `FK_BusinessTeam_ContactProfile_OrganizationProfileID` FOREIGN KEY (`OrganizationProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `BusinessTeamRecord` ADD CONSTRAINT `FK_BusinessTeamRecord_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `BusinessTeamRecord` ADD CONSTRAINT `FK_BusinessTeamRecord_ContactProfile_EmployeeProfileID` FOREIGN KEY (`EmployeeProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `BusinessTeamRecord` ADD CONSTRAINT `FK_BusinessTeamRecord_Project_ProjectID` FOREIGN KEY (`ProjectID`) REFERENCES `Project` (`ID`);

ALTER TABLE `BusinessUnit` ADD CONSTRAINT `FK_BusinessUnit_ContactProfile_OrganizationProfileID` FOREIGN KEY (`OrganizationProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `Cart` ADD CONSTRAINT `FK_Cart_Contact_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `Cart` ADD CONSTRAINT `FK_Cart_Location_LocationID` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`ID`);

ALTER TABLE `CartRecord` ADD CONSTRAINT `FK_CartRecord_Item_ItemCartRecord_ItemID` FOREIGN KEY (`ItemCartRecord_ItemID`) REFERENCES `Item` (`ID`);

ALTER TABLE `CartRecord` ADD CONSTRAINT `FK_CartRecord_Item_ItemID` FOREIGN KEY (`ItemID`) REFERENCES `Item` (`ID`);

ALTER TABLE `CartRecord` ADD CONSTRAINT `FK_CartRecord_Item_RecentlyViewedItemRecord_ItemID` FOREIGN KEY (`RecentlyViewedItemRecord_ItemID`) REFERENCES `Item` (`ID`);

ALTER TABLE `CartRecord` ADD CONSTRAINT `FK_CartRecord_Location_ShippingAddressID` FOREIGN KEY (`ShippingAddressID`) REFERENCES `Location` (`ID`);

ALTER TABLE `CognitiveAgentConversation` ADD CONSTRAINT `FK_CognitiveAgentConversation_Contact_IndividualID` FOREIGN KEY (`IndividualID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `CognitiveAgentConversation` ADD CONSTRAINT `FK_CognitiveAgentConversation_Contact_OrganizationID` FOREIGN KEY (`OrganizationID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `Commission` ADD CONSTRAINT `FK_Commission_Contact_EmmisorContactID` FOREIGN KEY (`EmmisorContactID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `Commission` ADD CONSTRAINT `FK_Commission_Contact_ReceptorContactID` FOREIGN KEY (`ReceptorContactID`) REFERENCES `Contact` (`ID`);

ALTER TABLE `Commission` ADD CONSTRAINT `FK_Commission_Payment_PaymentID` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`ID`);

ALTER TABLE `Commission` ADD CONSTRAINT `FK_Commission_Salary_SalaryID` FOREIGN KEY (`SalaryID`) REFERENCES `Salary` (`ID`);

ALTER TABLE `Commission` ADD CONSTRAINT `FK_Commission_WalletAccount_EmmisorWalletAccountID` FOREIGN KEY (`EmmisorWalletAccountID`) REFERENCES `WalletAccount` (`ID`);

ALTER TABLE `Commission` ADD CONSTRAINT `FK_Commission_WalletAccount_ReceptorWalletAccountID` FOREIGN KEY (`ReceptorWalletAccountID`) REFERENCES `WalletAccount` (`ID`);

ALTER TABLE `Contact` ADD CONSTRAINT `FK_Contact_ContactProfile_PartnerProfileID` FOREIGN KEY (`PartnerProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `ContactProfile` ADD CONSTRAINT `FK_ContactProfile_WalletAccount_WalletAccountID` FOREIGN KEY (`WalletAccountID`) REFERENCES `WalletAccount` (`ID`);

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20220518110254_V_1_5_0', '6.0.5');

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS `POMELO_BEFORE_DROP_PRIMARY_KEY`;
DELIMITER //
CREATE PROCEDURE `POMELO_BEFORE_DROP_PRIMARY_KEY`(IN `SCHEMA_NAME_ARGUMENT` VARCHAR(255), IN `TABLE_NAME_ARGUMENT` VARCHAR(255))
BEGIN
	DECLARE HAS_AUTO_INCREMENT_ID TINYINT(1);
	DECLARE PRIMARY_KEY_COLUMN_NAME VARCHAR(255);
	DECLARE PRIMARY_KEY_TYPE VARCHAR(255);
	DECLARE SQL_EXP VARCHAR(1000);
	SELECT COUNT(*)
		INTO HAS_AUTO_INCREMENT_ID
		FROM `information_schema`.`COLUMNS`
		WHERE `TABLE_SCHEMA` = (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA()))
			AND `TABLE_NAME` = TABLE_NAME_ARGUMENT
			AND `Extra` = 'auto_increment'
			AND `COLUMN_KEY` = 'PRI'
			LIMIT 1;
	IF HAS_AUTO_INCREMENT_ID THEN
		SELECT `COLUMN_TYPE`
			INTO PRIMARY_KEY_TYPE
			FROM `information_schema`.`COLUMNS`
			WHERE `TABLE_SCHEMA` = (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA()))
				AND `TABLE_NAME` = TABLE_NAME_ARGUMENT
				AND `COLUMN_KEY` = 'PRI'
			LIMIT 1;
		SELECT `COLUMN_NAME`
			INTO PRIMARY_KEY_COLUMN_NAME
			FROM `information_schema`.`COLUMNS`
			WHERE `TABLE_SCHEMA` = (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA()))
				AND `TABLE_NAME` = TABLE_NAME_ARGUMENT
				AND `COLUMN_KEY` = 'PRI'
			LIMIT 1;
		SET SQL_EXP = CONCAT('ALTER TABLE `', (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA())), '`.`', TABLE_NAME_ARGUMENT, '` MODIFY COLUMN `', PRIMARY_KEY_COLUMN_NAME, '` ', PRIMARY_KEY_TYPE, ' NOT NULL;');
		SET @SQL_EXP = SQL_EXP;
		PREPARE SQL_EXP_EXECUTE FROM @SQL_EXP;
		EXECUTE SQL_EXP_EXECUTE;
		DEALLOCATE PREPARE SQL_EXP_EXECUTE;
	END IF;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS `POMELO_AFTER_ADD_PRIMARY_KEY`;
DELIMITER //
CREATE PROCEDURE `POMELO_AFTER_ADD_PRIMARY_KEY`(IN `SCHEMA_NAME_ARGUMENT` VARCHAR(255), IN `TABLE_NAME_ARGUMENT` VARCHAR(255), IN `COLUMN_NAME_ARGUMENT` VARCHAR(255))
BEGIN
	DECLARE HAS_AUTO_INCREMENT_ID INT(11);
	DECLARE PRIMARY_KEY_COLUMN_NAME VARCHAR(255);
	DECLARE PRIMARY_KEY_TYPE VARCHAR(255);
	DECLARE SQL_EXP VARCHAR(1000);
	SELECT COUNT(*)
		INTO HAS_AUTO_INCREMENT_ID
		FROM `information_schema`.`COLUMNS`
		WHERE `TABLE_SCHEMA` = (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA()))
			AND `TABLE_NAME` = TABLE_NAME_ARGUMENT
			AND `COLUMN_NAME` = COLUMN_NAME_ARGUMENT
			AND `COLUMN_TYPE` LIKE '%int%'
			AND `COLUMN_KEY` = 'PRI';
	IF HAS_AUTO_INCREMENT_ID THEN
		SELECT `COLUMN_TYPE`
			INTO PRIMARY_KEY_TYPE
			FROM `information_schema`.`COLUMNS`
			WHERE `TABLE_SCHEMA` = (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA()))
				AND `TABLE_NAME` = TABLE_NAME_ARGUMENT
				AND `COLUMN_NAME` = COLUMN_NAME_ARGUMENT
				AND `COLUMN_TYPE` LIKE '%int%'
				AND `COLUMN_KEY` = 'PRI';
		SELECT `COLUMN_NAME`
			INTO PRIMARY_KEY_COLUMN_NAME
			FROM `information_schema`.`COLUMNS`
			WHERE `TABLE_SCHEMA` = (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA()))
				AND `TABLE_NAME` = TABLE_NAME_ARGUMENT
				AND `COLUMN_NAME` = COLUMN_NAME_ARGUMENT
				AND `COLUMN_TYPE` LIKE '%int%'
				AND `COLUMN_KEY` = 'PRI';
		SET SQL_EXP = CONCAT('ALTER TABLE `', (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA())), '`.`', TABLE_NAME_ARGUMENT, '` MODIFY COLUMN `', PRIMARY_KEY_COLUMN_NAME, '` ', PRIMARY_KEY_TYPE, ' NOT NULL AUTO_INCREMENT;');
		SET @SQL_EXP = SQL_EXP;
		PREPARE SQL_EXP_EXECUTE FROM @SQL_EXP;
		EXECUTE SQL_EXP_EXECUTE;
		DEALLOCATE PREPARE SQL_EXP_EXECUTE;
	END IF;
END //
DELIMITER ;

ALTER TABLE `ProfessionalDegree` DROP FOREIGN KEY `FK_ProfessionalDegree_Business_BusinessID`;

ALTER TABLE `ProfessionalDegree` DROP FOREIGN KEY `FK_ProfessionalDegree_BusinessProfileRecord_BusinessProfileReco~`;

ALTER TABLE `ProfessionalDegree` DROP FOREIGN KEY `FK_ProfessionalDegree_Curriculum_CurriculumID`;

ALTER TABLE `ProfessionalDegree` DROP FOREIGN KEY `FK_ProfessionalDegree_ProficiencyRatingModel_ProficiencyRatingM~`;

ALTER TABLE `ProfessionalDegree` DROP FOREIGN KEY `FK_ProfessionalDegree_ProficiencyRatingValue_ProficiencyRatingV~`;

DROP TABLE `CourseCertificate`;

DROP TABLE `IndividualSkillRecord`;

DROP TABLE `InstitutionDiploma`;

DROP TABLE `AcademicInstitution`;

CALL POMELO_BEFORE_DROP_PRIMARY_KEY(NULL, 'ProfessionalDegree');
ALTER TABLE `ProfessionalDegree` DROP PRIMARY KEY;

ALTER TABLE `FileUpload` DROP COLUMN `Discriminator`;

ALTER TABLE `CurriculumSkill` DROP COLUMN `Discriminator`;

ALTER TABLE `ProfessionalDegree` RENAME `CurriculumRecord`;

ALTER TABLE `JobOffer` RENAME COLUMN `JobTitle` TO `Title`;

ALTER TABLE `JobOffer` RENAME COLUMN `JobOfferDescription` TO `Description`;

ALTER TABLE `BillingItemRecord` RENAME COLUMN `Discriminator` TO `Type`;

ALTER TABLE `CurriculumRecord` RENAME COLUMN `EducationInstitutionName` TO `ProfessionalDegree_Title`;

ALTER TABLE `CurriculumRecord` RENAME INDEX `IX_ProfessionalDegree_ProficiencyRatingValueID` TO `IX_CurriculumRecord_ProficiencyRatingValueID`;

ALTER TABLE `CurriculumRecord` RENAME INDEX `IX_ProfessionalDegree_ProficiencyRatingModelID` TO `IX_CurriculumRecord_ProficiencyRatingModelID`;

ALTER TABLE `CurriculumRecord` RENAME INDEX `IX_ProfessionalDegree_CurriculumID` TO `IX_CurriculumRecord_CurriculumID`;

ALTER TABLE `CurriculumRecord` RENAME INDEX `IX_ProfessionalDegree_BusinessProfileRecordID` TO `IX_CurriculumRecord_BusinessProfileRecordID`;

ALTER TABLE `CurriculumRecord` RENAME INDEX `IX_ProfessionalDegree_BusinessID` TO `IX_CurriculumRecord_BusinessID`;

ALTER TABLE `RequiredSkillRecord` ADD `CurriculumSkillID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `RequiredSkillRecord` ADD `ExperienceInYears` int NOT NULL DEFAULT 0;

ALTER TABLE `RequiredSkillRecord` ADD `Priority` decimal(65,30) NOT NULL DEFAULT 0.0;

ALTER TABLE `RequiredSkillRecord` ADD `RequiredSkillRecordType` int NOT NULL DEFAULT 0;

ALTER TABLE `RequiredSkillRecord` ADD `Timestamp` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `ProjectResourceSkillRecord` ADD `Timestamp` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `JobOffer` ADD `CityID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `JobOffer` ADD `CountryStateID` varchar(255) CHARACTER SET utf8mb4 NULL;

UPDATE `FileUpload` SET `Type` = ''
WHERE `Type` IS NULL;
SELECT ROW_COUNT();


ALTER TABLE `FileUpload` MODIFY COLUMN `Type` longtext CHARACTER SET utf8mb4 NOT NULL;

ALTER TABLE `FileUpload` ADD `CurriculumRecordID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `EmployeeDegree` ADD `Timestamp` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `CurriculumSkill` MODIFY COLUMN `Type` longtext CHARACTER SET utf8mb4 NOT NULL;

ALTER TABLE `CurriculumSkill` ADD `CurriculumSkillType` int NOT NULL DEFAULT 0;

ALTER TABLE `CurriculumSkill` ADD `Timestamp` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

UPDATE `CurriculumRecord` SET `Type` = ''
WHERE `Type` IS NULL;
SELECT ROW_COUNT();


ALTER TABLE `CurriculumRecord` MODIFY COLUMN `Type` longtext CHARACTER SET utf8mb4 NOT NULL;

ALTER TABLE `CurriculumRecord` MODIFY COLUMN `Date` datetime(6) NULL;

ALTER TABLE `CurriculumRecord` ADD `AcademicInstitutionProfileID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `CurriculumSkillID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `ExperienceInYears` int NULL;

ALTER TABLE `CurriculumRecord` ADD `InstitutionDiploma_AcademicInstitutionProfileID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `InstitutionDiploma_Date` datetime(6) NULL;

ALTER TABLE `CurriculumRecord` ADD `JobOfferID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `Priority` decimal(65,30) NULL;

ALTER TABLE `CurriculumRecord` ADD `ProfessionalDegree_AcademicInstitutionProfileID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `ProfessionalDegree_Date` datetime(6) NULL;

ALTER TABLE `CurriculumRecord` ADD `ProfessionalDegree_KnowledgeField` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `Validated` tinyint(1) NOT NULL DEFAULT FALSE;

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `PK_CurriculumRecord` PRIMARY KEY (`ID`);
CALL POMELO_AFTER_ADD_PRIMARY_KEY(NULL, 'CurriculumRecord', 'ID');

CREATE INDEX `IX_RequiredSkillRecord_CurriculumSkillID` ON `RequiredSkillRecord` (`CurriculumSkillID`);

CREATE INDEX `IX_JobOffer_CityID` ON `JobOffer` (`CityID`);

CREATE INDEX `IX_JobOffer_CountryStateID` ON `JobOffer` (`CountryStateID`);

CREATE INDEX `IX_FileUpload_CurriculumRecordID` ON `FileUpload` (`CurriculumRecordID`);

CREATE INDEX `IX_CurriculumRecord_AcademicInstitutionProfileID` ON `CurriculumRecord` (`AcademicInstitutionProfileID`);

CREATE INDEX `IX_CurriculumRecord_CurriculumSkillID` ON `CurriculumRecord` (`CurriculumSkillID`);

CREATE INDEX `IX_CurriculumRecord_InstitutionDiploma_AcademicInstitutionProfi~` ON `CurriculumRecord` (`InstitutionDiploma_AcademicInstitutionProfileID`);

CREATE INDEX `IX_CurriculumRecord_JobOfferID` ON `CurriculumRecord` (`JobOfferID`);

CREATE INDEX `IX_CurriculumRecord_ProfessionalDegree_AcademicInstitutionProfi~` ON `CurriculumRecord` (`ProfessionalDegree_AcademicInstitutionProfileID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_BusinessProfileRecord_BusinessProfileRecord~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_ContactProfile_AcademicInstitutionProfileID` FOREIGN KEY (`AcademicInstitutionProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_ContactProfile_InstitutionDiploma_AcademicI~` FOREIGN KEY (`InstitutionDiploma_AcademicInstitutionProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_ContactProfile_ProfessionalDegree_AcademicI~` FOREIGN KEY (`ProfessionalDegree_AcademicInstitutionProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_Curriculum_CurriculumID` FOREIGN KEY (`CurriculumID`) REFERENCES `Curriculum` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_CurriculumSkill_CurriculumSkillID` FOREIGN KEY (`CurriculumSkillID`) REFERENCES `CurriculumSkill` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_JobOffer_JobOfferID` FOREIGN KEY (`JobOfferID`) REFERENCES `JobOffer` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_ProficiencyRatingModel_ProficiencyRatingMod~` FOREIGN KEY (`ProficiencyRatingModelID`) REFERENCES `ProficiencyRatingModel` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_ProficiencyRatingValue_ProficiencyRatingVal~` FOREIGN KEY (`ProficiencyRatingValueID`) REFERENCES `ProficiencyRatingValue` (`ID`);

ALTER TABLE `FileUpload` ADD CONSTRAINT `FK_FileUpload_CurriculumRecord_CurriculumRecordID` FOREIGN KEY (`CurriculumRecordID`) REFERENCES `CurriculumRecord` (`ID`);

ALTER TABLE `JobOffer` ADD CONSTRAINT `FK_JobOffer_City_CityID` FOREIGN KEY (`CityID`) REFERENCES `City` (`ID`);

ALTER TABLE `JobOffer` ADD CONSTRAINT `FK_JobOffer_CountryState_CountryStateID` FOREIGN KEY (`CountryStateID`) REFERENCES `CountryState` (`ID`);

ALTER TABLE `RequiredSkillRecord` ADD CONSTRAINT `FK_RequiredSkillRecord_CurriculumSkill_CurriculumSkillID` FOREIGN KEY (`CurriculumSkillID`) REFERENCES `CurriculumSkill` (`ID`);

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20220523235837_V_1_5_6', '6.0.5');

DROP PROCEDURE `POMELO_BEFORE_DROP_PRIMARY_KEY`;

DROP PROCEDURE `POMELO_AFTER_ADD_PRIMARY_KEY`;

COMMIT;

START TRANSACTION;

ALTER TABLE `JobOffer` ADD `Benefits` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `JobOffer` ADD `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `JobOffer` ADD `ExpectedHireDate` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `JobOffer` ADD `MaxSalaryAmount` decimal(65,30) NOT NULL DEFAULT 0.0;

ALTER TABLE `JobOffer` ADD `MinSalaryAmount` decimal(65,30) NOT NULL DEFAULT 0.0;

CREATE INDEX `IX_JobOffer_CurrencyID` ON `JobOffer` (`CurrencyID`);

ALTER TABLE `JobOffer` ADD CONSTRAINT `FK_JobOffer_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`);

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20220525021839_V_1_5_8', '6.0.5');

COMMIT;

START TRANSACTION;

ALTER TABLE `CurriculumRecord` RENAME COLUMN `ProfessionalDegree_Title` TO `Recommendation`;

ALTER TABLE `CurriculumRecord` RENAME COLUMN `ProfessionalDegree_Date` TO `ExperienceTo`;

ALTER TABLE `CurriculumRecord` RENAME COLUMN `InstitutionDiploma_Date` TO `ExperienceFrom`;

ALTER TABLE `JobOffer` ADD `ViewsCount` int NOT NULL DEFAULT 0;

ALTER TABLE `JobField` ADD `Description` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` MODIFY COLUMN `Priority` decimal(65,30) NOT NULL DEFAULT 0.0;

ALTER TABLE `CurriculumRecord` MODIFY COLUMN `Date` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `CurriculumRecord` ADD `AwardedDate` datetime(6) NULL;

ALTER TABLE `CurriculumRecord` ADD `CountryLanguageID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `CurriculumExperienceID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `CurriculumLanguageProficiency` int NULL;

ALTER TABLE `CurriculumRecord` ADD `Description` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `EmployerProfileID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `Featured` tinyint(1) NOT NULL DEFAULT FALSE;

ALTER TABLE `CurriculumRecord` ADD `IndividualSkillProficiency` int NULL;

ALTER TABLE `CurriculumRecord` ADD `InstitutionName` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `IsCurrentOccupation` tinyint(1) NULL;

ALTER TABLE `CurriculumRecord` ADD `OrganizationName` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `ProficiencyPercentage` double NULL;

ALTER TABLE `CurriculumRecord` ADD `ProjectAccomplishments` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `ProjectGoals` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `ProjectResponsibilities` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `RelationshipType` int NULL;

ALTER TABLE `CurriculumRecord` ADD `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Curriculum` ADD `CoverLetter` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `BusinessIndustryID` varchar(255) CHARACTER SET utf8mb4 NULL;

CREATE TABLE `Gig` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Type` longtext CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `EmployerProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `MinBudget` decimal(65,30) NOT NULL,
    `MaxBudget` decimal(65,30) NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CountryStateID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `CityID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Gig` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Gig_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Gig_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_Gig_City_CityID` FOREIGN KEY (`CityID`) REFERENCES `City` (`ID`),
    CONSTRAINT `FK_Gig_ContactProfile_EmployerProfileID` FOREIGN KEY (`EmployerProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_Gig_Country_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`ID`),
    CONSTRAINT `FK_Gig_CountryState_CountryStateID` FOREIGN KEY (`CountryStateID`) REFERENCES `CountryState` (`ID`),
    CONSTRAINT `FK_Gig_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `GigApplication` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `AcceptedTimestamp` datetime(6) NULL,
    `Accepted` tinyint(1) NOT NULL,
    `GigID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `Proposal` longtext CHARACTER SET utf8mb4 NULL,
    `Cost` decimal(65,30) NOT NULL,
    `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `JobApplicantProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_GigApplication` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_GigApplication_ContactProfile_JobApplicantProfileID` FOREIGN KEY (`JobApplicantProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_GigApplication_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`),
    CONSTRAINT `FK_GigApplication_Gig_GigID` FOREIGN KEY (`GigID`) REFERENCES `Gig` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE INDEX `IX_CurriculumRecord_CountryLanguageID` ON `CurriculumRecord` (`CountryLanguageID`);

CREATE INDEX `IX_CurriculumRecord_CurriculumExperienceID` ON `CurriculumRecord` (`CurriculumExperienceID`);

CREATE INDEX `IX_CurriculumRecord_EmployerProfileID` ON `CurriculumRecord` (`EmployerProfileID`);

CREATE INDEX `IX_CurriculumRecord_SocialProfileID` ON `CurriculumRecord` (`SocialProfileID`);

CREATE INDEX `IX_Contact_BusinessIndustryID` ON `Contact` (`BusinessIndustryID`);

CREATE INDEX `IX_Gig_BusinessID` ON `Gig` (`BusinessID`);

CREATE INDEX `IX_Gig_BusinessProfileRecordID` ON `Gig` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Gig_CityID` ON `Gig` (`CityID`);

CREATE INDEX `IX_Gig_CountryID` ON `Gig` (`CountryID`);

CREATE INDEX `IX_Gig_CountryStateID` ON `Gig` (`CountryStateID`);

CREATE INDEX `IX_Gig_CurrencyID` ON `Gig` (`CurrencyID`);

CREATE INDEX `IX_Gig_EmployerProfileID` ON `Gig` (`EmployerProfileID`);

CREATE INDEX `IX_GigApplication_CurrencyID` ON `GigApplication` (`CurrencyID`);

CREATE INDEX `IX_GigApplication_GigID` ON `GigApplication` (`GigID`);

CREATE INDEX `IX_GigApplication_JobApplicantProfileID` ON `GigApplication` (`JobApplicantProfileID`);

ALTER TABLE `Contact` ADD CONSTRAINT `FK_Contact_BusinessIndustry_BusinessIndustryID` FOREIGN KEY (`BusinessIndustryID`) REFERENCES `BusinessIndustry` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_ContactProfile_EmployerProfileID` FOREIGN KEY (`EmployerProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_CountryLanguage_CountryLanguageID` FOREIGN KEY (`CountryLanguageID`) REFERENCES `CountryLanguage` (`Iso639_1`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_CurriculumRecord_CurriculumExperienceID` FOREIGN KEY (`CurriculumExperienceID`) REFERENCES `CurriculumRecord` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`);

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20220528230243_V_1_6_1', '6.0.5');

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS `POMELO_BEFORE_DROP_PRIMARY_KEY`;
DELIMITER //
CREATE PROCEDURE `POMELO_BEFORE_DROP_PRIMARY_KEY`(IN `SCHEMA_NAME_ARGUMENT` VARCHAR(255), IN `TABLE_NAME_ARGUMENT` VARCHAR(255))
BEGIN
	DECLARE HAS_AUTO_INCREMENT_ID TINYINT(1);
	DECLARE PRIMARY_KEY_COLUMN_NAME VARCHAR(255);
	DECLARE PRIMARY_KEY_TYPE VARCHAR(255);
	DECLARE SQL_EXP VARCHAR(1000);
	SELECT COUNT(*)
		INTO HAS_AUTO_INCREMENT_ID
		FROM `information_schema`.`COLUMNS`
		WHERE `TABLE_SCHEMA` = (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA()))
			AND `TABLE_NAME` = TABLE_NAME_ARGUMENT
			AND `Extra` = 'auto_increment'
			AND `COLUMN_KEY` = 'PRI'
			LIMIT 1;
	IF HAS_AUTO_INCREMENT_ID THEN
		SELECT `COLUMN_TYPE`
			INTO PRIMARY_KEY_TYPE
			FROM `information_schema`.`COLUMNS`
			WHERE `TABLE_SCHEMA` = (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA()))
				AND `TABLE_NAME` = TABLE_NAME_ARGUMENT
				AND `COLUMN_KEY` = 'PRI'
			LIMIT 1;
		SELECT `COLUMN_NAME`
			INTO PRIMARY_KEY_COLUMN_NAME
			FROM `information_schema`.`COLUMNS`
			WHERE `TABLE_SCHEMA` = (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA()))
				AND `TABLE_NAME` = TABLE_NAME_ARGUMENT
				AND `COLUMN_KEY` = 'PRI'
			LIMIT 1;
		SET SQL_EXP = CONCAT('ALTER TABLE `', (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA())), '`.`', TABLE_NAME_ARGUMENT, '` MODIFY COLUMN `', PRIMARY_KEY_COLUMN_NAME, '` ', PRIMARY_KEY_TYPE, ' NOT NULL;');
		SET @SQL_EXP = SQL_EXP;
		PREPARE SQL_EXP_EXECUTE FROM @SQL_EXP;
		EXECUTE SQL_EXP_EXECUTE;
		DEALLOCATE PREPARE SQL_EXP_EXECUTE;
	END IF;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS `POMELO_AFTER_ADD_PRIMARY_KEY`;
DELIMITER //
CREATE PROCEDURE `POMELO_AFTER_ADD_PRIMARY_KEY`(IN `SCHEMA_NAME_ARGUMENT` VARCHAR(255), IN `TABLE_NAME_ARGUMENT` VARCHAR(255), IN `COLUMN_NAME_ARGUMENT` VARCHAR(255))
BEGIN
	DECLARE HAS_AUTO_INCREMENT_ID INT(11);
	DECLARE PRIMARY_KEY_COLUMN_NAME VARCHAR(255);
	DECLARE PRIMARY_KEY_TYPE VARCHAR(255);
	DECLARE SQL_EXP VARCHAR(1000);
	SELECT COUNT(*)
		INTO HAS_AUTO_INCREMENT_ID
		FROM `information_schema`.`COLUMNS`
		WHERE `TABLE_SCHEMA` = (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA()))
			AND `TABLE_NAME` = TABLE_NAME_ARGUMENT
			AND `COLUMN_NAME` = COLUMN_NAME_ARGUMENT
			AND `COLUMN_TYPE` LIKE '%int%'
			AND `COLUMN_KEY` = 'PRI';
	IF HAS_AUTO_INCREMENT_ID THEN
		SELECT `COLUMN_TYPE`
			INTO PRIMARY_KEY_TYPE
			FROM `information_schema`.`COLUMNS`
			WHERE `TABLE_SCHEMA` = (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA()))
				AND `TABLE_NAME` = TABLE_NAME_ARGUMENT
				AND `COLUMN_NAME` = COLUMN_NAME_ARGUMENT
				AND `COLUMN_TYPE` LIKE '%int%'
				AND `COLUMN_KEY` = 'PRI';
		SELECT `COLUMN_NAME`
			INTO PRIMARY_KEY_COLUMN_NAME
			FROM `information_schema`.`COLUMNS`
			WHERE `TABLE_SCHEMA` = (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA()))
				AND `TABLE_NAME` = TABLE_NAME_ARGUMENT
				AND `COLUMN_NAME` = COLUMN_NAME_ARGUMENT
				AND `COLUMN_TYPE` LIKE '%int%'
				AND `COLUMN_KEY` = 'PRI';
		SET SQL_EXP = CONCAT('ALTER TABLE `', (SELECT IFNULL(SCHEMA_NAME_ARGUMENT, SCHEMA())), '`.`', TABLE_NAME_ARGUMENT, '` MODIFY COLUMN `', PRIMARY_KEY_COLUMN_NAME, '` ', PRIMARY_KEY_TYPE, ' NOT NULL AUTO_INCREMENT;');
		SET @SQL_EXP = SQL_EXP;
		PREPARE SQL_EXP_EXECUTE FROM @SQL_EXP;
		EXECUTE SQL_EXP_EXECUTE;
		DEALLOCATE PREPARE SQL_EXP_EXECUTE;
	END IF;
END //
DELIMITER ;

ALTER TABLE `CurriculumRecord` DROP FOREIGN KEY `FK_CurriculumRecord_ContactProfile_InstitutionDiploma_AcademicI~`;

ALTER TABLE `CurriculumRecord` DROP FOREIGN KEY `FK_CurriculumRecord_ContactProfile_ProfessionalDegree_AcademicI~`;

ALTER TABLE `CurriculumRecord` DROP FOREIGN KEY `FK_CurriculumRecord_CurriculumSkill_CurriculumSkillID`;

ALTER TABLE `CurriculumSkill` DROP FOREIGN KEY `FK_CurriculumSkill_Business_BusinessID`;

ALTER TABLE `CurriculumSkill` DROP FOREIGN KEY `FK_CurriculumSkill_BusinessProfileRecord_BusinessProfileRecordID`;

ALTER TABLE `ProjectResourceSkillRecord` DROP FOREIGN KEY `FK_ProjectResourceSkillRecord_CurriculumSkill_ProjectResourceSk~`;

ALTER TABLE `RequiredSkillRecord` DROP FOREIGN KEY `FK_RequiredSkillRecord_CurriculumSkill_CurriculumSkillID`;

CALL POMELO_BEFORE_DROP_PRIMARY_KEY(NULL, 'CurriculumSkill');
ALTER TABLE `CurriculumSkill` DROP PRIMARY KEY;

ALTER TABLE `Curriculum` DROP COLUMN `CoverLetter`;

ALTER TABLE `CurriculumSkill` RENAME `Skill`;

ALTER TABLE `RequiredSkillRecord` RENAME COLUMN `CurriculumSkillID` TO `SkillID`;

ALTER TABLE `RequiredSkillRecord` RENAME INDEX `IX_RequiredSkillRecord_CurriculumSkillID` TO `IX_RequiredSkillRecord_SkillID`;

ALTER TABLE `CurriculumRecord` RENAME COLUMN `ProfessionalDegree_KnowledgeField` TO `CurriculumDegree_KnowledgeField`;

ALTER TABLE `CurriculumRecord` RENAME COLUMN `ProfessionalDegree_AcademicInstitutionProfileID` TO `CurriculumEducation_AcademicInstitutionProfileID`;

ALTER TABLE `CurriculumRecord` RENAME COLUMN `InstitutionDiploma_AcademicInstitutionProfileID` TO `CurriculumDiploma_AcademicInstitutionProfileID`;

ALTER TABLE `CurriculumRecord` RENAME COLUMN `CurriculumSkillID` TO `SkillID`;

ALTER TABLE `CurriculumRecord` RENAME INDEX `IX_CurriculumRecord_ProfessionalDegree_AcademicInstitutionProfi~` TO `IX_CurriculumRecord_CurriculumEducation_AcademicInstitutionProf~`;

ALTER TABLE `CurriculumRecord` RENAME INDEX `IX_CurriculumRecord_InstitutionDiploma_AcademicInstitutionProfi~` TO `IX_CurriculumRecord_CurriculumDiploma_AcademicInstitutionProfil~`;

ALTER TABLE `CurriculumRecord` RENAME INDEX `IX_CurriculumRecord_CurriculumSkillID` TO `IX_CurriculumRecord_SkillID`;

ALTER TABLE `Skill` RENAME INDEX `IX_CurriculumSkill_BusinessProfileRecordID` TO `IX_Skill_BusinessProfileRecordID`;

ALTER TABLE `Skill` RENAME INDEX `IX_CurriculumSkill_BusinessID` TO `IX_Skill_BusinessID`;

ALTER TABLE `GigApplication` ADD `CurriculumCoverID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `GigApplication` ADD `CurriculumID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `CoverLetter` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `CurriculumDegree_AcademicInstitutionProfileID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `EndDate` datetime(6) NULL;

ALTER TABLE `CurriculumRecord` ADD `GigID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `StartDate` datetime(6) NULL;

ALTER TABLE `Skill` ADD CONSTRAINT `PK_Skill` PRIMARY KEY (`ID`);
CALL POMELO_AFTER_ADD_PRIMARY_KEY(NULL, 'Skill', 'ID');

CREATE INDEX `IX_GigApplication_CurriculumCoverID` ON `GigApplication` (`CurriculumCoverID`);

CREATE INDEX `IX_GigApplication_CurriculumID` ON `GigApplication` (`CurriculumID`);

CREATE INDEX `IX_CurriculumRecord_CurriculumDegree_AcademicInstitutionProfile~` ON `CurriculumRecord` (`CurriculumDegree_AcademicInstitutionProfileID`);

CREATE INDEX `IX_CurriculumRecord_GigID` ON `CurriculumRecord` (`GigID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_ContactProfile_CurriculumDegree_AcademicIns~` FOREIGN KEY (`CurriculumDegree_AcademicInstitutionProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_ContactProfile_CurriculumDiploma_AcademicIn~` FOREIGN KEY (`CurriculumDiploma_AcademicInstitutionProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_ContactProfile_CurriculumEducation_Academic~` FOREIGN KEY (`CurriculumEducation_AcademicInstitutionProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_Gig_GigID` FOREIGN KEY (`GigID`) REFERENCES `Gig` (`ID`);

ALTER TABLE `CurriculumRecord` ADD CONSTRAINT `FK_CurriculumRecord_Skill_SkillID` FOREIGN KEY (`SkillID`) REFERENCES `Skill` (`ID`);

ALTER TABLE `GigApplication` ADD CONSTRAINT `FK_GigApplication_Curriculum_CurriculumID` FOREIGN KEY (`CurriculumID`) REFERENCES `Curriculum` (`ID`);

ALTER TABLE `GigApplication` ADD CONSTRAINT `FK_GigApplication_CurriculumRecord_CurriculumCoverID` FOREIGN KEY (`CurriculumCoverID`) REFERENCES `CurriculumRecord` (`ID`);

ALTER TABLE `ProjectResourceSkillRecord` ADD CONSTRAINT `FK_ProjectResourceSkillRecord_Skill_ProjectResourceSkillID` FOREIGN KEY (`ProjectResourceSkillID`) REFERENCES `Skill` (`ID`);

ALTER TABLE `RequiredSkillRecord` ADD CONSTRAINT `FK_RequiredSkillRecord_Skill_SkillID` FOREIGN KEY (`SkillID`) REFERENCES `Skill` (`ID`);

ALTER TABLE `Skill` ADD CONSTRAINT `FK_Skill_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`);

ALTER TABLE `Skill` ADD CONSTRAINT `FK_Skill_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20220529193646_V_1_6_2', '6.0.5');

DROP PROCEDURE `POMELO_BEFORE_DROP_PRIMARY_KEY`;

DROP PROCEDURE `POMELO_AFTER_ADD_PRIMARY_KEY`;

COMMIT;

START TRANSACTION;

ALTER TABLE `CurriculumRecord` DROP COLUMN `AwardedDate`;

ALTER TABLE `Skill` RENAME COLUMN `CurriculumSkillType` TO `SkillType`;

ALTER TABLE `CurriculumRecord` RENAME COLUMN `OrganizationName` TO `Responsibilities`;

ALTER TABLE `Skill` ADD `IconUrl` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Skill` ADD `Url` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `JobOfferApplication` ADD `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `JobOfferApplication` ADD `CurriculumCoverID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `JobOfferApplication` ADD `SalaryExpectation` double NOT NULL DEFAULT 0.0;

ALTER TABLE `CurriculumRecord` ADD `Achievements` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `CurriculumEducation_KnowledgeField` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `ImageUrl` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `Organization` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `CurriculumRecord` ADD `Remarks` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ContactProfile` ADD `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ContactProfile` ADD `CurriculumID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ContactProfile` ADD `SalaryExpectation` decimal(65,30) NULL;

ALTER TABLE `ActivityFeed` ADD `GigApplicationID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ActivityFeed` ADD `JobOfferApplicationID` varchar(255) CHARACTER SET utf8mb4 NULL;

CREATE INDEX `IX_JobOfferApplication_CurrencyID` ON `JobOfferApplication` (`CurrencyID`);

CREATE INDEX `IX_JobOfferApplication_CurriculumCoverID` ON `JobOfferApplication` (`CurriculumCoverID`);

CREATE INDEX `IX_ContactProfile_CurrencyID` ON `ContactProfile` (`CurrencyID`);

CREATE UNIQUE INDEX `IX_ContactProfile_CurriculumID` ON `ContactProfile` (`CurriculumID`);

CREATE UNIQUE INDEX `IX_ActivityFeed_GigApplicationID` ON `ActivityFeed` (`GigApplicationID`);

CREATE UNIQUE INDEX `IX_ActivityFeed_JobOfferApplicationID` ON `ActivityFeed` (`JobOfferApplicationID`);

ALTER TABLE `ActivityFeed` ADD CONSTRAINT `FK_ActivityFeed_GigApplication_GigApplicationID` FOREIGN KEY (`GigApplicationID`) REFERENCES `GigApplication` (`ID`);

ALTER TABLE `ActivityFeed` ADD CONSTRAINT `FK_ActivityFeed_JobOfferApplication_JobOfferApplicationID` FOREIGN KEY (`JobOfferApplicationID`) REFERENCES `JobOfferApplication` (`ID`);

ALTER TABLE `ContactProfile` ADD CONSTRAINT `FK_ContactProfile_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`);

ALTER TABLE `ContactProfile` ADD CONSTRAINT `FK_ContactProfile_Curriculum_CurriculumID` FOREIGN KEY (`CurriculumID`) REFERENCES `Curriculum` (`ID`);

ALTER TABLE `JobOfferApplication` ADD CONSTRAINT `FK_JobOfferApplication_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`);

ALTER TABLE `JobOfferApplication` ADD CONSTRAINT `FK_JobOfferApplication_CurriculumRecord_CurriculumCoverID` FOREIGN KEY (`CurriculumCoverID`) REFERENCES `CurriculumRecord` (`ID`);

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20220530004006_V_1_6_3', '6.0.5');

COMMIT;

START TRANSACTION;

ALTER TABLE `ContactProfile` DROP FOREIGN KEY `FK_ContactProfile_Curriculum_CurriculumID`;

ALTER TABLE `Curriculum` DROP FOREIGN KEY `FK_Curriculum_SocialProfile_SocialProfileID`;

ALTER TABLE `Curriculum` DROP INDEX `IX_Curriculum_SocialProfileID`;

ALTER TABLE `ContactProfile` DROP INDEX `IX_ContactProfile_CurriculumID`;

ALTER TABLE `Curriculum` DROP COLUMN `SocialProfileID`;

ALTER TABLE `ContactProfile` DROP COLUMN `CurriculumID`;

ALTER TABLE `Contact` ADD `BusinessSegmentID` varchar(255) CHARACTER SET utf8mb4 NULL;

CREATE INDEX `IX_Contact_BusinessSegmentID` ON `Contact` (`BusinessSegmentID`);

ALTER TABLE `Contact` ADD CONSTRAINT `FK_Contact_BusinessSegment_BusinessSegmentID` FOREIGN KEY (`BusinessSegmentID`) REFERENCES `BusinessSegment` (`ID`);

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20220530025827_V_1_6_4', '6.0.5');

COMMIT;

START TRANSACTION;

ALTER TABLE `ContactProfile` DROP FOREIGN KEY `FK_ContactProfile_PartnerTier_PartnerTierID`;

DROP TABLE `PartnerTier`;

DROP TABLE `WorkOrder`;

ALTER TABLE `Contact` DROP COLUMN `Birdthday`;

ALTER TABLE `BusinessSegment` DROP COLUMN `EmployeeHighRangeValue`;

ALTER TABLE `BusinessSegment` DROP COLUMN `EmployeeLowRangeValue`;

ALTER TABLE `ContactProfile` RENAME COLUMN `PartnerTierID` TO `PartnerProgramTierID`;

ALTER TABLE `ContactProfile` RENAME INDEX `IX_ContactProfile_PartnerTierID` TO `IX_ContactProfile_PartnerProgramTierID`;

ALTER TABLE `Contact` RENAME COLUMN `PreferedContactMethod` TO `Website`;

ALTER TABLE `Contact` RENAME COLUMN `BirthDate` TO `Birthday`;

ALTER TABLE `Workstation` ADD `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Workstation` ADD `Code` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Workstation` ADD `Description` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Workstation` ADD `LocationID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Workstation` ADD `Type` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `WorkOrderType` ADD `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `WorkOrderType` ADD `Description` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `WorkOrderType` ADD `Name` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `WorkOrderType` ADD `Timestamp` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `Task` ADD `Data` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data1` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data1Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data2` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data2Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data3` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data3Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data4` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data4Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data5` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data5Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data6` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data6Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data7` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data7Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data8` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data8Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data9` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Data9Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `DataLabel` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `Instructions` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `IsTemplate` tinyint(1) NOT NULL DEFAULT FALSE;

ALTER TABLE `Task` ADD `PriorityID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `ServiceCaseID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Task` ADD `ServiceID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Shipment` ADD `ShippingTerms` int NOT NULL DEFAULT 0;

ALTER TABLE `ServiceCase` ADD `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ServiceCase` ADD `Discriminator` longtext CHARACTER SET utf8mb4 NOT NULL;

ALTER TABLE `ServiceCase` ADD `Instructions` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ServiceCase` ADD `PriceListID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ServiceCase` ADD `ProductionPlanID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ServiceCase` ADD `PromisedEndDate` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `ServiceCase` ADD `PromisedStartDate` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `ServiceCase` ADD `Taxable` tinyint(1) NOT NULL DEFAULT FALSE;

ALTER TABLE `ServiceCase` ADD `TerritoryID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ServiceCase` ADD `WorkLocation` int NOT NULL DEFAULT 0;

ALTER TABLE `ServiceCase` ADD `WorkOrderTypeID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ServiceCase` ADD `WorkstationID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ProductionPlan` ADD `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ProductionPlan` ADD `Description` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ProductionPlan` ADD `Timestamp` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00';

ALTER TABLE `ProductionPlan` ADD `Title` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Curriculum` ADD `JobApplicantProfileID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Curriculum` ADD `SocialProfileID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `ContactProfile` ADD `PartnerProfileStatus` int NULL;

ALTER TABLE `ContactProfile` ADD `PartnerProgramEndDate` datetime(6) NULL;

ALTER TABLE `ContactProfile` ADD `PartnerProgramStartDate` datetime(6) NULL;

ALTER TABLE `Contact` ADD `About` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `AllowPhoneCalls` tinyint(1) NOT NULL DEFAULT FALSE;

ALTER TABLE `Contact` ADD `BusinessSizeID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data1` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data1Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data2` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data2Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data3` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data3Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data4` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data4Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data5` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data5Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data6` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data6Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data7` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data7Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data8` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data8Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data9` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Data9Label` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `DataLabel` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `Description` tinyint(1) NOT NULL DEFAULT FALSE;

ALTER TABLE `Contact` ADD `OrganizationName` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `OrganizationOwnership` int NOT NULL DEFAULT 0;

ALTER TABLE `Contact` ADD `SICCode` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `Contact` ADD `ShippingTerms` int NOT NULL DEFAULT 0;

ALTER TABLE `Contact` ADD `TaxExempt` tinyint(1) NOT NULL DEFAULT FALSE;

ALTER TABLE `Contact` ADD `TickerSymbol` longtext CHARACTER SET utf8mb4 NULL;

ALTER TABLE `BusinessSegment` ADD `CurrencyID` varchar(255) CHARACTER SET utf8mb4 NULL;

ALTER TABLE `BusinessSegment` ADD `MaxRevenue` double NOT NULL DEFAULT 0.0;

ALTER TABLE `BusinessSegment` ADD `MinRevenue` double NOT NULL DEFAULT 0.0;

ALTER TABLE `Business` ADD `BusinessSizeID` varchar(255) CHARACTER SET utf8mb4 NULL;

CREATE TABLE `BusinessSize` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `EmployeeLowRangeValue` int NOT NULL,
    `EmployeeHighRangeValue` int NOT NULL,
    CONSTRAINT `PK_BusinessSize` PRIMARY KEY (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PartnerProgram` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` tinyint(1) NOT NULL,
    `Criteria` tinyint(1) NOT NULL,
    `Description` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `PartnerProgramEndDate` datetime(6) NOT NULL,
    `PartnerProgramStartDate` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PartnerProgram` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PartnerProgram_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_PartnerProgram_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `Priority` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` longtext CHARACTER SET utf8mb4 NULL,
    `Description` longtext CHARACTER SET utf8mb4 NULL,
    `Notes` longtext CHARACTER SET utf8mb4 NULL,
    `Color` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_Priority` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_Priority_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_Priority_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ServiceFulfillmentPreferences` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Name` longtext CHARACTER SET utf8mb4 NULL,
    `Details` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `ServiceCaseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ServiceFulfillmentPreferences` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ServiceFulfillmentPreferences_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ServiceFulfillmentPreferences_BusinessProfileRecord_Business~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ServiceFulfillmentPreferences_ServiceCase_ServiceCaseID` FOREIGN KEY (`ServiceCaseID`) REFERENCES `ServiceCase` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PartnerProgramTier` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Title` tinyint(1) NOT NULL,
    `Criteria` tinyint(1) NOT NULL,
    `Description` tinyint(1) NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `PartnerProgramID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PriceListID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PartnerProgramTier` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PartnerProgramTier_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_PartnerProgramTier_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_PartnerProgramTier_PartnerProgram_PartnerProgramID` FOREIGN KEY (`PartnerProgramID`) REFERENCES `PartnerProgram` (`ID`),
    CONSTRAINT `FK_PartnerProgramTier_PriceList_PriceListID` FOREIGN KEY (`PriceListID`) REFERENCES `PriceList` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `ServiceFulfillment` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `Timestamp` datetime(6) NOT NULL,
    `Accepted` tinyint(1) NOT NULL,
    `Remarks` longtext CHARACTER SET utf8mb4 NULL,
    `ServiceID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ServiceCaseID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `ServiceFulfillmentPreferencesID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_ServiceFulfillment` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_ServiceFulfillment_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_ServiceFulfillment_BusinessProfileRecord_BusinessProfileReco~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_ServiceFulfillment_Item_ServiceID` FOREIGN KEY (`ServiceID`) REFERENCES `Item` (`ID`),
    CONSTRAINT `FK_ServiceFulfillment_ServiceCase_ServiceCaseID` FOREIGN KEY (`ServiceCaseID`) REFERENCES `ServiceCase` (`ID`),
    CONSTRAINT `FK_ServiceFulfillment_ServiceFulfillmentPreferences_ServiceFulf~` FOREIGN KEY (`ServiceFulfillmentPreferencesID`) REFERENCES `ServiceFulfillmentPreferences` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE TABLE `PartnerProgramRegistration` (
    `ID` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    `FormData` longtext CHARACTER SET utf8mb4 NULL,
    `Timestamp` datetime(6) NOT NULL,
    `RegistrationStatus` int NOT NULL,
    `BusinessID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `BusinessProfileRecordID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PartnerProgramTierID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PartnerProfileID` varchar(255) CHARACTER SET utf8mb4 NULL,
    `PartnerProgramID` varchar(255) CHARACTER SET utf8mb4 NULL,
    CONSTRAINT `PK_PartnerProgramRegistration` PRIMARY KEY (`ID`),
    CONSTRAINT `FK_PartnerProgramRegistration_Business_BusinessID` FOREIGN KEY (`BusinessID`) REFERENCES `Business` (`ID`),
    CONSTRAINT `FK_PartnerProgramRegistration_BusinessProfileRecord_BusinessPro~` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`),
    CONSTRAINT `FK_PartnerProgramRegistration_ContactProfile_PartnerProfileID` FOREIGN KEY (`PartnerProfileID`) REFERENCES `ContactProfile` (`ID`),
    CONSTRAINT `FK_PartnerProgramRegistration_PartnerProgram_PartnerProgramID` FOREIGN KEY (`PartnerProgramID`) REFERENCES `PartnerProgram` (`ID`),
    CONSTRAINT `FK_PartnerProgramRegistration_PartnerProgramTier_PartnerProgram~` FOREIGN KEY (`PartnerProgramTierID`) REFERENCES `PartnerProgramTier` (`ID`)
) CHARACTER SET=utf8mb4;

CREATE INDEX `IX_Workstation_BusinessProfileRecordID` ON `Workstation` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Workstation_LocationID` ON `Workstation` (`LocationID`);

CREATE INDEX `IX_WorkOrderType_BusinessProfileRecordID` ON `WorkOrderType` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Task_PriorityID` ON `Task` (`PriorityID`);

CREATE INDEX `IX_Task_ServiceCaseID` ON `Task` (`ServiceCaseID`);

CREATE INDEX `IX_Task_ServiceID` ON `Task` (`ServiceID`);

CREATE INDEX `IX_ServiceCase_CurrencyID` ON `ServiceCase` (`CurrencyID`);

CREATE INDEX `IX_ServiceCase_PriceListID` ON `ServiceCase` (`PriceListID`);

CREATE INDEX `IX_ServiceCase_ProductionPlanID` ON `ServiceCase` (`ProductionPlanID`);

CREATE INDEX `IX_ServiceCase_TerritoryID` ON `ServiceCase` (`TerritoryID`);

CREATE INDEX `IX_ServiceCase_WorkOrderTypeID` ON `ServiceCase` (`WorkOrderTypeID`);

CREATE INDEX `IX_ServiceCase_WorkstationID` ON `ServiceCase` (`WorkstationID`);

CREATE INDEX `IX_ProductionPlan_BusinessProfileRecordID` ON `ProductionPlan` (`BusinessProfileRecordID`);

CREATE INDEX `IX_Curriculum_JobApplicantProfileID` ON `Curriculum` (`JobApplicantProfileID`);

CREATE INDEX `IX_Curriculum_SocialProfileID` ON `Curriculum` (`SocialProfileID`);

CREATE INDEX `IX_Contact_BusinessSizeID` ON `Contact` (`BusinessSizeID`);

CREATE INDEX `IX_BusinessSegment_CurrencyID` ON `BusinessSegment` (`CurrencyID`);

CREATE INDEX `IX_Business_BusinessSizeID` ON `Business` (`BusinessSizeID`);

CREATE INDEX `IX_PartnerProgram_BusinessID` ON `PartnerProgram` (`BusinessID`);

CREATE INDEX `IX_PartnerProgram_BusinessProfileRecordID` ON `PartnerProgram` (`BusinessProfileRecordID`);

CREATE INDEX `IX_PartnerProgramRegistration_BusinessID` ON `PartnerProgramRegistration` (`BusinessID`);

CREATE INDEX `IX_PartnerProgramRegistration_BusinessProfileRecordID` ON `PartnerProgramRegistration` (`BusinessProfileRecordID`);

CREATE INDEX `IX_PartnerProgramRegistration_PartnerProfileID` ON `PartnerProgramRegistration` (`PartnerProfileID`);

CREATE INDEX `IX_PartnerProgramRegistration_PartnerProgramID` ON `PartnerProgramRegistration` (`PartnerProgramID`);

CREATE INDEX `IX_PartnerProgramRegistration_PartnerProgramTierID` ON `PartnerProgramRegistration` (`PartnerProgramTierID`);

CREATE INDEX `IX_PartnerProgramTier_BusinessID` ON `PartnerProgramTier` (`BusinessID`);

CREATE INDEX `IX_PartnerProgramTier_BusinessProfileRecordID` ON `PartnerProgramTier` (`BusinessProfileRecordID`);

CREATE INDEX `IX_PartnerProgramTier_PartnerProgramID` ON `PartnerProgramTier` (`PartnerProgramID`);

CREATE INDEX `IX_PartnerProgramTier_PriceListID` ON `PartnerProgramTier` (`PriceListID`);

CREATE INDEX `IX_Priority_BusinessID` ON `Priority` (`BusinessID`);

CREATE INDEX `IX_Priority_BusinessProfileRecordID` ON `Priority` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ServiceFulfillment_BusinessID` ON `ServiceFulfillment` (`BusinessID`);

CREATE INDEX `IX_ServiceFulfillment_BusinessProfileRecordID` ON `ServiceFulfillment` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ServiceFulfillment_ServiceCaseID` ON `ServiceFulfillment` (`ServiceCaseID`);

CREATE INDEX `IX_ServiceFulfillment_ServiceFulfillmentPreferencesID` ON `ServiceFulfillment` (`ServiceFulfillmentPreferencesID`);

CREATE INDEX `IX_ServiceFulfillment_ServiceID` ON `ServiceFulfillment` (`ServiceID`);

CREATE INDEX `IX_ServiceFulfillmentPreferences_BusinessID` ON `ServiceFulfillmentPreferences` (`BusinessID`);

CREATE INDEX `IX_ServiceFulfillmentPreferences_BusinessProfileRecordID` ON `ServiceFulfillmentPreferences` (`BusinessProfileRecordID`);

CREATE INDEX `IX_ServiceFulfillmentPreferences_ServiceCaseID` ON `ServiceFulfillmentPreferences` (`ServiceCaseID`);

ALTER TABLE `Business` ADD CONSTRAINT `FK_Business_BusinessSize_BusinessSizeID` FOREIGN KEY (`BusinessSizeID`) REFERENCES `BusinessSize` (`ID`);

ALTER TABLE `BusinessSegment` ADD CONSTRAINT `FK_BusinessSegment_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`);

ALTER TABLE `Contact` ADD CONSTRAINT `FK_Contact_BusinessSize_BusinessSizeID` FOREIGN KEY (`BusinessSizeID`) REFERENCES `BusinessSize` (`ID`);

ALTER TABLE `ContactProfile` ADD CONSTRAINT `FK_ContactProfile_PartnerProgramTier_PartnerProgramTierID` FOREIGN KEY (`PartnerProgramTierID`) REFERENCES `PartnerProgramTier` (`ID`);

ALTER TABLE `Curriculum` ADD CONSTRAINT `FK_Curriculum_ContactProfile_JobApplicantProfileID` FOREIGN KEY (`JobApplicantProfileID`) REFERENCES `ContactProfile` (`ID`);

ALTER TABLE `Curriculum` ADD CONSTRAINT `FK_Curriculum_SocialProfile_SocialProfileID` FOREIGN KEY (`SocialProfileID`) REFERENCES `SocialProfile` (`ID`);

ALTER TABLE `ProductionPlan` ADD CONSTRAINT `FK_ProductionPlan_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `ServiceCase` ADD CONSTRAINT `FK_ServiceCase_Currency_CurrencyID` FOREIGN KEY (`CurrencyID`) REFERENCES `Currency` (`ID`);

ALTER TABLE `ServiceCase` ADD CONSTRAINT `FK_ServiceCase_PriceList_PriceListID` FOREIGN KEY (`PriceListID`) REFERENCES `PriceList` (`ID`);

ALTER TABLE `ServiceCase` ADD CONSTRAINT `FK_ServiceCase_ProductionPlan_ProductionPlanID` FOREIGN KEY (`ProductionPlanID`) REFERENCES `ProductionPlan` (`ID`);

ALTER TABLE `ServiceCase` ADD CONSTRAINT `FK_ServiceCase_Territory_TerritoryID` FOREIGN KEY (`TerritoryID`) REFERENCES `Territory` (`ID`);

ALTER TABLE `ServiceCase` ADD CONSTRAINT `FK_ServiceCase_WorkOrderType_WorkOrderTypeID` FOREIGN KEY (`WorkOrderTypeID`) REFERENCES `WorkOrderType` (`ID`);

ALTER TABLE `ServiceCase` ADD CONSTRAINT `FK_ServiceCase_Workstation_WorkstationID` FOREIGN KEY (`WorkstationID`) REFERENCES `Workstation` (`ID`);

ALTER TABLE `Task` ADD CONSTRAINT `FK_Task_Item_ServiceID` FOREIGN KEY (`ServiceID`) REFERENCES `Item` (`ID`);

ALTER TABLE `Task` ADD CONSTRAINT `FK_Task_Priority_PriorityID` FOREIGN KEY (`PriorityID`) REFERENCES `Priority` (`ID`);

ALTER TABLE `Task` ADD CONSTRAINT `FK_Task_ServiceCase_ServiceCaseID` FOREIGN KEY (`ServiceCaseID`) REFERENCES `ServiceCase` (`ID`);

ALTER TABLE `WorkOrderType` ADD CONSTRAINT `FK_WorkOrderType_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `Workstation` ADD CONSTRAINT `FK_Workstation_BusinessProfileRecord_BusinessProfileRecordID` FOREIGN KEY (`BusinessProfileRecordID`) REFERENCES `BusinessProfileRecord` (`ID`);

ALTER TABLE `Workstation` ADD CONSTRAINT `FK_Workstation_Location_LocationID` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`ID`);

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20220530042459_V_1_6_5', '6.0.5');

COMMIT;

