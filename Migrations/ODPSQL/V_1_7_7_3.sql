﻿DECLARE
V_COUNT INTEGER;
BEGIN
SELECT COUNT(TABLE_NAME) INTO V_COUNT from USER_TABLES where TABLE_NAME = '__EFMigrationsHistory';
IF V_COUNT = 0 THEN
Begin
BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"__EFMigrationsHistory" (
    "MigrationId" NVARCHAR2(150) NOT NULL,
    "ProductVersion" NVARCHAR2(32) NOT NULL,
    CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
)';
END;

End;

END IF;
EXCEPTION
WHEN OTHERS THEN
    IF(SQLCODE != -942)THEN
        RAISE;
    END IF;
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AspNetRoles" (
    "Id" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(256),
    "NormalizedName" NVARCHAR2(256),
    "ConcurrencyStamp" NVARCHAR2(2000),
    CONSTRAINT "PK_AspNetRoles" PRIMARY KEY ("Id")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessSegment" (
    "ID" NVARCHAR2(450) NOT NULL,
    "EmployeeLowRangeValue" NUMBER(10) NOT NULL,
    "EmployeeHighRangeValue" NUMBER(10) NOT NULL,
    CONSTRAINT "PK_BusinessSegment" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    CONSTRAINT "PK_BusinessType" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ContactsGroup" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    CONSTRAINT "PK_ContactsGroup" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Country" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Enabled" NUMBER(1) NOT NULL,
    "ISOAlpha3" NVARCHAR2(2000),
    "ISOAlpha2" NVARCHAR2(2000),
    "CountryFlagUrl" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "ISO2" NVARCHAR2(2000),
    "ISO3" NVARCHAR2(2000),
    "PhoneCode" NVARCHAR2(2000),
    "CurrencyCode" NVARCHAR2(2000),
    "FlagUrl" NVARCHAR2(2000),
    "Emoji" NVARCHAR2(2000),
    "EmojiUnicode" NVARCHAR2(2000),
    "Capital" NVARCHAR2(2000),
    "Region" NVARCHAR2(2000),
    "LatLng" NVARCHAR2(2000),
    "Subregion" NVARCHAR2(2000),
    "Population" NUMBER(19) NOT NULL,
    "Demonym" NVARCHAR2(2000),
    "Area" BINARY_DOUBLE,
    "Gini" BINARY_DOUBLE,
    "NativeName" NVARCHAR2(2000),
    "NumericCode" NVARCHAR2(2000),
    "CIOC" NVARCHAR2(2000),
    CONSTRAINT "PK_Country" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CountryLanguage" (
    "Iso639_1" NVARCHAR2(450) NOT NULL,
    "Iso639_2" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "LanguageNativeName" NVARCHAR2(2000),
    CONSTRAINT "PK_CountryLanguage" PRIMARY KEY ("Iso639_1")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Entity" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Internal" NUMBER(1) NOT NULL,
    CONSTRAINT "PK_Entity" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ExpenseType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Enabled" NUMBER(1) NOT NULL,
    CONSTRAINT "PK_ExpenseType" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Fee" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "AddedPercent" DECIMAL(18, 2) NOT NULL,
    "AddedAmount" DECIMAL(18, 2) NOT NULL,
    "TaxPercent" DECIMAL(18, 2) NOT NULL,
    CONSTRAINT "PK_Fee" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemGoogleCategory" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Path" NVARCHAR2(2000),
    "Icon" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "Disabled" NUMBER(1) NOT NULL,
    "Featured" NUMBER(1) NOT NULL,
    "DisplayOnMenu" NUMBER(1) NOT NULL,
    "MenuImage" NVARCHAR2(2000),
    "BannerCode" NVARCHAR2(2000),
    "BannerImage" NVARCHAR2(2000),
    "PrimaryImage" NVARCHAR2(2000),
    "StartingAtAmountInUSD" BINARY_DOUBLE NOT NULL,
    "ParentItemGoogleCategoryID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemGoogleCategory" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemGoogleCategory_ItemGoogleCategory_ParentItemGoogleCategoryID" FOREIGN KEY ("ParentItemGoogleCategoryID") REFERENCES "ItemGoogleCategory" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"OpenIddictEntityFrameworkCoreScope" (
    "Id" NVARCHAR2(450) NOT NULL,
    "ConcurrencyToken" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Descriptions" NVARCHAR2(2000),
    "DisplayName" NVARCHAR2(2000),
    "DisplayNames" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "Properties" NVARCHAR2(2000),
    "Resources" NVARCHAR2(2000),
    CONSTRAINT "PK_OpenIddictEntityFrameworkCoreScope" PRIMARY KEY ("Id")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PartnerTier" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NUMBER(1) NOT NULL,
    "Description" NUMBER(1) NOT NULL,
    CONSTRAINT "PK_PartnerTier" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"RegionalBlock" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Acronym" NVARCHAR2(2000),
    CONSTRAINT "PK_RegionalBlock" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Timezone" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "UtcOffset" NVARCHAR2(2000),
    CONSTRAINT "PK_Timezone" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AspNetRoleClaims" (
    "Id" NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    "RoleId" NVARCHAR2(450) NOT NULL,
    "ClaimType" NVARCHAR2(2000),
    "ClaimValue" NVARCHAR2(2000),
    CONSTRAINT "PK_AspNetRoleClaims" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "AspNetRoles" ("Id")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Bank" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Image" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CountryID" NVARCHAR2(450),
    CONSTRAINT "PK_Bank" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Bank_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CountryAltSpelling" (
    "CountryAltSpellingID" NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    "CountryID" NVARCHAR2(450),
    "CountryAlternativeSpelling" NVARCHAR2(2000),
    CONSTRAINT "PK_CountryAltSpelling" PRIMARY KEY ("CountryAltSpellingID"),
    CONSTRAINT "FK_CountryAltSpelling_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CountryBorder" (
    "ID" NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    "CountryID" NVARCHAR2(450),
    "BorderCountryID" NVARCHAR2(450),
    CONSTRAINT "PK_CountryBorder" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CountryBorder_Country_BorderCountryID" FOREIGN KEY ("BorderCountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_CountryBorder_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CountryCallingCode" (
    "CountryCallingCodeID" NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    "CallingCode" NVARCHAR2(2000),
    "CountryID" NVARCHAR2(450),
    CONSTRAINT "PK_CountryCallingCode" PRIMARY KEY ("CountryCallingCodeID"),
    CONSTRAINT "FK_CountryCallingCode_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CountryNameTranslations" (
    "ID" NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    "CountryID" NVARCHAR2(450),
    "De" NVARCHAR2(2000),
    "Es" NVARCHAR2(2000),
    "Fr" NVARCHAR2(2000),
    "Ja" NVARCHAR2(2000),
    "It" NVARCHAR2(2000),
    "Br" NVARCHAR2(2000),
    "Pt" NVARCHAR2(2000),
    "Nl" NVARCHAR2(2000),
    "Hr" NVARCHAR2(2000),
    "Fa" NVARCHAR2(2000),
    CONSTRAINT "PK_CountryNameTranslations" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CountryNameTranslations_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CountryState" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Code" NVARCHAR2(2000),
    "CountryID" NVARCHAR2(450),
    CONSTRAINT "PK_CountryState" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CountryState_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CountryTopLevelDomain" (
    "CountryTopLevelDomainID" NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    "Domain" NVARCHAR2(2000),
    "CountryID" NVARCHAR2(450),
    CONSTRAINT "PK_CountryTopLevelDomain" PRIMARY KEY ("CountryTopLevelDomainID"),
    CONSTRAINT "FK_CountryTopLevelDomain_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Currency" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Enabled" NUMBER(1) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Symbol" NVARCHAR2(2000),
    "ISOCode" NVARCHAR2(2000),
    "IsBaseCurrency" NUMBER(1) NOT NULL,
    "ExchangeValue" BINARY_DOUBLE NOT NULL,
    "CountryID" NVARCHAR2(450),
    CONSTRAINT "PK_Currency" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Currency_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CountryLanguageRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "CountryID" NVARCHAR2(450),
    "CountryLanguageID" NVARCHAR2(450),
    CONSTRAINT "PK_CountryLanguageRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CountryLanguageRecord_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_CountryLanguageRecord_CountryLanguage_CountryLanguageID" FOREIGN KEY ("CountryLanguageID") REFERENCES "CountryLanguage" ("Iso639_1")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Column" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Internal" NUMBER(1) NOT NULL,
    "PrimaryKey" NUMBER(1) NOT NULL,
    "ForeignKey" NUMBER(1) NOT NULL,
    "ColumnType" NUMBER(10) NOT NULL,
    "EntityID" NVARCHAR2(450),
    CONSTRAINT "PK_Column" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Column_Entity_EntityID" FOREIGN KEY ("EntityID") REFERENCES "Entity" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Row" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Internal" NUMBER(1) NOT NULL,
    "EntityID" NVARCHAR2(450),
    CONSTRAINT "PK_Row" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Row_Entity_EntityID" FOREIGN KEY ("EntityID") REFERENCES "Entity" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"View" (
    "ID" NVARCHAR2(450) NOT NULL,
    "EntityID" NVARCHAR2(450),
    CONSTRAINT "PK_View" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_View_Entity_EntityID" FOREIGN KEY ("EntityID") REFERENCES "Entity" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CountryRegionalBlockRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "CountryID" NVARCHAR2(450),
    "RegionalBlockID" NVARCHAR2(450),
    CONSTRAINT "PK_CountryRegionalBlockRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CountryRegionalBlockRecord_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_CountryRegionalBlockRecord_RegionalBlock_RegionalBlockID" FOREIGN KEY ("RegionalBlockID") REFERENCES "RegionalBlock" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"RegionalBlockAlternativeAcronym" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "RegionalBlockID" NVARCHAR2(450),
    CONSTRAINT "PK_RegionalBlockAlternativeAcronym" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_RegionalBlockAlternativeAcronym_RegionalBlock_RegionalBlockID" FOREIGN KEY ("RegionalBlockID") REFERENCES "RegionalBlock" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"RegionalBlockAlternativeName" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "RegionalBlockID" NVARCHAR2(450),
    CONSTRAINT "PK_RegionalBlockAlternativeName" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_RegionalBlockAlternativeName_RegionalBlock_RegionalBlockID" FOREIGN KEY ("RegionalBlockID") REFERENCES "RegionalBlock" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CountryTimeZoneRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "CountryID" NVARCHAR2(450),
    "TimezoneID" NVARCHAR2(450),
    CONSTRAINT "PK_CountryTimeZoneRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CountryTimeZoneRecord_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_CountryTimeZoneRecord_Timezone_TimezoneID" FOREIGN KEY ("TimezoneID") REFERENCES "Timezone" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"City" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "ImageUrl" NVARCHAR2(2000),
    "StateID" NVARCHAR2(450),
    "CountryID" NVARCHAR2(450),
    "Latitude" NVARCHAR2(2000),
    "Longitude" NVARCHAR2(2000),
    CONSTRAINT "PK_City" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_City_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_City_CountryState_StateID" FOREIGN KEY ("StateID") REFERENCES "CountryState" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ForeignKey" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "EntityID" NVARCHAR2(450),
    "ColumnID" NVARCHAR2(450),
    "ForeignEntityID" NVARCHAR2(450),
    "ForeignColumnID" NVARCHAR2(450),
    CONSTRAINT "PK_ForeignKey" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ForeignKey_Column_ColumnID" FOREIGN KEY ("ColumnID") REFERENCES "Column" ("ID"),
    CONSTRAINT "FK_ForeignKey_Column_ForeignColumnID" FOREIGN KEY ("ForeignColumnID") REFERENCES "Column" ("ID"),
    CONSTRAINT "FK_ForeignKey_Entity_EntityID" FOREIGN KEY ("EntityID") REFERENCES "Entity" ("ID"),
    CONSTRAINT "FK_ForeignKey_Entity_ForeignEntityID" FOREIGN KEY ("ForeignEntityID") REFERENCES "Entity" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Cell" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ColumnID" NVARCHAR2(450),
    "RowID" NVARCHAR2(450),
    "Value" NVARCHAR2(2000),
    CONSTRAINT "PK_Cell" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Cell_Column_ColumnID" FOREIGN KEY ("ColumnID") REFERENCES "Column" ("ID"),
    CONSTRAINT "FK_Cell_Row_RowID" FOREIGN KEY ("RowID") REFERENCES "Row" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AccessKeyPair" (
    "IP" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Disabled" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CSR" NVARCHAR2(2000),
    "PublicKey" NVARCHAR2(2000),
    "PrivateKey" NVARCHAR2(2000),
    "AesKey" RAW(2000),
    "AesIV" RAW(2000),
    CONSTRAINT "PK_AccessKeyPair" PRIMARY KEY ("IP")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Account" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Group" NUMBER(1) NOT NULL,
    "Frozen" NUMBER(1) NOT NULL,
    "Closed" NUMBER(1) NOT NULL,
    "ReadOnly" NUMBER(1) NOT NULL,
    "Verified" NUMBER(1) NOT NULL,
    "Disable" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "VerificationTimestamp" TIMESTAMP(7) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Code" NVARCHAR2(2000),
    "Path" NVARCHAR2(2000),
    "Prefix" NVARCHAR2(2000),
    "TaxRate" DECIMAL(18, 2) NOT NULL,
    "AccountBalanceCriteria" NUMBER(10) NOT NULL,
    "AccountRootType" NUMBER(10) NOT NULL,
    "Balance" DECIMAL(18, 2) NOT NULL,
    "DebitsBalance" DECIMAL(18, 2) NOT NULL,
    "CreditsBalance" DECIMAL(18, 2) NOT NULL,
    "LastBalance" TIMESTAMP(7) NOT NULL,
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "AccountGroupID" NVARCHAR2(450),
    "AccountTypeID" NVARCHAR2(450),
    "BillingProfileID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "LedgerID" NVARCHAR2(450),
    "ParentAccountID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "IBAN" NVARCHAR2(2000),
    "SWIFT" NVARCHAR2(2000),
    "BranchCode" NVARCHAR2(2000),
    "BankAccountNumber" NVARCHAR2(2000),
    "BankID" NVARCHAR2(450),
    "BankProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_Account" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Account_Account_ParentAccountID" FOREIGN KEY ("ParentAccountID") REFERENCES "Account" ("ID"),
    CONSTRAINT "FK_Account_Bank_BankID" FOREIGN KEY ("BankID") REFERENCES "Bank" ("ID"),
    CONSTRAINT "FK_Account_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AccountGroup" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "ParentAccountGroupID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_AccountGroup" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_AccountGroup_AccountGroup_ParentAccountGroupID" FOREIGN KEY ("ParentAccountGroupID") REFERENCES "AccountGroup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AccountHolderLogin" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Suspicious" NUMBER(1) NOT NULL,
    "Aknowledged" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "IPLookupID" NVARCHAR2(450),
    "IP" NVARCHAR2(2000),
    "DeviceOS" NVARCHAR2(2000),
    "DeviceBrand" NVARCHAR2(2000),
    "DeviceModel" NVARCHAR2(2000),
    "DeviceFamily" NVARCHAR2(2000),
    "UserAgentPatch" NVARCHAR2(2000),
    "UserAgentFamily" NVARCHAR2(2000),
    "UserAgentMinor" NVARCHAR2(2000),
    "UserAgentMajor" NVARCHAR2(2000),
    "AccountHolderID" NVARCHAR2(450),
    CONSTRAINT "PK_AccountHolderLogin" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AccountHolderSettings" (
    "ID" NVARCHAR2(450) NOT NULL,
    "AccountHolderID" NVARCHAR2(450),
    "DarkTheme" NUMBER(1) NOT NULL,
    "Cookies" NUMBER(1) NOT NULL,
    "Analytics" NUMBER(1) NOT NULL,
    "ForexRates" NVARCHAR2(2000),
    "ExchangeRatesUpdatedTimestamp" TIMESTAMP(7) NOT NULL,
    CONSTRAINT "PK_AccountHolderSettings" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AccountingEntry" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "AccountingEntryType" NUMBER(10) NOT NULL,
    "Description" NVARCHAR2(2000) NOT NULL,
    "Debit" DECIMAL(18, 2) NOT NULL,
    "Credit" DECIMAL(18, 2) NOT NULL,
    "ForexRate" DECIMAL(18, 2) NOT NULL,
    "CurrencyID" NVARCHAR2(450) NOT NULL,
    "DebitAccountID" NVARCHAR2(450) NOT NULL,
    "CreditAccountID" NVARCHAR2(450) NOT NULL,
    "JournalEntryID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "PaymentID" NVARCHAR2(450),
    "WalletAccountID" NVARCHAR2(450),
    "RefundRequestID" NVARCHAR2(450),
    "PaymentDisputeID" NVARCHAR2(450),
    "RequestDate" TIMESTAMP(7),
    "PaymentChargeback_PaymentID" NVARCHAR2(450),
    "BankProfileID" NVARCHAR2(450),
    "PaymentChargeback_PaymentDisputeID" NVARCHAR2(450),
    "PaymentChargeback_WalletAccountID" NVARCHAR2(450),
    CONSTRAINT "PK_AccountingEntry" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_AccountingEntry_Account_CreditAccountID" FOREIGN KEY ("CreditAccountID") REFERENCES "Account" ("ID"),
    CONSTRAINT "FK_AccountingEntry_Account_DebitAccountID" FOREIGN KEY ("DebitAccountID") REFERENCES "Account" ("ID"),
    CONSTRAINT "FK_AccountingEntry_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AccountingPeriodClosingVoucher" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "PostingDate" TIMESTAMP(7) NOT NULL,
    "Remarks" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "FiscalYearID" NVARCHAR2(450),
    "AccountID" NVARCHAR2(450),
    CONSTRAINT "PK_AccountingPeriodClosingVoucher" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_AccountingPeriodClosingVoucher_Account_AccountID" FOREIGN KEY ("AccountID") REFERENCES "Account" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AccountRelation" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "AccountID" NVARCHAR2(450),
    "Type" NVARCHAR2(2000) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ProjectID" NVARCHAR2(450),
    CONSTRAINT "PK_AccountRelation" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_AccountRelation_Account_AccountID" FOREIGN KEY ("AccountID") REFERENCES "Account" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AccountType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_AccountType" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ActivityFeed" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "ContactID" NVARCHAR2(450),
    "DealUnitID" NVARCHAR2(450),
    "MarketingCampaignID" NVARCHAR2(450),
    "MarketingListID" NVARCHAR2(450),
    "ProjectID" NVARCHAR2(450),
    CONSTRAINT "PK_ActivityFeed" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ActivityRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000),
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Completed" NUMBER(1) NOT NULL,
    "DueDate" TIMESTAMP(7) NOT NULL,
    "EnableEmailActivities" NUMBER(1) NOT NULL,
    "EnableTaskActivities" NUMBER(1) NOT NULL,
    "EnableFaxActivities" NUMBER(1) NOT NULL,
    "EnableAlertActivities" NUMBER(1) NOT NULL,
    "EnableAppointmentActivities" NUMBER(1) NOT NULL,
    "EnableAnnotationActivities" NUMBER(1) NOT NULL,
    "EnableLetterActivities" NUMBER(1) NOT NULL,
    "EnablePhoneCallActivities" NUMBER(1) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "ParentActivityID" NVARCHAR2(450),
    "ActivityTypeID" NVARCHAR2(450),
    "ActivityFeedID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "InChargeBusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ActivityRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ActivityRecord_ActivityFeed_ActivityFeedID" FOREIGN KEY ("ActivityFeedID") REFERENCES "ActivityFeed" ("ID"),
    CONSTRAINT "FK_ActivityRecord_ActivityRecord_ParentActivityID" FOREIGN KEY ("ParentActivityID") REFERENCES "ActivityRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ActivityType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ActivityType" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Agreement" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "AgreementTypeID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    CONSTRAINT "PK_Agreement" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AgreementRevision" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "LanguageCode" NVARCHAR2(2000),
    "LanguageIso639_1" NVARCHAR2(450),
    "AgreementID" NVARCHAR2(450),
    "ActiveRevision" NUMBER(1) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "StartDate" TIMESTAMP(7) NOT NULL,
    "AgreementRevisionBody" NVARCHAR2(2000),
    CONSTRAINT "PK_AgreementRevision" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_AgreementRevision_Agreement_AgreementID" FOREIGN KEY ("AgreementID") REFERENCES "Agreement" ("ID"),
    CONSTRAINT "FK_AgreementRevision_CountryLanguage_LanguageIso639_1" FOREIGN KEY ("LanguageIso639_1") REFERENCES "CountryLanguage" ("Iso639_1")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AgreementType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_AgreementType" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AppliedFee" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "FeeID" NVARCHAR2(450),
    "BaseAmount" DECIMAL(18, 2) NOT NULL,
    "TotalCost" DECIMAL(18, 2) NOT NULL,
    "TotalTaxes" DECIMAL(18, 2) NOT NULL,
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "WalletWithdrawID" NVARCHAR2(450),
    "PaymentChargebackID" NVARCHAR2(450),
    "PaymentRefundID" NVARCHAR2(450),
    "PaymentID" NVARCHAR2(450),
    "PaymentGatewayID" NVARCHAR2(450),
    CONSTRAINT "PK_AppliedFee" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_AppliedFee_AccountingEntry_PaymentChargebackID" FOREIGN KEY ("PaymentChargebackID") REFERENCES "AccountingEntry" ("ID"),
    CONSTRAINT "FK_AppliedFee_AccountingEntry_PaymentRefundID" FOREIGN KEY ("PaymentRefundID") REFERENCES "AccountingEntry" ("ID"),
    CONSTRAINT "FK_AppliedFee_Fee_FeeID" FOREIGN KEY ("FeeID") REFERENCES "Fee" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AppliedTaxPolicyRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "TaxPolicyID" NVARCHAR2(450),
    "InvoiceID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    "TaxAmountInUSD" BINARY_DOUBLE NOT NULL,
    "TaxBaseAmountInUSD" BINARY_DOUBLE NOT NULL,
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "BillingItemRecordID" NVARCHAR2(450),
    "PaymentID" NVARCHAR2(450),
    "AppliedFeeID" NVARCHAR2(450),
    CONSTRAINT "PK_AppliedTaxPolicyRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_AppliedTaxPolicyRecord_AppliedFee_AppliedFeeID" FOREIGN KEY ("AppliedFeeID") REFERENCES "AppliedFee" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AppraisalSession" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "AppraisalWorkflowID" NVARCHAR2(450),
    "AppraisalStageID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "EmployeeProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_AppraisalSession" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AspNetUserClaims" (
    "Id" NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    "UserId" NVARCHAR2(450) NOT NULL,
    "ClaimType" NVARCHAR2(2000),
    "ClaimValue" NVARCHAR2(2000),
    CONSTRAINT "PK_AspNetUserClaims" PRIMARY KEY ("Id")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AspNetUserLogins" (
    "LoginProvider" NVARCHAR2(450) NOT NULL,
    "ProviderKey" NVARCHAR2(450) NOT NULL,
    "ProviderDisplayName" NVARCHAR2(2000),
    "UserId" NVARCHAR2(450) NOT NULL,
    CONSTRAINT "PK_AspNetUserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AspNetUserRoles" (
    "UserId" NVARCHAR2(450) NOT NULL,
    "RoleId" NVARCHAR2(450) NOT NULL,
    CONSTRAINT "PK_AspNetUserRoles" PRIMARY KEY ("UserId", "RoleId"),
    CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "AspNetRoles" ("Id")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AspNetUsers" (
    "Id" NVARCHAR2(450) NOT NULL,
    "Handler" NVARCHAR2(2000),
    "NameIdentifier" NVARCHAR2(2000),
    "PublicIdentifier" NVARCHAR2(2000),
    "PublicName" NVARCHAR2(2000) NOT NULL,
    "Name" NVARCHAR2(2000) NOT NULL,
    "LastName" NVARCHAR2(2000) NOT NULL,
    "IdentityProvider" NVARCHAR2(2000),
    "JobTitle" NVARCHAR2(2000),
    "ProfileCoverURL" NVARCHAR2(2000),
    "AvatarURL" NVARCHAR2(2000),
    "About" NVARCHAR2(256),
    "Status" NVARCHAR2(140),
    "WebURL" NVARCHAR2(2000),
    "FacebookURL" NVARCHAR2(2000),
    "YouTubeURL" NVARCHAR2(2000),
    "LinkedInURL" NVARCHAR2(2000),
    "TwitterHandler" NVARCHAR2(15),
    "InstagramUsername" NVARCHAR2(2000),
    "GithubUsername" NVARCHAR2(2000),
    "TaxID" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Birthday" TIMESTAMP(7) NOT NULL,
    "Gender" NUMBER(10) NOT NULL,
    "Availability" NUMBER(10) NOT NULL,
    "LastLoginIP" NVARCHAR2(39),
    "SelectedBusinessID" NVARCHAR2(450),
    "SelectedBusinessAs" NVARCHAR2(2000),
    "CountryLanguageID" NVARCHAR2(450),
    "CountryID" NVARCHAR2(450),
    "CountryStateID" NVARCHAR2(450),
    "CityID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "TimezoneID" NVARCHAR2(450),
    "UserName" NVARCHAR2(256),
    "NormalizedUserName" NVARCHAR2(256),
    "Email" NVARCHAR2(256),
    "NormalizedEmail" NVARCHAR2(256),
    "EmailConfirmed" NUMBER(1) NOT NULL,
    "PasswordHash" NVARCHAR2(2000),
    "SecurityStamp" NVARCHAR2(2000),
    "ConcurrencyStamp" NVARCHAR2(2000),
    "PhoneNumber" NVARCHAR2(2000),
    "PhoneNumberConfirmed" NUMBER(1) NOT NULL,
    "TwoFactorEnabled" NUMBER(1) NOT NULL,
    "LockoutEnd" TIMESTAMP(7) WITH TIME ZONE,
    "LockoutEnabled" NUMBER(1) NOT NULL,
    "AccessFailedCount" NUMBER(10) NOT NULL,
    CONSTRAINT "PK_AspNetUsers" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_AspNetUsers_City_CityID" FOREIGN KEY ("CityID") REFERENCES "City" ("ID"),
    CONSTRAINT "FK_AspNetUsers_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_AspNetUsers_CountryLanguage_CountryLanguageID" FOREIGN KEY ("CountryLanguageID") REFERENCES "CountryLanguage" ("Iso639_1"),
    CONSTRAINT "FK_AspNetUsers_CountryState_CountryStateID" FOREIGN KEY ("CountryStateID") REFERENCES "CountryState" ("ID"),
    CONSTRAINT "FK_AspNetUsers_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_AspNetUsers_Timezone_TimezoneID" FOREIGN KEY ("TimezoneID") REFERENCES "Timezone" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AspNetUserTokens" (
    "UserId" NVARCHAR2(450) NOT NULL,
    "LoginProvider" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(450) NOT NULL,
    "Value" NVARCHAR2(2000),
    CONSTRAINT "PK_AspNetUserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name"),
    CONSTRAINT "FK_AspNetUserTokens_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers" ("Id")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"IPLookup" (
    "ID" NVARCHAR2(450) NOT NULL,
    "IP" NVARCHAR2(2000),
    "ISP" NVARCHAR2(2000),
    "Type" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "UserAgent" NVARCHAR2(2000),
    "BusinessName" NVARCHAR2(2000),
    "BusinessWebsite" NVARCHAR2(2000),
    "City" NVARCHAR2(2000),
    "Region" NVARCHAR2(2000),
    "Continent" NVARCHAR2(2000),
    "Longitud" NVARCHAR2(2000),
    "Latitud" NVARCHAR2(2000),
    "Tor" NUMBER(1) NOT NULL,
    "ASN" NUMBER(19) NOT NULL,
    "VPN" NUMBER(1) NOT NULL,
    "Bot" NUMBER(1) NOT NULL,
    "Proxy" NUMBER(1) NOT NULL,
    "Mobile" NUMBER(1) NOT NULL,
    "Banned" NUMBER(1) NOT NULL,
    "RecentAbuse" NUMBER(1) NOT NULL,
    "KnownAttacker" NUMBER(1) NOT NULL,
    "DeviceOS" NVARCHAR2(2000),
    "DeviceBrand" NVARCHAR2(2000),
    "DeviceModel" NVARCHAR2(2000),
    "DeviceFamily" NVARCHAR2(2000),
    "UserAgentPatch" NVARCHAR2(2000),
    "UserAgentFamily" NVARCHAR2(2000),
    "UserAgentMinor" NVARCHAR2(2000),
    "UserAgentMajor" NVARCHAR2(2000),
    "Timezone" NVARCHAR2(2000),
    "Host" NVARCHAR2(2000),
    "FraudScore" NUMBER(19) NOT NULL,
    "Message" NVARCHAR2(2000),
    "Success" NUMBER(1) NOT NULL,
    "Data" NVARCHAR2(2000),
    "DataLabel" NVARCHAR2(2000),
    "Data1" NVARCHAR2(2000),
    "Data1Label" NVARCHAR2(2000),
    "Data2" NVARCHAR2(2000),
    "Data2Label" NVARCHAR2(2000),
    "Data3" NVARCHAR2(2000),
    "Data3Label" NVARCHAR2(2000),
    "Data4" NVARCHAR2(2000),
    "Data4Label" NVARCHAR2(2000),
    "Data5" NVARCHAR2(2000),
    "Data5Label" NVARCHAR2(2000),
    "Data6" NVARCHAR2(2000),
    "Data6Label" NVARCHAR2(2000),
    "Data7" NVARCHAR2(2000),
    "Data7Label" NVARCHAR2(2000),
    "Data8" NVARCHAR2(2000),
    "Data8Label" NVARCHAR2(2000),
    "Data9" NVARCHAR2(2000),
    "Data9Label" NVARCHAR2(2000),
    "AcknowledgedIP" NUMBER(1) NOT NULL,
    "AcknowledgedDevice" NUMBER(1) NOT NULL,
    "AccountHolderID" NVARCHAR2(450),
    "CountryID" NVARCHAR2(450),
    CONSTRAINT "PK_IPLookup" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_IPLookup_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_IPLookup_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Asset" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "IsExistingAsset" NUMBER(1) NOT NULL,
    "CalculateDepreciation" NUMBER(1) NOT NULL,
    "AllowMontlyDepreciation" NUMBER(1) NOT NULL,
    "OpeningDepreciation" BINARY_DOUBLE NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "AssetType" NUMBER(10) NOT NULL,
    "AssetOwner" NUMBER(10) NOT NULL,
    "PurchaseDate" TIMESTAMP(7) NOT NULL,
    "ItemID" NVARCHAR2(450),
    "AssetCategoryID" NVARCHAR2(450),
    "PurchaseInvoiceID" NVARCHAR2(450),
    "PurchaseReceiptID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "OrganizationDepartmentID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "AssetLocationID" NVARCHAR2(450),
    "FinancialBookID" NVARCHAR2(450),
    CONSTRAINT "PK_Asset" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AssetCategory" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_AssetCategory" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AssetDepreciationRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "FinancialBookID" NVARCHAR2(450),
    CONSTRAINT "PK_AssetDepreciationRecord" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AssetTransfer" (
    "ID" NVARCHAR2(450) NOT NULL,
    "IsRootTransfer" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "SerialList" NVARCHAR2(2000),
    "Quantity" NVARCHAR2(2000),
    "Serial" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "AssetID" NVARCHAR2(450),
    "PreviousShareTransferID" NVARCHAR2(450),
    "PreviousAssetTransferID" NVARCHAR2(2000),
    "SourceLocationID" NVARCHAR2(450),
    "DestinationLocationID" NVARCHAR2(450),
    "SourceContactID" NVARCHAR2(450),
    "DestinationContactID" NVARCHAR2(450),
    "SourceDepartmentID" NVARCHAR2(450),
    "DestinationDepartmentID" NVARCHAR2(450),
    CONSTRAINT "PK_AssetTransfer" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_AssetTransfer_Asset_AssetID" FOREIGN KEY ("AssetID") REFERENCES "Asset" ("ID"),
    CONSTRAINT "FK_AssetTransfer_AssetTransfer_PreviousShareTransferID" FOREIGN KEY ("PreviousShareTransferID") REFERENCES "AssetTransfer" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"AssetValueAmend" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "FinancialBookID" NVARCHAR2(450),
    CONSTRAINT "PK_AssetValueAmend" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BankGuarantee" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Margin" BINARY_DOUBLE NOT NULL,
    "Charges" BINARY_DOUBLE NOT NULL,
    "BeneficiaryName" NVARCHAR2(2000),
    "GuaranteeNumber" NVARCHAR2(2000),
    "GuaranteeConditions" NVARCHAR2(2000),
    "FixedDepositNumber" BINARY_DOUBLE NOT NULL,
    "StartDate" TIMESTAMP(7) NOT NULL,
    "EndDate" TIMESTAMP(7) NOT NULL,
    "ValidityInDays" NUMBER(10) NOT NULL,
    "BankGuaranteeType" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "ProjectID" NVARCHAR2(450),
    "OrderID" NVARCHAR2(450),
    "BankProfileID" NVARCHAR2(450),
    "BankAccountID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    CONSTRAINT "PK_BankGuarantee" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BankGuarantee_Account_BankAccountID" FOREIGN KEY ("BankAccountID") REFERENCES "Account" ("ID"),
    CONSTRAINT "FK_BankGuarantee_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BillingCoupon" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ReleaseDateTime" TIMESTAMP(7) NOT NULL,
    "ExpirationDateTime" TIMESTAMP(7) NOT NULL,
    "Published" NUMBER(1) NOT NULL,
    "Code" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "RestrictedEmails" NVARCHAR2(2000),
    "AllowedEmails" NVARCHAR2(2000),
    "AllowedItems" NVARCHAR2(2000),
    "AllowedCountries" NVARCHAR2(2000),
    "RestrictedCountries" NVARCHAR2(2000),
    "UsageLimit" NUMBER(10) NOT NULL,
    "UsageLimitPerUser" NUMBER(10) NOT NULL,
    "UsageLimitPerItem" NUMBER(10) NOT NULL,
    "ForceSingle" NUMBER(1) NOT NULL,
    "GrantsFreeShipping" NUMBER(1) NOT NULL,
    "MinimumSpend" DECIMAL(18, 2) NOT NULL,
    "MaximumSpend" DECIMAL(18, 2) NOT NULL,
    "DiscountPercent" DECIMAL(18, 2) NOT NULL,
    "DiscountAmount" DECIMAL(18, 2) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_BillingCoupon" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BillingCoupon_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BillingItemRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Description" NVARCHAR2(2000),
    "Quantity" BINARY_DOUBLE NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Free" NUMBER(1) NOT NULL,
    "FreeReason" NVARCHAR2(2000),
    "FreeReasonCode" NVARCHAR2(2000),
    "Data" NVARCHAR2(2000),
    "DataLabel" NVARCHAR2(2000),
    "Data1" NVARCHAR2(2000),
    "Data1Label" NVARCHAR2(2000),
    "Data2" NVARCHAR2(2000),
    "Data2Label" NVARCHAR2(2000),
    "Data3" NVARCHAR2(2000),
    "Data3Label" NVARCHAR2(2000),
    "Data4" NVARCHAR2(2000),
    "Data4Label" NVARCHAR2(2000),
    "Data5" NVARCHAR2(2000),
    "Data5Label" NVARCHAR2(2000),
    "Data6" NVARCHAR2(2000),
    "Data6Label" NVARCHAR2(2000),
    "Data7" NVARCHAR2(2000),
    "Data7Label" NVARCHAR2(2000),
    "Data8" NVARCHAR2(2000),
    "Data8Label" NVARCHAR2(2000),
    "Data9" NVARCHAR2(2000),
    "Data9Label" NVARCHAR2(2000),
    "ItemID" NVARCHAR2(450),
    "ItemPriceID" NVARCHAR2(450),
    "PriceListItemID" NVARCHAR2(450),
    "UnitID" NVARCHAR2(450),
    "UnitGroupID" NVARCHAR2(450),
    "TaxCalculationMethod" NUMBER(10) NOT NULL,
    "CostCalculationMethod" NUMBER(10) NOT NULL,
    "ForexRatesSnapshot" NVARCHAR2(2000),
    "ForexRate" BINARY_DOUBLE NOT NULL,
    "TotalBaseAmountInUSD" BINARY_DOUBLE NOT NULL,
    "TotalProfitInUSD" BINARY_DOUBLE NOT NULL,
    "TotalDetailAmountInUSD" BINARY_DOUBLE NOT NULL,
    "TotalTaxBaseInUSD" BINARY_DOUBLE NOT NULL,
    "TotalDiscountsInUSD" BINARY_DOUBLE NOT NULL,
    "TotalTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalWithholdingTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalShippingCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalShippingTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalWarrantyCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalReturnCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalRefundCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalSurchargesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalAmountInUSD" BINARY_DOUBLE NOT NULL,
    "TotalGlobalDiscountsInUSD" BINARY_DOUBLE NOT NULL,
    "TotalGlobalSurchargesInUSD" BINARY_DOUBLE NOT NULL,
    "CustomGlobalSurchargesAmount" BINARY_DOUBLE NOT NULL,
    "CustomGlobalDiscountsAmount" BINARY_DOUBLE NOT NULL,
    "CustomBaseAmount" BINARY_DOUBLE NOT NULL,
    "CustomDetailAmount" BINARY_DOUBLE NOT NULL,
    "CustomDiscountsAmount" BINARY_DOUBLE NOT NULL,
    "CustomTaxBase" BINARY_DOUBLE NOT NULL,
    "CustomSurchargesAmount" BINARY_DOUBLE NOT NULL,
    "CustomProfitAmount" BINARY_DOUBLE NOT NULL,
    "CustomShippingCostAmount" BINARY_DOUBLE NOT NULL,
    "CustomShippingTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomWithholdingTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomTotalAmount" BINARY_DOUBLE NOT NULL,
    "ReturnPolicyID" NVARCHAR2(450),
    "RefundPolicyID" NVARCHAR2(450),
    "WarrantyPolicyID" NVARCHAR2(450),
    "ItemShipmentPolicyID" NVARCHAR2(450),
    "LocationID" NVARCHAR2(450),
    "QuoteItemRecordID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ParentBillingItemRecordID" NVARCHAR2(450),
    "Type" NVARCHAR2(2000) NOT NULL,
    "Excluded" NUMBER(1),
    "BillingCouponID" NVARCHAR2(450),
    "BillingCouponCartRecord_BillingCouponID" NVARCHAR2(450),
    "CartID" NVARCHAR2(450),
    "BillingCouponOrderRecord_BillingCouponID" NVARCHAR2(450),
    "OrderID" NVARCHAR2(450),
    "InvoiceID" NVARCHAR2(450),
    "AccountingEntryID" NVARCHAR2(450),
    "OrderItemRecord_OrderID" NVARCHAR2(450),
    "ParentOrderID" NVARCHAR2(450),
    "DealUnitID" NVARCHAR2(450),
    "QuoteID" NVARCHAR2(450),
    CONSTRAINT "PK_BillingItemRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BillingItemRecord_AccountingEntry_AccountingEntryID" FOREIGN KEY ("AccountingEntryID") REFERENCES "AccountingEntry" ("ID"),
    CONSTRAINT "FK_BillingItemRecord_BillingCoupon_BillingCouponCartRecord_BillingCouponID" FOREIGN KEY ("BillingCouponCartRecord_BillingCouponID") REFERENCES "BillingCoupon" ("ID"),
    CONSTRAINT "FK_BillingItemRecord_BillingCoupon_BillingCouponID" FOREIGN KEY ("BillingCouponID") REFERENCES "BillingCoupon" ("ID"),
    CONSTRAINT "FK_BillingItemRecord_BillingCoupon_BillingCouponOrderRecord_BillingCouponID" FOREIGN KEY ("BillingCouponOrderRecord_BillingCouponID") REFERENCES "BillingCoupon" ("ID"),
    CONSTRAINT "FK_BillingItemRecord_BillingItemRecord_ParentBillingItemRecordID" FOREIGN KEY ("ParentBillingItemRecordID") REFERENCES "BillingItemRecord" ("ID"),
    CONSTRAINT "FK_BillingItemRecord_BillingItemRecord_QuoteItemRecordID" FOREIGN KEY ("QuoteItemRecordID") REFERENCES "BillingItemRecord" ("ID"),
    CONSTRAINT "FK_BillingItemRecord_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Blockchain" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Name" NVARCHAR2(2000),
    "LogoUrl" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Difficulty" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_Blockchain" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BlockchainBlock" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Index" NUMBER(10) NOT NULL,
    "Data" NVARCHAR2(2000),
    "Hash" NVARCHAR2(2000) NOT NULL,
    "Nonce" NUMBER(19) NOT NULL,
    "PreviousHash" NVARCHAR2(2000),
    "BlockchainID" NVARCHAR2(450) NOT NULL,
    "PreviousBlockchainBlockID" NVARCHAR2(450) NOT NULL,
    "WalletAccountID" NVARCHAR2(450) NOT NULL,
    "NonFungibleTokenID" NVARCHAR2(450),
    CONSTRAINT "PK_BlockchainBlock" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BlockchainBlock_Blockchain_BlockchainID" FOREIGN KEY ("BlockchainID") REFERENCES "Blockchain" ("ID"),
    CONSTRAINT "FK_BlockchainBlock_BlockchainBlock_PreviousBlockchainBlockID" FOREIGN KEY ("PreviousBlockchainBlockID") REFERENCES "BlockchainBlock" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BlockRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BlockerSocialProfileID" NVARCHAR2(450),
    "BlockedSocialProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_BlockRecord" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BrandRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ItemID" NVARCHAR2(450),
    "BrandID" NVARCHAR2(450),
    CONSTRAINT "PK_BrandRecord" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Budget" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "FiscalYearID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "CostCentreID" NVARCHAR2(450),
    "ProjectID" NVARCHAR2(450),
    CONSTRAINT "PK_Budget" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Business" (
    "ID" NVARCHAR2(450) NOT NULL,
    "PublicIdentifier" NVARCHAR2(2000),
    "Root" NUMBER(1) NOT NULL,
    "Public" NUMBER(1) NOT NULL,
    "Personal" NUMBER(1) NOT NULL,
    "Verified" NUMBER(1) NOT NULL,
    "Deleted" NUMBER(1) NOT NULL,
    "CreationTimestamp" TIMESTAMP(7) NOT NULL,
    "DeletionTimestamp" TIMESTAMP(7) NOT NULL,
    "BusinessLegalName" NVARCHAR2(2000) NOT NULL,
    "BusinessName" NVARCHAR2(2000) NOT NULL,
    "Handler" NVARCHAR2(2000) NOT NULL,
    "EnableAutomaticRenovation" NUMBER(1) NOT NULL,
    "AutomaticRenovationToken" NVARCHAR2(2000),
    "BusinessAvatarURL" NVARCHAR2(2000),
    "BusinessProfileCoverURL" NVARCHAR2(2000),
    "AccountingBalance" BINARY_DOUBLE NOT NULL,
    "AccountingDebits" BINARY_DOUBLE NOT NULL,
    "AccountingCredits" BINARY_DOUBLE NOT NULL,
    "TaxID" NVARCHAR2(2000),
    "DUNS" NVARCHAR2(2000),
    "Slogan" NVARCHAR2(2000),
    "About" NVARCHAR2(2000),
    "CorporateBoilerplate" NVARCHAR2(2000),
    "LinkedInPageURL" NVARCHAR2(2000),
    "GithubOrganizationName" NVARCHAR2(2000),
    "TwitterUsername" NVARCHAR2(2000),
    "FacebookPageURL" NVARCHAR2(2000),
    "YouTubeURL" NVARCHAR2(2000),
    "InstagramUsername" NVARCHAR2(2000),
    "WhatsAppNumber" NVARCHAR2(2000),
    "SupportPhoneNumber" NVARCHAR2(2000),
    "WebURL" NVARCHAR2(2000),
    "BusinessEmail" NVARCHAR2(2000) NOT NULL,
    "PortalLogoURL" NVARCHAR2(2000),
    "PortalReverseLogoURL" NVARCHAR2(2000),
    "IncorporationDate" TIMESTAMP(7),
    "ParentBusinessID" NVARCHAR2(450),
    "BusinessTypeID" NVARCHAR2(450),
    "CountryID" NVARCHAR2(450),
    "CountryStateID" NVARCHAR2(450),
    "CityID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "TimezoneID" NVARCHAR2(450),
    "CountryLanguageID" NVARCHAR2(450),
    "BusinessSegmentID" NVARCHAR2(450),
    "BusinessIndustryID" NVARCHAR2(450),
    CONSTRAINT "PK_Business" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Business_Business_ParentBusinessID" FOREIGN KEY ("ParentBusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Business_BusinessSegment_BusinessSegmentID" FOREIGN KEY ("BusinessSegmentID") REFERENCES "BusinessSegment" ("ID"),
    CONSTRAINT "FK_Business_BusinessType_BusinessTypeID" FOREIGN KEY ("BusinessTypeID") REFERENCES "BusinessType" ("ID"),
    CONSTRAINT "FK_Business_City_CityID" FOREIGN KEY ("CityID") REFERENCES "City" ("ID"),
    CONSTRAINT "FK_Business_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_Business_CountryLanguage_CountryLanguageID" FOREIGN KEY ("CountryLanguageID") REFERENCES "CountryLanguage" ("Iso639_1"),
    CONSTRAINT "FK_Business_CountryState_CountryStateID" FOREIGN KEY ("CountryStateID") REFERENCES "CountryState" ("ID"),
    CONSTRAINT "FK_Business_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_Business_Timezone_TimezoneID" FOREIGN KEY ("TimezoneID") REFERENCES "Timezone" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessDomain" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Domain" NVARCHAR2(2000),
    "TXTRecord" NVARCHAR2(2000),
    "Verified" NUMBER(1) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessDomain" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessDomain_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessProfileRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "IsBusinessOwner" NUMBER(1) NOT NULL,
    "IsAdmin" NUMBER(1) NOT NULL,
    "IsRoot" NUMBER(1) NOT NULL,
    "IsDisabled" NUMBER(1) NOT NULL,
    "BusinessID" NVARCHAR2(450) NOT NULL,
    "AccountHolderID" NVARCHAR2(450) NOT NULL,
    CONSTRAINT "PK_BusinessProfileRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessProfileRecord_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_BusinessProfileRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessRelationship" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ParentBusinessID" NVARCHAR2(450),
    "OwnershipPercentage" BINARY_DOUBLE NOT NULL,
    "ChildBusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessRelationship" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessRelationship_Business_ChildBusinessID" FOREIGN KEY ("ChildBusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessRelationship_Business_ParentBusinessID" FOREIGN KEY ("ParentBusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessTenantSettings" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "ForexRates" NVARCHAR2(2000),
    "ExchangeRatesUpdatedTimestamp" TIMESTAMP(7) NOT NULL,
    CONSTRAINT "PK_BusinessTenantSettings" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessTenantSettings_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ContactRelationType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "BackName" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ContactRelationType" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ContactRelationType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ContactSource" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ContactSource" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ContactSource_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CostCentresGroup" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Disabled" NUMBER(1) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "ParentCostCentresGroupID" NVARCHAR2(450),
    CONSTRAINT "PK_CostCentresGroup" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CostCentresGroup_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CostCentresGroup_CostCentresGroup_ParentCostCentresGroupID" FOREIGN KEY ("ParentCostCentresGroupID") REFERENCES "CostCentresGroup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CustomProperty" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "FormFieldDataType" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_CustomProperty" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CustomProperty_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"DeliveryNote" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_DeliveryNote" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_DeliveryNote_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"FinancialBook" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_FinancialBook" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_FinancialBook_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Holiday" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "DurationInDays" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "StartDate" TIMESTAMP(7) NOT NULL,
    "EndDate" TIMESTAMP(7) NOT NULL,
    CONSTRAINT "PK_Holiday" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Holiday_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"HolidaySchedule" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_HolidaySchedule" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_HolidaySchedule_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemAttribute" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemAttribute" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemAttribute_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemBrand" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Code" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "WebsiteURL" NVARCHAR2(2000),
    "LogoURL" NVARCHAR2(2000),
    "Featured" NUMBER(1) NOT NULL,
    "Trending" NUMBER(1) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemBrand" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemBrand_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemBundle" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Code" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Disabled" NUMBER(1) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemBundle" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemBundle_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemFamily" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Code" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemFamily" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemFamily_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemGroup" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Code" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemGroup" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemGroup_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemRestock" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemRestock" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemRestock_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemTag" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemTag" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemTag_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"JobField" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "ImageURL" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_JobField" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_JobField_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"LeaveType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_LeaveType" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_LeaveType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"LicenseValidation" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Valid" NUMBER(1) NOT NULL,
    "Domain" NVARCHAR2(2000),
    "IP" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_LicenseValidation" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_LicenseValidation_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"LocalizationResource" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Comments" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "CountryLanguageID" NVARCHAR2(450),
    "CountryLanguageRecordID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "Base" NVARCHAR2(2000),
    "Value" NVARCHAR2(2000),
    "LocalizationStringID" NVARCHAR2(450),
    CONSTRAINT "PK_LocalizationResource" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_LocalizationResource_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_LocalizationResource_CountryLanguage_CountryLanguageID" FOREIGN KEY ("CountryLanguageID") REFERENCES "CountryLanguage" ("Iso639_1"),
    CONSTRAINT "FK_LocalizationResource_CountryLanguageRecord_CountryLanguageRecordID" FOREIGN KEY ("CountryLanguageRecordID") REFERENCES "CountryLanguageRecord" ("ID"),
    CONSTRAINT "FK_LocalizationResource_LocalizationResource_LocalizationStringID" FOREIGN KEY ("LocalizationStringID") REFERENCES "LocalizationResource" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PaymentGateway" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_PaymentGateway" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PaymentGateway_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ProductionPlan" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ProductionPlan" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ProductionPlan_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SEOKeyWord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Keyword" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_SEOKeyWord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SEOKeyWord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShippingClass" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Slug" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ShippingClass" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShippingClass_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShippingMethod" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Cost" BINARY_DOUBLE NOT NULL,
    "Taxable" NUMBER(1) NOT NULL,
    "TaxIncluded" NUMBER(1) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "ShippingClassCalculationType" NUMBER(10) NOT NULL,
    CONSTRAINT "PK_ShippingMethod" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShippingMethod_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ShippingMethod_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShippingRegion" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "PostalCodes" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ShippingRegion" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShippingRegion_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShippingZone" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Default" NUMBER(1) NOT NULL,
    "Everywhere" NUMBER(1) NOT NULL,
    "PostalCodes" NVARCHAR2(2000),
    "CountryCodes" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ShippingZone" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShippingZone_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SupportTicketType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_SupportTicketType" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SupportTicketType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WebsiteTheme" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Enable" NUMBER(1) NOT NULL,
    "Name" NVARCHAR2(2000),
    "AuthorName" NVARCHAR2(2000),
    "AuthorUrl" NVARCHAR2(2000),
    "Version" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Tags" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_WebsiteTheme" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WebsiteTheme_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WorkOrderType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_WorkOrderType" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WorkOrderType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Workstation" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_Workstation" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Workstation_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessApplication" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Namespace" NVARCHAR2(2000),
    "DisplayName" NVARCHAR2(2000),
    "AvatarURL" NVARCHAR2(2000),
    "WebsiteUrl" NVARCHAR2(2000),
    "IsMultiTenant" NUMBER(1) NOT NULL,
    "IsVerified" NUMBER(1) NOT NULL,
    "IsDisabled" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "VerificationTimestamp" TIMESTAMP(7) NOT NULL,
    "SpaUIEngine" NUMBER(10) NOT NULL,
    "SpaStaticFilesRootPath" NVARCHAR2(2000),
    "SpaRelativeSourcePath" NVARCHAR2(2000),
    "SpaRelativeAppPath" NVARCHAR2(2000),
    "SpaServerUrl" NVARCHAR2(2000),
    "SpaPublishScript" NVARCHAR2(2000),
    "SpaPrePublishScript" NVARCHAR2(2000),
    "SpaPostPublishScript" NVARCHAR2(2000),
    "SpaInstallScript" NVARCHAR2(2000),
    "SpaPreInstallScript" NVARCHAR2(2000),
    "SpaPostInstallScript" NVARCHAR2(2000),
    "SpaStartScript" NVARCHAR2(2000),
    "SpaPreStartScript" NVARCHAR2(2000),
    "SpaPostStartScript" NVARCHAR2(2000),
    "SpaPackageManager" NVARCHAR2(2000),
    "SpaNpmInstallScript" NVARCHAR2(2000),
    "SpaNpmStartScript" NVARCHAR2(2000),
    "SpaNpmPublishScript" NVARCHAR2(2000),
    "SpaRelativeOutputPath" NVARCHAR2(2000),
    "UseProxyToSpaDevelopmentServer" NUMBER(1) NOT NULL,
    "SpaDevelopmentServerUri" NVARCHAR2(2000),
    "IsSinglePageApplication" NUMBER(1) NOT NULL,
    "IsNativeOrDesktopApp" NUMBER(1) NOT NULL,
    "SystemLocked" NUMBER(1) NOT NULL,
    "RequireHttps" NUMBER(1) NOT NULL,
    "RequireAppSecret" NUMBER(1) NOT NULL,
    "EnableClientOauthLogin" NUMBER(1) NOT NULL,
    "EnableWebOAuthLogin" NUMBER(1) NOT NULL,
    "EnableDeviceOAuthLogin" NUMBER(1) NOT NULL,
    "AllowAccessToSuiteSettings" NUMBER(1) NOT NULL,
    "RequireWebOAuthReauthentication" NUMBER(1) NOT NULL,
    "RequireTwoFactorReauthorization" NUMBER(1) NOT NULL,
    "EnableEmbeddedBrowserOAuthLogin" NUMBER(1) NOT NULL,
    "UseStrictModeForRedirectURIs" NUMBER(1) NOT NULL,
    "CountryRestricted" NUMBER(1) NOT NULL,
    "RestrictedCountries" NVARCHAR2(2000),
    "DataDeletionRequestURL" NVARCHAR2(2000),
    "DeauthorizeCallbackURL" NVARCHAR2(2000),
    "DataProtectionOfficerEmail" NVARCHAR2(2000),
    "DataProtectionOfficerName" NVARCHAR2(2000),
    "DataProtectionOfficerAddress1" NVARCHAR2(2000),
    "DataProtectionOfficerAddress2" NVARCHAR2(2000),
    "DataProtectionOfficerAddress3" NVARCHAR2(2000),
    "DataProtectionOfficerCity" NVARCHAR2(2000),
    "DataProtectionOfficerState" NVARCHAR2(2000),
    "DataProtectionOfficerPostalCode" NVARCHAR2(2000),
    "DataProtectionOfficerCountry" NVARCHAR2(2000),
    "ContactEmail" NVARCHAR2(2000),
    "PrivacyPolicyURL" NVARCHAR2(2000),
    "TermsAndConditionsURL" NVARCHAR2(2000),
    "AllowedDomains" NVARCHAR2(2000),
    "ServerIPAllowlist" NVARCHAR2(2000),
    "UpdateSettingsIPAllowlist" NVARCHAR2(2000),
    "UpdateSettingsNotificationEmails" NVARCHAR2(2000),
    "AllowCrossDomainShareRedirects" NVARCHAR2(2000),
    "ValidOAuthRedirectURIs" NVARCHAR2(2000),
    "EnableGitRepoManagement" NUMBER(1) NOT NULL,
    "MarkedForPublish" NUMBER(1) NOT NULL,
    "PublishResultMessages" NVARCHAR2(2000),
    "InstallResultMessages" NVARCHAR2(2000),
    "StartResultMessages" NVARCHAR2(2000),
    "GitResultMessages" NVARCHAR2(2000),
    "GitRepoUrl" NVARCHAR2(2000),
    "GitBranch" NVARCHAR2(2000),
    "GitRepo" NVARCHAR2(2000),
    "GitUser" NVARCHAR2(2000),
    "IsGitPrivateRepo" NUMBER(1) NOT NULL,
    "GitToken" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    CONSTRAINT "PK_BusinessApplication" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessApplication_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessApplication_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessIndustry" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "ParentBusinessIndustryID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessIndustry" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessIndustry_BusinessIndustry_ParentBusinessIndustryID" FOREIGN KEY ("ParentBusinessIndustryID") REFERENCES "BusinessIndustry" ("ID"),
    CONSTRAINT "FK_BusinessIndustry_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessPermission" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "IsSystemPermission" NUMBER(1) NOT NULL,
    "Description" NVARCHAR2(2000),
    "Category" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessPermission" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessPermission_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessPermission_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessPosition" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Type" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessPosition" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessPosition_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessPosition_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessProcess" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ParentBusinessProcessID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    CONSTRAINT "PK_BusinessProcess" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessProcess_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessProcess_BusinessProcess_ParentBusinessProcessID" FOREIGN KEY ("ParentBusinessProcessID") REFERENCES "BusinessProcess" ("ID"),
    CONSTRAINT "FK_BusinessProcess_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessProfileInvitation" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Email" NVARCHAR2(2000),
    "Redeemed" NUMBER(1) NOT NULL,
    "RedeemedTimestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450) NOT NULL,
    "BusinessProfileRecordID" NVARCHAR2(450) NOT NULL,
    CONSTRAINT "PK_BusinessProfileInvitation" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessProfileInvitation_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessProfileInvitation_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

CREATE OR REPLACE TRIGGER "rowversion_BusinessProfileInvitation"
BEFORE INSERT OR UPDATE ON "BusinessProfileInvitation"
FOR EACH ROW
BEGIN
  :NEW."RedeemedTimestamp" := UTL_RAW.CAST_FROM_BINARY_INTEGER(UTL_RAW.CAST_TO_BINARY_INTEGER(NVL(:OLD."RedeemedTimestamp", '00000000')) + 1);
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessSecurityRole" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "IsSystemSecurityRole" NUMBER(1) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessSecurityRole" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessSecurityRole_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessSecurityRole_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CognitiveAgent" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Avatar" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_CognitiveAgent" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CognitiveAgent_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CognitiveAgent_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CurriculumSkill" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CurriculumSkillType" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_CurriculumSkill" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CurriculumSkill_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CurriculumSkill_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"DiscountList" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "DiscountListType" NUMBER(10) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_DiscountList" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_DiscountList_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_DiscountList_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_DiscountList_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"EmailGroup" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "MyProperty" NUMBER(10) NOT NULL,
    CONSTRAINT "PK_EmailGroup" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_EmailGroup_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_EmailGroup_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"EmployeeBenefit" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "EffectiveDate" TIMESTAMP(7) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_EmployeeBenefit" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_EmployeeBenefit_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_EmployeeBenefit_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"EmployeeType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_EmployeeType" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_EmployeeType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_EmployeeType_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"FiscalAuthority" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000) NOT NULL,
    "LogoURL" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CountryID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_FiscalAuthority" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_FiscalAuthority_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_FiscalAuthority_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_FiscalAuthority_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ForeignExchangeSet" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "UpdateTimestamp" TIMESTAMP(7) NOT NULL,
    "Year" NUMBER(10) NOT NULL,
    "Month" NUMBER(10) NOT NULL,
    "Day" NUMBER(10) NOT NULL,
    "Values" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ForeignExchangeSet" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ForeignExchangeSet_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ForeignExchangeSet_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Integration" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Type" NVARCHAR2(2000) NOT NULL,
    "APIKeyAuthPosition" NUMBER(10) NOT NULL,
    "IntegationAuthType" NUMBER(10) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "LastRenewal" TIMESTAMP(7) NOT NULL,
    "Expiration" TIMESTAMP(7) NOT NULL,
    "ExpiresIn" NUMBER(19) NOT NULL,
    "Scopes" NVARCHAR2(2000),
    "TokenType" NVARCHAR2(2000),
    "Nonce" NVARCHAR2(2000),
    "Username" NVARCHAR2(2000),
    "Password" NVARCHAR2(2000),
    "AccessCode" NVARCHAR2(2000),
    "AuthorizationCode" NVARCHAR2(2000),
    "BaseURL" NVARCHAR2(2000),
    "RequestURL" NVARCHAR2(2000),
    "AccessToken" NVARCHAR2(2000),
    "RefreshToken" NVARCHAR2(2000),
    "Realm" NVARCHAR2(2000),
    "HeaderKey" NVARCHAR2(2000),
    "APIKey" NVARCHAR2(2000),
    "ApiSecret" NVARCHAR2(2000),
    "NonceCount" NVARCHAR2(2000),
    "ClientNonce" NVARCHAR2(2000),
    "QualityOfProtection" NVARCHAR2(2000),
    "Opaque" NVARCHAR2(2000),
    "DigestAuthAlgorithm" NUMBER(10) NOT NULL,
    "ConsumerKey" NVARCHAR2(2000),
    "ConsumerSecret" NVARCHAR2(2000),
    "TokenSecret" NVARCHAR2(2000),
    "Version" NVARCHAR2(2000),
    "OAuth1SignatureMethod" NUMBER(10) NOT NULL,
    "HawkAuthID" NVARCHAR2(2000),
    "HawkAuthKey" NVARCHAR2(2000),
    "User" NVARCHAR2(2000),
    "Ext" NVARCHAR2(2000),
    "App" NVARCHAR2(2000),
    "Dlg" NVARCHAR2(2000),
    "IncludePayloadHash" NUMBER(1) NOT NULL,
    "HawkAuthAlgorithm" NUMBER(10) NOT NULL,
    "Domain" NVARCHAR2(2000),
    "Workstation" NVARCHAR2(2000),
    "AccessKey" NVARCHAR2(2000),
    "SecretKey" NVARCHAR2(2000),
    "AWSRegion" NVARCHAR2(2000),
    "ServiceName" NVARCHAR2(2000),
    "SessionToken" NVARCHAR2(2000),
    "ClientToken" NVARCHAR2(2000),
    "ClientSecret" NVARCHAR2(2000),
    "HeadersToSign" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "EventType" NUMBER(10),
    "EntityType" NUMBER(10),
    "RequestEncoding" NUMBER(10),
    CONSTRAINT "PK_Integration" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Integration_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_Integration_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Integration_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemCategory" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "ImageURL" NVARCHAR2(2000),
    "IsFeatured" NUMBER(1) NOT NULL,
    "EnableForCourses" NUMBER(1) NOT NULL,
    "EnableForProducts" NUMBER(1) NOT NULL,
    "EnableForLicenses" NUMBER(1) NOT NULL,
    "EnableForServices" NUMBER(1) NOT NULL,
    "EnableForSubscriptions" NUMBER(1) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ParentItemCategoryID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    CONSTRAINT "PK_ItemCategory" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemCategory_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ItemCategory_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ItemCategory_ItemCategory_ParentItemCategoryID" FOREIGN KEY ("ParentItemCategoryID") REFERENCES "ItemCategory" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"JobTitle" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "GrossPay" BINARY_DOUBLE NOT NULL,
    "NetSalary" BINARY_DOUBLE NOT NULL,
    "BusinessProfileRecordID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_JobTitle" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_JobTitle_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_JobTitle_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"JournalType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_JournalType" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_JournalType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_JournalType_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"LedgerType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "LedgerClass" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_LedgerType" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_LedgerType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_LedgerType_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"MaintenanceVisit" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_MaintenanceVisit" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_MaintenanceVisit_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_MaintenanceVisit_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"MarketingArea" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_MarketingArea" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_MarketingArea_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_MarketingArea_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"MarketingList" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Locked" NUMBER(1) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Purpose" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Source" NVARCHAR2(2000),
    "Cost" BINARY_DOUBLE NOT NULL,
    "ModifiedOn" TIMESTAMP(7) NOT NULL,
    "LastUsedOn" TIMESTAMP(7) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "MarketingListType" NUMBER(10) NOT NULL,
    "MarketingListTarget" NUMBER(10) NOT NULL,
    CONSTRAINT "PK_MarketingList" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_MarketingList_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_MarketingList_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_MarketingList_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Newsletter" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Code" NVARCHAR2(2000),
    "Title" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_Newsletter" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Newsletter_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Newsletter_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PaymentMode" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_PaymentMode" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PaymentMode_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_PaymentMode_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ProficiencyRatingModel" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "MinRatingValue" NUMBER(10) NOT NULL,
    "MaxRatingValue" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ProficiencyRatingModel" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ProficiencyRatingModel_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ProficiencyRatingModel_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ProjectJournal" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Submitted" NUMBER(1) NOT NULL,
    "Description" NVARCHAR2(2000),
    "JournalType" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ProjectJournal" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ProjectJournal_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ProjectJournal_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ProjectResource" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ProjectResource" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ProjectResource_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ProjectResource_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ProjectResourceRole" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "TargetUtilization" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ProjectResourceRole" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ProjectResourceRole_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ProjectResourceRole_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SalesLiteratureType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_SalesLiteratureType" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SalesLiteratureType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SalesLiteratureType_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ServiceCaseType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ServiceCaseType" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ServiceCaseType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ServiceCaseType_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShareClass" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ForexRates" NVARCHAR2(2000),
    "Value" NUMBER(1) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ShareClass" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShareClass_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ShareClass_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ShareClass_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShareIssuance" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "UnitPrice" NUMBER(10) NOT NULL,
    "Quantity" NUMBER(10) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    CONSTRAINT "PK_ShareIssuance" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShareIssuance_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ShareIssuance_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ShareIssuance_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShareTransferReason" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ShareTransferReason" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShareTransferReason_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ShareTransferReason_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShippingCourier" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "LogoURL" NVARCHAR2(2000),
    "CountryID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ShippingCourier" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShippingCourier_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ShippingCourier_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ShippingCourier_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SocialBadge" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Image" NVARCHAR2(2000),
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_SocialBadge" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SocialBadge_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SocialBadge_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SocialPostBucket" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_SocialPostBucket" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SocialPostBucket_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SocialPostBucket_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SupplierGroup" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_SupplierGroup" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SupplierGroup_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SupplierGroup_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SustainabilityProfile" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_SustainabilityProfile" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SustainabilityProfile_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SustainabilityProfile_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Territory" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ParentTerritoryID" NVARCHAR2(450),
    "AccountHolderId" NVARCHAR2(450),
    CONSTRAINT "PK_Territory" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Territory_AspNetUsers_AccountHolderId" FOREIGN KEY ("AccountHolderId") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_Territory_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Territory_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Territory_Territory_ParentTerritoryID" FOREIGN KEY ("ParentTerritoryID") REFERENCES "Territory" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"TrainingProgram" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_TrainingProgram" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_TrainingProgram_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_TrainingProgram_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"TransactionCategory" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_TransactionCategory" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_TransactionCategory_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_TransactionCategory_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"UnitGroup" (
    "ID" NVARCHAR2(450) NOT NULL,
    "SystemLocked" NUMBER(1) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_UnitGroup" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_UnitGroup_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_UnitGroup_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CostCentre" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Disabled" NUMBER(1) NOT NULL,
    "Description" NVARCHAR2(2000),
    "CostCentreType" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "CostCentresGroupID" NVARCHAR2(450),
    "ParentCostCentreID" NVARCHAR2(450),
    CONSTRAINT "PK_CostCentre" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CostCentre_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CostCentre_CostCentre_ParentCostCentreID" FOREIGN KEY ("ParentCostCentreID") REFERENCES "CostCentre" ("ID"),
    CONSTRAINT "FK_CostCentre_CostCentresGroup_CostCentresGroupID" FOREIGN KEY ("CostCentresGroupID") REFERENCES "CostCentresGroup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"HolidayScheduleRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "HolidayID" NVARCHAR2(450),
    "HolidayScheduleID" NVARCHAR2(450),
    CONSTRAINT "PK_HolidayScheduleRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_HolidayScheduleRecord_Holiday_HolidayID" FOREIGN KEY ("HolidayID") REFERENCES "Holiday" ("ID"),
    CONSTRAINT "FK_HolidayScheduleRecord_HolidaySchedule_HolidayScheduleID" FOREIGN KEY ("HolidayScheduleID") REFERENCES "HolidaySchedule" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemAttributeOption" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "ItemAttributeID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemAttributeOption" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemAttributeOption_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ItemAttributeOption_ItemAttribute_ItemAttributeID" FOREIGN KEY ("ItemAttributeID") REFERENCES "ItemAttribute" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SEOKeyWordRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "SEOKeyWordID" NVARCHAR2(450),
    CONSTRAINT "PK_SEOKeyWordRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SEOKeyWordRecord_SEOKeyWord_SEOKeyWordID" FOREIGN KEY ("SEOKeyWordID") REFERENCES "SEOKeyWord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShippingMethodClassRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ShippingMethodID" NVARCHAR2(450),
    "Cost" BINARY_DOUBLE NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "ShippingClassID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ShippingMethodClassRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShippingMethodClassRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ShippingMethodClassRecord_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_ShippingMethodClassRecord_ShippingClass_ShippingClassID" FOREIGN KEY ("ShippingClassID") REFERENCES "ShippingClass" ("ID"),
    CONSTRAINT "FK_ShippingMethodClassRecord_ShippingMethod_ShippingMethodID" FOREIGN KEY ("ShippingMethodID") REFERENCES "ShippingMethod" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShippingRegionCountryRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ShippingRegionID" NVARCHAR2(450),
    "CountryID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ShippingRegionCountryRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShippingRegionCountryRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ShippingRegionCountryRecord_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_ShippingRegionCountryRecord_ShippingRegion_ShippingRegionID" FOREIGN KEY ("ShippingRegionID") REFERENCES "ShippingRegion" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShippingMethodZoneRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Enabled" NUMBER(1) NOT NULL,
    "ShippingMethodID" NVARCHAR2(450),
    "ShippingZoneID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ShippingMethodZoneRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShippingMethodZoneRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ShippingMethodZoneRecord_ShippingMethod_ShippingMethodID" FOREIGN KEY ("ShippingMethodID") REFERENCES "ShippingMethod" ("ID"),
    CONSTRAINT "FK_ShippingMethodZoneRecord_ShippingZone_ShippingZoneID" FOREIGN KEY ("ShippingZoneID") REFERENCES "ShippingZone" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShippingRegionZoneRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ShippingRegionID" NVARCHAR2(450),
    "ShippingZoneID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ShippingRegionZoneRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShippingRegionZoneRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ShippingRegionZoneRecord_ShippingRegion_ShippingRegionID" FOREIGN KEY ("ShippingRegionID") REFERENCES "ShippingRegion" ("ID"),
    CONSTRAINT "FK_ShippingRegionZoneRecord_ShippingZone_ShippingZoneID" FOREIGN KEY ("ShippingZoneID") REFERENCES "ShippingZone" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WebResource" (
    "ID" NVARCHAR2(450) NOT NULL,
    "WebsiteThemeID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "WebsiteScript_Order" NUMBER(10),
    "Script" NVARCHAR2(2000),
    "ScriptDisposition" NUMBER(10),
    "Order" NUMBER(10),
    "Style" NVARCHAR2(2000),
    "StyleSheetDisposition" NUMBER(10),
    CONSTRAINT "PK_WebResource" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WebResource_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_WebResource_WebsiteTheme_WebsiteThemeID" FOREIGN KEY ("WebsiteThemeID") REFERENCES "WebsiteTheme" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WorkOrder" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "WorkOrderTypeID" NVARCHAR2(450),
    CONSTRAINT "PK_WorkOrder" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WorkOrder_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_WorkOrder_WorkOrderType_WorkOrderTypeID" FOREIGN KEY ("WorkOrderTypeID") REFERENCES "WorkOrderType" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessApplicationQueryRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessApplicationID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessApplicationQueryRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessApplicationQueryRecord_BusinessApplication_BusinessApplicationID" FOREIGN KEY ("BusinessApplicationID") REFERENCES "BusinessApplication" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessApplicationReplyURL" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ReplyURL" NVARCHAR2(2000),
    "BusinessApplicationID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessApplicationReplyURL" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessApplicationReplyURL_BusinessApplication_BusinessApplicationID" FOREIGN KEY ("BusinessApplicationID") REFERENCES "BusinessApplication" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessApplicationSecret" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Revoked" NUMBER(1) NOT NULL,
    "PublicKey" NVARCHAR2(2000),
    "PrivateKey" NVARCHAR2(2000),
    "SigningPublicKey" NVARCHAR2(2000),
    "SigningPrivateKey" NVARCHAR2(2000),
    "AccessKeyPairID" NVARCHAR2(450),
    "JwtSigningAccessKeyPairID" NVARCHAR2(450),
    "BusinessApplicationSecretPeriod" NUMBER(10) NOT NULL,
    "BusinessApplicationID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessApplicationSecret" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessApplicationSecret_AccessKeyPair_AccessKeyPairID" FOREIGN KEY ("AccessKeyPairID") REFERENCES "AccessKeyPair" ("IP"),
    CONSTRAINT "FK_BusinessApplicationSecret_AccessKeyPair_JwtSigningAccessKeyPairID" FOREIGN KEY ("JwtSigningAccessKeyPairID") REFERENCES "AccessKeyPair" ("IP"),
    CONSTRAINT "FK_BusinessApplicationSecret_BusinessApplication_BusinessApplicationID" FOREIGN KEY ("BusinessApplicationID") REFERENCES "BusinessApplication" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"OpenIddictEntityFrameworkCoreApplication" (
    "Id" NVARCHAR2(450) NOT NULL,
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "Logo" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "BusinessApplicationID" NVARCHAR2(450),
    "ClientId" NVARCHAR2(2000),
    "ClientSecret" NVARCHAR2(2000),
    "ConcurrencyToken" NVARCHAR2(2000),
    "ConsentType" NVARCHAR2(2000),
    "DisplayName" NVARCHAR2(2000),
    "DisplayNames" NVARCHAR2(2000),
    "Permissions" NVARCHAR2(2000),
    "PostLogoutRedirectUris" NVARCHAR2(2000),
    "Properties" NVARCHAR2(2000),
    "RedirectUris" NVARCHAR2(2000),
    "Requirements" NVARCHAR2(2000),
    "Type" NVARCHAR2(2000),
    CONSTRAINT "PK_OpenIddictEntityFrameworkCoreApplication" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_OpenIddictEntityFrameworkCoreApplication_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_OpenIddictEntityFrameworkCoreApplication_BusinessApplication_BusinessApplicationID" FOREIGN KEY ("BusinessApplicationID") REFERENCES "BusinessApplication" ("ID"),
    CONSTRAINT "FK_OpenIddictEntityFrameworkCoreApplication_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WebPortal" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Root" NUMBER(1) NOT NULL,
    "Disabled" NUMBER(1) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "BusinessDomainID" NVARCHAR2(450),
    "WebsiteThemeID" NVARCHAR2(450),
    "BusinessPortalApplicationID" NVARCHAR2(450),
    "PublicKey" NVARCHAR2(2000),
    "PrivateKey" NVARCHAR2(2000),
    "Domain" NVARCHAR2(2000),
    "Settings" NVARCHAR2(2000),
    CONSTRAINT "PK_WebPortal" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WebPortal_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_WebPortal_BusinessApplication_BusinessPortalApplicationID" FOREIGN KEY ("BusinessPortalApplicationID") REFERENCES "BusinessApplication" ("ID"),
    CONSTRAINT "FK_WebPortal_BusinessDomain_BusinessDomainID" FOREIGN KEY ("BusinessDomainID") REFERENCES "BusinessDomain" ("ID"),
    CONSTRAINT "FK_WebPortal_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_WebPortal_WebsiteTheme_WebsiteThemeID" FOREIGN KEY ("WebsiteThemeID") REFERENCES "WebsiteTheme" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessIndustryRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessIndustryID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessIndustryRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessIndustryRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessIndustryRecord_BusinessIndustry_BusinessIndustryID" FOREIGN KEY ("BusinessIndustryID") REFERENCES "BusinessIndustry" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessApplicationRequestedPermission" (
    "ID" NVARCHAR2(450) NOT NULL,
    "IsOptional" NUMBER(1) NOT NULL,
    "BusinessPermissionID" NVARCHAR2(450),
    "BusinessApplicationID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessApplicationRequestedPermission" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessApplicationRequestedPermission_BusinessApplication_BusinessApplicationID" FOREIGN KEY ("BusinessApplicationID") REFERENCES "BusinessApplication" ("ID"),
    CONSTRAINT "FK_BusinessApplicationRequestedPermission_BusinessPermission_BusinessPermissionID" FOREIGN KEY ("BusinessPermissionID") REFERENCES "BusinessPermission" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessProcessStage" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "StageOrder" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "BusinessProcessID" NVARCHAR2(450),
    "ParentBusinessProcessStageID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "DealUnitFlowID" NVARCHAR2(450),
    "AppraisalWorkflowID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessProcessStage" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessProcessStage_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessProcessStage_BusinessProcess_AppraisalWorkflowID" FOREIGN KEY ("AppraisalWorkflowID") REFERENCES "BusinessProcess" ("ID"),
    CONSTRAINT "FK_BusinessProcessStage_BusinessProcess_BusinessProcessID" FOREIGN KEY ("BusinessProcessID") REFERENCES "BusinessProcess" ("ID"),
    CONSTRAINT "FK_BusinessProcessStage_BusinessProcess_DealUnitFlowID" FOREIGN KEY ("DealUnitFlowID") REFERENCES "BusinessProcess" ("ID"),
    CONSTRAINT "FK_BusinessProcessStage_BusinessProcessStage_ParentBusinessProcessStageID" FOREIGN KEY ("ParentBusinessProcessStageID") REFERENCES "BusinessProcessStage" ("ID"),
    CONSTRAINT "FK_BusinessProcessStage_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessPermissionGrant" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessPermissionID" NVARCHAR2(450),
    "GrantorBusinessProfileRecordID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "BusinessApplicationID" NVARCHAR2(450),
    "BusinessApplicationGrantScope" NUMBER(10),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "BusinessSecurityRoleID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessPermissionGrant" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessPermissionGrant_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessPermissionGrant_BusinessApplication_BusinessApplicationID" FOREIGN KEY ("BusinessApplicationID") REFERENCES "BusinessApplication" ("ID"),
    CONSTRAINT "FK_BusinessPermissionGrant_BusinessPermission_BusinessPermissionID" FOREIGN KEY ("BusinessPermissionID") REFERENCES "BusinessPermission" ("ID"),
    CONSTRAINT "FK_BusinessPermissionGrant_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_BusinessPermissionGrant_BusinessProfileRecord_GrantorBusinessProfileRecordID" FOREIGN KEY ("GrantorBusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_BusinessPermissionGrant_BusinessSecurityRole_BusinessSecurityRoleID" FOREIGN KEY ("BusinessSecurityRoleID") REFERENCES "BusinessSecurityRole" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SecurityRoleGrant" (
    "ID" NVARCHAR2(450) NOT NULL,
    "GrantorBusinessProfileRecordID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessSecurityRoleID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "BusinessApplicationID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_SecurityRoleGrant" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SecurityRoleGrant_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SecurityRoleGrant_BusinessApplication_BusinessApplicationID" FOREIGN KEY ("BusinessApplicationID") REFERENCES "BusinessApplication" ("ID"),
    CONSTRAINT "FK_SecurityRoleGrant_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_SecurityRoleGrant_BusinessProfileRecord_GrantorBusinessProfileRecordID" FOREIGN KEY ("GrantorBusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_SecurityRoleGrant_BusinessSecurityRole_BusinessSecurityRoleID" FOREIGN KEY ("BusinessSecurityRoleID") REFERENCES "BusinessSecurityRole" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Discount" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Description" NVARCHAR2(2000),
    "BeginQuantity" BINARY_DOUBLE NOT NULL,
    "EndQuantity" BINARY_DOUBLE NOT NULL,
    "Percent" BINARY_DOUBLE NOT NULL,
    "Value" BINARY_DOUBLE NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "DiscountListID" NVARCHAR2(450),
    CONSTRAINT "PK_Discount" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Discount_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Discount_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Discount_DiscountList_DiscountListID" FOREIGN KEY ("DiscountListID") REFERENCES "DiscountList" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"FiscalIdentificationType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Code" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "FiscalAuthorityID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_FiscalIdentificationType" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_FiscalIdentificationType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_FiscalIdentificationType_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_FiscalIdentificationType_FiscalAuthority_FiscalAuthorityID" FOREIGN KEY ("FiscalAuthorityID") REFERENCES "FiscalAuthority" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"FiscalRegime" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Code" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "FiscalAuthorityID" NVARCHAR2(450),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_FiscalRegime" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_FiscalRegime_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_FiscalRegime_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_FiscalRegime_FiscalAuthority_FiscalAuthorityID" FOREIGN KEY ("FiscalAuthorityID") REFERENCES "FiscalAuthority" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"FiscalResponsibility" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Code" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "FiscalAuthorityID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_FiscalResponsibility" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_FiscalResponsibility_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_FiscalResponsibility_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_FiscalResponsibility_FiscalAuthority_FiscalAuthorityID" FOREIGN KEY ("FiscalAuthorityID") REFERENCES "FiscalAuthority" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"FiscalYear" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Disabled" NUMBER(1) NOT NULL,
    "Default" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Start" TIMESTAMP(7) NOT NULL,
    "End" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "FiscalAuthorityID" NVARCHAR2(450),
    CONSTRAINT "PK_FiscalYear" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_FiscalYear_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_FiscalYear_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_FiscalYear_FiscalAuthority_FiscalAuthorityID" FOREIGN KEY ("FiscalAuthorityID") REFERENCES "FiscalAuthority" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"InvoiceEnumerationRange" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Prefix" NVARCHAR2(2000),
    "Suffix" NVARCHAR2(2000),
    "Identifier" NVARCHAR2(2000),
    "CurrentNumeration" NUMBER(19) NOT NULL,
    "NumerationFrom" NUMBER(19) NOT NULL,
    "NumerationTo" NUMBER(19) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ValidFrom" TIMESTAMP(7) NOT NULL,
    "ValidTo" TIMESTAMP(7) NOT NULL,
    "FiscalAuthorityID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "DocumentType" NUMBER(10) NOT NULL,
    CONSTRAINT "PK_InvoiceEnumerationRange" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_InvoiceEnumerationRange_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_InvoiceEnumerationRange_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_InvoiceEnumerationRange_FiscalAuthority_FiscalAuthorityID" FOREIGN KEY ("FiscalAuthorityID") REFERENCES "FiscalAuthority" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WebhookRequestCondition" (
    "ID" NVARCHAR2(450) NOT NULL,
    "WebhookRequestID" NVARCHAR2(450),
    "PropertyName" NVARCHAR2(2000),
    "ExpectedValue" NVARCHAR2(2000),
    CONSTRAINT "PK_WebhookRequestCondition" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WebhookRequestCondition_Integration_WebhookRequestID" FOREIGN KEY ("WebhookRequestID") REFERENCES "Integration" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WebhookRequestDataEntry" (
    "ID" NVARCHAR2(450) NOT NULL,
    "WebhookRequestID" NVARCHAR2(450),
    "Key" NVARCHAR2(2000),
    "PropertyName" NVARCHAR2(2000),
    CONSTRAINT "PK_WebhookRequestDataEntry" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WebhookRequestDataEntry_Integration_WebhookRequestID" FOREIGN KEY ("WebhookRequestID") REFERENCES "Integration" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WebhookRequestHeader" (
    "ID" NVARCHAR2(450) NOT NULL,
    "WebhookRequestID" NVARCHAR2(450),
    "HeaderKey" NVARCHAR2(2000),
    "HeaderValue" NVARCHAR2(2000),
    CONSTRAINT "PK_WebhookRequestHeader" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WebhookRequestHeader_Integration_WebhookRequestID" FOREIGN KEY ("WebhookRequestID") REFERENCES "Integration" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "PluralTitle" NVARCHAR2(2000),
    "SingularTitle" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "ImageURL" NVARCHAR2(2000),
    "GoogleCategoryTaxonomy" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "ItemCategoryID" NVARCHAR2(450),
    "ItemGoogleCategoryID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemType" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ItemType_ItemCategory_ItemCategoryID" FOREIGN KEY ("ItemCategoryID") REFERENCES "ItemCategory" ("ID"),
    CONSTRAINT "FK_ItemType_ItemGoogleCategory_ItemGoogleCategoryID" FOREIGN KEY ("ItemGoogleCategoryID") REFERENCES "ItemGoogleCategory" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Ledger" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "DateTime" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "LedgerTypeID" NVARCHAR2(450),
    CONSTRAINT "PK_Ledger" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Ledger_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Ledger_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Ledger_LedgerType_LedgerTypeID" FOREIGN KEY ("LedgerTypeID") REFERENCES "LedgerType" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"MarketingCampaign" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Offer" NVARCHAR2(2000),
    "Active" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ProposedStart" TIMESTAMP(7) NOT NULL,
    "ProposedEnd" TIMESTAMP(7) NOT NULL,
    "ActualStart" TIMESTAMP(7) NOT NULL,
    "ActualEnd" TIMESTAMP(7) NOT NULL,
    "Code" NVARCHAR2(2000),
    "AllocatedBudget" BINARY_DOUBLE NOT NULL,
    "ActivityCost" BINARY_DOUBLE NOT NULL,
    "MiscCost" BINARY_DOUBLE NOT NULL,
    "ExpectedResponsePercent" BINARY_DOUBLE NOT NULL,
    "MarketingAreaID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "MarketingListID" NVARCHAR2(450),
    CONSTRAINT "PK_MarketingCampaign" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_MarketingCampaign_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_MarketingCampaign_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_MarketingCampaign_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_MarketingCampaign_MarketingArea_MarketingAreaID" FOREIGN KEY ("MarketingAreaID") REFERENCES "MarketingArea" ("ID"),
    CONSTRAINT "FK_MarketingCampaign_MarketingList_MarketingListID" FOREIGN KEY ("MarketingListID") REFERENCES "MarketingList" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PaymentTerm" (
    "ID" NVARCHAR2(450) NOT NULL,
    "IsTemplate" NUMBER(1) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Percentage" BINARY_DOUBLE NOT NULL,
    "CreditDays" BINARY_DOUBLE NOT NULL,
    "CreditWeeks" BINARY_DOUBLE NOT NULL,
    "CreditMonths" BINARY_DOUBLE NOT NULL,
    "CreditYears" BINARY_DOUBLE NOT NULL,
    "PaymentModeID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_PaymentTerm" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PaymentTerm_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_PaymentTerm_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_PaymentTerm_PaymentMode_PaymentModeID" FOREIGN KEY ("PaymentModeID") REFERENCES "PaymentMode" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ProficiencyRatingValue" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Value" NVARCHAR2(2000),
    "ProficiencyRatingModelID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ProficiencyRatingValue" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ProficiencyRatingValue_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ProficiencyRatingValue_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ProficiencyRatingValue_ProficiencyRatingModel_ProficiencyRatingModelID" FOREIGN KEY ("ProficiencyRatingModelID") REFERENCES "ProficiencyRatingModel" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SalesLiterature" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Content" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ModifiedDate" TIMESTAMP(7) NOT NULL,
    "ExpirationDate" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "SalesLiteratureTypeID" NVARCHAR2(450),
    CONSTRAINT "PK_SalesLiterature" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SalesLiterature_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SalesLiterature_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_SalesLiterature_SalesLiteratureType_SalesLiteratureTypeID" FOREIGN KEY ("SalesLiteratureTypeID") REFERENCES "SalesLiteratureType" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Policy" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000),
    "Code" NVARCHAR2(2000),
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "IsFree" NUMBER(1) NOT NULL,
    "Reduce" NUMBER(1) NOT NULL,
    "IsEnabled" NUMBER(1) NOT NULL,
    "IsDefault" NUMBER(1) NOT NULL,
    "AllowInternational" NUMBER(1) NOT NULL,
    "Hours" NUMBER(10) NOT NULL,
    "Days" NUMBER(10) NOT NULL,
    "Weeks" NUMBER(10) NOT NULL,
    "Months" NUMBER(10) NOT NULL,
    "Years" NUMBER(10) NOT NULL,
    "Value" BINARY_DOUBLE NOT NULL,
    "Percentage" BINARY_DOUBLE NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "CountryID" NVARCHAR2(450),
    "CountryStateID" NVARCHAR2(450),
    "CustomState" NVARCHAR2(2000),
    "CustomCity" NVARCHAR2(2000),
    "CityID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "Zero" NUMBER(1),
    "Reduced" NUMBER(1),
    "Withholding" NUMBER(1),
    "FiscalAuthorityID" NVARCHAR2(450),
    "IsExpressShipmentPolicy" NUMBER(1),
    "ShippingCourierID" NVARCHAR2(450),
    "IsExtendedWarranty" NUMBER(1),
    "ReturnPolicy_ShippingCourierID" NVARCHAR2(450),
    CONSTRAINT "PK_Policy" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Policy_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Policy_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Policy_City_CityID" FOREIGN KEY ("CityID") REFERENCES "City" ("ID"),
    CONSTRAINT "FK_Policy_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_Policy_CountryState_CountryStateID" FOREIGN KEY ("CountryStateID") REFERENCES "CountryState" ("ID"),
    CONSTRAINT "FK_Policy_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_Policy_FiscalAuthority_FiscalAuthorityID" FOREIGN KEY ("FiscalAuthorityID") REFERENCES "FiscalAuthority" ("ID"),
    CONSTRAINT "FK_Policy_ShippingCourier_ReturnPolicy_ShippingCourierID" FOREIGN KEY ("ReturnPolicy_ShippingCourierID") REFERENCES "ShippingCourier" ("ID"),
    CONSTRAINT "FK_Policy_ShippingCourier_ShippingCourierID" FOREIGN KEY ("ShippingCourierID") REFERENCES "ShippingCourier" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SocialMediaPost" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Content" NVARCHAR2(2000),
    "FeaturedImageUrl" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "SocialPostBucketID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_SocialMediaPost" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SocialMediaPost_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SocialMediaPost_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_SocialMediaPost_SocialPostBucket_SocialPostBucketID" FOREIGN KEY ("SocialPostBucketID") REFERENCES "SocialPostBucket" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"TrainingProgramResultSet" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "TrainingProgramID" NVARCHAR2(450),
    CONSTRAINT "PK_TrainingProgramResultSet" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_TrainingProgramResultSet_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_TrainingProgramResultSet_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_TrainingProgramResultSet_TrainingProgram_TrainingProgramID" FOREIGN KEY ("TrainingProgramID") REFERENCES "TrainingProgram" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Unit" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "UnitGroupID" NVARCHAR2(450),
    "BaseUnitAmount" BINARY_DOUBLE NOT NULL,
    "BaseUnitID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_Unit" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Unit_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Unit_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Unit_Unit_BaseUnitID" FOREIGN KEY ("BaseUnitID") REFERENCES "Unit" ("ID"),
    CONSTRAINT "FK_Unit_UnitGroup_UnitGroupID" FOREIGN KEY ("UnitGroupID") REFERENCES "UnitGroup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ExpenseClaim" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ExpenseTypeID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "CostCentreID" NVARCHAR2(450),
    CONSTRAINT "PK_ExpenseClaim" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ExpenseClaim_CostCentre_CostCentreID" FOREIGN KEY ("CostCentreID") REFERENCES "CostCentre" ("ID"),
    CONSTRAINT "FK_ExpenseClaim_ExpenseType_ExpenseTypeID" FOREIGN KEY ("ExpenseTypeID") REFERENCES "ExpenseType" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"OpenIddictEntityFrameworkCoreAuthorization" (
    "Id" NVARCHAR2(450) NOT NULL,
    "ApplicationId" NVARCHAR2(450),
    "ConcurrencyToken" NVARCHAR2(2000),
    "CreationDate" TIMESTAMP(7),
    "Properties" NVARCHAR2(2000),
    "Scopes" NVARCHAR2(2000),
    "Status" NVARCHAR2(2000),
    "Subject" NVARCHAR2(2000),
    "Type" NVARCHAR2(2000),
    CONSTRAINT "PK_OpenIddictEntityFrameworkCoreAuthorization" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_OpenIddictEntityFrameworkCoreAuthorization_OpenIddictEntityFrameworkCoreApplication_ApplicationId" FOREIGN KEY ("ApplicationId") REFERENCES "OpenIddictEntityFrameworkCoreApplication" ("Id")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"MenuContext" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Enable" NUMBER(1) NOT NULL,
    "StudioMenu" NUMBER(1) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Category" NVARCHAR2(2000),
    "Component" NVARCHAR2(2000),
    "CustomCss" NVARCHAR2(2000),
    "CustomJs" NVARCHAR2(2000),
    "CustomHtml" NVARCHAR2(2000),
    "LoggedInOnly" NVARCHAR2(2000),
    "BackgroundImage" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "WebPortalID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "Type" NUMBER(10) NOT NULL,
    CONSTRAINT "PK_MenuContext" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_MenuContext_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_MenuContext_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_MenuContext_WebPortal_WebPortalID" FOREIGN KEY ("WebPortalID") REFERENCES "WebPortal" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Taxonomy" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Slug" NVARCHAR2(2000),
    "Type" NVARCHAR2(2000) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "SeoTitle" NVARCHAR2(2000),
    "MetaDescription" NVARCHAR2(2000),
    "CornerstoneContent" NUMBER(1) NOT NULL,
    "AllowSerachEngines" NUMBER(1) NOT NULL,
    "SeoKeyPhrases" NVARCHAR2(2000),
    "CanonicalUrl" NVARCHAR2(2000),
    "ImageURL" NVARCHAR2(2000),
    "Image" NVARCHAR2(2000),
    "WebPortalID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_Taxonomy" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Taxonomy_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Taxonomy_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Taxonomy_WebPortal_WebPortalID" FOREIGN KEY ("WebPortalID") REFERENCES "WebPortal" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WebPortalBusinessDomainRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "WebPortalID" NVARCHAR2(450),
    "BusinessDomainID" NVARCHAR2(450),
    CONSTRAINT "PK_WebPortalBusinessDomainRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WebPortalBusinessDomainRecord_BusinessDomain_BusinessDomainID" FOREIGN KEY ("BusinessDomainID") REFERENCES "BusinessDomain" ("ID"),
    CONSTRAINT "FK_WebPortalBusinessDomainRecord_WebPortal_WebPortalID" FOREIGN KEY ("WebPortalID") REFERENCES "WebPortal" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Workflow" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "WebPortalID" NVARCHAR2(450),
    CONSTRAINT "PK_Workflow" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Workflow_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Workflow_WebPortal_WebPortalID" FOREIGN KEY ("WebPortalID") REFERENCES "WebPortal" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessProcessStageRelation" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ChildBusinessProcessStageID" NVARCHAR2(450),
    "ParentBusinessProcessStageID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessProcessStageRelation" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessProcessStageRelation_BusinessProcessStage_ChildBusinessProcessStageID" FOREIGN KEY ("ChildBusinessProcessStageID") REFERENCES "BusinessProcessStage" ("ID"),
    CONSTRAINT "FK_BusinessProcessStageRelation_BusinessProcessStage_ParentBusinessProcessStageID" FOREIGN KEY ("ParentBusinessProcessStageID") REFERENCES "BusinessProcessStage" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"FiscalPeriod" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "FromDate" TIMESTAMP(7) NOT NULL,
    "ToDate" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "FiscalYearID" NVARCHAR2(450),
    CONSTRAINT "PK_FiscalPeriod" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_FiscalPeriod_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_FiscalPeriod_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_FiscalPeriod_FiscalYear_FiscalYearID" FOREIGN KEY ("FiscalYearID") REFERENCES "FiscalYear" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"FiscalYearDistribution" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "FiscalYearID" NVARCHAR2(450),
    "January" BINARY_DOUBLE NOT NULL,
    "February" BINARY_DOUBLE NOT NULL,
    "March" BINARY_DOUBLE NOT NULL,
    "April" BINARY_DOUBLE NOT NULL,
    "May" BINARY_DOUBLE NOT NULL,
    "June" BINARY_DOUBLE NOT NULL,
    "July" BINARY_DOUBLE NOT NULL,
    "August" BINARY_DOUBLE NOT NULL,
    "September" BINARY_DOUBLE NOT NULL,
    "October" BINARY_DOUBLE NOT NULL,
    "November" BINARY_DOUBLE NOT NULL,
    "December" BINARY_DOUBLE NOT NULL,
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "BudgetID" NVARCHAR2(450),
    CONSTRAINT "PK_FiscalYearDistribution" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_FiscalYearDistribution_Budget_BudgetID" FOREIGN KEY ("BudgetID") REFERENCES "Budget" ("ID"),
    CONSTRAINT "FK_FiscalYearDistribution_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_FiscalYearDistribution_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_FiscalYearDistribution_FiscalYear_FiscalYearID" FOREIGN KEY ("FiscalYearID") REFERENCES "FiscalYear" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"TaxClass" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Type" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "FiscalAuthorityID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "FiscalYearID" NVARCHAR2(450),
    CONSTRAINT "PK_TaxClass" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_TaxClass_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_TaxClass_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_TaxClass_FiscalAuthority_FiscalAuthorityID" FOREIGN KEY ("FiscalAuthorityID") REFERENCES "FiscalAuthority" ("ID"),
    CONSTRAINT "FK_TaxClass_FiscalYear_FiscalYearID" FOREIGN KEY ("FiscalYearID") REFERENCES "FiscalYear" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Journal" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "DateTime" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ParentJournalID" NVARCHAR2(450),
    "JournalTypeID" NVARCHAR2(450),
    "LedgerID" NVARCHAR2(450),
    CONSTRAINT "PK_Journal" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Journal_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Journal_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Journal_Journal_ParentJournalID" FOREIGN KEY ("ParentJournalID") REFERENCES "Journal" ("ID"),
    CONSTRAINT "FK_Journal_JournalType_JournalTypeID" FOREIGN KEY ("JournalTypeID") REFERENCES "JournalType" ("ID"),
    CONSTRAINT "FK_Journal_Ledger_LedgerID" FOREIGN KEY ("LedgerID") REFERENCES "Ledger" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ProjectResourceSkillRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ProjectResourceID" NVARCHAR2(450),
    "ProjectResourceSkillID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ProficiencyRatingValueID" NVARCHAR2(450),
    "ProjectResourceRoleID" NVARCHAR2(450),
    CONSTRAINT "PK_ProjectResourceSkillRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ProjectResourceSkillRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ProjectResourceSkillRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ProjectResourceSkillRecord_CurriculumSkill_ProjectResourceSkillID" FOREIGN KEY ("ProjectResourceSkillID") REFERENCES "CurriculumSkill" ("ID"),
    CONSTRAINT "FK_ProjectResourceSkillRecord_ProficiencyRatingValue_ProficiencyRatingValueID" FOREIGN KEY ("ProficiencyRatingValueID") REFERENCES "ProficiencyRatingValue" ("ID"),
    CONSTRAINT "FK_ProjectResourceSkillRecord_ProjectResource_ProjectResourceID" FOREIGN KEY ("ProjectResourceID") REFERENCES "ProjectResource" ("ID"),
    CONSTRAINT "FK_ProjectResourceSkillRecord_ProjectResourceRole_ProjectResourceRoleID" FOREIGN KEY ("ProjectResourceRoleID") REFERENCES "ProjectResourceRole" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourrierItemShippingPolicyRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ShippingCourrierID" NVARCHAR2(2000),
    "ShippingCourierID" NVARCHAR2(450),
    "ItemShippingPolicyID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_CourrierItemShippingPolicyRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourrierItemShippingPolicyRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourrierItemShippingPolicyRecord_Policy_ItemShippingPolicyID" FOREIGN KEY ("ItemShippingPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_CourrierItemShippingPolicyRecord_ShippingCourier_ShippingCourierID" FOREIGN KEY ("ShippingCourierID") REFERENCES "ShippingCourier" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PriceList" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Context" NUMBER(10) NOT NULL,
    "Description" NVARCHAR2(2000),
    "StartDate" TIMESTAMP(7) NOT NULL,
    "EndDate" TIMESTAMP(7) NOT NULL,
    "PartnerVisible" NUMBER(1) NOT NULL,
    "UnitOfMeasureDependant" NUMBER(1) NOT NULL,
    "UnitID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "UnitGroupID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    CONSTRAINT "PK_PriceList" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PriceList_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_PriceList_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_PriceList_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_PriceList_Unit_UnitID" FOREIGN KEY ("UnitID") REFERENCES "Unit" ("ID"),
    CONSTRAINT "FK_PriceList_UnitGroup_UnitGroupID" FOREIGN KEY ("UnitGroupID") REFERENCES "UnitGroup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"OpenIddictEntityFrameworkCoreToken" (
    "Id" NVARCHAR2(450) NOT NULL,
    "ApplicationId" NVARCHAR2(450),
    "AuthorizationId" NVARCHAR2(450),
    "ConcurrencyToken" NVARCHAR2(2000),
    "CreationDate" TIMESTAMP(7),
    "ExpirationDate" TIMESTAMP(7),
    "Payload" NVARCHAR2(2000),
    "Properties" NVARCHAR2(2000),
    "RedemptionDate" TIMESTAMP(7),
    "ReferenceId" NVARCHAR2(2000),
    "Status" NVARCHAR2(2000),
    "Subject" NVARCHAR2(2000),
    "Type" NVARCHAR2(2000),
    CONSTRAINT "PK_OpenIddictEntityFrameworkCoreToken" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_OpenIddictEntityFrameworkCoreToken_OpenIddictEntityFrameworkCoreApplication_ApplicationId" FOREIGN KEY ("ApplicationId") REFERENCES "OpenIddictEntityFrameworkCoreApplication" ("Id"),
    CONSTRAINT "FK_OpenIddictEntityFrameworkCoreToken_OpenIddictEntityFrameworkCoreAuthorization_AuthorizationId" FOREIGN KEY ("AuthorizationId") REFERENCES "OpenIddictEntityFrameworkCoreAuthorization" ("Id")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"MenuContextItem" (
    "ID" NVARCHAR2(450) NOT NULL,
    "UID" NUMBER(10) NOT NULL,
    "Order" NUMBER(10) NOT NULL,
    "Column" NUMBER(10) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Text" NVARCHAR2(2000),
    "Url" NVARCHAR2(2000),
    "Icon" NVARCHAR2(2000),
    "Image" NVARCHAR2(2000),
    "Target" NVARCHAR2(2000),
    "Category" NVARCHAR2(2000),
    "Component" NVARCHAR2(2000),
    "Background" NVARCHAR2(2000),
    "HTMLContent" NVARCHAR2(2000),
    "Tooltip" NVARCHAR2(2000),
    "IsColumn" NUMBER(1) NOT NULL,
    "IsSeparator" NUMBER(1) NOT NULL,
    "LoggedInOnly" NUMBER(1) NOT NULL,
    "FullHeightSubmenu" NUMBER(1) NOT NULL,
    "ParentMenuContextItemID" NVARCHAR2(450),
    "MenuContextID" NVARCHAR2(450),
    "MenuContextItemType" NUMBER(10) NOT NULL,
    "MenuItemTabTarget" NUMBER(10) NOT NULL,
    CONSTRAINT "PK_MenuContextItem" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_MenuContextItem_MenuContext_MenuContextID" FOREIGN KEY ("MenuContextID") REFERENCES "MenuContext" ("ID"),
    CONSTRAINT "FK_MenuContextItem_MenuContextItem_ParentMenuContextItemID" FOREIGN KEY ("ParentMenuContextItemID") REFERENCES "MenuContextItem" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WorkflowStage" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Code" NVARCHAR2(2000),
    "ParentWorkflowStageID" NVARCHAR2(450),
    "WorkflowID" NVARCHAR2(450),
    CONSTRAINT "PK_WorkflowStage" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WorkflowStage_Workflow_WorkflowID" FOREIGN KEY ("WorkflowID") REFERENCES "Workflow" ("ID"),
    CONSTRAINT "FK_WorkflowStage_WorkflowStage_ParentWorkflowStageID" FOREIGN KEY ("ParentWorkflowStageID") REFERENCES "WorkflowStage" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"TaxRate" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Rate" BINARY_DOUBLE NOT NULL,
    "Value" BINARY_DOUBLE NOT NULL,
    "UM" NVARCHAR2(2000),
    "UnitID" NVARCHAR2(450),
    "UnitGroupID" NVARCHAR2(450),
    "Priority" NUMBER(10) NOT NULL,
    "Compound" NUMBER(1) NOT NULL,
    "Shipping" NUMBER(1) NOT NULL,
    "Withholding" NUMBER(1) NOT NULL,
    "SingleTransactionThreshold" BINARY_DOUBLE NOT NULL,
    "CumulativeTransactionThreshold" BINARY_DOUBLE NOT NULL,
    "FiscalAuthorityID" NVARCHAR2(450),
    "FiscalYearID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "CountryID" NVARCHAR2(450),
    "TaxClassID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "TaxPolicyID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_TaxRate" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_TaxRate_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_TaxRate_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_TaxRate_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_TaxRate_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_TaxRate_FiscalAuthority_FiscalAuthorityID" FOREIGN KEY ("FiscalAuthorityID") REFERENCES "FiscalAuthority" ("ID"),
    CONSTRAINT "FK_TaxRate_FiscalYear_FiscalYearID" FOREIGN KEY ("FiscalYearID") REFERENCES "FiscalYear" ("ID"),
    CONSTRAINT "FK_TaxRate_Policy_TaxPolicyID" FOREIGN KEY ("TaxPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_TaxRate_TaxClass_TaxClassID" FOREIGN KEY ("TaxClassID") REFERENCES "TaxClass" ("ID"),
    CONSTRAINT "FK_TaxRate_Unit_UnitID" FOREIGN KEY ("UnitID") REFERENCES "Unit" ("ID"),
    CONSTRAINT "FK_TaxRate_UnitGroup_UnitGroupID" FOREIGN KEY ("UnitGroupID") REFERENCES "UnitGroup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"JournalEntry" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Group" NUMBER(1) NOT NULL,
    "Opening" NUMBER(1) NOT NULL,
    "Description" NVARCHAR2(2000),
    "EntryType" NUMBER(10) NOT NULL,
    "TransactionType" NUMBER(10) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Date" TIMESTAMP(7) NOT NULL,
    "ForexRatesSnapshot" NVARCHAR2(2000),
    "ForexRate" BINARY_DOUBLE NOT NULL,
    "Credit" BINARY_DOUBLE NOT NULL,
    "Debit" BINARY_DOUBLE NOT NULL,
    "DebitAccountID" NVARCHAR2(450),
    "CreditAccountID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "JournalID" NVARCHAR2(450),
    "FinancialBookID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ParentJournalEntryID" NVARCHAR2(450),
    CONSTRAINT "PK_JournalEntry" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_JournalEntry_Account_CreditAccountID" FOREIGN KEY ("CreditAccountID") REFERENCES "Account" ("ID"),
    CONSTRAINT "FK_JournalEntry_Account_DebitAccountID" FOREIGN KEY ("DebitAccountID") REFERENCES "Account" ("ID"),
    CONSTRAINT "FK_JournalEntry_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_JournalEntry_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_JournalEntry_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_JournalEntry_FinancialBook_FinancialBookID" FOREIGN KEY ("FinancialBookID") REFERENCES "FinancialBook" ("ID"),
    CONSTRAINT "FK_JournalEntry_Journal_JournalID" FOREIGN KEY ("JournalID") REFERENCES "Journal" ("ID"),
    CONSTRAINT "FK_JournalEntry_JournalEntry_ParentJournalEntryID" FOREIGN KEY ("ParentJournalEntryID") REFERENCES "JournalEntry" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PriceListTerritory" (
    "ID" NVARCHAR2(450) NOT NULL,
    "TerritoryID" NVARCHAR2(450),
    "PriceListID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_PriceListTerritory" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PriceListTerritory_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_PriceListTerritory_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_PriceListTerritory_PriceList_PriceListID" FOREIGN KEY ("PriceListID") REFERENCES "PriceList" ("ID"),
    CONSTRAINT "FK_PriceListTerritory_Territory_TerritoryID" FOREIGN KEY ("TerritoryID") REFERENCES "Territory" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"RolePriceMarkup" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Description" NVARCHAR2(2000),
    "Percent" BINARY_DOUBLE NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "PriceListID" NVARCHAR2(450),
    CONSTRAINT "PK_RolePriceMarkup" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_RolePriceMarkup_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_RolePriceMarkup_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_RolePriceMarkup_PriceList_PriceListID" FOREIGN KEY ("PriceListID") REFERENCES "PriceList" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WorkflowExecution" (
    "ID" NVARCHAR2(450) NOT NULL,
    "WorkflowID" NVARCHAR2(450),
    "WorkflowStageID" NVARCHAR2(450),
    CONSTRAINT "PK_WorkflowExecution" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WorkflowExecution_Workflow_WorkflowID" FOREIGN KEY ("WorkflowID") REFERENCES "Workflow" ("ID"),
    CONSTRAINT "FK_WorkflowExecution_WorkflowStage_WorkflowStageID" FOREIGN KEY ("WorkflowStageID") REFERENCES "WorkflowStage" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"TaxRateClassRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "TaxClassID" NVARCHAR2(450),
    "TaxRateID" NVARCHAR2(450),
    "Rate" BINARY_DOUBLE NOT NULL,
    "Priority" NUMBER(10) NOT NULL,
    "Compound" NUMBER(1) NOT NULL,
    "Shipping" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_TaxRateClassRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_TaxRateClassRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_TaxRateClassRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_TaxRateClassRecord_TaxClass_TaxClassID" FOREIGN KEY ("TaxClassID") REFERENCES "TaxClass" ("ID"),
    CONSTRAINT "FK_TaxRateClassRecord_TaxRate_TaxRateID" FOREIGN KEY ("TaxRateID") REFERENCES "TaxRate" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WorkflowState" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Output" NVARCHAR2(2000),
    "OutputClass" NVARCHAR2(2000),
    "OutputType" NUMBER(10) NOT NULL,
    "WorkflowID" NVARCHAR2(450),
    "WorkflowStageID" NVARCHAR2(450),
    "WorkflowExecutionID" NVARCHAR2(450),
    CONSTRAINT "PK_WorkflowState" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WorkflowState_Workflow_WorkflowID" FOREIGN KEY ("WorkflowID") REFERENCES "Workflow" ("ID"),
    CONSTRAINT "FK_WorkflowState_WorkflowExecution_WorkflowExecutionID" FOREIGN KEY ("WorkflowExecutionID") REFERENCES "WorkflowExecution" ("ID"),
    CONSTRAINT "FK_WorkflowState_WorkflowStage_WorkflowStageID" FOREIGN KEY ("WorkflowStageID") REFERENCES "WorkflowStage" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessDepartment" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Disabled" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "OrganizationProfileID" NVARCHAR2(450),
    "ParentDepartmentID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessDepartment" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessDepartment_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessDepartment_BusinessDepartment_ParentDepartmentID" FOREIGN KEY ("ParentDepartmentID") REFERENCES "BusinessDepartment" ("ID"),
    CONSTRAINT "FK_BusinessDepartment_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessSecurityLog" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Message" NVARCHAR2(2000),
    "Language" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "SigningProfileID" NVARCHAR2(450),
    "SigningCertificateID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessSecurityLog" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessSecurityLog_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessSecurityLog_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessTeam" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "AvatarURL" NVARCHAR2(2000),
    "IsPublic" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "BusinessUnitID" NVARCHAR2(450),
    "OrganizationProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessTeam" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessTeam_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessTeam_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ServiceQueue" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "BusinessTeamID" NVARCHAR2(450),
    CONSTRAINT "PK_ServiceQueue" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ServiceQueue_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ServiceQueue_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ServiceQueue_BusinessTeam_BusinessTeamID" FOREIGN KEY ("BusinessTeamID") REFERENCES "BusinessTeam" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessTeamRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "BusinessTeamID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "ProjectID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "EmployeeProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessTeamRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessTeamRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessTeamRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_BusinessTeamRecord_BusinessTeam_BusinessTeamID" FOREIGN KEY ("BusinessTeamID") REFERENCES "BusinessTeam" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessUnit" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Disabled" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CountryID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "OrganizationProfileID" NVARCHAR2(450),
    "ParentBusinessUnitID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessUnit" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessUnit_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessUnit_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_BusinessUnit_BusinessUnit_ParentBusinessUnitID" FOREIGN KEY ("ParentBusinessUnitID") REFERENCES "BusinessUnit" ("ID"),
    CONSTRAINT "FK_BusinessUnit_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessUnitRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "BusinessUnitID" NVARCHAR2(450),
    CONSTRAINT "PK_BusinessUnitRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_BusinessUnitRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_BusinessUnitRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_BusinessUnitRecord_BusinessUnit_BusinessUnitID" FOREIGN KEY ("BusinessUnitID") REFERENCES "BusinessUnit" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Cart" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "CountryID" NVARCHAR2(450),
    "CountryStateID" NVARCHAR2(450),
    "CityID" NVARCHAR2(450),
    "LocationID" NVARCHAR2(450),
    "Type" NVARCHAR2(2000) NOT NULL,
    "Freight" BINARY_DOUBLE NOT NULL,
    "Taxes" BINARY_DOUBLE NOT NULL,
    "Discounts" BINARY_DOUBLE NOT NULL,
    "Surcharges" BINARY_DOUBLE NOT NULL,
    "SubTotal" BINARY_DOUBLE NOT NULL,
    "Total" BINARY_DOUBLE NOT NULL,
    "IP" NVARCHAR2(2000),
    "ForSpiders" NUMBER(1) NOT NULL,
    "IPLookupID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "GuestCart_BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_Cart" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Cart_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_Cart_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Cart_Business_GuestCart_BusinessID" FOREIGN KEY ("GuestCart_BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Cart_City_CityID" FOREIGN KEY ("CityID") REFERENCES "City" ("ID"),
    CONSTRAINT "FK_Cart_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_Cart_CountryState_CountryStateID" FOREIGN KEY ("CountryStateID") REFERENCES "CountryState" ("ID"),
    CONSTRAINT "FK_Cart_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_Cart_IPLookup_IPLookupID" FOREIGN KEY ("IPLookupID") REFERENCES "IPLookup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CartRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CostCalculationMethod" NUMBER(10) NOT NULL,
    "CartID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "Quantity" BINARY_DOUBLE NOT NULL,
    "ForexRatesSnapshot" NVARCHAR2(2000),
    "ForexRate" BINARY_DOUBLE NOT NULL,
    "TotalDetailAmountInUSD" BINARY_DOUBLE NOT NULL,
    "TotalDiscountsInUSD" BINARY_DOUBLE NOT NULL,
    "TotalProfitInUSD" BINARY_DOUBLE NOT NULL,
    "TotalTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalWithholdingTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalShippingCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalShippingTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalWarrantyCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalReturnCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalRefundCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalSurchargesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalAmountInUSD" BINARY_DOUBLE NOT NULL,
    "CustomDetailAmount" BINARY_DOUBLE NOT NULL,
    "CustomDiscountsAmount" BINARY_DOUBLE NOT NULL,
    "CustomSurchargesAmount" BINARY_DOUBLE NOT NULL,
    "CustomProfitAmount" BINARY_DOUBLE NOT NULL,
    "CustomShippingCostAmount" BINARY_DOUBLE NOT NULL,
    "CustomShippingTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomWithholdingTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomTotalAmount" BINARY_DOUBLE NOT NULL,
    "ItemID" NVARCHAR2(450),
    "ItemCartRecord_ItemID" NVARCHAR2(450),
    "ItemShippingPolicyID" NVARCHAR2(450),
    "ReturnPolicyID" NVARCHAR2(450),
    "RefundPolicyID" NVARCHAR2(450),
    "WarrantyPolicyID" NVARCHAR2(450),
    "ShippingAddressID" NVARCHAR2(450),
    "RecentlyViewedItemRecord_ItemID" NVARCHAR2(450),
    CONSTRAINT "PK_CartRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CartRecord_Cart_CartID" FOREIGN KEY ("CartID") REFERENCES "Cart" ("ID"),
    CONSTRAINT "FK_CartRecord_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_CartRecord_Policy_ItemShippingPolicyID" FOREIGN KEY ("ItemShippingPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_CartRecord_Policy_RefundPolicyID" FOREIGN KEY ("RefundPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_CartRecord_Policy_ReturnPolicyID" FOREIGN KEY ("ReturnPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_CartRecord_Policy_WarrantyPolicyID" FOREIGN KEY ("WarrantyPolicyID") REFERENCES "Policy" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CognitiveAgentConversation" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Claimed" NUMBER(1) NOT NULL,
    "Current" NUMBER(1) NOT NULL,
    "AccessKey" NVARCHAR2(2000),
    "ClaimCode" NVARCHAR2(2000),
    "ChannelID" NVARCHAR2(2000),
    "ActivityID" NVARCHAR2(2000),
    "ActivityFrom" NVARCHAR2(2000),
    "ConversationID" NVARCHAR2(2000),
    "AccessCode" NVARCHAR2(2000),
    "LastActivity" TIMESTAMP(7) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "State" NVARCHAR2(2000),
    "History" NVARCHAR2(2000),
    "Data" NVARCHAR2(2000),
    "DataLabel" NVARCHAR2(2000),
    "Data1" NVARCHAR2(2000),
    "Data1Label" NVARCHAR2(2000),
    "Data2" NVARCHAR2(2000),
    "Data2Label" NVARCHAR2(2000),
    "Data3" NVARCHAR2(2000),
    "Data3Label" NVARCHAR2(2000),
    "Data4" NVARCHAR2(2000),
    "Data4Label" NVARCHAR2(2000),
    "Data5" NVARCHAR2(2000),
    "Data5Label" NVARCHAR2(2000),
    "Data6" NVARCHAR2(2000),
    "Data6Label" NVARCHAR2(2000),
    "Data7" NVARCHAR2(2000),
    "Data7Label" NVARCHAR2(2000),
    "Data8" NVARCHAR2(2000),
    "Data8Label" NVARCHAR2(2000),
    "Data9" NVARCHAR2(2000),
    "Data9Label" NVARCHAR2(2000),
    "CognitiveAgentID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "IndividualID" NVARCHAR2(450),
    "OrganizationID" NVARCHAR2(450),
    "ReceptorBusinessID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_CognitiveAgentConversation" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CognitiveAgentConversation_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_CognitiveAgentConversation_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CognitiveAgentConversation_Business_ReceptorBusinessID" FOREIGN KEY ("ReceptorBusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CognitiveAgentConversation_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CognitiveAgentConversation_CognitiveAgent_CognitiveAgentID" FOREIGN KEY ("CognitiveAgentID") REFERENCES "CognitiveAgent" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Commission" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BaseAmount" DECIMAL(18, 2) NOT NULL,
    "AddedPercent" DECIMAL(18, 2) NOT NULL,
    "AddedAmount" DECIMAL(18, 2) NOT NULL,
    "TaxComission" DECIMAL(18, 2) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "SalaryID" NVARCHAR2(450),
    "EmmisorWalletAccountID" NVARCHAR2(450),
    "ReceptorWalletAccountID" NVARCHAR2(450),
    "EmmisorContactID" NVARCHAR2(450),
    "ReceptorContactID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "PaymentID" NVARCHAR2(450),
    CONSTRAINT "PK_Commission" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Commission_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Commission_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Contact" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BirthDate" TIMESTAMP(7) NOT NULL,
    "Gender" NUMBER(10) NOT NULL,
    "ContactType" NUMBER(10) NOT NULL,
    "ContactStage" NUMBER(10) NOT NULL,
    "ContactStatus" NUMBER(10) NOT NULL,
    "PreferredContactMethod" NUMBER(10) NOT NULL,
    "ReadOnly" NUMBER(1) NOT NULL,
    "SystemRequired" NUMBER(1) NOT NULL,
    "DUNS" NVARCHAR2(2000),
    "Domain" NVARCHAR2(2000),
    "TwitterURL" NVARCHAR2(2000),
    "FacebookURL" NVARCHAR2(2000),
    "LinkedInURL" NVARCHAR2(2000),
    "YoutubeURL" NVARCHAR2(2000),
    "GithubURL" NVARCHAR2(2000),
    "Notes" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "LastName" NVARCHAR2(2000),
    "Email" NVARCHAR2(2000),
    "IdentityProvider" NVARCHAR2(2000),
    "ActiveDirectoryID" NVARCHAR2(2000),
    "IdP_AccessCode" NVARCHAR2(2000),
    "CoverURL" NVARCHAR2(2000),
    "AvatarURL" NVARCHAR2(2000),
    "TaxID" NVARCHAR2(2000),
    "JobTitle" NVARCHAR2(2000),
    "Department" NVARCHAR2(2000),
    "FaxNumber" NVARCHAR2(2000),
    "OfficialID" NVARCHAR2(2000),
    "MobilePhone" NVARCHAR2(2000),
    "BusinessPhone" NVARCHAR2(2000),
    "AnnualRevenue" NVARCHAR2(2000),
    "CustomState" NVARCHAR2(2000),
    "CustomCity" NVARCHAR2(2000),
    "StreetLine1" NVARCHAR2(2000),
    "StreetLine2" NVARCHAR2(2000),
    "PostalCode" NVARCHAR2(2000),
    "Longitude" NVARCHAR2(2000),
    "Latitude" NVARCHAR2(2000),
    "CountryID" NVARCHAR2(450),
    "CountryStateID" NVARCHAR2(450),
    "CityID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "TimezoneID" NVARCHAR2(450),
    "TerritoryID" NVARCHAR2(450),
    "CountryLanguageID" NVARCHAR2(450),
    "ParentContactID" NVARCHAR2(450),
    "OrganizationID" NVARCHAR2(450),
    "OwnerContactID" NVARCHAR2(450),
    "PrimaryContactID" NVARCHAR2(450),
    "RelatedAccountHolderID" NVARCHAR2(450),
    "RelatedBusinessProfileRecordID" NVARCHAR2(450),
    "RelatedBusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "LastCampaignDate" TIMESTAMP(7) NOT NULL,
    "PartnerProfileID" NVARCHAR2(450),
    "ContactSourceID" NVARCHAR2(450),
    "ItemShippingPolicyID" NVARCHAR2(450),
    "ShippingMethodID" NVARCHAR2(450),
    "CreditLimit" BINARY_DOUBLE NOT NULL,
    "AllowCreditHold" NUMBER(1) NOT NULL,
    "PaymentTermID" NVARCHAR2(450),
    "FinancialBookID" NVARCHAR2(450),
    "AllowMarketingMaterials" NUMBER(1) NOT NULL,
    "AllowEmail" NUMBER(1) NOT NULL,
    "AllowFax" NUMBER(1) NOT NULL,
    "AllowMail" NUMBER(1) NOT NULL,
    "AllowFollowEmail" NUMBER(1) NOT NULL,
    "AllowBulkEmail" NUMBER(1) NOT NULL,
    "PreferedContactMethod" NVARCHAR2(2000),
    "PersonalNotes" NVARCHAR2(2000),
    "Birdthday" TIMESTAMP(7) NOT NULL,
    "Anniversary" TIMESTAMP(7) NOT NULL,
    "ContactGender" NUMBER(10) NOT NULL,
    "ContactMaritalStatus" NUMBER(10) NOT NULL,
    "BusinessTeamID" NVARCHAR2(450),
    CONSTRAINT "PK_Contact" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Contact_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_Contact_AspNetUsers_RelatedAccountHolderID" FOREIGN KEY ("RelatedAccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_Contact_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Contact_Business_RelatedBusinessID" FOREIGN KEY ("RelatedBusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Contact_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Contact_BusinessProfileRecord_RelatedBusinessProfileRecordID" FOREIGN KEY ("RelatedBusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Contact_BusinessTeam_BusinessTeamID" FOREIGN KEY ("BusinessTeamID") REFERENCES "BusinessTeam" ("ID"),
    CONSTRAINT "FK_Contact_City_CityID" FOREIGN KEY ("CityID") REFERENCES "City" ("ID"),
    CONSTRAINT "FK_Contact_Contact_OrganizationID" FOREIGN KEY ("OrganizationID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Contact_Contact_OwnerContactID" FOREIGN KEY ("OwnerContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Contact_Contact_ParentContactID" FOREIGN KEY ("ParentContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Contact_Contact_PrimaryContactID" FOREIGN KEY ("PrimaryContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Contact_ContactSource_ContactSourceID" FOREIGN KEY ("ContactSourceID") REFERENCES "ContactSource" ("ID"),
    CONSTRAINT "FK_Contact_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_Contact_CountryLanguage_CountryLanguageID" FOREIGN KEY ("CountryLanguageID") REFERENCES "CountryLanguage" ("Iso639_1"),
    CONSTRAINT "FK_Contact_CountryState_CountryStateID" FOREIGN KEY ("CountryStateID") REFERENCES "CountryState" ("ID"),
    CONSTRAINT "FK_Contact_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_Contact_FinancialBook_FinancialBookID" FOREIGN KEY ("FinancialBookID") REFERENCES "FinancialBook" ("ID"),
    CONSTRAINT "FK_Contact_PaymentTerm_PaymentTermID" FOREIGN KEY ("PaymentTermID") REFERENCES "PaymentTerm" ("ID"),
    CONSTRAINT "FK_Contact_Policy_ItemShippingPolicyID" FOREIGN KEY ("ItemShippingPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_Contact_ShippingMethod_ShippingMethodID" FOREIGN KEY ("ShippingMethodID") REFERENCES "ShippingMethod" ("ID"),
    CONSTRAINT "FK_Contact_Territory_TerritoryID" FOREIGN KEY ("TerritoryID") REFERENCES "Territory" ("ID"),
    CONSTRAINT "FK_Contact_Timezone_TimezoneID" FOREIGN KEY ("TimezoneID") REFERENCES "Timezone" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ContactGroupRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ContactID" NVARCHAR2(450),
    "ContactsGroupID" NVARCHAR2(450),
    CONSTRAINT "PK_ContactGroupRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ContactGroupRecord_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_ContactGroupRecord_ContactsGroup_ContactsGroupID" FOREIGN KEY ("ContactsGroupID") REFERENCES "ContactsGroup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ContactRelation" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Date" TIMESTAMP(7) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "RelatedContactID" NVARCHAR2(450),
    "ContactRelationTypeID" NVARCHAR2(450),
    CONSTRAINT "PK_ContactRelation" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ContactRelation_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ContactRelation_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_ContactRelation_Contact_RelatedContactID" FOREIGN KEY ("RelatedContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_ContactRelation_ContactRelationType_ContactRelationTypeID" FOREIGN KEY ("ContactRelationTypeID") REFERENCES "ContactRelationType" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"EmailGroupMembership" (
    "ID" NVARCHAR2(450) NOT NULL,
    "EmailGroupID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_EmailGroupMembership" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_EmailGroupMembership_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_EmailGroupMembership_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_EmailGroupMembership_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_EmailGroupMembership_EmailGroup_EmailGroupID" FOREIGN KEY ("EmailGroupID") REFERENCES "EmailGroup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"FiscalYearRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "FiscalPeriodID" NVARCHAR2(450),
    "FiscalYearID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    CONSTRAINT "PK_FiscalYearRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_FiscalYearRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_FiscalYearRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_FiscalYearRecord_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_FiscalYearRecord_FiscalPeriod_FiscalPeriodID" FOREIGN KEY ("FiscalPeriodID") REFERENCES "FiscalPeriod" ("ID"),
    CONSTRAINT "FK_FiscalYearRecord_FiscalYear_FiscalYearID" FOREIGN KEY ("FiscalYearID") REFERENCES "FiscalYear" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"GenericOption" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Value" NVARCHAR2(2000),
    "Frozen" NUMBER(1) NOT NULL,
    "Autoload" NUMBER(1) NOT NULL,
    "Transient" NUMBER(1) NOT NULL,
    "Expiration" NUMBER(10) NOT NULL,
    "WebPortalID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "AccountHolderID" NVARCHAR2(450),
    "BusinessApplicationID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    CONSTRAINT "PK_GenericOption" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_GenericOption_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_GenericOption_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_GenericOption_BusinessApplication_BusinessApplicationID" FOREIGN KEY ("BusinessApplicationID") REFERENCES "BusinessApplication" ("ID"),
    CONSTRAINT "FK_GenericOption_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_GenericOption_WebPortal_WebPortalID" FOREIGN KEY ("WebPortalID") REFERENCES "WebPortal" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"MarketingCampaignResponse" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "MarketingCampaignID" NVARCHAR2(450),
    CONSTRAINT "PK_MarketingCampaignResponse" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_MarketingCampaignResponse_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_MarketingCampaignResponse_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_MarketingCampaignResponse_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_MarketingCampaignResponse_MarketingCampaign_MarketingCampaignID" FOREIGN KEY ("MarketingCampaignID") REFERENCES "MarketingCampaign" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"NewsletterSubscription" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Email" NVARCHAR2(2000) NOT NULL,
    "Verified" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ContactID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "NewsletterID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_NewsletterSubscription" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_NewsletterSubscription_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_NewsletterSubscription_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_NewsletterSubscription_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_NewsletterSubscription_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_NewsletterSubscription_Newsletter_NewsletterID" FOREIGN KEY ("NewsletterID") REFERENCES "Newsletter" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PaymentRequest" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Message" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "BankAccountID" NVARCHAR2(450),
    "PaymentModeID" NVARCHAR2(450),
    "PaymentRequestType" NUMBER(10) NOT NULL,
    CONSTRAINT "PK_PaymentRequest" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PaymentRequest_Account_BankAccountID" FOREIGN KEY ("BankAccountID") REFERENCES "Account" ("ID"),
    CONSTRAINT "FK_PaymentRequest_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_PaymentRequest_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_PaymentRequest_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_PaymentRequest_PaymentMode_PaymentModeID" FOREIGN KEY ("PaymentModeID") REFERENCES "PaymentMode" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"QuoteRequest" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    CONSTRAINT "PK_QuoteRequest" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_QuoteRequest_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_QuoteRequest_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SocialProfile" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "FollowsCount" NUMBER(10) NOT NULL,
    "FollowersCount" NUMBER(10) NOT NULL,
    "UnreadedMessagesCount" NUMBER(10) NOT NULL,
    "UnreadedNotificationsCount" NUMBER(10) NOT NULL,
    "TwitterURL" NVARCHAR2(2000),
    "FacebookURL" NVARCHAR2(2000),
    "LinkedInURL" NVARCHAR2(2000),
    "YoutubeURL" NVARCHAR2(2000),
    "GithubURL" NVARCHAR2(2000),
    "Domain" NVARCHAR2(2000),
    "Notes" NVARCHAR2(2000),
    "AccountHolderID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    CONSTRAINT "PK_SocialProfile" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SocialProfile_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_SocialProfile_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SocialProfile_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WishList" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000) NOT NULL,
    "Description" NVARCHAR2(2000),
    "Public" NUMBER(1) NOT NULL,
    "CartID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    CONSTRAINT "PK_WishList" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WishList_Cart_CartID" FOREIGN KEY ("CartID") REFERENCES "Cart" ("ID"),
    CONSTRAINT "FK_WishList_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Curriculum" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "SocialProfileID" NVARCHAR2(450),
    "Undergraduate" NUMBER(1) NOT NULL,
    "CertifiedProfessional" NUMBER(1) NOT NULL,
    "SoftwareEngineering" NUMBER(1) NOT NULL,
    "CloudEngineering" NUMBER(1) NOT NULL,
    "FirstLevelSupport" NUMBER(1) NOT NULL,
    "SecondLevelSupport" NUMBER(1) NOT NULL,
    "Sales" NUMBER(1) NOT NULL,
    "HumanResources" NUMBER(1) NOT NULL,
    "Education" NUMBER(1) NOT NULL,
    "Finance" NUMBER(1) NOT NULL,
    "Administrative" NUMBER(1) NOT NULL,
    "Executive" NUMBER(1) NOT NULL,
    "Commercial" NUMBER(1) NOT NULL,
    "Advocate" NUMBER(1) NOT NULL,
    "Marketing" NUMBER(1) NOT NULL,
    "Research" NUMBER(1) NOT NULL,
    "GraphicDesign" NUMBER(1) NOT NULL,
    "PartnerAccountRepresentative" NUMBER(1) NOT NULL,
    "CustomerSuccessRepresentative" NUMBER(1) NOT NULL,
    "StartupSuccessRepresentative" NUMBER(1) NOT NULL,
    "SoundEngineering" NUMBER(1) NOT NULL,
    "Sustainability" NUMBER(1) NOT NULL,
    "Others" NUMBER(1) NOT NULL,
    CONSTRAINT "PK_Curriculum" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Curriculum_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"FollowRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "FollowRecordType" NUMBER(10) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "EnableNotifications" NUMBER(1) NOT NULL,
    "FollowerSocialProfileID" NVARCHAR2(450),
    "FollowedSocialProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_FollowRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_FollowRecord_SocialProfile_FollowedSocialProfileID" FOREIGN KEY ("FollowedSocialProfileID") REFERENCES "SocialProfile" ("ID"),
    CONSTRAINT "FK_FollowRecord_SocialProfile_FollowerSocialProfileID" FOREIGN KEY ("FollowerSocialProfileID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Notification" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Readed" NUMBER(1) NOT NULL,
    "Message" NVARCHAR2(2000),
    "Icon" NVARCHAR2(2000),
    "ImageUrl" NVARCHAR2(2000),
    "RedirectUrl" NVARCHAR2(2000),
    "Type" NUMBER(10) NOT NULL,
    "IssuedTimestamp" TIMESTAMP(7) NOT NULL,
    "ReadedTimestamp" TIMESTAMP(7) NOT NULL,
    "SocialProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_Notification" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Notification_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Project" (
    "ID" NVARCHAR2(450) NOT NULL,
    "IsTemplate" NUMBER(1) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ProjectStartDate" TIMESTAMP(7) NOT NULL,
    "ProjectEndDate" TIMESTAMP(7) NOT NULL,
    "ProjectBudgetInUSD" BINARY_DOUBLE NOT NULL,
    "ProjectOverallCompletionPercentage" NUMBER(10) NOT NULL,
    "BusinessTeamID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "SocialProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_Project" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Project_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Project_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Project_BusinessTeam_BusinessTeamID" FOREIGN KEY ("BusinessTeamID") REFERENCES "BusinessTeam" ("ID"),
    CONSTRAINT "FK_Project_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SocialBadgeRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "SocialProfileID" NVARCHAR2(450),
    "SocialBadgeID" NVARCHAR2(450),
    CONSTRAINT "PK_SocialBadgeRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SocialBadgeRecord_SocialBadge_SocialBadgeID" FOREIGN KEY ("SocialBadgeID") REFERENCES "SocialBadge" ("ID"),
    CONSTRAINT "FK_SocialBadgeRecord_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SocialFeed" (
    "ID" NVARCHAR2(450) NOT NULL,
    "SocialProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_SocialFeed" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SocialFeed_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"KanbanBoard" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ProjectID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_KanbanBoard" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_KanbanBoard_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_KanbanBoard_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_KanbanBoard_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ProjectBacklog" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ProjectID" NVARCHAR2(450),
    CONSTRAINT "PK_ProjectBacklog" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ProjectBacklog_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"TaskList" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Reminder" TIMESTAMP(7) NOT NULL,
    "Reminded" NUMBER(1) NOT NULL,
    "Template" NUMBER(1) NOT NULL,
    "SocialProfileID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "ProjectID" NVARCHAR2(450),
    CONSTRAINT "PK_TaskList" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_TaskList_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_TaskList_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_TaskList_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID"),
    CONSTRAINT "FK_TaskList_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ProjectTaskBucket" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ProjectID" NVARCHAR2(450),
    "KanbanBoardID" NVARCHAR2(450),
    CONSTRAINT "PK_ProjectTaskBucket" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ProjectTaskBucket_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ProjectTaskBucket_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ProjectTaskBucket_KanbanBoard_KanbanBoardID" FOREIGN KEY ("KanbanBoardID") REFERENCES "KanbanBoard" ("ID"),
    CONSTRAINT "FK_ProjectTaskBucket_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Task" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "DueDate" TIMESTAMP(7) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Completed" NUMBER(1) NOT NULL,
    "CompletedTimestamp" TIMESTAMP(7) NOT NULL,
    "CompletionPercentage" NUMBER(10) NOT NULL,
    "SocialProfileID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "TaskListID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "StartDate" TIMESTAMP(7),
    "DueLine" TIMESTAMP(7),
    "ProjectID" NVARCHAR2(450),
    "ProjectTaskBucketID" NVARCHAR2(450),
    CONSTRAINT "PK_Task" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Task_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Task_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Task_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID"),
    CONSTRAINT "FK_Task_ProjectTaskBucket_ProjectTaskBucketID" FOREIGN KEY ("ProjectTaskBucketID") REFERENCES "ProjectTaskBucket" ("ID"),
    CONSTRAINT "FK_Task_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID"),
    CONSTRAINT "FK_Task_TaskList_TaskListID" FOREIGN KEY ("TaskListID") REFERENCES "TaskList" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ProjectTaskRelationship" (
    "ID" NVARCHAR2(450) NOT NULL,
    "IsDependenceRelation" NUMBER(1) NOT NULL,
    "ParentTaskID" NVARCHAR2(2000),
    "ParentProjectTaskID" NVARCHAR2(450),
    "ChildProjectTaskID" NVARCHAR2(450),
    CONSTRAINT "PK_ProjectTaskRelationship" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ProjectTaskRelationship_Task_ChildProjectTaskID" FOREIGN KEY ("ChildProjectTaskID") REFERENCES "Task" ("ID"),
    CONSTRAINT "FK_ProjectTaskRelationship_Task_ParentProjectTaskID" FOREIGN KEY ("ParentProjectTaskID") REFERENCES "Task" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"TaskAssignment" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Instructions" NVARCHAR2(2000),
    "TaskID" NVARCHAR2(450),
    "SocialProfileID" NVARCHAR2(450),
    "TaskListID" NVARCHAR2(450),
    CONSTRAINT "PK_TaskAssignment" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_TaskAssignment_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID"),
    CONSTRAINT "FK_TaskAssignment_Task_TaskID" FOREIGN KEY ("TaskID") REFERENCES "Task" ("ID"),
    CONSTRAINT "FK_TaskAssignment_TaskList_TaskListID" FOREIGN KEY ("TaskListID") REFERENCES "TaskList" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ContactProfile" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "Verified" NUMBER(1) NOT NULL,
    "Submitted" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "VerificationTimestamp" TIMESTAMP(7) NOT NULL,
    "Data" NVARCHAR2(2000),
    "DataLabel" NVARCHAR2(2000),
    "Data1" NVARCHAR2(2000),
    "Data1Label" NVARCHAR2(2000),
    "Data2" NVARCHAR2(2000),
    "Data2Label" NVARCHAR2(2000),
    "Data3" NVARCHAR2(2000),
    "Data3Label" NVARCHAR2(2000),
    "Data4" NVARCHAR2(2000),
    "Data4Label" NVARCHAR2(2000),
    "Data5" NVARCHAR2(2000),
    "Data5Label" NVARCHAR2(2000),
    "Data6" NVARCHAR2(2000),
    "Data6Label" NVARCHAR2(2000),
    "Data7" NVARCHAR2(2000),
    "Data7Label" NVARCHAR2(2000),
    "Data8" NVARCHAR2(2000),
    "Data8Label" NVARCHAR2(2000),
    "Data9" NVARCHAR2(2000),
    "Data9Label" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "BankID" NVARCHAR2(450),
    "TaxID" NVARCHAR2(2000),
    "Phone" NVARCHAR2(2000),
    "Email" NVARCHAR2(2000),
    "Address" NVARCHAR2(2000),
    "Address1" NVARCHAR2(2000),
    "Address2" NVARCHAR2(2000),
    "PostalCode" NVARCHAR2(2000),
    "BusinessName" NVARCHAR2(2000),
    "CommercialName" NVARCHAR2(2000),
    "Ticker" NVARCHAR2(2000),
    "DUNS" NVARCHAR2(2000),
    "IsPublicCompany" NUMBER(1),
    "IsFactaCustomer" NUMBER(1),
    "TaxPayerType" NUMBER(10),
    "CountryID" NVARCHAR2(450),
    "CountryStateID" NVARCHAR2(450),
    "CityID" NVARCHAR2(450),
    "FiscalIdentificationTypeID" NVARCHAR2(450),
    "FiscalAuthorityID" NVARCHAR2(450),
    "FiscalRegimeID" NVARCHAR2(450),
    "GrossPay" BINARY_DOUBLE,
    "NetSalary" BINARY_DOUBLE,
    "PayrollCurrency" NVARCHAR2(2000),
    "JobTitleID" NVARCHAR2(450),
    "EmployeeTypeID" NVARCHAR2(450),
    "Authorized" NUMBER(1),
    "MarketingCampaignID" NVARCHAR2(450),
    "LeadStatus" NUMBER(10),
    "LeadRating" NUMBER(10),
    "LeadContext" NUMBER(10),
    "PurchaseTimeframe" NUMBER(10),
    "PreferredContactMethod" NUMBER(10),
    "FiscalYearEnd" TIMESTAMP(7),
    "FiscalYearStart" TIMESTAMP(7),
    "EmployeeCount" NUMBER(10),
    "IsPublic" NUMBER(1),
    "PartnerProfile_Authorized" NUMBER(1),
    "PercentageOfBusinessForSales" NUMBER(10),
    "PercentageOfBusinessForServices" NUMBER(10),
    "ConsumerMarketBusinessFocusPercentage" NUMBER(10),
    "SMBsMarketBusinessFocusPercentage" NUMBER(10),
    "EnterpriseMarketBusinessFocusPercentage" NUMBER(10),
    "EducationMarketBusinessFocusPercentage" NUMBER(10),
    "OfficialInstitutionsMarketBusinessFocusPercentage" NUMBER(10),
    "HealthcareMarketBusinessFocusPercentage" NUMBER(10),
    "OnStoreDistributionChannel" NUMBER(10),
    "E_CommerceDistributionChannel" NUMBER(10),
    "TeleSalesDistributionChannel" NUMBER(10),
    "DirectSalesDistributionChannel" NUMBER(10),
    "OtherPartners" NVARCHAR2(2000),
    "PartnerTierID" NVARCHAR2(450),
    "WalletAccountID" NVARCHAR2(450),
    CONSTRAINT "PK_ContactProfile" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ContactProfile_Bank_BankID" FOREIGN KEY ("BankID") REFERENCES "Bank" ("ID"),
    CONSTRAINT "FK_ContactProfile_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ContactProfile_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ContactProfile_City_CityID" FOREIGN KEY ("CityID") REFERENCES "City" ("ID"),
    CONSTRAINT "FK_ContactProfile_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_ContactProfile_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_ContactProfile_CountryState_CountryStateID" FOREIGN KEY ("CountryStateID") REFERENCES "CountryState" ("ID"),
    CONSTRAINT "FK_ContactProfile_EmployeeType_EmployeeTypeID" FOREIGN KEY ("EmployeeTypeID") REFERENCES "EmployeeType" ("ID"),
    CONSTRAINT "FK_ContactProfile_FiscalAuthority_FiscalAuthorityID" FOREIGN KEY ("FiscalAuthorityID") REFERENCES "FiscalAuthority" ("ID"),
    CONSTRAINT "FK_ContactProfile_FiscalIdentificationType_FiscalIdentificationTypeID" FOREIGN KEY ("FiscalIdentificationTypeID") REFERENCES "FiscalIdentificationType" ("ID"),
    CONSTRAINT "FK_ContactProfile_FiscalRegime_FiscalRegimeID" FOREIGN KEY ("FiscalRegimeID") REFERENCES "FiscalRegime" ("ID"),
    CONSTRAINT "FK_ContactProfile_JobTitle_JobTitleID" FOREIGN KEY ("JobTitleID") REFERENCES "JobTitle" ("ID"),
    CONSTRAINT "FK_ContactProfile_MarketingCampaign_MarketingCampaignID" FOREIGN KEY ("MarketingCampaignID") REFERENCES "MarketingCampaign" ("ID"),
    CONSTRAINT "FK_ContactProfile_PartnerTier_PartnerTierID" FOREIGN KEY ("PartnerTierID") REFERENCES "PartnerTier" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CreditLimit" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Value" BINARY_DOUBLE NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "ContactProfileID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_CreditLimit" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CreditLimit_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CreditLimit_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CreditLimit_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_CreditLimit_ContactProfile_ContactProfileID" FOREIGN KEY ("ContactProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_CreditLimit_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"DealUnit" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Closed" NUMBER(1) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "PartnerCreated" NUMBER(1) NOT NULL,
    "PartnerCollaboration" NUMBER(1) NOT NULL,
    "ProposedSolution" NVARCHAR2(2000),
    "CurrentSituation" NVARCHAR2(2000),
    "CustomerNeed" NVARCHAR2(2000),
    "WonDate" TIMESTAMP(7) NOT NULL,
    "LostDate" TIMESTAMP(7) NOT NULL,
    "ExpiryDate" TIMESTAMP(7) NOT NULL,
    "DeliveredDate" TIMESTAMP(7) NOT NULL,
    "ClosedTimestamp" TIMESTAMP(7) NOT NULL,
    "ExpectedCloseDate" TIMESTAMP(7) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "DealUnitStatus" NUMBER(10) NOT NULL,
    "DealUnitPurchaseProcess" NUMBER(10) NOT NULL,
    "DealUnitForecastCategory" NUMBER(10) NOT NULL,
    "DealUnitAmountsCalculation" NUMBER(10) NOT NULL,
    "ForexRatesSnapshot" NVARCHAR2(2000),
    "ForexRate" BINARY_DOUBLE NOT NULL,
    "TotalBaseAmountInUSD" BINARY_DOUBLE NOT NULL,
    "TotalDetailAmountInUSD" BINARY_DOUBLE NOT NULL,
    "TotalDiscountsInUSD" BINARY_DOUBLE NOT NULL,
    "TotalProfitInUSD" BINARY_DOUBLE NOT NULL,
    "TotalTaxBaseInUSD" BINARY_DOUBLE NOT NULL,
    "TotalTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalWithholdingTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalShippingCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalShippingTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalWarrantyCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalReturnCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalRefundCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalSurchargesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalAmountInUSD" BINARY_DOUBLE NOT NULL,
    "CustomBaseAmount" BINARY_DOUBLE NOT NULL,
    "CustomDetailAmount" BINARY_DOUBLE NOT NULL,
    "CustomDiscountsAmount" BINARY_DOUBLE NOT NULL,
    "CustomSurchargesAmount" BINARY_DOUBLE NOT NULL,
    "CustomProfitAmount" BINARY_DOUBLE NOT NULL,
    "CustomShippingCostAmount" BINARY_DOUBLE NOT NULL,
    "CustomShippingTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomTaxBase" BINARY_DOUBLE NOT NULL,
    "CustomTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomWithholdingTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomTotalAmount" BINARY_DOUBLE NOT NULL,
    "TotalGlobalDiscountsInUSD" BINARY_DOUBLE NOT NULL,
    "TotalGlobalSurchargesInUSD" BINARY_DOUBLE NOT NULL,
    "CustomGlobalSurchargesAmount" BINARY_DOUBLE NOT NULL,
    "CustomGlobalDiscountsAmount" BINARY_DOUBLE NOT NULL,
    "IndividualID" NVARCHAR2(450),
    "OrganizationID" NVARCHAR2(450),
    "ReceptorBusinessID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "PriceListID" NVARCHAR2(450),
    "TerritoryID" NVARCHAR2(450),
    "BusinessTeamID" NVARCHAR2(450),
    "WorkOrderTypeID" NVARCHAR2(450),
    "MarketingCampaignID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "DealUnitFlowID" NVARCHAR2(450),
    "DealUnitFlowStageID" NVARCHAR2(450),
    "PartnerProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_DealUnit" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_DealUnit_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_DealUnit_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_DealUnit_Business_ReceptorBusinessID" FOREIGN KEY ("ReceptorBusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_DealUnit_BusinessProcess_DealUnitFlowID" FOREIGN KEY ("DealUnitFlowID") REFERENCES "BusinessProcess" ("ID"),
    CONSTRAINT "FK_DealUnit_BusinessProcessStage_DealUnitFlowStageID" FOREIGN KEY ("DealUnitFlowStageID") REFERENCES "BusinessProcessStage" ("ID"),
    CONSTRAINT "FK_DealUnit_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_DealUnit_BusinessTeam_BusinessTeamID" FOREIGN KEY ("BusinessTeamID") REFERENCES "BusinessTeam" ("ID"),
    CONSTRAINT "FK_DealUnit_Contact_IndividualID" FOREIGN KEY ("IndividualID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_DealUnit_Contact_OrganizationID" FOREIGN KEY ("OrganizationID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_DealUnit_ContactProfile_PartnerProfileID" FOREIGN KEY ("PartnerProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_DealUnit_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_DealUnit_MarketingCampaign_MarketingCampaignID" FOREIGN KEY ("MarketingCampaignID") REFERENCES "MarketingCampaign" ("ID"),
    CONSTRAINT "FK_DealUnit_PriceList_PriceListID" FOREIGN KEY ("PriceListID") REFERENCES "PriceList" ("ID"),
    CONSTRAINT "FK_DealUnit_Territory_TerritoryID" FOREIGN KEY ("TerritoryID") REFERENCES "Territory" ("ID"),
    CONSTRAINT "FK_DealUnit_WorkOrderType_WorkOrderTypeID" FOREIGN KEY ("WorkOrderTypeID") REFERENCES "WorkOrderType" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"EmployeeDegree" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Institution" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "AchievedDate" TIMESTAMP(7) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "EmployeeProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_EmployeeDegree" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_EmployeeDegree_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_EmployeeDegree_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_EmployeeDegree_ContactProfile_EmployeeProfileID" FOREIGN KEY ("EmployeeProfileID") REFERENCES "ContactProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"FiscalResponsibilityRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "FiscalResponsibilityID" NVARCHAR2(450),
    "BillingProfileID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_FiscalResponsibilityRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_FiscalResponsibilityRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_FiscalResponsibilityRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_FiscalResponsibilityRecord_ContactProfile_BillingProfileID" FOREIGN KEY ("BillingProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_FiscalResponsibilityRecord_FiscalResponsibility_FiscalResponsibilityID" FOREIGN KEY ("FiscalResponsibilityID") REFERENCES "FiscalResponsibility" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Item" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Discriminator" NVARCHAR2(2000),
    "Type" NVARCHAR2(2000) NOT NULL,
    "Permalink" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Barcode" NVARCHAR2(2000),
    "SKU" NVARCHAR2(2000),
    "SKUs" NVARCHAR2(2000),
    "ISBN13" NVARCHAR2(2000),
    "ISBN" NVARCHAR2(2000),
    "ISBNs" NVARCHAR2(2000),
    "UPC" NVARCHAR2(2000),
    "UPCs" NVARCHAR2(2000),
    "EAN" NVARCHAR2(2000),
    "EANs" NVARCHAR2(2000),
    "ASIN" NVARCHAR2(2000),
    "ASINs" NVARCHAR2(2000),
    "UNSPSC" NVARCHAR2(2000),
    "UNSPSCs" NVARCHAR2(2000),
    "GTIN" NVARCHAR2(2000),
    "GTINs" NVARCHAR2(2000),
    "MPN" NVARCHAR2(2000),
    "MPNs" NVARCHAR2(2000),
    "SupplierCode" NVARCHAR2(2000),
    "Series" NVARCHAR2(2000),
    "Part" NVARCHAR2(2000),
    "Model" NVARCHAR2(2000),
    "Auction" NUMBER(1) NOT NULL,
    "AuctionEnd" TIMESTAMP(7) NOT NULL,
    "AuctionStart" TIMESTAMP(7) NOT NULL,
    "TariffHeading" NVARCHAR2(2000),
    "SystemRequirements" NVARCHAR2(2000),
    "OperatingSystemSupported" NVARCHAR2(2000),
    "Title" NVARCHAR2(2000) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "ShortDescription" NVARCHAR2(2000),
    "PublishedDate" TIMESTAMP(7) NOT NULL,
    "OfficialDescriptionURL" NVARCHAR2(2000),
    "PrimaryImageURL" NVARCHAR2(2000),
    "ValidPrimaryImage" NUMBER(1) NOT NULL,
    "PurchaseNote" NVARCHAR2(2000),
    "Features" NVARCHAR2(2000),
    "Ingredients" NVARCHAR2(2000),
    "ReleaseDate" NVARCHAR2(2000),
    "Pattern" NVARCHAR2(2000),
    "Material" NVARCHAR2(2000),
    "Color" NVARCHAR2(2000),
    "NutritionFacts" NVARCHAR2(2000),
    "EnergyEfficiencyRating" NVARCHAR2(2000),
    "Published" NUMBER(1) NOT NULL,
    "Deleted" NUMBER(1) NOT NULL,
    "Digital" NUMBER(1) NOT NULL,
    "PreSale" NUMBER(1) NOT NULL,
    "ByRequest" NUMBER(1) NOT NULL,
    "Taxable" NUMBER(1) NOT NULL,
    "IsMonthlyDeal" NUMBER(1) NOT NULL,
    "Featured" NUMBER(1) NOT NULL,
    "Hot" NUMBER(1) NOT NULL,
    "DisplayOnGlobalMozaic" NUMBER(1) NOT NULL,
    "DisplayOnCategoryMozaic" NUMBER(1) NOT NULL,
    "DisplayOnBannerMarketingRotation" NUMBER(1) NOT NULL,
    "DisplayOnBrandsMozaic" NUMBER(1) NOT NULL,
    "MozaicCoverURL" NVARCHAR2(2000),
    "YoutubeVideoID" NVARCHAR2(2000),
    "PageCoverBackgroundURL" NVARCHAR2(2000),
    "Recurrency" DECIMAL(18, 2) NOT NULL,
    "PackageContent" NVARCHAR2(2000),
    "PackagedQuantity" NUMBER(10) NOT NULL,
    "Variations" NVARCHAR2(2000),
    "ShipsToRules" NVARCHAR2(2000),
    "Categories" NVARCHAR2(2000),
    "GoogleCategories" NVARCHAR2(2000),
    "Brands" NVARCHAR2(2000),
    "OnDiscount" NUMBER(1) NOT NULL,
    "IsFixedDiscount" NUMBER(1) NOT NULL,
    "IsDeadlineDiscount" NUMBER(1) NOT NULL,
    "DiscountPercentage" BINARY_DOUBLE NOT NULL,
    "DiscountPrice" BINARY_DOUBLE NOT NULL,
    "DiscountAmount" BINARY_DOUBLE NOT NULL,
    "DeadlineDiscountFromDate" TIMESTAMP(7) NOT NULL,
    "DeadlineDiscountDueDate" TIMESTAMP(7) NOT NULL,
    "InStock" NUMBER(1) NOT NULL,
    "LowStock" NUMBER(1) NOT NULL,
    "CurrentStock" DECIMAL(18, 2) NOT NULL,
    "ManageInventory" NUMBER(1) NOT NULL,
    "TaxIncludedInPrice" NUMBER(1) NOT NULL,
    "LastFixedPricesUpdateDateTime" TIMESTAMP(7) NOT NULL,
    "DisableDefaultPolicies" NUMBER(1) NOT NULL,
    "RegularPrice" BINARY_DOUBLE NOT NULL,
    "EstimatedRegularPriceInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedBasePriceInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedTaxBasePriceInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedProfitInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedSurchargesInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedDiscountsInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedWitholdingTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedPaymentCostInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedPaymentTaxInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedDefaultShippingCostInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedDefaultShippingTaxInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedTotalPriceInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedRevenueInUSD" BINARY_DOUBLE NOT NULL,
    "EstimatedDealSavingsInUSD" BINARY_DOUBLE NOT NULL,
    "ParentItemID" NVARCHAR2(450),
    "Weight" NVARCHAR2(2000),
    "Height" BINARY_DOUBLE NOT NULL,
    "Width" BINARY_DOUBLE NOT NULL,
    "Length" BINARY_DOUBLE NOT NULL,
    "CountryLanguageID" NVARCHAR2(450),
    "ItemTypeID" NVARCHAR2(450),
    "UnitGroupID" NVARCHAR2(450),
    "UnitID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "ItemGoogleCategoryID" NVARCHAR2(450),
    "CountryID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "BrandID" NVARCHAR2(450),
    "ShippingClassID" NVARCHAR2(450),
    "ItemClassID" NVARCHAR2(2000),
    "ItemClass" NUMBER(10) NOT NULL,
    "ItemCategoryID" NVARCHAR2(450),
    "SupplierProfileID" NVARCHAR2(450),
    "BateryType" NVARCHAR2(2000) NOT NULL,
    "RecurrencyPeriod" NUMBER(10) NOT NULL,
    "MeasurementUnits" NVARCHAR2(2000) NOT NULL,
    "ContainsOrIsBattery" NUMBER(1) NOT NULL,
    "IsStandaloneBatery" NUMBER(1) NOT NULL,
    "BateryWeight" BINARY_DOUBLE NOT NULL,
    "NumberOfBatteries" NUMBER(10) NOT NULL,
    "WattHours" NUMBER(10) NOT NULL,
    "CellsInBattery" NUMBER(10) NOT NULL,
    "IsNewArrival" NUMBER(1) NOT NULL,
    "IsBestSeller" NUMBER(1) NOT NULL,
    "IsProductOfTheMonth" NUMBER(1) NOT NULL,
    "IsProductOfTheWeek" NUMBER(1) NOT NULL,
    "IsDailyDeal" NUMBER(1) NOT NULL,
    "IsWeeklyDeal" NUMBER(1) NOT NULL,
    "IsMontlyDeal" NUMBER(1) NOT NULL,
    "IsDealersChoice" NUMBER(1) NOT NULL,
    "TryWebScraping" NUMBER(1) NOT NULL,
    "IsOfficialChoice" NUMBER(1) NOT NULL,
    "DisplayShowcaseTab" NUMBER(1) NOT NULL,
    "DisplayDescriptionEditor" NUMBER(1) NOT NULL,
    "DisplayShortDescriptionEditor" NUMBER(1) NOT NULL,
    "RatingAverage" BINARY_DOUBLE NOT NULL,
    "MinRating" BINARY_DOUBLE NOT NULL,
    "MaxRating" BINARY_DOUBLE NOT NULL,
    "ViewsCount" NUMBER(19) NOT NULL,
    "ReviewsCount" NUMBER(19) NOT NULL,
    "SalesCount" NUMBER(19) NOT NULL,
    "CustomAddedPercentage" BINARY_DOUBLE NOT NULL,
    "CustomAddedValue" BINARY_DOUBLE NOT NULL,
    "CustomTaxPercentage" BINARY_DOUBLE NOT NULL,
    "CustomTaxValue" BINARY_DOUBLE NOT NULL,
    "CustomTaxDescription" NVARCHAR2(2000),
    "Minted" NUMBER(1),
    "BlockchainID" NVARCHAR2(450),
    "MintedTimestamp" TIMESTAMP(7),
    "MintTransactionHash" NVARCHAR2(2000),
    "BlockchainBlockID" NVARCHAR2(450),
    "Code" NVARCHAR2(2000),
    "Version" NVARCHAR2(2000),
    "Summary" NVARCHAR2(2000),
    "SubmitTolerance" NVARCHAR2(2000),
    "MaxCourseEnrollments" NUMBER(10),
    "TotalEffortInWeeks" NUMBER(10),
    "TotalHoursPerWeek" NUMBER(10),
    "TotalEffortInHours" NUMBER(10),
    "CalificationRanges" NVARCHAR2(2000),
    "Prerequisites" NVARCHAR2(2000),
    "MatlabAPI" NVARCHAR2(2000),
    "StartDateTime" TIMESTAMP(7),
    "EndDateTime" TIMESTAMP(7),
    "InscriptionsStartDateTime" TIMESTAMP(7),
    "InscriptionsEndDateTime" TIMESTAMP(7),
    "CourseCategoryID" NVARCHAR2(450),
    "InstructorProfileID" NVARCHAR2(450),
    "AllowTrials" NUMBER(1),
    "IsPerpetualLicense" NUMBER(1),
    "MaxLicenseUtilizations" NUMBER(10),
    "TrialLicenseRelativeExpirationInDays" NUMBER(10),
    "StandardLicenseRelativeExpirationInDays" NUMBER(10),
    "ServiceID" NVARCHAR2(450),
    CONSTRAINT "PK_Item" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Item_Blockchain_BlockchainID" FOREIGN KEY ("BlockchainID") REFERENCES "Blockchain" ("ID"),
    CONSTRAINT "FK_Item_BlockchainBlock_BlockchainBlockID" FOREIGN KEY ("BlockchainBlockID") REFERENCES "BlockchainBlock" ("ID"),
    CONSTRAINT "FK_Item_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Item_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Item_ContactProfile_InstructorProfileID" FOREIGN KEY ("InstructorProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Item_ContactProfile_SupplierProfileID" FOREIGN KEY ("SupplierProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Item_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_Item_CountryLanguage_CountryLanguageID" FOREIGN KEY ("CountryLanguageID") REFERENCES "CountryLanguage" ("Iso639_1"),
    CONSTRAINT "FK_Item_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_Item_Item_ParentItemID" FOREIGN KEY ("ParentItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_Item_Item_ServiceID" FOREIGN KEY ("ServiceID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_Item_ItemBrand_BrandID" FOREIGN KEY ("BrandID") REFERENCES "ItemBrand" ("ID"),
    CONSTRAINT "FK_Item_ItemCategory_CourseCategoryID" FOREIGN KEY ("CourseCategoryID") REFERENCES "ItemCategory" ("ID"),
    CONSTRAINT "FK_Item_ItemCategory_ItemCategoryID" FOREIGN KEY ("ItemCategoryID") REFERENCES "ItemCategory" ("ID"),
    CONSTRAINT "FK_Item_ItemGoogleCategory_ItemGoogleCategoryID" FOREIGN KEY ("ItemGoogleCategoryID") REFERENCES "ItemGoogleCategory" ("ID"),
    CONSTRAINT "FK_Item_ItemType_ItemTypeID" FOREIGN KEY ("ItemTypeID") REFERENCES "ItemType" ("ID"),
    CONSTRAINT "FK_Item_ShippingClass_ShippingClassID" FOREIGN KEY ("ShippingClassID") REFERENCES "ShippingClass" ("ID"),
    CONSTRAINT "FK_Item_Unit_UnitID" FOREIGN KEY ("UnitID") REFERENCES "Unit" ("ID"),
    CONSTRAINT "FK_Item_UnitGroup_UnitGroupID" FOREIGN KEY ("UnitGroupID") REFERENCES "UnitGroup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"JobOffer" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "TechnicalSkills" NVARCHAR2(2000),
    "NonTechnicalSkills" NVARCHAR2(2000),
    "Certifications" NVARCHAR2(2000),
    "ProjectExperience" NVARCHAR2(2000),
    "Technologies" NVARCHAR2(2000),
    "IsOfficialJobOffer" NUMBER(1) NOT NULL,
    "IsRemoteJobOffer" NUMBER(1) NOT NULL,
    "IsMidTimeJobOffer" NUMBER(1) NOT NULL,
    "IsUndergraduateOption" NUMBER(1) NOT NULL,
    "MinOverallExperienceYears" NUMBER(10) NOT NULL,
    "AvailiablePositionsCount" NUMBER(10) NOT NULL,
    "JobFieldID" NVARCHAR2(450),
    "EmployerProfileID" NVARCHAR2(450),
    "CountryID" NVARCHAR2(450),
    "CountryStateID" NVARCHAR2(450),
    "CityID" NVARCHAR2(450),
    "JobTitleID" NVARCHAR2(450),
    CONSTRAINT "PK_JobOffer" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_JobOffer_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_JobOffer_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_JobOffer_City_CityID" FOREIGN KEY ("CityID") REFERENCES "City" ("ID"),
    CONSTRAINT "FK_JobOffer_ContactProfile_EmployerProfileID" FOREIGN KEY ("EmployerProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_JobOffer_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_JobOffer_CountryState_CountryStateID" FOREIGN KEY ("CountryStateID") REFERENCES "CountryState" ("ID"),
    CONSTRAINT "FK_JobOffer_JobField_JobFieldID" FOREIGN KEY ("JobFieldID") REFERENCES "JobField" ("ID"),
    CONSTRAINT "FK_JobOffer_JobTitle_JobTitleID" FOREIGN KEY ("JobTitleID") REFERENCES "JobTitle" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"LeaveApplication" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Justification" NVARCHAR2(2000),
    "Approved" NUMBER(1) NOT NULL,
    "OnReview" NUMBER(1) NOT NULL,
    "LeaveTypeID" NVARCHAR2(450),
    "EmployeeProfileID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_LeaveApplication" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_LeaveApplication_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_LeaveApplication_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_LeaveApplication_ContactProfile_EmployeeProfileID" FOREIGN KEY ("EmployeeProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_LeaveApplication_LeaveType_LeaveTypeID" FOREIGN KEY ("LeaveTypeID") REFERENCES "LeaveType" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Location" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Verified" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "VerificationTimestamp" TIMESTAMP(7) NOT NULL,
    "Title" NVARCHAR2(2000) NOT NULL,
    "Company" NVARCHAR2(2000),
    "Email" NVARCHAR2(2000),
    "Address1" NVARCHAR2(2000) NOT NULL,
    "Address2" NVARCHAR2(2000),
    "Address3" NVARCHAR2(2000),
    "Unit" NVARCHAR2(2000),
    "CustomCity" NVARCHAR2(2000),
    "CustomState" NVARCHAR2(2000),
    "PostalCode" NVARCHAR2(2000),
    "Phone" NVARCHAR2(2000),
    "Fax" NVARCHAR2(2000),
    "Longitud" BINARY_DOUBLE NOT NULL,
    "Latitud" BINARY_DOUBLE NOT NULL,
    "IsRoutable" NUMBER(1) NOT NULL,
    "IsGlobalPrimary" NUMBER(1) NOT NULL,
    "IsCountryPrimary" NUMBER(1) NOT NULL,
    "CanGenerateLabels" NUMBER(1) NOT NULL,
    "IsDefaultSenderAddress" NUMBER(1) NOT NULL,
    "IsDefaultReturnAddress" NUMBER(1) NOT NULL,
    "IsDefaultShippingLocation" NUMBER(1) NOT NULL,
    "IsDefaultBillingLocation" NUMBER(1) NOT NULL,
    "CountryID" NVARCHAR2(450),
    "CountryStateID" NVARCHAR2(450),
    "CityID" NVARCHAR2(450),
    "SocialProfileID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "ContactID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "IsGroup" NUMBER(1),
    "ShipwireWarehouseID" NVARCHAR2(2000),
    "ParentWarehouseID" NVARCHAR2(450),
    "SupplierProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_Location" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Location_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_Location_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Location_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Location_City_CityID" FOREIGN KEY ("CityID") REFERENCES "City" ("ID"),
    CONSTRAINT "FK_Location_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Location_ContactProfile_SupplierProfileID" FOREIGN KEY ("SupplierProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Location_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_Location_CountryState_CountryStateID" FOREIGN KEY ("CountryStateID") REFERENCES "CountryState" ("ID"),
    CONSTRAINT "FK_Location_Location_ParentWarehouseID" FOREIGN KEY ("ParentWarehouseID") REFERENCES "Location" ("ID"),
    CONSTRAINT "FK_Location_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"MarketingAreaSubscription" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "PartnerProfileID" NVARCHAR2(450),
    "MarketingAreaID" NVARCHAR2(450),
    CONSTRAINT "PK_MarketingAreaSubscription" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_MarketingAreaSubscription_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_MarketingAreaSubscription_ContactProfile_PartnerProfileID" FOREIGN KEY ("PartnerProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_MarketingAreaSubscription_MarketingArea_MarketingAreaID" FOREIGN KEY ("MarketingAreaID") REFERENCES "MarketingArea" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"MarketingListMembership" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "LeadProfileID" NVARCHAR2(450),
    "MarketingListID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_MarketingListMembership" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_MarketingListMembership_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_MarketingListMembership_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_MarketingListMembership_ContactProfile_LeadProfileID" FOREIGN KEY ("LeadProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_MarketingListMembership_MarketingList_MarketingListID" FOREIGN KEY ("MarketingListID") REFERENCES "MarketingList" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PurchaseRequest" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "SupplierProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_PurchaseRequest" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PurchaseRequest_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_PurchaseRequest_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_PurchaseRequest_ContactProfile_SupplierProfileID" FOREIGN KEY ("SupplierProfileID") REFERENCES "ContactProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Salary" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Amount" BINARY_DOUBLE NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "EmployeeProfileID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_Salary" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Salary_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Salary_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Salary_ContactProfile_EmployeeProfileID" FOREIGN KEY ("EmployeeProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Salary_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShareTransfer" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Value" BINARY_DOUBLE NOT NULL,
    "NewShareHolderID" NVARCHAR2(450),
    "FormerShareHolderID" NVARCHAR2(450),
    "ShareTransferReasonID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ShareTransfer" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShareTransfer_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ShareTransfer_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ShareTransfer_ContactProfile_FormerShareHolderID" FOREIGN KEY ("FormerShareHolderID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_ShareTransfer_ContactProfile_NewShareHolderID" FOREIGN KEY ("NewShareHolderID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_ShareTransfer_ShareTransferReason_ShareTransferReasonID" FOREIGN KEY ("ShareTransferReasonID") REFERENCES "ShareTransferReason" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SigningCertificate" (
    "ID" NVARCHAR2(450) NOT NULL,
    "URL" NVARCHAR2(2000),
    "CSR" NVARCHAR2(2000),
    "Type" NVARCHAR2(2000),
    "Title" NVARCHAR2(2000),
    "PublicKey" NVARCHAR2(2000),
    "PrivateKey" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "FileLengthInBits" NUMBER(19) NOT NULL,
    "CertificateType" NUMBER(10) NOT NULL,
    "ContactID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "SigningProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_SigningCertificate" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SigningCertificate_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_SigningCertificate_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SigningCertificate_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_SigningCertificate_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_SigningCertificate_ContactProfile_SigningProfileID" FOREIGN KEY ("SigningProfileID") REFERENCES "ContactProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SupplierGroupRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "SupplierProfileID" NVARCHAR2(450),
    "SupplierGroupID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_SupplierGroupRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SupplierGroupRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SupplierGroupRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_SupplierGroupRecord_ContactProfile_SupplierProfileID" FOREIGN KEY ("SupplierProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_SupplierGroupRecord_SupplierGroup_SupplierGroupID" FOREIGN KEY ("SupplierGroupID") REFERENCES "SupplierGroup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"TrainingProgramApplication" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "TrainingProgramID" NVARCHAR2(450),
    "EmployeeProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_TrainingProgramApplication" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_TrainingProgramApplication_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_TrainingProgramApplication_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_TrainingProgramApplication_ContactProfile_EmployeeProfileID" FOREIGN KEY ("EmployeeProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_TrainingProgramApplication_TrainingProgram_TrainingProgramID" FOREIGN KEY ("TrainingProgramID") REFERENCES "TrainingProgram" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Transaction" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Description" NVARCHAR2(2000),
    "Price" BINARY_DOUBLE NOT NULL,
    "Quantity" BINARY_DOUBLE NOT NULL,
    "ExternalDescription" NVARCHAR2(2000),
    "BasisQuantity" BINARY_DOUBLE NOT NULL,
    "BasisAmount" BINARY_DOUBLE NOT NULL,
    "Percent" BINARY_DOUBLE NOT NULL,
    "UnitGroupID" NVARCHAR2(450),
    "UnitID" NVARCHAR2(450),
    "TransactionCategoryID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "BankProfileID" NVARCHAR2(450),
    "BankAccountID" NVARCHAR2(450),
    "ProjectResourceID" NVARCHAR2(450),
    "ProjectTaskID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "ProjectID" NVARCHAR2(450),
    "ProjectResourceRoleID" NVARCHAR2(450),
    "AccountingDate" TIMESTAMP(7),
    "DocumentDate" TIMESTAMP(7),
    "StartDateTime" TIMESTAMP(7),
    "EndDateTime" TIMESTAMP(7),
    "BillingType" NUMBER(10),
    "CustomerType" NUMBER(10),
    "TransactionType" NUMBER(10),
    "TransactionClass" NUMBER(10),
    "AmountMethod" NUMBER(10),
    "ProjectJournalID" NVARCHAR2(450),
    CONSTRAINT "PK_Transaction" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Transaction_Account_BankAccountID" FOREIGN KEY ("BankAccountID") REFERENCES "Account" ("ID"),
    CONSTRAINT "FK_Transaction_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Transaction_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Transaction_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Transaction_ContactProfile_BankProfileID" FOREIGN KEY ("BankProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Transaction_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_Transaction_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID"),
    CONSTRAINT "FK_Transaction_ProjectJournal_ProjectJournalID" FOREIGN KEY ("ProjectJournalID") REFERENCES "ProjectJournal" ("ID"),
    CONSTRAINT "FK_Transaction_ProjectResource_ProjectResourceID" FOREIGN KEY ("ProjectResourceID") REFERENCES "ProjectResource" ("ID"),
    CONSTRAINT "FK_Transaction_ProjectResourceRole_ProjectResourceRoleID" FOREIGN KEY ("ProjectResourceRoleID") REFERENCES "ProjectResourceRole" ("ID"),
    CONSTRAINT "FK_Transaction_Task_ProjectTaskID" FOREIGN KEY ("ProjectTaskID") REFERENCES "Task" ("ID"),
    CONSTRAINT "FK_Transaction_TransactionCategory_TransactionCategoryID" FOREIGN KEY ("TransactionCategoryID") REFERENCES "TransactionCategory" ("ID"),
    CONSTRAINT "FK_Transaction_Unit_UnitID" FOREIGN KEY ("UnitID") REFERENCES "Unit" ("ID"),
    CONSTRAINT "FK_Transaction_UnitGroup_UnitGroupID" FOREIGN KEY ("UnitGroupID") REFERENCES "UnitGroup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CustomPropertyRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Value" NVARCHAR2(2000),
    "CustomPropertyID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "ContactID" NVARCHAR2(450),
    "DealUnitID" NVARCHAR2(450),
    CONSTRAINT "PK_CustomPropertyRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CustomPropertyRecord_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_CustomPropertyRecord_CustomProperty_CustomPropertyID" FOREIGN KEY ("CustomPropertyID") REFERENCES "CustomProperty" ("ID"),
    CONSTRAINT "FK_CustomPropertyRecord_DealUnit_DealUnitID" FOREIGN KEY ("DealUnitID") REFERENCES "DealUnit" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseAssignmentType" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Abbreviation" NVARCHAR2(2000),
    "Weight" BINARY_DOUBLE NOT NULL,
    "Quantity" NUMBER(10) NOT NULL,
    "Excluded" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "CourseID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseAssignmentType" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseAssignmentType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseAssignmentType_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseAssignmentType_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseCollectionRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "CourseCollectionID" NVARCHAR2(450),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CourseID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseCollectionRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseCollectionRecord_Item_CourseCollectionID" FOREIGN KEY ("CourseCollectionID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_CourseCollectionRecord_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseContentGroup" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CourseID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseContentGroup" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseContentGroup_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseContentGroup_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseContentGroup_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseGradingRubric" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "EnablePoints" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CourseID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseGradingRubric" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseGradingRubric_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseGradingRubric_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseGradingRubric_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseSection" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Icon" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "CourseID" NVARCHAR2(450),
    "ReleaseDateTime" TIMESTAMP(7) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "HideFromStudents" NUMBER(1) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseSection" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseSection_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseSection_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseSection_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseTeamMembership" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CourseID" NVARCHAR2(450),
    "InstructorProfileID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "CourseTeamMembershipType" NUMBER(10) NOT NULL,
    CONSTRAINT "PK_CourseTeamMembership" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseTeamMembership_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseTeamMembership_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseTeamMembership_ContactProfile_InstructorProfileID" FOREIGN KEY ("InstructorProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_CourseTeamMembership_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemAttributeOptionRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ItemID" NVARCHAR2(450),
    "AttributeOptionID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemAttributeOptionRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemAttributeOptionRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemAttributeOptionRecord_ItemAttributeOption_AttributeOptionID" FOREIGN KEY ("AttributeOptionID") REFERENCES "ItemAttributeOption" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemBundleRecord" (
    "ProductBundleRecordID" NVARCHAR2(450) NOT NULL,
    "ParentItemID" NVARCHAR2(450),
    "ItemBundleID" NVARCHAR2(450),
    "ChildItemID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemBundleRecord" PRIMARY KEY ("ProductBundleRecordID"),
    CONSTRAINT "FK_ItemBundleRecord_Item_ChildItemID" FOREIGN KEY ("ChildItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemBundleRecord_Item_ParentItemID" FOREIGN KEY ("ParentItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemBundleRecord_ItemBundle_ItemBundleID" FOREIGN KEY ("ItemBundleID") REFERENCES "ItemBundle" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemCategoryRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ItemCategoryID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemCategoryRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemCategoryRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemCategoryRecord_ItemCategory_ItemCategoryID" FOREIGN KEY ("ItemCategoryID") REFERENCES "ItemCategory" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemFamilyRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ItemFamilyID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemFamilyRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemFamilyRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemFamilyRecord_ItemFamily_ItemFamilyID" FOREIGN KEY ("ItemFamilyID") REFERENCES "ItemFamily" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemGoogleCategoryRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ItemID" NVARCHAR2(450),
    "ItemGoogleCategoryID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemGoogleCategoryRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemGoogleCategoryRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemGoogleCategoryRecord_ItemGoogleCategory_ItemGoogleCategoryID" FOREIGN KEY ("ItemGoogleCategoryID") REFERENCES "ItemGoogleCategory" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemGroupRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ItemGroupID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemGroupRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemGroupRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemGroupRecord_ItemGroup_ItemGroupID" FOREIGN KEY ("ItemGroupID") REFERENCES "ItemGroup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemQuestion" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "NeedsRevision" NUMBER(1) NOT NULL,
    "Question" NVARCHAR2(2000) NOT NULL,
    "SocialProfileID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    "Type" NVARCHAR2(2000) NOT NULL,
    CONSTRAINT "PK_ItemQuestion" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemQuestion_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ItemQuestion_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemQuestion_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemShippingPolicyRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ItemID" NVARCHAR2(450),
    "ItemShippingPolicyID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemShippingPolicyRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemShippingPolicyRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ItemShippingPolicyRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemShippingPolicyRecord_Policy_ItemShippingPolicyID" FOREIGN KEY ("ItemShippingPolicyID") REFERENCES "Policy" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemTagRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ItemTagID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemTagRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemTagRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemTagRecord_ItemTag_ItemTagID" FOREIGN KEY ("ItemTagID") REFERENCES "ItemTag" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemTypeRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ItemTypeID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemTypeRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemTypeRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemTypeRecord_ItemType_ItemTypeID" FOREIGN KEY ("ItemTypeID") REFERENCES "ItemType" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"LicenseAttribute" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Code" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "LicenseTypeID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_LicenseAttribute" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_LicenseAttribute_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_LicenseAttribute_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_LicenseAttribute_Item_LicenseTypeID" FOREIGN KEY ("LicenseTypeID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"LicenseFeature" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Code" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "AccessKeyPairID" NVARCHAR2(450),
    "LicenseTypeID" NVARCHAR2(450),
    CONSTRAINT "PK_LicenseFeature" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_LicenseFeature_AccessKeyPair_AccessKeyPairID" FOREIGN KEY ("AccessKeyPairID") REFERENCES "AccessKeyPair" ("IP"),
    CONSTRAINT "FK_LicenseFeature_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_LicenseFeature_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_LicenseFeature_Item_LicenseTypeID" FOREIGN KEY ("LicenseTypeID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PriceListItem" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Price" BINARY_DOUBLE NOT NULL,
    "Percent" BINARY_DOUBLE NOT NULL,
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "UnitID" NVARCHAR2(450),
    "UnitGroupID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "PriceListID" NVARCHAR2(450),
    "DiscountListID" NVARCHAR2(450),
    "RoundingPolicyID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "TransactionCategoryID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    "ItemPriceListID" NVARCHAR2(450),
    CONSTRAINT "PK_PriceListItem" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PriceListItem_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_PriceListItem_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_PriceListItem_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_PriceListItem_DiscountList_DiscountListID" FOREIGN KEY ("DiscountListID") REFERENCES "DiscountList" ("ID"),
    CONSTRAINT "FK_PriceListItem_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_PriceListItem_Policy_RoundingPolicyID" FOREIGN KEY ("RoundingPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_PriceListItem_PriceList_ItemPriceListID" FOREIGN KEY ("ItemPriceListID") REFERENCES "PriceList" ("ID"),
    CONSTRAINT "FK_PriceListItem_PriceList_PriceListID" FOREIGN KEY ("PriceListID") REFERENCES "PriceList" ("ID"),
    CONSTRAINT "FK_PriceListItem_TransactionCategory_TransactionCategoryID" FOREIGN KEY ("TransactionCategoryID") REFERENCES "TransactionCategory" ("ID"),
    CONSTRAINT "FK_PriceListItem_Unit_UnitID" FOREIGN KEY ("UnitID") REFERENCES "Unit" ("ID"),
    CONSTRAINT "FK_PriceListItem_UnitGroup_UnitGroupID" FOREIGN KEY ("UnitGroupID") REFERENCES "UnitGroup" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SalesLiteratureRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "SalesLiteratureID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "ItemID" NVARCHAR2(450),
    CONSTRAINT "PK_SalesLiteratureRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SalesLiteratureRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SalesLiteratureRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_SalesLiteratureRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_SalesLiteratureRecord_SalesLiterature_SalesLiteratureID" FOREIGN KEY ("SalesLiteratureID") REFERENCES "SalesLiterature" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Schedule" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Disabled" NUMBER(1) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "FiscalYearID" NVARCHAR2(450),
    "HolidayScheduleID" NVARCHAR2(450),
    "Sunday" NUMBER(1) NOT NULL,
    "Monday" NUMBER(1) NOT NULL,
    "Tuesday" NUMBER(1) NOT NULL,
    "Wednesday" NUMBER(1) NOT NULL,
    "Thursday" NUMBER(1) NOT NULL,
    "Friday" NUMBER(1) NOT NULL,
    "Saturday" NUMBER(1) NOT NULL,
    "UniqueInterval" NUMBER(1) NOT NULL,
    "_24x7Interval" NUMBER(1) NOT NULL,
    "Start" TIMESTAMP(7) NOT NULL,
    "End" TIMESTAMP(7) NOT NULL,
    "TimezoneID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "AssetID" NVARCHAR2(450),
    "ServiceID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "ProjectID" NVARCHAR2(450),
    CONSTRAINT "PK_Schedule" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Schedule_Asset_AssetID" FOREIGN KEY ("AssetID") REFERENCES "Asset" ("ID"),
    CONSTRAINT "FK_Schedule_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Schedule_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Schedule_FiscalYear_FiscalYearID" FOREIGN KEY ("FiscalYearID") REFERENCES "FiscalYear" ("ID"),
    CONSTRAINT "FK_Schedule_HolidaySchedule_HolidayScheduleID" FOREIGN KEY ("HolidayScheduleID") REFERENCES "HolidaySchedule" ("ID"),
    CONSTRAINT "FK_Schedule_Item_ServiceID" FOREIGN KEY ("ServiceID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_Schedule_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID"),
    CONSTRAINT "FK_Schedule_Timezone_TimezoneID" FOREIGN KEY ("TimezoneID") REFERENCES "Timezone" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ServiceQueueRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Order" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ServiceQueueID" NVARCHAR2(450),
    "ServiceID" NVARCHAR2(450),
    CONSTRAINT "PK_ServiceQueueRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ServiceQueueRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ServiceQueueRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ServiceQueueRecord_Item_ServiceID" FOREIGN KEY ("ServiceID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ServiceQueueRecord_ServiceQueue_ServiceQueueID" FOREIGN KEY ("ServiceQueueID") REFERENCES "ServiceQueue" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SocialGroup" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Title" NVARCHAR2(2000),
    "AvatarURL" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "SocialProfileID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "CourseID" NVARCHAR2(450),
    CONSTRAINT "PK_SocialGroup" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SocialGroup_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SocialGroup_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_SocialGroup_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_SocialGroup_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"TrainingProgramCourse" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "TrainingProgramID" NVARCHAR2(450),
    "CourseID" NVARCHAR2(450),
    CONSTRAINT "PK_TrainingProgramCourse" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_TrainingProgramCourse_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_TrainingProgramCourse_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_TrainingProgramCourse_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_TrainingProgramCourse_TrainingProgram_TrainingProgramID" FOREIGN KEY ("TrainingProgramID") REFERENCES "TrainingProgram" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WishListRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000),
    "WishListID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "ItemID" NVARCHAR2(450),
    CONSTRAINT "PK_WishListRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WishListRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_WishListRecord_WishList_WishListID" FOREIGN KEY ("WishListID") REFERENCES "WishList" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CurriculumRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "Validated" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CurriculumID" NVARCHAR2(450),
    "ProficiencyRatingValueID" NVARCHAR2(450),
    "ProficiencyRatingModelID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Title" NVARCHAR2(2000),
    "KnowledgeField" NVARCHAR2(2000),
    "Date" TIMESTAMP(7),
    "AcademicInstitutionProfileID" NVARCHAR2(450),
    "ExperienceInYears" NUMBER(10),
    "Priority" DECIMAL(18, 2),
    "CurriculumSkillID" NVARCHAR2(450),
    "InstitutionDiploma_Date" TIMESTAMP(7),
    "InstitutionDiploma_AcademicInstitutionProfileID" NVARCHAR2(450),
    "JobOfferID" NVARCHAR2(450),
    "ProfessionalDegree_Title" NVARCHAR2(2000),
    "ProfessionalDegree_KnowledgeField" NVARCHAR2(2000),
    "ProfessionalDegree_Date" TIMESTAMP(7),
    "ProfessionalDegree_AcademicInstitutionProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_CurriculumRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CurriculumRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CurriculumRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CurriculumRecord_ContactProfile_AcademicInstitutionProfileID" FOREIGN KEY ("AcademicInstitutionProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_CurriculumRecord_ContactProfile_InstitutionDiploma_AcademicInstitutionProfileID" FOREIGN KEY ("InstitutionDiploma_AcademicInstitutionProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_CurriculumRecord_ContactProfile_ProfessionalDegree_AcademicInstitutionProfileID" FOREIGN KEY ("ProfessionalDegree_AcademicInstitutionProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_CurriculumRecord_Curriculum_CurriculumID" FOREIGN KEY ("CurriculumID") REFERENCES "Curriculum" ("ID"),
    CONSTRAINT "FK_CurriculumRecord_CurriculumSkill_CurriculumSkillID" FOREIGN KEY ("CurriculumSkillID") REFERENCES "CurriculumSkill" ("ID"),
    CONSTRAINT "FK_CurriculumRecord_JobOffer_JobOfferID" FOREIGN KEY ("JobOfferID") REFERENCES "JobOffer" ("ID"),
    CONSTRAINT "FK_CurriculumRecord_ProficiencyRatingModel_ProficiencyRatingModelID" FOREIGN KEY ("ProficiencyRatingModelID") REFERENCES "ProficiencyRatingModel" ("ID"),
    CONSTRAINT "FK_CurriculumRecord_ProficiencyRatingValue_ProficiencyRatingValueID" FOREIGN KEY ("ProficiencyRatingValueID") REFERENCES "ProficiencyRatingValue" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"JobOfferApplication" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Start" TIMESTAMP(7) NOT NULL,
    "End" TIMESTAMP(7) NOT NULL,
    "CurriculumID" NVARCHAR2(450),
    "JobOfferID" NVARCHAR2(450),
    "JobApplicantProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_JobOfferApplication" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_JobOfferApplication_ContactProfile_JobApplicantProfileID" FOREIGN KEY ("JobApplicantProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_JobOfferApplication_Curriculum_CurriculumID" FOREIGN KEY ("CurriculumID") REFERENCES "Curriculum" ("ID"),
    CONSTRAINT "FK_JobOfferApplication_JobOffer_JobOfferID" FOREIGN KEY ("JobOfferID") REFERENCES "JobOffer" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"RequiredSkillRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ExperienceInYears" NUMBER(10) NOT NULL,
    "Priority" DECIMAL(18, 2) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "RequiredSkillRecordType" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "JobOfferID" NVARCHAR2(450),
    "EmployerProfileID" NVARCHAR2(450),
    "CurriculumSkillID" NVARCHAR2(450),
    CONSTRAINT "PK_RequiredSkillRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_RequiredSkillRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_RequiredSkillRecord_ContactProfile_EmployerProfileID" FOREIGN KEY ("EmployerProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_RequiredSkillRecord_CurriculumSkill_CurriculumSkillID" FOREIGN KEY ("CurriculumSkillID") REFERENCES "CurriculumSkill" ("ID"),
    CONSTRAINT "FK_RequiredSkillRecord_JobOffer_JobOfferID" FOREIGN KEY ("JobOfferID") REFERENCES "JobOffer" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"LeaveReport" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Content" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "LeaveApplicationID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_LeaveReport" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_LeaveReport_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_LeaveReport_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_LeaveReport_LeaveApplication_LeaveApplicationID" FOREIGN KEY ("LeaveApplicationID") REFERENCES "LeaveApplication" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"EmployeeTransfer" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Initial" NUMBER(1) NOT NULL,
    "Reason" NVARCHAR2(2000),
    "Remarks" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "EffectiveDate" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "EmployeeProfileID" NVARCHAR2(450),
    "BusinessLocationID" NVARCHAR2(450),
    CONSTRAINT "PK_EmployeeTransfer" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_EmployeeTransfer_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_EmployeeTransfer_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_EmployeeTransfer_ContactProfile_EmployeeProfileID" FOREIGN KEY ("EmployeeProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_EmployeeTransfer_Location_BusinessLocationID" FOREIGN KEY ("BusinessLocationID") REFERENCES "Location" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemRestockEntry" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Quantity" BINARY_DOUBLE NOT NULL,
    "ItemID" NVARCHAR2(450),
    "WarehouseID" NVARCHAR2(450),
    "ItemRestockID" NVARCHAR2(450),
    "OrderItemRecordID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemRestockEntry" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemRestockEntry_BillingItemRecord_OrderItemRecordID" FOREIGN KEY ("OrderItemRecordID") REFERENCES "BillingItemRecord" ("ID"),
    CONSTRAINT "FK_ItemRestockEntry_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ItemRestockEntry_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemRestockEntry_ItemRestock_ItemRestockID" FOREIGN KEY ("ItemRestockID") REFERENCES "ItemRestock" ("ID"),
    CONSTRAINT "FK_ItemRestockEntry_Location_WarehouseID" FOREIGN KEY ("WarehouseID") REFERENCES "Location" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemRetainSample" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "WarehouseID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemRetainSample" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemRetainSample_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ItemRetainSample_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemRetainSample_Location_WarehouseID" FOREIGN KEY ("WarehouseID") REFERENCES "Location" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PointOfSale" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Code" NVARCHAR2(2000),
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "PriceListID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "LocationID" NVARCHAR2(450),
    CONSTRAINT "PK_PointOfSale" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PointOfSale_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_PointOfSale_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_PointOfSale_Location_LocationID" FOREIGN KEY ("LocationID") REFERENCES "Location" ("ID"),
    CONSTRAINT "FK_PointOfSale_PriceList_PriceListID" FOREIGN KEY ("PriceListID") REFERENCES "PriceList" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Quote" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "EffectiveFrom" TIMESTAMP(7) NOT NULL,
    "QuoteStatus" NUMBER(10) NOT NULL,
    "FreightTerms" NUMBER(10) NOT NULL,
    "EffectiveTo" TIMESTAMP(7) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Closed" NUMBER(1) NOT NULL,
    "CostCalculationMethod" NUMBER(10) NOT NULL,
    "ForexRatesSnapshot" NVARCHAR2(2000),
    "ForexRate" BINARY_DOUBLE NOT NULL,
    "TotalBaseAmountInUSD" BINARY_DOUBLE NOT NULL,
    "TotalDetailAmountInUSD" BINARY_DOUBLE NOT NULL,
    "TotalDiscountsInUSD" BINARY_DOUBLE NOT NULL,
    "TotalProfitInUSD" BINARY_DOUBLE NOT NULL,
    "TotalTaxBaseInUSD" BINARY_DOUBLE NOT NULL,
    "TotalTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalWithholdingTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalShippingCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalShippingTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalWarrantyCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalReturnCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalRefundCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalSurchargesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalAmountInUSD" BINARY_DOUBLE NOT NULL,
    "CustomBaseAmount" BINARY_DOUBLE NOT NULL,
    "CustomDetailAmount" BINARY_DOUBLE NOT NULL,
    "CustomDiscountsAmount" BINARY_DOUBLE NOT NULL,
    "CustomSurchargesAmount" BINARY_DOUBLE NOT NULL,
    "CustomProfitAmount" BINARY_DOUBLE NOT NULL,
    "CustomShippingCostAmount" BINARY_DOUBLE NOT NULL,
    "CustomShippingTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomTaxBase" BINARY_DOUBLE NOT NULL,
    "CustomTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomWithholdingTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomTotalAmount" BINARY_DOUBLE NOT NULL,
    "TotalGlobalDiscountsInUSD" BINARY_DOUBLE NOT NULL,
    "TotalGlobalSurchargesInUSD" BINARY_DOUBLE NOT NULL,
    "CustomGlobalSurchargesAmount" BINARY_DOUBLE NOT NULL,
    "CustomGlobalDiscountsAmount" BINARY_DOUBLE NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "ReceptorBusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "IndividualID" NVARCHAR2(450),
    "OrganizationID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "PriceListID" NVARCHAR2(450),
    "DealUnitID" NVARCHAR2(450),
    "PaymentTermID" NVARCHAR2(450),
    "ShippingMethodID" NVARCHAR2(450),
    "ShippingLocationID" NVARCHAR2(450),
    "BillingLocationID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "SupplierProfileID" NVARCHAR2(450),
    "ProjectID" NVARCHAR2(450),
    CONSTRAINT "PK_Quote" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Quote_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_Quote_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Quote_Business_ReceptorBusinessID" FOREIGN KEY ("ReceptorBusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Quote_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Quote_Contact_IndividualID" FOREIGN KEY ("IndividualID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Quote_Contact_OrganizationID" FOREIGN KEY ("OrganizationID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Quote_ContactProfile_SupplierProfileID" FOREIGN KEY ("SupplierProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Quote_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_Quote_DealUnit_DealUnitID" FOREIGN KEY ("DealUnitID") REFERENCES "DealUnit" ("ID"),
    CONSTRAINT "FK_Quote_Location_BillingLocationID" FOREIGN KEY ("BillingLocationID") REFERENCES "Location" ("ID"),
    CONSTRAINT "FK_Quote_Location_ShippingLocationID" FOREIGN KEY ("ShippingLocationID") REFERENCES "Location" ("ID"),
    CONSTRAINT "FK_Quote_PaymentTerm_PaymentTermID" FOREIGN KEY ("PaymentTermID") REFERENCES "PaymentTerm" ("ID"),
    CONSTRAINT "FK_Quote_PriceList_PriceListID" FOREIGN KEY ("PriceListID") REFERENCES "PriceList" ("ID"),
    CONSTRAINT "FK_Quote_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID"),
    CONSTRAINT "FK_Quote_ShippingMethod_ShippingMethodID" FOREIGN KEY ("ShippingMethodID") REFERENCES "ShippingMethod" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WalletAccount" (
    "ID" NVARCHAR2(450) NOT NULL,
    "CreatedTimestamp" TIMESTAMP(7) NOT NULL,
    "EnabledToRecievePayments" NUMBER(1) NOT NULL,
    "WalletCurrentBalanceInUSD" BINARY_DOUBLE NOT NULL,
    "Test" NUMBER(1) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "LegalName" NVARCHAR2(2000),
    "OfficialID" NVARCHAR2(2000),
    "OfficialIDExpeditionDate" TIMESTAMP(7) NOT NULL,
    "CustomAddress" NVARCHAR2(2000),
    "Phone" NVARCHAR2(2000),
    "Cellphone" NVARCHAR2(2000),
    "Department" NVARCHAR2(2000),
    "City" NVARCHAR2(2000),
    "EthereumAddress" NVARCHAR2(2000),
    "EthereumPublicKey" NVARCHAR2(2000),
    "EthereumPrivateKey" NVARCHAR2(2000),
    "MainNetEtherBalance" DECIMAL(18, 2) NOT NULL,
    "TestNetEtherBalance" DECIMAL(18, 2) NOT NULL,
    "BitcoinMainNetAddress" NVARCHAR2(2000),
    "BitcoinTestNetAddress" NVARCHAR2(2000),
    "BitcoinPublicKey" NVARCHAR2(2000),
    "BitcoinPrivateKey" NVARCHAR2(2000),
    "BitcoinMainNetBalance" DECIMAL(18, 2) NOT NULL,
    "BitcoinTestNetBalance" DECIMAL(18, 2) NOT NULL,
    "RollingReservePercent" DECIMAL(18, 2) NOT NULL,
    "RollingReserveTimeInDays" DECIMAL(18, 2) NOT NULL,
    "AccountID" NVARCHAR2(450),
    "BillingProfileID" NVARCHAR2(450),
    "CountryID" NVARCHAR2(450),
    "LocationID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    CONSTRAINT "PK_WalletAccount" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WalletAccount_Account_AccountID" FOREIGN KEY ("AccountID") REFERENCES "Account" ("ID"),
    CONSTRAINT "FK_WalletAccount_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_WalletAccount_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_WalletAccount_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_WalletAccount_ContactProfile_BillingProfileID" FOREIGN KEY ("BillingProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_WalletAccount_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_WalletAccount_Location_LocationID" FOREIGN KEY ("LocationID") REFERENCES "Location" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"RetentionBonus" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Amount" BINARY_DOUBLE NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "SalaryID" NVARCHAR2(450),
    CONSTRAINT "PK_RetentionBonus" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_RetentionBonus_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_RetentionBonus_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_RetentionBonus_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_RetentionBonus_Salary_SalaryID" FOREIGN KEY ("SalaryID") REFERENCES "Salary" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SalaryDeduction" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Amount" BINARY_DOUBLE NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "SalaryID" NVARCHAR2(450),
    CONSTRAINT "PK_SalaryDeduction" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SalaryDeduction_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SalaryDeduction_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_SalaryDeduction_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_SalaryDeduction_Salary_SalaryID" FOREIGN KEY ("SalaryID") REFERENCES "Salary" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SalaryEarning" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Amount" BINARY_DOUBLE NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "SalaryID" NVARCHAR2(450),
    CONSTRAINT "PK_SalaryEarning" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SalaryEarning_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SalaryEarning_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_SalaryEarning_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_SalaryEarning_Salary_SalaryID" FOREIGN KEY ("SalaryID") REFERENCES "Salary" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SignedDocument" (
    "ID" NVARCHAR2(450) NOT NULL,
    "URL" NVARCHAR2(2000),
    "Type" NVARCHAR2(2000),
    "Title" NVARCHAR2(2000),
    "Document" RAW(2000),
    "ContentType" NVARCHAR2(2000),
    "FileLengthInBits" NUMBER(19) NOT NULL,
    "SignedDataBase64" NVARCHAR2(2000),
    "PreSignedDataBase64" NVARCHAR2(2000),
    "Signed" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "SignatorCertificateID" NVARCHAR2(450),
    "SigningProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_SignedDocument" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SignedDocument_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_SignedDocument_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SignedDocument_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_SignedDocument_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_SignedDocument_ContactProfile_SigningProfileID" FOREIGN KEY ("SigningProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_SignedDocument_SigningCertificate_SignatorCertificateID" FOREIGN KEY ("SignatorCertificateID") REFERENCES "SigningCertificate" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseCohort" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "StartDateTime" TIMESTAMP(7) NOT NULL,
    "EndDateTime" TIMESTAMP(7) NOT NULL,
    "ExpectedStartDateTime" TIMESTAMP(7) NOT NULL,
    "ExpectedEndDateTime" TIMESTAMP(7) NOT NULL,
    "CourseID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "CourseContentGroupID" NVARCHAR2(450),
    "CourseCohortAssignationMethod" NUMBER(10) NOT NULL,
    CONSTRAINT "PK_CourseCohort" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseCohort_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseCohort_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseCohort_CourseContentGroup_CourseContentGroupID" FOREIGN KEY ("CourseContentGroupID") REFERENCES "CourseContentGroup" ("ID"),
    CONSTRAINT "FK_CourseCohort_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseGradingCriteria" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Percent" BINARY_DOUBLE NOT NULL,
    "Description" NVARCHAR2(2000),
    "GradingRubricID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseGradingCriteria" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseGradingCriteria_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseGradingCriteria_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseGradingCriteria_CourseGradingRubric_GradingRubricID" FOREIGN KEY ("GradingRubricID") REFERENCES "CourseGradingRubric" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseUnit" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "ReleaseDateTime" TIMESTAMP(7) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Content" NVARCHAR2(2000),
    "CourseID" NVARCHAR2(450),
    "CourseSectionID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "CourseContentGroupID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseUnit" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseUnit_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseUnit_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseUnit_CourseContentGroup_CourseContentGroupID" FOREIGN KEY ("CourseContentGroupID") REFERENCES "CourseContentGroup" ("ID"),
    CONSTRAINT "FK_CourseUnit_CourseSection_CourseSectionID" FOREIGN KEY ("CourseSectionID") REFERENCES "CourseSection" ("ID"),
    CONSTRAINT "FK_CourseUnit_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemQuestionReply" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Reply" NVARCHAR2(2000) NOT NULL,
    "NeedsRevision" NUMBER(1) NOT NULL,
    "SentimentScore" BINARY_DOUBLE NOT NULL,
    "SocialProfileID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "ItemQuestionID" NVARCHAR2(450),
    "Type" NVARCHAR2(2000) NOT NULL,
    CONSTRAINT "PK_ItemQuestionReply" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemQuestionReply_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ItemQuestionReply_ItemQuestion_ItemQuestionID" FOREIGN KEY ("ItemQuestionID") REFERENCES "ItemQuestion" ("ID"),
    CONSTRAINT "FK_ItemQuestionReply_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"GenericRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "TaxPolicyID" NVARCHAR2(450),
    "ItemPriceID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    "PricingRuleID" NVARCHAR2(450),
    "PriceListID" NVARCHAR2(450),
    "ItemPricingRuleRecord_ItemID" NVARCHAR2(450),
    "ItemRefundPolicyRecord_ItemID" NVARCHAR2(450),
    "RefundPolicyID" NVARCHAR2(450),
    "ItemWarrantyPolicyRecord_ItemID" NVARCHAR2(450),
    "WarrantyPolicyID" NVARCHAR2(450),
    "ItemReturnPolicyRecord_ItemID" NVARCHAR2(450),
    "ReturnPolicyID" NVARCHAR2(450),
    "ItemSellingMarginPolicyRecord_ItemID" NVARCHAR2(450),
    "ItemSellingMarginPolicyID" NVARCHAR2(450),
    CONSTRAINT "PK_GenericRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_GenericRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_GenericRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_GenericRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_GenericRecord_Item_ItemPricingRuleRecord_ItemID" FOREIGN KEY ("ItemPricingRuleRecord_ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_GenericRecord_Item_ItemRefundPolicyRecord_ItemID" FOREIGN KEY ("ItemRefundPolicyRecord_ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_GenericRecord_Item_ItemReturnPolicyRecord_ItemID" FOREIGN KEY ("ItemReturnPolicyRecord_ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_GenericRecord_Item_ItemSellingMarginPolicyRecord_ItemID" FOREIGN KEY ("ItemSellingMarginPolicyRecord_ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_GenericRecord_Item_ItemWarrantyPolicyRecord_ItemID" FOREIGN KEY ("ItemWarrantyPolicyRecord_ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_GenericRecord_Policy_ItemSellingMarginPolicyID" FOREIGN KEY ("ItemSellingMarginPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_GenericRecord_Policy_PricingRuleID" FOREIGN KEY ("PricingRuleID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_GenericRecord_Policy_RefundPolicyID" FOREIGN KEY ("RefundPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_GenericRecord_Policy_ReturnPolicyID" FOREIGN KEY ("ReturnPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_GenericRecord_Policy_TaxPolicyID" FOREIGN KEY ("TaxPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_GenericRecord_Policy_WarrantyPolicyID" FOREIGN KEY ("WarrantyPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_GenericRecord_PriceList_PriceListID" FOREIGN KEY ("PriceListID") REFERENCES "PriceList" ("ID"),
    CONSTRAINT "FK_GenericRecord_PriceListItem_ItemPriceID" FOREIGN KEY ("ItemPriceID") REFERENCES "PriceListItem" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"TimeInterval" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "IsBreak" NUMBER(1) NOT NULL,
    "OccustOnMonday" NUMBER(1) NOT NULL,
    "OccustOnTuesday" NUMBER(1) NOT NULL,
    "OccustOnWednesday" NUMBER(1) NOT NULL,
    "OccustOnThursday" NUMBER(1) NOT NULL,
    "OccustOnFriday" NUMBER(1) NOT NULL,
    "OccustOnSaturday" NUMBER(1) NOT NULL,
    "OccustOnSunday" NUMBER(1) NOT NULL,
    "Start" TIMESTAMP(7) NOT NULL,
    "End" TIMESTAMP(7) NOT NULL,
    "RepeatEvery" NUMBER(10) NOT NULL,
    "RepetitionCriteria" NUMBER(10) NOT NULL,
    "RecurrenceStart" TIMESTAMP(7) NOT NULL,
    "RecurrenceEnd" TIMESTAMP(7) NOT NULL,
    "DayOfTheWeek" NUMBER(10) NOT NULL,
    "ScheduleID" NVARCHAR2(450),
    "ParentTimeIntervalID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "EmployeeProfileID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "LeaveApplicationID" NVARCHAR2(450),
    "Shift_BusinessID" NVARCHAR2(450),
    "Shift_EmployeeProfileID" NVARCHAR2(450),
    "TrainingProgramEvent_BusinessID" NVARCHAR2(450),
    "TrainingProgramEvent_BusinessProfileRecordID" NVARCHAR2(450),
    "TrainingProgramID" NVARCHAR2(450),
    CONSTRAINT "PK_TimeInterval" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_TimeInterval_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_TimeInterval_Business_Shift_BusinessID" FOREIGN KEY ("Shift_BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_TimeInterval_Business_TrainingProgramEvent_BusinessID" FOREIGN KEY ("TrainingProgramEvent_BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_TimeInterval_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_TimeInterval_BusinessProfileRecord_TrainingProgramEvent_BusinessProfileRecordID" FOREIGN KEY ("TrainingProgramEvent_BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_TimeInterval_ContactProfile_EmployeeProfileID" FOREIGN KEY ("EmployeeProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_TimeInterval_ContactProfile_Shift_EmployeeProfileID" FOREIGN KEY ("Shift_EmployeeProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_TimeInterval_LeaveApplication_LeaveApplicationID" FOREIGN KEY ("LeaveApplicationID") REFERENCES "LeaveApplication" ("ID"),
    CONSTRAINT "FK_TimeInterval_Schedule_ScheduleID" FOREIGN KEY ("ScheduleID") REFERENCES "Schedule" ("ID"),
    CONSTRAINT "FK_TimeInterval_TimeInterval_ParentTimeIntervalID" FOREIGN KEY ("ParentTimeIntervalID") REFERENCES "TimeInterval" ("ID"),
    CONSTRAINT "FK_TimeInterval_TrainingProgram_TrainingProgramID" FOREIGN KEY ("TrainingProgramID") REFERENCES "TrainingProgram" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SocialGroupEnrollmentRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "IsOwner" NUMBER(1) NOT NULL,
    "IsAdmin" NUMBER(1) NOT NULL,
    "SocialProfileID" NVARCHAR2(450),
    "GroupID" NVARCHAR2(450),
    CONSTRAINT "PK_SocialGroupEnrollmentRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SocialGroupEnrollmentRecord_SocialGroup_GroupID" FOREIGN KEY ("GroupID") REFERENCES "SocialGroup" ("ID"),
    CONSTRAINT "FK_SocialGroupEnrollmentRecord_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemBid" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Amount" DECIMAL(18, 2) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "WalletAccountID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemBid" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemBid_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_ItemBid_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemBid_WalletAccount_WalletAccountID" FOREIGN KEY ("WalletAccountID") REFERENCES "WalletAccount" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Order" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Closed" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "LastUpdated" TIMESTAMP(7) NOT NULL,
    "RequestedDelivery" TIMESTAMP(7) NOT NULL,
    "OrderType" NUMBER(10) NOT NULL,
    "OrderStatus" NUMBER(10) NOT NULL,
    "FreightTerms" NUMBER(10) NOT NULL,
    "CostCalculationMethod" NUMBER(10) NOT NULL,
    "ForexRatesSnapshot" NVARCHAR2(2000),
    "ForexRate" BINARY_DOUBLE NOT NULL,
    "TotalBaseAmountInUSD" BINARY_DOUBLE NOT NULL,
    "TotalDetailAmountInUSD" BINARY_DOUBLE NOT NULL,
    "TotalTaxBaseInUSD" BINARY_DOUBLE NOT NULL,
    "TotalDiscountsInUSD" BINARY_DOUBLE NOT NULL,
    "TotalProfitInUSD" BINARY_DOUBLE NOT NULL,
    "TotalTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalWithholdingTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalShippingCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalShippingTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalWarrantyCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalReturnCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalRefundCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalSurchargesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalAmountInUSD" BINARY_DOUBLE NOT NULL,
    "CustomBaseAmount" BINARY_DOUBLE NOT NULL,
    "CustomDetailAmount" BINARY_DOUBLE NOT NULL,
    "CustomDiscountsAmount" BINARY_DOUBLE NOT NULL,
    "CustomSurchargesAmount" BINARY_DOUBLE NOT NULL,
    "CustomProfitAmount" BINARY_DOUBLE NOT NULL,
    "CustomShippingCostAmount" BINARY_DOUBLE NOT NULL,
    "CustomShippingTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomTaxBase" BINARY_DOUBLE NOT NULL,
    "CustomTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomWithholdingTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomTotalAmount" BINARY_DOUBLE NOT NULL,
    "TotalGlobalDiscountsInUSD" BINARY_DOUBLE NOT NULL,
    "TotalGlobalSurchargesInUSD" BINARY_DOUBLE NOT NULL,
    "CustomGlobalSurchargesAmount" BINARY_DOUBLE NOT NULL,
    "CustomGlobalDiscountsAmount" BINARY_DOUBLE NOT NULL,
    "FirstName" NVARCHAR2(2000),
    "LastName" NVARCHAR2(2000),
    "AddressLine1" NVARCHAR2(2000),
    "AddressLine2" NVARCHAR2(2000),
    "PostalCode" NVARCHAR2(2000),
    "BillingEmail" NVARCHAR2(2000),
    "CompanyName" NVARCHAR2(2000),
    "CustomerNotes" NVARCHAR2(2000),
    "BillingContactID" NVARCHAR2(450),
    "ShippingContactID" NVARCHAR2(450),
    "BillingAddressID" NVARCHAR2(450),
    "ShippingAddressID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "IndividualID" NVARCHAR2(450),
    "OrganizationID" NVARCHAR2(450),
    "CountryID" NVARCHAR2(450),
    "CountryStateID" NVARCHAR2(450),
    "CityID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "ReceptorBusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "CartID" NVARCHAR2(450),
    "WalletAccountID" NVARCHAR2(450),
    "BillingProfileID" NVARCHAR2(450),
    "ParentOrderID" NVARCHAR2(450),
    "QuoteID" NVARCHAR2(450),
    "PriceListID" NVARCHAR2(450),
    "ShippingLocationID" NVARCHAR2(450),
    "BillingLocationID" NVARCHAR2(450),
    "PaymentTermID" NVARCHAR2(450),
    "ShippingMethodID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "SalesQuoteID" NVARCHAR2(450),
    CONSTRAINT "PK_Order" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Order_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_Order_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Order_Business_ReceptorBusinessID" FOREIGN KEY ("ReceptorBusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Order_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Order_Cart_CartID" FOREIGN KEY ("CartID") REFERENCES "Cart" ("ID"),
    CONSTRAINT "FK_Order_City_CityID" FOREIGN KEY ("CityID") REFERENCES "City" ("ID"),
    CONSTRAINT "FK_Order_Contact_BillingContactID" FOREIGN KEY ("BillingContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Order_Contact_IndividualID" FOREIGN KEY ("IndividualID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Order_Contact_OrganizationID" FOREIGN KEY ("OrganizationID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Order_Contact_ShippingContactID" FOREIGN KEY ("ShippingContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Order_ContactProfile_BillingProfileID" FOREIGN KEY ("BillingProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Order_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_Order_CountryState_CountryStateID" FOREIGN KEY ("CountryStateID") REFERENCES "CountryState" ("ID"),
    CONSTRAINT "FK_Order_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_Order_Location_BillingAddressID" FOREIGN KEY ("BillingAddressID") REFERENCES "Location" ("ID"),
    CONSTRAINT "FK_Order_Location_BillingLocationID" FOREIGN KEY ("BillingLocationID") REFERENCES "Location" ("ID"),
    CONSTRAINT "FK_Order_Location_ShippingAddressID" FOREIGN KEY ("ShippingAddressID") REFERENCES "Location" ("ID"),
    CONSTRAINT "FK_Order_Location_ShippingLocationID" FOREIGN KEY ("ShippingLocationID") REFERENCES "Location" ("ID"),
    CONSTRAINT "FK_Order_Order_ParentOrderID" FOREIGN KEY ("ParentOrderID") REFERENCES "Order" ("ID"),
    CONSTRAINT "FK_Order_PaymentTerm_PaymentTermID" FOREIGN KEY ("PaymentTermID") REFERENCES "PaymentTerm" ("ID"),
    CONSTRAINT "FK_Order_PriceList_PriceListID" FOREIGN KEY ("PriceListID") REFERENCES "PriceList" ("ID"),
    CONSTRAINT "FK_Order_Quote_QuoteID" FOREIGN KEY ("QuoteID") REFERENCES "Quote" ("ID"),
    CONSTRAINT "FK_Order_Quote_SalesQuoteID" FOREIGN KEY ("SalesQuoteID") REFERENCES "Quote" ("ID"),
    CONSTRAINT "FK_Order_ShippingMethod_ShippingMethodID" FOREIGN KEY ("ShippingMethodID") REFERENCES "ShippingMethod" ("ID"),
    CONSTRAINT "FK_Order_WalletAccount_WalletAccountID" FOREIGN KEY ("WalletAccountID") REFERENCES "WalletAccount" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PaymentToken" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ValidUntil" TIMESTAMP(7) NOT NULL,
    "LastUpdated" TIMESTAMP(7) NOT NULL,
    "Test" NUMBER(1) NOT NULL,
    "Mask" NVARCHAR2(2000),
    "Data" NVARCHAR2(2000),
    "Token" NVARCHAR2(2000),
    "TokenId" NVARCHAR2(2000),
    "Nonce" NVARCHAR2(2000),
    "Status" NVARCHAR2(2000),
    "ValidSeconds" NUMBER(10) NOT NULL,
    "TokenType" NVARCHAR2(2000),
    "ObjectType" NVARCHAR2(2000),
    "CardFranchise" NVARCHAR2(2000),
    "CardExpiratonMonth" NVARCHAR2(2000),
    "CardExpiratonYear" NVARCHAR2(2000),
    "CreatedDateProperty" NVARCHAR2(2000),
    "WalletAccountID" NVARCHAR2(450),
    "PaymentGatewayID" NVARCHAR2(450),
    CONSTRAINT "PK_PaymentToken" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PaymentToken_PaymentGateway_PaymentGatewayID" FOREIGN KEY ("PaymentGatewayID") REFERENCES "PaymentGateway" ("ID"),
    CONSTRAINT "FK_PaymentToken_WalletAccount_WalletAccountID" FOREIGN KEY ("WalletAccountID") REFERENCES "WalletAccount" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WalletWithdrawRequest" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "RequestedWithdrawAmount" DECIMAL(18, 2) NOT NULL,
    "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) NOT NULL,
    "WalletWithdrawRequestStatus" NUMBER(10) NOT NULL,
    "ForexRate" NVARCHAR2(2000),
    "ForexRates" NVARCHAR2(2000),
    "CurrencyID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "WalletAccountID" NVARCHAR2(450),
    "BankAccountID" NVARCHAR2(450),
    CONSTRAINT "PK_WalletWithdrawRequest" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WalletWithdrawRequest_Account_BankAccountID" FOREIGN KEY ("BankAccountID") REFERENCES "Account" ("ID"),
    CONSTRAINT "FK_WalletWithdrawRequest_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_WalletWithdrawRequest_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_WalletWithdrawRequest_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_WalletWithdrawRequest_WalletAccount_WalletAccountID" FOREIGN KEY ("WalletAccountID") REFERENCES "WalletAccount" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Signature" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ValidationCode" NVARCHAR2(2000),
    "SignatureImage" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "SigningProfileID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "SigningDocumentID" NVARCHAR2(450),
    "SigningCertificateID" NVARCHAR2(450),
    "AgreementRevisionID" NVARCHAR2(450),
    "SocialProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_Signature" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Signature_AgreementRevision_AgreementRevisionID" FOREIGN KEY ("AgreementRevisionID") REFERENCES "AgreementRevision" ("ID"),
    CONSTRAINT "FK_Signature_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_Signature_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Signature_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Signature_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Signature_ContactProfile_SigningProfileID" FOREIGN KEY ("SigningProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Signature_SignedDocument_SigningDocumentID" FOREIGN KEY ("SigningDocumentID") REFERENCES "SignedDocument" ("ID"),
    CONSTRAINT "FK_Signature_SigningCertificate_SigningCertificateID" FOREIGN KEY ("SigningCertificateID") REFERENCES "SigningCertificate" ("ID"),
    CONSTRAINT "FK_Signature_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseEnrollment" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "StudentProfileID" NVARCHAR2(450),
    "CourseCohortID" NVARCHAR2(450),
    "CourseID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseEnrollment" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseEnrollment_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseEnrollment_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseEnrollment_ContactProfile_StudentProfileID" FOREIGN KEY ("StudentProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_CourseEnrollment_CourseCohort_CourseCohortID" FOREIGN KEY ("CourseCohortID") REFERENCES "CourseCohort" ("ID"),
    CONSTRAINT "FK_CourseEnrollment_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseGradingCriteriaCategory" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Points" NUMBER(10) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Criteria" NVARCHAR2(2000),
    "CourseGradingRubricID" NVARCHAR2(450),
    "CourseGradingCriteriaID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseGradingCriteriaCategory" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseGradingCriteriaCategory_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseGradingCriteriaCategory_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseGradingCriteriaCategory_CourseGradingCriteria_CourseGradingCriteriaID" FOREIGN KEY ("CourseGradingCriteriaID") REFERENCES "CourseGradingCriteria" ("ID"),
    CONSTRAINT "FK_CourseGradingCriteriaCategory_CourseGradingRubric_CourseGradingRubricID" FOREIGN KEY ("CourseGradingRubricID") REFERENCES "CourseGradingRubric" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseHandout" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Content" NVARCHAR2(2000),
    "Url" NVARCHAR2(2000),
    "File" RAW(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ReleaseDateTime" TIMESTAMP(7) NOT NULL,
    "CourseID" NVARCHAR2(450),
    "CourseUnitID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseHandout" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseHandout_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseHandout_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseHandout_CourseUnit_CourseUnitID" FOREIGN KEY ("CourseUnitID") REFERENCES "CourseUnit" ("ID"),
    CONSTRAINT "FK_CourseHandout_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseLibrary" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ReleaseDateTime" TIMESTAMP(7) NOT NULL,
    "BusinessProfileRecordID" NVARCHAR2(450),
    "CourseID" NVARCHAR2(450),
    "CourseUnitID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseLibrary" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseLibrary_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseLibrary_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseLibrary_CourseUnit_CourseUnitID" FOREIGN KEY ("CourseUnitID") REFERENCES "CourseUnit" ("ID"),
    CONSTRAINT "FK_CourseLibrary_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseProblemSet" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "OverallScore" BINARY_DOUBLE NOT NULL,
    "ReleaseDateTime" TIMESTAMP(7) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CourseGradingRubricID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "CourseID" NVARCHAR2(450),
    "CourseUnitID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseProblemSet" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseProblemSet_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseProblemSet_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseProblemSet_CourseGradingRubric_CourseGradingRubricID" FOREIGN KEY ("CourseGradingRubricID") REFERENCES "CourseGradingRubric" ("ID"),
    CONSTRAINT "FK_CourseProblemSet_CourseUnit_CourseUnitID" FOREIGN KEY ("CourseUnitID") REFERENCES "CourseUnit" ("ID"),
    CONSTRAINT "FK_CourseProblemSet_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseWiki" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ReleaseDateTime" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "CourseID" NVARCHAR2(450),
    "CourseUnitID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseWiki" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseWiki_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseWiki_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseWiki_CourseUnit_CourseUnitID" FOREIGN KEY ("CourseUnitID") REFERENCES "CourseUnit" ("ID"),
    CONSTRAINT "FK_CourseWiki_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Payroll" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "PayrollPeriodID" NVARCHAR2(450),
    CONSTRAINT "PK_Payroll" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Payroll_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Payroll_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Payroll_TimeInterval_PayrollPeriodID" FOREIGN KEY ("PayrollPeriodID") REFERENCES "TimeInterval" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemOwnership" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ItemBidID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    "CartID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "BlockchainBlockID" NVARCHAR2(450),
    "WalletAccountID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemOwnership" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemOwnership_BlockchainBlock_BlockchainBlockID" FOREIGN KEY ("BlockchainBlockID") REFERENCES "BlockchainBlock" ("ID"),
    CONSTRAINT "FK_ItemOwnership_Cart_CartID" FOREIGN KEY ("CartID") REFERENCES "Cart" ("ID"),
    CONSTRAINT "FK_ItemOwnership_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemOwnership_ItemBid_ItemBidID" FOREIGN KEY ("ItemBidID") REFERENCES "ItemBid" ("ID"),
    CONSTRAINT "FK_ItemOwnership_WalletAccount_WalletAccountID" FOREIGN KEY ("WalletAccountID") REFERENCES "WalletAccount" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Invoice" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Closed" NUMBER(1) NOT NULL,
    "Paid" NUMBER(1) NOT NULL,
    "Number" NUMBER(19) NOT NULL,
    "Data" NVARCHAR2(2000),
    "Type" NVARCHAR2(2000) NOT NULL,
    "Notes" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "TermsAndConditions" NVARCHAR2(2000),
    "Opening" NUMBER(1) NOT NULL,
    "OnHold" NUMBER(1) NOT NULL,
    "Expired" NUMBER(1) NOT NULL,
    "Reported" NUMBER(1) NOT NULL,
    "HoldReason" NVARCHAR2(2000),
    "IgnorePricingRules" NUMBER(1) NOT NULL,
    "RawMaterialsSupplied" NUMBER(1) NOT NULL,
    "ToDate" TIMESTAMP(7) NOT NULL,
    "FromDate" TIMESTAMP(7) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "PaymentDue" TIMESTAMP(7) NOT NULL,
    "Expiration" TIMESTAMP(7) NOT NULL,
    "ReleaseDate" TIMESTAMP(7) NOT NULL,
    "LastUpdated" TIMESTAMP(7) NOT NULL,
    "ReportedTimestamp" TIMESTAMP(7) NOT NULL,
    "InvoiceType" NUMBER(10) NOT NULL,
    "DocumentType" NUMBER(10) NOT NULL,
    "InvoiceStatus" NUMBER(10) NOT NULL,
    "RemainingAmountInUSD" BINARY_DOUBLE NOT NULL,
    "ForexRatesSnapshot" NVARCHAR2(2000),
    "ForexRate" BINARY_DOUBLE NOT NULL,
    "TotalBaseAmountInUSD" BINARY_DOUBLE NOT NULL,
    "TotalDetailAmountInUSD" BINARY_DOUBLE NOT NULL,
    "TotalTaxBaseInUSD" BINARY_DOUBLE NOT NULL,
    "TotalDiscountsInUSD" BINARY_DOUBLE NOT NULL,
    "TotalProfitInUSD" BINARY_DOUBLE NOT NULL,
    "TotalTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalWithholdingTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalShippingCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalShippingTaxesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalWarrantyCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalReturnCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalRefundCostInUSD" BINARY_DOUBLE NOT NULL,
    "TotalSurchargesInUSD" BINARY_DOUBLE NOT NULL,
    "TotalAmountInUSD" BINARY_DOUBLE NOT NULL,
    "CustomBaseAmount" BINARY_DOUBLE NOT NULL,
    "CustomDetailAmount" BINARY_DOUBLE NOT NULL,
    "CustomTaxBase" BINARY_DOUBLE NOT NULL,
    "CustomDiscountsAmount" BINARY_DOUBLE NOT NULL,
    "CustomSurchargesAmount" BINARY_DOUBLE NOT NULL,
    "CustomProfitAmount" BINARY_DOUBLE NOT NULL,
    "CustomShippingCostAmount" BINARY_DOUBLE NOT NULL,
    "CustomShippingTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomWithholdingTaxAmount" BINARY_DOUBLE NOT NULL,
    "CustomTotalAmount" BINARY_DOUBLE NOT NULL,
    "TotalGlobalDiscountsInUSD" BINARY_DOUBLE NOT NULL,
    "TotalGlobalSurchargesInUSD" BINARY_DOUBLE NOT NULL,
    "CustomGlobalSurchargesAmount" BINARY_DOUBLE NOT NULL,
    "CustomGlobalDiscountsAmount" BINARY_DOUBLE NOT NULL,
    "AccountHolderID" NVARCHAR2(450),
    "IndividualID" NVARCHAR2(450),
    "OrganizationID" NVARCHAR2(450),
    "ReceptorBusinessID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "OrderID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "ShippingLocationID" NVARCHAR2(450),
    "BillingLocationID" NVARCHAR2(450),
    "EmmisorBillingProfileID" NVARCHAR2(450),
    "ReceptorBillingProfileID" NVARCHAR2(450),
    "InvoiceEnumerationRangeID" NVARCHAR2(450),
    "EmmisorWalletAccountID" NVARCHAR2(450),
    "ReceptorWalletAccountID" NVARCHAR2(450),
    "PriceListID" NVARCHAR2(450),
    "PaymentModeID" NVARCHAR2(450),
    "PaymentTermID" NVARCHAR2(450),
    "SupplierInvoiceDate" TIMESTAMP(7),
    "SupplierInvoiceReference" NVARCHAR2(2000),
    "PointOfSaleID" NVARCHAR2(450),
    CONSTRAINT "PK_Invoice" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Invoice_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_Invoice_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Invoice_Business_ReceptorBusinessID" FOREIGN KEY ("ReceptorBusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Invoice_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Invoice_Contact_IndividualID" FOREIGN KEY ("IndividualID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Invoice_Contact_OrganizationID" FOREIGN KEY ("OrganizationID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Invoice_ContactProfile_EmmisorBillingProfileID" FOREIGN KEY ("EmmisorBillingProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Invoice_ContactProfile_ReceptorBillingProfileID" FOREIGN KEY ("ReceptorBillingProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Invoice_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_Invoice_InvoiceEnumerationRange_InvoiceEnumerationRangeID" FOREIGN KEY ("InvoiceEnumerationRangeID") REFERENCES "InvoiceEnumerationRange" ("ID"),
    CONSTRAINT "FK_Invoice_Location_BillingLocationID" FOREIGN KEY ("BillingLocationID") REFERENCES "Location" ("ID"),
    CONSTRAINT "FK_Invoice_Location_ShippingLocationID" FOREIGN KEY ("ShippingLocationID") REFERENCES "Location" ("ID"),
    CONSTRAINT "FK_Invoice_Order_OrderID" FOREIGN KEY ("OrderID") REFERENCES "Order" ("ID"),
    CONSTRAINT "FK_Invoice_PaymentMode_PaymentModeID" FOREIGN KEY ("PaymentModeID") REFERENCES "PaymentMode" ("ID"),
    CONSTRAINT "FK_Invoice_PaymentTerm_PaymentTermID" FOREIGN KEY ("PaymentTermID") REFERENCES "PaymentTerm" ("ID"),
    CONSTRAINT "FK_Invoice_PointOfSale_PointOfSaleID" FOREIGN KEY ("PointOfSaleID") REFERENCES "PointOfSale" ("ID"),
    CONSTRAINT "FK_Invoice_PriceList_PriceListID" FOREIGN KEY ("PriceListID") REFERENCES "PriceList" ("ID"),
    CONSTRAINT "FK_Invoice_WalletAccount_EmmisorWalletAccountID" FOREIGN KEY ("EmmisorWalletAccountID") REFERENCES "WalletAccount" ("ID"),
    CONSTRAINT "FK_Invoice_WalletAccount_ReceptorWalletAccountID" FOREIGN KEY ("ReceptorWalletAccountID") REFERENCES "WalletAccount" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemPackingSlip" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Instructions" NVARCHAR2(2000),
    "DeliveryNoteID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "OrderID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemPackingSlip" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemPackingSlip_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ItemPackingSlip_DeliveryNote_DeliveryNoteID" FOREIGN KEY ("DeliveryNoteID") REFERENCES "DeliveryNote" ("ID"),
    CONSTRAINT "FK_ItemPackingSlip_Order_OrderID" FOREIGN KEY ("OrderID") REFERENCES "Order" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemPickList" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "OrderID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "WarehouseID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemPickList" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemPickList_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ItemPickList_Location_WarehouseID" FOREIGN KEY ("WarehouseID") REFERENCES "Location" ("ID"),
    CONSTRAINT "FK_ItemPickList_Order_OrderID" FOREIGN KEY ("OrderID") REFERENCES "Order" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"OrderRelation" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "OrderID" NVARCHAR2(450),
    "ProjectID" NVARCHAR2(450),
    CONSTRAINT "PK_OrderRelation" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_OrderRelation_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_OrderRelation_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_OrderRelation_Order_OrderID" FOREIGN KEY ("OrderID") REFERENCES "Order" ("ID"),
    CONSTRAINT "FK_OrderRelation_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Shipment" (
    "ID" NVARCHAR2(450) NOT NULL,
    "IsInternational" NUMBER(1) NOT NULL,
    "Delivered" NUMBER(1) NOT NULL,
    "Shipped" NUMBER(1) NOT NULL,
    "ShippngTimestamp" TIMESTAMP(7) NOT NULL,
    "DeliveryTimestamp" TIMESTAMP(7) NOT NULL,
    "ExpectedShippingDate" TIMESTAMP(7) NOT NULL,
    "ExpectedDeliveryDate" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "OrderID" NVARCHAR2(450),
    "BillingItemRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_Shipment" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Shipment_BillingItemRecord_BillingItemRecordID" FOREIGN KEY ("BillingItemRecordID") REFERENCES "BillingItemRecord" ("ID"),
    CONSTRAINT "FK_Shipment_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Shipment_Order_OrderID" FOREIGN KEY ("OrderID") REFERENCES "Order" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Entitlement" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Status" NUMBER(10) NOT NULL,
    "Quantity" NUMBER(10) NOT NULL,
    "Repetitions" NUMBER(10) NOT NULL,
    "ChargeAttempts" NUMBER(10) NOT NULL,
    "FreeTrialInDays" NUMBER(10) NOT NULL,
    "GracePeriodInDays" NUMBER(10) NOT NULL,
    "CustomRenewalPeriod" NUMBER(10) NOT NULL,
    "RenewalPeriod" NUMBER(10) NOT NULL,
    "EnableAutomaticRenew" NUMBER(1) NOT NULL,
    "EnableAutomaticDisable" NUMBER(1) NOT NULL,
    "EnableAutomaticPayments" NUMBER(1) NOT NULL,
    "Data" NVARCHAR2(2000),
    "DataLabel" NVARCHAR2(2000),
    "Data1" NVARCHAR2(2000),
    "Data1Label" NVARCHAR2(2000),
    "Data2" NVARCHAR2(2000),
    "Data2Label" NVARCHAR2(2000),
    "Data3" NVARCHAR2(2000),
    "Data3Label" NVARCHAR2(2000),
    "Data4" NVARCHAR2(2000),
    "Data4Label" NVARCHAR2(2000),
    "Data5" NVARCHAR2(2000),
    "Data5Label" NVARCHAR2(2000),
    "Data6" NVARCHAR2(2000),
    "Data6Label" NVARCHAR2(2000),
    "Data7" NVARCHAR2(2000),
    "Data7Label" NVARCHAR2(2000),
    "Data8" NVARCHAR2(2000),
    "Data8Label" NVARCHAR2(2000),
    "Data9" NVARCHAR2(2000),
    "Data9Label" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "StartDateTime" TIMESTAMP(7) NOT NULL,
    "EndDateTime" TIMESTAMP(7) NOT NULL,
    "AccountHolderID" NVARCHAR2(450),
    "IndividualID" NVARCHAR2(450),
    "OrganizationID" NVARCHAR2(450),
    "ReceptorBusinessID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "PaymentTokenID" NVARCHAR2(450),
    "ContactProfileID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "Code" NVARCHAR2(2000),
    "Signature" NVARCHAR2(2000),
    "PassPhrase" NVARCHAR2(2000),
    "Class" NUMBER(10),
    "LicenseTypeID" NVARCHAR2(450),
    "LicensingProfileID" NVARCHAR2(450),
    "ServiceID" NVARCHAR2(450),
    "ServiceLevelID" NVARCHAR2(450),
    "SubscriptionPlanID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "WalletAccountID" NVARCHAR2(450),
    "EmployeeBenefitID" NVARCHAR2(450),
    "EmployeeProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_Entitlement" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Entitlement_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_Entitlement_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Entitlement_Business_ReceptorBusinessID" FOREIGN KEY ("ReceptorBusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Entitlement_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Entitlement_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Entitlement_Contact_IndividualID" FOREIGN KEY ("IndividualID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Entitlement_Contact_OrganizationID" FOREIGN KEY ("OrganizationID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Entitlement_ContactProfile_ContactProfileID" FOREIGN KEY ("ContactProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Entitlement_ContactProfile_EmployeeProfileID" FOREIGN KEY ("EmployeeProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Entitlement_ContactProfile_LicensingProfileID" FOREIGN KEY ("LicensingProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Entitlement_EmployeeBenefit_EmployeeBenefitID" FOREIGN KEY ("EmployeeBenefitID") REFERENCES "EmployeeBenefit" ("ID"),
    CONSTRAINT "FK_Entitlement_Item_LicenseTypeID" FOREIGN KEY ("LicenseTypeID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_Entitlement_Item_ServiceID" FOREIGN KEY ("ServiceID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_Entitlement_Item_ServiceLevelID" FOREIGN KEY ("ServiceLevelID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_Entitlement_Item_SubscriptionPlanID" FOREIGN KEY ("SubscriptionPlanID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_Entitlement_PaymentToken_PaymentTokenID" FOREIGN KEY ("PaymentTokenID") REFERENCES "PaymentToken" ("ID"),
    CONSTRAINT "FK_Entitlement_WalletAccount_WalletAccountID" FOREIGN KEY ("WalletAccountID") REFERENCES "WalletAccount" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WalletWithdraw" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "WithdrawStatus" NUMBER(10) NOT NULL,
    "WalletAccountID" NVARCHAR2(450),
    "WalletWithdrawRequestID" NVARCHAR2(450),
    "ForexRate" NVARCHAR2(2000),
    "ForexRates" NVARCHAR2(2000),
    "BalanceBeforeWithdraw" DECIMAL(18, 2) NOT NULL,
    "BalanceAfterWithdraw" DECIMAL(18, 2) NOT NULL,
    "WithdrawedAmount" DECIMAL(18, 2) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    CONSTRAINT "PK_WalletWithdraw" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WalletWithdraw_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_WalletWithdraw_WalletAccount_WalletAccountID" FOREIGN KEY ("WalletAccountID") REFERENCES "WalletAccount" ("ID"),
    CONSTRAINT "FK_WalletWithdraw_WalletWithdrawRequest_WalletWithdrawRequestID" FOREIGN KEY ("WalletWithdrawRequestID") REFERENCES "WalletWithdrawRequest" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseAssignment" (
    "ID" NVARCHAR2(450) NOT NULL,
    "AsignToAllCohorts" NUMBER(1) NOT NULL,
    "Points" BINARY_DOUBLE NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Instructions" NVARCHAR2(2000),
    "DueDateTime" TIMESTAMP(7) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Resources" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "CourseID" NVARCHAR2(450),
    "CourseCohortID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "CourseGradingRubricID" NVARCHAR2(450),
    "CourseProblemSetID" NVARCHAR2(450),
    "CourseUnitID" NVARCHAR2(450),
    "CourseAssignmentTypeID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseAssignment" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseAssignment_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseAssignment_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseAssignment_CourseAssignmentType_CourseAssignmentTypeID" FOREIGN KEY ("CourseAssignmentTypeID") REFERENCES "CourseAssignmentType" ("ID"),
    CONSTRAINT "FK_CourseAssignment_CourseCohort_CourseCohortID" FOREIGN KEY ("CourseCohortID") REFERENCES "CourseCohort" ("ID"),
    CONSTRAINT "FK_CourseAssignment_CourseGradingRubric_CourseGradingRubricID" FOREIGN KEY ("CourseGradingRubricID") REFERENCES "CourseGradingRubric" ("ID"),
    CONSTRAINT "FK_CourseAssignment_CourseProblemSet_CourseProblemSetID" FOREIGN KEY ("CourseProblemSetID") REFERENCES "CourseProblemSet" ("ID"),
    CONSTRAINT "FK_CourseAssignment_CourseUnit_CourseUnitID" FOREIGN KEY ("CourseUnitID") REFERENCES "CourseUnit" ("ID"),
    CONSTRAINT "FK_CourseAssignment_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PayrollEntry" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "BankAccountID" NVARCHAR2(450),
    "SalaryID" NVARCHAR2(450),
    "PayrollID" NVARCHAR2(450),
    CONSTRAINT "PK_PayrollEntry" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PayrollEntry_Account_BankAccountID" FOREIGN KEY ("BankAccountID") REFERENCES "Account" ("ID"),
    CONSTRAINT "FK_PayrollEntry_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_PayrollEntry_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_PayrollEntry_Payroll_PayrollID" FOREIGN KEY ("PayrollID") REFERENCES "Payroll" ("ID"),
    CONSTRAINT "FK_PayrollEntry_Salary_SalaryID" FOREIGN KEY ("SalaryID") REFERENCES "Salary" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"InvoiceAdjustment" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Priority" NUMBER(10) NOT NULL,
    "Description" NVARCHAR2(2000),
    "Code" NVARCHAR2(2000),
    "DiscountPercent" BINARY_DOUBLE NOT NULL,
    "SurchargePercent" BINARY_DOUBLE NOT NULL,
    "DiscountAmount" BINARY_DOUBLE NOT NULL,
    "SurchargeAmount" BINARY_DOUBLE NOT NULL,
    "TotalDiscount" BINARY_DOUBLE NOT NULL,
    "TotalSurcharge" BINARY_DOUBLE NOT NULL,
    "Type" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "InvoiceID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    CONSTRAINT "PK_InvoiceAdjustment" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_InvoiceAdjustment_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_InvoiceAdjustment_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_InvoiceAdjustment_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_InvoiceAdjustment_Invoice_InvoiceID" FOREIGN KEY ("InvoiceID") REFERENCES "Invoice" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"InvoiceReference" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ReferralInvoiceID" NVARCHAR2(450),
    "ReferencedInvoiceID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_InvoiceReference" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_InvoiceReference_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_InvoiceReference_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_InvoiceReference_Invoice_ReferencedInvoiceID" FOREIGN KEY ("ReferencedInvoiceID") REFERENCES "Invoice" ("ID"),
    CONSTRAINT "FK_InvoiceReference_Invoice_ReferralInvoiceID" FOREIGN KEY ("ReferralInvoiceID") REFERENCES "Invoice" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"InvoiceRelation" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "InvoiceID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Type" NVARCHAR2(2000) NOT NULL,
    "ProjectID" NVARCHAR2(450),
    CONSTRAINT "PK_InvoiceRelation" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_InvoiceRelation_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_InvoiceRelation_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_InvoiceRelation_Invoice_InvoiceID" FOREIGN KEY ("InvoiceID") REFERENCES "Invoice" ("ID"),
    CONSTRAINT "FK_InvoiceRelation_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemPackingSlipEntry" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Quantity" NVARCHAR2(2000),
    "ItemID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "ItemPackingSlipID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemPackingSlipEntry" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemPackingSlipEntry_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ItemPackingSlipEntry_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemPackingSlipEntry_ItemPackingSlip_ItemPackingSlipID" FOREIGN KEY ("ItemPackingSlipID") REFERENCES "ItemPackingSlip" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemPickListEntry" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Quantity" BINARY_DOUBLE NOT NULL,
    "ItemID" NVARCHAR2(450),
    "WarehouseID" NVARCHAR2(450),
    "ItemPickListID" NVARCHAR2(450),
    "OrderItemRecordID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BillingCouponCartRecordID" NVARCHAR2(450),
    "BillingCouponItemRecordID" NVARCHAR2(450),
    "BillingCouponOrderRecordID" NVARCHAR2(450),
    "DealUnitItemRecordID" NVARCHAR2(450),
    "InvoiceItemRecordID" NVARCHAR2(450),
    "QuoteItemRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemPickListEntry" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemPickListEntry_BillingItemRecord_BillingCouponCartRecordID" FOREIGN KEY ("BillingCouponCartRecordID") REFERENCES "BillingItemRecord" ("ID"),
    CONSTRAINT "FK_ItemPickListEntry_BillingItemRecord_BillingCouponItemRecordID" FOREIGN KEY ("BillingCouponItemRecordID") REFERENCES "BillingItemRecord" ("ID"),
    CONSTRAINT "FK_ItemPickListEntry_BillingItemRecord_BillingCouponOrderRecordID" FOREIGN KEY ("BillingCouponOrderRecordID") REFERENCES "BillingItemRecord" ("ID"),
    CONSTRAINT "FK_ItemPickListEntry_BillingItemRecord_DealUnitItemRecordID" FOREIGN KEY ("DealUnitItemRecordID") REFERENCES "BillingItemRecord" ("ID"),
    CONSTRAINT "FK_ItemPickListEntry_BillingItemRecord_InvoiceItemRecordID" FOREIGN KEY ("InvoiceItemRecordID") REFERENCES "BillingItemRecord" ("ID"),
    CONSTRAINT "FK_ItemPickListEntry_BillingItemRecord_OrderItemRecordID" FOREIGN KEY ("OrderItemRecordID") REFERENCES "BillingItemRecord" ("ID"),
    CONSTRAINT "FK_ItemPickListEntry_BillingItemRecord_QuoteItemRecordID" FOREIGN KEY ("QuoteItemRecordID") REFERENCES "BillingItemRecord" ("ID"),
    CONSTRAINT "FK_ItemPickListEntry_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ItemPickListEntry_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ItemPickListEntry_ItemPickList_ItemPickListID" FOREIGN KEY ("ItemPickListID") REFERENCES "ItemPickList" ("ID"),
    CONSTRAINT "FK_ItemPickListEntry_Location_WarehouseID" FOREIGN KEY ("WarehouseID") REFERENCES "Location" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShippingLabel" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ExpectedDelivery" TIMESTAMP(7) NOT NULL,
    "TrackingCode" NVARCHAR2(2000),
    "LocationID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "ShipmentID" NVARCHAR2(450),
    "ShippingCourierID" NVARCHAR2(450),
    CONSTRAINT "PK_ShippingLabel" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShippingLabel_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ShippingLabel_Location_LocationID" FOREIGN KEY ("LocationID") REFERENCES "Location" ("ID"),
    CONSTRAINT "FK_ShippingLabel_Shipment_ShipmentID" FOREIGN KEY ("ShipmentID") REFERENCES "Shipment" ("ID"),
    CONSTRAINT "FK_ShippingLabel_ShippingCourier_ShippingCourierID" FOREIGN KEY ("ShippingCourierID") REFERENCES "ShippingCourier" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"LicenseAssignment" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "LicenseID" NVARCHAR2(450),
    "LicensingProfileID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_LicenseAssignment" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_LicenseAssignment_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_LicenseAssignment_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_LicenseAssignment_ContactProfile_LicensingProfileID" FOREIGN KEY ("LicensingProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_LicenseAssignment_Entitlement_LicenseID" FOREIGN KEY ("LicenseID") REFERENCES "Entitlement" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Payment" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Closed" NUMBER(1) NOT NULL,
    "Test" NUMBER(1) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "Data" NVARCHAR2(2000),
    "DataLabel" NVARCHAR2(2000),
    "Data1" NVARCHAR2(2000),
    "Data1Label" NVARCHAR2(2000),
    "Data2" NVARCHAR2(2000),
    "Data2Label" NVARCHAR2(2000),
    "Data3" NVARCHAR2(2000),
    "Data3Label" NVARCHAR2(2000),
    "Data4" NVARCHAR2(2000),
    "Data4Label" NVARCHAR2(2000),
    "Data5" NVARCHAR2(2000),
    "Data5Label" NVARCHAR2(2000),
    "Data6" NVARCHAR2(2000),
    "Data6Label" NVARCHAR2(2000),
    "Data7" NVARCHAR2(2000),
    "Data7Label" NVARCHAR2(2000),
    "Data8" NVARCHAR2(2000),
    "Data8Label" NVARCHAR2(2000),
    "Data9" NVARCHAR2(2000),
    "Data9Label" NVARCHAR2(2000),
    "Response" NVARCHAR2(2000),
    "Authorization" NVARCHAR2(2000),
    "ReferenceCode" NVARCHAR2(2000),
    "CorrelationCode" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "LastUpdated" TIMESTAMP(7) NOT NULL,
    "OnBehalfOf" NUMBER(10) NOT NULL,
    "PaymentType" NUMBER(10) NOT NULL,
    "PaymentStatus" NUMBER(10) NOT NULL,
    "ForexRate" DECIMAL(18, 2) NOT NULL,
    "BaseCost" DECIMAL(18, 2) NOT NULL,
    "TotalCost" DECIMAL(18, 2) NOT NULL,
    "TotalTaxes" DECIMAL(18, 2) NOT NULL,
    "Signature" NVARCHAR2(2000),
    "SignatureMismatch" NUMBER(1) NOT NULL,
    "IsExternal" NUMBER(1) NOT NULL,
    "MarkedForRevision" NUMBER(1) NOT NULL,
    "ForexRatesSnapshot" NVARCHAR2(2000),
    "OfficialID" NVARCHAR2(2000),
    "OfficialIDExpeditionDate" TIMESTAMP(7) NOT NULL,
    "FiscalIdentificationTypeID" NVARCHAR2(450),
    "BillingAddress" NVARCHAR2(2000),
    "Phone" NVARCHAR2(2000),
    "Cellphone" NVARCHAR2(2000),
    "Department" NVARCHAR2(2000),
    "City" NVARCHAR2(2000),
    "CountryID" NVARCHAR2(450),
    "LocationID" NVARCHAR2(450),
    "EntitlementID" NVARCHAR2(450),
    "AntiFraudScore" DECIMAL(18, 2) NOT NULL,
    "CallRecord" RAW(2000),
    "CallRecordURL" NVARCHAR2(2000),
    "Called" NUMBER(1) NOT NULL,
    "Verified" NUMBER(1) NOT NULL,
    "PayerPictureTimestamp" NVARCHAR2(2000),
    "PayerPicture" NVARCHAR2(2000),
    "IdentificationPictureTimestamp" NVARCHAR2(2000),
    "IdentificationPicture" NVARCHAR2(2000),
    "IdentificationBackPicture" NVARCHAR2(2000),
    "IdentificationBackPictureTimestamp" NVARCHAR2(2000),
    "IPLookupID" NVARCHAR2(450),
    "CurrencyID" NVARCHAR2(450),
    "InvoiceID" NVARCHAR2(450),
    "OrderID" NVARCHAR2(450),
    "AccountingEntryID" NVARCHAR2(450),
    "PaymentGatewayID" NVARCHAR2(450),
    "BankAccountID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "PayerBusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "IndividualID" NVARCHAR2(450),
    "OrganizationID" NVARCHAR2(450),
    "BankID" NVARCHAR2(450),
    "PaymentTokenID" NVARCHAR2(450),
    "EmmisorWalletAccountID" NVARCHAR2(450),
    "ReceptorWalletAccountID" NVARCHAR2(450),
    CONSTRAINT "PK_Payment" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Payment_Account_BankAccountID" FOREIGN KEY ("BankAccountID") REFERENCES "Account" ("ID"),
    CONSTRAINT "FK_Payment_AccountingEntry_AccountingEntryID" FOREIGN KEY ("AccountingEntryID") REFERENCES "AccountingEntry" ("ID"),
    CONSTRAINT "FK_Payment_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_Payment_Bank_BankID" FOREIGN KEY ("BankID") REFERENCES "Bank" ("ID"),
    CONSTRAINT "FK_Payment_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Payment_Business_PayerBusinessID" FOREIGN KEY ("PayerBusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Payment_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Payment_Contact_IndividualID" FOREIGN KEY ("IndividualID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Payment_Contact_OrganizationID" FOREIGN KEY ("OrganizationID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Payment_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_Payment_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_Payment_Entitlement_EntitlementID" FOREIGN KEY ("EntitlementID") REFERENCES "Entitlement" ("ID"),
    CONSTRAINT "FK_Payment_FiscalIdentificationType_FiscalIdentificationTypeID" FOREIGN KEY ("FiscalIdentificationTypeID") REFERENCES "FiscalIdentificationType" ("ID"),
    CONSTRAINT "FK_Payment_Invoice_InvoiceID" FOREIGN KEY ("InvoiceID") REFERENCES "Invoice" ("ID"),
    CONSTRAINT "FK_Payment_IPLookup_IPLookupID" FOREIGN KEY ("IPLookupID") REFERENCES "IPLookup" ("ID"),
    CONSTRAINT "FK_Payment_Location_LocationID" FOREIGN KEY ("LocationID") REFERENCES "Location" ("ID"),
    CONSTRAINT "FK_Payment_Order_OrderID" FOREIGN KEY ("OrderID") REFERENCES "Order" ("ID"),
    CONSTRAINT "FK_Payment_PaymentGateway_PaymentGatewayID" FOREIGN KEY ("PaymentGatewayID") REFERENCES "PaymentGateway" ("ID"),
    CONSTRAINT "FK_Payment_PaymentToken_PaymentTokenID" FOREIGN KEY ("PaymentTokenID") REFERENCES "PaymentToken" ("ID"),
    CONSTRAINT "FK_Payment_WalletAccount_EmmisorWalletAccountID" FOREIGN KEY ("EmmisorWalletAccountID") REFERENCES "WalletAccount" ("ID"),
    CONSTRAINT "FK_Payment_WalletAccount_ReceptorWalletAccountID" FOREIGN KEY ("ReceptorWalletAccountID") REFERENCES "WalletAccount" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ServiceCase" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "AccountHolderID" NVARCHAR2(450),
    "IndividualID" NVARCHAR2(450),
    "OrganizationID" NVARCHAR2(450),
    "ReceptorBusinessID" NVARCHAR2(450),
    "ServiceID" NVARCHAR2(450),
    "ServiceQueueID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ServiceLevelAgreementID" NVARCHAR2(450),
    "ServiceCaseTypeID" NVARCHAR2(450),
    CONSTRAINT "PK_ServiceCase" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ServiceCase_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_ServiceCase_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ServiceCase_Business_ReceptorBusinessID" FOREIGN KEY ("ReceptorBusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ServiceCase_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ServiceCase_Contact_IndividualID" FOREIGN KEY ("IndividualID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_ServiceCase_Contact_OrganizationID" FOREIGN KEY ("OrganizationID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_ServiceCase_Entitlement_ServiceLevelAgreementID" FOREIGN KEY ("ServiceLevelAgreementID") REFERENCES "Entitlement" ("ID"),
    CONSTRAINT "FK_ServiceCase_Item_ServiceID" FOREIGN KEY ("ServiceID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ServiceCase_ServiceCaseType_ServiceCaseTypeID" FOREIGN KEY ("ServiceCaseTypeID") REFERENCES "ServiceCaseType" ("ID"),
    CONSTRAINT "FK_ServiceCase_ServiceQueue_ServiceQueueID" FOREIGN KEY ("ServiceQueueID") REFERENCES "ServiceQueue" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SupportPriority" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "SupportEntitlementID" NVARCHAR2(450),
    CONSTRAINT "PK_SupportPriority" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SupportPriority_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SupportPriority_Entitlement_SupportEntitlementID" FOREIGN KEY ("SupportEntitlementID") REFERENCES "Entitlement" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseAssignmentSubmit" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Content" NVARCHAR2(2000),
    "Result" NVARCHAR2(2000),
    "Score" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "CourseAssignmentID" NVARCHAR2(450),
    "GradingCriteriaCategoryID" NVARCHAR2(450),
    "InstructorProfileID" NVARCHAR2(450),
    "CourseID" NVARCHAR2(450),
    "StudentProfileID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseAssignmentSubmit" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseAssignmentSubmit_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseAssignmentSubmit_ContactProfile_InstructorProfileID" FOREIGN KEY ("InstructorProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_CourseAssignmentSubmit_ContactProfile_StudentProfileID" FOREIGN KEY ("StudentProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_CourseAssignmentSubmit_CourseAssignment_CourseAssignmentID" FOREIGN KEY ("CourseAssignmentID") REFERENCES "CourseAssignment" ("ID"),
    CONSTRAINT "FK_CourseAssignmentSubmit_CourseGradingCriteriaCategory_GradingCriteriaCategoryID" FOREIGN KEY ("GradingCriteriaCategoryID") REFERENCES "CourseGradingCriteriaCategory" ("ID"),
    CONSTRAINT "FK_CourseAssignmentSubmit_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WebContent" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "Order" NUMBER(10) NOT NULL,
    "Slug" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "Title" NVARCHAR2(2000),
    "Excerpt" NVARCHAR2(2000),
    "Password" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "HighlightImage" NVARCHAR2(2000),
    "CanonicalUrl" NVARCHAR2(2000),
    "SeoTitle" NVARCHAR2(2000),
    "SeoKeyWords" NVARCHAR2(2000),
    "SeoKeyPhrases" NVARCHAR2(2000),
    "MetaDescription" NVARCHAR2(2000),
    "TwitterImage" NVARCHAR2(2000),
    "TwitterTitle" NVARCHAR2(2000),
    "TwitterDescription" NVARCHAR2(2000),
    "FacebookImage" NVARCHAR2(2000),
    "FacebookTitle" NVARCHAR2(2000),
    "FacebookDescription" NVARCHAR2(2000),
    "FeaturedImageURL" NVARCHAR2(2000),
    "Content" NVARCHAR2(2000),
    "Code" NVARCHAR2(2000),
    "Namespace" NVARCHAR2(2000),
    "TypeName" NVARCHAR2(2000),
    "GeneratedCode" NVARCHAR2(2000),
    "CompiledCode" RAW(2000),
    "CompilationPath" NVARCHAR2(2000),
    "CodeType" NUMBER(10),
    "HTMLContent" NVARCHAR2(2000),
    "CSharpContent" NVARCHAR2(2000),
    "RazorContent" NVARCHAR2(2000),
    "CSSContent" NVARCHAR2(2000),
    "JSContent" NVARCHAR2(2000),
    "CSSFiles" NVARCHAR2(2000),
    "JSFiles" NVARCHAR2(2000),
    "RazorGeneratedCode" NVARCHAR2(2000),
    "CSharpGeneratedCode" NVARCHAR2(2000),
    "PrecompiledView" RAW(2000),
    "PrecompiledLogic" RAW(2000),
    "PrecompiledLogicSize" NUMBER(10) NOT NULL,
    "PrecompiledLogicSizeLong" NUMBER(19) NOT NULL,
    "PrecompiledViewSize" NUMBER(10) NOT NULL,
    "PrecompiledViewSizeLong" NUMBER(19) NOT NULL,
    "PrecompiledLogicViewSize" NUMBER(10) NOT NULL,
    "Template" NUMBER(1) NOT NULL,
    "Default" NUMBER(1) NOT NULL,
    "Enable" NUMBER(1) NOT NULL,
    "EnableComments" NUMBER(1) NOT NULL,
    "DisplaySocialBox" NUMBER(1) NOT NULL,
    "Published" NUMBER(1) NOT NULL,
    "InTrashCan" NUMBER(1) NOT NULL,
    "SystemLocked" NUMBER(1) NOT NULL,
    "AllowPingbacks" NUMBER(1) NOT NULL,
    "AllowTrackbacks" NUMBER(1) NOT NULL,
    "CornerstoneContent" NUMBER(1) NOT NULL,
    "IsEssentialContent" NUMBER(1) NOT NULL,
    "AllowSearchEngineIndexing" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ReleaseDateTime" TIMESTAMP(7) NOT NULL,
    "LastModification" TIMESTAMP(7) NOT NULL,
    "TrashedTimestamp" TIMESTAMP(7) NOT NULL,
    "DeletionTimestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "WebPortalID" NVARCHAR2(450),
    "WebsiteThemeID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ParentWebContentID" NVARCHAR2(450),
    "ParentWebContentVersionID" NVARCHAR2(450),
    "CourseAssignmentID" NVARCHAR2(450),
    "CourseAssignmentComponent_CourseID" NVARCHAR2(450),
    "Form" NVARCHAR2(2000),
    "WebForum_WebTemplateID" NVARCHAR2(450),
    "WebForumCategoryID" NVARCHAR2(450),
    "CourseForum_CourseID" NVARCHAR2(450),
    "WebPage_WebTemplateID" NVARCHAR2(450),
    "IsHomePage" NUMBER(1),
    "IsStorePage" NUMBER(1),
    "IsCartPage" NUMBER(1),
    "IsBlogPage" NUMBER(1),
    "IsAccountPage" NUMBER(1),
    "IsCheckoutPage" NUMBER(1),
    "IsWishListsPage" NUMBER(1),
    "IsContactPage" NUMBER(1),
    "IsPrivacyPolicyPage" NUMBER(1),
    "IsTermsOfServicePage" NUMBER(1),
    "WebPageVisibility" NUMBER(10),
    "WebPage_WebFormID" NVARCHAR2(450),
    "BlogPostCategoryID" NVARCHAR2(450),
    "WebTemplateID" NVARCHAR2(450),
    "WebFormID" NVARCHAR2(450),
    "CourseWikiID" NVARCHAR2(450),
    "CourseID" NVARCHAR2(450),
    "CourseCompletionCertificateTemplate_CourseID" NVARCHAR2(450),
    "CourseUnitID" NVARCHAR2(450),
    "CourseUnitComponent_CourseID" NVARCHAR2(450),
    "CoursePage_CourseID" NVARCHAR2(450),
    "CourseUpdate_CourseID" NVARCHAR2(450),
    "MarketingCampaignID" NVARCHAR2(450),
    "NewsletterID" NVARCHAR2(450),
    CONSTRAINT "PK_WebContent" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WebContent_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_WebContent_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_WebContent_CourseAssignment_CourseAssignmentID" FOREIGN KEY ("CourseAssignmentID") REFERENCES "CourseAssignment" ("ID"),
    CONSTRAINT "FK_WebContent_CourseUnit_CourseUnitID" FOREIGN KEY ("CourseUnitID") REFERENCES "CourseUnit" ("ID"),
    CONSTRAINT "FK_WebContent_CourseWiki_CourseWikiID" FOREIGN KEY ("CourseWikiID") REFERENCES "CourseWiki" ("ID"),
    CONSTRAINT "FK_WebContent_Item_CourseAssignmentComponent_CourseID" FOREIGN KEY ("CourseAssignmentComponent_CourseID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_WebContent_Item_CourseCompletionCertificateTemplate_CourseID" FOREIGN KEY ("CourseCompletionCertificateTemplate_CourseID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_WebContent_Item_CourseForum_CourseID" FOREIGN KEY ("CourseForum_CourseID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_WebContent_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_WebContent_Item_CoursePage_CourseID" FOREIGN KEY ("CoursePage_CourseID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_WebContent_Item_CourseUnitComponent_CourseID" FOREIGN KEY ("CourseUnitComponent_CourseID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_WebContent_Item_CourseUpdate_CourseID" FOREIGN KEY ("CourseUpdate_CourseID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_WebContent_MarketingCampaign_MarketingCampaignID" FOREIGN KEY ("MarketingCampaignID") REFERENCES "MarketingCampaign" ("ID"),
    CONSTRAINT "FK_WebContent_Newsletter_NewsletterID" FOREIGN KEY ("NewsletterID") REFERENCES "Newsletter" ("ID"),
    CONSTRAINT "FK_WebContent_Taxonomy_BlogPostCategoryID" FOREIGN KEY ("BlogPostCategoryID") REFERENCES "Taxonomy" ("ID"),
    CONSTRAINT "FK_WebContent_Taxonomy_WebForumCategoryID" FOREIGN KEY ("WebForumCategoryID") REFERENCES "Taxonomy" ("ID"),
    CONSTRAINT "FK_WebContent_WebContent_ParentWebContentID" FOREIGN KEY ("ParentWebContentID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_WebContent_WebContent_ParentWebContentVersionID" FOREIGN KEY ("ParentWebContentVersionID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_WebContent_WebContent_WebFormID" FOREIGN KEY ("WebFormID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_WebContent_WebContent_WebForum_WebTemplateID" FOREIGN KEY ("WebForum_WebTemplateID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_WebContent_WebContent_WebPage_WebFormID" FOREIGN KEY ("WebPage_WebFormID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_WebContent_WebContent_WebPage_WebTemplateID" FOREIGN KEY ("WebPage_WebTemplateID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_WebContent_WebContent_WebTemplateID" FOREIGN KEY ("WebTemplateID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_WebContent_WebPortal_WebPortalID" FOREIGN KEY ("WebPortalID") REFERENCES "WebPortal" ("ID"),
    CONSTRAINT "FK_WebContent_WebsiteTheme_WebsiteThemeID" FOREIGN KEY ("WebsiteThemeID") REFERENCES "WebsiteTheme" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ShippingPackage" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Code" NVARCHAR2(2000),
    "Name" NVARCHAR2(2000),
    "Width" BINARY_DOUBLE NOT NULL,
    "Length" BINARY_DOUBLE NOT NULL,
    "Height" BINARY_DOUBLE NOT NULL,
    "EmptyWeight" BINARY_DOUBLE NOT NULL,
    "ServicePackage" NUMBER(1) NOT NULL,
    "ShippingCourierID" NVARCHAR2(450),
    "ShippingLabelID" NVARCHAR2(450),
    "SpatialUnit" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    CONSTRAINT "PK_ShippingPackage" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ShippingPackage_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ShippingPackage_ShippingCourier_ShippingCourierID" FOREIGN KEY ("ShippingCourierID") REFERENCES "ShippingCourier" ("ID"),
    CONSTRAINT "FK_ShippingPackage_ShippingLabel_ShippingLabelID" FOREIGN KEY ("ShippingLabelID") REFERENCES "ShippingLabel" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PaymentDeduction" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Amount" BINARY_DOUBLE NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "PaymentID" NVARCHAR2(450),
    "AccountID" NVARCHAR2(450),
    "CostCentreID" NVARCHAR2(450),
    CONSTRAINT "PK_PaymentDeduction" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PaymentDeduction_Account_AccountID" FOREIGN KEY ("AccountID") REFERENCES "Account" ("ID"),
    CONSTRAINT "FK_PaymentDeduction_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_PaymentDeduction_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_PaymentDeduction_CostCentre_CostCentreID" FOREIGN KEY ("CostCentreID") REFERENCES "CostCentre" ("ID"),
    CONSTRAINT "FK_PaymentDeduction_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_PaymentDeduction_Payment_PaymentID" FOREIGN KEY ("PaymentID") REFERENCES "Payment" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PaymentDispute" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Closed" NUMBER(1) NOT NULL,
    "DisputedAmount" DECIMAL(18, 2) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "PaymentID" NVARCHAR2(450),
    "PaymentGatewayID" NVARCHAR2(450),
    "EmmisorWalletAccountID" NVARCHAR2(450),
    "ReceptorWalletAccountID" NVARCHAR2(450),
    CONSTRAINT "PK_PaymentDispute" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PaymentDispute_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_PaymentDispute_Payment_PaymentID" FOREIGN KEY ("PaymentID") REFERENCES "Payment" ("ID"),
    CONSTRAINT "FK_PaymentDispute_PaymentGateway_PaymentGatewayID" FOREIGN KEY ("PaymentGatewayID") REFERENCES "PaymentGateway" ("ID"),
    CONSTRAINT "FK_PaymentDispute_WalletAccount_EmmisorWalletAccountID" FOREIGN KEY ("EmmisorWalletAccountID") REFERENCES "WalletAccount" ("ID"),
    CONSTRAINT "FK_PaymentDispute_WalletAccount_ReceptorWalletAccountID" FOREIGN KEY ("ReceptorWalletAccountID") REFERENCES "WalletAccount" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Receipt" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Closed" NUMBER(1) NOT NULL,
    "AccountHolderID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ReceiptType" NUMBER(10) NOT NULL,
    "OrderID" NVARCHAR2(450),
    "InvoiceID" NVARCHAR2(450),
    "PaymentID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    CONSTRAINT "PK_Receipt" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Receipt_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_Receipt_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Receipt_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Receipt_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Receipt_Invoice_InvoiceID" FOREIGN KEY ("InvoiceID") REFERENCES "Invoice" ("ID"),
    CONSTRAINT "FK_Receipt_Order_OrderID" FOREIGN KEY ("OrderID") REFERENCES "Order" ("ID"),
    CONSTRAINT "FK_Receipt_Payment_PaymentID" FOREIGN KEY ("PaymentID") REFERENCES "Payment" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SupportRequest" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Approved" NUMBER(1) NOT NULL,
    "ApprovedTimestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "SupportEntitlementID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "RefundPolicyID" NVARCHAR2(450),
    "PaymentID" NVARCHAR2(450),
    "ReturnPolicyID" NVARCHAR2(450),
    "WarrantyPolicyID" NVARCHAR2(450),
    CONSTRAINT "PK_SupportRequest" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SupportRequest_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_SupportRequest_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SupportRequest_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_SupportRequest_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_SupportRequest_Entitlement_SupportEntitlementID" FOREIGN KEY ("SupportEntitlementID") REFERENCES "Entitlement" ("ID"),
    CONSTRAINT "FK_SupportRequest_Payment_PaymentID" FOREIGN KEY ("PaymentID") REFERENCES "Payment" ("ID"),
    CONSTRAINT "FK_SupportRequest_Policy_RefundPolicyID" FOREIGN KEY ("RefundPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_SupportRequest_Policy_ReturnPolicyID" FOREIGN KEY ("ReturnPolicyID") REFERENCES "Policy" ("ID"),
    CONSTRAINT "FK_SupportRequest_Policy_WarrantyPolicyID" FOREIGN KEY ("WarrantyPolicyID") REFERENCES "Policy" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ServicePersonnelRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "EmployeeProfileID" NVARCHAR2(450),
    "ServiceCaseID" NVARCHAR2(450),
    "ServiceID" NVARCHAR2(450),
    CONSTRAINT "PK_ServicePersonnelRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ServicePersonnelRecord_ContactProfile_EmployeeProfileID" FOREIGN KEY ("EmployeeProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_ServicePersonnelRecord_Item_ServiceID" FOREIGN KEY ("ServiceID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ServicePersonnelRecord_ServiceCase_ServiceCaseID" FOREIGN KEY ("ServiceCaseID") REFERENCES "ServiceCase" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"CourseCompletionCertificate" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "StudentProfileID" NVARCHAR2(450),
    "CourseEnrollmentID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "CourseCompletionCertificateTemplateID" NVARCHAR2(450),
    "CourseID" NVARCHAR2(450),
    CONSTRAINT "PK_CourseCompletionCertificate" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_CourseCompletionCertificate_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_CourseCompletionCertificate_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_CourseCompletionCertificate_ContactProfile_StudentProfileID" FOREIGN KEY ("StudentProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_CourseCompletionCertificate_CourseEnrollment_CourseEnrollmentID" FOREIGN KEY ("CourseEnrollmentID") REFERENCES "CourseEnrollment" ("ID"),
    CONSTRAINT "FK_CourseCompletionCertificate_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_CourseCompletionCertificate_WebContent_CourseCompletionCertificateTemplateID" FOREIGN KEY ("CourseCompletionCertificateTemplateID") REFERENCES "WebContent" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"EmailRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "SendedTimestamp" TIMESTAMP(7) NOT NULL,
    "ReadedTimestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "ReceptorBusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "IndividualID" NVARCHAR2(450),
    "OrganizationID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "Readed" NUMBER(1) NOT NULL,
    "Email" NVARCHAR2(2000),
    "Content" NVARCHAR2(2000),
    "MarketingCampaignID" NVARCHAR2(450),
    "EmailTemplateID" NVARCHAR2(450),
    "EmailSignatureID" NVARCHAR2(450),
    CONSTRAINT "PK_EmailRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_EmailRecord_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_EmailRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_EmailRecord_Business_ReceptorBusinessID" FOREIGN KEY ("ReceptorBusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_EmailRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_EmailRecord_Contact_IndividualID" FOREIGN KEY ("IndividualID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_EmailRecord_Contact_OrganizationID" FOREIGN KEY ("OrganizationID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_EmailRecord_MarketingCampaign_MarketingCampaignID" FOREIGN KEY ("MarketingCampaignID") REFERENCES "MarketingCampaign" ("ID"),
    CONSTRAINT "FK_EmailRecord_WebContent_EmailSignatureID" FOREIGN KEY ("EmailSignatureID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_EmailRecord_WebContent_EmailTemplateID" FOREIGN KEY ("EmailTemplateID") REFERENCES "WebContent" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Review" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ReviewScore" BINARY_DOUBLE NOT NULL,
    "ReviewMessage" NVARCHAR2(2000) NOT NULL,
    "SocialProfileID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "SupplierProfileID" NVARCHAR2(450),
    "BlogPostID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    "TrainingProgramReview_BusinessID" NVARCHAR2(450),
    "TrainingProgramID" NVARCHAR2(450),
    CONSTRAINT "PK_Review" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Review_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Review_Business_TrainingProgramReview_BusinessID" FOREIGN KEY ("TrainingProgramReview_BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Review_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_Review_ContactProfile_SupplierProfileID" FOREIGN KEY ("SupplierProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Review_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_Review_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID"),
    CONSTRAINT "FK_Review_TrainingProgram_TrainingProgramID" FOREIGN KEY ("TrainingProgramID") REFERENCES "TrainingProgram" ("ID"),
    CONSTRAINT "FK_Review_WebContent_BlogPostID" FOREIGN KEY ("BlogPostID") REFERENCES "WebContent" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SocialPost" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Message" NVARCHAR2(2000),
    "SocialProfileID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "BlogPostID" NVARCHAR2(450),
    "SocialFeedID" NVARCHAR2(450),
    "WebForumID" NVARCHAR2(450),
    "SocialGroupID" NVARCHAR2(450),
    "WebPageID" NVARCHAR2(450),
    CONSTRAINT "PK_SocialPost" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SocialPost_SocialFeed_SocialFeedID" FOREIGN KEY ("SocialFeedID") REFERENCES "SocialFeed" ("ID"),
    CONSTRAINT "FK_SocialPost_SocialGroup_SocialGroupID" FOREIGN KEY ("SocialGroupID") REFERENCES "SocialGroup" ("ID"),
    CONSTRAINT "FK_SocialPost_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID"),
    CONSTRAINT "FK_SocialPost_WebContent_BlogPostID" FOREIGN KEY ("BlogPostID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_SocialPost_WebContent_WebForumID" FOREIGN KEY ("WebForumID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_SocialPost_WebContent_WebPageID" FOREIGN KEY ("WebPageID") REFERENCES "WebContent" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"WebFormSubmit" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Body" NVARCHAR2(2000),
    "WebFormID" NVARCHAR2(450),
    CONSTRAINT "PK_WebFormSubmit" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_WebFormSubmit_WebContent_WebFormID" FOREIGN KEY ("WebFormID") REFERENCES "WebContent" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"InquiryRequest" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Name" NVARCHAR2(2000),
    "LastName" NVARCHAR2(2000),
    "Email" NVARCHAR2(2000),
    "OrganizationName" NVARCHAR2(2000),
    "JobRole" NVARCHAR2(2000),
    "OrganizationDomain" NVARCHAR2(2000),
    "CountryID" NVARCHAR2(450),
    "Phone" NVARCHAR2(2000),
    "Message" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "SocialProfileID" NVARCHAR2(450),
    "PaymentDisputeID" NVARCHAR2(450),
    "WalletAccountID" NVARCHAR2(450),
    "BusinessTeamID" NVARCHAR2(450),
    "BusinessUnitID" NVARCHAR2(450),
    CONSTRAINT "PK_InquiryRequest" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_InquiryRequest_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_InquiryRequest_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_InquiryRequest_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_InquiryRequest_BusinessTeam_BusinessTeamID" FOREIGN KEY ("BusinessTeamID") REFERENCES "BusinessTeam" ("ID"),
    CONSTRAINT "FK_InquiryRequest_BusinessUnit_BusinessUnitID" FOREIGN KEY ("BusinessUnitID") REFERENCES "BusinessUnit" ("ID"),
    CONSTRAINT "FK_InquiryRequest_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_InquiryRequest_PaymentDispute_PaymentDisputeID" FOREIGN KEY ("PaymentDisputeID") REFERENCES "PaymentDispute" ("ID"),
    CONSTRAINT "FK_InquiryRequest_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID"),
    CONSTRAINT "FK_InquiryRequest_WalletAccount_WalletAccountID" FOREIGN KEY ("WalletAccountID") REFERENCES "WalletAccount" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"OrderReturn" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Arrived" NUMBER(1) NOT NULL,
    "Verified" NUMBER(1) NOT NULL,
    "Approved" NUMBER(1) NOT NULL,
    "ApprovedTimestamp" TIMESTAMP(7) NOT NULL,
    "OrderID" NVARCHAR2(450),
    "ReturnRequestID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_OrderReturn" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_OrderReturn_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_OrderReturn_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_OrderReturn_Order_OrderID" FOREIGN KEY ("OrderID") REFERENCES "Order" ("ID"),
    CONSTRAINT "FK_OrderReturn_SupportRequest_ReturnRequestID" FOREIGN KEY ("ReturnRequestID") REFERENCES "SupportRequest" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"OrderWarranty" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ApprovedTimestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "WarrantyRequestID" NVARCHAR2(450),
    CONSTRAINT "PK_OrderWarranty" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_OrderWarranty_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_OrderWarranty_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_OrderWarranty_SupportRequest_WarrantyRequestID" FOREIGN KEY ("WarrantyRequestID") REFERENCES "SupportRequest" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SupportTicket" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "SupportTicketStatus" NUMBER(10) NOT NULL,
    "AccountHolderID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "SupportTicketTypeID" NVARCHAR2(450),
    "SupportEntitlementID" NVARCHAR2(450),
    "SupportPriorityID" NVARCHAR2(450),
    "SupportRequestID" NVARCHAR2(450),
    CONSTRAINT "PK_SupportTicket" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SupportTicket_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_SupportTicket_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_SupportTicket_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_SupportTicket_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_SupportTicket_Entitlement_SupportEntitlementID" FOREIGN KEY ("SupportEntitlementID") REFERENCES "Entitlement" ("ID"),
    CONSTRAINT "FK_SupportTicket_SupportPriority_SupportPriorityID" FOREIGN KEY ("SupportPriorityID") REFERENCES "SupportPriority" ("ID"),
    CONSTRAINT "FK_SupportTicket_SupportRequest_SupportRequestID" FOREIGN KEY ("SupportRequestID") REFERENCES "SupportRequest" ("ID"),
    CONSTRAINT "FK_SupportTicket_SupportTicketType_SupportTicketTypeID" FOREIGN KEY ("SupportTicketTypeID") REFERENCES "SupportTicketType" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SocialComment" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Message" NVARCHAR2(2000),
    "OwnerSocialProfileID" NVARCHAR2(450),
    "SocialPostID" NVARCHAR2(450),
    "ParentCommentID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "BlogPostID" NVARCHAR2(450),
    CONSTRAINT "PK_SocialComment" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SocialComment_SocialComment_ParentCommentID" FOREIGN KEY ("ParentCommentID") REFERENCES "SocialComment" ("ID"),
    CONSTRAINT "FK_SocialComment_SocialPost_SocialPostID" FOREIGN KEY ("SocialPostID") REFERENCES "SocialPost" ("ID"),
    CONSTRAINT "FK_SocialComment_SocialProfile_OwnerSocialProfileID" FOREIGN KEY ("OwnerSocialProfileID") REFERENCES "SocialProfile" ("ID"),
    CONSTRAINT "FK_SocialComment_WebContent_BlogPostID" FOREIGN KEY ("BlogPostID") REFERENCES "WebContent" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"TaxonomyRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "TaxonomyID" NVARCHAR2(450),
    "WebContentID" NVARCHAR2(450),
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "SocialForumPostID" NVARCHAR2(450),
    "IsMainCategory" NUMBER(1),
    "WebPageCategoryRecord_WebPageID" NVARCHAR2(450),
    "WebPageCategoryID" NVARCHAR2(450),
    "WebPageTagID" NVARCHAR2(450),
    "WebPageID" NVARCHAR2(450),
    "BlogPostCategoryRecord_BlogPostID" NVARCHAR2(450),
    "BlogPostID" NVARCHAR2(450),
    "KnowledgeArticleCategoryID" NVARCHAR2(450),
    "KnowledgeArticleID" NVARCHAR2(450),
    CONSTRAINT "PK_TaxonomyRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_TaxonomyRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_TaxonomyRecord_SocialPost_SocialForumPostID" FOREIGN KEY ("SocialForumPostID") REFERENCES "SocialPost" ("ID"),
    CONSTRAINT "FK_TaxonomyRecord_Taxonomy_KnowledgeArticleCategoryID" FOREIGN KEY ("KnowledgeArticleCategoryID") REFERENCES "Taxonomy" ("ID"),
    CONSTRAINT "FK_TaxonomyRecord_Taxonomy_TaxonomyID" FOREIGN KEY ("TaxonomyID") REFERENCES "Taxonomy" ("ID"),
    CONSTRAINT "FK_TaxonomyRecord_Taxonomy_WebPageCategoryID" FOREIGN KEY ("WebPageCategoryID") REFERENCES "Taxonomy" ("ID"),
    CONSTRAINT "FK_TaxonomyRecord_Taxonomy_WebPageTagID" FOREIGN KEY ("WebPageTagID") REFERENCES "Taxonomy" ("ID"),
    CONSTRAINT "FK_TaxonomyRecord_WebContent_BlogPostCategoryRecord_BlogPostID" FOREIGN KEY ("BlogPostCategoryRecord_BlogPostID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_TaxonomyRecord_WebContent_BlogPostID" FOREIGN KEY ("BlogPostID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_TaxonomyRecord_WebContent_KnowledgeArticleID" FOREIGN KEY ("KnowledgeArticleID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_TaxonomyRecord_WebContent_WebContentID" FOREIGN KEY ("WebContentID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_TaxonomyRecord_WebContent_WebPageCategoryRecord_WebPageID" FOREIGN KEY ("WebPageCategoryRecord_WebPageID") REFERENCES "WebContent" ("ID"),
    CONSTRAINT "FK_TaxonomyRecord_WebContent_WebPageID" FOREIGN KEY ("WebPageID") REFERENCES "WebContent" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"OrderItemReturn" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Approved" NUMBER(1) NOT NULL,
    "Reason" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ReturnRequestID" NVARCHAR2(450),
    "OrderID" NVARCHAR2(450),
    "OrderItemRecordID" NVARCHAR2(450),
    "OrderReturnID" NVARCHAR2(450),
    CONSTRAINT "PK_OrderItemReturn" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_OrderItemReturn_BillingItemRecord_OrderItemRecordID" FOREIGN KEY ("OrderItemRecordID") REFERENCES "BillingItemRecord" ("ID"),
    CONSTRAINT "FK_OrderItemReturn_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_OrderItemReturn_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_OrderItemReturn_Order_OrderID" FOREIGN KEY ("OrderID") REFERENCES "Order" ("ID"),
    CONSTRAINT "FK_OrderItemReturn_OrderReturn_OrderReturnID" FOREIGN KEY ("OrderReturnID") REFERENCES "OrderReturn" ("ID"),
    CONSTRAINT "FK_OrderItemReturn_SupportRequest_ReturnRequestID" FOREIGN KEY ("ReturnRequestID") REFERENCES "SupportRequest" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"OrderItemWarranty" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ApprovedTimestamp" TIMESTAMP(7) NOT NULL,
    "Approved" NUMBER(1) NOT NULL,
    "Reason" NVARCHAR2(2000),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "WarrantyRequestID" NVARCHAR2(450),
    "OrderWarrantyID" NVARCHAR2(450),
    CONSTRAINT "PK_OrderItemWarranty" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_OrderItemWarranty_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_OrderItemWarranty_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_OrderItemWarranty_OrderWarranty_WarrantyRequestID" FOREIGN KEY ("WarrantyRequestID") REFERENCES "OrderWarranty" ("ID"),
    CONSTRAINT "FK_OrderItemWarranty_SupportRequest_OrderWarrantyID" FOREIGN KEY ("OrderWarrantyID") REFERENCES "SupportRequest" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Conversation" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "Topic" NVARCHAR2(2000),
    "Closed" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ClosedTimestamp" TIMESTAMP(7) NOT NULL,
    "SocialProfileID" NVARCHAR2(450),
    "SupportTicketID" NVARCHAR2(450),
    CONSTRAINT "PK_Conversation" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Conversation_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID"),
    CONSTRAINT "FK_Conversation_SupportTicket_SupportTicketID" FOREIGN KEY ("SupportTicketID") REFERENCES "SupportTicket" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"SocialReaction" (
    "ID" NVARCHAR2(450) NOT NULL,
    "SocialProfileID" NVARCHAR2(450),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Reaction" NUMBER(10) NOT NULL,
    "Discriminator" NVARCHAR2(2000) NOT NULL,
    "BlogPostID" NVARCHAR2(450),
    "SocialCommentID" NVARCHAR2(450),
    "SocialPostID" NVARCHAR2(450),
    CONSTRAINT "PK_SocialReaction" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_SocialReaction_SocialComment_SocialCommentID" FOREIGN KEY ("SocialCommentID") REFERENCES "SocialComment" ("ID"),
    CONSTRAINT "FK_SocialReaction_SocialPost_SocialPostID" FOREIGN KEY ("SocialPostID") REFERENCES "SocialPost" ("ID"),
    CONSTRAINT "FK_SocialReaction_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID"),
    CONSTRAINT "FK_SocialReaction_WebContent_BlogPostID" FOREIGN KEY ("BlogPostID") REFERENCES "WebContent" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PrivateMessage" (
    "ID" NVARCHAR2(450) NOT NULL,
    "SendedTimestamp" TIMESTAMP(7) NOT NULL,
    "ReadedTimestamp" TIMESTAMP(7) NOT NULL,
    "ReceivedTimestamp" TIMESTAMP(7) NOT NULL,
    "Readed" NUMBER(1) NOT NULL,
    "Message" NVARCHAR2(2000),
    "ConversationID" NVARCHAR2(450),
    "SenderID" NVARCHAR2(450),
    "ReceptorID" NVARCHAR2(450),
    CONSTRAINT "PK_PrivateMessage" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PrivateMessage_Conversation_ConversationID" FOREIGN KEY ("ConversationID") REFERENCES "Conversation" ("ID"),
    CONSTRAINT "FK_PrivateMessage_SocialProfile_ReceptorID" FOREIGN KEY ("ReceptorID") REFERENCES "SocialProfile" ("ID"),
    CONSTRAINT "FK_PrivateMessage_SocialProfile_SenderID" FOREIGN KEY ("SenderID") REFERENCES "SocialProfile" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"FileUpload" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "FileUploadURL" NVARCHAR2(2000),
    "IsFolder" NUMBER(1) NOT NULL,
    "FileName" NVARCHAR2(2000),
    "Title" NVARCHAR2(2000),
    "Abstract" NVARCHAR2(2000),
    "Author" NVARCHAR2(2000),
    "KeyWords" NVARCHAR2(2000),
    "Notes" NVARCHAR2(2000),
    "ContentType" NVARCHAR2(2000),
    "FileLength" NUMBER(19) NOT NULL,
    "ValidResponse" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "FileUploadPublicAccessType" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "SocialProfileID" NVARCHAR2(450),
    "ParentFileUploadID" NVARCHAR2(450),
    "AccountHolderID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "AgreementID" NVARCHAR2(450),
    "AgreementRevisionID" NVARCHAR2(450),
    "ContactID" NVARCHAR2(450),
    "CourseAssignmentID" NVARCHAR2(450),
    "CourseID" NVARCHAR2(450),
    "TaskID" NVARCHAR2(450),
    "InquiryRequestID" NVARCHAR2(450),
    "SupportRequestID" NVARCHAR2(450),
    "ItemAttachment_ItemID" NVARCHAR2(450),
    "IsItemMozaicBG" NUMBER(1),
    "ItemID" NVARCHAR2(450),
    "SocialMediaPostID" NVARCHAR2(450),
    "SalesLiteratureID" NVARCHAR2(450),
    "SocialCommentID" NVARCHAR2(450),
    "CurriculumRecordID" NVARCHAR2(450),
    "PrivateMessageID" NVARCHAR2(450),
    "SocialPostID" NVARCHAR2(450),
    "BusinessTeamID" NVARCHAR2(450),
    CONSTRAINT "PK_FileUpload" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_FileUpload_Agreement_AgreementID" FOREIGN KEY ("AgreementID") REFERENCES "Agreement" ("ID"),
    CONSTRAINT "FK_FileUpload_AgreementRevision_AgreementRevisionID" FOREIGN KEY ("AgreementRevisionID") REFERENCES "AgreementRevision" ("ID"),
    CONSTRAINT "FK_FileUpload_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id"),
    CONSTRAINT "FK_FileUpload_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_FileUpload_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_FileUpload_BusinessTeam_BusinessTeamID" FOREIGN KEY ("BusinessTeamID") REFERENCES "BusinessTeam" ("ID"),
    CONSTRAINT "FK_FileUpload_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID"),
    CONSTRAINT "FK_FileUpload_CourseAssignment_CourseAssignmentID" FOREIGN KEY ("CourseAssignmentID") REFERENCES "CourseAssignment" ("ID"),
    CONSTRAINT "FK_FileUpload_CurriculumRecord_CurriculumRecordID" FOREIGN KEY ("CurriculumRecordID") REFERENCES "CurriculumRecord" ("ID"),
    CONSTRAINT "FK_FileUpload_FileUpload_ParentFileUploadID" FOREIGN KEY ("ParentFileUploadID") REFERENCES "FileUpload" ("ID"),
    CONSTRAINT "FK_FileUpload_InquiryRequest_InquiryRequestID" FOREIGN KEY ("InquiryRequestID") REFERENCES "InquiryRequest" ("ID"),
    CONSTRAINT "FK_FileUpload_Item_CourseID" FOREIGN KEY ("CourseID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_FileUpload_Item_ItemAttachment_ItemID" FOREIGN KEY ("ItemAttachment_ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_FileUpload_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_FileUpload_PrivateMessage_PrivateMessageID" FOREIGN KEY ("PrivateMessageID") REFERENCES "PrivateMessage" ("ID"),
    CONSTRAINT "FK_FileUpload_SalesLiterature_SalesLiteratureID" FOREIGN KEY ("SalesLiteratureID") REFERENCES "SalesLiterature" ("ID"),
    CONSTRAINT "FK_FileUpload_SocialComment_SocialCommentID" FOREIGN KEY ("SocialCommentID") REFERENCES "SocialComment" ("ID"),
    CONSTRAINT "FK_FileUpload_SocialMediaPost_SocialMediaPostID" FOREIGN KEY ("SocialMediaPostID") REFERENCES "SocialMediaPost" ("ID"),
    CONSTRAINT "FK_FileUpload_SocialPost_SocialPostID" FOREIGN KEY ("SocialPostID") REFERENCES "SocialPost" ("ID"),
    CONSTRAINT "FK_FileUpload_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID"),
    CONSTRAINT "FK_FileUpload_SupportRequest_SupportRequestID" FOREIGN KEY ("SupportRequestID") REFERENCES "SupportRequest" ("ID"),
    CONSTRAINT "FK_FileUpload_Task_TaskID" FOREIGN KEY ("TaskID") REFERENCES "Task" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ItemImageRecord" (
    "ID" NVARCHAR2(450) NOT NULL,
    "ItemImageID" NVARCHAR2(450),
    "ItemID" NVARCHAR2(450),
    CONSTRAINT "PK_ItemImageRecord" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ItemImageRecord_FileUpload_ItemImageID" FOREIGN KEY ("ItemImageID") REFERENCES "FileUpload" ("ID"),
    CONSTRAINT "FK_ItemImageRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID")
)';
END;
/

BEGIN
INSERT INTO "ActivityType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'Alert', NULL, NULL, N'Alert');
INSERT INTO "ActivityType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'Appointment', NULL, NULL, N'Appointment');
INSERT INTO "ActivityType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'Email', NULL, NULL, N'Email');
INSERT INTO "ActivityType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'Letter', NULL, NULL, N'Letter');
INSERT INTO "ActivityType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'Note', NULL, NULL, N'Note');
INSERT INTO "ActivityType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'PhoneCall', NULL, NULL, N'Phone Call');
INSERT INTO "ActivityType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'Task', NULL, NULL, N'Task');
END;
/

BEGIN
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'accounts_create', NULL, NULL, N'Accounts', NULL, 1, N'Create accounts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'accounts_delete', NULL, NULL, N'Accounts', NULL, 1, N'Delete accounts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'accounts_manage', NULL, NULL, N'Accounts', NULL, 1, N'Manage accounts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'accounts_read', NULL, NULL, N'Accounts', NULL, 1, N'Read accounts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'accounts_update', NULL, NULL, N'Accounts', NULL, 1, N'Update accounts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'assets_create', NULL, NULL, N'Assets', NULL, 1, N'Create assets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'assets_delete', NULL, NULL, N'Assets', NULL, 1, N'Delete assets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'assets_manage', NULL, NULL, N'Assets', NULL, 1, N'Manage assets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'assets_read', NULL, NULL, N'Assets', NULL, 1, N'Read assets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'assets_update', NULL, NULL, N'Assets', NULL, 1, N'Update assets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'bots_create', NULL, NULL, N'Bots', NULL, 1, N'Create bots');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'bots_delete', NULL, NULL, N'Bots', NULL, 1, N'Delete bots');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'bots_manage', NULL, NULL, N'Bots', NULL, 1, N'Manage bots');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'bots_read', NULL, NULL, N'Bots', NULL, 1, N'Read bots');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'bots_update', NULL, NULL, N'Bots', NULL, 1, N'Update bots');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'budgets_create', NULL, NULL, N'Budgets', NULL, 1, N'Create budgets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'budgets_delete', NULL, NULL, N'Budgets', NULL, 1, N'Delete budgets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'budgets_manage', NULL, NULL, N'Budgets', NULL, 1, N'Manage budgets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'budgets_read', NULL, NULL, N'Budgets', NULL, 1, N'Read budgets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'budgets_update', NULL, NULL, N'Budgets', NULL, 1, N'Update budgets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'campaigns_create', NULL, NULL, N'Campaigns', NULL, 1, N'Create campaigns');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'campaigns_delete', NULL, NULL, N'Campaigns', NULL, 1, N'Delete campaigns');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'campaigns_manage', NULL, NULL, N'Campaigns', NULL, 1, N'Manage campaigns');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'campaigns_read', NULL, NULL, N'Campaigns', NULL, 1, N'Read campaigns');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'campaigns_update', NULL, NULL, N'Campaigns', NULL, 1, N'Update campaigns');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'contacts_create', NULL, NULL, N'Contacts', NULL, 1, N'Create contacts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'contacts_delete', NULL, NULL, N'Contacts', NULL, 1, N'Delete contacts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'contacts_manage', NULL, NULL, N'Contacts', NULL, 1, N'Manage contacts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'contacts_read', NULL, NULL, N'Contacts', NULL, 1, N'Read contacts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'contacts_update', NULL, NULL, N'Contacts', NULL, 1, N'Update contacts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'courses_create', NULL, NULL, N'Courses', NULL, 1, N'Create courses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'courses_delete', NULL, NULL, N'Courses', NULL, 1, N'Delete courses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'courses_manage', NULL, NULL, N'Courses', NULL, 1, N'Manage courses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'courses_read', NULL, NULL, N'Courses', NULL, 1, N'Read courses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'courses_update', NULL, NULL, N'Courses', NULL, 1, N'Update courses');
END;
/

BEGIN
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'deal_units_create', NULL, NULL, N'Deal Units', NULL, 1, N'Create deal units');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'deal_units_delete', NULL, NULL, N'Deal Units', NULL, 1, N'Delete deal units');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'deal_units_manage', NULL, NULL, N'Deal Units', NULL, 1, N'Manage deal units');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'deal_units_read', NULL, NULL, N'Deal Units', NULL, 1, N'Read deal units');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'deal_units_update', NULL, NULL, N'Deal Units', NULL, 1, N'Update deal units');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'employees_create', NULL, NULL, N'Employees', NULL, 1, N'Create employees');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'employees_delete', NULL, NULL, N'Employees', NULL, 1, N'Delete employees');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'employees_manage', NULL, NULL, N'Employees', NULL, 1, N'Manage employees');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'employees_read', NULL, NULL, N'Employees', NULL, 1, N'Read employees');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'employees_update', NULL, NULL, N'Employees', NULL, 1, N'Update employees');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'expenses_create', NULL, NULL, N'Expenses', NULL, 1, N'Create expenses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'expenses_delete', NULL, NULL, N'Expenses', NULL, 1, N'Delete expenses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'expenses_manage', NULL, NULL, N'Expenses', NULL, 1, N'Manage expenses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'expenses_read', NULL, NULL, N'Expenses', NULL, 1, N'Read expenses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'expenses_update', NULL, NULL, N'Expenses', NULL, 1, N'Update expenses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'file_uploads_create', NULL, NULL, N'File Uploads', NULL, 1, N'Create file uploads');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'file_uploads_delete', NULL, NULL, N'File Uploads', NULL, 1, N'Delete file uploads');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'file_uploads_manage', NULL, NULL, N'File Uploads', NULL, 1, N'Manage file uploads');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'file_uploads_read', NULL, NULL, N'File Uploads', NULL, 1, N'Read file uploads');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'file_uploads_update', NULL, NULL, N'File Uploads', NULL, 1, N'Update file uploads');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'financialbooks_create', NULL, NULL, N'Financial books', NULL, 1, N'Create financial books');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'financialbooks_delete', NULL, NULL, N'Financial books', NULL, 1, N'Delete financial books');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'financialbooks_manage', NULL, NULL, N'Financial books', NULL, 1, N'Manage financial books');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'financialbooks_read', NULL, NULL, N'Financial books', NULL, 1, N'Read financial books');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'financialbooks_update', NULL, NULL, N'Financial books', NULL, 1, N'Update financial books');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'holders_create', NULL, NULL, N'Holders', NULL, 1, N'Create holders');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'holders_delete', NULL, NULL, N'Holders', NULL, 1, N'Delete holders');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'holders_manage', NULL, NULL, N'Holders', NULL, 1, N'Manage holders');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'holders_read', NULL, NULL, N'Holders', NULL, 1, N'Read holders');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'holders_update', NULL, NULL, N'Holders', NULL, 1, N'Update holders');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'invoices_create', NULL, NULL, N'Invoices', NULL, 1, N'Create invoices');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'invoices_delete', NULL, NULL, N'Invoices', NULL, 1, N'Delete invoices');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'invoices_manage', NULL, NULL, N'Invoices', NULL, 1, N'Manage invoices');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'invoices_read', NULL, NULL, N'Invoices', NULL, 1, N'Read invoices');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'invoices_update', NULL, NULL, N'Invoices', NULL, 1, N'Update invoices');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'journals_create', NULL, NULL, N'Journals', NULL, 1, N'Create journals');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'journals_delete', NULL, NULL, N'Journals', NULL, 1, N'Delete journals');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'journals_manage', NULL, NULL, N'Journals', NULL, 1, N'Manage journals');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'journals_read', NULL, NULL, N'Journals', NULL, 1, N'Read journals');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'journals_update', NULL, NULL, N'Journals', NULL, 1, N'Update journals');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'ledgers_create', NULL, NULL, N'Ledgers', NULL, 1, N'Create ledgers');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'ledgers_delete', NULL, NULL, N'Ledgers', NULL, 1, N'Delete ledgers');
END;
/

BEGIN
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'ledgers_manage', NULL, NULL, N'Ledgers', NULL, 1, N'Manage ledgers');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'ledgers_read', NULL, NULL, N'Ledgers', NULL, 1, N'Read ledgers');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'ledgers_update', NULL, NULL, N'Ledgers', NULL, 1, N'Update ledgers');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'organizations_create', NULL, NULL, N'Organizations', NULL, 1, N'Create organizations');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'organizations_delete', NULL, NULL, N'Organizations', NULL, 1, N'Delete organizations');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'organizations_manage', NULL, NULL, N'Organizations', NULL, 1, N'Manage organizations');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'organizations_read', NULL, NULL, N'Organizations', NULL, 1, N'Read organizations');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'organizations_update', NULL, NULL, N'Organizations', NULL, 1, N'Update organizations');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'payments_create', NULL, NULL, N'Payments', NULL, 1, N'Create payments');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'payments_delete', NULL, NULL, N'Payments', NULL, 1, N'Delete payments');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'payments_manage', NULL, NULL, N'Payments', NULL, 1, N'Manage payments');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'payments_read', NULL, NULL, N'Payments', NULL, 1, N'Read payments');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'payments_update', NULL, NULL, N'Payments', NULL, 1, N'Update payments');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_pages_create', NULL, NULL, N'Portal Pages', NULL, 1, N'Create pages');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_pages_delete', NULL, NULL, N'Portal Pages', NULL, 1, N'Delete pages');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_pages_manage', NULL, NULL, N'Portal Pages', NULL, 1, N'Manage pages');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_pages_read', NULL, NULL, N'Portal Pages', NULL, 1, N'Read pages');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_pages_update', NULL, NULL, N'Portal Pages', NULL, 1, N'Update pages');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_posts_create', NULL, NULL, N'Blog Posts', NULL, 1, N'Create blog posts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_posts_delete', NULL, NULL, N'Blog Posts', NULL, 1, N'Delete blog posts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_posts_manage', NULL, NULL, N'Blog Posts', NULL, 1, N'Manage blog posts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_posts_read', NULL, NULL, N'Blog Posts', NULL, 1, N'Read blog posts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_posts_update', NULL, NULL, N'Blog Posts', NULL, 1, N'Update blog posts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_settings_create', NULL, NULL, N'Portal Settings', NULL, 1, N'Create portal settings');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_settings_delete', NULL, NULL, N'Portal Settings', NULL, 1, N'Delete portal settings');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_settings_manage', NULL, NULL, N'Portal Settings', NULL, 1, N'Manage portal settings');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_settings_read', NULL, NULL, N'Portal Settings', NULL, 1, N'Read portal settings');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portal_settings_update', NULL, NULL, N'Portal Settings', NULL, 1, N'Update portal settings');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portals_create', NULL, NULL, N'Portals', NULL, 1, N'Create portals');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portals_delete', NULL, NULL, N'Portals', NULL, 1, N'Delete portals');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portals_manage', NULL, NULL, N'Portals', NULL, 1, N'Manage portals');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portals_read', NULL, NULL, N'Portals', NULL, 1, N'Read portals');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'portals_update', NULL, NULL, N'Portals', NULL, 1, N'Update portals');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'pricelists_create', NULL, NULL, N'Prices', NULL, 1, N'Create price lists');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'pricelists_delete', NULL, NULL, N'Prices', NULL, 1, N'Delete price lists');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'pricelists_manage', NULL, NULL, N'Prices', NULL, 1, N'Manage price lists');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'pricelists_read', NULL, NULL, N'Prices', NULL, 1, N'Read price lists');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'pricelists_update', NULL, NULL, N'Prices', NULL, 1, N'Update price lists');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'prices_create', NULL, NULL, N'Prices', NULL, 1, N'Create prices');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'prices_delete', NULL, NULL, N'Prices', NULL, 1, N'Delete prices');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'prices_manage', NULL, NULL, N'Prices', NULL, 1, N'Manage prices');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'prices_read', NULL, NULL, N'Prices', NULL, 1, N'Read prices');
END;
/

BEGIN
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'prices_update', NULL, NULL, N'Prices', NULL, 1, N'Update prices');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'product_taxonomies_create', NULL, NULL, N'Product taxonomies', NULL, 1, N'Create product taxonomies');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'product_taxonomies_delete', NULL, NULL, N'Product taxonomies', NULL, 1, N'Delete product taxonomies');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'product_taxonomies_manage', NULL, NULL, N'Product taxonomies', NULL, 1, N'Manage product taxonomies');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'product_taxonomies_read', NULL, NULL, N'Product taxonomies', NULL, 1, N'Read product taxonomies');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'product_taxonomies_update', NULL, NULL, N'Product taxonomies', NULL, 1, N'Update product taxonomies');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'products_create', NULL, NULL, N'Products', NULL, 1, N'Create products');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'products_delete', NULL, NULL, N'Products', NULL, 1, N'Delete products');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'products_manage', NULL, NULL, N'Products', NULL, 1, N'Manage products');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'products_read', NULL, NULL, N'Products', NULL, 1, N'Read products');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'products_update', NULL, NULL, N'Products', NULL, 1, N'Update products');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'projects_create', NULL, NULL, N'Projects', NULL, 1, N'Create projects');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'projects_delete', NULL, NULL, N'Projects', NULL, 1, N'Delete projects');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'projects_manage', NULL, NULL, N'Projects', NULL, 1, N'Manage projects');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'projects_read', NULL, NULL, N'Projects', NULL, 1, N'Read projects');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'projects_update', NULL, NULL, N'Projects', NULL, 1, N'Update projects');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'purchase_requests_create', NULL, NULL, N'Purchase Requests', NULL, 1, N'Create purchase requests');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'purchase_requests_delete', NULL, NULL, N'Purchase Requests', NULL, 1, N'Delete purchase requests');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'purchase_requests_manage', NULL, NULL, N'Purchase Requests', NULL, 1, N'Manage purchase requests');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'purchase_requests_read', NULL, NULL, N'Purchase Requests', NULL, 1, N'Read purchase requests');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'purchase_requests_update', NULL, NULL, N'Purchase Requests', NULL, 1, N'Update purchase requests');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'reports_create', NULL, NULL, N'Reports', NULL, 1, N'Create reports');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'reports_delete', NULL, NULL, N'Reports', NULL, 1, N'Delete reports');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'reports_manage', NULL, NULL, N'Reports', NULL, 1, N'Manage reports');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'reports_read', NULL, NULL, N'Reports', NULL, 1, N'Read reports');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'reports_update', NULL, NULL, N'Reports', NULL, 1, N'Update reports');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'security_permissions_create', NULL, NULL, N'Security permissions', NULL, 1, N'Create security permissions');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'security_permissions_delete', NULL, NULL, N'Security permissions', NULL, 1, N'Delete security permissions');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'security_permissions_manage', NULL, NULL, N'Security permissions', NULL, 1, N'Manage security permissions');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'security_permissions_read', NULL, NULL, N'Security permissions', NULL, 1, N'Read security permissions');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'security_permissions_update', NULL, NULL, N'Security permissions', NULL, 1, N'Update security permissions');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'security_roles_create', NULL, NULL, N'Security Roles', NULL, 1, N'Create security roles');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'security_roles_delete', NULL, NULL, N'Security Roles', NULL, 1, N'Delete security roles');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'security_roles_manage', NULL, NULL, N'Security Roles', NULL, 1, N'Manage security roles');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'security_roles_read', NULL, NULL, N'Security Roles', NULL, 1, N'Read security roles');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'security_roles_update', NULL, NULL, N'Security Roles', NULL, 1, N'Update security roles');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'services_create', NULL, NULL, N'Services', NULL, 1, N'Create services');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'services_delete', NULL, NULL, N'Services', NULL, 1, N'Delete services');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'services_manage', NULL, NULL, N'Services', NULL, 1, N'Manage services');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'services_read', NULL, NULL, N'Services', NULL, 1, N'Read services');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'services_update', NULL, NULL, N'Services', NULL, 1, N'Update services');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'shares_create', NULL, NULL, N'Shares', NULL, 1, N'Create shares');
END;
/

BEGIN
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'shares_delete', NULL, NULL, N'Shares', NULL, 1, N'Delete shares');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'shares_manage', NULL, NULL, N'Shares', NULL, 1, N'Manage shares');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'shares_read', NULL, NULL, N'Shares', NULL, 1, N'Read shares');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'shares_update', NULL, NULL, N'Shares', NULL, 1, N'Update shares');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'shippings_create', NULL, NULL, N'Shippings', NULL, 1, N'Create shippings');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'shippings_delete', NULL, NULL, N'Shippings', NULL, 1, N'Delete shippings');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'shippings_manage', NULL, NULL, N'Shippings', NULL, 1, N'Manage shippings');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'shippings_read', NULL, NULL, N'Shippings', NULL, 1, N'Read shippings');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'shippings_update', NULL, NULL, N'Shippings', NULL, 1, N'Update shippings');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_groups_create', NULL, NULL, N'Social Groups', NULL, 1, N'Create social groups');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_groups_delete', NULL, NULL, N'Social Groups', NULL, 1, N'Delete social groups');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_groups_manage', NULL, NULL, N'Social Groups', NULL, 1, N'Manage social groups');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_groups_read', NULL, NULL, N'Social Groups', NULL, 1, N'Read social groups');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_groups_update', NULL, NULL, N'Social Groups', NULL, 1, N'Update social groups');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_posts_create', NULL, NULL, N'Social Posts', NULL, 1, N'Create social posts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_posts_delete', NULL, NULL, N'Social Posts', NULL, 1, N'Delete social posts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_posts_manage', NULL, NULL, N'Social Posts', NULL, 1, N'Manage social posts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_posts_read', NULL, NULL, N'Social Posts', NULL, 1, N'Read social posts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_posts_update', NULL, NULL, N'Social Posts', NULL, 1, N'Update social posts');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_profiles_create', NULL, NULL, N'Social Groups', NULL, 1, N'Create social profiles');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_profiles_delete', NULL, NULL, N'Social Groups', NULL, 1, N'Delete social profiles');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_profiles_manage', NULL, NULL, N'Social Groups', NULL, 1, N'Manage social profiles');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_profiles_read', NULL, NULL, N'Social Groups', NULL, 1, N'Read social profiles');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'social_profiles_update', NULL, NULL, N'Social Groups', NULL, 1, N'Update social profiles');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'stock_items_create', NULL, NULL, N'Stock items', NULL, 1, N'Create stock items');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'stock_items_delete', NULL, NULL, N'Stock items', NULL, 1, N'Delete stock items');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'stock_items_manage', NULL, NULL, N'Stock items', NULL, 1, N'Manage stock items');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'stock_items_read', NULL, NULL, N'Stock items', NULL, 1, N'Read stock items');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'stock_items_update', NULL, NULL, N'Stock items', NULL, 1, N'Update stock items');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'studio_access', NULL, NULL, NULL, NULL, 1, N'Studio Access (System)');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'subscriptions_create', NULL, NULL, N'Subscriptions', NULL, 1, N'Create subscriptions');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'subscriptions_delete', NULL, NULL, N'Subscriptions', NULL, 1, N'Delete subscriptions');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'subscriptions_manage', NULL, NULL, N'Subscriptions', NULL, 1, N'Manage subscriptions');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'subscriptions_read', NULL, NULL, N'Subscriptions', NULL, 1, N'Read subscriptions');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'subscriptions_update', NULL, NULL, N'Subscriptions', NULL, 1, N'Update subscriptions');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'taxes_create', NULL, NULL, N'Taxes', NULL, 1, N'Create taxes');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'taxes_delete', NULL, NULL, N'Taxes', NULL, 1, N'Delete taxes');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'taxes_manage', NULL, NULL, N'Taxes', NULL, 1, N'Manage taxes');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'taxes_read', NULL, NULL, N'Taxes', NULL, 1, N'Read taxes');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'taxes_update', NULL, NULL, N'Taxes', NULL, 1, N'Update taxes');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'tenants_create', NULL, NULL, N'Tenants', NULL, 1, N'Create tenants');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'tenants_delete', NULL, NULL, N'Tenants', NULL, 1, N'Delete tenants');
END;
/

BEGIN
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'tenants_manage', NULL, NULL, N'Tenants', NULL, 1, N'Manage tenants');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'tenants_read', NULL, NULL, N'Tenants', NULL, 1, N'Read tenants');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'tenants_update', NULL, NULL, N'Tenants', NULL, 1, N'Update tenants');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'tickets_create', NULL, NULL, N'Tickets', NULL, 1, N'Create tickets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'tickets_delete', NULL, NULL, N'Tickets', NULL, 1, N'Delete tickets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'tickets_manage', NULL, NULL, N'Tickets', NULL, 1, N'Manage tickets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'tickets_read', NULL, NULL, N'Tickets', NULL, 1, N'Read tickets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'tickets_update', NULL, NULL, N'Tickets', NULL, 1, N'Update tickets');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'warehouses_create', NULL, NULL, N'Warehouses', NULL, 1, N'Create warehouses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'warehouses_delete', NULL, NULL, N'Warehouses', NULL, 1, N'Delete warehouses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'warehouses_manage', NULL, NULL, N'Warehouses', NULL, 1, N'Manage warehouses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'warehouses_read', NULL, NULL, N'Warehouses', NULL, 1, N'Read warehouses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'warehouses_update', NULL, NULL, N'Warehouses', NULL, 1, N'Update warehouses');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'workflows_create', NULL, NULL, N'Workflows', NULL, 1, N'Create workflows');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'workflows_delete', NULL, NULL, N'Workflows', NULL, 1, N'Delete workflows');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'workflows_manage', NULL, NULL, N'Workflows', NULL, 1, N'Manage workflows');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'workflows_read', NULL, NULL, N'Workflows', NULL, 1, N'Read workflows');
INSERT INTO "BusinessPermission" ("ID", "BusinessID", "BusinessProfileRecordID", "Category", "Description", "IsSystemPermission", "Name")
VALUES (N'workflows_update', NULL, NULL, N'Workflows', NULL, 1, N'Update workflows');
END;
/

BEGIN
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'business_owner', NULL, NULL, NULL, 1, N'Business Owner (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'global_admin', NULL, NULL, NULL, 1, N'Global Admin (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'portal_author', NULL, NULL, NULL, 1, N'Portal Author (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'portal_blocked', NULL, NULL, NULL, 1, N'Portal Blocked (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'portal_collaborator', NULL, NULL, NULL, 1, N'Portal Colaborator (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'portal_default', NULL, NULL, NULL, 1, N'Portal Application (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'portal_editor', NULL, NULL, NULL, 1, N'Portal Editor (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'portal_keymaster', NULL, NULL, NULL, 1, N'Portal Keymaster (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'portal_moderator', NULL, NULL, NULL, 1, N'Portal Moderator (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'portal_participant', NULL, NULL, NULL, 1, N'Portal Participant (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'portal_spectator', NULL, NULL, NULL, 1, N'Portal Spectator (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'portal_suscriptor', NULL, NULL, NULL, 1, N'Portal Suscriptor (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'store_admin', NULL, NULL, NULL, 1, N'Store Admin (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'store_blocked', NULL, NULL, NULL, 1, N'Store Blocked (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'store_customer', NULL, NULL, NULL, 1, N'Store Customer (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'store_manager', NULL, NULL, NULL, 1, N'Store Manager (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'support_agent', NULL, NULL, NULL, 1, N'Support Agent (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'support_manager', NULL, NULL, NULL, 1, N'Support Manager (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'support_supervisor', NULL, NULL, NULL, 1, N'Support Supervisor (System)');
INSERT INTO "BusinessSecurityRole" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "IsSystemSecurityRole", "Name")
VALUES (N'support_user', NULL, NULL, NULL, 1, N'Support User (System)');
END;
/

BEGIN
INSERT INTO "SalesLiteratureType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'Bulletins', NULL, NULL, N'Bulletins');
INSERT INTO "SalesLiteratureType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'CompanyBackground', NULL, NULL, N'Company Background');
INSERT INTO "SalesLiteratureType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'Manuals', NULL, NULL, N'Manuals');
INSERT INTO "SalesLiteratureType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'MarketingCollateral', NULL, NULL, N'Marketing Collateral');
END;
/

BEGIN
INSERT INTO "SalesLiteratureType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'News', NULL, NULL, N'News');
INSERT INTO "SalesLiteratureType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'PoliciesAndProcedures', NULL, NULL, N'Policies And Procedures');
INSERT INTO "SalesLiteratureType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'Presentation', NULL, NULL, N'Presentation');
INSERT INTO "SalesLiteratureType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'PriceSheets', NULL, NULL, N'Price Sheets');
INSERT INTO "SalesLiteratureType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'ProductSheet', NULL, NULL, N'Product Sheet');
INSERT INTO "SalesLiteratureType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'SalesLiterature', NULL, NULL, N'Sales Literature');
INSERT INTO "SalesLiteratureType" ("ID", "BusinessID", "BusinessProfileRecordID", "Name")
VALUES (N'Spreadsheets', NULL, NULL, N'Spreadsheets');
END;
/

BEGIN
INSERT INTO "UnitGroup" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "Name", "SystemLocked")
VALUES (N'Distance', NULL, NULL, NULL, N'Distance', 1);
INSERT INTO "UnitGroup" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "Name", "SystemLocked")
VALUES (N'Mass', NULL, NULL, NULL, N'Mass', 1);
INSERT INTO "UnitGroup" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "Name", "SystemLocked")
VALUES (N'Time', NULL, NULL, NULL, N'Time', 1);
INSERT INTO "UnitGroup" ("ID", "BusinessID", "BusinessProfileRecordID", "Description", "Name", "SystemLocked")
VALUES (N'Units', NULL, NULL, NULL, N'Units', 1);
END;
/

BEGIN
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Milligrams', 0.0E0, NULL, NULL, NULL, N'Milligrams', N'Mass');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Millimeters', 0.0E0, NULL, NULL, NULL, N'Millimeters', N'Distance');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Second', 0.0E0, NULL, NULL, NULL, N'Second', N'Time');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Unit', 1.0E0, NULL, NULL, NULL, N'Unit', N'Units');
END;
/

BEGIN
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Centimeters', 10.0E0, N'Millimeters', NULL, NULL, N'Centimeters', N'Distance');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Dozen', 12.0E0, N'Unit', NULL, NULL, N'Dozen', N'Units');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Grams', 1000.0E0, N'Milligrams', NULL, NULL, N'Grams', N'Mass');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Half a Dozen', 6.0E0, N'Unit', NULL, NULL, N'Half a Dozen', N'Units');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Hundred', 100.0E0, N'Unit', NULL, NULL, N'Thousand', N'Units');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Minute', 60.0E0, N'Second', NULL, NULL, N'Minute', N'Time');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Pair', 2.0E0, N'Unit', NULL, NULL, N'Pair', N'Units');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Thousand', 1000.0E0, N'Unit', NULL, NULL, N'Thousand', N'Units');
END;
/

BEGIN
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Hour', 60.0E0, N'Minute', NULL, NULL, N'Hour', N'Time');
END;
/

BEGIN
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Kilogram', 1000.0E0, N'Grams', NULL, NULL, N'Kilogram', N'Mass');
END;
/

BEGIN
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Meters', 100.0E0, N'Centimeters', NULL, NULL, N'Meters', N'Distance');
END;
/

BEGIN
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Day', 24.0E0, N'Hour', NULL, NULL, N'Day', N'Time');
END;
/

BEGIN
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Kilometers', 1000.0E0, N'Meters', NULL, NULL, N'Kilometers', N'Distance');
END;
/

BEGIN
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Tonne', 1000.0E0, N'Kilogram', NULL, NULL, N'Tonne', N'Mass');
END;
/

BEGIN
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'28 Days Month', 28.0E0, N'Day', NULL, NULL, N'28 Days Month', N'Time');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'29 Days Month', 29.0E0, N'Day', NULL, NULL, N'29 Days Month', N'Time');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'30 Days Month', 30.0E0, N'Day', NULL, NULL, N'30 Days Month', N'Time');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'31 Days Month', 31.0E0, N'Day', NULL, NULL, N'31 Days Month', N'Time');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Leap Year (Gregorian calendar)', 366.0E0, N'Day', NULL, NULL, N'Leap Year (Gregorian calendar)', N'Time');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Leap Year (Islamic calendar)', 355.0E0, N'Day', NULL, NULL, N'Leap Year (Islamic calendar)', N'Time');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Week', 7.0E0, N'Day', NULL, NULL, N'Week', N'Time');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Year (Gregorian calendar)', 365.0E0, N'Day', NULL, NULL, N'Year (Gregorian calendar)', N'Time');
INSERT INTO "Unit" ("ID", "BaseUnitAmount", "BaseUnitID", "BusinessID", "BusinessProfileRecordID", "Name", "UnitGroupID")
VALUES (N'Year (Islamic calendar)', 354.0E0, N'Day', NULL, NULL, N'Year (Islamic calendar)', N'Time');
END;
/

CREATE INDEX "IX_AccessKeyPair_AccountHolderID" ON "AccessKeyPair" ("AccountHolderID")
/

CREATE INDEX "IX_AccessKeyPair_BusinessID" ON "AccessKeyPair" ("BusinessID")
/

CREATE INDEX "IX_AccessKeyPair_BusinessProfileRecordID" ON "AccessKeyPair" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_AccessKeyPair_ContactID" ON "AccessKeyPair" ("ContactID")
/

CREATE INDEX "IX_Account_AccountGroupID" ON "Account" ("AccountGroupID")
/

CREATE INDEX "IX_Account_AccountHolderID" ON "Account" ("AccountHolderID")
/

CREATE INDEX "IX_Account_AccountTypeID" ON "Account" ("AccountTypeID")
/

CREATE INDEX "IX_Account_BankID" ON "Account" ("BankID")
/

CREATE INDEX "IX_Account_BankProfileID" ON "Account" ("BankProfileID")
/

CREATE INDEX "IX_Account_BillingProfileID" ON "Account" ("BillingProfileID")
/

CREATE INDEX "IX_Account_BusinessID" ON "Account" ("BusinessID")
/

CREATE INDEX "IX_Account_BusinessProfileRecordID" ON "Account" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Account_ContactID" ON "Account" ("ContactID")
/

CREATE INDEX "IX_Account_CurrencyID" ON "Account" ("CurrencyID")
/

CREATE INDEX "IX_Account_LedgerID" ON "Account" ("LedgerID")
/

CREATE INDEX "IX_Account_ParentAccountID" ON "Account" ("ParentAccountID")
/

CREATE INDEX "IX_AccountGroup_BusinessID" ON "AccountGroup" ("BusinessID")
/

CREATE INDEX "IX_AccountGroup_BusinessProfileRecordID" ON "AccountGroup" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_AccountGroup_ParentAccountGroupID" ON "AccountGroup" ("ParentAccountGroupID")
/

CREATE INDEX "IX_AccountHolderLogin_AccountHolderID" ON "AccountHolderLogin" ("AccountHolderID")
/

CREATE INDEX "IX_AccountHolderLogin_IPLookupID" ON "AccountHolderLogin" ("IPLookupID")
/

CREATE UNIQUE INDEX "IX_AccountHolderSettings_AccountHolderID" ON "AccountHolderSettings" ("AccountHolderID")
/

CREATE INDEX "IX_AccountingEntry_BankProfileID" ON "AccountingEntry" ("BankProfileID")
/

CREATE INDEX "IX_AccountingEntry_BusinessID" ON "AccountingEntry" ("BusinessID")
/

CREATE INDEX "IX_AccountingEntry_BusinessProfileRecordID" ON "AccountingEntry" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_AccountingEntry_CreditAccountID" ON "AccountingEntry" ("CreditAccountID")
/

CREATE INDEX "IX_AccountingEntry_CurrencyID" ON "AccountingEntry" ("CurrencyID")
/

CREATE INDEX "IX_AccountingEntry_DebitAccountID" ON "AccountingEntry" ("DebitAccountID")
/

CREATE INDEX "IX_AccountingEntry_JournalEntryID" ON "AccountingEntry" ("JournalEntryID")
/

CREATE INDEX "IX_AccountingEntry_PaymentChargeback_PaymentDisputeID" ON "AccountingEntry" ("PaymentChargeback_PaymentDisputeID")
/

CREATE INDEX "IX_AccountingEntry_PaymentChargeback_PaymentID" ON "AccountingEntry" ("PaymentChargeback_PaymentID")
/

CREATE INDEX "IX_AccountingEntry_PaymentChargeback_WalletAccountID" ON "AccountingEntry" ("PaymentChargeback_WalletAccountID")
/

CREATE INDEX "IX_AccountingEntry_PaymentDisputeID" ON "AccountingEntry" ("PaymentDisputeID")
/

CREATE INDEX "IX_AccountingEntry_PaymentID" ON "AccountingEntry" ("PaymentID")
/

CREATE INDEX "IX_AccountingEntry_RefundRequestID" ON "AccountingEntry" ("RefundRequestID")
/

CREATE INDEX "IX_AccountingEntry_WalletAccountID" ON "AccountingEntry" ("WalletAccountID")
/

CREATE INDEX "IX_AccountingPeriodClosingVoucher_AccountID" ON "AccountingPeriodClosingVoucher" ("AccountID")
/

CREATE INDEX "IX_AccountingPeriodClosingVoucher_BusinessID" ON "AccountingPeriodClosingVoucher" ("BusinessID")
/

CREATE INDEX "IX_AccountingPeriodClosingVoucher_BusinessProfileRecordID" ON "AccountingPeriodClosingVoucher" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_AccountingPeriodClosingVoucher_FiscalYearID" ON "AccountingPeriodClosingVoucher" ("FiscalYearID")
/

CREATE INDEX "IX_AccountRelation_AccountID" ON "AccountRelation" ("AccountID")
/

CREATE INDEX "IX_AccountRelation_BusinessID" ON "AccountRelation" ("BusinessID")
/

CREATE INDEX "IX_AccountRelation_BusinessProfileRecordID" ON "AccountRelation" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_AccountRelation_ProjectID" ON "AccountRelation" ("ProjectID")
/

CREATE INDEX "IX_AccountType_BusinessID" ON "AccountType" ("BusinessID")
/

CREATE INDEX "IX_AccountType_BusinessProfileRecordID" ON "AccountType" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ActivityFeed_BusinessID" ON "ActivityFeed" ("BusinessID")
/

CREATE UNIQUE INDEX "IX_ActivityFeed_ContactID" ON "ActivityFeed" ("ContactID")
/

CREATE UNIQUE INDEX "IX_ActivityFeed_DealUnitID" ON "ActivityFeed" ("DealUnitID")
/

CREATE UNIQUE INDEX "IX_ActivityFeed_MarketingCampaignID" ON "ActivityFeed" ("MarketingCampaignID")
/

CREATE UNIQUE INDEX "IX_ActivityFeed_MarketingListID" ON "ActivityFeed" ("MarketingListID")
/

CREATE UNIQUE INDEX "IX_ActivityFeed_ProjectID" ON "ActivityFeed" ("ProjectID")
/

CREATE INDEX "IX_ActivityRecord_ActivityFeedID" ON "ActivityRecord" ("ActivityFeedID")
/

CREATE INDEX "IX_ActivityRecord_ActivityTypeID" ON "ActivityRecord" ("ActivityTypeID")
/

CREATE INDEX "IX_ActivityRecord_BusinessID" ON "ActivityRecord" ("BusinessID")
/

CREATE INDEX "IX_ActivityRecord_BusinessProfileRecordID" ON "ActivityRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ActivityRecord_InChargeBusinessProfileRecordID" ON "ActivityRecord" ("InChargeBusinessProfileRecordID")
/

CREATE INDEX "IX_ActivityRecord_ParentActivityID" ON "ActivityRecord" ("ParentActivityID")
/

CREATE INDEX "IX_ActivityType_BusinessID" ON "ActivityType" ("BusinessID")
/

CREATE INDEX "IX_ActivityType_BusinessProfileRecordID" ON "ActivityType" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Agreement_AgreementTypeID" ON "Agreement" ("AgreementTypeID")
/

CREATE INDEX "IX_Agreement_BusinessID" ON "Agreement" ("BusinessID")
/

CREATE INDEX "IX_Agreement_ContactID" ON "Agreement" ("ContactID")
/

CREATE INDEX "IX_AgreementRevision_AgreementID" ON "AgreementRevision" ("AgreementID")
/

CREATE INDEX "IX_AgreementRevision_BusinessID" ON "AgreementRevision" ("BusinessID")
/

CREATE INDEX "IX_AgreementRevision_LanguageIso639_1" ON "AgreementRevision" ("LanguageIso639_1")
/

CREATE INDEX "IX_AgreementType_BusinessID" ON "AgreementType" ("BusinessID")
/

CREATE INDEX "IX_AppliedFee_FeeID" ON "AppliedFee" ("FeeID")
/

CREATE INDEX "IX_AppliedFee_PaymentChargebackID" ON "AppliedFee" ("PaymentChargebackID")
/

CREATE INDEX "IX_AppliedFee_PaymentGatewayID" ON "AppliedFee" ("PaymentGatewayID")
/

CREATE INDEX "IX_AppliedFee_PaymentID" ON "AppliedFee" ("PaymentID")
/

CREATE INDEX "IX_AppliedFee_PaymentRefundID" ON "AppliedFee" ("PaymentRefundID")
/

CREATE INDEX "IX_AppliedFee_WalletWithdrawID" ON "AppliedFee" ("WalletWithdrawID")
/

CREATE INDEX "IX_AppliedTaxPolicyRecord_AppliedFeeID" ON "AppliedTaxPolicyRecord" ("AppliedFeeID")
/

CREATE INDEX "IX_AppliedTaxPolicyRecord_BillingItemRecordID" ON "AppliedTaxPolicyRecord" ("BillingItemRecordID")
/

CREATE INDEX "IX_AppliedTaxPolicyRecord_BusinessID" ON "AppliedTaxPolicyRecord" ("BusinessID")
/

CREATE INDEX "IX_AppliedTaxPolicyRecord_BusinessProfileRecordID" ON "AppliedTaxPolicyRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_AppliedTaxPolicyRecord_InvoiceID" ON "AppliedTaxPolicyRecord" ("InvoiceID")
/

CREATE INDEX "IX_AppliedTaxPolicyRecord_ItemID" ON "AppliedTaxPolicyRecord" ("ItemID")
/

CREATE INDEX "IX_AppliedTaxPolicyRecord_PaymentID" ON "AppliedTaxPolicyRecord" ("PaymentID")
/

CREATE INDEX "IX_AppliedTaxPolicyRecord_TaxPolicyID" ON "AppliedTaxPolicyRecord" ("TaxPolicyID")
/

CREATE INDEX "IX_AppraisalSession_AppraisalStageID" ON "AppraisalSession" ("AppraisalStageID")
/

CREATE INDEX "IX_AppraisalSession_AppraisalWorkflowID" ON "AppraisalSession" ("AppraisalWorkflowID")
/

CREATE INDEX "IX_AppraisalSession_BusinessID" ON "AppraisalSession" ("BusinessID")
/

CREATE INDEX "IX_AppraisalSession_BusinessProfileRecordID" ON "AppraisalSession" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_AppraisalSession_EmployeeProfileID" ON "AppraisalSession" ("EmployeeProfileID")
/

CREATE INDEX "IX_AspNetRoleClaims_RoleId" ON "AspNetRoleClaims" ("RoleId")
/

CREATE UNIQUE INDEX "RoleNameIndex" ON "AspNetRoles" ("NormalizedName")
/

CREATE INDEX "IX_AspNetUserClaims_UserId" ON "AspNetUserClaims" ("UserId")
/

CREATE INDEX "IX_AspNetUserLogins_UserId" ON "AspNetUserLogins" ("UserId")
/

CREATE INDEX "IX_AspNetUserRoles_RoleId" ON "AspNetUserRoles" ("RoleId")
/

CREATE INDEX "EmailIndex" ON "AspNetUsers" ("NormalizedEmail")
/

CREATE INDEX "IX_AspNetUsers_CityID" ON "AspNetUsers" ("CityID")
/

CREATE INDEX "IX_AspNetUsers_CountryID" ON "AspNetUsers" ("CountryID")
/

CREATE INDEX "IX_AspNetUsers_CountryLanguageID" ON "AspNetUsers" ("CountryLanguageID")
/

CREATE INDEX "IX_AspNetUsers_CountryStateID" ON "AspNetUsers" ("CountryStateID")
/

CREATE INDEX "IX_AspNetUsers_CurrencyID" ON "AspNetUsers" ("CurrencyID")
/

CREATE INDEX "IX_AspNetUsers_SelectedBusinessID" ON "AspNetUsers" ("SelectedBusinessID")
/

CREATE INDEX "IX_AspNetUsers_TimezoneID" ON "AspNetUsers" ("TimezoneID")
/

CREATE UNIQUE INDEX "UserNameIndex" ON "AspNetUsers" ("NormalizedUserName")
/

CREATE INDEX "IX_Asset_AssetCategoryID" ON "Asset" ("AssetCategoryID")
/

CREATE INDEX "IX_Asset_AssetLocationID" ON "Asset" ("AssetLocationID")
/

CREATE INDEX "IX_Asset_BusinessID" ON "Asset" ("BusinessID")
/

CREATE INDEX "IX_Asset_BusinessProfileRecordID" ON "Asset" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Asset_ContactID" ON "Asset" ("ContactID")
/

CREATE INDEX "IX_Asset_FinancialBookID" ON "Asset" ("FinancialBookID")
/

CREATE INDEX "IX_Asset_ItemID" ON "Asset" ("ItemID")
/

CREATE INDEX "IX_Asset_OrganizationDepartmentID" ON "Asset" ("OrganizationDepartmentID")
/

CREATE INDEX "IX_Asset_PurchaseInvoiceID" ON "Asset" ("PurchaseInvoiceID")
/

CREATE INDEX "IX_Asset_PurchaseReceiptID" ON "Asset" ("PurchaseReceiptID")
/

CREATE INDEX "IX_AssetCategory_BusinessID" ON "AssetCategory" ("BusinessID")
/

CREATE INDEX "IX_AssetDepreciationRecord_BusinessID" ON "AssetDepreciationRecord" ("BusinessID")
/

CREATE INDEX "IX_AssetDepreciationRecord_FinancialBookID" ON "AssetDepreciationRecord" ("FinancialBookID")
/

CREATE INDEX "IX_AssetTransfer_AssetID" ON "AssetTransfer" ("AssetID")
/

CREATE INDEX "IX_AssetTransfer_BusinessID" ON "AssetTransfer" ("BusinessID")
/

CREATE INDEX "IX_AssetTransfer_DestinationContactID" ON "AssetTransfer" ("DestinationContactID")
/

CREATE INDEX "IX_AssetTransfer_DestinationDepartmentID" ON "AssetTransfer" ("DestinationDepartmentID")
/

CREATE INDEX "IX_AssetTransfer_DestinationLocationID" ON "AssetTransfer" ("DestinationLocationID")
/

CREATE UNIQUE INDEX "IX_AssetTransfer_PreviousShareTransferID" ON "AssetTransfer" ("PreviousShareTransferID")
/

CREATE INDEX "IX_AssetTransfer_SourceContactID" ON "AssetTransfer" ("SourceContactID")
/

CREATE INDEX "IX_AssetTransfer_SourceDepartmentID" ON "AssetTransfer" ("SourceDepartmentID")
/

CREATE INDEX "IX_AssetTransfer_SourceLocationID" ON "AssetTransfer" ("SourceLocationID")
/

CREATE INDEX "IX_AssetValueAmend_BusinessID" ON "AssetValueAmend" ("BusinessID")
/

CREATE INDEX "IX_AssetValueAmend_FinancialBookID" ON "AssetValueAmend" ("FinancialBookID")
/

CREATE INDEX "IX_Bank_CountryID" ON "Bank" ("CountryID")
/

CREATE INDEX "IX_BankGuarantee_BankAccountID" ON "BankGuarantee" ("BankAccountID")
/

CREATE INDEX "IX_BankGuarantee_BankProfileID" ON "BankGuarantee" ("BankProfileID")
/

CREATE INDEX "IX_BankGuarantee_BusinessID" ON "BankGuarantee" ("BusinessID")
/

CREATE INDEX "IX_BankGuarantee_BusinessProfileRecordID" ON "BankGuarantee" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BankGuarantee_ContactID" ON "BankGuarantee" ("ContactID")
/

CREATE INDEX "IX_BankGuarantee_CurrencyID" ON "BankGuarantee" ("CurrencyID")
/

CREATE INDEX "IX_BankGuarantee_OrderID" ON "BankGuarantee" ("OrderID")
/

CREATE INDEX "IX_BankGuarantee_ProjectID" ON "BankGuarantee" ("ProjectID")
/

CREATE INDEX "IX_BillingCoupon_BusinessID" ON "BillingCoupon" ("BusinessID")
/

CREATE INDEX "IX_BillingCoupon_BusinessProfileRecordID" ON "BillingCoupon" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BillingCoupon_CurrencyID" ON "BillingCoupon" ("CurrencyID")
/

CREATE UNIQUE INDEX "IX_BillingItemRecord_AccountingEntryID" ON "BillingItemRecord" ("AccountingEntryID")
/

CREATE INDEX "IX_BillingItemRecord_BillingCouponCartRecord_BillingCouponID" ON "BillingItemRecord" ("BillingCouponCartRecord_BillingCouponID")
/

CREATE INDEX "IX_BillingItemRecord_BillingCouponID" ON "BillingItemRecord" ("BillingCouponID")
/

CREATE INDEX "IX_BillingItemRecord_BillingCouponOrderRecord_BillingCouponID" ON "BillingItemRecord" ("BillingCouponOrderRecord_BillingCouponID")
/

CREATE INDEX "IX_BillingItemRecord_BusinessID" ON "BillingItemRecord" ("BusinessID")
/

CREATE INDEX "IX_BillingItemRecord_BusinessProfileRecordID" ON "BillingItemRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BillingItemRecord_CartID" ON "BillingItemRecord" ("CartID")
/

CREATE INDEX "IX_BillingItemRecord_CurrencyID" ON "BillingItemRecord" ("CurrencyID")
/

CREATE INDEX "IX_BillingItemRecord_DealUnitID" ON "BillingItemRecord" ("DealUnitID")
/

CREATE INDEX "IX_BillingItemRecord_InvoiceID" ON "BillingItemRecord" ("InvoiceID")
/

CREATE INDEX "IX_BillingItemRecord_ItemID" ON "BillingItemRecord" ("ItemID")
/

CREATE INDEX "IX_BillingItemRecord_ItemPriceID" ON "BillingItemRecord" ("ItemPriceID")
/

CREATE INDEX "IX_BillingItemRecord_ItemShipmentPolicyID" ON "BillingItemRecord" ("ItemShipmentPolicyID")
/

CREATE INDEX "IX_BillingItemRecord_LocationID" ON "BillingItemRecord" ("LocationID")
/

CREATE INDEX "IX_BillingItemRecord_OrderID" ON "BillingItemRecord" ("OrderID")
/

CREATE INDEX "IX_BillingItemRecord_OrderItemRecord_OrderID" ON "BillingItemRecord" ("OrderItemRecord_OrderID")
/

CREATE INDEX "IX_BillingItemRecord_ParentBillingItemRecordID" ON "BillingItemRecord" ("ParentBillingItemRecordID")
/

CREATE INDEX "IX_BillingItemRecord_ParentOrderID" ON "BillingItemRecord" ("ParentOrderID")
/

CREATE INDEX "IX_BillingItemRecord_PriceListItemID" ON "BillingItemRecord" ("PriceListItemID")
/

CREATE INDEX "IX_BillingItemRecord_QuoteID" ON "BillingItemRecord" ("QuoteID")
/

CREATE INDEX "IX_BillingItemRecord_QuoteItemRecordID" ON "BillingItemRecord" ("QuoteItemRecordID")
/

CREATE INDEX "IX_BillingItemRecord_RefundPolicyID" ON "BillingItemRecord" ("RefundPolicyID")
/

CREATE INDEX "IX_BillingItemRecord_ReturnPolicyID" ON "BillingItemRecord" ("ReturnPolicyID")
/

CREATE INDEX "IX_BillingItemRecord_UnitGroupID" ON "BillingItemRecord" ("UnitGroupID")
/

CREATE INDEX "IX_BillingItemRecord_UnitID" ON "BillingItemRecord" ("UnitID")
/

CREATE INDEX "IX_BillingItemRecord_WarrantyPolicyID" ON "BillingItemRecord" ("WarrantyPolicyID")
/

CREATE INDEX "IX_Blockchain_BusinessID" ON "Blockchain" ("BusinessID")
/

CREATE INDEX "IX_Blockchain_BusinessProfileRecordID" ON "Blockchain" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BlockchainBlock_BlockchainID" ON "BlockchainBlock" ("BlockchainID")
/

CREATE INDEX "IX_BlockchainBlock_NonFungibleTokenID" ON "BlockchainBlock" ("NonFungibleTokenID")
/

CREATE UNIQUE INDEX "IX_BlockchainBlock_PreviousBlockchainBlockID" ON "BlockchainBlock" ("PreviousBlockchainBlockID")
/

CREATE INDEX "IX_BlockchainBlock_WalletAccountID" ON "BlockchainBlock" ("WalletAccountID")
/

CREATE INDEX "IX_BlockRecord_BlockedSocialProfileID" ON "BlockRecord" ("BlockedSocialProfileID")
/

CREATE INDEX "IX_BlockRecord_BlockerSocialProfileID" ON "BlockRecord" ("BlockerSocialProfileID")
/

CREATE INDEX "IX_BrandRecord_BrandID" ON "BrandRecord" ("BrandID")
/

CREATE INDEX "IX_BrandRecord_ItemID" ON "BrandRecord" ("ItemID")
/

CREATE INDEX "IX_Budget_BusinessID" ON "Budget" ("BusinessID")
/

CREATE INDEX "IX_Budget_CostCentreID" ON "Budget" ("CostCentreID")
/

CREATE INDEX "IX_Budget_FiscalYearID" ON "Budget" ("FiscalYearID")
/

CREATE INDEX "IX_Budget_ProjectID" ON "Budget" ("ProjectID")
/

CREATE INDEX "IX_Business_BusinessIndustryID" ON "Business" ("BusinessIndustryID")
/

CREATE INDEX "IX_Business_BusinessSegmentID" ON "Business" ("BusinessSegmentID")
/

CREATE INDEX "IX_Business_BusinessTypeID" ON "Business" ("BusinessTypeID")
/

CREATE INDEX "IX_Business_CityID" ON "Business" ("CityID")
/

CREATE INDEX "IX_Business_CountryID" ON "Business" ("CountryID")
/

CREATE INDEX "IX_Business_CountryLanguageID" ON "Business" ("CountryLanguageID")
/

CREATE INDEX "IX_Business_CountryStateID" ON "Business" ("CountryStateID")
/

CREATE INDEX "IX_Business_CurrencyID" ON "Business" ("CurrencyID")
/

CREATE INDEX "IX_Business_ParentBusinessID" ON "Business" ("ParentBusinessID")
/

CREATE INDEX "IX_Business_TimezoneID" ON "Business" ("TimezoneID")
/

CREATE INDEX "IX_BusinessApplication_BusinessID" ON "BusinessApplication" ("BusinessID")
/

CREATE INDEX "IX_BusinessApplication_BusinessProfileRecordID" ON "BusinessApplication" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessApplicationQueryRecord_BusinessApplicationID" ON "BusinessApplicationQueryRecord" ("BusinessApplicationID")
/

CREATE INDEX "IX_BusinessApplicationReplyURL_BusinessApplicationID" ON "BusinessApplicationReplyURL" ("BusinessApplicationID")
/

CREATE INDEX "IX_BusinessApplicationRequestedPermission_BusinessApplicationID" ON "BusinessApplicationRequestedPermission" ("BusinessApplicationID")
/

CREATE INDEX "IX_BusinessApplicationRequestedPermission_BusinessPermissionID" ON "BusinessApplicationRequestedPermission" ("BusinessPermissionID")
/

CREATE INDEX "IX_BusinessApplicationSecret_AccessKeyPairID" ON "BusinessApplicationSecret" ("AccessKeyPairID")
/

CREATE INDEX "IX_BusinessApplicationSecret_BusinessApplicationID" ON "BusinessApplicationSecret" ("BusinessApplicationID")
/

CREATE INDEX "IX_BusinessApplicationSecret_JwtSigningAccessKeyPairID" ON "BusinessApplicationSecret" ("JwtSigningAccessKeyPairID")
/

CREATE INDEX "IX_BusinessDepartment_BusinessID" ON "BusinessDepartment" ("BusinessID")
/

CREATE INDEX "IX_BusinessDepartment_BusinessProfileRecordID" ON "BusinessDepartment" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessDepartment_OrganizationProfileID" ON "BusinessDepartment" ("OrganizationProfileID")
/

CREATE INDEX "IX_BusinessDepartment_ParentDepartmentID" ON "BusinessDepartment" ("ParentDepartmentID")
/

CREATE INDEX "IX_BusinessDomain_BusinessID" ON "BusinessDomain" ("BusinessID")
/

CREATE INDEX "IX_BusinessIndustry_BusinessProfileRecordID" ON "BusinessIndustry" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessIndustry_ParentBusinessIndustryID" ON "BusinessIndustry" ("ParentBusinessIndustryID")
/

CREATE INDEX "IX_BusinessIndustryRecord_BusinessID" ON "BusinessIndustryRecord" ("BusinessID")
/

CREATE INDEX "IX_BusinessIndustryRecord_BusinessIndustryID" ON "BusinessIndustryRecord" ("BusinessIndustryID")
/

CREATE INDEX "IX_BusinessPermission_BusinessID" ON "BusinessPermission" ("BusinessID")
/

CREATE INDEX "IX_BusinessPermission_BusinessProfileRecordID" ON "BusinessPermission" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessPermissionGrant_BusinessApplicationID" ON "BusinessPermissionGrant" ("BusinessApplicationID")
/

CREATE INDEX "IX_BusinessPermissionGrant_BusinessID" ON "BusinessPermissionGrant" ("BusinessID")
/

CREATE INDEX "IX_BusinessPermissionGrant_BusinessPermissionID" ON "BusinessPermissionGrant" ("BusinessPermissionID")
/

CREATE INDEX "IX_BusinessPermissionGrant_BusinessProfileRecordID" ON "BusinessPermissionGrant" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessPermissionGrant_BusinessSecurityRoleID" ON "BusinessPermissionGrant" ("BusinessSecurityRoleID")
/

CREATE INDEX "IX_BusinessPermissionGrant_GrantorBusinessProfileRecordID" ON "BusinessPermissionGrant" ("GrantorBusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessPosition_BusinessID" ON "BusinessPosition" ("BusinessID")
/

CREATE INDEX "IX_BusinessPosition_BusinessProfileRecordID" ON "BusinessPosition" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessProcess_BusinessID" ON "BusinessProcess" ("BusinessID")
/

CREATE INDEX "IX_BusinessProcess_BusinessProfileRecordID" ON "BusinessProcess" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessProcess_ParentBusinessProcessID" ON "BusinessProcess" ("ParentBusinessProcessID")
/

CREATE INDEX "IX_BusinessProcessStage_AppraisalWorkflowID" ON "BusinessProcessStage" ("AppraisalWorkflowID")
/

CREATE INDEX "IX_BusinessProcessStage_BusinessID" ON "BusinessProcessStage" ("BusinessID")
/

CREATE INDEX "IX_BusinessProcessStage_BusinessProcessID" ON "BusinessProcessStage" ("BusinessProcessID")
/

CREATE INDEX "IX_BusinessProcessStage_BusinessProfileRecordID" ON "BusinessProcessStage" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessProcessStage_DealUnitFlowID" ON "BusinessProcessStage" ("DealUnitFlowID")
/

CREATE INDEX "IX_BusinessProcessStage_ParentBusinessProcessStageID" ON "BusinessProcessStage" ("ParentBusinessProcessStageID")
/

CREATE INDEX "IX_BusinessProcessStageRelation_ChildBusinessProcessStageID" ON "BusinessProcessStageRelation" ("ChildBusinessProcessStageID")
/

CREATE INDEX "IX_BusinessProcessStageRelation_ParentBusinessProcessStageID" ON "BusinessProcessStageRelation" ("ParentBusinessProcessStageID")
/

CREATE INDEX "IX_BusinessProfileInvitation_BusinessID" ON "BusinessProfileInvitation" ("BusinessID")
/

CREATE INDEX "IX_BusinessProfileInvitation_BusinessProfileRecordID" ON "BusinessProfileInvitation" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessProfileRecord_AccountHolderID" ON "BusinessProfileRecord" ("AccountHolderID")
/

CREATE INDEX "IX_BusinessProfileRecord_BusinessID" ON "BusinessProfileRecord" ("BusinessID")
/

CREATE INDEX "IX_BusinessRelationship_ChildBusinessID" ON "BusinessRelationship" ("ChildBusinessID")
/

CREATE INDEX "IX_BusinessRelationship_ParentBusinessID" ON "BusinessRelationship" ("ParentBusinessID")
/

CREATE INDEX "IX_BusinessSecurityLog_BusinessID" ON "BusinessSecurityLog" ("BusinessID")
/

CREATE INDEX "IX_BusinessSecurityLog_BusinessProfileRecordID" ON "BusinessSecurityLog" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessSecurityLog_SigningCertificateID" ON "BusinessSecurityLog" ("SigningCertificateID")
/

CREATE INDEX "IX_BusinessSecurityLog_SigningProfileID" ON "BusinessSecurityLog" ("SigningProfileID")
/

CREATE INDEX "IX_BusinessSecurityRole_BusinessID" ON "BusinessSecurityRole" ("BusinessID")
/

CREATE INDEX "IX_BusinessSecurityRole_BusinessProfileRecordID" ON "BusinessSecurityRole" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessTeam_BusinessID" ON "BusinessTeam" ("BusinessID")
/

CREATE INDEX "IX_BusinessTeam_BusinessProfileRecordID" ON "BusinessTeam" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessTeam_BusinessUnitID" ON "BusinessTeam" ("BusinessUnitID")
/

CREATE INDEX "IX_BusinessTeam_OrganizationProfileID" ON "BusinessTeam" ("OrganizationProfileID")
/

CREATE INDEX "IX_BusinessTeamRecord_BusinessID" ON "BusinessTeamRecord" ("BusinessID")
/

CREATE INDEX "IX_BusinessTeamRecord_BusinessProfileRecordID" ON "BusinessTeamRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessTeamRecord_BusinessTeamID" ON "BusinessTeamRecord" ("BusinessTeamID")
/

CREATE INDEX "IX_BusinessTeamRecord_ContactID" ON "BusinessTeamRecord" ("ContactID")
/

CREATE INDEX "IX_BusinessTeamRecord_EmployeeProfileID" ON "BusinessTeamRecord" ("EmployeeProfileID")
/

CREATE INDEX "IX_BusinessTeamRecord_ProjectID" ON "BusinessTeamRecord" ("ProjectID")
/

CREATE UNIQUE INDEX "IX_BusinessTenantSettings_BusinessID" ON "BusinessTenantSettings" ("BusinessID")
/

CREATE INDEX "IX_BusinessUnit_BusinessID" ON "BusinessUnit" ("BusinessID")
/

CREATE INDEX "IX_BusinessUnit_BusinessProfileRecordID" ON "BusinessUnit" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessUnit_CountryID" ON "BusinessUnit" ("CountryID")
/

CREATE INDEX "IX_BusinessUnit_OrganizationProfileID" ON "BusinessUnit" ("OrganizationProfileID")
/

CREATE INDEX "IX_BusinessUnit_ParentBusinessUnitID" ON "BusinessUnit" ("ParentBusinessUnitID")
/

CREATE INDEX "IX_BusinessUnitRecord_BusinessID" ON "BusinessUnitRecord" ("BusinessID")
/

CREATE INDEX "IX_BusinessUnitRecord_BusinessProfileRecordID" ON "BusinessUnitRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_BusinessUnitRecord_BusinessUnitID" ON "BusinessUnitRecord" ("BusinessUnitID")
/

CREATE UNIQUE INDEX "IX_Cart_AccountHolderID" ON "Cart" ("AccountHolderID")
/

CREATE UNIQUE INDEX "IX_Cart_BusinessID" ON "Cart" ("BusinessID")
/

CREATE INDEX "IX_Cart_CityID" ON "Cart" ("CityID")
/

CREATE UNIQUE INDEX "IX_Cart_ContactID" ON "Cart" ("ContactID")
/

CREATE INDEX "IX_Cart_CountryID" ON "Cart" ("CountryID")
/

CREATE INDEX "IX_Cart_CountryStateID" ON "Cart" ("CountryStateID")
/

CREATE INDEX "IX_Cart_CurrencyID" ON "Cart" ("CurrencyID")
/

CREATE INDEX "IX_Cart_GuestCart_BusinessID" ON "Cart" ("GuestCart_BusinessID")
/

CREATE INDEX "IX_Cart_IPLookupID" ON "Cart" ("IPLookupID")
/

CREATE INDEX "IX_Cart_LocationID" ON "Cart" ("LocationID")
/

CREATE INDEX "IX_CartRecord_CartID" ON "CartRecord" ("CartID")
/

CREATE INDEX "IX_CartRecord_CurrencyID" ON "CartRecord" ("CurrencyID")
/

CREATE INDEX "IX_CartRecord_ItemCartRecord_ItemID" ON "CartRecord" ("ItemCartRecord_ItemID")
/

CREATE INDEX "IX_CartRecord_ItemID" ON "CartRecord" ("ItemID")
/

CREATE INDEX "IX_CartRecord_ItemShippingPolicyID" ON "CartRecord" ("ItemShippingPolicyID")
/

CREATE INDEX "IX_CartRecord_RecentlyViewedItemRecord_ItemID" ON "CartRecord" ("RecentlyViewedItemRecord_ItemID")
/

CREATE INDEX "IX_CartRecord_RefundPolicyID" ON "CartRecord" ("RefundPolicyID")
/

CREATE INDEX "IX_CartRecord_ReturnPolicyID" ON "CartRecord" ("ReturnPolicyID")
/

CREATE INDEX "IX_CartRecord_ShippingAddressID" ON "CartRecord" ("ShippingAddressID")
/

CREATE INDEX "IX_CartRecord_WarrantyPolicyID" ON "CartRecord" ("WarrantyPolicyID")
/

CREATE INDEX "IX_Cell_ColumnID" ON "Cell" ("ColumnID")
/

CREATE INDEX "IX_Cell_RowID" ON "Cell" ("RowID")
/

CREATE INDEX "IX_City_CountryID" ON "City" ("CountryID")
/

CREATE INDEX "IX_City_StateID" ON "City" ("StateID")
/

CREATE INDEX "IX_CognitiveAgent_BusinessID" ON "CognitiveAgent" ("BusinessID")
/

CREATE INDEX "IX_CognitiveAgent_BusinessProfileRecordID" ON "CognitiveAgent" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CognitiveAgentConversation_AccountHolderID" ON "CognitiveAgentConversation" ("AccountHolderID")
/

CREATE INDEX "IX_CognitiveAgentConversation_BusinessID" ON "CognitiveAgentConversation" ("BusinessID")
/

CREATE INDEX "IX_CognitiveAgentConversation_BusinessProfileRecordID" ON "CognitiveAgentConversation" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CognitiveAgentConversation_CognitiveAgentID" ON "CognitiveAgentConversation" ("CognitiveAgentID")
/

CREATE INDEX "IX_CognitiveAgentConversation_IndividualID" ON "CognitiveAgentConversation" ("IndividualID")
/

CREATE INDEX "IX_CognitiveAgentConversation_OrganizationID" ON "CognitiveAgentConversation" ("OrganizationID")
/

CREATE INDEX "IX_CognitiveAgentConversation_ReceptorBusinessID" ON "CognitiveAgentConversation" ("ReceptorBusinessID")
/

CREATE INDEX "IX_Column_EntityID" ON "Column" ("EntityID")
/

CREATE INDEX "IX_Commission_BusinessID" ON "Commission" ("BusinessID")
/

CREATE INDEX "IX_Commission_BusinessProfileRecordID" ON "Commission" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Commission_EmmisorContactID" ON "Commission" ("EmmisorContactID")
/

CREATE INDEX "IX_Commission_EmmisorWalletAccountID" ON "Commission" ("EmmisorWalletAccountID")
/

CREATE INDEX "IX_Commission_PaymentID" ON "Commission" ("PaymentID")
/

CREATE INDEX "IX_Commission_ReceptorContactID" ON "Commission" ("ReceptorContactID")
/

CREATE INDEX "IX_Commission_ReceptorWalletAccountID" ON "Commission" ("ReceptorWalletAccountID")
/

CREATE INDEX "IX_Commission_SalaryID" ON "Commission" ("SalaryID")
/

CREATE INDEX "IX_Contact_AccountHolderID" ON "Contact" ("AccountHolderID")
/

CREATE INDEX "IX_Contact_BusinessID" ON "Contact" ("BusinessID")
/

CREATE INDEX "IX_Contact_BusinessProfileRecordID" ON "Contact" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Contact_BusinessTeamID" ON "Contact" ("BusinessTeamID")
/

CREATE INDEX "IX_Contact_CityID" ON "Contact" ("CityID")
/

CREATE INDEX "IX_Contact_ContactSourceID" ON "Contact" ("ContactSourceID")
/

CREATE INDEX "IX_Contact_CountryID" ON "Contact" ("CountryID")
/

CREATE INDEX "IX_Contact_CountryLanguageID" ON "Contact" ("CountryLanguageID")
/

CREATE INDEX "IX_Contact_CountryStateID" ON "Contact" ("CountryStateID")
/

CREATE INDEX "IX_Contact_CurrencyID" ON "Contact" ("CurrencyID")
/

CREATE INDEX "IX_Contact_FinancialBookID" ON "Contact" ("FinancialBookID")
/

CREATE INDEX "IX_Contact_ItemShippingPolicyID" ON "Contact" ("ItemShippingPolicyID")
/

CREATE INDEX "IX_Contact_OrganizationID" ON "Contact" ("OrganizationID")
/

CREATE INDEX "IX_Contact_OwnerContactID" ON "Contact" ("OwnerContactID")
/

CREATE INDEX "IX_Contact_ParentContactID" ON "Contact" ("ParentContactID")
/

CREATE INDEX "IX_Contact_PartnerProfileID" ON "Contact" ("PartnerProfileID")
/

CREATE INDEX "IX_Contact_PaymentTermID" ON "Contact" ("PaymentTermID")
/

CREATE INDEX "IX_Contact_PrimaryContactID" ON "Contact" ("PrimaryContactID")
/

CREATE INDEX "IX_Contact_RelatedAccountHolderID" ON "Contact" ("RelatedAccountHolderID")
/

CREATE INDEX "IX_Contact_RelatedBusinessID" ON "Contact" ("RelatedBusinessID")
/

CREATE UNIQUE INDEX "IX_Contact_RelatedBusinessProfileRecordID" ON "Contact" ("RelatedBusinessProfileRecordID")
/

CREATE INDEX "IX_Contact_ShippingMethodID" ON "Contact" ("ShippingMethodID")
/

CREATE INDEX "IX_Contact_TerritoryID" ON "Contact" ("TerritoryID")
/

CREATE INDEX "IX_Contact_TimezoneID" ON "Contact" ("TimezoneID")
/

CREATE INDEX "IX_ContactGroupRecord_ContactID" ON "ContactGroupRecord" ("ContactID")
/

CREATE INDEX "IX_ContactGroupRecord_ContactsGroupID" ON "ContactGroupRecord" ("ContactsGroupID")
/

CREATE INDEX "IX_ContactProfile_BankID" ON "ContactProfile" ("BankID")
/

CREATE INDEX "IX_ContactProfile_BusinessID" ON "ContactProfile" ("BusinessID")
/

CREATE INDEX "IX_ContactProfile_BusinessProfileRecordID" ON "ContactProfile" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ContactProfile_CityID" ON "ContactProfile" ("CityID")
/

CREATE INDEX "IX_ContactProfile_ContactID" ON "ContactProfile" ("ContactID")
/

CREATE INDEX "IX_ContactProfile_CountryID" ON "ContactProfile" ("CountryID")
/

CREATE INDEX "IX_ContactProfile_CountryStateID" ON "ContactProfile" ("CountryStateID")
/

CREATE INDEX "IX_ContactProfile_EmployeeTypeID" ON "ContactProfile" ("EmployeeTypeID")
/

CREATE INDEX "IX_ContactProfile_FiscalAuthorityID" ON "ContactProfile" ("FiscalAuthorityID")
/

CREATE INDEX "IX_ContactProfile_FiscalIdentificationTypeID" ON "ContactProfile" ("FiscalIdentificationTypeID")
/

CREATE INDEX "IX_ContactProfile_FiscalRegimeID" ON "ContactProfile" ("FiscalRegimeID")
/

CREATE INDEX "IX_ContactProfile_JobTitleID" ON "ContactProfile" ("JobTitleID")
/

CREATE INDEX "IX_ContactProfile_MarketingCampaignID" ON "ContactProfile" ("MarketingCampaignID")
/

CREATE INDEX "IX_ContactProfile_PartnerTierID" ON "ContactProfile" ("PartnerTierID")
/

CREATE INDEX "IX_ContactProfile_WalletAccountID" ON "ContactProfile" ("WalletAccountID")
/

CREATE INDEX "IX_ContactRelation_BusinessID" ON "ContactRelation" ("BusinessID")
/

CREATE INDEX "IX_ContactRelation_ContactID" ON "ContactRelation" ("ContactID")
/

CREATE INDEX "IX_ContactRelation_ContactRelationTypeID" ON "ContactRelation" ("ContactRelationTypeID")
/

CREATE INDEX "IX_ContactRelation_RelatedContactID" ON "ContactRelation" ("RelatedContactID")
/

CREATE INDEX "IX_ContactRelationType_BusinessID" ON "ContactRelationType" ("BusinessID")
/

CREATE INDEX "IX_ContactSource_BusinessID" ON "ContactSource" ("BusinessID")
/

CREATE INDEX "IX_Conversation_SocialProfileID" ON "Conversation" ("SocialProfileID")
/

CREATE INDEX "IX_Conversation_SupportTicketID" ON "Conversation" ("SupportTicketID")
/

CREATE INDEX "IX_CostCentre_BusinessID" ON "CostCentre" ("BusinessID")
/

CREATE INDEX "IX_CostCentre_CostCentresGroupID" ON "CostCentre" ("CostCentresGroupID")
/

CREATE INDEX "IX_CostCentre_ParentCostCentreID" ON "CostCentre" ("ParentCostCentreID")
/

CREATE INDEX "IX_CostCentresGroup_BusinessID" ON "CostCentresGroup" ("BusinessID")
/

CREATE INDEX "IX_CostCentresGroup_ParentCostCentresGroupID" ON "CostCentresGroup" ("ParentCostCentresGroupID")
/

CREATE INDEX "IX_CountryAltSpelling_CountryID" ON "CountryAltSpelling" ("CountryID")
/

CREATE INDEX "IX_CountryBorder_BorderCountryID" ON "CountryBorder" ("BorderCountryID")
/

CREATE INDEX "IX_CountryBorder_CountryID" ON "CountryBorder" ("CountryID")
/

CREATE INDEX "IX_CountryCallingCode_CountryID" ON "CountryCallingCode" ("CountryID")
/

CREATE INDEX "IX_CountryLanguageRecord_CountryID" ON "CountryLanguageRecord" ("CountryID")
/

CREATE INDEX "IX_CountryLanguageRecord_CountryLanguageID" ON "CountryLanguageRecord" ("CountryLanguageID")
/

CREATE UNIQUE INDEX "IX_CountryNameTranslations_CountryID" ON "CountryNameTranslations" ("CountryID")
/

CREATE INDEX "IX_CountryRegionalBlockRecord_CountryID" ON "CountryRegionalBlockRecord" ("CountryID")
/

CREATE INDEX "IX_CountryRegionalBlockRecord_RegionalBlockID" ON "CountryRegionalBlockRecord" ("RegionalBlockID")
/

CREATE INDEX "IX_CountryState_CountryID" ON "CountryState" ("CountryID")
/

CREATE INDEX "IX_CountryTimeZoneRecord_CountryID" ON "CountryTimeZoneRecord" ("CountryID")
/

CREATE INDEX "IX_CountryTimeZoneRecord_TimezoneID" ON "CountryTimeZoneRecord" ("TimezoneID")
/

CREATE INDEX "IX_CountryTopLevelDomain_CountryID" ON "CountryTopLevelDomain" ("CountryID")
/

CREATE INDEX "IX_CourrierItemShippingPolicyRecord_BusinessID" ON "CourrierItemShippingPolicyRecord" ("BusinessID")
/

CREATE INDEX "IX_CourrierItemShippingPolicyRecord_ItemShippingPolicyID" ON "CourrierItemShippingPolicyRecord" ("ItemShippingPolicyID")
/

CREATE INDEX "IX_CourrierItemShippingPolicyRecord_ShippingCourierID" ON "CourrierItemShippingPolicyRecord" ("ShippingCourierID")
/

CREATE INDEX "IX_CourseAssignment_BusinessID" ON "CourseAssignment" ("BusinessID")
/

CREATE INDEX "IX_CourseAssignment_BusinessProfileRecordID" ON "CourseAssignment" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseAssignment_CourseAssignmentTypeID" ON "CourseAssignment" ("CourseAssignmentTypeID")
/

CREATE INDEX "IX_CourseAssignment_CourseCohortID" ON "CourseAssignment" ("CourseCohortID")
/

CREATE INDEX "IX_CourseAssignment_CourseGradingRubricID" ON "CourseAssignment" ("CourseGradingRubricID")
/

CREATE INDEX "IX_CourseAssignment_CourseID" ON "CourseAssignment" ("CourseID")
/

CREATE INDEX "IX_CourseAssignment_CourseProblemSetID" ON "CourseAssignment" ("CourseProblemSetID")
/

CREATE INDEX "IX_CourseAssignment_CourseUnitID" ON "CourseAssignment" ("CourseUnitID")
/

CREATE INDEX "IX_CourseAssignmentSubmit_BusinessID" ON "CourseAssignmentSubmit" ("BusinessID")
/

CREATE INDEX "IX_CourseAssignmentSubmit_CourseAssignmentID" ON "CourseAssignmentSubmit" ("CourseAssignmentID")
/

CREATE INDEX "IX_CourseAssignmentSubmit_CourseID" ON "CourseAssignmentSubmit" ("CourseID")
/

CREATE INDEX "IX_CourseAssignmentSubmit_GradingCriteriaCategoryID" ON "CourseAssignmentSubmit" ("GradingCriteriaCategoryID")
/

CREATE INDEX "IX_CourseAssignmentSubmit_InstructorProfileID" ON "CourseAssignmentSubmit" ("InstructorProfileID")
/

CREATE INDEX "IX_CourseAssignmentSubmit_StudentProfileID" ON "CourseAssignmentSubmit" ("StudentProfileID")
/

CREATE INDEX "IX_CourseAssignmentType_BusinessID" ON "CourseAssignmentType" ("BusinessID")
/

CREATE INDEX "IX_CourseAssignmentType_BusinessProfileRecordID" ON "CourseAssignmentType" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseAssignmentType_CourseID" ON "CourseAssignmentType" ("CourseID")
/

CREATE INDEX "IX_CourseCohort_BusinessID" ON "CourseCohort" ("BusinessID")
/

CREATE INDEX "IX_CourseCohort_BusinessProfileRecordID" ON "CourseCohort" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseCohort_CourseContentGroupID" ON "CourseCohort" ("CourseContentGroupID")
/

CREATE INDEX "IX_CourseCohort_CourseID" ON "CourseCohort" ("CourseID")
/

CREATE INDEX "IX_CourseCollectionRecord_CourseCollectionID" ON "CourseCollectionRecord" ("CourseCollectionID")
/

CREATE INDEX "IX_CourseCollectionRecord_CourseID" ON "CourseCollectionRecord" ("CourseID")
/

CREATE INDEX "IX_CourseCompletionCertificate_BusinessID" ON "CourseCompletionCertificate" ("BusinessID")
/

CREATE INDEX "IX_CourseCompletionCertificate_BusinessProfileRecordID" ON "CourseCompletionCertificate" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseCompletionCertificate_CourseCompletionCertificateTemplateID" ON "CourseCompletionCertificate" ("CourseCompletionCertificateTemplateID")
/

CREATE UNIQUE INDEX "IX_CourseCompletionCertificate_CourseEnrollmentID" ON "CourseCompletionCertificate" ("CourseEnrollmentID")
/

CREATE INDEX "IX_CourseCompletionCertificate_CourseID" ON "CourseCompletionCertificate" ("CourseID")
/

CREATE INDEX "IX_CourseCompletionCertificate_StudentProfileID" ON "CourseCompletionCertificate" ("StudentProfileID")
/

CREATE INDEX "IX_CourseContentGroup_BusinessID" ON "CourseContentGroup" ("BusinessID")
/

CREATE INDEX "IX_CourseContentGroup_BusinessProfileRecordID" ON "CourseContentGroup" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseContentGroup_CourseID" ON "CourseContentGroup" ("CourseID")
/

CREATE INDEX "IX_CourseEnrollment_BusinessID" ON "CourseEnrollment" ("BusinessID")
/

CREATE INDEX "IX_CourseEnrollment_BusinessProfileRecordID" ON "CourseEnrollment" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseEnrollment_CourseCohortID" ON "CourseEnrollment" ("CourseCohortID")
/

CREATE INDEX "IX_CourseEnrollment_CourseID" ON "CourseEnrollment" ("CourseID")
/

CREATE INDEX "IX_CourseEnrollment_StudentProfileID" ON "CourseEnrollment" ("StudentProfileID")
/

CREATE INDEX "IX_CourseGradingCriteria_BusinessID" ON "CourseGradingCriteria" ("BusinessID")
/

CREATE INDEX "IX_CourseGradingCriteria_BusinessProfileRecordID" ON "CourseGradingCriteria" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseGradingCriteria_GradingRubricID" ON "CourseGradingCriteria" ("GradingRubricID")
/

CREATE INDEX "IX_CourseGradingCriteriaCategory_BusinessID" ON "CourseGradingCriteriaCategory" ("BusinessID")
/

CREATE INDEX "IX_CourseGradingCriteriaCategory_BusinessProfileRecordID" ON "CourseGradingCriteriaCategory" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseGradingCriteriaCategory_CourseGradingCriteriaID" ON "CourseGradingCriteriaCategory" ("CourseGradingCriteriaID")
/

CREATE INDEX "IX_CourseGradingCriteriaCategory_CourseGradingRubricID" ON "CourseGradingCriteriaCategory" ("CourseGradingRubricID")
/

CREATE INDEX "IX_CourseGradingRubric_BusinessID" ON "CourseGradingRubric" ("BusinessID")
/

CREATE INDEX "IX_CourseGradingRubric_BusinessProfileRecordID" ON "CourseGradingRubric" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseGradingRubric_CourseID" ON "CourseGradingRubric" ("CourseID")
/

CREATE INDEX "IX_CourseHandout_BusinessID" ON "CourseHandout" ("BusinessID")
/

CREATE INDEX "IX_CourseHandout_BusinessProfileRecordID" ON "CourseHandout" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseHandout_CourseID" ON "CourseHandout" ("CourseID")
/

CREATE INDEX "IX_CourseHandout_CourseUnitID" ON "CourseHandout" ("CourseUnitID")
/

CREATE INDEX "IX_CourseLibrary_BusinessID" ON "CourseLibrary" ("BusinessID")
/

CREATE INDEX "IX_CourseLibrary_BusinessProfileRecordID" ON "CourseLibrary" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseLibrary_CourseID" ON "CourseLibrary" ("CourseID")
/

CREATE INDEX "IX_CourseLibrary_CourseUnitID" ON "CourseLibrary" ("CourseUnitID")
/

CREATE INDEX "IX_CourseProblemSet_BusinessID" ON "CourseProblemSet" ("BusinessID")
/

CREATE INDEX "IX_CourseProblemSet_BusinessProfileRecordID" ON "CourseProblemSet" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseProblemSet_CourseGradingRubricID" ON "CourseProblemSet" ("CourseGradingRubricID")
/

CREATE INDEX "IX_CourseProblemSet_CourseID" ON "CourseProblemSet" ("CourseID")
/

CREATE INDEX "IX_CourseProblemSet_CourseUnitID" ON "CourseProblemSet" ("CourseUnitID")
/

CREATE INDEX "IX_CourseSection_BusinessID" ON "CourseSection" ("BusinessID")
/

CREATE INDEX "IX_CourseSection_BusinessProfileRecordID" ON "CourseSection" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseSection_CourseID" ON "CourseSection" ("CourseID")
/

CREATE INDEX "IX_CourseTeamMembership_BusinessID" ON "CourseTeamMembership" ("BusinessID")
/

CREATE INDEX "IX_CourseTeamMembership_BusinessProfileRecordID" ON "CourseTeamMembership" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseTeamMembership_CourseID" ON "CourseTeamMembership" ("CourseID")
/

CREATE INDEX "IX_CourseTeamMembership_InstructorProfileID" ON "CourseTeamMembership" ("InstructorProfileID")
/

CREATE INDEX "IX_CourseUnit_BusinessID" ON "CourseUnit" ("BusinessID")
/

CREATE INDEX "IX_CourseUnit_BusinessProfileRecordID" ON "CourseUnit" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseUnit_CourseContentGroupID" ON "CourseUnit" ("CourseContentGroupID")
/

CREATE INDEX "IX_CourseUnit_CourseID" ON "CourseUnit" ("CourseID")
/

CREATE INDEX "IX_CourseUnit_CourseSectionID" ON "CourseUnit" ("CourseSectionID")
/

CREATE INDEX "IX_CourseWiki_BusinessID" ON "CourseWiki" ("BusinessID")
/

CREATE INDEX "IX_CourseWiki_BusinessProfileRecordID" ON "CourseWiki" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CourseWiki_CourseID" ON "CourseWiki" ("CourseID")
/

CREATE INDEX "IX_CourseWiki_CourseUnitID" ON "CourseWiki" ("CourseUnitID")
/

CREATE INDEX "IX_CreditLimit_BusinessID" ON "CreditLimit" ("BusinessID")
/

CREATE INDEX "IX_CreditLimit_BusinessProfileRecordID" ON "CreditLimit" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CreditLimit_ContactID" ON "CreditLimit" ("ContactID")
/

CREATE INDEX "IX_CreditLimit_ContactProfileID" ON "CreditLimit" ("ContactProfileID")
/

CREATE INDEX "IX_CreditLimit_CurrencyID" ON "CreditLimit" ("CurrencyID")
/

CREATE INDEX "IX_Currency_CountryID" ON "Currency" ("CountryID")
/

CREATE UNIQUE INDEX "IX_Curriculum_SocialProfileID" ON "Curriculum" ("SocialProfileID")
/

CREATE INDEX "IX_CurriculumRecord_AcademicInstitutionProfileID" ON "CurriculumRecord" ("AcademicInstitutionProfileID")
/

CREATE INDEX "IX_CurriculumRecord_BusinessID" ON "CurriculumRecord" ("BusinessID")
/

CREATE INDEX "IX_CurriculumRecord_BusinessProfileRecordID" ON "CurriculumRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CurriculumRecord_CurriculumID" ON "CurriculumRecord" ("CurriculumID")
/

CREATE INDEX "IX_CurriculumRecord_CurriculumSkillID" ON "CurriculumRecord" ("CurriculumSkillID")
/

CREATE INDEX "IX_CurriculumRecord_InstitutionDiploma_AcademicInstitutionProfileID" ON "CurriculumRecord" ("InstitutionDiploma_AcademicInstitutionProfileID")
/

CREATE INDEX "IX_CurriculumRecord_JobOfferID" ON "CurriculumRecord" ("JobOfferID")
/

CREATE INDEX "IX_CurriculumRecord_ProfessionalDegree_AcademicInstitutionProfileID" ON "CurriculumRecord" ("ProfessionalDegree_AcademicInstitutionProfileID")
/

CREATE INDEX "IX_CurriculumRecord_ProficiencyRatingModelID" ON "CurriculumRecord" ("ProficiencyRatingModelID")
/

CREATE INDEX "IX_CurriculumRecord_ProficiencyRatingValueID" ON "CurriculumRecord" ("ProficiencyRatingValueID")
/

CREATE INDEX "IX_CurriculumSkill_BusinessID" ON "CurriculumSkill" ("BusinessID")
/

CREATE INDEX "IX_CurriculumSkill_BusinessProfileRecordID" ON "CurriculumSkill" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_CustomProperty_BusinessID" ON "CustomProperty" ("BusinessID")
/

CREATE INDEX "IX_CustomPropertyRecord_ContactID" ON "CustomPropertyRecord" ("ContactID")
/

CREATE INDEX "IX_CustomPropertyRecord_CustomPropertyID" ON "CustomPropertyRecord" ("CustomPropertyID")
/

CREATE INDEX "IX_CustomPropertyRecord_DealUnitID" ON "CustomPropertyRecord" ("DealUnitID")
/

CREATE INDEX "IX_DealUnit_AccountHolderID" ON "DealUnit" ("AccountHolderID")
/

CREATE INDEX "IX_DealUnit_BusinessID" ON "DealUnit" ("BusinessID")
/

CREATE INDEX "IX_DealUnit_BusinessProfileRecordID" ON "DealUnit" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_DealUnit_BusinessTeamID" ON "DealUnit" ("BusinessTeamID")
/

CREATE INDEX "IX_DealUnit_CurrencyID" ON "DealUnit" ("CurrencyID")
/

CREATE INDEX "IX_DealUnit_DealUnitFlowID" ON "DealUnit" ("DealUnitFlowID")
/

CREATE INDEX "IX_DealUnit_DealUnitFlowStageID" ON "DealUnit" ("DealUnitFlowStageID")
/

CREATE INDEX "IX_DealUnit_IndividualID" ON "DealUnit" ("IndividualID")
/

CREATE INDEX "IX_DealUnit_MarketingCampaignID" ON "DealUnit" ("MarketingCampaignID")
/

CREATE INDEX "IX_DealUnit_OrganizationID" ON "DealUnit" ("OrganizationID")
/

CREATE INDEX "IX_DealUnit_PartnerProfileID" ON "DealUnit" ("PartnerProfileID")
/

CREATE INDEX "IX_DealUnit_PriceListID" ON "DealUnit" ("PriceListID")
/

CREATE INDEX "IX_DealUnit_ReceptorBusinessID" ON "DealUnit" ("ReceptorBusinessID")
/

CREATE INDEX "IX_DealUnit_TerritoryID" ON "DealUnit" ("TerritoryID")
/

CREATE INDEX "IX_DealUnit_WorkOrderTypeID" ON "DealUnit" ("WorkOrderTypeID")
/

CREATE INDEX "IX_DeliveryNote_BusinessID" ON "DeliveryNote" ("BusinessID")
/

CREATE INDEX "IX_Discount_BusinessID" ON "Discount" ("BusinessID")
/

CREATE INDEX "IX_Discount_BusinessProfileRecordID" ON "Discount" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Discount_DiscountListID" ON "Discount" ("DiscountListID")
/

CREATE INDEX "IX_DiscountList_BusinessID" ON "DiscountList" ("BusinessID")
/

CREATE INDEX "IX_DiscountList_BusinessProfileRecordID" ON "DiscountList" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_DiscountList_CurrencyID" ON "DiscountList" ("CurrencyID")
/

CREATE INDEX "IX_EmailGroup_BusinessID" ON "EmailGroup" ("BusinessID")
/

CREATE INDEX "IX_EmailGroup_BusinessProfileRecordID" ON "EmailGroup" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_EmailGroupMembership_BusinessID" ON "EmailGroupMembership" ("BusinessID")
/

CREATE INDEX "IX_EmailGroupMembership_BusinessProfileRecordID" ON "EmailGroupMembership" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_EmailGroupMembership_ContactID" ON "EmailGroupMembership" ("ContactID")
/

CREATE INDEX "IX_EmailGroupMembership_EmailGroupID" ON "EmailGroupMembership" ("EmailGroupID")
/

CREATE INDEX "IX_EmailRecord_AccountHolderID" ON "EmailRecord" ("AccountHolderID")
/

CREATE INDEX "IX_EmailRecord_BusinessID" ON "EmailRecord" ("BusinessID")
/

CREATE INDEX "IX_EmailRecord_BusinessProfileRecordID" ON "EmailRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_EmailRecord_EmailSignatureID" ON "EmailRecord" ("EmailSignatureID")
/

CREATE INDEX "IX_EmailRecord_EmailTemplateID" ON "EmailRecord" ("EmailTemplateID")
/

CREATE INDEX "IX_EmailRecord_IndividualID" ON "EmailRecord" ("IndividualID")
/

CREATE INDEX "IX_EmailRecord_MarketingCampaignID" ON "EmailRecord" ("MarketingCampaignID")
/

CREATE INDEX "IX_EmailRecord_OrganizationID" ON "EmailRecord" ("OrganizationID")
/

CREATE INDEX "IX_EmailRecord_ReceptorBusinessID" ON "EmailRecord" ("ReceptorBusinessID")
/

CREATE INDEX "IX_EmployeeBenefit_BusinessID" ON "EmployeeBenefit" ("BusinessID")
/

CREATE INDEX "IX_EmployeeBenefit_BusinessProfileRecordID" ON "EmployeeBenefit" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_EmployeeDegree_BusinessID" ON "EmployeeDegree" ("BusinessID")
/

CREATE INDEX "IX_EmployeeDegree_BusinessProfileRecordID" ON "EmployeeDegree" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_EmployeeDegree_EmployeeProfileID" ON "EmployeeDegree" ("EmployeeProfileID")
/

CREATE INDEX "IX_EmployeeTransfer_BusinessID" ON "EmployeeTransfer" ("BusinessID")
/

CREATE INDEX "IX_EmployeeTransfer_BusinessLocationID" ON "EmployeeTransfer" ("BusinessLocationID")
/

CREATE INDEX "IX_EmployeeTransfer_BusinessProfileRecordID" ON "EmployeeTransfer" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_EmployeeTransfer_EmployeeProfileID" ON "EmployeeTransfer" ("EmployeeProfileID")
/

CREATE INDEX "IX_EmployeeType_BusinessID" ON "EmployeeType" ("BusinessID")
/

CREATE INDEX "IX_EmployeeType_BusinessProfileRecordID" ON "EmployeeType" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Entitlement_AccountHolderID" ON "Entitlement" ("AccountHolderID")
/

CREATE INDEX "IX_Entitlement_BusinessID" ON "Entitlement" ("BusinessID")
/

CREATE INDEX "IX_Entitlement_BusinessProfileRecordID" ON "Entitlement" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Entitlement_ContactID" ON "Entitlement" ("ContactID")
/

CREATE INDEX "IX_Entitlement_ContactProfileID" ON "Entitlement" ("ContactProfileID")
/

CREATE INDEX "IX_Entitlement_EmployeeBenefitID" ON "Entitlement" ("EmployeeBenefitID")
/

CREATE INDEX "IX_Entitlement_EmployeeProfileID" ON "Entitlement" ("EmployeeProfileID")
/

CREATE INDEX "IX_Entitlement_IndividualID" ON "Entitlement" ("IndividualID")
/

CREATE INDEX "IX_Entitlement_LicenseTypeID" ON "Entitlement" ("LicenseTypeID")
/

CREATE INDEX "IX_Entitlement_LicensingProfileID" ON "Entitlement" ("LicensingProfileID")
/

CREATE INDEX "IX_Entitlement_OrganizationID" ON "Entitlement" ("OrganizationID")
/

CREATE INDEX "IX_Entitlement_PaymentTokenID" ON "Entitlement" ("PaymentTokenID")
/

CREATE INDEX "IX_Entitlement_ReceptorBusinessID" ON "Entitlement" ("ReceptorBusinessID")
/

CREATE INDEX "IX_Entitlement_ServiceID" ON "Entitlement" ("ServiceID")
/

CREATE INDEX "IX_Entitlement_ServiceLevelID" ON "Entitlement" ("ServiceLevelID")
/

CREATE INDEX "IX_Entitlement_SubscriptionPlanID" ON "Entitlement" ("SubscriptionPlanID")
/

CREATE INDEX "IX_Entitlement_WalletAccountID" ON "Entitlement" ("WalletAccountID")
/

CREATE INDEX "IX_ExpenseClaim_CostCentreID" ON "ExpenseClaim" ("CostCentreID")
/

CREATE INDEX "IX_ExpenseClaim_ExpenseTypeID" ON "ExpenseClaim" ("ExpenseTypeID")
/

CREATE INDEX "IX_FileUpload_AccountHolderID" ON "FileUpload" ("AccountHolderID")
/

CREATE INDEX "IX_FileUpload_AgreementID" ON "FileUpload" ("AgreementID")
/

CREATE INDEX "IX_FileUpload_AgreementRevisionID" ON "FileUpload" ("AgreementRevisionID")
/

CREATE INDEX "IX_FileUpload_BusinessID" ON "FileUpload" ("BusinessID")
/

CREATE INDEX "IX_FileUpload_BusinessProfileRecordID" ON "FileUpload" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_FileUpload_BusinessTeamID" ON "FileUpload" ("BusinessTeamID")
/

CREATE INDEX "IX_FileUpload_ContactID" ON "FileUpload" ("ContactID")
/

CREATE INDEX "IX_FileUpload_CourseAssignmentID" ON "FileUpload" ("CourseAssignmentID")
/

CREATE INDEX "IX_FileUpload_CourseID" ON "FileUpload" ("CourseID")
/

CREATE INDEX "IX_FileUpload_CurriculumRecordID" ON "FileUpload" ("CurriculumRecordID")
/

CREATE INDEX "IX_FileUpload_InquiryRequestID" ON "FileUpload" ("InquiryRequestID")
/

CREATE INDEX "IX_FileUpload_ItemAttachment_ItemID" ON "FileUpload" ("ItemAttachment_ItemID")
/

CREATE INDEX "IX_FileUpload_ItemID" ON "FileUpload" ("ItemID")
/

CREATE INDEX "IX_FileUpload_ParentFileUploadID" ON "FileUpload" ("ParentFileUploadID")
/

CREATE INDEX "IX_FileUpload_PrivateMessageID" ON "FileUpload" ("PrivateMessageID")
/

CREATE INDEX "IX_FileUpload_SalesLiteratureID" ON "FileUpload" ("SalesLiteratureID")
/

CREATE INDEX "IX_FileUpload_SocialCommentID" ON "FileUpload" ("SocialCommentID")
/

CREATE INDEX "IX_FileUpload_SocialMediaPostID" ON "FileUpload" ("SocialMediaPostID")
/

CREATE INDEX "IX_FileUpload_SocialPostID" ON "FileUpload" ("SocialPostID")
/

CREATE INDEX "IX_FileUpload_SocialProfileID" ON "FileUpload" ("SocialProfileID")
/

CREATE INDEX "IX_FileUpload_SupportRequestID" ON "FileUpload" ("SupportRequestID")
/

CREATE INDEX "IX_FileUpload_TaskID" ON "FileUpload" ("TaskID")
/

CREATE INDEX "IX_FinancialBook_BusinessID" ON "FinancialBook" ("BusinessID")
/

CREATE INDEX "IX_FiscalAuthority_BusinessID" ON "FiscalAuthority" ("BusinessID")
/

CREATE INDEX "IX_FiscalAuthority_BusinessProfileRecordID" ON "FiscalAuthority" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_FiscalAuthority_CountryID" ON "FiscalAuthority" ("CountryID")
/

CREATE INDEX "IX_FiscalIdentificationType_BusinessID" ON "FiscalIdentificationType" ("BusinessID")
/

CREATE INDEX "IX_FiscalIdentificationType_BusinessProfileRecordID" ON "FiscalIdentificationType" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_FiscalIdentificationType_FiscalAuthorityID" ON "FiscalIdentificationType" ("FiscalAuthorityID")
/

CREATE INDEX "IX_FiscalPeriod_BusinessID" ON "FiscalPeriod" ("BusinessID")
/

CREATE INDEX "IX_FiscalPeriod_BusinessProfileRecordID" ON "FiscalPeriod" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_FiscalPeriod_FiscalYearID" ON "FiscalPeriod" ("FiscalYearID")
/

CREATE INDEX "IX_FiscalRegime_BusinessID" ON "FiscalRegime" ("BusinessID")
/

CREATE INDEX "IX_FiscalRegime_BusinessProfileRecordID" ON "FiscalRegime" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_FiscalRegime_FiscalAuthorityID" ON "FiscalRegime" ("FiscalAuthorityID")
/

CREATE INDEX "IX_FiscalResponsibility_BusinessID" ON "FiscalResponsibility" ("BusinessID")
/

CREATE INDEX "IX_FiscalResponsibility_BusinessProfileRecordID" ON "FiscalResponsibility" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_FiscalResponsibility_FiscalAuthorityID" ON "FiscalResponsibility" ("FiscalAuthorityID")
/

CREATE INDEX "IX_FiscalResponsibilityRecord_BillingProfileID" ON "FiscalResponsibilityRecord" ("BillingProfileID")
/

CREATE INDEX "IX_FiscalResponsibilityRecord_BusinessID" ON "FiscalResponsibilityRecord" ("BusinessID")
/

CREATE INDEX "IX_FiscalResponsibilityRecord_BusinessProfileRecordID" ON "FiscalResponsibilityRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_FiscalResponsibilityRecord_FiscalResponsibilityID" ON "FiscalResponsibilityRecord" ("FiscalResponsibilityID")
/

CREATE INDEX "IX_FiscalYear_BusinessID" ON "FiscalYear" ("BusinessID")
/

CREATE INDEX "IX_FiscalYear_BusinessProfileRecordID" ON "FiscalYear" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_FiscalYear_FiscalAuthorityID" ON "FiscalYear" ("FiscalAuthorityID")
/

CREATE INDEX "IX_FiscalYearDistribution_BudgetID" ON "FiscalYearDistribution" ("BudgetID")
/

CREATE INDEX "IX_FiscalYearDistribution_BusinessID" ON "FiscalYearDistribution" ("BusinessID")
/

CREATE INDEX "IX_FiscalYearDistribution_BusinessProfileRecordID" ON "FiscalYearDistribution" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_FiscalYearDistribution_FiscalYearID" ON "FiscalYearDistribution" ("FiscalYearID")
/

CREATE INDEX "IX_FiscalYearRecord_BusinessID" ON "FiscalYearRecord" ("BusinessID")
/

CREATE INDEX "IX_FiscalYearRecord_BusinessProfileRecordID" ON "FiscalYearRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_FiscalYearRecord_ContactID" ON "FiscalYearRecord" ("ContactID")
/

CREATE INDEX "IX_FiscalYearRecord_FiscalPeriodID" ON "FiscalYearRecord" ("FiscalPeriodID")
/

CREATE INDEX "IX_FiscalYearRecord_FiscalYearID" ON "FiscalYearRecord" ("FiscalYearID")
/

CREATE INDEX "IX_FollowRecord_FollowedSocialProfileID" ON "FollowRecord" ("FollowedSocialProfileID")
/

CREATE INDEX "IX_FollowRecord_FollowerSocialProfileID" ON "FollowRecord" ("FollowerSocialProfileID")
/

CREATE INDEX "IX_ForeignExchangeSet_BusinessID" ON "ForeignExchangeSet" ("BusinessID")
/

CREATE INDEX "IX_ForeignExchangeSet_BusinessProfileRecordID" ON "ForeignExchangeSet" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ForeignKey_ColumnID" ON "ForeignKey" ("ColumnID")
/

CREATE INDEX "IX_ForeignKey_EntityID" ON "ForeignKey" ("EntityID")
/

CREATE INDEX "IX_ForeignKey_ForeignColumnID" ON "ForeignKey" ("ForeignColumnID")
/

CREATE INDEX "IX_ForeignKey_ForeignEntityID" ON "ForeignKey" ("ForeignEntityID")
/

CREATE INDEX "IX_GenericOption_AccountHolderID" ON "GenericOption" ("AccountHolderID")
/

CREATE INDEX "IX_GenericOption_BusinessApplicationID" ON "GenericOption" ("BusinessApplicationID")
/

CREATE INDEX "IX_GenericOption_BusinessID" ON "GenericOption" ("BusinessID")
/

CREATE INDEX "IX_GenericOption_ContactID" ON "GenericOption" ("ContactID")
/

CREATE INDEX "IX_GenericOption_WebPortalID" ON "GenericOption" ("WebPortalID")
/

CREATE INDEX "IX_GenericRecord_BusinessID" ON "GenericRecord" ("BusinessID")
/

CREATE INDEX "IX_GenericRecord_BusinessProfileRecordID" ON "GenericRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_GenericRecord_ItemID" ON "GenericRecord" ("ItemID")
/

CREATE INDEX "IX_GenericRecord_ItemPriceID" ON "GenericRecord" ("ItemPriceID")
/

CREATE INDEX "IX_GenericRecord_ItemPricingRuleRecord_ItemID" ON "GenericRecord" ("ItemPricingRuleRecord_ItemID")
/

CREATE INDEX "IX_GenericRecord_ItemRefundPolicyRecord_ItemID" ON "GenericRecord" ("ItemRefundPolicyRecord_ItemID")
/

CREATE INDEX "IX_GenericRecord_ItemReturnPolicyRecord_ItemID" ON "GenericRecord" ("ItemReturnPolicyRecord_ItemID")
/

CREATE INDEX "IX_GenericRecord_ItemSellingMarginPolicyID" ON "GenericRecord" ("ItemSellingMarginPolicyID")
/

CREATE INDEX "IX_GenericRecord_ItemSellingMarginPolicyRecord_ItemID" ON "GenericRecord" ("ItemSellingMarginPolicyRecord_ItemID")
/

CREATE INDEX "IX_GenericRecord_ItemWarrantyPolicyRecord_ItemID" ON "GenericRecord" ("ItemWarrantyPolicyRecord_ItemID")
/

CREATE INDEX "IX_GenericRecord_PriceListID" ON "GenericRecord" ("PriceListID")
/

CREATE INDEX "IX_GenericRecord_PricingRuleID" ON "GenericRecord" ("PricingRuleID")
/

CREATE INDEX "IX_GenericRecord_RefundPolicyID" ON "GenericRecord" ("RefundPolicyID")
/

CREATE INDEX "IX_GenericRecord_ReturnPolicyID" ON "GenericRecord" ("ReturnPolicyID")
/

CREATE INDEX "IX_GenericRecord_TaxPolicyID" ON "GenericRecord" ("TaxPolicyID")
/

CREATE INDEX "IX_GenericRecord_WarrantyPolicyID" ON "GenericRecord" ("WarrantyPolicyID")
/

CREATE INDEX "IX_Holiday_BusinessID" ON "Holiday" ("BusinessID")
/

CREATE INDEX "IX_HolidaySchedule_BusinessID" ON "HolidaySchedule" ("BusinessID")
/

CREATE INDEX "IX_HolidayScheduleRecord_HolidayID" ON "HolidayScheduleRecord" ("HolidayID")
/

CREATE INDEX "IX_HolidayScheduleRecord_HolidayScheduleID" ON "HolidayScheduleRecord" ("HolidayScheduleID")
/

CREATE INDEX "IX_InquiryRequest_AccountHolderID" ON "InquiryRequest" ("AccountHolderID")
/

CREATE INDEX "IX_InquiryRequest_BusinessID" ON "InquiryRequest" ("BusinessID")
/

CREATE INDEX "IX_InquiryRequest_BusinessProfileRecordID" ON "InquiryRequest" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_InquiryRequest_BusinessTeamID" ON "InquiryRequest" ("BusinessTeamID")
/

CREATE INDEX "IX_InquiryRequest_BusinessUnitID" ON "InquiryRequest" ("BusinessUnitID")
/

CREATE INDEX "IX_InquiryRequest_CountryID" ON "InquiryRequest" ("CountryID")
/

CREATE INDEX "IX_InquiryRequest_PaymentDisputeID" ON "InquiryRequest" ("PaymentDisputeID")
/

CREATE INDEX "IX_InquiryRequest_SocialProfileID" ON "InquiryRequest" ("SocialProfileID")
/

CREATE INDEX "IX_InquiryRequest_WalletAccountID" ON "InquiryRequest" ("WalletAccountID")
/

CREATE INDEX "IX_Integration_AccountHolderID" ON "Integration" ("AccountHolderID")
/

CREATE INDEX "IX_Integration_BusinessID" ON "Integration" ("BusinessID")
/

CREATE INDEX "IX_Integration_BusinessProfileRecordID" ON "Integration" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Invoice_AccountHolderID" ON "Invoice" ("AccountHolderID")
/

CREATE INDEX "IX_Invoice_BillingLocationID" ON "Invoice" ("BillingLocationID")
/

CREATE INDEX "IX_Invoice_BusinessID" ON "Invoice" ("BusinessID")
/

CREATE INDEX "IX_Invoice_BusinessProfileRecordID" ON "Invoice" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Invoice_CurrencyID" ON "Invoice" ("CurrencyID")
/

CREATE INDEX "IX_Invoice_EmmisorBillingProfileID" ON "Invoice" ("EmmisorBillingProfileID")
/

CREATE INDEX "IX_Invoice_EmmisorWalletAccountID" ON "Invoice" ("EmmisorWalletAccountID")
/

CREATE INDEX "IX_Invoice_IndividualID" ON "Invoice" ("IndividualID")
/

CREATE INDEX "IX_Invoice_InvoiceEnumerationRangeID" ON "Invoice" ("InvoiceEnumerationRangeID")
/

CREATE INDEX "IX_Invoice_OrderID" ON "Invoice" ("OrderID")
/

CREATE INDEX "IX_Invoice_OrganizationID" ON "Invoice" ("OrganizationID")
/

CREATE INDEX "IX_Invoice_PaymentModeID" ON "Invoice" ("PaymentModeID")
/

CREATE INDEX "IX_Invoice_PaymentTermID" ON "Invoice" ("PaymentTermID")
/

CREATE INDEX "IX_Invoice_PointOfSaleID" ON "Invoice" ("PointOfSaleID")
/

CREATE INDEX "IX_Invoice_PriceListID" ON "Invoice" ("PriceListID")
/

CREATE INDEX "IX_Invoice_ReceptorBillingProfileID" ON "Invoice" ("ReceptorBillingProfileID")
/

CREATE INDEX "IX_Invoice_ReceptorBusinessID" ON "Invoice" ("ReceptorBusinessID")
/

CREATE INDEX "IX_Invoice_ReceptorWalletAccountID" ON "Invoice" ("ReceptorWalletAccountID")
/

CREATE INDEX "IX_Invoice_ShippingLocationID" ON "Invoice" ("ShippingLocationID")
/

CREATE INDEX "IX_InvoiceAdjustment_BusinessID" ON "InvoiceAdjustment" ("BusinessID")
/

CREATE INDEX "IX_InvoiceAdjustment_BusinessProfileRecordID" ON "InvoiceAdjustment" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_InvoiceAdjustment_CurrencyID" ON "InvoiceAdjustment" ("CurrencyID")
/

CREATE INDEX "IX_InvoiceAdjustment_InvoiceID" ON "InvoiceAdjustment" ("InvoiceID")
/

CREATE INDEX "IX_InvoiceEnumerationRange_BusinessID" ON "InvoiceEnumerationRange" ("BusinessID")
/

CREATE INDEX "IX_InvoiceEnumerationRange_BusinessProfileRecordID" ON "InvoiceEnumerationRange" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_InvoiceEnumerationRange_FiscalAuthorityID" ON "InvoiceEnumerationRange" ("FiscalAuthorityID")
/

CREATE INDEX "IX_InvoiceReference_BusinessID" ON "InvoiceReference" ("BusinessID")
/

CREATE INDEX "IX_InvoiceReference_BusinessProfileRecordID" ON "InvoiceReference" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_InvoiceReference_ReferencedInvoiceID" ON "InvoiceReference" ("ReferencedInvoiceID")
/

CREATE INDEX "IX_InvoiceReference_ReferralInvoiceID" ON "InvoiceReference" ("ReferralInvoiceID")
/

CREATE INDEX "IX_InvoiceRelation_BusinessID" ON "InvoiceRelation" ("BusinessID")
/

CREATE INDEX "IX_InvoiceRelation_BusinessProfileRecordID" ON "InvoiceRelation" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_InvoiceRelation_InvoiceID" ON "InvoiceRelation" ("InvoiceID")
/

CREATE INDEX "IX_InvoiceRelation_ProjectID" ON "InvoiceRelation" ("ProjectID")
/

CREATE INDEX "IX_IPLookup_AccountHolderID" ON "IPLookup" ("AccountHolderID")
/

CREATE INDEX "IX_IPLookup_CountryID" ON "IPLookup" ("CountryID")
/

CREATE INDEX "IX_Item_BlockchainBlockID" ON "Item" ("BlockchainBlockID")
/

CREATE INDEX "IX_Item_BlockchainID" ON "Item" ("BlockchainID")
/

CREATE INDEX "IX_Item_BrandID" ON "Item" ("BrandID")
/

CREATE INDEX "IX_Item_BusinessID" ON "Item" ("BusinessID")
/

CREATE INDEX "IX_Item_BusinessProfileRecordID" ON "Item" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Item_CountryID" ON "Item" ("CountryID")
/

CREATE INDEX "IX_Item_CountryLanguageID" ON "Item" ("CountryLanguageID")
/

CREATE INDEX "IX_Item_CourseCategoryID" ON "Item" ("CourseCategoryID")
/

CREATE INDEX "IX_Item_CurrencyID" ON "Item" ("CurrencyID")
/

CREATE INDEX "IX_Item_InstructorProfileID" ON "Item" ("InstructorProfileID")
/

CREATE INDEX "IX_Item_ItemCategoryID" ON "Item" ("ItemCategoryID")
/

CREATE INDEX "IX_Item_ItemGoogleCategoryID" ON "Item" ("ItemGoogleCategoryID")
/

CREATE INDEX "IX_Item_ItemTypeID" ON "Item" ("ItemTypeID")
/

CREATE INDEX "IX_Item_ParentItemID" ON "Item" ("ParentItemID")
/

CREATE INDEX "IX_Item_ServiceID" ON "Item" ("ServiceID")
/

CREATE INDEX "IX_Item_ShippingClassID" ON "Item" ("ShippingClassID")
/

CREATE INDEX "IX_Item_SupplierProfileID" ON "Item" ("SupplierProfileID")
/

CREATE INDEX "IX_Item_UnitGroupID" ON "Item" ("UnitGroupID")
/

CREATE INDEX "IX_Item_UnitID" ON "Item" ("UnitID")
/

CREATE INDEX "IX_ItemAttribute_BusinessID" ON "ItemAttribute" ("BusinessID")
/

CREATE INDEX "IX_ItemAttributeOption_BusinessID" ON "ItemAttributeOption" ("BusinessID")
/

CREATE INDEX "IX_ItemAttributeOption_ItemAttributeID" ON "ItemAttributeOption" ("ItemAttributeID")
/

CREATE INDEX "IX_ItemAttributeOptionRecord_AttributeOptionID" ON "ItemAttributeOptionRecord" ("AttributeOptionID")
/

CREATE INDEX "IX_ItemAttributeOptionRecord_ItemID" ON "ItemAttributeOptionRecord" ("ItemID")
/

CREATE INDEX "IX_ItemBid_CurrencyID" ON "ItemBid" ("CurrencyID")
/

CREATE INDEX "IX_ItemBid_ItemID" ON "ItemBid" ("ItemID")
/

CREATE INDEX "IX_ItemBid_WalletAccountID" ON "ItemBid" ("WalletAccountID")
/

CREATE INDEX "IX_ItemBrand_BusinessID" ON "ItemBrand" ("BusinessID")
/

CREATE INDEX "IX_ItemBundle_BusinessID" ON "ItemBundle" ("BusinessID")
/

CREATE INDEX "IX_ItemBundleRecord_ChildItemID" ON "ItemBundleRecord" ("ChildItemID")
/

CREATE INDEX "IX_ItemBundleRecord_ItemBundleID" ON "ItemBundleRecord" ("ItemBundleID")
/

CREATE INDEX "IX_ItemBundleRecord_ParentItemID" ON "ItemBundleRecord" ("ParentItemID")
/

CREATE INDEX "IX_ItemCategory_BusinessID" ON "ItemCategory" ("BusinessID")
/

CREATE INDEX "IX_ItemCategory_BusinessProfileRecordID" ON "ItemCategory" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ItemCategory_ParentItemCategoryID" ON "ItemCategory" ("ParentItemCategoryID")
/

CREATE INDEX "IX_ItemCategoryRecord_ItemCategoryID" ON "ItemCategoryRecord" ("ItemCategoryID")
/

CREATE INDEX "IX_ItemCategoryRecord_ItemID" ON "ItemCategoryRecord" ("ItemID")
/

CREATE INDEX "IX_ItemFamily_BusinessID" ON "ItemFamily" ("BusinessID")
/

CREATE INDEX "IX_ItemFamilyRecord_ItemFamilyID" ON "ItemFamilyRecord" ("ItemFamilyID")
/

CREATE INDEX "IX_ItemFamilyRecord_ItemID" ON "ItemFamilyRecord" ("ItemID")
/

CREATE INDEX "IX_ItemGoogleCategory_ParentItemGoogleCategoryID" ON "ItemGoogleCategory" ("ParentItemGoogleCategoryID")
/

CREATE INDEX "IX_ItemGoogleCategoryRecord_ItemGoogleCategoryID" ON "ItemGoogleCategoryRecord" ("ItemGoogleCategoryID")
/

CREATE INDEX "IX_ItemGoogleCategoryRecord_ItemID" ON "ItemGoogleCategoryRecord" ("ItemID")
/

CREATE INDEX "IX_ItemGroup_BusinessID" ON "ItemGroup" ("BusinessID")
/

CREATE INDEX "IX_ItemGroupRecord_ItemGroupID" ON "ItemGroupRecord" ("ItemGroupID")
/

CREATE INDEX "IX_ItemGroupRecord_ItemID" ON "ItemGroupRecord" ("ItemID")
/

CREATE INDEX "IX_ItemImageRecord_ItemID" ON "ItemImageRecord" ("ItemID")
/

CREATE INDEX "IX_ItemImageRecord_ItemImageID" ON "ItemImageRecord" ("ItemImageID")
/

CREATE INDEX "IX_ItemOwnership_BlockchainBlockID" ON "ItemOwnership" ("BlockchainBlockID")
/

CREATE INDEX "IX_ItemOwnership_CartID" ON "ItemOwnership" ("CartID")
/

CREATE INDEX "IX_ItemOwnership_ItemBidID" ON "ItemOwnership" ("ItemBidID")
/

CREATE INDEX "IX_ItemOwnership_ItemID" ON "ItemOwnership" ("ItemID")
/

CREATE INDEX "IX_ItemOwnership_WalletAccountID" ON "ItemOwnership" ("WalletAccountID")
/

CREATE INDEX "IX_ItemPackingSlip_BusinessID" ON "ItemPackingSlip" ("BusinessID")
/

CREATE INDEX "IX_ItemPackingSlip_DeliveryNoteID" ON "ItemPackingSlip" ("DeliveryNoteID")
/

CREATE INDEX "IX_ItemPackingSlip_OrderID" ON "ItemPackingSlip" ("OrderID")
/

CREATE INDEX "IX_ItemPackingSlipEntry_BusinessID" ON "ItemPackingSlipEntry" ("BusinessID")
/

CREATE INDEX "IX_ItemPackingSlipEntry_ItemID" ON "ItemPackingSlipEntry" ("ItemID")
/

CREATE INDEX "IX_ItemPackingSlipEntry_ItemPackingSlipID" ON "ItemPackingSlipEntry" ("ItemPackingSlipID")
/

CREATE INDEX "IX_ItemPickList_BusinessID" ON "ItemPickList" ("BusinessID")
/

CREATE INDEX "IX_ItemPickList_OrderID" ON "ItemPickList" ("OrderID")
/

CREATE INDEX "IX_ItemPickList_WarehouseID" ON "ItemPickList" ("WarehouseID")
/

CREATE INDEX "IX_ItemPickListEntry_BillingCouponCartRecordID" ON "ItemPickListEntry" ("BillingCouponCartRecordID")
/

CREATE INDEX "IX_ItemPickListEntry_BillingCouponItemRecordID" ON "ItemPickListEntry" ("BillingCouponItemRecordID")
/

CREATE INDEX "IX_ItemPickListEntry_BillingCouponOrderRecordID" ON "ItemPickListEntry" ("BillingCouponOrderRecordID")
/

CREATE INDEX "IX_ItemPickListEntry_BusinessID" ON "ItemPickListEntry" ("BusinessID")
/

CREATE INDEX "IX_ItemPickListEntry_DealUnitItemRecordID" ON "ItemPickListEntry" ("DealUnitItemRecordID")
/

CREATE INDEX "IX_ItemPickListEntry_InvoiceItemRecordID" ON "ItemPickListEntry" ("InvoiceItemRecordID")
/

CREATE INDEX "IX_ItemPickListEntry_ItemID" ON "ItemPickListEntry" ("ItemID")
/

CREATE INDEX "IX_ItemPickListEntry_ItemPickListID" ON "ItemPickListEntry" ("ItemPickListID")
/

CREATE INDEX "IX_ItemPickListEntry_OrderItemRecordID" ON "ItemPickListEntry" ("OrderItemRecordID")
/

CREATE INDEX "IX_ItemPickListEntry_QuoteItemRecordID" ON "ItemPickListEntry" ("QuoteItemRecordID")
/

CREATE INDEX "IX_ItemPickListEntry_WarehouseID" ON "ItemPickListEntry" ("WarehouseID")
/

CREATE INDEX "IX_ItemQuestion_BusinessID" ON "ItemQuestion" ("BusinessID")
/

CREATE INDEX "IX_ItemQuestion_ItemID" ON "ItemQuestion" ("ItemID")
/

CREATE INDEX "IX_ItemQuestion_SocialProfileID" ON "ItemQuestion" ("SocialProfileID")
/

CREATE INDEX "IX_ItemQuestionReply_BusinessID" ON "ItemQuestionReply" ("BusinessID")
/

CREATE INDEX "IX_ItemQuestionReply_ItemQuestionID" ON "ItemQuestionReply" ("ItemQuestionID")
/

CREATE INDEX "IX_ItemQuestionReply_SocialProfileID" ON "ItemQuestionReply" ("SocialProfileID")
/

CREATE INDEX "IX_ItemRestock_BusinessID" ON "ItemRestock" ("BusinessID")
/

CREATE INDEX "IX_ItemRestockEntry_BusinessID" ON "ItemRestockEntry" ("BusinessID")
/

CREATE INDEX "IX_ItemRestockEntry_ItemID" ON "ItemRestockEntry" ("ItemID")
/

CREATE INDEX "IX_ItemRestockEntry_ItemRestockID" ON "ItemRestockEntry" ("ItemRestockID")
/

CREATE INDEX "IX_ItemRestockEntry_OrderItemRecordID" ON "ItemRestockEntry" ("OrderItemRecordID")
/

CREATE INDEX "IX_ItemRestockEntry_WarehouseID" ON "ItemRestockEntry" ("WarehouseID")
/

CREATE INDEX "IX_ItemRetainSample_BusinessID" ON "ItemRetainSample" ("BusinessID")
/

CREATE INDEX "IX_ItemRetainSample_ItemID" ON "ItemRetainSample" ("ItemID")
/

CREATE INDEX "IX_ItemRetainSample_WarehouseID" ON "ItemRetainSample" ("WarehouseID")
/

CREATE INDEX "IX_ItemShippingPolicyRecord_BusinessID" ON "ItemShippingPolicyRecord" ("BusinessID")
/

CREATE INDEX "IX_ItemShippingPolicyRecord_ItemID" ON "ItemShippingPolicyRecord" ("ItemID")
/

CREATE INDEX "IX_ItemShippingPolicyRecord_ItemShippingPolicyID" ON "ItemShippingPolicyRecord" ("ItemShippingPolicyID")
/

CREATE INDEX "IX_ItemTag_BusinessID" ON "ItemTag" ("BusinessID")
/

CREATE INDEX "IX_ItemTagRecord_ItemID" ON "ItemTagRecord" ("ItemID")
/

CREATE INDEX "IX_ItemTagRecord_ItemTagID" ON "ItemTagRecord" ("ItemTagID")
/

CREATE INDEX "IX_ItemType_BusinessID" ON "ItemType" ("BusinessID")
/

CREATE INDEX "IX_ItemType_ItemCategoryID" ON "ItemType" ("ItemCategoryID")
/

CREATE INDEX "IX_ItemType_ItemGoogleCategoryID" ON "ItemType" ("ItemGoogleCategoryID")
/

CREATE INDEX "IX_ItemTypeRecord_ItemID" ON "ItemTypeRecord" ("ItemID")
/

CREATE INDEX "IX_ItemTypeRecord_ItemTypeID" ON "ItemTypeRecord" ("ItemTypeID")
/

CREATE INDEX "IX_JobField_BusinessID" ON "JobField" ("BusinessID")
/

CREATE INDEX "IX_JobOffer_BusinessID" ON "JobOffer" ("BusinessID")
/

CREATE INDEX "IX_JobOffer_BusinessProfileRecordID" ON "JobOffer" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_JobOffer_CityID" ON "JobOffer" ("CityID")
/

CREATE INDEX "IX_JobOffer_CountryID" ON "JobOffer" ("CountryID")
/

CREATE INDEX "IX_JobOffer_CountryStateID" ON "JobOffer" ("CountryStateID")
/

CREATE INDEX "IX_JobOffer_EmployerProfileID" ON "JobOffer" ("EmployerProfileID")
/

CREATE INDEX "IX_JobOffer_JobFieldID" ON "JobOffer" ("JobFieldID")
/

CREATE INDEX "IX_JobOffer_JobTitleID" ON "JobOffer" ("JobTitleID")
/

CREATE INDEX "IX_JobOfferApplication_CurriculumID" ON "JobOfferApplication" ("CurriculumID")
/

CREATE INDEX "IX_JobOfferApplication_JobApplicantProfileID" ON "JobOfferApplication" ("JobApplicantProfileID")
/

CREATE INDEX "IX_JobOfferApplication_JobOfferID" ON "JobOfferApplication" ("JobOfferID")
/

CREATE INDEX "IX_JobTitle_BusinessID" ON "JobTitle" ("BusinessID")
/

CREATE INDEX "IX_JobTitle_BusinessProfileRecordID" ON "JobTitle" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Journal_BusinessID" ON "Journal" ("BusinessID")
/

CREATE INDEX "IX_Journal_BusinessProfileRecordID" ON "Journal" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Journal_JournalTypeID" ON "Journal" ("JournalTypeID")
/

CREATE INDEX "IX_Journal_LedgerID" ON "Journal" ("LedgerID")
/

CREATE INDEX "IX_Journal_ParentJournalID" ON "Journal" ("ParentJournalID")
/

CREATE INDEX "IX_JournalEntry_BusinessID" ON "JournalEntry" ("BusinessID")
/

CREATE INDEX "IX_JournalEntry_BusinessProfileRecordID" ON "JournalEntry" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_JournalEntry_CreditAccountID" ON "JournalEntry" ("CreditAccountID")
/

CREATE INDEX "IX_JournalEntry_CurrencyID" ON "JournalEntry" ("CurrencyID")
/

CREATE INDEX "IX_JournalEntry_DebitAccountID" ON "JournalEntry" ("DebitAccountID")
/

CREATE INDEX "IX_JournalEntry_FinancialBookID" ON "JournalEntry" ("FinancialBookID")
/

CREATE INDEX "IX_JournalEntry_JournalID" ON "JournalEntry" ("JournalID")
/

CREATE INDEX "IX_JournalEntry_ParentJournalEntryID" ON "JournalEntry" ("ParentJournalEntryID")
/

CREATE INDEX "IX_JournalType_BusinessID" ON "JournalType" ("BusinessID")
/

CREATE INDEX "IX_JournalType_BusinessProfileRecordID" ON "JournalType" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_KanbanBoard_BusinessID" ON "KanbanBoard" ("BusinessID")
/

CREATE INDEX "IX_KanbanBoard_BusinessProfileRecordID" ON "KanbanBoard" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_KanbanBoard_ProjectID" ON "KanbanBoard" ("ProjectID")
/

CREATE INDEX "IX_LeaveApplication_BusinessID" ON "LeaveApplication" ("BusinessID")
/

CREATE INDEX "IX_LeaveApplication_BusinessProfileRecordID" ON "LeaveApplication" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_LeaveApplication_EmployeeProfileID" ON "LeaveApplication" ("EmployeeProfileID")
/

CREATE INDEX "IX_LeaveApplication_LeaveTypeID" ON "LeaveApplication" ("LeaveTypeID")
/

CREATE INDEX "IX_LeaveReport_BusinessID" ON "LeaveReport" ("BusinessID")
/

CREATE INDEX "IX_LeaveReport_BusinessProfileRecordID" ON "LeaveReport" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_LeaveReport_LeaveApplicationID" ON "LeaveReport" ("LeaveApplicationID")
/

CREATE INDEX "IX_LeaveType_BusinessID" ON "LeaveType" ("BusinessID")
/

CREATE INDEX "IX_Ledger_BusinessID" ON "Ledger" ("BusinessID")
/

CREATE INDEX "IX_Ledger_BusinessProfileRecordID" ON "Ledger" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Ledger_LedgerTypeID" ON "Ledger" ("LedgerTypeID")
/

CREATE INDEX "IX_LedgerType_BusinessID" ON "LedgerType" ("BusinessID")
/

CREATE INDEX "IX_LedgerType_BusinessProfileRecordID" ON "LedgerType" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_LicenseAssignment_BusinessID" ON "LicenseAssignment" ("BusinessID")
/

CREATE INDEX "IX_LicenseAssignment_BusinessProfileRecordID" ON "LicenseAssignment" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_LicenseAssignment_LicenseID" ON "LicenseAssignment" ("LicenseID")
/

CREATE INDEX "IX_LicenseAssignment_LicensingProfileID" ON "LicenseAssignment" ("LicensingProfileID")
/

CREATE INDEX "IX_LicenseAttribute_BusinessID" ON "LicenseAttribute" ("BusinessID")
/

CREATE INDEX "IX_LicenseAttribute_BusinessProfileRecordID" ON "LicenseAttribute" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_LicenseAttribute_LicenseTypeID" ON "LicenseAttribute" ("LicenseTypeID")
/

CREATE INDEX "IX_LicenseFeature_AccessKeyPairID" ON "LicenseFeature" ("AccessKeyPairID")
/

CREATE INDEX "IX_LicenseFeature_BusinessID" ON "LicenseFeature" ("BusinessID")
/

CREATE INDEX "IX_LicenseFeature_BusinessProfileRecordID" ON "LicenseFeature" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_LicenseFeature_LicenseTypeID" ON "LicenseFeature" ("LicenseTypeID")
/

CREATE INDEX "IX_LicenseValidation_BusinessID" ON "LicenseValidation" ("BusinessID")
/

CREATE INDEX "IX_LocalizationResource_BusinessID" ON "LocalizationResource" ("BusinessID")
/

CREATE INDEX "IX_LocalizationResource_CountryLanguageID" ON "LocalizationResource" ("CountryLanguageID")
/

CREATE INDEX "IX_LocalizationResource_CountryLanguageRecordID" ON "LocalizationResource" ("CountryLanguageRecordID")
/

CREATE INDEX "IX_LocalizationResource_LocalizationStringID" ON "LocalizationResource" ("LocalizationStringID")
/

CREATE INDEX "IX_Location_AccountHolderID" ON "Location" ("AccountHolderID")
/

CREATE INDEX "IX_Location_BusinessID" ON "Location" ("BusinessID")
/

CREATE INDEX "IX_Location_BusinessProfileRecordID" ON "Location" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Location_CityID" ON "Location" ("CityID")
/

CREATE INDEX "IX_Location_ContactID" ON "Location" ("ContactID")
/

CREATE INDEX "IX_Location_CountryID" ON "Location" ("CountryID")
/

CREATE INDEX "IX_Location_CountryStateID" ON "Location" ("CountryStateID")
/

CREATE INDEX "IX_Location_ParentWarehouseID" ON "Location" ("ParentWarehouseID")
/

CREATE INDEX "IX_Location_SocialProfileID" ON "Location" ("SocialProfileID")
/

CREATE INDEX "IX_Location_SupplierProfileID" ON "Location" ("SupplierProfileID")
/

CREATE INDEX "IX_MaintenanceVisit_BusinessID" ON "MaintenanceVisit" ("BusinessID")
/

CREATE INDEX "IX_MaintenanceVisit_BusinessProfileRecordID" ON "MaintenanceVisit" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_MarketingArea_BusinessID" ON "MarketingArea" ("BusinessID")
/

CREATE INDEX "IX_MarketingArea_BusinessProfileRecordID" ON "MarketingArea" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_MarketingAreaSubscription_BusinessID" ON "MarketingAreaSubscription" ("BusinessID")
/

CREATE INDEX "IX_MarketingAreaSubscription_MarketingAreaID" ON "MarketingAreaSubscription" ("MarketingAreaID")
/

CREATE INDEX "IX_MarketingAreaSubscription_PartnerProfileID" ON "MarketingAreaSubscription" ("PartnerProfileID")
/

CREATE INDEX "IX_MarketingCampaign_BusinessID" ON "MarketingCampaign" ("BusinessID")
/

CREATE INDEX "IX_MarketingCampaign_BusinessProfileRecordID" ON "MarketingCampaign" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_MarketingCampaign_CurrencyID" ON "MarketingCampaign" ("CurrencyID")
/

CREATE INDEX "IX_MarketingCampaign_MarketingAreaID" ON "MarketingCampaign" ("MarketingAreaID")
/

CREATE INDEX "IX_MarketingCampaign_MarketingListID" ON "MarketingCampaign" ("MarketingListID")
/

CREATE INDEX "IX_MarketingCampaignResponse_BusinessID" ON "MarketingCampaignResponse" ("BusinessID")
/

CREATE INDEX "IX_MarketingCampaignResponse_BusinessProfileRecordID" ON "MarketingCampaignResponse" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_MarketingCampaignResponse_ContactID" ON "MarketingCampaignResponse" ("ContactID")
/

CREATE INDEX "IX_MarketingCampaignResponse_MarketingCampaignID" ON "MarketingCampaignResponse" ("MarketingCampaignID")
/

CREATE INDEX "IX_MarketingList_BusinessID" ON "MarketingList" ("BusinessID")
/

CREATE INDEX "IX_MarketingList_BusinessProfileRecordID" ON "MarketingList" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_MarketingList_CurrencyID" ON "MarketingList" ("CurrencyID")
/

CREATE INDEX "IX_MarketingListMembership_BusinessID" ON "MarketingListMembership" ("BusinessID")
/

CREATE INDEX "IX_MarketingListMembership_BusinessProfileRecordID" ON "MarketingListMembership" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_MarketingListMembership_LeadProfileID" ON "MarketingListMembership" ("LeadProfileID")
/

CREATE INDEX "IX_MarketingListMembership_MarketingListID" ON "MarketingListMembership" ("MarketingListID")
/

CREATE INDEX "IX_MenuContext_AccountHolderID" ON "MenuContext" ("AccountHolderID")
/

CREATE INDEX "IX_MenuContext_BusinessID" ON "MenuContext" ("BusinessID")
/

CREATE INDEX "IX_MenuContext_WebPortalID" ON "MenuContext" ("WebPortalID")
/

CREATE INDEX "IX_MenuContextItem_MenuContextID" ON "MenuContextItem" ("MenuContextID")
/

CREATE INDEX "IX_MenuContextItem_ParentMenuContextItemID" ON "MenuContextItem" ("ParentMenuContextItemID")
/

CREATE INDEX "IX_Newsletter_BusinessID" ON "Newsletter" ("BusinessID")
/

CREATE INDEX "IX_Newsletter_BusinessProfileRecordID" ON "Newsletter" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_NewsletterSubscription_AccountHolderID" ON "NewsletterSubscription" ("AccountHolderID")
/

CREATE INDEX "IX_NewsletterSubscription_BusinessID" ON "NewsletterSubscription" ("BusinessID")
/

CREATE INDEX "IX_NewsletterSubscription_BusinessProfileRecordID" ON "NewsletterSubscription" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_NewsletterSubscription_ContactID" ON "NewsletterSubscription" ("ContactID")
/

CREATE INDEX "IX_NewsletterSubscription_NewsletterID" ON "NewsletterSubscription" ("NewsletterID")
/

CREATE INDEX "IX_Notification_SocialProfileID" ON "Notification" ("SocialProfileID")
/

CREATE INDEX "IX_OpenIddictEntityFrameworkCoreApplication_BusinessApplicationID" ON "OpenIddictEntityFrameworkCoreApplication" ("BusinessApplicationID")
/

CREATE INDEX "IX_OpenIddictEntityFrameworkCoreApplication_BusinessID" ON "OpenIddictEntityFrameworkCoreApplication" ("BusinessID")
/

CREATE INDEX "IX_OpenIddictEntityFrameworkCoreApplication_BusinessProfileRecordID" ON "OpenIddictEntityFrameworkCoreApplication" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_OpenIddictEntityFrameworkCoreAuthorization_ApplicationId" ON "OpenIddictEntityFrameworkCoreAuthorization" ("ApplicationId")
/

CREATE INDEX "IX_OpenIddictEntityFrameworkCoreToken_ApplicationId" ON "OpenIddictEntityFrameworkCoreToken" ("ApplicationId")
/

CREATE INDEX "IX_OpenIddictEntityFrameworkCoreToken_AuthorizationId" ON "OpenIddictEntityFrameworkCoreToken" ("AuthorizationId")
/

CREATE INDEX "IX_Order_AccountHolderID" ON "Order" ("AccountHolderID")
/

CREATE INDEX "IX_Order_BillingAddressID" ON "Order" ("BillingAddressID")
/

CREATE INDEX "IX_Order_BillingContactID" ON "Order" ("BillingContactID")
/

CREATE INDEX "IX_Order_BillingLocationID" ON "Order" ("BillingLocationID")
/

CREATE INDEX "IX_Order_BillingProfileID" ON "Order" ("BillingProfileID")
/

CREATE INDEX "IX_Order_BusinessID" ON "Order" ("BusinessID")
/

CREATE INDEX "IX_Order_BusinessProfileRecordID" ON "Order" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Order_CartID" ON "Order" ("CartID")
/

CREATE INDEX "IX_Order_CityID" ON "Order" ("CityID")
/

CREATE INDEX "IX_Order_CountryID" ON "Order" ("CountryID")
/

CREATE INDEX "IX_Order_CountryStateID" ON "Order" ("CountryStateID")
/

CREATE INDEX "IX_Order_CurrencyID" ON "Order" ("CurrencyID")
/

CREATE INDEX "IX_Order_IndividualID" ON "Order" ("IndividualID")
/

CREATE INDEX "IX_Order_OrganizationID" ON "Order" ("OrganizationID")
/

CREATE INDEX "IX_Order_ParentOrderID" ON "Order" ("ParentOrderID")
/

CREATE INDEX "IX_Order_PaymentTermID" ON "Order" ("PaymentTermID")
/

CREATE INDEX "IX_Order_PriceListID" ON "Order" ("PriceListID")
/

CREATE INDEX "IX_Order_QuoteID" ON "Order" ("QuoteID")
/

CREATE INDEX "IX_Order_ReceptorBusinessID" ON "Order" ("ReceptorBusinessID")
/

CREATE INDEX "IX_Order_SalesQuoteID" ON "Order" ("SalesQuoteID")
/

CREATE INDEX "IX_Order_ShippingAddressID" ON "Order" ("ShippingAddressID")
/

CREATE INDEX "IX_Order_ShippingContactID" ON "Order" ("ShippingContactID")
/

CREATE INDEX "IX_Order_ShippingLocationID" ON "Order" ("ShippingLocationID")
/

CREATE INDEX "IX_Order_ShippingMethodID" ON "Order" ("ShippingMethodID")
/

CREATE INDEX "IX_Order_WalletAccountID" ON "Order" ("WalletAccountID")
/

CREATE INDEX "IX_OrderItemReturn_BusinessID" ON "OrderItemReturn" ("BusinessID")
/

CREATE INDEX "IX_OrderItemReturn_BusinessProfileRecordID" ON "OrderItemReturn" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_OrderItemReturn_OrderID" ON "OrderItemReturn" ("OrderID")
/

CREATE INDEX "IX_OrderItemReturn_OrderItemRecordID" ON "OrderItemReturn" ("OrderItemRecordID")
/

CREATE INDEX "IX_OrderItemReturn_OrderReturnID" ON "OrderItemReturn" ("OrderReturnID")
/

CREATE INDEX "IX_OrderItemReturn_ReturnRequestID" ON "OrderItemReturn" ("ReturnRequestID")
/

CREATE INDEX "IX_OrderItemWarranty_BusinessID" ON "OrderItemWarranty" ("BusinessID")
/

CREATE INDEX "IX_OrderItemWarranty_BusinessProfileRecordID" ON "OrderItemWarranty" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_OrderItemWarranty_OrderWarrantyID" ON "OrderItemWarranty" ("OrderWarrantyID")
/

CREATE INDEX "IX_OrderItemWarranty_WarrantyRequestID" ON "OrderItemWarranty" ("WarrantyRequestID")
/

CREATE INDEX "IX_OrderRelation_BusinessID" ON "OrderRelation" ("BusinessID")
/

CREATE INDEX "IX_OrderRelation_BusinessProfileRecordID" ON "OrderRelation" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_OrderRelation_OrderID" ON "OrderRelation" ("OrderID")
/

CREATE INDEX "IX_OrderRelation_ProjectID" ON "OrderRelation" ("ProjectID")
/

CREATE INDEX "IX_OrderReturn_BusinessID" ON "OrderReturn" ("BusinessID")
/

CREATE INDEX "IX_OrderReturn_BusinessProfileRecordID" ON "OrderReturn" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_OrderReturn_OrderID" ON "OrderReturn" ("OrderID")
/

CREATE INDEX "IX_OrderReturn_ReturnRequestID" ON "OrderReturn" ("ReturnRequestID")
/

CREATE INDEX "IX_OrderWarranty_BusinessID" ON "OrderWarranty" ("BusinessID")
/

CREATE INDEX "IX_OrderWarranty_BusinessProfileRecordID" ON "OrderWarranty" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_OrderWarranty_WarrantyRequestID" ON "OrderWarranty" ("WarrantyRequestID")
/

CREATE INDEX "IX_Payment_AccountHolderID" ON "Payment" ("AccountHolderID")
/

CREATE INDEX "IX_Payment_AccountingEntryID" ON "Payment" ("AccountingEntryID")
/

CREATE INDEX "IX_Payment_BankAccountID" ON "Payment" ("BankAccountID")
/

CREATE INDEX "IX_Payment_BankID" ON "Payment" ("BankID")
/

CREATE INDEX "IX_Payment_BusinessID" ON "Payment" ("BusinessID")
/

CREATE INDEX "IX_Payment_BusinessProfileRecordID" ON "Payment" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Payment_CountryID" ON "Payment" ("CountryID")
/

CREATE INDEX "IX_Payment_CurrencyID" ON "Payment" ("CurrencyID")
/

CREATE INDEX "IX_Payment_EmmisorWalletAccountID" ON "Payment" ("EmmisorWalletAccountID")
/

CREATE INDEX "IX_Payment_EntitlementID" ON "Payment" ("EntitlementID")
/

CREATE INDEX "IX_Payment_FiscalIdentificationTypeID" ON "Payment" ("FiscalIdentificationTypeID")
/

CREATE INDEX "IX_Payment_IndividualID" ON "Payment" ("IndividualID")
/

CREATE INDEX "IX_Payment_InvoiceID" ON "Payment" ("InvoiceID")
/

CREATE INDEX "IX_Payment_IPLookupID" ON "Payment" ("IPLookupID")
/

CREATE INDEX "IX_Payment_LocationID" ON "Payment" ("LocationID")
/

CREATE INDEX "IX_Payment_OrderID" ON "Payment" ("OrderID")
/

CREATE INDEX "IX_Payment_OrganizationID" ON "Payment" ("OrganizationID")
/

CREATE INDEX "IX_Payment_PayerBusinessID" ON "Payment" ("PayerBusinessID")
/

CREATE INDEX "IX_Payment_PaymentGatewayID" ON "Payment" ("PaymentGatewayID")
/

CREATE INDEX "IX_Payment_PaymentTokenID" ON "Payment" ("PaymentTokenID")
/

CREATE INDEX "IX_Payment_ReceptorWalletAccountID" ON "Payment" ("ReceptorWalletAccountID")
/

CREATE INDEX "IX_PaymentDeduction_AccountID" ON "PaymentDeduction" ("AccountID")
/

CREATE INDEX "IX_PaymentDeduction_BusinessID" ON "PaymentDeduction" ("BusinessID")
/

CREATE INDEX "IX_PaymentDeduction_BusinessProfileRecordID" ON "PaymentDeduction" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_PaymentDeduction_CostCentreID" ON "PaymentDeduction" ("CostCentreID")
/

CREATE INDEX "IX_PaymentDeduction_CurrencyID" ON "PaymentDeduction" ("CurrencyID")
/

CREATE INDEX "IX_PaymentDeduction_PaymentID" ON "PaymentDeduction" ("PaymentID")
/

CREATE INDEX "IX_PaymentDispute_CurrencyID" ON "PaymentDispute" ("CurrencyID")
/

CREATE INDEX "IX_PaymentDispute_EmmisorWalletAccountID" ON "PaymentDispute" ("EmmisorWalletAccountID")
/

CREATE INDEX "IX_PaymentDispute_PaymentGatewayID" ON "PaymentDispute" ("PaymentGatewayID")
/

CREATE INDEX "IX_PaymentDispute_PaymentID" ON "PaymentDispute" ("PaymentID")
/

CREATE INDEX "IX_PaymentDispute_ReceptorWalletAccountID" ON "PaymentDispute" ("ReceptorWalletAccountID")
/

CREATE INDEX "IX_PaymentGateway_BusinessID" ON "PaymentGateway" ("BusinessID")
/

CREATE INDEX "IX_PaymentMode_BusinessID" ON "PaymentMode" ("BusinessID")
/

CREATE INDEX "IX_PaymentMode_BusinessProfileRecordID" ON "PaymentMode" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_PaymentRequest_BankAccountID" ON "PaymentRequest" ("BankAccountID")
/

CREATE INDEX "IX_PaymentRequest_BusinessID" ON "PaymentRequest" ("BusinessID")
/

CREATE INDEX "IX_PaymentRequest_BusinessProfileRecordID" ON "PaymentRequest" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_PaymentRequest_ContactID" ON "PaymentRequest" ("ContactID")
/

CREATE INDEX "IX_PaymentRequest_PaymentModeID" ON "PaymentRequest" ("PaymentModeID")
/

CREATE INDEX "IX_PaymentTerm_BusinessID" ON "PaymentTerm" ("BusinessID")
/

CREATE INDEX "IX_PaymentTerm_BusinessProfileRecordID" ON "PaymentTerm" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_PaymentTerm_PaymentModeID" ON "PaymentTerm" ("PaymentModeID")
/

CREATE INDEX "IX_PaymentToken_PaymentGatewayID" ON "PaymentToken" ("PaymentGatewayID")
/

CREATE INDEX "IX_PaymentToken_WalletAccountID" ON "PaymentToken" ("WalletAccountID")
/

CREATE INDEX "IX_Payroll_BusinessID" ON "Payroll" ("BusinessID")
/

CREATE INDEX "IX_Payroll_BusinessProfileRecordID" ON "Payroll" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Payroll_PayrollPeriodID" ON "Payroll" ("PayrollPeriodID")
/

CREATE INDEX "IX_PayrollEntry_BankAccountID" ON "PayrollEntry" ("BankAccountID")
/

CREATE INDEX "IX_PayrollEntry_BusinessID" ON "PayrollEntry" ("BusinessID")
/

CREATE INDEX "IX_PayrollEntry_CurrencyID" ON "PayrollEntry" ("CurrencyID")
/

CREATE INDEX "IX_PayrollEntry_PayrollID" ON "PayrollEntry" ("PayrollID")
/

CREATE INDEX "IX_PayrollEntry_SalaryID" ON "PayrollEntry" ("SalaryID")
/

CREATE INDEX "IX_PointOfSale_BusinessID" ON "PointOfSale" ("BusinessID")
/

CREATE INDEX "IX_PointOfSale_BusinessProfileRecordID" ON "PointOfSale" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_PointOfSale_LocationID" ON "PointOfSale" ("LocationID")
/

CREATE INDEX "IX_PointOfSale_PriceListID" ON "PointOfSale" ("PriceListID")
/

CREATE INDEX "IX_Policy_BusinessID" ON "Policy" ("BusinessID")
/

CREATE INDEX "IX_Policy_BusinessProfileRecordID" ON "Policy" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Policy_CityID" ON "Policy" ("CityID")
/

CREATE INDEX "IX_Policy_CountryID" ON "Policy" ("CountryID")
/

CREATE INDEX "IX_Policy_CountryStateID" ON "Policy" ("CountryStateID")
/

CREATE INDEX "IX_Policy_CurrencyID" ON "Policy" ("CurrencyID")
/

CREATE INDEX "IX_Policy_FiscalAuthorityID" ON "Policy" ("FiscalAuthorityID")
/

CREATE INDEX "IX_Policy_ReturnPolicy_ShippingCourierID" ON "Policy" ("ReturnPolicy_ShippingCourierID")
/

CREATE INDEX "IX_Policy_ShippingCourierID" ON "Policy" ("ShippingCourierID")
/

CREATE INDEX "IX_PriceList_BusinessID" ON "PriceList" ("BusinessID")
/

CREATE INDEX "IX_PriceList_BusinessProfileRecordID" ON "PriceList" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_PriceList_CurrencyID" ON "PriceList" ("CurrencyID")
/

CREATE INDEX "IX_PriceList_UnitGroupID" ON "PriceList" ("UnitGroupID")
/

CREATE INDEX "IX_PriceList_UnitID" ON "PriceList" ("UnitID")
/

CREATE INDEX "IX_PriceListItem_BusinessID" ON "PriceListItem" ("BusinessID")
/

CREATE INDEX "IX_PriceListItem_BusinessProfileRecordID" ON "PriceListItem" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_PriceListItem_CurrencyID" ON "PriceListItem" ("CurrencyID")
/

CREATE INDEX "IX_PriceListItem_DiscountListID" ON "PriceListItem" ("DiscountListID")
/

CREATE INDEX "IX_PriceListItem_ItemID" ON "PriceListItem" ("ItemID")
/

CREATE INDEX "IX_PriceListItem_ItemPriceListID" ON "PriceListItem" ("ItemPriceListID")
/

CREATE INDEX "IX_PriceListItem_PriceListID" ON "PriceListItem" ("PriceListID")
/

CREATE INDEX "IX_PriceListItem_RoundingPolicyID" ON "PriceListItem" ("RoundingPolicyID")
/

CREATE INDEX "IX_PriceListItem_TransactionCategoryID" ON "PriceListItem" ("TransactionCategoryID")
/

CREATE INDEX "IX_PriceListItem_UnitGroupID" ON "PriceListItem" ("UnitGroupID")
/

CREATE INDEX "IX_PriceListItem_UnitID" ON "PriceListItem" ("UnitID")
/

CREATE INDEX "IX_PriceListTerritory_BusinessID" ON "PriceListTerritory" ("BusinessID")
/

CREATE INDEX "IX_PriceListTerritory_BusinessProfileRecordID" ON "PriceListTerritory" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_PriceListTerritory_PriceListID" ON "PriceListTerritory" ("PriceListID")
/

CREATE INDEX "IX_PriceListTerritory_TerritoryID" ON "PriceListTerritory" ("TerritoryID")
/

CREATE INDEX "IX_PrivateMessage_ConversationID" ON "PrivateMessage" ("ConversationID")
/

CREATE INDEX "IX_PrivateMessage_ReceptorID" ON "PrivateMessage" ("ReceptorID")
/

CREATE INDEX "IX_PrivateMessage_SenderID" ON "PrivateMessage" ("SenderID")
/

CREATE INDEX "IX_ProductionPlan_BusinessID" ON "ProductionPlan" ("BusinessID")
/

CREATE INDEX "IX_ProficiencyRatingModel_BusinessID" ON "ProficiencyRatingModel" ("BusinessID")
/

CREATE INDEX "IX_ProficiencyRatingModel_BusinessProfileRecordID" ON "ProficiencyRatingModel" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ProficiencyRatingValue_BusinessID" ON "ProficiencyRatingValue" ("BusinessID")
/

CREATE INDEX "IX_ProficiencyRatingValue_BusinessProfileRecordID" ON "ProficiencyRatingValue" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ProficiencyRatingValue_ProficiencyRatingModelID" ON "ProficiencyRatingValue" ("ProficiencyRatingModelID")
/

CREATE INDEX "IX_Project_BusinessID" ON "Project" ("BusinessID")
/

CREATE INDEX "IX_Project_BusinessProfileRecordID" ON "Project" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Project_BusinessTeamID" ON "Project" ("BusinessTeamID")
/

CREATE INDEX "IX_Project_SocialProfileID" ON "Project" ("SocialProfileID")
/

CREATE INDEX "IX_ProjectBacklog_ProjectID" ON "ProjectBacklog" ("ProjectID")
/

CREATE INDEX "IX_ProjectJournal_BusinessID" ON "ProjectJournal" ("BusinessID")
/

CREATE INDEX "IX_ProjectJournal_BusinessProfileRecordID" ON "ProjectJournal" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ProjectResource_BusinessID" ON "ProjectResource" ("BusinessID")
/

CREATE INDEX "IX_ProjectResource_BusinessProfileRecordID" ON "ProjectResource" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ProjectResourceRole_BusinessID" ON "ProjectResourceRole" ("BusinessID")
/

CREATE INDEX "IX_ProjectResourceRole_BusinessProfileRecordID" ON "ProjectResourceRole" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ProjectResourceSkillRecord_BusinessID" ON "ProjectResourceSkillRecord" ("BusinessID")
/

CREATE INDEX "IX_ProjectResourceSkillRecord_BusinessProfileRecordID" ON "ProjectResourceSkillRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ProjectResourceSkillRecord_ProficiencyRatingValueID" ON "ProjectResourceSkillRecord" ("ProficiencyRatingValueID")
/

CREATE INDEX "IX_ProjectResourceSkillRecord_ProjectResourceID" ON "ProjectResourceSkillRecord" ("ProjectResourceID")
/

CREATE INDEX "IX_ProjectResourceSkillRecord_ProjectResourceRoleID" ON "ProjectResourceSkillRecord" ("ProjectResourceRoleID")
/

CREATE INDEX "IX_ProjectResourceSkillRecord_ProjectResourceSkillID" ON "ProjectResourceSkillRecord" ("ProjectResourceSkillID")
/

CREATE INDEX "IX_ProjectTaskBucket_BusinessID" ON "ProjectTaskBucket" ("BusinessID")
/

CREATE INDEX "IX_ProjectTaskBucket_BusinessProfileRecordID" ON "ProjectTaskBucket" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ProjectTaskBucket_KanbanBoardID" ON "ProjectTaskBucket" ("KanbanBoardID")
/

CREATE INDEX "IX_ProjectTaskBucket_ProjectID" ON "ProjectTaskBucket" ("ProjectID")
/

CREATE INDEX "IX_ProjectTaskRelationship_ChildProjectTaskID" ON "ProjectTaskRelationship" ("ChildProjectTaskID")
/

CREATE INDEX "IX_ProjectTaskRelationship_ParentProjectTaskID" ON "ProjectTaskRelationship" ("ParentProjectTaskID")
/

CREATE INDEX "IX_PurchaseRequest_BusinessID" ON "PurchaseRequest" ("BusinessID")
/

CREATE INDEX "IX_PurchaseRequest_BusinessProfileRecordID" ON "PurchaseRequest" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_PurchaseRequest_SupplierProfileID" ON "PurchaseRequest" ("SupplierProfileID")
/

CREATE INDEX "IX_Quote_AccountHolderID" ON "Quote" ("AccountHolderID")
/

CREATE INDEX "IX_Quote_BillingLocationID" ON "Quote" ("BillingLocationID")
/

CREATE INDEX "IX_Quote_BusinessID" ON "Quote" ("BusinessID")
/

CREATE INDEX "IX_Quote_BusinessProfileRecordID" ON "Quote" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Quote_CurrencyID" ON "Quote" ("CurrencyID")
/

CREATE INDEX "IX_Quote_DealUnitID" ON "Quote" ("DealUnitID")
/

CREATE INDEX "IX_Quote_IndividualID" ON "Quote" ("IndividualID")
/

CREATE INDEX "IX_Quote_OrganizationID" ON "Quote" ("OrganizationID")
/

CREATE INDEX "IX_Quote_PaymentTermID" ON "Quote" ("PaymentTermID")
/

CREATE INDEX "IX_Quote_PriceListID" ON "Quote" ("PriceListID")
/

CREATE INDEX "IX_Quote_ProjectID" ON "Quote" ("ProjectID")
/

CREATE INDEX "IX_Quote_ReceptorBusinessID" ON "Quote" ("ReceptorBusinessID")
/

CREATE INDEX "IX_Quote_ShippingLocationID" ON "Quote" ("ShippingLocationID")
/

CREATE INDEX "IX_Quote_ShippingMethodID" ON "Quote" ("ShippingMethodID")
/

CREATE INDEX "IX_Quote_SupplierProfileID" ON "Quote" ("SupplierProfileID")
/

CREATE INDEX "IX_QuoteRequest_BusinessID" ON "QuoteRequest" ("BusinessID")
/

CREATE INDEX "IX_QuoteRequest_ContactID" ON "QuoteRequest" ("ContactID")
/

CREATE INDEX "IX_Receipt_AccountHolderID" ON "Receipt" ("AccountHolderID")
/

CREATE INDEX "IX_Receipt_BusinessID" ON "Receipt" ("BusinessID")
/

CREATE INDEX "IX_Receipt_BusinessProfileRecordID" ON "Receipt" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Receipt_ContactID" ON "Receipt" ("ContactID")
/

CREATE INDEX "IX_Receipt_InvoiceID" ON "Receipt" ("InvoiceID")
/

CREATE INDEX "IX_Receipt_OrderID" ON "Receipt" ("OrderID")
/

CREATE INDEX "IX_Receipt_PaymentID" ON "Receipt" ("PaymentID")
/

CREATE INDEX "IX_RegionalBlockAlternativeAcronym_RegionalBlockID" ON "RegionalBlockAlternativeAcronym" ("RegionalBlockID")
/

CREATE INDEX "IX_RegionalBlockAlternativeName_RegionalBlockID" ON "RegionalBlockAlternativeName" ("RegionalBlockID")
/

CREATE INDEX "IX_RequiredSkillRecord_BusinessID" ON "RequiredSkillRecord" ("BusinessID")
/

CREATE INDEX "IX_RequiredSkillRecord_CurriculumSkillID" ON "RequiredSkillRecord" ("CurriculumSkillID")
/

CREATE INDEX "IX_RequiredSkillRecord_EmployerProfileID" ON "RequiredSkillRecord" ("EmployerProfileID")
/

CREATE INDEX "IX_RequiredSkillRecord_JobOfferID" ON "RequiredSkillRecord" ("JobOfferID")
/

CREATE INDEX "IX_RetentionBonus_BusinessID" ON "RetentionBonus" ("BusinessID")
/

CREATE INDEX "IX_RetentionBonus_BusinessProfileRecordID" ON "RetentionBonus" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_RetentionBonus_CurrencyID" ON "RetentionBonus" ("CurrencyID")
/

CREATE INDEX "IX_RetentionBonus_SalaryID" ON "RetentionBonus" ("SalaryID")
/

CREATE INDEX "IX_Review_BlogPostID" ON "Review" ("BlogPostID")
/

CREATE INDEX "IX_Review_BusinessID" ON "Review" ("BusinessID")
/

CREATE INDEX "IX_Review_ContactID" ON "Review" ("ContactID")
/

CREATE INDEX "IX_Review_ItemID" ON "Review" ("ItemID")
/

CREATE INDEX "IX_Review_SocialProfileID" ON "Review" ("SocialProfileID")
/

CREATE INDEX "IX_Review_SupplierProfileID" ON "Review" ("SupplierProfileID")
/

CREATE INDEX "IX_Review_TrainingProgramID" ON "Review" ("TrainingProgramID")
/

CREATE INDEX "IX_Review_TrainingProgramReview_BusinessID" ON "Review" ("TrainingProgramReview_BusinessID")
/

CREATE INDEX "IX_RolePriceMarkup_BusinessID" ON "RolePriceMarkup" ("BusinessID")
/

CREATE INDEX "IX_RolePriceMarkup_BusinessProfileRecordID" ON "RolePriceMarkup" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_RolePriceMarkup_PriceListID" ON "RolePriceMarkup" ("PriceListID")
/

CREATE INDEX "IX_Row_EntityID" ON "Row" ("EntityID")
/

CREATE INDEX "IX_Salary_BusinessID" ON "Salary" ("BusinessID")
/

CREATE INDEX "IX_Salary_BusinessProfileRecordID" ON "Salary" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Salary_CurrencyID" ON "Salary" ("CurrencyID")
/

CREATE INDEX "IX_Salary_EmployeeProfileID" ON "Salary" ("EmployeeProfileID")
/

CREATE INDEX "IX_SalaryDeduction_BusinessID" ON "SalaryDeduction" ("BusinessID")
/

CREATE INDEX "IX_SalaryDeduction_BusinessProfileRecordID" ON "SalaryDeduction" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_SalaryDeduction_CurrencyID" ON "SalaryDeduction" ("CurrencyID")
/

CREATE INDEX "IX_SalaryDeduction_SalaryID" ON "SalaryDeduction" ("SalaryID")
/

CREATE INDEX "IX_SalaryEarning_BusinessID" ON "SalaryEarning" ("BusinessID")
/

CREATE INDEX "IX_SalaryEarning_BusinessProfileRecordID" ON "SalaryEarning" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_SalaryEarning_CurrencyID" ON "SalaryEarning" ("CurrencyID")
/

CREATE INDEX "IX_SalaryEarning_SalaryID" ON "SalaryEarning" ("SalaryID")
/

CREATE INDEX "IX_SalesLiterature_BusinessID" ON "SalesLiterature" ("BusinessID")
/

CREATE INDEX "IX_SalesLiterature_BusinessProfileRecordID" ON "SalesLiterature" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_SalesLiterature_SalesLiteratureTypeID" ON "SalesLiterature" ("SalesLiteratureTypeID")
/

CREATE INDEX "IX_SalesLiteratureRecord_BusinessID" ON "SalesLiteratureRecord" ("BusinessID")
/

CREATE INDEX "IX_SalesLiteratureRecord_BusinessProfileRecordID" ON "SalesLiteratureRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_SalesLiteratureRecord_ItemID" ON "SalesLiteratureRecord" ("ItemID")
/

CREATE INDEX "IX_SalesLiteratureRecord_SalesLiteratureID" ON "SalesLiteratureRecord" ("SalesLiteratureID")
/

CREATE INDEX "IX_SalesLiteratureType_BusinessID" ON "SalesLiteratureType" ("BusinessID")
/

CREATE INDEX "IX_SalesLiteratureType_BusinessProfileRecordID" ON "SalesLiteratureType" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Schedule_AssetID" ON "Schedule" ("AssetID")
/

CREATE INDEX "IX_Schedule_BusinessID" ON "Schedule" ("BusinessID")
/

CREATE INDEX "IX_Schedule_ContactID" ON "Schedule" ("ContactID")
/

CREATE INDEX "IX_Schedule_FiscalYearID" ON "Schedule" ("FiscalYearID")
/

CREATE INDEX "IX_Schedule_HolidayScheduleID" ON "Schedule" ("HolidayScheduleID")
/

CREATE INDEX "IX_Schedule_ProjectID" ON "Schedule" ("ProjectID")
/

CREATE INDEX "IX_Schedule_ServiceID" ON "Schedule" ("ServiceID")
/

CREATE INDEX "IX_Schedule_TimezoneID" ON "Schedule" ("TimezoneID")
/

CREATE INDEX "IX_SecurityRoleGrant_BusinessApplicationID" ON "SecurityRoleGrant" ("BusinessApplicationID")
/

CREATE INDEX "IX_SecurityRoleGrant_BusinessID" ON "SecurityRoleGrant" ("BusinessID")
/

CREATE INDEX "IX_SecurityRoleGrant_BusinessProfileRecordID" ON "SecurityRoleGrant" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_SecurityRoleGrant_BusinessSecurityRoleID" ON "SecurityRoleGrant" ("BusinessSecurityRoleID")
/

CREATE INDEX "IX_SecurityRoleGrant_GrantorBusinessProfileRecordID" ON "SecurityRoleGrant" ("GrantorBusinessProfileRecordID")
/

CREATE INDEX "IX_SEOKeyWord_BusinessID" ON "SEOKeyWord" ("BusinessID")
/

CREATE INDEX "IX_SEOKeyWordRecord_SEOKeyWordID" ON "SEOKeyWordRecord" ("SEOKeyWordID")
/

CREATE INDEX "IX_ServiceCase_AccountHolderID" ON "ServiceCase" ("AccountHolderID")
/

CREATE INDEX "IX_ServiceCase_BusinessID" ON "ServiceCase" ("BusinessID")
/

CREATE INDEX "IX_ServiceCase_BusinessProfileRecordID" ON "ServiceCase" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ServiceCase_IndividualID" ON "ServiceCase" ("IndividualID")
/

CREATE INDEX "IX_ServiceCase_OrganizationID" ON "ServiceCase" ("OrganizationID")
/

CREATE INDEX "IX_ServiceCase_ReceptorBusinessID" ON "ServiceCase" ("ReceptorBusinessID")
/

CREATE INDEX "IX_ServiceCase_ServiceCaseTypeID" ON "ServiceCase" ("ServiceCaseTypeID")
/

CREATE INDEX "IX_ServiceCase_ServiceID" ON "ServiceCase" ("ServiceID")
/

CREATE INDEX "IX_ServiceCase_ServiceLevelAgreementID" ON "ServiceCase" ("ServiceLevelAgreementID")
/

CREATE INDEX "IX_ServiceCase_ServiceQueueID" ON "ServiceCase" ("ServiceQueueID")
/

CREATE INDEX "IX_ServiceCaseType_BusinessID" ON "ServiceCaseType" ("BusinessID")
/

CREATE INDEX "IX_ServiceCaseType_BusinessProfileRecordID" ON "ServiceCaseType" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ServicePersonnelRecord_EmployeeProfileID" ON "ServicePersonnelRecord" ("EmployeeProfileID")
/

CREATE INDEX "IX_ServicePersonnelRecord_ServiceCaseID" ON "ServicePersonnelRecord" ("ServiceCaseID")
/

CREATE INDEX "IX_ServicePersonnelRecord_ServiceID" ON "ServicePersonnelRecord" ("ServiceID")
/

CREATE INDEX "IX_ServiceQueue_BusinessID" ON "ServiceQueue" ("BusinessID")
/

CREATE INDEX "IX_ServiceQueue_BusinessProfileRecordID" ON "ServiceQueue" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ServiceQueue_BusinessTeamID" ON "ServiceQueue" ("BusinessTeamID")
/

CREATE INDEX "IX_ServiceQueueRecord_BusinessID" ON "ServiceQueueRecord" ("BusinessID")
/

CREATE INDEX "IX_ServiceQueueRecord_BusinessProfileRecordID" ON "ServiceQueueRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ServiceQueueRecord_ServiceID" ON "ServiceQueueRecord" ("ServiceID")
/

CREATE INDEX "IX_ServiceQueueRecord_ServiceQueueID" ON "ServiceQueueRecord" ("ServiceQueueID")
/

CREATE INDEX "IX_ShareClass_BusinessID" ON "ShareClass" ("BusinessID")
/

CREATE INDEX "IX_ShareClass_BusinessProfileRecordID" ON "ShareClass" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ShareClass_CurrencyID" ON "ShareClass" ("CurrencyID")
/

CREATE INDEX "IX_ShareIssuance_BusinessID" ON "ShareIssuance" ("BusinessID")
/

CREATE INDEX "IX_ShareIssuance_BusinessProfileRecordID" ON "ShareIssuance" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ShareIssuance_CurrencyID" ON "ShareIssuance" ("CurrencyID")
/

CREATE INDEX "IX_ShareTransfer_BusinessID" ON "ShareTransfer" ("BusinessID")
/

CREATE INDEX "IX_ShareTransfer_BusinessProfileRecordID" ON "ShareTransfer" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ShareTransfer_FormerShareHolderID" ON "ShareTransfer" ("FormerShareHolderID")
/

CREATE INDEX "IX_ShareTransfer_NewShareHolderID" ON "ShareTransfer" ("NewShareHolderID")
/

CREATE INDEX "IX_ShareTransfer_ShareTransferReasonID" ON "ShareTransfer" ("ShareTransferReasonID")
/

CREATE INDEX "IX_ShareTransferReason_BusinessID" ON "ShareTransferReason" ("BusinessID")
/

CREATE INDEX "IX_ShareTransferReason_BusinessProfileRecordID" ON "ShareTransferReason" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Shipment_BillingItemRecordID" ON "Shipment" ("BillingItemRecordID")
/

CREATE INDEX "IX_Shipment_BusinessID" ON "Shipment" ("BusinessID")
/

CREATE INDEX "IX_Shipment_OrderID" ON "Shipment" ("OrderID")
/

CREATE INDEX "IX_ShippingClass_BusinessID" ON "ShippingClass" ("BusinessID")
/

CREATE INDEX "IX_ShippingCourier_BusinessID" ON "ShippingCourier" ("BusinessID")
/

CREATE INDEX "IX_ShippingCourier_BusinessProfileRecordID" ON "ShippingCourier" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ShippingCourier_CountryID" ON "ShippingCourier" ("CountryID")
/

CREATE INDEX "IX_ShippingLabel_BusinessID" ON "ShippingLabel" ("BusinessID")
/

CREATE INDEX "IX_ShippingLabel_LocationID" ON "ShippingLabel" ("LocationID")
/

CREATE INDEX "IX_ShippingLabel_ShipmentID" ON "ShippingLabel" ("ShipmentID")
/

CREATE INDEX "IX_ShippingLabel_ShippingCourierID" ON "ShippingLabel" ("ShippingCourierID")
/

CREATE INDEX "IX_ShippingMethod_BusinessID" ON "ShippingMethod" ("BusinessID")
/

CREATE INDEX "IX_ShippingMethod_CurrencyID" ON "ShippingMethod" ("CurrencyID")
/

CREATE INDEX "IX_ShippingMethodClassRecord_BusinessID" ON "ShippingMethodClassRecord" ("BusinessID")
/

CREATE INDEX "IX_ShippingMethodClassRecord_CurrencyID" ON "ShippingMethodClassRecord" ("CurrencyID")
/

CREATE INDEX "IX_ShippingMethodClassRecord_ShippingClassID" ON "ShippingMethodClassRecord" ("ShippingClassID")
/

CREATE INDEX "IX_ShippingMethodClassRecord_ShippingMethodID" ON "ShippingMethodClassRecord" ("ShippingMethodID")
/

CREATE INDEX "IX_ShippingMethodZoneRecord_BusinessID" ON "ShippingMethodZoneRecord" ("BusinessID")
/

CREATE INDEX "IX_ShippingMethodZoneRecord_ShippingMethodID" ON "ShippingMethodZoneRecord" ("ShippingMethodID")
/

CREATE INDEX "IX_ShippingMethodZoneRecord_ShippingZoneID" ON "ShippingMethodZoneRecord" ("ShippingZoneID")
/

CREATE INDEX "IX_ShippingPackage_BusinessID" ON "ShippingPackage" ("BusinessID")
/

CREATE INDEX "IX_ShippingPackage_ShippingCourierID" ON "ShippingPackage" ("ShippingCourierID")
/

CREATE INDEX "IX_ShippingPackage_ShippingLabelID" ON "ShippingPackage" ("ShippingLabelID")
/

CREATE INDEX "IX_ShippingRegion_BusinessID" ON "ShippingRegion" ("BusinessID")
/

CREATE INDEX "IX_ShippingRegionCountryRecord_BusinessID" ON "ShippingRegionCountryRecord" ("BusinessID")
/

CREATE INDEX "IX_ShippingRegionCountryRecord_CountryID" ON "ShippingRegionCountryRecord" ("CountryID")
/

CREATE INDEX "IX_ShippingRegionCountryRecord_ShippingRegionID" ON "ShippingRegionCountryRecord" ("ShippingRegionID")
/

CREATE INDEX "IX_ShippingRegionZoneRecord_BusinessID" ON "ShippingRegionZoneRecord" ("BusinessID")
/

CREATE INDEX "IX_ShippingRegionZoneRecord_ShippingRegionID" ON "ShippingRegionZoneRecord" ("ShippingRegionID")
/

CREATE INDEX "IX_ShippingRegionZoneRecord_ShippingZoneID" ON "ShippingRegionZoneRecord" ("ShippingZoneID")
/

CREATE INDEX "IX_ShippingZone_BusinessID" ON "ShippingZone" ("BusinessID")
/

CREATE INDEX "IX_Signature_AccountHolderID" ON "Signature" ("AccountHolderID")
/

CREATE INDEX "IX_Signature_AgreementRevisionID" ON "Signature" ("AgreementRevisionID")
/

CREATE INDEX "IX_Signature_BusinessID" ON "Signature" ("BusinessID")
/

CREATE INDEX "IX_Signature_BusinessProfileRecordID" ON "Signature" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Signature_ContactID" ON "Signature" ("ContactID")
/

CREATE INDEX "IX_Signature_SigningCertificateID" ON "Signature" ("SigningCertificateID")
/

CREATE INDEX "IX_Signature_SigningDocumentID" ON "Signature" ("SigningDocumentID")
/

CREATE INDEX "IX_Signature_SigningProfileID" ON "Signature" ("SigningProfileID")
/

CREATE INDEX "IX_Signature_SocialProfileID" ON "Signature" ("SocialProfileID")
/

CREATE INDEX "IX_SignedDocument_AccountHolderID" ON "SignedDocument" ("AccountHolderID")
/

CREATE INDEX "IX_SignedDocument_BusinessID" ON "SignedDocument" ("BusinessID")
/

CREATE INDEX "IX_SignedDocument_BusinessProfileRecordID" ON "SignedDocument" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_SignedDocument_ContactID" ON "SignedDocument" ("ContactID")
/

CREATE INDEX "IX_SignedDocument_SignatorCertificateID" ON "SignedDocument" ("SignatorCertificateID")
/

CREATE INDEX "IX_SignedDocument_SigningProfileID" ON "SignedDocument" ("SigningProfileID")
/

CREATE INDEX "IX_SigningCertificate_AccountHolderID" ON "SigningCertificate" ("AccountHolderID")
/

CREATE INDEX "IX_SigningCertificate_BusinessID" ON "SigningCertificate" ("BusinessID")
/

CREATE INDEX "IX_SigningCertificate_BusinessProfileRecordID" ON "SigningCertificate" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_SigningCertificate_ContactID" ON "SigningCertificate" ("ContactID")
/

CREATE INDEX "IX_SigningCertificate_SigningProfileID" ON "SigningCertificate" ("SigningProfileID")
/

CREATE INDEX "IX_SocialBadge_BusinessID" ON "SocialBadge" ("BusinessID")
/

CREATE INDEX "IX_SocialBadge_BusinessProfileRecordID" ON "SocialBadge" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_SocialBadgeRecord_SocialBadgeID" ON "SocialBadgeRecord" ("SocialBadgeID")
/

CREATE INDEX "IX_SocialBadgeRecord_SocialProfileID" ON "SocialBadgeRecord" ("SocialProfileID")
/

CREATE INDEX "IX_SocialComment_BlogPostID" ON "SocialComment" ("BlogPostID")
/

CREATE INDEX "IX_SocialComment_OwnerSocialProfileID" ON "SocialComment" ("OwnerSocialProfileID")
/

CREATE INDEX "IX_SocialComment_ParentCommentID" ON "SocialComment" ("ParentCommentID")
/

CREATE INDEX "IX_SocialComment_SocialPostID" ON "SocialComment" ("SocialPostID")
/

CREATE UNIQUE INDEX "IX_SocialFeed_SocialProfileID" ON "SocialFeed" ("SocialProfileID")
/

CREATE INDEX "IX_SocialGroup_BusinessID" ON "SocialGroup" ("BusinessID")
/

CREATE INDEX "IX_SocialGroup_BusinessProfileRecordID" ON "SocialGroup" ("BusinessProfileRecordID")
/

CREATE UNIQUE INDEX "IX_SocialGroup_CourseID" ON "SocialGroup" ("CourseID")
/

CREATE INDEX "IX_SocialGroup_SocialProfileID" ON "SocialGroup" ("SocialProfileID")
/

CREATE INDEX "IX_SocialGroupEnrollmentRecord_GroupID" ON "SocialGroupEnrollmentRecord" ("GroupID")
/

CREATE INDEX "IX_SocialGroupEnrollmentRecord_SocialProfileID" ON "SocialGroupEnrollmentRecord" ("SocialProfileID")
/

CREATE INDEX "IX_SocialMediaPost_BusinessID" ON "SocialMediaPost" ("BusinessID")
/

CREATE INDEX "IX_SocialMediaPost_BusinessProfileRecordID" ON "SocialMediaPost" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_SocialMediaPost_SocialPostBucketID" ON "SocialMediaPost" ("SocialPostBucketID")
/

CREATE INDEX "IX_SocialPost_BlogPostID" ON "SocialPost" ("BlogPostID")
/

CREATE INDEX "IX_SocialPost_SocialFeedID" ON "SocialPost" ("SocialFeedID")
/

CREATE INDEX "IX_SocialPost_SocialGroupID" ON "SocialPost" ("SocialGroupID")
/

CREATE INDEX "IX_SocialPost_SocialProfileID" ON "SocialPost" ("SocialProfileID")
/

CREATE INDEX "IX_SocialPost_WebForumID" ON "SocialPost" ("WebForumID")
/

CREATE INDEX "IX_SocialPost_WebPageID" ON "SocialPost" ("WebPageID")
/

CREATE INDEX "IX_SocialPostBucket_BusinessID" ON "SocialPostBucket" ("BusinessID")
/

CREATE INDEX "IX_SocialPostBucket_BusinessProfileRecordID" ON "SocialPostBucket" ("BusinessProfileRecordID")
/

CREATE UNIQUE INDEX "IX_SocialProfile_AccountHolderID" ON "SocialProfile" ("AccountHolderID")
/

CREATE UNIQUE INDEX "IX_SocialProfile_BusinessID" ON "SocialProfile" ("BusinessID")
/

CREATE UNIQUE INDEX "IX_SocialProfile_ContactID" ON "SocialProfile" ("ContactID")
/

CREATE INDEX "IX_SocialReaction_BlogPostID" ON "SocialReaction" ("BlogPostID")
/

CREATE INDEX "IX_SocialReaction_SocialCommentID" ON "SocialReaction" ("SocialCommentID")
/

CREATE INDEX "IX_SocialReaction_SocialPostID" ON "SocialReaction" ("SocialPostID")
/

CREATE INDEX "IX_SocialReaction_SocialProfileID" ON "SocialReaction" ("SocialProfileID")
/

CREATE INDEX "IX_SupplierGroup_BusinessID" ON "SupplierGroup" ("BusinessID")
/

CREATE INDEX "IX_SupplierGroup_BusinessProfileRecordID" ON "SupplierGroup" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_SupplierGroupRecord_BusinessID" ON "SupplierGroupRecord" ("BusinessID")
/

CREATE INDEX "IX_SupplierGroupRecord_BusinessProfileRecordID" ON "SupplierGroupRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_SupplierGroupRecord_SupplierGroupID" ON "SupplierGroupRecord" ("SupplierGroupID")
/

CREATE INDEX "IX_SupplierGroupRecord_SupplierProfileID" ON "SupplierGroupRecord" ("SupplierProfileID")
/

CREATE INDEX "IX_SupportPriority_BusinessID" ON "SupportPriority" ("BusinessID")
/

CREATE INDEX "IX_SupportPriority_SupportEntitlementID" ON "SupportPriority" ("SupportEntitlementID")
/

CREATE INDEX "IX_SupportRequest_AccountHolderID" ON "SupportRequest" ("AccountHolderID")
/

CREATE INDEX "IX_SupportRequest_BusinessID" ON "SupportRequest" ("BusinessID")
/

CREATE INDEX "IX_SupportRequest_BusinessProfileRecordID" ON "SupportRequest" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_SupportRequest_ContactID" ON "SupportRequest" ("ContactID")
/

CREATE INDEX "IX_SupportRequest_PaymentID" ON "SupportRequest" ("PaymentID")
/

CREATE INDEX "IX_SupportRequest_RefundPolicyID" ON "SupportRequest" ("RefundPolicyID")
/

CREATE INDEX "IX_SupportRequest_ReturnPolicyID" ON "SupportRequest" ("ReturnPolicyID")
/

CREATE INDEX "IX_SupportRequest_SupportEntitlementID" ON "SupportRequest" ("SupportEntitlementID")
/

CREATE INDEX "IX_SupportRequest_WarrantyPolicyID" ON "SupportRequest" ("WarrantyPolicyID")
/

CREATE INDEX "IX_SupportTicket_AccountHolderID" ON "SupportTicket" ("AccountHolderID")
/

CREATE INDEX "IX_SupportTicket_BusinessID" ON "SupportTicket" ("BusinessID")
/

CREATE INDEX "IX_SupportTicket_BusinessProfileRecordID" ON "SupportTicket" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_SupportTicket_ContactID" ON "SupportTicket" ("ContactID")
/

CREATE INDEX "IX_SupportTicket_SupportEntitlementID" ON "SupportTicket" ("SupportEntitlementID")
/

CREATE INDEX "IX_SupportTicket_SupportPriorityID" ON "SupportTicket" ("SupportPriorityID")
/

CREATE INDEX "IX_SupportTicket_SupportRequestID" ON "SupportTicket" ("SupportRequestID")
/

CREATE INDEX "IX_SupportTicket_SupportTicketTypeID" ON "SupportTicket" ("SupportTicketTypeID")
/

CREATE INDEX "IX_SupportTicketType_BusinessID" ON "SupportTicketType" ("BusinessID")
/

CREATE UNIQUE INDEX "IX_SustainabilityProfile_BusinessID" ON "SustainabilityProfile" ("BusinessID")
/

CREATE INDEX "IX_SustainabilityProfile_BusinessProfileRecordID" ON "SustainabilityProfile" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Task_BusinessID" ON "Task" ("BusinessID")
/

CREATE INDEX "IX_Task_BusinessProfileRecordID" ON "Task" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Task_ProjectID" ON "Task" ("ProjectID")
/

CREATE INDEX "IX_Task_ProjectTaskBucketID" ON "Task" ("ProjectTaskBucketID")
/

CREATE INDEX "IX_Task_SocialProfileID" ON "Task" ("SocialProfileID")
/

CREATE INDEX "IX_Task_TaskListID" ON "Task" ("TaskListID")
/

CREATE INDEX "IX_TaskAssignment_SocialProfileID" ON "TaskAssignment" ("SocialProfileID")
/

CREATE INDEX "IX_TaskAssignment_TaskID" ON "TaskAssignment" ("TaskID")
/

CREATE INDEX "IX_TaskAssignment_TaskListID" ON "TaskAssignment" ("TaskListID")
/

CREATE INDEX "IX_TaskList_BusinessID" ON "TaskList" ("BusinessID")
/

CREATE INDEX "IX_TaskList_BusinessProfileRecordID" ON "TaskList" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_TaskList_ProjectID" ON "TaskList" ("ProjectID")
/

CREATE INDEX "IX_TaskList_SocialProfileID" ON "TaskList" ("SocialProfileID")
/

CREATE INDEX "IX_TaxClass_BusinessID" ON "TaxClass" ("BusinessID")
/

CREATE INDEX "IX_TaxClass_BusinessProfileRecordID" ON "TaxClass" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_TaxClass_FiscalAuthorityID" ON "TaxClass" ("FiscalAuthorityID")
/

CREATE INDEX "IX_TaxClass_FiscalYearID" ON "TaxClass" ("FiscalYearID")
/

CREATE INDEX "IX_Taxonomy_BusinessID" ON "Taxonomy" ("BusinessID")
/

CREATE INDEX "IX_Taxonomy_BusinessProfileRecordID" ON "Taxonomy" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Taxonomy_WebPortalID" ON "Taxonomy" ("WebPortalID")
/

CREATE INDEX "IX_TaxonomyRecord_BlogPostCategoryRecord_BlogPostID" ON "TaxonomyRecord" ("BlogPostCategoryRecord_BlogPostID")
/

CREATE INDEX "IX_TaxonomyRecord_BlogPostID" ON "TaxonomyRecord" ("BlogPostID")
/

CREATE INDEX "IX_TaxonomyRecord_BusinessID" ON "TaxonomyRecord" ("BusinessID")
/

CREATE INDEX "IX_TaxonomyRecord_KnowledgeArticleCategoryID" ON "TaxonomyRecord" ("KnowledgeArticleCategoryID")
/

CREATE INDEX "IX_TaxonomyRecord_KnowledgeArticleID" ON "TaxonomyRecord" ("KnowledgeArticleID")
/

CREATE INDEX "IX_TaxonomyRecord_SocialForumPostID" ON "TaxonomyRecord" ("SocialForumPostID")
/

CREATE INDEX "IX_TaxonomyRecord_TaxonomyID" ON "TaxonomyRecord" ("TaxonomyID")
/

CREATE INDEX "IX_TaxonomyRecord_WebContentID" ON "TaxonomyRecord" ("WebContentID")
/

CREATE INDEX "IX_TaxonomyRecord_WebPageCategoryID" ON "TaxonomyRecord" ("WebPageCategoryID")
/

CREATE INDEX "IX_TaxonomyRecord_WebPageCategoryRecord_WebPageID" ON "TaxonomyRecord" ("WebPageCategoryRecord_WebPageID")
/

CREATE INDEX "IX_TaxonomyRecord_WebPageID" ON "TaxonomyRecord" ("WebPageID")
/

CREATE INDEX "IX_TaxonomyRecord_WebPageTagID" ON "TaxonomyRecord" ("WebPageTagID")
/

CREATE INDEX "IX_TaxRate_BusinessID" ON "TaxRate" ("BusinessID")
/

CREATE INDEX "IX_TaxRate_BusinessProfileRecordID" ON "TaxRate" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_TaxRate_CountryID" ON "TaxRate" ("CountryID")
/

CREATE INDEX "IX_TaxRate_CurrencyID" ON "TaxRate" ("CurrencyID")
/

CREATE INDEX "IX_TaxRate_FiscalAuthorityID" ON "TaxRate" ("FiscalAuthorityID")
/

CREATE INDEX "IX_TaxRate_FiscalYearID" ON "TaxRate" ("FiscalYearID")
/

CREATE INDEX "IX_TaxRate_TaxClassID" ON "TaxRate" ("TaxClassID")
/

CREATE INDEX "IX_TaxRate_TaxPolicyID" ON "TaxRate" ("TaxPolicyID")
/

CREATE INDEX "IX_TaxRate_UnitGroupID" ON "TaxRate" ("UnitGroupID")
/

CREATE INDEX "IX_TaxRate_UnitID" ON "TaxRate" ("UnitID")
/

CREATE INDEX "IX_TaxRateClassRecord_BusinessID" ON "TaxRateClassRecord" ("BusinessID")
/

CREATE INDEX "IX_TaxRateClassRecord_BusinessProfileRecordID" ON "TaxRateClassRecord" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_TaxRateClassRecord_TaxClassID" ON "TaxRateClassRecord" ("TaxClassID")
/

CREATE INDEX "IX_TaxRateClassRecord_TaxRateID" ON "TaxRateClassRecord" ("TaxRateID")
/

CREATE INDEX "IX_Territory_AccountHolderId" ON "Territory" ("AccountHolderId")
/

CREATE INDEX "IX_Territory_BusinessID" ON "Territory" ("BusinessID")
/

CREATE INDEX "IX_Territory_BusinessProfileRecordID" ON "Territory" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Territory_ParentTerritoryID" ON "Territory" ("ParentTerritoryID")
/

CREATE INDEX "IX_TimeInterval_BusinessID" ON "TimeInterval" ("BusinessID")
/

CREATE INDEX "IX_TimeInterval_BusinessProfileRecordID" ON "TimeInterval" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_TimeInterval_EmployeeProfileID" ON "TimeInterval" ("EmployeeProfileID")
/

CREATE INDEX "IX_TimeInterval_LeaveApplicationID" ON "TimeInterval" ("LeaveApplicationID")
/

CREATE INDEX "IX_TimeInterval_ParentTimeIntervalID" ON "TimeInterval" ("ParentTimeIntervalID")
/

CREATE INDEX "IX_TimeInterval_ScheduleID" ON "TimeInterval" ("ScheduleID")
/

CREATE INDEX "IX_TimeInterval_Shift_BusinessID" ON "TimeInterval" ("Shift_BusinessID")
/

CREATE INDEX "IX_TimeInterval_Shift_EmployeeProfileID" ON "TimeInterval" ("Shift_EmployeeProfileID")
/

CREATE INDEX "IX_TimeInterval_TrainingProgramEvent_BusinessID" ON "TimeInterval" ("TrainingProgramEvent_BusinessID")
/

CREATE INDEX "IX_TimeInterval_TrainingProgramEvent_BusinessProfileRecordID" ON "TimeInterval" ("TrainingProgramEvent_BusinessProfileRecordID")
/

CREATE INDEX "IX_TimeInterval_TrainingProgramID" ON "TimeInterval" ("TrainingProgramID")
/

CREATE INDEX "IX_TrainingProgram_BusinessID" ON "TrainingProgram" ("BusinessID")
/

CREATE INDEX "IX_TrainingProgram_BusinessProfileRecordID" ON "TrainingProgram" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_TrainingProgramApplication_BusinessID" ON "TrainingProgramApplication" ("BusinessID")
/

CREATE INDEX "IX_TrainingProgramApplication_BusinessProfileRecordID" ON "TrainingProgramApplication" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_TrainingProgramApplication_EmployeeProfileID" ON "TrainingProgramApplication" ("EmployeeProfileID")
/

CREATE INDEX "IX_TrainingProgramApplication_TrainingProgramID" ON "TrainingProgramApplication" ("TrainingProgramID")
/

CREATE INDEX "IX_TrainingProgramCourse_BusinessID" ON "TrainingProgramCourse" ("BusinessID")
/

CREATE INDEX "IX_TrainingProgramCourse_BusinessProfileRecordID" ON "TrainingProgramCourse" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_TrainingProgramCourse_CourseID" ON "TrainingProgramCourse" ("CourseID")
/

CREATE INDEX "IX_TrainingProgramCourse_TrainingProgramID" ON "TrainingProgramCourse" ("TrainingProgramID")
/

CREATE INDEX "IX_TrainingProgramResultSet_BusinessID" ON "TrainingProgramResultSet" ("BusinessID")
/

CREATE INDEX "IX_TrainingProgramResultSet_BusinessProfileRecordID" ON "TrainingProgramResultSet" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_TrainingProgramResultSet_TrainingProgramID" ON "TrainingProgramResultSet" ("TrainingProgramID")
/

CREATE INDEX "IX_Transaction_BankAccountID" ON "Transaction" ("BankAccountID")
/

CREATE INDEX "IX_Transaction_BankProfileID" ON "Transaction" ("BankProfileID")
/

CREATE INDEX "IX_Transaction_BusinessID" ON "Transaction" ("BusinessID")
/

CREATE INDEX "IX_Transaction_BusinessProfileRecordID" ON "Transaction" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Transaction_ContactID" ON "Transaction" ("ContactID")
/

CREATE INDEX "IX_Transaction_CurrencyID" ON "Transaction" ("CurrencyID")
/

CREATE INDEX "IX_Transaction_ProjectID" ON "Transaction" ("ProjectID")
/

CREATE INDEX "IX_Transaction_ProjectJournalID" ON "Transaction" ("ProjectJournalID")
/

CREATE INDEX "IX_Transaction_ProjectResourceID" ON "Transaction" ("ProjectResourceID")
/

CREATE INDEX "IX_Transaction_ProjectResourceRoleID" ON "Transaction" ("ProjectResourceRoleID")
/

CREATE INDEX "IX_Transaction_ProjectTaskID" ON "Transaction" ("ProjectTaskID")
/

CREATE INDEX "IX_Transaction_TransactionCategoryID" ON "Transaction" ("TransactionCategoryID")
/

CREATE INDEX "IX_Transaction_UnitGroupID" ON "Transaction" ("UnitGroupID")
/

CREATE INDEX "IX_Transaction_UnitID" ON "Transaction" ("UnitID")
/

CREATE INDEX "IX_TransactionCategory_BusinessID" ON "TransactionCategory" ("BusinessID")
/

CREATE INDEX "IX_TransactionCategory_BusinessProfileRecordID" ON "TransactionCategory" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Unit_BaseUnitID" ON "Unit" ("BaseUnitID")
/

CREATE INDEX "IX_Unit_BusinessID" ON "Unit" ("BusinessID")
/

CREATE INDEX "IX_Unit_BusinessProfileRecordID" ON "Unit" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Unit_UnitGroupID" ON "Unit" ("UnitGroupID")
/

CREATE INDEX "IX_UnitGroup_BusinessID" ON "UnitGroup" ("BusinessID")
/

CREATE INDEX "IX_UnitGroup_BusinessProfileRecordID" ON "UnitGroup" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_View_EntityID" ON "View" ("EntityID")
/

CREATE UNIQUE INDEX "IX_WalletAccount_AccountHolderID" ON "WalletAccount" ("AccountHolderID")
/

CREATE INDEX "IX_WalletAccount_AccountID" ON "WalletAccount" ("AccountID")
/

CREATE INDEX "IX_WalletAccount_BillingProfileID" ON "WalletAccount" ("BillingProfileID")
/

CREATE UNIQUE INDEX "IX_WalletAccount_BusinessID" ON "WalletAccount" ("BusinessID")
/

CREATE UNIQUE INDEX "IX_WalletAccount_ContactID" ON "WalletAccount" ("ContactID")
/

CREATE INDEX "IX_WalletAccount_CountryID" ON "WalletAccount" ("CountryID")
/

CREATE INDEX "IX_WalletAccount_LocationID" ON "WalletAccount" ("LocationID")
/

CREATE INDEX "IX_WalletWithdraw_CurrencyID" ON "WalletWithdraw" ("CurrencyID")
/

CREATE INDEX "IX_WalletWithdraw_WalletAccountID" ON "WalletWithdraw" ("WalletAccountID")
/

CREATE INDEX "IX_WalletWithdraw_WalletWithdrawRequestID" ON "WalletWithdraw" ("WalletWithdrawRequestID")
/

CREATE INDEX "IX_WalletWithdrawRequest_BankAccountID" ON "WalletWithdrawRequest" ("BankAccountID")
/

CREATE INDEX "IX_WalletWithdrawRequest_BusinessID" ON "WalletWithdrawRequest" ("BusinessID")
/

CREATE INDEX "IX_WalletWithdrawRequest_BusinessProfileRecordID" ON "WalletWithdrawRequest" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_WalletWithdrawRequest_CurrencyID" ON "WalletWithdrawRequest" ("CurrencyID")
/

CREATE INDEX "IX_WalletWithdrawRequest_WalletAccountID" ON "WalletWithdrawRequest" ("WalletAccountID")
/

CREATE INDEX "IX_WebContent_BlogPostCategoryID" ON "WebContent" ("BlogPostCategoryID")
/

CREATE INDEX "IX_WebContent_BusinessID" ON "WebContent" ("BusinessID")
/

CREATE INDEX "IX_WebContent_BusinessProfileRecordID" ON "WebContent" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_WebContent_CourseAssignmentComponent_CourseID" ON "WebContent" ("CourseAssignmentComponent_CourseID")
/

CREATE INDEX "IX_WebContent_CourseAssignmentID" ON "WebContent" ("CourseAssignmentID")
/

CREATE INDEX "IX_WebContent_CourseCompletionCertificateTemplate_CourseID" ON "WebContent" ("CourseCompletionCertificateTemplate_CourseID")
/

CREATE INDEX "IX_WebContent_CourseForum_CourseID" ON "WebContent" ("CourseForum_CourseID")
/

CREATE INDEX "IX_WebContent_CourseID" ON "WebContent" ("CourseID")
/

CREATE INDEX "IX_WebContent_CoursePage_CourseID" ON "WebContent" ("CoursePage_CourseID")
/

CREATE INDEX "IX_WebContent_CourseUnitComponent_CourseID" ON "WebContent" ("CourseUnitComponent_CourseID")
/

CREATE INDEX "IX_WebContent_CourseUnitID" ON "WebContent" ("CourseUnitID")
/

CREATE INDEX "IX_WebContent_CourseUpdate_CourseID" ON "WebContent" ("CourseUpdate_CourseID")
/

CREATE INDEX "IX_WebContent_CourseWikiID" ON "WebContent" ("CourseWikiID")
/

CREATE INDEX "IX_WebContent_MarketingCampaignID" ON "WebContent" ("MarketingCampaignID")
/

CREATE INDEX "IX_WebContent_NewsletterID" ON "WebContent" ("NewsletterID")
/

CREATE INDEX "IX_WebContent_ParentWebContentID" ON "WebContent" ("ParentWebContentID")
/

CREATE INDEX "IX_WebContent_ParentWebContentVersionID" ON "WebContent" ("ParentWebContentVersionID")
/

CREATE INDEX "IX_WebContent_WebFormID" ON "WebContent" ("WebFormID")
/

CREATE INDEX "IX_WebContent_WebForum_WebTemplateID" ON "WebContent" ("WebForum_WebTemplateID")
/

CREATE INDEX "IX_WebContent_WebForumCategoryID" ON "WebContent" ("WebForumCategoryID")
/

CREATE INDEX "IX_WebContent_WebPage_WebFormID" ON "WebContent" ("WebPage_WebFormID")
/

CREATE INDEX "IX_WebContent_WebPage_WebTemplateID" ON "WebContent" ("WebPage_WebTemplateID")
/

CREATE INDEX "IX_WebContent_WebPortalID" ON "WebContent" ("WebPortalID")
/

CREATE INDEX "IX_WebContent_WebsiteThemeID" ON "WebContent" ("WebsiteThemeID")
/

CREATE INDEX "IX_WebContent_WebTemplateID" ON "WebContent" ("WebTemplateID")
/

CREATE INDEX "IX_WebFormSubmit_WebFormID" ON "WebFormSubmit" ("WebFormID")
/

CREATE INDEX "IX_WebhookRequestCondition_WebhookRequestID" ON "WebhookRequestCondition" ("WebhookRequestID")
/

CREATE INDEX "IX_WebhookRequestDataEntry_WebhookRequestID" ON "WebhookRequestDataEntry" ("WebhookRequestID")
/

CREATE INDEX "IX_WebhookRequestHeader_WebhookRequestID" ON "WebhookRequestHeader" ("WebhookRequestID")
/

CREATE INDEX "IX_WebPortal_BusinessDomainID" ON "WebPortal" ("BusinessDomainID")
/

CREATE INDEX "IX_WebPortal_BusinessID" ON "WebPortal" ("BusinessID")
/

CREATE INDEX "IX_WebPortal_BusinessPortalApplicationID" ON "WebPortal" ("BusinessPortalApplicationID")
/

CREATE INDEX "IX_WebPortal_BusinessProfileRecordID" ON "WebPortal" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_WebPortal_WebsiteThemeID" ON "WebPortal" ("WebsiteThemeID")
/

CREATE INDEX "IX_WebPortalBusinessDomainRecord_BusinessDomainID" ON "WebPortalBusinessDomainRecord" ("BusinessDomainID")
/

CREATE INDEX "IX_WebPortalBusinessDomainRecord_WebPortalID" ON "WebPortalBusinessDomainRecord" ("WebPortalID")
/

CREATE INDEX "IX_WebResource_BusinessID" ON "WebResource" ("BusinessID")
/

CREATE INDEX "IX_WebResource_WebsiteThemeID" ON "WebResource" ("WebsiteThemeID")
/

CREATE INDEX "IX_WebsiteTheme_BusinessID" ON "WebsiteTheme" ("BusinessID")
/

CREATE INDEX "IX_WishList_CartID" ON "WishList" ("CartID")
/

CREATE INDEX "IX_WishList_ContactID" ON "WishList" ("ContactID")
/

CREATE INDEX "IX_WishListRecord_ItemID" ON "WishListRecord" ("ItemID")
/

CREATE INDEX "IX_WishListRecord_WishListID" ON "WishListRecord" ("WishListID")
/

CREATE INDEX "IX_Workflow_BusinessID" ON "Workflow" ("BusinessID")
/

CREATE INDEX "IX_Workflow_WebPortalID" ON "Workflow" ("WebPortalID")
/

CREATE INDEX "IX_WorkflowExecution_WorkflowID" ON "WorkflowExecution" ("WorkflowID")
/

CREATE INDEX "IX_WorkflowExecution_WorkflowStageID" ON "WorkflowExecution" ("WorkflowStageID")
/

CREATE INDEX "IX_WorkflowStage_ParentWorkflowStageID" ON "WorkflowStage" ("ParentWorkflowStageID")
/

CREATE INDEX "IX_WorkflowStage_WorkflowID" ON "WorkflowStage" ("WorkflowID")
/

CREATE INDEX "IX_WorkflowState_WorkflowExecutionID" ON "WorkflowState" ("WorkflowExecutionID")
/

CREATE INDEX "IX_WorkflowState_WorkflowID" ON "WorkflowState" ("WorkflowID")
/

CREATE INDEX "IX_WorkflowState_WorkflowStageID" ON "WorkflowState" ("WorkflowStageID")
/

CREATE INDEX "IX_WorkOrder_BusinessID" ON "WorkOrder" ("BusinessID")
/

CREATE INDEX "IX_WorkOrder_WorkOrderTypeID" ON "WorkOrder" ("WorkOrderTypeID")
/

CREATE INDEX "IX_WorkOrderType_BusinessID" ON "WorkOrderType" ("BusinessID")
/

CREATE INDEX "IX_Workstation_BusinessID" ON "Workstation" ("BusinessID")
/

ALTER TABLE "AccessKeyPair" ADD CONSTRAINT "FK_AccessKeyPair_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id")
/

ALTER TABLE "AccessKeyPair" ADD CONSTRAINT "FK_AccessKeyPair_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AccessKeyPair" ADD CONSTRAINT "FK_AccessKeyPair_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "AccessKeyPair" ADD CONSTRAINT "FK_AccessKeyPair_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "Account" ADD CONSTRAINT "FK_Account_AccountGroup_AccountGroupID" FOREIGN KEY ("AccountGroupID") REFERENCES "AccountGroup" ("ID")
/

ALTER TABLE "Account" ADD CONSTRAINT "FK_Account_AccountType_AccountTypeID" FOREIGN KEY ("AccountTypeID") REFERENCES "AccountType" ("ID")
/

ALTER TABLE "Account" ADD CONSTRAINT "FK_Account_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id")
/

ALTER TABLE "Account" ADD CONSTRAINT "FK_Account_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "Account" ADD CONSTRAINT "FK_Account_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "Account" ADD CONSTRAINT "FK_Account_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "Account" ADD CONSTRAINT "FK_Account_ContactProfile_BankProfileID" FOREIGN KEY ("BankProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "Account" ADD CONSTRAINT "FK_Account_ContactProfile_BillingProfileID" FOREIGN KEY ("BillingProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "Account" ADD CONSTRAINT "FK_Account_Ledger_LedgerID" FOREIGN KEY ("LedgerID") REFERENCES "Ledger" ("ID")
/

ALTER TABLE "AccountGroup" ADD CONSTRAINT "FK_AccountGroup_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AccountGroup" ADD CONSTRAINT "FK_AccountGroup_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "AccountHolderLogin" ADD CONSTRAINT "FK_AccountHolderLogin_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id")
/

ALTER TABLE "AccountHolderLogin" ADD CONSTRAINT "FK_AccountHolderLogin_IPLookup_IPLookupID" FOREIGN KEY ("IPLookupID") REFERENCES "IPLookup" ("ID")
/

ALTER TABLE "AccountHolderSettings" ADD CONSTRAINT "FK_AccountHolderSettings_AspNetUsers_AccountHolderID" FOREIGN KEY ("AccountHolderID") REFERENCES "AspNetUsers" ("Id")
/

ALTER TABLE "AccountingEntry" ADD CONSTRAINT "FK_AccountingEntry_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AccountingEntry" ADD CONSTRAINT "FK_AccountingEntry_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "AccountingEntry" ADD CONSTRAINT "FK_AccountingEntry_ContactProfile_BankProfileID" FOREIGN KEY ("BankProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "AccountingEntry" ADD CONSTRAINT "FK_AccountingEntry_JournalEntry_JournalEntryID" FOREIGN KEY ("JournalEntryID") REFERENCES "JournalEntry" ("ID")
/

ALTER TABLE "AccountingEntry" ADD CONSTRAINT "FK_AccountingEntry_Payment_PaymentChargeback_PaymentID" FOREIGN KEY ("PaymentChargeback_PaymentID") REFERENCES "Payment" ("ID")
/

ALTER TABLE "AccountingEntry" ADD CONSTRAINT "FK_AccountingEntry_Payment_PaymentID" FOREIGN KEY ("PaymentID") REFERENCES "Payment" ("ID")
/

ALTER TABLE "AccountingEntry" ADD CONSTRAINT "FK_AccountingEntry_PaymentDispute_PaymentChargeback_PaymentDisputeID" FOREIGN KEY ("PaymentChargeback_PaymentDisputeID") REFERENCES "PaymentDispute" ("ID")
/

ALTER TABLE "AccountingEntry" ADD CONSTRAINT "FK_AccountingEntry_PaymentDispute_PaymentDisputeID" FOREIGN KEY ("PaymentDisputeID") REFERENCES "PaymentDispute" ("ID")
/

ALTER TABLE "AccountingEntry" ADD CONSTRAINT "FK_AccountingEntry_SupportRequest_RefundRequestID" FOREIGN KEY ("RefundRequestID") REFERENCES "SupportRequest" ("ID")
/

ALTER TABLE "AccountingEntry" ADD CONSTRAINT "FK_AccountingEntry_WalletAccount_PaymentChargeback_WalletAccountID" FOREIGN KEY ("PaymentChargeback_WalletAccountID") REFERENCES "WalletAccount" ("ID")
/

ALTER TABLE "AccountingEntry" ADD CONSTRAINT "FK_AccountingEntry_WalletAccount_WalletAccountID" FOREIGN KEY ("WalletAccountID") REFERENCES "WalletAccount" ("ID")
/

ALTER TABLE "AccountingPeriodClosingVoucher" ADD CONSTRAINT "FK_AccountingPeriodClosingVoucher_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AccountingPeriodClosingVoucher" ADD CONSTRAINT "FK_AccountingPeriodClosingVoucher_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "AccountingPeriodClosingVoucher" ADD CONSTRAINT "FK_AccountingPeriodClosingVoucher_FiscalYear_FiscalYearID" FOREIGN KEY ("FiscalYearID") REFERENCES "FiscalYear" ("ID")
/

ALTER TABLE "AccountRelation" ADD CONSTRAINT "FK_AccountRelation_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AccountRelation" ADD CONSTRAINT "FK_AccountRelation_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "AccountRelation" ADD CONSTRAINT "FK_AccountRelation_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID")
/

ALTER TABLE "AccountType" ADD CONSTRAINT "FK_AccountType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AccountType" ADD CONSTRAINT "FK_AccountType_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "ActivityFeed" ADD CONSTRAINT "FK_ActivityFeed_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "ActivityFeed" ADD CONSTRAINT "FK_ActivityFeed_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "ActivityFeed" ADD CONSTRAINT "FK_ActivityFeed_DealUnit_DealUnitID" FOREIGN KEY ("DealUnitID") REFERENCES "DealUnit" ("ID")
/

ALTER TABLE "ActivityFeed" ADD CONSTRAINT "FK_ActivityFeed_MarketingCampaign_MarketingCampaignID" FOREIGN KEY ("MarketingCampaignID") REFERENCES "MarketingCampaign" ("ID")
/

ALTER TABLE "ActivityFeed" ADD CONSTRAINT "FK_ActivityFeed_MarketingList_MarketingListID" FOREIGN KEY ("MarketingListID") REFERENCES "MarketingList" ("ID")
/

ALTER TABLE "ActivityFeed" ADD CONSTRAINT "FK_ActivityFeed_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID")
/

ALTER TABLE "ActivityRecord" ADD CONSTRAINT "FK_ActivityRecord_ActivityType_ActivityTypeID" FOREIGN KEY ("ActivityTypeID") REFERENCES "ActivityType" ("ID")
/

ALTER TABLE "ActivityRecord" ADD CONSTRAINT "FK_ActivityRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "ActivityRecord" ADD CONSTRAINT "FK_ActivityRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "ActivityRecord" ADD CONSTRAINT "FK_ActivityRecord_BusinessProfileRecord_InChargeBusinessProfileRecordID" FOREIGN KEY ("InChargeBusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "ActivityType" ADD CONSTRAINT "FK_ActivityType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "ActivityType" ADD CONSTRAINT "FK_ActivityType_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "Agreement" ADD CONSTRAINT "FK_Agreement_AgreementType_AgreementTypeID" FOREIGN KEY ("AgreementTypeID") REFERENCES "AgreementType" ("ID")
/

ALTER TABLE "Agreement" ADD CONSTRAINT "FK_Agreement_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "Agreement" ADD CONSTRAINT "FK_Agreement_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "AgreementRevision" ADD CONSTRAINT "FK_AgreementRevision_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AgreementType" ADD CONSTRAINT "FK_AgreementType_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AppliedFee" ADD CONSTRAINT "FK_AppliedFee_Payment_PaymentID" FOREIGN KEY ("PaymentID") REFERENCES "Payment" ("ID")
/

ALTER TABLE "AppliedFee" ADD CONSTRAINT "FK_AppliedFee_PaymentGateway_PaymentGatewayID" FOREIGN KEY ("PaymentGatewayID") REFERENCES "PaymentGateway" ("ID")
/

ALTER TABLE "AppliedFee" ADD CONSTRAINT "FK_AppliedFee_WalletWithdraw_WalletWithdrawID" FOREIGN KEY ("WalletWithdrawID") REFERENCES "WalletWithdraw" ("ID")
/

ALTER TABLE "AppliedTaxPolicyRecord" ADD CONSTRAINT "FK_AppliedTaxPolicyRecord_BillingItemRecord_BillingItemRecordID" FOREIGN KEY ("BillingItemRecordID") REFERENCES "BillingItemRecord" ("ID")
/

ALTER TABLE "AppliedTaxPolicyRecord" ADD CONSTRAINT "FK_AppliedTaxPolicyRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AppliedTaxPolicyRecord" ADD CONSTRAINT "FK_AppliedTaxPolicyRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "AppliedTaxPolicyRecord" ADD CONSTRAINT "FK_AppliedTaxPolicyRecord_Invoice_InvoiceID" FOREIGN KEY ("InvoiceID") REFERENCES "Invoice" ("ID")
/

ALTER TABLE "AppliedTaxPolicyRecord" ADD CONSTRAINT "FK_AppliedTaxPolicyRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID")
/

ALTER TABLE "AppliedTaxPolicyRecord" ADD CONSTRAINT "FK_AppliedTaxPolicyRecord_Payment_PaymentID" FOREIGN KEY ("PaymentID") REFERENCES "Payment" ("ID")
/

ALTER TABLE "AppliedTaxPolicyRecord" ADD CONSTRAINT "FK_AppliedTaxPolicyRecord_Policy_TaxPolicyID" FOREIGN KEY ("TaxPolicyID") REFERENCES "Policy" ("ID")
/

ALTER TABLE "AppraisalSession" ADD CONSTRAINT "FK_AppraisalSession_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AppraisalSession" ADD CONSTRAINT "FK_AppraisalSession_BusinessProcess_AppraisalWorkflowID" FOREIGN KEY ("AppraisalWorkflowID") REFERENCES "BusinessProcess" ("ID")
/

ALTER TABLE "AppraisalSession" ADD CONSTRAINT "FK_AppraisalSession_BusinessProcessStage_AppraisalStageID" FOREIGN KEY ("AppraisalStageID") REFERENCES "BusinessProcessStage" ("ID")
/

ALTER TABLE "AppraisalSession" ADD CONSTRAINT "FK_AppraisalSession_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "AppraisalSession" ADD CONSTRAINT "FK_AppraisalSession_ContactProfile_EmployeeProfileID" FOREIGN KEY ("EmployeeProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "AspNetUserClaims" ADD CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers" ("Id")
/

ALTER TABLE "AspNetUserLogins" ADD CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers" ("Id")
/

ALTER TABLE "AspNetUserRoles" ADD CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers" ("Id")
/

ALTER TABLE "AspNetUsers" ADD CONSTRAINT "FK_AspNetUsers_Business_SelectedBusinessID" FOREIGN KEY ("SelectedBusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "Asset" ADD CONSTRAINT "FK_Asset_AssetCategory_AssetCategoryID" FOREIGN KEY ("AssetCategoryID") REFERENCES "AssetCategory" ("ID")
/

ALTER TABLE "Asset" ADD CONSTRAINT "FK_Asset_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "Asset" ADD CONSTRAINT "FK_Asset_BusinessDepartment_OrganizationDepartmentID" FOREIGN KEY ("OrganizationDepartmentID") REFERENCES "BusinessDepartment" ("ID")
/

ALTER TABLE "Asset" ADD CONSTRAINT "FK_Asset_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "Asset" ADD CONSTRAINT "FK_Asset_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "Asset" ADD CONSTRAINT "FK_Asset_FinancialBook_FinancialBookID" FOREIGN KEY ("FinancialBookID") REFERENCES "FinancialBook" ("ID")
/

ALTER TABLE "Asset" ADD CONSTRAINT "FK_Asset_Invoice_PurchaseInvoiceID" FOREIGN KEY ("PurchaseInvoiceID") REFERENCES "Invoice" ("ID")
/

ALTER TABLE "Asset" ADD CONSTRAINT "FK_Asset_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID")
/

ALTER TABLE "Asset" ADD CONSTRAINT "FK_Asset_Location_AssetLocationID" FOREIGN KEY ("AssetLocationID") REFERENCES "Location" ("ID")
/

ALTER TABLE "Asset" ADD CONSTRAINT "FK_Asset_Receipt_PurchaseReceiptID" FOREIGN KEY ("PurchaseReceiptID") REFERENCES "Receipt" ("ID")
/

ALTER TABLE "AssetCategory" ADD CONSTRAINT "FK_AssetCategory_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AssetDepreciationRecord" ADD CONSTRAINT "FK_AssetDepreciationRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AssetDepreciationRecord" ADD CONSTRAINT "FK_AssetDepreciationRecord_FinancialBook_FinancialBookID" FOREIGN KEY ("FinancialBookID") REFERENCES "FinancialBook" ("ID")
/

ALTER TABLE "AssetTransfer" ADD CONSTRAINT "FK_AssetTransfer_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AssetTransfer" ADD CONSTRAINT "FK_AssetTransfer_BusinessDepartment_DestinationDepartmentID" FOREIGN KEY ("DestinationDepartmentID") REFERENCES "BusinessDepartment" ("ID")
/

ALTER TABLE "AssetTransfer" ADD CONSTRAINT "FK_AssetTransfer_BusinessDepartment_SourceDepartmentID" FOREIGN KEY ("SourceDepartmentID") REFERENCES "BusinessDepartment" ("ID")
/

ALTER TABLE "AssetTransfer" ADD CONSTRAINT "FK_AssetTransfer_Contact_DestinationContactID" FOREIGN KEY ("DestinationContactID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "AssetTransfer" ADD CONSTRAINT "FK_AssetTransfer_Contact_SourceContactID" FOREIGN KEY ("SourceContactID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "AssetTransfer" ADD CONSTRAINT "FK_AssetTransfer_Location_DestinationLocationID" FOREIGN KEY ("DestinationLocationID") REFERENCES "Location" ("ID")
/

ALTER TABLE "AssetTransfer" ADD CONSTRAINT "FK_AssetTransfer_Location_SourceLocationID" FOREIGN KEY ("SourceLocationID") REFERENCES "Location" ("ID")
/

ALTER TABLE "AssetValueAmend" ADD CONSTRAINT "FK_AssetValueAmend_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "AssetValueAmend" ADD CONSTRAINT "FK_AssetValueAmend_FinancialBook_FinancialBookID" FOREIGN KEY ("FinancialBookID") REFERENCES "FinancialBook" ("ID")
/

ALTER TABLE "BankGuarantee" ADD CONSTRAINT "FK_BankGuarantee_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "BankGuarantee" ADD CONSTRAINT "FK_BankGuarantee_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "BankGuarantee" ADD CONSTRAINT "FK_BankGuarantee_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "BankGuarantee" ADD CONSTRAINT "FK_BankGuarantee_ContactProfile_BankProfileID" FOREIGN KEY ("BankProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "BankGuarantee" ADD CONSTRAINT "FK_BankGuarantee_Order_OrderID" FOREIGN KEY ("OrderID") REFERENCES "Order" ("ID")
/

ALTER TABLE "BankGuarantee" ADD CONSTRAINT "FK_BankGuarantee_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID")
/

ALTER TABLE "BillingCoupon" ADD CONSTRAINT "FK_BillingCoupon_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "BillingCoupon" ADD CONSTRAINT "FK_BillingCoupon_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Cart_CartID" FOREIGN KEY ("CartID") REFERENCES "Cart" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_DealUnit_DealUnitID" FOREIGN KEY ("DealUnitID") REFERENCES "DealUnit" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Invoice_InvoiceID" FOREIGN KEY ("InvoiceID") REFERENCES "Invoice" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Location_LocationID" FOREIGN KEY ("LocationID") REFERENCES "Location" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Order_OrderID" FOREIGN KEY ("OrderID") REFERENCES "Order" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Order_OrderItemRecord_OrderID" FOREIGN KEY ("OrderItemRecord_OrderID") REFERENCES "Order" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Order_ParentOrderID" FOREIGN KEY ("ParentOrderID") REFERENCES "Order" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Policy_ItemShipmentPolicyID" FOREIGN KEY ("ItemShipmentPolicyID") REFERENCES "Policy" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Policy_RefundPolicyID" FOREIGN KEY ("RefundPolicyID") REFERENCES "Policy" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Policy_ReturnPolicyID" FOREIGN KEY ("ReturnPolicyID") REFERENCES "Policy" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Policy_WarrantyPolicyID" FOREIGN KEY ("WarrantyPolicyID") REFERENCES "Policy" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_PriceListItem_ItemPriceID" FOREIGN KEY ("ItemPriceID") REFERENCES "PriceListItem" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_PriceListItem_PriceListItemID" FOREIGN KEY ("PriceListItemID") REFERENCES "PriceListItem" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Quote_QuoteID" FOREIGN KEY ("QuoteID") REFERENCES "Quote" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_Unit_UnitID" FOREIGN KEY ("UnitID") REFERENCES "Unit" ("ID")
/

ALTER TABLE "BillingItemRecord" ADD CONSTRAINT "FK_BillingItemRecord_UnitGroup_UnitGroupID" FOREIGN KEY ("UnitGroupID") REFERENCES "UnitGroup" ("ID")
/

ALTER TABLE "Blockchain" ADD CONSTRAINT "FK_Blockchain_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "Blockchain" ADD CONSTRAINT "FK_Blockchain_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "BlockchainBlock" ADD CONSTRAINT "FK_BlockchainBlock_Item_NonFungibleTokenID" FOREIGN KEY ("NonFungibleTokenID") REFERENCES "Item" ("ID")
/

ALTER TABLE "BlockchainBlock" ADD CONSTRAINT "FK_BlockchainBlock_WalletAccount_WalletAccountID" FOREIGN KEY ("WalletAccountID") REFERENCES "WalletAccount" ("ID")
/

ALTER TABLE "BlockRecord" ADD CONSTRAINT "FK_BlockRecord_SocialProfile_BlockedSocialProfileID" FOREIGN KEY ("BlockedSocialProfileID") REFERENCES "SocialProfile" ("ID")
/

ALTER TABLE "BlockRecord" ADD CONSTRAINT "FK_BlockRecord_SocialProfile_BlockerSocialProfileID" FOREIGN KEY ("BlockerSocialProfileID") REFERENCES "SocialProfile" ("ID")
/

ALTER TABLE "BrandRecord" ADD CONSTRAINT "FK_BrandRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID")
/

ALTER TABLE "BrandRecord" ADD CONSTRAINT "FK_BrandRecord_ItemBrand_BrandID" FOREIGN KEY ("BrandID") REFERENCES "ItemBrand" ("ID")
/

ALTER TABLE "Budget" ADD CONSTRAINT "FK_Budget_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "Budget" ADD CONSTRAINT "FK_Budget_CostCentre_CostCentreID" FOREIGN KEY ("CostCentreID") REFERENCES "CostCentre" ("ID")
/

ALTER TABLE "Budget" ADD CONSTRAINT "FK_Budget_FiscalYear_FiscalYearID" FOREIGN KEY ("FiscalYearID") REFERENCES "FiscalYear" ("ID")
/

ALTER TABLE "Budget" ADD CONSTRAINT "FK_Budget_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID")
/

ALTER TABLE "Business" ADD CONSTRAINT "FK_Business_BusinessIndustry_BusinessIndustryID" FOREIGN KEY ("BusinessIndustryID") REFERENCES "BusinessIndustry" ("ID")
/

ALTER TABLE "BusinessDepartment" ADD CONSTRAINT "FK_BusinessDepartment_ContactProfile_OrganizationProfileID" FOREIGN KEY ("OrganizationProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "BusinessSecurityLog" ADD CONSTRAINT "FK_BusinessSecurityLog_ContactProfile_SigningProfileID" FOREIGN KEY ("SigningProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "BusinessSecurityLog" ADD CONSTRAINT "FK_BusinessSecurityLog_SigningCertificate_SigningCertificateID" FOREIGN KEY ("SigningCertificateID") REFERENCES "SigningCertificate" ("ID")
/

ALTER TABLE "BusinessTeam" ADD CONSTRAINT "FK_BusinessTeam_BusinessUnit_BusinessUnitID" FOREIGN KEY ("BusinessUnitID") REFERENCES "BusinessUnit" ("ID")
/

ALTER TABLE "BusinessTeam" ADD CONSTRAINT "FK_BusinessTeam_ContactProfile_OrganizationProfileID" FOREIGN KEY ("OrganizationProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "BusinessTeamRecord" ADD CONSTRAINT "FK_BusinessTeamRecord_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "BusinessTeamRecord" ADD CONSTRAINT "FK_BusinessTeamRecord_ContactProfile_EmployeeProfileID" FOREIGN KEY ("EmployeeProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "BusinessTeamRecord" ADD CONSTRAINT "FK_BusinessTeamRecord_Project_ProjectID" FOREIGN KEY ("ProjectID") REFERENCES "Project" ("ID")
/

ALTER TABLE "BusinessUnit" ADD CONSTRAINT "FK_BusinessUnit_ContactProfile_OrganizationProfileID" FOREIGN KEY ("OrganizationProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "Cart" ADD CONSTRAINT "FK_Cart_Contact_ContactID" FOREIGN KEY ("ContactID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "Cart" ADD CONSTRAINT "FK_Cart_Location_LocationID" FOREIGN KEY ("LocationID") REFERENCES "Location" ("ID")
/

ALTER TABLE "CartRecord" ADD CONSTRAINT "FK_CartRecord_Item_ItemCartRecord_ItemID" FOREIGN KEY ("ItemCartRecord_ItemID") REFERENCES "Item" ("ID")
/

ALTER TABLE "CartRecord" ADD CONSTRAINT "FK_CartRecord_Item_ItemID" FOREIGN KEY ("ItemID") REFERENCES "Item" ("ID")
/

ALTER TABLE "CartRecord" ADD CONSTRAINT "FK_CartRecord_Item_RecentlyViewedItemRecord_ItemID" FOREIGN KEY ("RecentlyViewedItemRecord_ItemID") REFERENCES "Item" ("ID")
/

ALTER TABLE "CartRecord" ADD CONSTRAINT "FK_CartRecord_Location_ShippingAddressID" FOREIGN KEY ("ShippingAddressID") REFERENCES "Location" ("ID")
/

ALTER TABLE "CognitiveAgentConversation" ADD CONSTRAINT "FK_CognitiveAgentConversation_Contact_IndividualID" FOREIGN KEY ("IndividualID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "CognitiveAgentConversation" ADD CONSTRAINT "FK_CognitiveAgentConversation_Contact_OrganizationID" FOREIGN KEY ("OrganizationID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "Commission" ADD CONSTRAINT "FK_Commission_Contact_EmmisorContactID" FOREIGN KEY ("EmmisorContactID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "Commission" ADD CONSTRAINT "FK_Commission_Contact_ReceptorContactID" FOREIGN KEY ("ReceptorContactID") REFERENCES "Contact" ("ID")
/

ALTER TABLE "Commission" ADD CONSTRAINT "FK_Commission_Payment_PaymentID" FOREIGN KEY ("PaymentID") REFERENCES "Payment" ("ID")
/

ALTER TABLE "Commission" ADD CONSTRAINT "FK_Commission_Salary_SalaryID" FOREIGN KEY ("SalaryID") REFERENCES "Salary" ("ID")
/

ALTER TABLE "Commission" ADD CONSTRAINT "FK_Commission_WalletAccount_EmmisorWalletAccountID" FOREIGN KEY ("EmmisorWalletAccountID") REFERENCES "WalletAccount" ("ID")
/

ALTER TABLE "Commission" ADD CONSTRAINT "FK_Commission_WalletAccount_ReceptorWalletAccountID" FOREIGN KEY ("ReceptorWalletAccountID") REFERENCES "WalletAccount" ("ID")
/

ALTER TABLE "Contact" ADD CONSTRAINT "FK_Contact_ContactProfile_PartnerProfileID" FOREIGN KEY ("PartnerProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "ContactProfile" ADD CONSTRAINT "FK_ContactProfile_WalletAccount_WalletAccountID" FOREIGN KEY ("WalletAccountID") REFERENCES "WalletAccount" ("ID")
/

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES (N'20220524003512_V_1_5_6', N'6.0.5')
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmountInUSD' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'WithdrawedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceBeforeWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceAfterWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'TestNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReserveTimeInDays' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReservePercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'MainNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinTestNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinMainNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'RequiredSkillRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'PaymentDispute' 
  and column_name = 'DisputedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'BaseCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'AntiFraudScore' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "JobOffer" ADD "Benefits" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "CurrencyID" NVARCHAR2(450)
/

ALTER TABLE "JobOffer" ADD "ExpectedHireDate" TIMESTAMP(7) DEFAULT TO_TIMESTAMP('0001-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF') NOT NULL
/

ALTER TABLE "JobOffer" ADD "MaxSalaryAmount" DECIMAL(18, 2) DEFAULT 0.0 NOT NULL
/

ALTER TABLE "JobOffer" ADD "MinSalaryAmount" DECIMAL(18, 2) DEFAULT 0.0 NOT NULL
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ItemBid' 
  and column_name = 'Amount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'Recurrency' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'CurrentStock' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'TaxPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'CurriculumRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) NULL';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2)';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'TaxComission' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MinimumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MaximumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Debit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Credit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'TaxRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'DebitsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'CreditsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'Balance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

CREATE INDEX "IX_JobOffer_CurrencyID" ON "JobOffer" ("CurrencyID")
/

ALTER TABLE "JobOffer" ADD CONSTRAINT "FK_JobOffer_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
/

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES (N'20220525022406_V_1_5_8', N'6.0.5')
/

ALTER TABLE "CurriculumRecord" RENAME COLUMN "ProfessionalDegree_Title" TO "Recommendation"
/

ALTER TABLE "CurriculumRecord" RENAME COLUMN "ProfessionalDegree_Date" TO "ExperienceTo"
/

ALTER TABLE "CurriculumRecord" RENAME COLUMN "InstitutionDiploma_Date" TO "ExperienceFrom"
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmountInUSD' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'WithdrawedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceBeforeWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceAfterWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'TestNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReserveTimeInDays' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReservePercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'MainNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinTestNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinMainNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'RequiredSkillRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'PaymentDispute' 
  and column_name = 'DisputedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'BaseCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'AntiFraudScore' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MinSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MaxSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "JobOffer" ADD "ViewsCount" NUMBER(10) DEFAULT 0 NOT NULL
/

ALTER TABLE "JobField" ADD "Description" NVARCHAR2(2000)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ItemBid' 
  and column_name = 'Amount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'Recurrency' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'CurrentStock' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'TaxPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'CurriculumRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) DEFAULT 0.0 ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) DEFAULT 0.0 NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'CurriculumRecord' 
  and column_name = 'Date' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Date" TIMESTAMP(7) DEFAULT TO_TIMESTAMP(''0001-01-01 00:00:00.000'', ''YYYY-MM-DD HH24:MI:SS.FF'') ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Date" TIMESTAMP(7) DEFAULT TO_TIMESTAMP(''0001-01-01 00:00:00.000'', ''YYYY-MM-DD HH24:MI:SS.FF'') NOT NULL';
 end if;
end;
/

ALTER TABLE "CurriculumRecord" ADD "AwardedDate" TIMESTAMP(7)
/

ALTER TABLE "CurriculumRecord" ADD "CountryLanguageID" NVARCHAR2(450)
/

ALTER TABLE "CurriculumRecord" ADD "CurriculumExperienceID" NVARCHAR2(450)
/

ALTER TABLE "CurriculumRecord" ADD "CurriculumLanguageProficiency" NUMBER(10)
/

ALTER TABLE "CurriculumRecord" ADD "Description" NVARCHAR2(2000)
/

ALTER TABLE "CurriculumRecord" ADD "EmployerProfileID" NVARCHAR2(450)
/

ALTER TABLE "CurriculumRecord" ADD "Featured" NUMBER(1) DEFAULT 0 NOT NULL
/

ALTER TABLE "CurriculumRecord" ADD "IndividualSkillProficiency" NUMBER(10)
/

ALTER TABLE "CurriculumRecord" ADD "InstitutionName" NVARCHAR2(2000)
/

ALTER TABLE "CurriculumRecord" ADD "IsCurrentOccupation" NUMBER(1)
/

ALTER TABLE "CurriculumRecord" ADD "OrganizationName" NVARCHAR2(2000)
/

ALTER TABLE "CurriculumRecord" ADD "ProficiencyPercentage" BINARY_DOUBLE
/

ALTER TABLE "CurriculumRecord" ADD "ProjectAccomplishments" NVARCHAR2(2000)
/

ALTER TABLE "CurriculumRecord" ADD "ProjectGoals" NVARCHAR2(2000)
/

ALTER TABLE "CurriculumRecord" ADD "ProjectResponsibilities" NVARCHAR2(2000)
/

ALTER TABLE "CurriculumRecord" ADD "RelationshipType" NUMBER(10)
/

ALTER TABLE "CurriculumRecord" ADD "SocialProfileID" NVARCHAR2(450)
/

ALTER TABLE "Curriculum" ADD "CoverLetter" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "BusinessIndustryID" NVARCHAR2(450)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'TaxComission' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MinimumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MaximumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Debit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Credit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'TaxRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'DebitsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'CreditsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'Balance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Gig" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Type" NVARCHAR2(2000) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "EmployerProfileID" NVARCHAR2(450),
    "MinBudget" DECIMAL(18, 2) NOT NULL,
    "MaxBudget" DECIMAL(18, 2) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "CountryID" NVARCHAR2(450),
    "CountryStateID" NVARCHAR2(450),
    "CityID" NVARCHAR2(450),
    CONSTRAINT "PK_Gig" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Gig_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Gig_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_Gig_City_CityID" FOREIGN KEY ("CityID") REFERENCES "City" ("ID"),
    CONSTRAINT "FK_Gig_ContactProfile_EmployerProfileID" FOREIGN KEY ("EmployerProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_Gig_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID"),
    CONSTRAINT "FK_Gig_CountryState_CountryStateID" FOREIGN KEY ("CountryStateID") REFERENCES "CountryState" ("ID"),
    CONSTRAINT "FK_Gig_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"GigApplication" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "AcceptedTimestamp" TIMESTAMP(7),
    "Accepted" NUMBER(1) NOT NULL,
    "GigID" NVARCHAR2(450),
    "Proposal" NVARCHAR2(2000),
    "Cost" DECIMAL(18, 2) NOT NULL,
    "CurrencyID" NVARCHAR2(450),
    "JobApplicantProfileID" NVARCHAR2(450),
    CONSTRAINT "PK_GigApplication" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_GigApplication_ContactProfile_JobApplicantProfileID" FOREIGN KEY ("JobApplicantProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_GigApplication_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID"),
    CONSTRAINT "FK_GigApplication_Gig_GigID" FOREIGN KEY ("GigID") REFERENCES "Gig" ("ID")
)';
END;
/

CREATE INDEX "IX_CurriculumRecord_CountryLanguageID" ON "CurriculumRecord" ("CountryLanguageID")
/

CREATE INDEX "IX_CurriculumRecord_CurriculumExperienceID" ON "CurriculumRecord" ("CurriculumExperienceID")
/

CREATE INDEX "IX_CurriculumRecord_EmployerProfileID" ON "CurriculumRecord" ("EmployerProfileID")
/

CREATE INDEX "IX_CurriculumRecord_SocialProfileID" ON "CurriculumRecord" ("SocialProfileID")
/

CREATE INDEX "IX_Contact_BusinessIndustryID" ON "Contact" ("BusinessIndustryID")
/

CREATE INDEX "IX_Gig_BusinessID" ON "Gig" ("BusinessID")
/

CREATE INDEX "IX_Gig_BusinessProfileRecordID" ON "Gig" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Gig_CityID" ON "Gig" ("CityID")
/

CREATE INDEX "IX_Gig_CountryID" ON "Gig" ("CountryID")
/

CREATE INDEX "IX_Gig_CountryStateID" ON "Gig" ("CountryStateID")
/

CREATE INDEX "IX_Gig_CurrencyID" ON "Gig" ("CurrencyID")
/

CREATE INDEX "IX_Gig_EmployerProfileID" ON "Gig" ("EmployerProfileID")
/

CREATE INDEX "IX_GigApplication_CurrencyID" ON "GigApplication" ("CurrencyID")
/

CREATE INDEX "IX_GigApplication_GigID" ON "GigApplication" ("GigID")
/

CREATE INDEX "IX_GigApplication_JobApplicantProfileID" ON "GigApplication" ("JobApplicantProfileID")
/

ALTER TABLE "Contact" ADD CONSTRAINT "FK_Contact_BusinessIndustry_BusinessIndustryID" FOREIGN KEY ("BusinessIndustryID") REFERENCES "BusinessIndustry" ("ID")
/

ALTER TABLE "CurriculumRecord" ADD CONSTRAINT "FK_CurriculumRecord_ContactProfile_EmployerProfileID" FOREIGN KEY ("EmployerProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "CurriculumRecord" ADD CONSTRAINT "FK_CurriculumRecord_CountryLanguage_CountryLanguageID" FOREIGN KEY ("CountryLanguageID") REFERENCES "CountryLanguage" ("Iso639_1")
/

ALTER TABLE "CurriculumRecord" ADD CONSTRAINT "FK_CurriculumRecord_CurriculumRecord_CurriculumExperienceID" FOREIGN KEY ("CurriculumExperienceID") REFERENCES "CurriculumRecord" ("ID")
/

ALTER TABLE "CurriculumRecord" ADD CONSTRAINT "FK_CurriculumRecord_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
/

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES (N'20220528230626_V_1_6_1', N'6.0.5')
/

ALTER TABLE "CurriculumRecord" DROP CONSTRAINT "FK_CurriculumRecord_ContactProfile_InstitutionDiploma_AcademicInstitutionProfileID"
/

ALTER TABLE "CurriculumRecord" DROP CONSTRAINT "FK_CurriculumRecord_ContactProfile_ProfessionalDegree_AcademicInstitutionProfileID"
/

ALTER TABLE "CurriculumRecord" DROP CONSTRAINT "FK_CurriculumRecord_CurriculumSkill_CurriculumSkillID"
/

ALTER TABLE "CurriculumSkill" DROP CONSTRAINT "FK_CurriculumSkill_Business_BusinessID"
/

ALTER TABLE "CurriculumSkill" DROP CONSTRAINT "FK_CurriculumSkill_BusinessProfileRecord_BusinessProfileRecordID"
/

ALTER TABLE "ProjectResourceSkillRecord" DROP CONSTRAINT "FK_ProjectResourceSkillRecord_CurriculumSkill_ProjectResourceSkillID"
/

ALTER TABLE "RequiredSkillRecord" DROP CONSTRAINT "FK_RequiredSkillRecord_CurriculumSkill_CurriculumSkillID"
/

ALTER TABLE "CurriculumSkill" DROP CONSTRAINT "PK_CurriculumSkill"
/

ALTER TABLE "Curriculum" DROP COLUMN "CoverLetter"
/

ALTER TABLE "CurriculumSkill" RENAME TO "Skill"
/

ALTER TABLE "RequiredSkillRecord" RENAME COLUMN "CurriculumSkillID" TO "SkillID"
/

ALTER INDEX "IX_RequiredSkillRecord_CurriculumSkillID" RENAME TO "IX_RequiredSkillRecord_SkillID"
/

ALTER TABLE "CurriculumRecord" RENAME COLUMN "ProfessionalDegree_KnowledgeField" TO "CurriculumDegree_KnowledgeField"
/

ALTER TABLE "CurriculumRecord" RENAME COLUMN "ProfessionalDegree_AcademicInstitutionProfileID" TO "CurriculumEducation_AcademicInstitutionProfileID"
/

ALTER TABLE "CurriculumRecord" RENAME COLUMN "InstitutionDiploma_AcademicInstitutionProfileID" TO "CurriculumDiploma_AcademicInstitutionProfileID"
/

ALTER TABLE "CurriculumRecord" RENAME COLUMN "CurriculumSkillID" TO "SkillID"
/

ALTER INDEX "IX_CurriculumRecord_ProfessionalDegree_AcademicInstitutionProfileID" RENAME TO "IX_CurriculumRecord_CurriculumEducation_AcademicInstitutionProfileID"
/

ALTER INDEX "IX_CurriculumRecord_InstitutionDiploma_AcademicInstitutionProfileID" RENAME TO "IX_CurriculumRecord_CurriculumDiploma_AcademicInstitutionProfileID"
/

ALTER INDEX "IX_CurriculumRecord_CurriculumSkillID" RENAME TO "IX_CurriculumRecord_SkillID"
/

ALTER INDEX "IX_CurriculumSkill_BusinessProfileRecordID" RENAME TO "IX_Skill_BusinessProfileRecordID"
/

ALTER INDEX "IX_CurriculumSkill_BusinessID" RENAME TO "IX_Skill_BusinessID"
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmountInUSD' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'WithdrawedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceBeforeWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceAfterWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'TestNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReserveTimeInDays' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReservePercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'MainNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinTestNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinMainNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'RequiredSkillRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'PaymentDispute' 
  and column_name = 'DisputedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'BaseCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'AntiFraudScore' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MinSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MaxSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ItemBid' 
  and column_name = 'Amount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'Recurrency' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'CurrentStock' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'GigApplication' 
  and column_name = 'Cost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "GigApplication" ADD "CurriculumCoverID" NVARCHAR2(450)
/

ALTER TABLE "GigApplication" ADD "CurriculumID" NVARCHAR2(450)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MinBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MaxBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'TaxPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'CurriculumRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "CurriculumRecord" ADD "CoverLetter" NVARCHAR2(2000)
/

ALTER TABLE "CurriculumRecord" ADD "CurriculumDegree_AcademicInstitutionProfileID" NVARCHAR2(450)
/

ALTER TABLE "CurriculumRecord" ADD "EndDate" TIMESTAMP(7)
/

ALTER TABLE "CurriculumRecord" ADD "GigID" NVARCHAR2(450)
/

ALTER TABLE "CurriculumRecord" ADD "StartDate" TIMESTAMP(7)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'TaxComission' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MinimumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MaximumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Debit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Credit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'TaxRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'DebitsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'CreditsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'Balance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "Skill" ADD CONSTRAINT "PK_Skill" PRIMARY KEY ("ID")
/

CREATE INDEX "IX_GigApplication_CurriculumCoverID" ON "GigApplication" ("CurriculumCoverID")
/

CREATE INDEX "IX_GigApplication_CurriculumID" ON "GigApplication" ("CurriculumID")
/

CREATE INDEX "IX_CurriculumRecord_CurriculumDegree_AcademicInstitutionProfileID" ON "CurriculumRecord" ("CurriculumDegree_AcademicInstitutionProfileID")
/

CREATE INDEX "IX_CurriculumRecord_GigID" ON "CurriculumRecord" ("GigID")
/

ALTER TABLE "CurriculumRecord" ADD CONSTRAINT "FK_CurriculumRecord_ContactProfile_CurriculumDegree_AcademicInstitutionProfileID" FOREIGN KEY ("CurriculumDegree_AcademicInstitutionProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "CurriculumRecord" ADD CONSTRAINT "FK_CurriculumRecord_ContactProfile_CurriculumDiploma_AcademicInstitutionProfileID" FOREIGN KEY ("CurriculumDiploma_AcademicInstitutionProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "CurriculumRecord" ADD CONSTRAINT "FK_CurriculumRecord_ContactProfile_CurriculumEducation_AcademicInstitutionProfileID" FOREIGN KEY ("CurriculumEducation_AcademicInstitutionProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "CurriculumRecord" ADD CONSTRAINT "FK_CurriculumRecord_Gig_GigID" FOREIGN KEY ("GigID") REFERENCES "Gig" ("ID")
/

ALTER TABLE "CurriculumRecord" ADD CONSTRAINT "FK_CurriculumRecord_Skill_SkillID" FOREIGN KEY ("SkillID") REFERENCES "Skill" ("ID")
/

ALTER TABLE "GigApplication" ADD CONSTRAINT "FK_GigApplication_Curriculum_CurriculumID" FOREIGN KEY ("CurriculumID") REFERENCES "Curriculum" ("ID")
/

ALTER TABLE "GigApplication" ADD CONSTRAINT "FK_GigApplication_CurriculumRecord_CurriculumCoverID" FOREIGN KEY ("CurriculumCoverID") REFERENCES "CurriculumRecord" ("ID")
/

ALTER TABLE "ProjectResourceSkillRecord" ADD CONSTRAINT "FK_ProjectResourceSkillRecord_Skill_ProjectResourceSkillID" FOREIGN KEY ("ProjectResourceSkillID") REFERENCES "Skill" ("ID")
/

ALTER TABLE "RequiredSkillRecord" ADD CONSTRAINT "FK_RequiredSkillRecord_Skill_SkillID" FOREIGN KEY ("SkillID") REFERENCES "Skill" ("ID")
/

ALTER TABLE "Skill" ADD CONSTRAINT "FK_Skill_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID")
/

ALTER TABLE "Skill" ADD CONSTRAINT "FK_Skill_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES (N'20220529194100_V_1_6_2', N'6.0.5')
/

ALTER TABLE "CurriculumRecord" DROP COLUMN "AwardedDate"
/

ALTER TABLE "Skill" RENAME COLUMN "CurriculumSkillType" TO "SkillType"
/

ALTER TABLE "CurriculumRecord" RENAME COLUMN "OrganizationName" TO "Responsibilities"
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmountInUSD' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'WithdrawedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceBeforeWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceAfterWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'TestNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReserveTimeInDays' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReservePercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'MainNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinTestNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinMainNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "Skill" ADD "IconUrl" NVARCHAR2(2000)
/

ALTER TABLE "Skill" ADD "Url" NVARCHAR2(2000)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'RequiredSkillRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'PaymentDispute' 
  and column_name = 'DisputedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'BaseCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'AntiFraudScore' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "JobOfferApplication" ADD "CurrencyID" NVARCHAR2(450)
/

ALTER TABLE "JobOfferApplication" ADD "CurriculumCoverID" NVARCHAR2(450)
/

ALTER TABLE "JobOfferApplication" ADD "SalaryExpectation" BINARY_DOUBLE DEFAULT 0.0E0 NOT NULL
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MinSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MaxSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ItemBid' 
  and column_name = 'Amount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'Recurrency' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'CurrentStock' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'GigApplication' 
  and column_name = 'Cost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MinBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MaxBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'TaxPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'CurriculumRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "CurriculumRecord" ADD "Achievements" NVARCHAR2(2000)
/

ALTER TABLE "CurriculumRecord" ADD "CurriculumEducation_KnowledgeField" NVARCHAR2(2000)
/

ALTER TABLE "CurriculumRecord" ADD "ImageUrl" NVARCHAR2(2000)
/

ALTER TABLE "CurriculumRecord" ADD "Organization" NVARCHAR2(2000)
/

ALTER TABLE "CurriculumRecord" ADD "Remarks" NVARCHAR2(2000)
/

ALTER TABLE "ContactProfile" ADD "CurrencyID" NVARCHAR2(450)
/

ALTER TABLE "ContactProfile" ADD "CurriculumID" NVARCHAR2(450)
/

ALTER TABLE "ContactProfile" ADD "SalaryExpectation" DECIMAL(18, 2)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'TaxComission' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MinimumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MaximumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "ActivityFeed" ADD "GigApplicationID" NVARCHAR2(450)
/

ALTER TABLE "ActivityFeed" ADD "JobOfferApplicationID" NVARCHAR2(450)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Debit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Credit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'TaxRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'DebitsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'CreditsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'Balance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

CREATE INDEX "IX_JobOfferApplication_CurrencyID" ON "JobOfferApplication" ("CurrencyID")
/

CREATE INDEX "IX_JobOfferApplication_CurriculumCoverID" ON "JobOfferApplication" ("CurriculumCoverID")
/

CREATE INDEX "IX_ContactProfile_CurrencyID" ON "ContactProfile" ("CurrencyID")
/

CREATE UNIQUE INDEX "IX_ContactProfile_CurriculumID" ON "ContactProfile" ("CurriculumID")
/

CREATE UNIQUE INDEX "IX_ActivityFeed_GigApplicationID" ON "ActivityFeed" ("GigApplicationID")
/

CREATE UNIQUE INDEX "IX_ActivityFeed_JobOfferApplicationID" ON "ActivityFeed" ("JobOfferApplicationID")
/

ALTER TABLE "ActivityFeed" ADD CONSTRAINT "FK_ActivityFeed_GigApplication_GigApplicationID" FOREIGN KEY ("GigApplicationID") REFERENCES "GigApplication" ("ID")
/

ALTER TABLE "ActivityFeed" ADD CONSTRAINT "FK_ActivityFeed_JobOfferApplication_JobOfferApplicationID" FOREIGN KEY ("JobOfferApplicationID") REFERENCES "JobOfferApplication" ("ID")
/

ALTER TABLE "ContactProfile" ADD CONSTRAINT "FK_ContactProfile_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
/

ALTER TABLE "ContactProfile" ADD CONSTRAINT "FK_ContactProfile_Curriculum_CurriculumID" FOREIGN KEY ("CurriculumID") REFERENCES "Curriculum" ("ID")
/

ALTER TABLE "JobOfferApplication" ADD CONSTRAINT "FK_JobOfferApplication_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
/

ALTER TABLE "JobOfferApplication" ADD CONSTRAINT "FK_JobOfferApplication_CurriculumRecord_CurriculumCoverID" FOREIGN KEY ("CurriculumCoverID") REFERENCES "CurriculumRecord" ("ID")
/

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES (N'20220530004348_V_1_6_3', N'6.0.5')
/

ALTER TABLE "ContactProfile" DROP CONSTRAINT "FK_ContactProfile_Curriculum_CurriculumID"
/

ALTER TABLE "Curriculum" DROP CONSTRAINT "FK_Curriculum_SocialProfile_SocialProfileID"
/

DROP INDEX "IX_Curriculum_SocialProfileID"
/

DROP INDEX "IX_ContactProfile_CurriculumID"
/

ALTER TABLE "Curriculum" DROP COLUMN "SocialProfileID"
/

ALTER TABLE "ContactProfile" DROP COLUMN "CurriculumID"
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmountInUSD' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'WithdrawedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceBeforeWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceAfterWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'TestNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReserveTimeInDays' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReservePercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'MainNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinTestNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinMainNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'RequiredSkillRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'PaymentDispute' 
  and column_name = 'DisputedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'BaseCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'AntiFraudScore' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MinSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MaxSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ItemBid' 
  and column_name = 'Amount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'Recurrency' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'CurrentStock' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'GigApplication' 
  and column_name = 'Cost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MinBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MaxBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'TaxPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'CurriculumRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ContactProfile' 
  and column_name = 'SalaryExpectation' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "SalaryExpectation" DECIMAL(18, 2) NULL';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "SalaryExpectation" DECIMAL(18, 2)';
 end if;
end;
/

ALTER TABLE "Contact" ADD "BusinessSegmentID" NVARCHAR2(450)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'TaxComission' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MinimumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MaximumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Debit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Credit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'TaxRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'DebitsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'CreditsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'Balance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

CREATE INDEX "IX_Contact_BusinessSegmentID" ON "Contact" ("BusinessSegmentID")
/

ALTER TABLE "Contact" ADD CONSTRAINT "FK_Contact_BusinessSegment_BusinessSegmentID" FOREIGN KEY ("BusinessSegmentID") REFERENCES "BusinessSegment" ("ID")
/

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES (N'20220530030209_V_1_6_4', N'6.0.5')
/

ALTER TABLE "ContactProfile" DROP CONSTRAINT "FK_ContactProfile_PartnerTier_PartnerTierID"
/

DROP TABLE "PartnerTier"
/

DROP TABLE "WorkOrder"
/

ALTER TABLE "Contact" DROP COLUMN "Birdthday"
/

ALTER TABLE "BusinessSegment" DROP COLUMN "EmployeeHighRangeValue"
/

ALTER TABLE "BusinessSegment" DROP COLUMN "EmployeeLowRangeValue"
/

ALTER TABLE "ContactProfile" RENAME COLUMN "PartnerTierID" TO "PartnerProgramTierID"
/

ALTER INDEX "IX_ContactProfile_PartnerTierID" RENAME TO "IX_ContactProfile_PartnerProgramTierID"
/

ALTER TABLE "Contact" RENAME COLUMN "PreferedContactMethod" TO "Website"
/

ALTER TABLE "Contact" RENAME COLUMN "BirthDate" TO "Birthday"
/

ALTER TABLE "Workstation" ADD "BusinessProfileRecordID" NVARCHAR2(450)
/

ALTER TABLE "Workstation" ADD "Code" NVARCHAR2(2000)
/

ALTER TABLE "Workstation" ADD "Description" NVARCHAR2(2000)
/

ALTER TABLE "Workstation" ADD "LocationID" NVARCHAR2(450)
/

ALTER TABLE "Workstation" ADD "Type" NVARCHAR2(2000)
/

ALTER TABLE "WorkOrderType" ADD "BusinessProfileRecordID" NVARCHAR2(450)
/

ALTER TABLE "WorkOrderType" ADD "Description" NVARCHAR2(2000)
/

ALTER TABLE "WorkOrderType" ADD "Name" NVARCHAR2(2000)
/

ALTER TABLE "WorkOrderType" ADD "Timestamp" TIMESTAMP(7) DEFAULT TO_TIMESTAMP('0001-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF') NOT NULL
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmountInUSD' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'WithdrawedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceBeforeWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceAfterWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'TestNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReserveTimeInDays' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReservePercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'MainNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinTestNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinMainNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "Task" ADD "Data" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data1" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data1Label" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data2" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data2Label" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data3" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data3Label" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data4" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data4Label" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data5" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data5Label" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data6" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data6Label" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data7" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data7Label" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data8" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data8Label" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data9" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Data9Label" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "DataLabel" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "Instructions" NVARCHAR2(2000)
/

ALTER TABLE "Task" ADD "IsTemplate" NUMBER(1) DEFAULT 0 NOT NULL
/

ALTER TABLE "Task" ADD "PriorityID" NVARCHAR2(450)
/

ALTER TABLE "Task" ADD "ServiceCaseID" NVARCHAR2(450)
/

ALTER TABLE "Task" ADD "ServiceID" NVARCHAR2(450)
/

ALTER TABLE "Shipment" ADD "ShippingTerms" NUMBER(10) DEFAULT 0 NOT NULL
/

ALTER TABLE "ServiceCase" ADD "CurrencyID" NVARCHAR2(450)
/

ALTER TABLE "ServiceCase" ADD "Discriminator" NVARCHAR2(2000) NOT NULL
/

ALTER TABLE "ServiceCase" ADD "Instructions" NVARCHAR2(2000)
/

ALTER TABLE "ServiceCase" ADD "PriceListID" NVARCHAR2(450)
/

ALTER TABLE "ServiceCase" ADD "ProductionPlanID" NVARCHAR2(450)
/

ALTER TABLE "ServiceCase" ADD "PromisedEndDate" TIMESTAMP(7) DEFAULT TO_TIMESTAMP('0001-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF') NOT NULL
/

ALTER TABLE "ServiceCase" ADD "PromisedStartDate" TIMESTAMP(7) DEFAULT TO_TIMESTAMP('0001-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF') NOT NULL
/

ALTER TABLE "ServiceCase" ADD "Taxable" NUMBER(1) DEFAULT 0 NOT NULL
/

ALTER TABLE "ServiceCase" ADD "TerritoryID" NVARCHAR2(450)
/

ALTER TABLE "ServiceCase" ADD "WorkLocation" NUMBER(10) DEFAULT 0 NOT NULL
/

ALTER TABLE "ServiceCase" ADD "WorkOrderTypeID" NVARCHAR2(450)
/

ALTER TABLE "ServiceCase" ADD "WorkstationID" NVARCHAR2(450)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'RequiredSkillRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "ProductionPlan" ADD "BusinessProfileRecordID" NVARCHAR2(450)
/

ALTER TABLE "ProductionPlan" ADD "Description" NVARCHAR2(2000)
/

ALTER TABLE "ProductionPlan" ADD "Timestamp" TIMESTAMP(7) DEFAULT TO_TIMESTAMP('0001-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF') NOT NULL
/

ALTER TABLE "ProductionPlan" ADD "Title" NVARCHAR2(2000)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'PaymentDispute' 
  and column_name = 'DisputedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'BaseCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'AntiFraudScore' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MinSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MaxSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ItemBid' 
  and column_name = 'Amount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'Recurrency' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'CurrentStock' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'GigApplication' 
  and column_name = 'Cost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MinBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MaxBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'TaxPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'CurriculumRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "Curriculum" ADD "JobApplicantProfileID" NVARCHAR2(450)
/

ALTER TABLE "Curriculum" ADD "SocialProfileID" NVARCHAR2(450)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ContactProfile' 
  and column_name = 'SalaryExpectation' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "SalaryExpectation" DECIMAL(18, 2) NULL';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "SalaryExpectation" DECIMAL(18, 2)';
 end if;
end;
/

ALTER TABLE "ContactProfile" ADD "PartnerProfileStatus" NUMBER(10)
/

ALTER TABLE "ContactProfile" ADD "PartnerProgramEndDate" TIMESTAMP(7)
/

ALTER TABLE "ContactProfile" ADD "PartnerProgramStartDate" TIMESTAMP(7)
/

ALTER TABLE "Contact" ADD "About" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "AllowPhoneCalls" NUMBER(1) DEFAULT 0 NOT NULL
/

ALTER TABLE "Contact" ADD "BusinessSizeID" NVARCHAR2(450)
/

ALTER TABLE "Contact" ADD "Data" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data1" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data1Label" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data2" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data2Label" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data3" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data3Label" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data4" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data4Label" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data5" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data5Label" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data6" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data6Label" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data7" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data7Label" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data8" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data8Label" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data9" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Data9Label" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "DataLabel" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Description" NUMBER(1) DEFAULT 0 NOT NULL
/

ALTER TABLE "Contact" ADD "OrganizationName" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "OrganizationOwnership" NUMBER(10) DEFAULT 0 NOT NULL
/

ALTER TABLE "Contact" ADD "SICCode" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "ShippingTerms" NUMBER(10) DEFAULT 0 NOT NULL
/

ALTER TABLE "Contact" ADD "TaxExempt" NUMBER(1) DEFAULT 0 NOT NULL
/

ALTER TABLE "Contact" ADD "TickerSymbol" NVARCHAR2(2000)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'TaxComission' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "BusinessSegment" ADD "CurrencyID" NVARCHAR2(450)
/

ALTER TABLE "BusinessSegment" ADD "MaxRevenue" BINARY_DOUBLE DEFAULT 0.0E0 NOT NULL
/

ALTER TABLE "BusinessSegment" ADD "MinRevenue" BINARY_DOUBLE DEFAULT 0.0E0 NOT NULL
/

ALTER TABLE "Business" ADD "BusinessSizeID" NVARCHAR2(450)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MinimumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MaximumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Debit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Credit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'TaxRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'DebitsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'CreditsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'Balance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"BusinessSize" (
    "ID" NVARCHAR2(450) NOT NULL,
    "EmployeeLowRangeValue" NUMBER(10) NOT NULL,
    "EmployeeHighRangeValue" NUMBER(10) NOT NULL,
    CONSTRAINT "PK_BusinessSize" PRIMARY KEY ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PartnerProgram" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NUMBER(1) NOT NULL,
    "Criteria" NUMBER(1) NOT NULL,
    "Description" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "PartnerProgramEndDate" TIMESTAMP(7) NOT NULL,
    "PartnerProgramStartDate" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_PartnerProgram" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PartnerProgram_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_PartnerProgram_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"Priority" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NVARCHAR2(2000),
    "Description" NVARCHAR2(2000),
    "Notes" NVARCHAR2(2000),
    "Color" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_Priority" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Priority_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_Priority_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ServiceFulfillmentPreferences" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Name" NVARCHAR2(2000),
    "Details" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "ServiceCaseID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_ServiceFulfillmentPreferences" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ServiceFulfillmentPreferences_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ServiceFulfillmentPreferences_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ServiceFulfillmentPreferences_ServiceCase_ServiceCaseID" FOREIGN KEY ("ServiceCaseID") REFERENCES "ServiceCase" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PartnerProgramTier" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Title" NUMBER(1) NOT NULL,
    "Criteria" NUMBER(1) NOT NULL,
    "Description" NUMBER(1) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "PartnerProgramID" NVARCHAR2(450),
    "PriceListID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    CONSTRAINT "PK_PartnerProgramTier" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PartnerProgramTier_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_PartnerProgramTier_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_PartnerProgramTier_PartnerProgram_PartnerProgramID" FOREIGN KEY ("PartnerProgramID") REFERENCES "PartnerProgram" ("ID"),
    CONSTRAINT "FK_PartnerProgramTier_PriceList_PriceListID" FOREIGN KEY ("PriceListID") REFERENCES "PriceList" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"ServiceFulfillment" (
    "ID" NVARCHAR2(450) NOT NULL,
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "Accepted" NUMBER(1) NOT NULL,
    "Remarks" NVARCHAR2(2000),
    "ServiceID" NVARCHAR2(450),
    "ServiceCaseID" NVARCHAR2(450),
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "ServiceFulfillmentPreferencesID" NVARCHAR2(450),
    CONSTRAINT "PK_ServiceFulfillment" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_ServiceFulfillment_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_ServiceFulfillment_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_ServiceFulfillment_Item_ServiceID" FOREIGN KEY ("ServiceID") REFERENCES "Item" ("ID"),
    CONSTRAINT "FK_ServiceFulfillment_ServiceCase_ServiceCaseID" FOREIGN KEY ("ServiceCaseID") REFERENCES "ServiceCase" ("ID"),
    CONSTRAINT "FK_ServiceFulfillment_ServiceFulfillmentPreferences_ServiceFulfillmentPreferencesID" FOREIGN KEY ("ServiceFulfillmentPreferencesID") REFERENCES "ServiceFulfillmentPreferences" ("ID")
)';
END;
/

BEGIN 
EXECUTE IMMEDIATE 'CREATE TABLE 
"PartnerProgramRegistration" (
    "ID" NVARCHAR2(450) NOT NULL,
    "FormData" NVARCHAR2(2000),
    "Timestamp" TIMESTAMP(7) NOT NULL,
    "RegistrationStatus" NUMBER(10) NOT NULL,
    "BusinessID" NVARCHAR2(450),
    "BusinessProfileRecordID" NVARCHAR2(450),
    "PartnerProgramTierID" NVARCHAR2(450),
    "PartnerProfileID" NVARCHAR2(450),
    "PartnerProgramID" NVARCHAR2(450),
    CONSTRAINT "PK_PartnerProgramRegistration" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_PartnerProgramRegistration_Business_BusinessID" FOREIGN KEY ("BusinessID") REFERENCES "Business" ("ID"),
    CONSTRAINT "FK_PartnerProgramRegistration_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID"),
    CONSTRAINT "FK_PartnerProgramRegistration_ContactProfile_PartnerProfileID" FOREIGN KEY ("PartnerProfileID") REFERENCES "ContactProfile" ("ID"),
    CONSTRAINT "FK_PartnerProgramRegistration_PartnerProgram_PartnerProgramID" FOREIGN KEY ("PartnerProgramID") REFERENCES "PartnerProgram" ("ID"),
    CONSTRAINT "FK_PartnerProgramRegistration_PartnerProgramTier_PartnerProgramTierID" FOREIGN KEY ("PartnerProgramTierID") REFERENCES "PartnerProgramTier" ("ID")
)';
END;
/

CREATE INDEX "IX_Workstation_BusinessProfileRecordID" ON "Workstation" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Workstation_LocationID" ON "Workstation" ("LocationID")
/

CREATE INDEX "IX_WorkOrderType_BusinessProfileRecordID" ON "WorkOrderType" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Task_PriorityID" ON "Task" ("PriorityID")
/

CREATE INDEX "IX_Task_ServiceCaseID" ON "Task" ("ServiceCaseID")
/

CREATE INDEX "IX_Task_ServiceID" ON "Task" ("ServiceID")
/

CREATE INDEX "IX_ServiceCase_CurrencyID" ON "ServiceCase" ("CurrencyID")
/

CREATE INDEX "IX_ServiceCase_PriceListID" ON "ServiceCase" ("PriceListID")
/

CREATE INDEX "IX_ServiceCase_ProductionPlanID" ON "ServiceCase" ("ProductionPlanID")
/

CREATE INDEX "IX_ServiceCase_TerritoryID" ON "ServiceCase" ("TerritoryID")
/

CREATE INDEX "IX_ServiceCase_WorkOrderTypeID" ON "ServiceCase" ("WorkOrderTypeID")
/

CREATE INDEX "IX_ServiceCase_WorkstationID" ON "ServiceCase" ("WorkstationID")
/

CREATE INDEX "IX_ProductionPlan_BusinessProfileRecordID" ON "ProductionPlan" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_Curriculum_JobApplicantProfileID" ON "Curriculum" ("JobApplicantProfileID")
/

CREATE INDEX "IX_Curriculum_SocialProfileID" ON "Curriculum" ("SocialProfileID")
/

CREATE INDEX "IX_Contact_BusinessSizeID" ON "Contact" ("BusinessSizeID")
/

CREATE INDEX "IX_BusinessSegment_CurrencyID" ON "BusinessSegment" ("CurrencyID")
/

CREATE INDEX "IX_Business_BusinessSizeID" ON "Business" ("BusinessSizeID")
/

CREATE INDEX "IX_PartnerProgram_BusinessID" ON "PartnerProgram" ("BusinessID")
/

CREATE INDEX "IX_PartnerProgram_BusinessProfileRecordID" ON "PartnerProgram" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_PartnerProgramRegistration_BusinessID" ON "PartnerProgramRegistration" ("BusinessID")
/

CREATE INDEX "IX_PartnerProgramRegistration_BusinessProfileRecordID" ON "PartnerProgramRegistration" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_PartnerProgramRegistration_PartnerProfileID" ON "PartnerProgramRegistration" ("PartnerProfileID")
/

CREATE INDEX "IX_PartnerProgramRegistration_PartnerProgramID" ON "PartnerProgramRegistration" ("PartnerProgramID")
/

CREATE INDEX "IX_PartnerProgramRegistration_PartnerProgramTierID" ON "PartnerProgramRegistration" ("PartnerProgramTierID")
/

CREATE INDEX "IX_PartnerProgramTier_BusinessID" ON "PartnerProgramTier" ("BusinessID")
/

CREATE INDEX "IX_PartnerProgramTier_BusinessProfileRecordID" ON "PartnerProgramTier" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_PartnerProgramTier_PartnerProgramID" ON "PartnerProgramTier" ("PartnerProgramID")
/

CREATE INDEX "IX_PartnerProgramTier_PriceListID" ON "PartnerProgramTier" ("PriceListID")
/

CREATE INDEX "IX_Priority_BusinessID" ON "Priority" ("BusinessID")
/

CREATE INDEX "IX_Priority_BusinessProfileRecordID" ON "Priority" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ServiceFulfillment_BusinessID" ON "ServiceFulfillment" ("BusinessID")
/

CREATE INDEX "IX_ServiceFulfillment_BusinessProfileRecordID" ON "ServiceFulfillment" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ServiceFulfillment_ServiceCaseID" ON "ServiceFulfillment" ("ServiceCaseID")
/

CREATE INDEX "IX_ServiceFulfillment_ServiceFulfillmentPreferencesID" ON "ServiceFulfillment" ("ServiceFulfillmentPreferencesID")
/

CREATE INDEX "IX_ServiceFulfillment_ServiceID" ON "ServiceFulfillment" ("ServiceID")
/

CREATE INDEX "IX_ServiceFulfillmentPreferences_BusinessID" ON "ServiceFulfillmentPreferences" ("BusinessID")
/

CREATE INDEX "IX_ServiceFulfillmentPreferences_BusinessProfileRecordID" ON "ServiceFulfillmentPreferences" ("BusinessProfileRecordID")
/

CREATE INDEX "IX_ServiceFulfillmentPreferences_ServiceCaseID" ON "ServiceFulfillmentPreferences" ("ServiceCaseID")
/

ALTER TABLE "Business" ADD CONSTRAINT "FK_Business_BusinessSize_BusinessSizeID" FOREIGN KEY ("BusinessSizeID") REFERENCES "BusinessSize" ("ID")
/

ALTER TABLE "BusinessSegment" ADD CONSTRAINT "FK_BusinessSegment_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
/

ALTER TABLE "Contact" ADD CONSTRAINT "FK_Contact_BusinessSize_BusinessSizeID" FOREIGN KEY ("BusinessSizeID") REFERENCES "BusinessSize" ("ID")
/

ALTER TABLE "ContactProfile" ADD CONSTRAINT "FK_ContactProfile_PartnerProgramTier_PartnerProgramTierID" FOREIGN KEY ("PartnerProgramTierID") REFERENCES "PartnerProgramTier" ("ID")
/

ALTER TABLE "Curriculum" ADD CONSTRAINT "FK_Curriculum_ContactProfile_JobApplicantProfileID" FOREIGN KEY ("JobApplicantProfileID") REFERENCES "ContactProfile" ("ID")
/

ALTER TABLE "Curriculum" ADD CONSTRAINT "FK_Curriculum_SocialProfile_SocialProfileID" FOREIGN KEY ("SocialProfileID") REFERENCES "SocialProfile" ("ID")
/

ALTER TABLE "ProductionPlan" ADD CONSTRAINT "FK_ProductionPlan_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "ServiceCase" ADD CONSTRAINT "FK_ServiceCase_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
/

ALTER TABLE "ServiceCase" ADD CONSTRAINT "FK_ServiceCase_PriceList_PriceListID" FOREIGN KEY ("PriceListID") REFERENCES "PriceList" ("ID")
/

ALTER TABLE "ServiceCase" ADD CONSTRAINT "FK_ServiceCase_ProductionPlan_ProductionPlanID" FOREIGN KEY ("ProductionPlanID") REFERENCES "ProductionPlan" ("ID")
/

ALTER TABLE "ServiceCase" ADD CONSTRAINT "FK_ServiceCase_Territory_TerritoryID" FOREIGN KEY ("TerritoryID") REFERENCES "Territory" ("ID")
/

ALTER TABLE "ServiceCase" ADD CONSTRAINT "FK_ServiceCase_WorkOrderType_WorkOrderTypeID" FOREIGN KEY ("WorkOrderTypeID") REFERENCES "WorkOrderType" ("ID")
/

ALTER TABLE "ServiceCase" ADD CONSTRAINT "FK_ServiceCase_Workstation_WorkstationID" FOREIGN KEY ("WorkstationID") REFERENCES "Workstation" ("ID")
/

ALTER TABLE "Task" ADD CONSTRAINT "FK_Task_Item_ServiceID" FOREIGN KEY ("ServiceID") REFERENCES "Item" ("ID")
/

ALTER TABLE "Task" ADD CONSTRAINT "FK_Task_Priority_PriorityID" FOREIGN KEY ("PriorityID") REFERENCES "Priority" ("ID")
/

ALTER TABLE "Task" ADD CONSTRAINT "FK_Task_ServiceCase_ServiceCaseID" FOREIGN KEY ("ServiceCaseID") REFERENCES "ServiceCase" ("ID")
/

ALTER TABLE "WorkOrderType" ADD CONSTRAINT "FK_WorkOrderType_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "Workstation" ADD CONSTRAINT "FK_Workstation_BusinessProfileRecord_BusinessProfileRecordID" FOREIGN KEY ("BusinessProfileRecordID") REFERENCES "BusinessProfileRecord" ("ID")
/

ALTER TABLE "Workstation" ADD CONSTRAINT "FK_Workstation_Location_LocationID" FOREIGN KEY ("LocationID") REFERENCES "Location" ("ID")
/

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES (N'20220530042909_V_1_6_5', N'6.0.5')
/

ALTER TABLE "BusinessSegment" DROP CONSTRAINT "FK_BusinessSegment_Currency_CurrencyID"
/

DROP INDEX "IX_BusinessSegment_CurrencyID"
/

ALTER TABLE "CurriculumRecord" DROP COLUMN "EndDate"
/

ALTER TABLE "CurriculumRecord" DROP COLUMN "ExperienceFrom"
/

ALTER TABLE "CurriculumRecord" DROP COLUMN "ExperienceTo"
/

ALTER TABLE "CurriculumRecord" DROP COLUMN "IsCurrentOccupation"
/

ALTER TABLE "CurriculumRecord" DROP COLUMN "StartDate"
/

ALTER TABLE "ContactProfile" DROP COLUMN "SalaryExpectation"
/

ALTER TABLE "BusinessSegment" DROP COLUMN "CurrencyID"
/

ALTER TABLE "BusinessSegment" RENAME COLUMN "MinRevenue" TO "MinEmployees"
/

ALTER TABLE "BusinessSegment" RENAME COLUMN "MaxRevenue" TO "MaxEmployees"
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmountInUSD' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'WithdrawedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceBeforeWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceAfterWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'TestNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReserveTimeInDays' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReservePercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'MainNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinTestNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinMainNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'RequiredSkillRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'PaymentDispute' 
  and column_name = 'DisputedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'BaseCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'AntiFraudScore' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MinSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MaxSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ItemBid' 
  and column_name = 'Amount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'Recurrency' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'CurrentStock' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'GigApplication' 
  and column_name = 'Cost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'Type' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "Type" NVARCHAR2(2000) NULL';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "Type" NVARCHAR2(2000)';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MinBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MaxBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "Gig" ADD "ExpectedDeliveryDate" TIMESTAMP(7) DEFAULT TO_TIMESTAMP('0001-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF') NOT NULL
/

ALTER TABLE "Gig" ADD "ViewsCount" NUMBER(10) DEFAULT 0 NOT NULL
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'TaxPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'CurriculumRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "CurriculumRecord" ADD "Current" NUMBER(1) DEFAULT 0 NOT NULL
/

ALTER TABLE "CurriculumRecord" ADD "DateFrom" TIMESTAMP(7) DEFAULT TO_TIMESTAMP('0001-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF') NOT NULL
/

ALTER TABLE "CurriculumRecord" ADD "DateTo" TIMESTAMP(7) DEFAULT TO_TIMESTAMP('0001-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF') NOT NULL
/

ALTER TABLE "ContactProfile" ADD "CareerLevel" NUMBER(10)
/

ALTER TABLE "ContactProfile" ADD "CurrentSalary" DECIMAL(18, 2)
/

ALTER TABLE "ContactProfile" ADD "MaxSalaryExpectation" DECIMAL(18, 2)
/

ALTER TABLE "ContactProfile" ADD "MinSalaryExpectation" DECIMAL(18, 2)
/

ALTER TABLE "Contact" ADD "BattleNetUsername" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Brothers" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "BrothersCount" NUMBER(10) DEFAULT 0 NOT NULL
/

ALTER TABLE "Contact" ADD "Childrens" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "ChildrensCount" NUMBER(10) DEFAULT 0 NOT NULL
/

ALTER TABLE "Contact" ADD "ContactEducationLevel" NUMBER(10) DEFAULT 0 NOT NULL
/

ALTER TABLE "Contact" ADD "ContactEthnicGroup" NUMBER(10) DEFAULT 0 NOT NULL
/

ALTER TABLE "Contact" ADD "CreditScore" BINARY_DOUBLE DEFAULT 0.0E0 NOT NULL
/

ALTER TABLE "Contact" ADD "DirectEmployeesCount" NUMBER(10) DEFAULT 0 NOT NULL
/

ALTER TABLE "Contact" ADD "DisplayInSocialSearch" NUMBER(1) DEFAULT 0 NOT NULL
/

ALTER TABLE "Contact" ADD "FacebookPageURL" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "GithubUsername" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "IndirectEmployeesCount" NUMBER(10) DEFAULT 0 NOT NULL
/

ALTER TABLE "Contact" ADD "InstagramURL" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "InstagramUsername" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "LastContactDate" TIMESTAMP(7) DEFAULT TO_TIMESTAMP('0001-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF') NOT NULL
/

ALTER TABLE "Contact" ADD "Overdue" NUMBER(1) DEFAULT 0 NOT NULL
/

ALTER TABLE "Contact" ADD "OverdueAmount" BINARY_DOUBLE DEFAULT 0.0E0 NOT NULL
/

ALTER TABLE "Contact" ADD "OverdueLimit" BINARY_DOUBLE DEFAULT 0.0E0 NOT NULL
/

ALTER TABLE "Contact" ADD "Parents" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "RedditURL" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "Spouse" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "StackExchangeURL" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "StackOverflowURL" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "TelegramPhone" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "TikTokUsername" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "TwitchURL" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "TwitterUsername" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "WhatsAppPhone" NVARCHAR2(2000)
/

ALTER TABLE "Contact" ADD "XboxLiveUsername" NVARCHAR2(2000)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'TaxComission' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MinimumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MaximumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Debit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Credit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'TaxRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'DebitsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'CreditsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'Balance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES (N'20220531072440_V_1_6_5_1', N'6.0.5')
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmountInUSD' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'WithdrawedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceBeforeWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceAfterWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'TestNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReserveTimeInDays' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReservePercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'MainNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinTestNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinMainNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'RequiredSkillRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'PaymentDispute' 
  and column_name = 'DisputedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'BaseCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'AntiFraudScore' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MinSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MaxSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "JobOffer" ADD "Data" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data1" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data1Label" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data2" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data2Label" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data3" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data3Label" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data4" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data4Label" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data5" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data5Label" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data6" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data6Label" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data7" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data7Label" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data8" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data8Label" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data9" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Data9Label" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "DataLabel" NVARCHAR2(2000)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ItemBid' 
  and column_name = 'Amount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'Recurrency' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'CurrentStock' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'GigApplication' 
  and column_name = 'Cost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MinBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MaxBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "Gig" ADD "Data" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data1" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data1Label" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data2" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data2Label" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data3" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data3Label" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data4" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data4Label" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data5" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data5Label" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data6" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data6Label" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data7" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data7Label" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data8" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data8Label" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data9" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Data9Label" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "DataLabel" NVARCHAR2(2000)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'TaxPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'CurriculumRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ContactProfile' 
  and column_name = 'MinSalaryExpectation' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "MinSalaryExpectation" DECIMAL(18, 2) NULL';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "MinSalaryExpectation" DECIMAL(18, 2)';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ContactProfile' 
  and column_name = 'MaxSalaryExpectation' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "MaxSalaryExpectation" DECIMAL(18, 2) NULL';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "MaxSalaryExpectation" DECIMAL(18, 2)';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ContactProfile' 
  and column_name = 'CurrentSalary' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "CurrentSalary" DECIMAL(18, 2) NULL';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "CurrentSalary" DECIMAL(18, 2)';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'TaxComission' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MinimumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MaximumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Debit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Credit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'TaxRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'DebitsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'CreditsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'Balance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES (N'20220612014057_V_1_7_7_2', N'6.0.5')
/

ALTER TABLE "Signature" DROP CONSTRAINT "FK_Signature_SignedDocument_SigningDocumentID"
/

ALTER TABLE "SignedDocument" DROP CONSTRAINT "FK_SignedDocument_SigningCertificate_SignatorCertificateID"
/

ALTER TABLE "SignedDocument" RENAME COLUMN "SignatorCertificateID" TO "SigningCertificateID"
/

ALTER INDEX "IX_SignedDocument_SignatorCertificateID" RENAME TO "IX_SignedDocument_SigningCertificateID"
/

ALTER TABLE "Signature" RENAME COLUMN "SigningDocumentID" TO "SignedDocumentID"
/

ALTER INDEX "IX_Signature_SigningDocumentID" RENAME TO "IX_Signature_SignedDocumentID"
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmountInUSD' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmountInUSD" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdrawRequest' 
  and column_name = 'RequestedWithdrawAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdrawRequest" MODIFY "RequestedWithdrawAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'WithdrawedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "WithdrawedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceBeforeWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceBeforeWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletWithdraw' 
  and column_name = 'BalanceAfterWithdraw' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletWithdraw" MODIFY "BalanceAfterWithdraw" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'TestNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "TestNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReserveTimeInDays' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReserveTimeInDays" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'RollingReservePercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "RollingReservePercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'MainNetEtherBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "MainNetEtherBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinTestNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinTestNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'WalletAccount' 
  and column_name = 'BitcoinMainNetBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "WalletAccount" MODIFY "BitcoinMainNetBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "SigningCertificate" ADD "Signature" NVARCHAR2(2000)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'RequiredSkillRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "RequiredSkillRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'PaymentDispute' 
  and column_name = 'DisputedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "PaymentDispute" MODIFY "DisputedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'BaseCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "BaseCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Payment' 
  and column_name = 'AntiFraudScore' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Payment" MODIFY "AntiFraudScore" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "JobTitle" ADD "CityID" NVARCHAR2(450)
/

ALTER TABLE "JobTitle" ADD "CountryID" NVARCHAR2(450)
/

ALTER TABLE "JobTitle" ADD "CountryStateID" NVARCHAR2(450)
/

ALTER TABLE "JobTitle" ADD "CurrencyID" NVARCHAR2(450)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MinSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MinSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'JobOffer' 
  and column_name = 'MaxSalaryAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "JobOffer" MODIFY "MaxSalaryAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "JobOffer" ADD "ExternalUrl" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "ImageUrl" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Location" NVARCHAR2(2000)
/

ALTER TABLE "JobOffer" ADD "Remote" NUMBER(1) DEFAULT 0 NOT NULL
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ItemBid' 
  and column_name = 'Amount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ItemBid" MODIFY "Amount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'Recurrency' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "Recurrency" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Item' 
  and column_name = 'CurrentStock' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Item" MODIFY "CurrentStock" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'GigApplication' 
  and column_name = 'Cost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "GigApplication" MODIFY "Cost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MinBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MinBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Gig' 
  and column_name = 'MaxBudget' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Gig" MODIFY "MaxBudget" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "Gig" ADD "ExternalUrl" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Location" NVARCHAR2(2000)
/

ALTER TABLE "Gig" ADD "Remote" NUMBER(1) DEFAULT 0 NOT NULL
/

ALTER TABLE "GenericRecord" ADD "JobFieldID" NVARCHAR2(450)
/

ALTER TABLE "GenericRecord" ADD "JobOfferID" NVARCHAR2(450)
/

ALTER TABLE "FileUpload" ADD "MD5Hash" NVARCHAR2(2000)
/

ALTER TABLE "FileUpload" ADD "Metadata" NVARCHAR2(2000)
/

ALTER TABLE "FileUpload" ADD "SignedDocumentID" NVARCHAR2(450)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'TaxPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "TaxPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Fee' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Fee" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'CurriculumRecord' 
  and column_name = 'Priority' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "CurriculumRecord" MODIFY "Priority" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ContactProfile' 
  and column_name = 'MinSalaryExpectation' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "MinSalaryExpectation" DECIMAL(18, 2) NULL';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "MinSalaryExpectation" DECIMAL(18, 2)';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ContactProfile' 
  and column_name = 'MaxSalaryExpectation' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "MaxSalaryExpectation" DECIMAL(18, 2) NULL';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "MaxSalaryExpectation" DECIMAL(18, 2)';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'ContactProfile' 
  and column_name = 'CurrentSalary' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "CurrentSalary" DECIMAL(18, 2) NULL';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "ContactProfile" MODIFY "CurrentSalary" DECIMAL(18, 2)';
 end if;
end;
/

ALTER TABLE "ContactProfile" ADD "About" NVARCHAR2(2000)
/

ALTER TABLE "ContactProfile" ADD "AvatarUrl" NVARCHAR2(2000)
/

ALTER TABLE "ContactProfile" ADD "ExperienceInYears" NUMBER(10)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'TaxComission' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "TaxComission" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Commission' 
  and column_name = 'AddedAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Commission" MODIFY "AddedAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

ALTER TABLE "BusinessSecurityLog" ADD "SignedDocumentID" NVARCHAR2(450)
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MinimumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MinimumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'MaximumSpend' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "MaximumSpend" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountPercent' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountPercent" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'BillingCoupon' 
  and column_name = 'DiscountAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "BillingCoupon" MODIFY "DiscountAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalTaxes' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalTaxes" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'TotalCost' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "TotalCost" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AppliedFee' 
  and column_name = 'BaseAmount' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AppliedFee" MODIFY "BaseAmount" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'ForexRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "ForexRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Debit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Debit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'AccountingEntry' 
  and column_name = 'Credit' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "AccountingEntry" MODIFY "Credit" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'TaxRate' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "TaxRate" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'DebitsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "DebitsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'CreditsBalance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "CreditsBalance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

declare
   l_nullable user_tab_columns.nullable % type;
begin 
   select nullable into l_nullable 
   from user_tab_columns 
  where table_name = 'Account' 
  and column_name = 'Balance' 
;
   if l_nullable = 'N' then 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) ';
 else 
        EXECUTE IMMEDIATE 'ALTER TABLE "Account" MODIFY "Balance" DECIMAL(18, 2) NOT NULL';
 end if;
end;
/

CREATE INDEX "IX_JobTitle_CityID" ON "JobTitle" ("CityID")
/

CREATE INDEX "IX_JobTitle_CountryID" ON "JobTitle" ("CountryID")
/

CREATE INDEX "IX_JobTitle_CountryStateID" ON "JobTitle" ("CountryStateID")
/

CREATE INDEX "IX_JobTitle_CurrencyID" ON "JobTitle" ("CurrencyID")
/

CREATE INDEX "IX_GenericRecord_JobFieldID" ON "GenericRecord" ("JobFieldID")
/

CREATE INDEX "IX_GenericRecord_JobOfferID" ON "GenericRecord" ("JobOfferID")
/

CREATE INDEX "IX_FileUpload_SignedDocumentID" ON "FileUpload" ("SignedDocumentID")
/

CREATE INDEX "IX_BusinessSecurityLog_SignedDocumentID" ON "BusinessSecurityLog" ("SignedDocumentID")
/

ALTER TABLE "BusinessSecurityLog" ADD CONSTRAINT "FK_BusinessSecurityLog_SignedDocument_SignedDocumentID" FOREIGN KEY ("SignedDocumentID") REFERENCES "SignedDocument" ("ID")
/

ALTER TABLE "FileUpload" ADD CONSTRAINT "FK_FileUpload_SignedDocument_SignedDocumentID" FOREIGN KEY ("SignedDocumentID") REFERENCES "SignedDocument" ("ID")
/

ALTER TABLE "GenericRecord" ADD CONSTRAINT "FK_GenericRecord_JobField_JobFieldID" FOREIGN KEY ("JobFieldID") REFERENCES "JobField" ("ID")
/

ALTER TABLE "GenericRecord" ADD CONSTRAINT "FK_GenericRecord_JobOffer_JobOfferID" FOREIGN KEY ("JobOfferID") REFERENCES "JobOffer" ("ID")
/

ALTER TABLE "JobTitle" ADD CONSTRAINT "FK_JobTitle_City_CityID" FOREIGN KEY ("CityID") REFERENCES "City" ("ID")
/

ALTER TABLE "JobTitle" ADD CONSTRAINT "FK_JobTitle_Country_CountryID" FOREIGN KEY ("CountryID") REFERENCES "Country" ("ID")
/

ALTER TABLE "JobTitle" ADD CONSTRAINT "FK_JobTitle_CountryState_CountryStateID" FOREIGN KEY ("CountryStateID") REFERENCES "CountryState" ("ID")
/

ALTER TABLE "JobTitle" ADD CONSTRAINT "FK_JobTitle_Currency_CurrencyID" FOREIGN KEY ("CurrencyID") REFERENCES "Currency" ("ID")
/

ALTER TABLE "Signature" ADD CONSTRAINT "FK_Signature_SignedDocument_SignedDocumentID" FOREIGN KEY ("SignedDocumentID") REFERENCES "SignedDocument" ("ID")
/

ALTER TABLE "SignedDocument" ADD CONSTRAINT "FK_SignedDocument_SigningCertificate_SigningCertificateID" FOREIGN KEY ("SigningCertificateID") REFERENCES "SigningCertificate" ("ID")
/

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES (N'20220613060223_V_1_7_7_3', N'6.0.5')
/

