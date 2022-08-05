IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [AspNetRoles] (
    [Id] nvarchar(450) NOT NULL,
    [Name] nvarchar(256) NULL,
    [NormalizedName] nvarchar(256) NULL,
    [ConcurrencyStamp] nvarchar(max) NULL,
    CONSTRAINT [PK_AspNetRoles] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [BusinessSegment] (
    [ID] nvarchar(450) NOT NULL,
    [EmployeeLowRangeValue] int NOT NULL,
    [EmployeeHighRangeValue] int NOT NULL,
    CONSTRAINT [PK_BusinessSegment] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [BusinessType] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    CONSTRAINT [PK_BusinessType] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [ContactsGroup] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    CONSTRAINT [PK_ContactsGroup] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Country] (
    [ID] nvarchar(450) NOT NULL,
    [Enabled] bit NOT NULL,
    [ISOAlpha3] nvarchar(max) NULL,
    [ISOAlpha2] nvarchar(max) NULL,
    [CountryFlagUrl] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [ISO2] nvarchar(max) NULL,
    [ISO3] nvarchar(max) NULL,
    [PhoneCode] nvarchar(max) NULL,
    [CurrencyCode] nvarchar(max) NULL,
    [FlagUrl] nvarchar(max) NULL,
    [Emoji] nvarchar(max) NULL,
    [EmojiUnicode] nvarchar(max) NULL,
    [Capital] nvarchar(max) NULL,
    [Region] nvarchar(max) NULL,
    [LatLng] nvarchar(max) NULL,
    [Subregion] nvarchar(max) NULL,
    [Population] bigint NOT NULL,
    [Demonym] nvarchar(max) NULL,
    [Area] float NULL,
    [Gini] float NULL,
    [NativeName] nvarchar(max) NULL,
    [NumericCode] nvarchar(max) NULL,
    [CIOC] nvarchar(max) NULL,
    CONSTRAINT [PK_Country] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [CountryLanguage] (
    [Iso639_1] nvarchar(450) NOT NULL,
    [Iso639_2] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [LanguageNativeName] nvarchar(max) NULL,
    CONSTRAINT [PK_CountryLanguage] PRIMARY KEY ([Iso639_1])
);
GO

CREATE TABLE [Entity] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Internal] bit NOT NULL,
    CONSTRAINT [PK_Entity] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [ExpenseType] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Enabled] bit NOT NULL,
    CONSTRAINT [PK_ExpenseType] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Fee] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [AddedPercent] decimal(18,2) NOT NULL,
    [AddedAmount] decimal(18,2) NOT NULL,
    [TaxPercent] decimal(18,2) NOT NULL,
    CONSTRAINT [PK_Fee] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [ItemGoogleCategory] (
    [ID] nvarchar(450) NOT NULL,
    [Path] nvarchar(max) NULL,
    [Icon] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [Disabled] bit NOT NULL,
    [Featured] bit NOT NULL,
    [DisplayOnMenu] bit NOT NULL,
    [MenuImage] nvarchar(max) NULL,
    [BannerCode] nvarchar(max) NULL,
    [BannerImage] nvarchar(max) NULL,
    [PrimaryImage] nvarchar(max) NULL,
    [StartingAtAmountInUSD] float NOT NULL,
    [ParentItemGoogleCategoryID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemGoogleCategory] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemGoogleCategory_ItemGoogleCategory_ParentItemGoogleCategoryID] FOREIGN KEY ([ParentItemGoogleCategoryID]) REFERENCES [ItemGoogleCategory] ([ID])
);
GO

CREATE TABLE [OpenIddictEntityFrameworkCoreScope] (
    [Id] nvarchar(450) NOT NULL,
    [ConcurrencyToken] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Descriptions] nvarchar(max) NULL,
    [DisplayName] nvarchar(max) NULL,
    [DisplayNames] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [Properties] nvarchar(max) NULL,
    [Resources] nvarchar(max) NULL,
    CONSTRAINT [PK_OpenIddictEntityFrameworkCoreScope] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [PartnerTier] (
    [ID] nvarchar(450) NOT NULL,
    [Title] bit NOT NULL,
    [Description] bit NOT NULL,
    CONSTRAINT [PK_PartnerTier] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [RegionalBlock] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Acronym] nvarchar(max) NULL,
    CONSTRAINT [PK_RegionalBlock] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Timezone] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [UtcOffset] nvarchar(max) NULL,
    CONSTRAINT [PK_Timezone] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [AspNetRoleClaims] (
    [Id] int NOT NULL IDENTITY,
    [RoleId] nvarchar(450) NOT NULL,
    [ClaimType] nvarchar(max) NULL,
    [ClaimValue] nvarchar(max) NULL,
    CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [AspNetRoles] ([Id])
);
GO

CREATE TABLE [Bank] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Image] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [CountryID] nvarchar(450) NULL,
    CONSTRAINT [PK_Bank] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Bank_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID])
);
GO

CREATE TABLE [CountryAltSpelling] (
    [CountryAltSpellingID] int NOT NULL IDENTITY,
    [CountryID] nvarchar(450) NULL,
    [CountryAlternativeSpelling] nvarchar(max) NULL,
    CONSTRAINT [PK_CountryAltSpelling] PRIMARY KEY ([CountryAltSpellingID]),
    CONSTRAINT [FK_CountryAltSpelling_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID])
);
GO

CREATE TABLE [CountryBorder] (
    [ID] int NOT NULL IDENTITY,
    [CountryID] nvarchar(450) NULL,
    [BorderCountryID] nvarchar(450) NULL,
    CONSTRAINT [PK_CountryBorder] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CountryBorder_Country_BorderCountryID] FOREIGN KEY ([BorderCountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_CountryBorder_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID])
);
GO

CREATE TABLE [CountryCallingCode] (
    [CountryCallingCodeID] int NOT NULL IDENTITY,
    [CallingCode] nvarchar(max) NULL,
    [CountryID] nvarchar(450) NULL,
    CONSTRAINT [PK_CountryCallingCode] PRIMARY KEY ([CountryCallingCodeID]),
    CONSTRAINT [FK_CountryCallingCode_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID])
);
GO

CREATE TABLE [CountryNameTranslations] (
    [ID] int NOT NULL IDENTITY,
    [CountryID] nvarchar(450) NULL,
    [De] nvarchar(max) NULL,
    [Es] nvarchar(max) NULL,
    [Fr] nvarchar(max) NULL,
    [Ja] nvarchar(max) NULL,
    [It] nvarchar(max) NULL,
    [Br] nvarchar(max) NULL,
    [Pt] nvarchar(max) NULL,
    [Nl] nvarchar(max) NULL,
    [Hr] nvarchar(max) NULL,
    [Fa] nvarchar(max) NULL,
    CONSTRAINT [PK_CountryNameTranslations] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CountryNameTranslations_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID])
);
GO

CREATE TABLE [CountryState] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Code] nvarchar(max) NULL,
    [CountryID] nvarchar(450) NULL,
    CONSTRAINT [PK_CountryState] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CountryState_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID])
);
GO

CREATE TABLE [CountryTopLevelDomain] (
    [CountryTopLevelDomainID] int NOT NULL IDENTITY,
    [Domain] nvarchar(max) NULL,
    [CountryID] nvarchar(450) NULL,
    CONSTRAINT [PK_CountryTopLevelDomain] PRIMARY KEY ([CountryTopLevelDomainID]),
    CONSTRAINT [FK_CountryTopLevelDomain_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID])
);
GO

CREATE TABLE [Currency] (
    [ID] nvarchar(450) NOT NULL,
    [Enabled] bit NOT NULL,
    [Name] nvarchar(max) NULL,
    [Symbol] nvarchar(max) NULL,
    [ISOCode] nvarchar(max) NULL,
    [IsBaseCurrency] bit NOT NULL,
    [ExchangeValue] float NOT NULL,
    [CountryID] nvarchar(450) NULL,
    CONSTRAINT [PK_Currency] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Currency_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID])
);
GO

CREATE TABLE [CountryLanguageRecord] (
    [ID] nvarchar(450) NOT NULL,
    [CountryID] nvarchar(450) NULL,
    [CountryLanguageID] nvarchar(450) NULL,
    CONSTRAINT [PK_CountryLanguageRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CountryLanguageRecord_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_CountryLanguageRecord_CountryLanguage_CountryLanguageID] FOREIGN KEY ([CountryLanguageID]) REFERENCES [CountryLanguage] ([Iso639_1])
);
GO

CREATE TABLE [Column] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Internal] bit NOT NULL,
    [PrimaryKey] bit NOT NULL,
    [ForeignKey] bit NOT NULL,
    [ColumnType] int NOT NULL,
    [EntityID] nvarchar(450) NULL,
    CONSTRAINT [PK_Column] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Column_Entity_EntityID] FOREIGN KEY ([EntityID]) REFERENCES [Entity] ([ID])
);
GO

CREATE TABLE [Row] (
    [ID] nvarchar(450) NOT NULL,
    [Internal] bit NOT NULL,
    [EntityID] nvarchar(450) NULL,
    CONSTRAINT [PK_Row] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Row_Entity_EntityID] FOREIGN KEY ([EntityID]) REFERENCES [Entity] ([ID])
);
GO

CREATE TABLE [View] (
    [ID] nvarchar(450) NOT NULL,
    [EntityID] nvarchar(450) NULL,
    CONSTRAINT [PK_View] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_View_Entity_EntityID] FOREIGN KEY ([EntityID]) REFERENCES [Entity] ([ID])
);
GO

CREATE TABLE [CountryRegionalBlockRecord] (
    [ID] nvarchar(450) NOT NULL,
    [CountryID] nvarchar(450) NULL,
    [RegionalBlockID] nvarchar(450) NULL,
    CONSTRAINT [PK_CountryRegionalBlockRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CountryRegionalBlockRecord_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_CountryRegionalBlockRecord_RegionalBlock_RegionalBlockID] FOREIGN KEY ([RegionalBlockID]) REFERENCES [RegionalBlock] ([ID])
);
GO

CREATE TABLE [RegionalBlockAlternativeAcronym] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [RegionalBlockID] nvarchar(450) NULL,
    CONSTRAINT [PK_RegionalBlockAlternativeAcronym] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_RegionalBlockAlternativeAcronym_RegionalBlock_RegionalBlockID] FOREIGN KEY ([RegionalBlockID]) REFERENCES [RegionalBlock] ([ID])
);
GO

CREATE TABLE [RegionalBlockAlternativeName] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [RegionalBlockID] nvarchar(450) NULL,
    CONSTRAINT [PK_RegionalBlockAlternativeName] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_RegionalBlockAlternativeName_RegionalBlock_RegionalBlockID] FOREIGN KEY ([RegionalBlockID]) REFERENCES [RegionalBlock] ([ID])
);
GO

CREATE TABLE [CountryTimeZoneRecord] (
    [ID] nvarchar(450) NOT NULL,
    [CountryID] nvarchar(450) NULL,
    [TimezoneID] nvarchar(450) NULL,
    CONSTRAINT [PK_CountryTimeZoneRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CountryTimeZoneRecord_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_CountryTimeZoneRecord_Timezone_TimezoneID] FOREIGN KEY ([TimezoneID]) REFERENCES [Timezone] ([ID])
);
GO

CREATE TABLE [City] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [ImageUrl] nvarchar(max) NULL,
    [StateID] nvarchar(450) NULL,
    [CountryID] nvarchar(450) NULL,
    [Latitude] nvarchar(max) NULL,
    [Longitude] nvarchar(max) NULL,
    CONSTRAINT [PK_City] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_City_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_City_CountryState_StateID] FOREIGN KEY ([StateID]) REFERENCES [CountryState] ([ID])
);
GO

CREATE TABLE [ForeignKey] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [EntityID] nvarchar(450) NULL,
    [ColumnID] nvarchar(450) NULL,
    [ForeignEntityID] nvarchar(450) NULL,
    [ForeignColumnID] nvarchar(450) NULL,
    CONSTRAINT [PK_ForeignKey] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ForeignKey_Column_ColumnID] FOREIGN KEY ([ColumnID]) REFERENCES [Column] ([ID]),
    CONSTRAINT [FK_ForeignKey_Column_ForeignColumnID] FOREIGN KEY ([ForeignColumnID]) REFERENCES [Column] ([ID]),
    CONSTRAINT [FK_ForeignKey_Entity_EntityID] FOREIGN KEY ([EntityID]) REFERENCES [Entity] ([ID]),
    CONSTRAINT [FK_ForeignKey_Entity_ForeignEntityID] FOREIGN KEY ([ForeignEntityID]) REFERENCES [Entity] ([ID])
);
GO

CREATE TABLE [Cell] (
    [ID] nvarchar(450) NOT NULL,
    [ColumnID] nvarchar(450) NULL,
    [RowID] nvarchar(450) NULL,
    [Value] nvarchar(max) NULL,
    CONSTRAINT [PK_Cell] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Cell_Column_ColumnID] FOREIGN KEY ([ColumnID]) REFERENCES [Column] ([ID]),
    CONSTRAINT [FK_Cell_Row_RowID] FOREIGN KEY ([RowID]) REFERENCES [Row] ([ID])
);
GO

CREATE TABLE [AccessKeyPair] (
    [IP] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Disabled] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [CSR] nvarchar(max) NULL,
    [PublicKey] nvarchar(max) NULL,
    [PrivateKey] nvarchar(max) NULL,
    [AesKey] varbinary(max) NULL,
    [AesIV] varbinary(max) NULL,
    CONSTRAINT [PK_AccessKeyPair] PRIMARY KEY ([IP])
);
GO

CREATE TABLE [Account] (
    [ID] nvarchar(450) NOT NULL,
    [Group] bit NOT NULL,
    [Frozen] bit NOT NULL,
    [Closed] bit NOT NULL,
    [ReadOnly] bit NOT NULL,
    [Verified] bit NOT NULL,
    [Disable] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [VerificationTimestamp] datetime2 NOT NULL,
    [Name] nvarchar(max) NULL,
    [Code] nvarchar(max) NULL,
    [Path] nvarchar(max) NULL,
    [Prefix] nvarchar(max) NULL,
    [TaxRate] decimal(18,2) NOT NULL,
    [AccountBalanceCriteria] int NOT NULL,
    [AccountRootType] int NOT NULL,
    [Balance] decimal(18,2) NOT NULL,
    [DebitsBalance] decimal(18,2) NOT NULL,
    [CreditsBalance] decimal(18,2) NOT NULL,
    [LastBalance] datetime2 NOT NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [AccountGroupID] nvarchar(450) NULL,
    [AccountTypeID] nvarchar(450) NULL,
    [BillingProfileID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [LedgerID] nvarchar(450) NULL,
    [ParentAccountID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [IBAN] nvarchar(max) NULL,
    [SWIFT] nvarchar(max) NULL,
    [BranchCode] nvarchar(max) NULL,
    [BankAccountNumber] nvarchar(max) NULL,
    [BankID] nvarchar(450) NULL,
    [BankProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_Account] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Account_Account_ParentAccountID] FOREIGN KEY ([ParentAccountID]) REFERENCES [Account] ([ID]),
    CONSTRAINT [FK_Account_Bank_BankID] FOREIGN KEY ([BankID]) REFERENCES [Bank] ([ID]),
    CONSTRAINT [FK_Account_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID])
);
GO

CREATE TABLE [AccountGroup] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [ParentAccountGroupID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_AccountGroup] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_AccountGroup_AccountGroup_ParentAccountGroupID] FOREIGN KEY ([ParentAccountGroupID]) REFERENCES [AccountGroup] ([ID])
);
GO

CREATE TABLE [AccountHolderLogin] (
    [ID] nvarchar(450) NOT NULL,
    [Suspicious] bit NOT NULL,
    [Aknowledged] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [IPLookupID] nvarchar(450) NULL,
    [IP] nvarchar(max) NULL,
    [DeviceOS] nvarchar(max) NULL,
    [DeviceBrand] nvarchar(max) NULL,
    [DeviceModel] nvarchar(max) NULL,
    [DeviceFamily] nvarchar(max) NULL,
    [UserAgentPatch] nvarchar(max) NULL,
    [UserAgentFamily] nvarchar(max) NULL,
    [UserAgentMinor] nvarchar(max) NULL,
    [UserAgentMajor] nvarchar(max) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    CONSTRAINT [PK_AccountHolderLogin] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [AccountHolderSettings] (
    [ID] nvarchar(450) NOT NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [DarkTheme] bit NOT NULL,
    [Cookies] bit NOT NULL,
    [Analytics] bit NOT NULL,
    [ForexRates] nvarchar(max) NULL,
    [ExchangeRatesUpdatedTimestamp] datetime2 NOT NULL,
    CONSTRAINT [PK_AccountHolderSettings] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [AccountingEntry] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [AccountingEntryType] int NOT NULL,
    [Description] nvarchar(max) NOT NULL,
    [Debit] decimal(18,2) NOT NULL,
    [Credit] decimal(18,2) NOT NULL,
    [ForexRate] decimal(18,2) NOT NULL,
    [CurrencyID] nvarchar(450) NOT NULL,
    [DebitAccountID] nvarchar(450) NOT NULL,
    [CreditAccountID] nvarchar(450) NOT NULL,
    [JournalEntryID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [PaymentID] nvarchar(450) NULL,
    [WalletAccountID] nvarchar(450) NULL,
    [RefundRequestID] nvarchar(450) NULL,
    [PaymentDisputeID] nvarchar(450) NULL,
    [RequestDate] datetime2 NULL,
    [PaymentChargeback_PaymentID] nvarchar(450) NULL,
    [BankProfileID] nvarchar(450) NULL,
    [PaymentChargeback_PaymentDisputeID] nvarchar(450) NULL,
    [PaymentChargeback_WalletAccountID] nvarchar(450) NULL,
    CONSTRAINT [PK_AccountingEntry] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_AccountingEntry_Account_CreditAccountID] FOREIGN KEY ([CreditAccountID]) REFERENCES [Account] ([ID]),
    CONSTRAINT [FK_AccountingEntry_Account_DebitAccountID] FOREIGN KEY ([DebitAccountID]) REFERENCES [Account] ([ID]),
    CONSTRAINT [FK_AccountingEntry_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID])
);
GO

CREATE TABLE [AccountingPeriodClosingVoucher] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [PostingDate] datetime2 NOT NULL,
    [Remarks] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [FiscalYearID] nvarchar(450) NULL,
    [AccountID] nvarchar(450) NULL,
    CONSTRAINT [PK_AccountingPeriodClosingVoucher] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_AccountingPeriodClosingVoucher_Account_AccountID] FOREIGN KEY ([AccountID]) REFERENCES [Account] ([ID])
);
GO

CREATE TABLE [AccountRelation] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [AccountID] nvarchar(450) NULL,
    [Type] nvarchar(max) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ProjectID] nvarchar(450) NULL,
    CONSTRAINT [PK_AccountRelation] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_AccountRelation_Account_AccountID] FOREIGN KEY ([AccountID]) REFERENCES [Account] ([ID])
);
GO

CREATE TABLE [AccountType] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_AccountType] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [ActivityFeed] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [ContactID] nvarchar(450) NULL,
    [DealUnitID] nvarchar(450) NULL,
    [MarketingCampaignID] nvarchar(450) NULL,
    [MarketingListID] nvarchar(450) NULL,
    [ProjectID] nvarchar(450) NULL,
    CONSTRAINT [PK_ActivityFeed] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [ActivityRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [Completed] bit NOT NULL,
    [DueDate] datetime2 NOT NULL,
    [EnableEmailActivities] bit NOT NULL,
    [EnableTaskActivities] bit NOT NULL,
    [EnableFaxActivities] bit NOT NULL,
    [EnableAlertActivities] bit NOT NULL,
    [EnableAppointmentActivities] bit NOT NULL,
    [EnableAnnotationActivities] bit NOT NULL,
    [EnableLetterActivities] bit NOT NULL,
    [EnablePhoneCallActivities] bit NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [ParentActivityID] nvarchar(450) NULL,
    [ActivityTypeID] nvarchar(450) NULL,
    [ActivityFeedID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [InChargeBusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ActivityRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ActivityRecord_ActivityFeed_ActivityFeedID] FOREIGN KEY ([ActivityFeedID]) REFERENCES [ActivityFeed] ([ID]),
    CONSTRAINT [FK_ActivityRecord_ActivityRecord_ParentActivityID] FOREIGN KEY ([ParentActivityID]) REFERENCES [ActivityRecord] ([ID])
);
GO

CREATE TABLE [ActivityType] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ActivityType] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Agreement] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [AgreementTypeID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    CONSTRAINT [PK_Agreement] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [AgreementRevision] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [LanguageCode] nvarchar(max) NULL,
    [LanguageIso639_1] nvarchar(450) NULL,
    [AgreementID] nvarchar(450) NULL,
    [ActiveRevision] bit NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [StartDate] datetime2 NOT NULL,
    [AgreementRevisionBody] nvarchar(max) NULL,
    CONSTRAINT [PK_AgreementRevision] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_AgreementRevision_Agreement_AgreementID] FOREIGN KEY ([AgreementID]) REFERENCES [Agreement] ([ID]),
    CONSTRAINT [FK_AgreementRevision_CountryLanguage_LanguageIso639_1] FOREIGN KEY ([LanguageIso639_1]) REFERENCES [CountryLanguage] ([Iso639_1])
);
GO

CREATE TABLE [AgreementType] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_AgreementType] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [AppliedFee] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [FeeID] nvarchar(450) NULL,
    [BaseAmount] decimal(18,2) NOT NULL,
    [TotalCost] decimal(18,2) NOT NULL,
    [TotalTaxes] decimal(18,2) NOT NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [WalletWithdrawID] nvarchar(450) NULL,
    [PaymentChargebackID] nvarchar(450) NULL,
    [PaymentRefundID] nvarchar(450) NULL,
    [PaymentID] nvarchar(450) NULL,
    [PaymentGatewayID] nvarchar(450) NULL,
    CONSTRAINT [PK_AppliedFee] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_AppliedFee_AccountingEntry_PaymentChargebackID] FOREIGN KEY ([PaymentChargebackID]) REFERENCES [AccountingEntry] ([ID]),
    CONSTRAINT [FK_AppliedFee_AccountingEntry_PaymentRefundID] FOREIGN KEY ([PaymentRefundID]) REFERENCES [AccountingEntry] ([ID]),
    CONSTRAINT [FK_AppliedFee_Fee_FeeID] FOREIGN KEY ([FeeID]) REFERENCES [Fee] ([ID])
);
GO

CREATE TABLE [AppliedTaxPolicyRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [TaxPolicyID] nvarchar(450) NULL,
    [InvoiceID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    [TaxAmountInUSD] float NOT NULL,
    [TaxBaseAmountInUSD] float NOT NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [BillingItemRecordID] nvarchar(450) NULL,
    [PaymentID] nvarchar(450) NULL,
    [AppliedFeeID] nvarchar(450) NULL,
    CONSTRAINT [PK_AppliedTaxPolicyRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_AppliedTaxPolicyRecord_AppliedFee_AppliedFeeID] FOREIGN KEY ([AppliedFeeID]) REFERENCES [AppliedFee] ([ID])
);
GO

CREATE TABLE [AppraisalSession] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [AppraisalWorkflowID] nvarchar(450) NULL,
    [AppraisalStageID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [EmployeeProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_AppraisalSession] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [AspNetUserClaims] (
    [Id] int NOT NULL IDENTITY,
    [UserId] nvarchar(450) NOT NULL,
    [ClaimType] nvarchar(max) NULL,
    [ClaimValue] nvarchar(max) NULL,
    CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [AspNetUserLogins] (
    [LoginProvider] nvarchar(450) NOT NULL,
    [ProviderKey] nvarchar(450) NOT NULL,
    [ProviderDisplayName] nvarchar(max) NULL,
    [UserId] nvarchar(450) NOT NULL,
    CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY ([LoginProvider], [ProviderKey])
);
GO

CREATE TABLE [AspNetUserRoles] (
    [UserId] nvarchar(450) NOT NULL,
    [RoleId] nvarchar(450) NOT NULL,
    CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY ([UserId], [RoleId]),
    CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [AspNetRoles] ([Id])
);
GO

CREATE TABLE [AspNetUsers] (
    [Id] nvarchar(450) NOT NULL,
    [Handler] nvarchar(max) NULL,
    [NameIdentifier] nvarchar(max) NULL,
    [PublicIdentifier] nvarchar(max) NULL,
    [PublicName] nvarchar(max) NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [LastName] nvarchar(max) NOT NULL,
    [IdentityProvider] nvarchar(max) NULL,
    [JobTitle] nvarchar(max) NULL,
    [ProfileCoverURL] nvarchar(max) NULL,
    [AvatarURL] nvarchar(max) NULL,
    [About] nvarchar(256) NULL,
    [Status] nvarchar(140) NULL,
    [WebURL] nvarchar(max) NULL,
    [FacebookURL] nvarchar(max) NULL,
    [YouTubeURL] nvarchar(max) NULL,
    [LinkedInURL] nvarchar(max) NULL,
    [TwitterHandler] nvarchar(15) NULL,
    [InstagramUsername] nvarchar(max) NULL,
    [GithubUsername] nvarchar(max) NULL,
    [TaxID] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [Birthday] datetime2 NOT NULL,
    [Gender] int NOT NULL,
    [Availability] int NOT NULL,
    [LastLoginIP] nvarchar(39) NULL,
    [SelectedBusinessID] nvarchar(450) NULL,
    [SelectedBusinessAs] nvarchar(max) NULL,
    [CountryLanguageID] nvarchar(450) NULL,
    [CountryID] nvarchar(450) NULL,
    [CountryStateID] nvarchar(450) NULL,
    [CityID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [TimezoneID] nvarchar(450) NULL,
    [UserName] nvarchar(256) NULL,
    [NormalizedUserName] nvarchar(256) NULL,
    [Email] nvarchar(256) NULL,
    [NormalizedEmail] nvarchar(256) NULL,
    [EmailConfirmed] bit NOT NULL,
    [PasswordHash] nvarchar(max) NULL,
    [SecurityStamp] nvarchar(max) NULL,
    [ConcurrencyStamp] nvarchar(max) NULL,
    [PhoneNumber] nvarchar(max) NULL,
    [PhoneNumberConfirmed] bit NOT NULL,
    [TwoFactorEnabled] bit NOT NULL,
    [LockoutEnd] datetimeoffset NULL,
    [LockoutEnabled] bit NOT NULL,
    [AccessFailedCount] int NOT NULL,
    CONSTRAINT [PK_AspNetUsers] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_AspNetUsers_City_CityID] FOREIGN KEY ([CityID]) REFERENCES [City] ([ID]),
    CONSTRAINT [FK_AspNetUsers_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_AspNetUsers_CountryLanguage_CountryLanguageID] FOREIGN KEY ([CountryLanguageID]) REFERENCES [CountryLanguage] ([Iso639_1]),
    CONSTRAINT [FK_AspNetUsers_CountryState_CountryStateID] FOREIGN KEY ([CountryStateID]) REFERENCES [CountryState] ([ID]),
    CONSTRAINT [FK_AspNetUsers_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_AspNetUsers_Timezone_TimezoneID] FOREIGN KEY ([TimezoneID]) REFERENCES [Timezone] ([ID])
);
GO

CREATE TABLE [AspNetUserTokens] (
    [UserId] nvarchar(450) NOT NULL,
    [LoginProvider] nvarchar(450) NOT NULL,
    [Name] nvarchar(450) NOT NULL,
    [Value] nvarchar(max) NULL,
    CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY ([UserId], [LoginProvider], [Name]),
    CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id])
);
GO

CREATE TABLE [IPLookup] (
    [ID] nvarchar(450) NOT NULL,
    [IP] nvarchar(max) NULL,
    [ISP] nvarchar(max) NULL,
    [Type] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [UserAgent] nvarchar(max) NULL,
    [BusinessName] nvarchar(max) NULL,
    [BusinessWebsite] nvarchar(max) NULL,
    [City] nvarchar(max) NULL,
    [Region] nvarchar(max) NULL,
    [Continent] nvarchar(max) NULL,
    [Longitud] nvarchar(max) NULL,
    [Latitud] nvarchar(max) NULL,
    [Tor] bit NOT NULL,
    [ASN] bigint NOT NULL,
    [VPN] bit NOT NULL,
    [Bot] bit NOT NULL,
    [Proxy] bit NOT NULL,
    [Mobile] bit NOT NULL,
    [Banned] bit NOT NULL,
    [RecentAbuse] bit NOT NULL,
    [KnownAttacker] bit NOT NULL,
    [DeviceOS] nvarchar(max) NULL,
    [DeviceBrand] nvarchar(max) NULL,
    [DeviceModel] nvarchar(max) NULL,
    [DeviceFamily] nvarchar(max) NULL,
    [UserAgentPatch] nvarchar(max) NULL,
    [UserAgentFamily] nvarchar(max) NULL,
    [UserAgentMinor] nvarchar(max) NULL,
    [UserAgentMajor] nvarchar(max) NULL,
    [Timezone] nvarchar(max) NULL,
    [Host] nvarchar(max) NULL,
    [FraudScore] bigint NOT NULL,
    [Message] nvarchar(max) NULL,
    [Success] bit NOT NULL,
    [Data] nvarchar(max) NULL,
    [DataLabel] nvarchar(max) NULL,
    [Data1] nvarchar(max) NULL,
    [Data1Label] nvarchar(max) NULL,
    [Data2] nvarchar(max) NULL,
    [Data2Label] nvarchar(max) NULL,
    [Data3] nvarchar(max) NULL,
    [Data3Label] nvarchar(max) NULL,
    [Data4] nvarchar(max) NULL,
    [Data4Label] nvarchar(max) NULL,
    [Data5] nvarchar(max) NULL,
    [Data5Label] nvarchar(max) NULL,
    [Data6] nvarchar(max) NULL,
    [Data6Label] nvarchar(max) NULL,
    [Data7] nvarchar(max) NULL,
    [Data7Label] nvarchar(max) NULL,
    [Data8] nvarchar(max) NULL,
    [Data8Label] nvarchar(max) NULL,
    [Data9] nvarchar(max) NULL,
    [Data9Label] nvarchar(max) NULL,
    [AcknowledgedIP] bit NOT NULL,
    [AcknowledgedDevice] bit NOT NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [CountryID] nvarchar(450) NULL,
    CONSTRAINT [PK_IPLookup] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_IPLookup_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_IPLookup_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID])
);
GO

CREATE TABLE [Asset] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [IsExistingAsset] bit NOT NULL,
    [CalculateDepreciation] bit NOT NULL,
    [AllowMontlyDepreciation] bit NOT NULL,
    [OpeningDepreciation] float NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [AssetType] int NOT NULL,
    [AssetOwner] int NOT NULL,
    [PurchaseDate] datetime2 NOT NULL,
    [ItemID] nvarchar(450) NULL,
    [AssetCategoryID] nvarchar(450) NULL,
    [PurchaseInvoiceID] nvarchar(450) NULL,
    [PurchaseReceiptID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [OrganizationDepartmentID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [AssetLocationID] nvarchar(450) NULL,
    [FinancialBookID] nvarchar(450) NULL,
    CONSTRAINT [PK_Asset] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [AssetCategory] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_AssetCategory] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [AssetDepreciationRecord] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [FinancialBookID] nvarchar(450) NULL,
    CONSTRAINT [PK_AssetDepreciationRecord] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [AssetTransfer] (
    [ID] nvarchar(450) NOT NULL,
    [IsRootTransfer] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [SerialList] nvarchar(max) NULL,
    [Quantity] nvarchar(max) NULL,
    [Serial] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [AssetID] nvarchar(450) NULL,
    [PreviousShareTransferID] nvarchar(450) NULL,
    [PreviousAssetTransferID] nvarchar(max) NULL,
    [SourceLocationID] nvarchar(450) NULL,
    [DestinationLocationID] nvarchar(450) NULL,
    [SourceContactID] nvarchar(450) NULL,
    [DestinationContactID] nvarchar(450) NULL,
    [SourceDepartmentID] nvarchar(450) NULL,
    [DestinationDepartmentID] nvarchar(450) NULL,
    CONSTRAINT [PK_AssetTransfer] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_AssetTransfer_Asset_AssetID] FOREIGN KEY ([AssetID]) REFERENCES [Asset] ([ID]),
    CONSTRAINT [FK_AssetTransfer_AssetTransfer_PreviousShareTransferID] FOREIGN KEY ([PreviousShareTransferID]) REFERENCES [AssetTransfer] ([ID])
);
GO

CREATE TABLE [AssetValueAmend] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [FinancialBookID] nvarchar(450) NULL,
    CONSTRAINT [PK_AssetValueAmend] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [BankGuarantee] (
    [ID] nvarchar(450) NOT NULL,
    [Margin] float NOT NULL,
    [Charges] float NOT NULL,
    [BeneficiaryName] nvarchar(max) NULL,
    [GuaranteeNumber] nvarchar(max) NULL,
    [GuaranteeConditions] nvarchar(max) NULL,
    [FixedDepositNumber] float NOT NULL,
    [StartDate] datetime2 NOT NULL,
    [EndDate] datetime2 NOT NULL,
    [ValidityInDays] int NOT NULL,
    [BankGuaranteeType] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [ProjectID] nvarchar(450) NULL,
    [OrderID] nvarchar(450) NULL,
    [BankProfileID] nvarchar(450) NULL,
    [BankAccountID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    CONSTRAINT [PK_BankGuarantee] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BankGuarantee_Account_BankAccountID] FOREIGN KEY ([BankAccountID]) REFERENCES [Account] ([ID]),
    CONSTRAINT [FK_BankGuarantee_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID])
);
GO

CREATE TABLE [BillingCoupon] (
    [ID] nvarchar(450) NOT NULL,
    [ReleaseDateTime] datetime2 NOT NULL,
    [ExpirationDateTime] datetime2 NOT NULL,
    [Published] bit NOT NULL,
    [Code] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [RestrictedEmails] nvarchar(max) NULL,
    [AllowedEmails] nvarchar(max) NULL,
    [AllowedItems] nvarchar(max) NULL,
    [AllowedCountries] nvarchar(max) NULL,
    [RestrictedCountries] nvarchar(max) NULL,
    [UsageLimit] int NOT NULL,
    [UsageLimitPerUser] int NOT NULL,
    [UsageLimitPerItem] int NOT NULL,
    [ForceSingle] bit NOT NULL,
    [GrantsFreeShipping] bit NOT NULL,
    [MinimumSpend] decimal(18,2) NOT NULL,
    [MaximumSpend] decimal(18,2) NOT NULL,
    [DiscountPercent] decimal(18,2) NOT NULL,
    [DiscountAmount] decimal(18,2) NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_BillingCoupon] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BillingCoupon_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID])
);
GO

CREATE TABLE [BillingItemRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Description] nvarchar(max) NULL,
    [Quantity] float NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Free] bit NOT NULL,
    [FreeReason] nvarchar(max) NULL,
    [FreeReasonCode] nvarchar(max) NULL,
    [Data] nvarchar(max) NULL,
    [DataLabel] nvarchar(max) NULL,
    [Data1] nvarchar(max) NULL,
    [Data1Label] nvarchar(max) NULL,
    [Data2] nvarchar(max) NULL,
    [Data2Label] nvarchar(max) NULL,
    [Data3] nvarchar(max) NULL,
    [Data3Label] nvarchar(max) NULL,
    [Data4] nvarchar(max) NULL,
    [Data4Label] nvarchar(max) NULL,
    [Data5] nvarchar(max) NULL,
    [Data5Label] nvarchar(max) NULL,
    [Data6] nvarchar(max) NULL,
    [Data6Label] nvarchar(max) NULL,
    [Data7] nvarchar(max) NULL,
    [Data7Label] nvarchar(max) NULL,
    [Data8] nvarchar(max) NULL,
    [Data8Label] nvarchar(max) NULL,
    [Data9] nvarchar(max) NULL,
    [Data9Label] nvarchar(max) NULL,
    [ItemID] nvarchar(450) NULL,
    [ItemPriceID] nvarchar(450) NULL,
    [PriceListItemID] nvarchar(450) NULL,
    [UnitID] nvarchar(450) NULL,
    [UnitGroupID] nvarchar(450) NULL,
    [TaxCalculationMethod] int NOT NULL,
    [CostCalculationMethod] int NOT NULL,
    [ForexRatesSnapshot] nvarchar(max) NULL,
    [ForexRate] float NOT NULL,
    [TotalBaseAmountInUSD] float NOT NULL,
    [TotalProfitInUSD] float NOT NULL,
    [TotalDetailAmountInUSD] float NOT NULL,
    [TotalTaxBaseInUSD] float NOT NULL,
    [TotalDiscountsInUSD] float NOT NULL,
    [TotalTaxesInUSD] float NOT NULL,
    [TotalWithholdingTaxesInUSD] float NOT NULL,
    [TotalShippingCostInUSD] float NOT NULL,
    [TotalShippingTaxesInUSD] float NOT NULL,
    [TotalWarrantyCostInUSD] float NOT NULL,
    [TotalReturnCostInUSD] float NOT NULL,
    [TotalRefundCostInUSD] float NOT NULL,
    [TotalSurchargesInUSD] float NOT NULL,
    [TotalAmountInUSD] float NOT NULL,
    [TotalGlobalDiscountsInUSD] float NOT NULL,
    [TotalGlobalSurchargesInUSD] float NOT NULL,
    [CustomGlobalSurchargesAmount] float NOT NULL,
    [CustomGlobalDiscountsAmount] float NOT NULL,
    [CustomBaseAmount] float NOT NULL,
    [CustomDetailAmount] float NOT NULL,
    [CustomDiscountsAmount] float NOT NULL,
    [CustomTaxBase] float NOT NULL,
    [CustomSurchargesAmount] float NOT NULL,
    [CustomProfitAmount] float NOT NULL,
    [CustomShippingCostAmount] float NOT NULL,
    [CustomShippingTaxAmount] float NOT NULL,
    [CustomTaxAmount] float NOT NULL,
    [CustomWithholdingTaxAmount] float NOT NULL,
    [CustomTotalAmount] float NOT NULL,
    [ReturnPolicyID] nvarchar(450) NULL,
    [RefundPolicyID] nvarchar(450) NULL,
    [WarrantyPolicyID] nvarchar(450) NULL,
    [ItemShipmentPolicyID] nvarchar(450) NULL,
    [LocationID] nvarchar(450) NULL,
    [QuoteItemRecordID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ParentBillingItemRecordID] nvarchar(450) NULL,
    [Type] nvarchar(max) NOT NULL,
    [Excluded] bit NULL,
    [BillingCouponID] nvarchar(450) NULL,
    [BillingCouponCartRecord_BillingCouponID] nvarchar(450) NULL,
    [CartID] nvarchar(450) NULL,
    [BillingCouponOrderRecord_BillingCouponID] nvarchar(450) NULL,
    [OrderID] nvarchar(450) NULL,
    [InvoiceID] nvarchar(450) NULL,
    [AccountingEntryID] nvarchar(450) NULL,
    [OrderItemRecord_OrderID] nvarchar(450) NULL,
    [ParentOrderID] nvarchar(450) NULL,
    [DealUnitID] nvarchar(450) NULL,
    [QuoteID] nvarchar(450) NULL,
    CONSTRAINT [PK_BillingItemRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BillingItemRecord_AccountingEntry_AccountingEntryID] FOREIGN KEY ([AccountingEntryID]) REFERENCES [AccountingEntry] ([ID]),
    CONSTRAINT [FK_BillingItemRecord_BillingCoupon_BillingCouponCartRecord_BillingCouponID] FOREIGN KEY ([BillingCouponCartRecord_BillingCouponID]) REFERENCES [BillingCoupon] ([ID]),
    CONSTRAINT [FK_BillingItemRecord_BillingCoupon_BillingCouponID] FOREIGN KEY ([BillingCouponID]) REFERENCES [BillingCoupon] ([ID]),
    CONSTRAINT [FK_BillingItemRecord_BillingCoupon_BillingCouponOrderRecord_BillingCouponID] FOREIGN KEY ([BillingCouponOrderRecord_BillingCouponID]) REFERENCES [BillingCoupon] ([ID]),
    CONSTRAINT [FK_BillingItemRecord_BillingItemRecord_ParentBillingItemRecordID] FOREIGN KEY ([ParentBillingItemRecordID]) REFERENCES [BillingItemRecord] ([ID]),
    CONSTRAINT [FK_BillingItemRecord_BillingItemRecord_QuoteItemRecordID] FOREIGN KEY ([QuoteItemRecordID]) REFERENCES [BillingItemRecord] ([ID]),
    CONSTRAINT [FK_BillingItemRecord_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID])
);
GO

CREATE TABLE [Blockchain] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Name] nvarchar(max) NULL,
    [LogoUrl] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Difficulty] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_Blockchain] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [BlockchainBlock] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Index] int NOT NULL,
    [Data] nvarchar(max) NULL,
    [Hash] nvarchar(max) NOT NULL,
    [Nonce] bigint NOT NULL,
    [PreviousHash] nvarchar(max) NULL,
    [BlockchainID] nvarchar(450) NOT NULL,
    [PreviousBlockchainBlockID] nvarchar(450) NOT NULL,
    [WalletAccountID] nvarchar(450) NOT NULL,
    [NonFungibleTokenID] nvarchar(450) NULL,
    CONSTRAINT [PK_BlockchainBlock] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BlockchainBlock_Blockchain_BlockchainID] FOREIGN KEY ([BlockchainID]) REFERENCES [Blockchain] ([ID]),
    CONSTRAINT [FK_BlockchainBlock_BlockchainBlock_PreviousBlockchainBlockID] FOREIGN KEY ([PreviousBlockchainBlockID]) REFERENCES [BlockchainBlock] ([ID])
);
GO

CREATE TABLE [BlockRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BlockerSocialProfileID] nvarchar(450) NULL,
    [BlockedSocialProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_BlockRecord] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [BrandRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ItemID] nvarchar(450) NULL,
    [BrandID] nvarchar(450) NULL,
    CONSTRAINT [PK_BrandRecord] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Budget] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [FiscalYearID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [CostCentreID] nvarchar(450) NULL,
    [ProjectID] nvarchar(450) NULL,
    CONSTRAINT [PK_Budget] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [Business] (
    [ID] nvarchar(450) NOT NULL,
    [PublicIdentifier] nvarchar(max) NULL,
    [Root] bit NOT NULL,
    [Public] bit NOT NULL,
    [Personal] bit NOT NULL,
    [Verified] bit NOT NULL,
    [Deleted] bit NOT NULL,
    [CreationTimestamp] datetime2 NOT NULL,
    [DeletionTimestamp] datetime2 NOT NULL,
    [BusinessLegalName] nvarchar(max) NOT NULL,
    [BusinessName] nvarchar(max) NOT NULL,
    [Handler] nvarchar(max) NOT NULL,
    [EnableAutomaticRenovation] bit NOT NULL,
    [AutomaticRenovationToken] nvarchar(max) NULL,
    [BusinessAvatarURL] nvarchar(max) NULL,
    [BusinessProfileCoverURL] nvarchar(max) NULL,
    [AccountingBalance] float NOT NULL,
    [AccountingDebits] float NOT NULL,
    [AccountingCredits] float NOT NULL,
    [TaxID] nvarchar(max) NULL,
    [DUNS] nvarchar(max) NULL,
    [Slogan] nvarchar(max) NULL,
    [About] nvarchar(max) NULL,
    [CorporateBoilerplate] nvarchar(max) NULL,
    [LinkedInPageURL] nvarchar(max) NULL,
    [GithubOrganizationName] nvarchar(max) NULL,
    [TwitterUsername] nvarchar(max) NULL,
    [FacebookPageURL] nvarchar(max) NULL,
    [YouTubeURL] nvarchar(max) NULL,
    [InstagramUsername] nvarchar(max) NULL,
    [WhatsAppNumber] nvarchar(max) NULL,
    [SupportPhoneNumber] nvarchar(max) NULL,
    [WebURL] nvarchar(max) NULL,
    [BusinessEmail] nvarchar(max) NOT NULL,
    [PortalLogoURL] nvarchar(max) NULL,
    [PortalReverseLogoURL] nvarchar(max) NULL,
    [IncorporationDate] datetime2 NULL,
    [ParentBusinessID] nvarchar(450) NULL,
    [BusinessTypeID] nvarchar(450) NULL,
    [CountryID] nvarchar(450) NULL,
    [CountryStateID] nvarchar(450) NULL,
    [CityID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [TimezoneID] nvarchar(450) NULL,
    [CountryLanguageID] nvarchar(450) NULL,
    [BusinessSegmentID] nvarchar(450) NULL,
    [BusinessIndustryID] nvarchar(450) NULL,
    CONSTRAINT [PK_Business] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Business_Business_ParentBusinessID] FOREIGN KEY ([ParentBusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Business_BusinessSegment_BusinessSegmentID] FOREIGN KEY ([BusinessSegmentID]) REFERENCES [BusinessSegment] ([ID]),
    CONSTRAINT [FK_Business_BusinessType_BusinessTypeID] FOREIGN KEY ([BusinessTypeID]) REFERENCES [BusinessType] ([ID]),
    CONSTRAINT [FK_Business_City_CityID] FOREIGN KEY ([CityID]) REFERENCES [City] ([ID]),
    CONSTRAINT [FK_Business_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_Business_CountryLanguage_CountryLanguageID] FOREIGN KEY ([CountryLanguageID]) REFERENCES [CountryLanguage] ([Iso639_1]),
    CONSTRAINT [FK_Business_CountryState_CountryStateID] FOREIGN KEY ([CountryStateID]) REFERENCES [CountryState] ([ID]),
    CONSTRAINT [FK_Business_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_Business_Timezone_TimezoneID] FOREIGN KEY ([TimezoneID]) REFERENCES [Timezone] ([ID])
);
GO

CREATE TABLE [BusinessDomain] (
    [ID] nvarchar(450) NOT NULL,
    [Domain] nvarchar(max) NULL,
    [TXTRecord] nvarchar(max) NULL,
    [Verified] bit NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessDomain] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessDomain_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [BusinessProfileRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [IsBusinessOwner] bit NOT NULL,
    [IsAdmin] bit NOT NULL,
    [IsRoot] bit NOT NULL,
    [IsDisabled] bit NOT NULL,
    [BusinessID] nvarchar(450) NOT NULL,
    [AccountHolderID] nvarchar(450) NOT NULL,
    CONSTRAINT [PK_BusinessProfileRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessProfileRecord_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_BusinessProfileRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [BusinessRelationship] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ParentBusinessID] nvarchar(450) NULL,
    [OwnershipPercentage] float NOT NULL,
    [ChildBusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessRelationship] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessRelationship_Business_ChildBusinessID] FOREIGN KEY ([ChildBusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessRelationship_Business_ParentBusinessID] FOREIGN KEY ([ParentBusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [BusinessTenantSettings] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [ForexRates] nvarchar(max) NULL,
    [ExchangeRatesUpdatedTimestamp] datetime2 NOT NULL,
    CONSTRAINT [PK_BusinessTenantSettings] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessTenantSettings_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [ContactRelationType] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [BackName] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ContactRelationType] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ContactRelationType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [ContactSource] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ContactSource] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ContactSource_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [CostCentresGroup] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Disabled] bit NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [ParentCostCentresGroupID] nvarchar(450) NULL,
    CONSTRAINT [PK_CostCentresGroup] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CostCentresGroup_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CostCentresGroup_CostCentresGroup_ParentCostCentresGroupID] FOREIGN KEY ([ParentCostCentresGroupID]) REFERENCES [CostCentresGroup] ([ID])
);
GO

CREATE TABLE [CustomProperty] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [FormFieldDataType] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_CustomProperty] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CustomProperty_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [DeliveryNote] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_DeliveryNote] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_DeliveryNote_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [FinancialBook] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_FinancialBook] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_FinancialBook_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [Holiday] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [DurationInDays] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [StartDate] datetime2 NOT NULL,
    [EndDate] datetime2 NOT NULL,
    CONSTRAINT [PK_Holiday] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Holiday_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [HolidaySchedule] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_HolidaySchedule] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_HolidaySchedule_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [ItemAttribute] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemAttribute] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemAttribute_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [ItemBrand] (
    [ID] nvarchar(450) NOT NULL,
    [Code] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [WebsiteURL] nvarchar(max) NULL,
    [LogoURL] nvarchar(max) NULL,
    [Featured] bit NOT NULL,
    [Trending] bit NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemBrand] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemBrand_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [ItemBundle] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Code] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Disabled] bit NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemBundle] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemBundle_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [ItemFamily] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Code] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemFamily] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemFamily_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [ItemGroup] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Code] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemGroup] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemGroup_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [ItemRestock] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemRestock] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemRestock_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [ItemTag] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemTag] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemTag_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [JobField] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [ImageURL] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_JobField] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_JobField_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [LeaveType] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_LeaveType] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_LeaveType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [LicenseValidation] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Valid] bit NOT NULL,
    [Domain] nvarchar(max) NULL,
    [IP] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_LicenseValidation] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_LicenseValidation_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [LocalizationResource] (
    [ID] nvarchar(450) NOT NULL,
    [Comments] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [CountryLanguageID] nvarchar(450) NULL,
    [CountryLanguageRecordID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [Base] nvarchar(max) NULL,
    [Value] nvarchar(max) NULL,
    [LocalizationStringID] nvarchar(450) NULL,
    CONSTRAINT [PK_LocalizationResource] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_LocalizationResource_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_LocalizationResource_CountryLanguage_CountryLanguageID] FOREIGN KEY ([CountryLanguageID]) REFERENCES [CountryLanguage] ([Iso639_1]),
    CONSTRAINT [FK_LocalizationResource_CountryLanguageRecord_CountryLanguageRecordID] FOREIGN KEY ([CountryLanguageRecordID]) REFERENCES [CountryLanguageRecord] ([ID]),
    CONSTRAINT [FK_LocalizationResource_LocalizationResource_LocalizationStringID] FOREIGN KEY ([LocalizationStringID]) REFERENCES [LocalizationResource] ([ID])
);
GO

CREATE TABLE [PaymentGateway] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_PaymentGateway] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PaymentGateway_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [ProductionPlan] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ProductionPlan] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ProductionPlan_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [SEOKeyWord] (
    [ID] nvarchar(450) NOT NULL,
    [Keyword] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_SEOKeyWord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SEOKeyWord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [ShippingClass] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Slug] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShippingClass] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShippingClass_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [ShippingMethod] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Cost] float NOT NULL,
    [Taxable] bit NOT NULL,
    [TaxIncluded] bit NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ShippingClassCalculationType] int NOT NULL,
    CONSTRAINT [PK_ShippingMethod] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShippingMethod_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ShippingMethod_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID])
);
GO

CREATE TABLE [ShippingRegion] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [PostalCodes] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShippingRegion] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShippingRegion_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [ShippingZone] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Default] bit NOT NULL,
    [Everywhere] bit NOT NULL,
    [PostalCodes] nvarchar(max) NULL,
    [CountryCodes] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShippingZone] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShippingZone_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [SupportTicketType] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_SupportTicketType] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SupportTicketType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [WebsiteTheme] (
    [ID] nvarchar(450) NOT NULL,
    [Enable] bit NOT NULL,
    [Name] nvarchar(max) NULL,
    [AuthorName] nvarchar(max) NULL,
    [AuthorUrl] nvarchar(max) NULL,
    [Version] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Tags] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_WebsiteTheme] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WebsiteTheme_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [WorkOrderType] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_WorkOrderType] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WorkOrderType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [Workstation] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_Workstation] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Workstation_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
);
GO

CREATE TABLE [BusinessApplication] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Namespace] nvarchar(max) NULL,
    [DisplayName] nvarchar(max) NULL,
    [AvatarURL] nvarchar(max) NULL,
    [WebsiteUrl] nvarchar(max) NULL,
    [IsMultiTenant] bit NOT NULL,
    [IsVerified] bit NOT NULL,
    [IsDisabled] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [VerificationTimestamp] datetime2 NOT NULL,
    [SpaUIEngine] int NOT NULL,
    [SpaStaticFilesRootPath] nvarchar(max) NULL,
    [SpaRelativeSourcePath] nvarchar(max) NULL,
    [SpaRelativeAppPath] nvarchar(max) NULL,
    [SpaServerUrl] nvarchar(max) NULL,
    [SpaPublishScript] nvarchar(max) NULL,
    [SpaPrePublishScript] nvarchar(max) NULL,
    [SpaPostPublishScript] nvarchar(max) NULL,
    [SpaInstallScript] nvarchar(max) NULL,
    [SpaPreInstallScript] nvarchar(max) NULL,
    [SpaPostInstallScript] nvarchar(max) NULL,
    [SpaStartScript] nvarchar(max) NULL,
    [SpaPreStartScript] nvarchar(max) NULL,
    [SpaPostStartScript] nvarchar(max) NULL,
    [SpaPackageManager] nvarchar(max) NULL,
    [SpaNpmInstallScript] nvarchar(max) NULL,
    [SpaNpmStartScript] nvarchar(max) NULL,
    [SpaNpmPublishScript] nvarchar(max) NULL,
    [SpaRelativeOutputPath] nvarchar(max) NULL,
    [UseProxyToSpaDevelopmentServer] bit NOT NULL,
    [SpaDevelopmentServerUri] nvarchar(max) NULL,
    [IsSinglePageApplication] bit NOT NULL,
    [IsNativeOrDesktopApp] bit NOT NULL,
    [SystemLocked] bit NOT NULL,
    [RequireHttps] bit NOT NULL,
    [RequireAppSecret] bit NOT NULL,
    [EnableClientOauthLogin] bit NOT NULL,
    [EnableWebOAuthLogin] bit NOT NULL,
    [EnableDeviceOAuthLogin] bit NOT NULL,
    [AllowAccessToSuiteSettings] bit NOT NULL,
    [RequireWebOAuthReauthentication] bit NOT NULL,
    [RequireTwoFactorReauthorization] bit NOT NULL,
    [EnableEmbeddedBrowserOAuthLogin] bit NOT NULL,
    [UseStrictModeForRedirectURIs] bit NOT NULL,
    [CountryRestricted] bit NOT NULL,
    [RestrictedCountries] nvarchar(max) NULL,
    [DataDeletionRequestURL] nvarchar(max) NULL,
    [DeauthorizeCallbackURL] nvarchar(max) NULL,
    [DataProtectionOfficerEmail] nvarchar(max) NULL,
    [DataProtectionOfficerName] nvarchar(max) NULL,
    [DataProtectionOfficerAddress1] nvarchar(max) NULL,
    [DataProtectionOfficerAddress2] nvarchar(max) NULL,
    [DataProtectionOfficerAddress3] nvarchar(max) NULL,
    [DataProtectionOfficerCity] nvarchar(max) NULL,
    [DataProtectionOfficerState] nvarchar(max) NULL,
    [DataProtectionOfficerPostalCode] nvarchar(max) NULL,
    [DataProtectionOfficerCountry] nvarchar(max) NULL,
    [ContactEmail] nvarchar(max) NULL,
    [PrivacyPolicyURL] nvarchar(max) NULL,
    [TermsAndConditionsURL] nvarchar(max) NULL,
    [AllowedDomains] nvarchar(max) NULL,
    [ServerIPAllowlist] nvarchar(max) NULL,
    [UpdateSettingsIPAllowlist] nvarchar(max) NULL,
    [UpdateSettingsNotificationEmails] nvarchar(max) NULL,
    [AllowCrossDomainShareRedirects] nvarchar(max) NULL,
    [ValidOAuthRedirectURIs] nvarchar(max) NULL,
    [EnableGitRepoManagement] bit NOT NULL,
    [MarkedForPublish] bit NOT NULL,
    [PublishResultMessages] nvarchar(max) NULL,
    [InstallResultMessages] nvarchar(max) NULL,
    [StartResultMessages] nvarchar(max) NULL,
    [GitResultMessages] nvarchar(max) NULL,
    [GitRepoUrl] nvarchar(max) NULL,
    [GitBranch] nvarchar(max) NULL,
    [GitRepo] nvarchar(max) NULL,
    [GitUser] nvarchar(max) NULL,
    [IsGitPrivateRepo] bit NOT NULL,
    [GitToken] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_BusinessApplication] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessApplication_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessApplication_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [BusinessIndustry] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [ParentBusinessIndustryID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessIndustry] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessIndustry_BusinessIndustry_ParentBusinessIndustryID] FOREIGN KEY ([ParentBusinessIndustryID]) REFERENCES [BusinessIndustry] ([ID]),
    CONSTRAINT [FK_BusinessIndustry_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [BusinessPermission] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [IsSystemPermission] bit NOT NULL,
    [Description] nvarchar(max) NULL,
    [Category] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessPermission] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessPermission_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessPermission_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [BusinessPosition] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Type] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessPosition] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessPosition_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessPosition_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [BusinessProcess] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [ParentBusinessProcessID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_BusinessProcess] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessProcess_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessProcess_BusinessProcess_ParentBusinessProcessID] FOREIGN KEY ([ParentBusinessProcessID]) REFERENCES [BusinessProcess] ([ID]),
    CONSTRAINT [FK_BusinessProcess_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [BusinessProfileInvitation] (
    [ID] nvarchar(450) NOT NULL,
    [Email] nvarchar(max) NULL,
    [Redeemed] bit NOT NULL,
    [RedeemedTimestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NOT NULL,
    [BusinessProfileRecordID] nvarchar(450) NOT NULL,
    CONSTRAINT [PK_BusinessProfileInvitation] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessProfileInvitation_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessProfileInvitation_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [BusinessSecurityRole] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [IsSystemSecurityRole] bit NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessSecurityRole] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessSecurityRole_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessSecurityRole_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [CognitiveAgent] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Avatar] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_CognitiveAgent] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CognitiveAgent_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CognitiveAgent_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [CurriculumSkill] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [CurriculumSkillType] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_CurriculumSkill] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CurriculumSkill_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CurriculumSkill_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [DiscountList] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [DiscountListType] int NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_DiscountList] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_DiscountList_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_DiscountList_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_DiscountList_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID])
);
GO

CREATE TABLE [EmailGroup] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [MyProperty] int NOT NULL,
    CONSTRAINT [PK_EmailGroup] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_EmailGroup_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_EmailGroup_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [EmployeeBenefit] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [EffectiveDate] datetime2 NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_EmployeeBenefit] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_EmployeeBenefit_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_EmployeeBenefit_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [EmployeeType] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_EmployeeType] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_EmployeeType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_EmployeeType_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [FiscalAuthority] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [LogoURL] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [CountryID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_FiscalAuthority] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_FiscalAuthority_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_FiscalAuthority_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_FiscalAuthority_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID])
);
GO

CREATE TABLE [ForeignExchangeSet] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [UpdateTimestamp] datetime2 NOT NULL,
    [Year] int NOT NULL,
    [Month] int NOT NULL,
    [Day] int NOT NULL,
    [Values] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ForeignExchangeSet] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ForeignExchangeSet_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ForeignExchangeSet_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [Integration] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Type] nvarchar(max) NOT NULL,
    [APIKeyAuthPosition] int NOT NULL,
    [IntegationAuthType] int NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [LastRenewal] datetime2 NOT NULL,
    [Expiration] datetime2 NOT NULL,
    [ExpiresIn] bigint NOT NULL,
    [Scopes] nvarchar(max) NULL,
    [TokenType] nvarchar(max) NULL,
    [Nonce] nvarchar(max) NULL,
    [Username] nvarchar(max) NULL,
    [Password] nvarchar(max) NULL,
    [AccessCode] nvarchar(max) NULL,
    [AuthorizationCode] nvarchar(max) NULL,
    [BaseURL] nvarchar(max) NULL,
    [RequestURL] nvarchar(max) NULL,
    [AccessToken] nvarchar(max) NULL,
    [RefreshToken] nvarchar(max) NULL,
    [Realm] nvarchar(max) NULL,
    [HeaderKey] nvarchar(max) NULL,
    [APIKey] nvarchar(max) NULL,
    [ApiSecret] nvarchar(max) NULL,
    [NonceCount] nvarchar(max) NULL,
    [ClientNonce] nvarchar(max) NULL,
    [QualityOfProtection] nvarchar(max) NULL,
    [Opaque] nvarchar(max) NULL,
    [DigestAuthAlgorithm] int NOT NULL,
    [ConsumerKey] nvarchar(max) NULL,
    [ConsumerSecret] nvarchar(max) NULL,
    [TokenSecret] nvarchar(max) NULL,
    [Version] nvarchar(max) NULL,
    [OAuth1SignatureMethod] int NOT NULL,
    [HawkAuthID] nvarchar(max) NULL,
    [HawkAuthKey] nvarchar(max) NULL,
    [User] nvarchar(max) NULL,
    [Ext] nvarchar(max) NULL,
    [App] nvarchar(max) NULL,
    [Dlg] nvarchar(max) NULL,
    [IncludePayloadHash] bit NOT NULL,
    [HawkAuthAlgorithm] int NOT NULL,
    [Domain] nvarchar(max) NULL,
    [Workstation] nvarchar(max) NULL,
    [AccessKey] nvarchar(max) NULL,
    [SecretKey] nvarchar(max) NULL,
    [AWSRegion] nvarchar(max) NULL,
    [ServiceName] nvarchar(max) NULL,
    [SessionToken] nvarchar(max) NULL,
    [ClientToken] nvarchar(max) NULL,
    [ClientSecret] nvarchar(max) NULL,
    [HeadersToSign] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [EventType] int NULL,
    [EntityType] int NULL,
    [RequestEncoding] int NULL,
    CONSTRAINT [PK_Integration] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Integration_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_Integration_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Integration_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [ItemCategory] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [ImageURL] nvarchar(max) NULL,
    [IsFeatured] bit NOT NULL,
    [EnableForCourses] bit NOT NULL,
    [EnableForProducts] bit NOT NULL,
    [EnableForLicenses] bit NOT NULL,
    [EnableForServices] bit NOT NULL,
    [EnableForSubscriptions] bit NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ParentItemCategoryID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_ItemCategory] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemCategory_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ItemCategory_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ItemCategory_ItemCategory_ParentItemCategoryID] FOREIGN KEY ([ParentItemCategoryID]) REFERENCES [ItemCategory] ([ID])
);
GO

CREATE TABLE [JobTitle] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [GrossPay] float NOT NULL,
    [NetSalary] float NOT NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_JobTitle] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_JobTitle_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_JobTitle_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [JournalType] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_JournalType] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_JournalType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_JournalType_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [LedgerType] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [LedgerClass] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_LedgerType] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_LedgerType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_LedgerType_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [MaintenanceVisit] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_MaintenanceVisit] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_MaintenanceVisit_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_MaintenanceVisit_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [MarketingArea] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_MarketingArea] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_MarketingArea_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_MarketingArea_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [MarketingList] (
    [ID] nvarchar(450) NOT NULL,
    [Locked] bit NOT NULL,
    [Name] nvarchar(max) NULL,
    [Purpose] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Source] nvarchar(max) NULL,
    [Cost] float NOT NULL,
    [ModifiedOn] datetime2 NOT NULL,
    [LastUsedOn] datetime2 NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [MarketingListType] int NOT NULL,
    [MarketingListTarget] int NOT NULL,
    CONSTRAINT [PK_MarketingList] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_MarketingList_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_MarketingList_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_MarketingList_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID])
);
GO

CREATE TABLE [Newsletter] (
    [ID] nvarchar(450) NOT NULL,
    [Code] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_Newsletter] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Newsletter_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Newsletter_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [PaymentMode] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_PaymentMode] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PaymentMode_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_PaymentMode_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [ProficiencyRatingModel] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [MinRatingValue] int NOT NULL,
    [MaxRatingValue] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ProficiencyRatingModel] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ProficiencyRatingModel_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ProficiencyRatingModel_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [ProjectJournal] (
    [ID] nvarchar(450) NOT NULL,
    [Submitted] bit NOT NULL,
    [Description] nvarchar(max) NULL,
    [JournalType] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ProjectJournal] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ProjectJournal_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ProjectJournal_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [ProjectResource] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ProjectResource] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ProjectResource_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ProjectResource_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [ProjectResourceRole] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [TargetUtilization] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ProjectResourceRole] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ProjectResourceRole_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ProjectResourceRole_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [SalesLiteratureType] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_SalesLiteratureType] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SalesLiteratureType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SalesLiteratureType_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [ServiceCaseType] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ServiceCaseType] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ServiceCaseType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ServiceCaseType_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [ShareClass] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [ForexRates] nvarchar(max) NULL,
    [Value] bit NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShareClass] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShareClass_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ShareClass_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ShareClass_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID])
);
GO

CREATE TABLE [ShareIssuance] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [UnitPrice] int NOT NULL,
    [Quantity] int NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShareIssuance] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShareIssuance_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ShareIssuance_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ShareIssuance_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID])
);
GO

CREATE TABLE [ShareTransferReason] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShareTransferReason] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShareTransferReason_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ShareTransferReason_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [ShippingCourier] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [LogoURL] nvarchar(max) NULL,
    [CountryID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShippingCourier] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShippingCourier_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ShippingCourier_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ShippingCourier_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID])
);
GO

CREATE TABLE [SocialBadge] (
    [ID] nvarchar(450) NOT NULL,
    [Image] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_SocialBadge] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SocialBadge_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SocialBadge_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [SocialPostBucket] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_SocialPostBucket] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SocialPostBucket_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SocialPostBucket_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [SupplierGroup] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_SupplierGroup] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SupplierGroup_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SupplierGroup_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [SustainabilityProfile] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_SustainabilityProfile] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SustainabilityProfile_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SustainabilityProfile_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [Territory] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ParentTerritoryID] nvarchar(450) NULL,
    [AccountHolderId] nvarchar(450) NULL,
    CONSTRAINT [PK_Territory] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Territory_AspNetUsers_AccountHolderId] FOREIGN KEY ([AccountHolderId]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_Territory_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Territory_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Territory_Territory_ParentTerritoryID] FOREIGN KEY ([ParentTerritoryID]) REFERENCES [Territory] ([ID])
);
GO

CREATE TABLE [TrainingProgram] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_TrainingProgram] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_TrainingProgram_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_TrainingProgram_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [TransactionCategory] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_TransactionCategory] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_TransactionCategory_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_TransactionCategory_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [UnitGroup] (
    [ID] nvarchar(450) NOT NULL,
    [SystemLocked] bit NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_UnitGroup] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_UnitGroup_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_UnitGroup_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [CostCentre] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Disabled] bit NOT NULL,
    [Description] nvarchar(max) NULL,
    [CostCentreType] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [CostCentresGroupID] nvarchar(450) NULL,
    [ParentCostCentreID] nvarchar(450) NULL,
    CONSTRAINT [PK_CostCentre] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CostCentre_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CostCentre_CostCentre_ParentCostCentreID] FOREIGN KEY ([ParentCostCentreID]) REFERENCES [CostCentre] ([ID]),
    CONSTRAINT [FK_CostCentre_CostCentresGroup_CostCentresGroupID] FOREIGN KEY ([CostCentresGroupID]) REFERENCES [CostCentresGroup] ([ID])
);
GO

CREATE TABLE [HolidayScheduleRecord] (
    [ID] nvarchar(450) NOT NULL,
    [HolidayID] nvarchar(450) NULL,
    [HolidayScheduleID] nvarchar(450) NULL,
    CONSTRAINT [PK_HolidayScheduleRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_HolidayScheduleRecord_Holiday_HolidayID] FOREIGN KEY ([HolidayID]) REFERENCES [Holiday] ([ID]),
    CONSTRAINT [FK_HolidayScheduleRecord_HolidaySchedule_HolidayScheduleID] FOREIGN KEY ([HolidayScheduleID]) REFERENCES [HolidaySchedule] ([ID])
);
GO

CREATE TABLE [ItemAttributeOption] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ItemAttributeID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemAttributeOption] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemAttributeOption_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ItemAttributeOption_ItemAttribute_ItemAttributeID] FOREIGN KEY ([ItemAttributeID]) REFERENCES [ItemAttribute] ([ID])
);
GO

CREATE TABLE [SEOKeyWordRecord] (
    [ID] nvarchar(450) NOT NULL,
    [SEOKeyWordID] nvarchar(450) NULL,
    CONSTRAINT [PK_SEOKeyWordRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SEOKeyWordRecord_SEOKeyWord_SEOKeyWordID] FOREIGN KEY ([SEOKeyWordID]) REFERENCES [SEOKeyWord] ([ID])
);
GO

CREATE TABLE [ShippingMethodClassRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ShippingMethodID] nvarchar(450) NULL,
    [Cost] float NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [ShippingClassID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShippingMethodClassRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShippingMethodClassRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ShippingMethodClassRecord_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_ShippingMethodClassRecord_ShippingClass_ShippingClassID] FOREIGN KEY ([ShippingClassID]) REFERENCES [ShippingClass] ([ID]),
    CONSTRAINT [FK_ShippingMethodClassRecord_ShippingMethod_ShippingMethodID] FOREIGN KEY ([ShippingMethodID]) REFERENCES [ShippingMethod] ([ID])
);
GO

CREATE TABLE [ShippingRegionCountryRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ShippingRegionID] nvarchar(450) NULL,
    [CountryID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShippingRegionCountryRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShippingRegionCountryRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ShippingRegionCountryRecord_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_ShippingRegionCountryRecord_ShippingRegion_ShippingRegionID] FOREIGN KEY ([ShippingRegionID]) REFERENCES [ShippingRegion] ([ID])
);
GO

CREATE TABLE [ShippingMethodZoneRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Enabled] bit NOT NULL,
    [ShippingMethodID] nvarchar(450) NULL,
    [ShippingZoneID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShippingMethodZoneRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShippingMethodZoneRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ShippingMethodZoneRecord_ShippingMethod_ShippingMethodID] FOREIGN KEY ([ShippingMethodID]) REFERENCES [ShippingMethod] ([ID]),
    CONSTRAINT [FK_ShippingMethodZoneRecord_ShippingZone_ShippingZoneID] FOREIGN KEY ([ShippingZoneID]) REFERENCES [ShippingZone] ([ID])
);
GO

CREATE TABLE [ShippingRegionZoneRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ShippingRegionID] nvarchar(450) NULL,
    [ShippingZoneID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShippingRegionZoneRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShippingRegionZoneRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ShippingRegionZoneRecord_ShippingRegion_ShippingRegionID] FOREIGN KEY ([ShippingRegionID]) REFERENCES [ShippingRegion] ([ID]),
    CONSTRAINT [FK_ShippingRegionZoneRecord_ShippingZone_ShippingZoneID] FOREIGN KEY ([ShippingZoneID]) REFERENCES [ShippingZone] ([ID])
);
GO

CREATE TABLE [WebResource] (
    [ID] nvarchar(450) NOT NULL,
    [WebsiteThemeID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [WebsiteScript_Order] int NULL,
    [Script] nvarchar(max) NULL,
    [ScriptDisposition] int NULL,
    [Order] int NULL,
    [Style] nvarchar(max) NULL,
    [StyleSheetDisposition] int NULL,
    CONSTRAINT [PK_WebResource] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WebResource_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_WebResource_WebsiteTheme_WebsiteThemeID] FOREIGN KEY ([WebsiteThemeID]) REFERENCES [WebsiteTheme] ([ID])
);
GO

CREATE TABLE [WorkOrder] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [WorkOrderTypeID] nvarchar(450) NULL,
    CONSTRAINT [PK_WorkOrder] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WorkOrder_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_WorkOrder_WorkOrderType_WorkOrderTypeID] FOREIGN KEY ([WorkOrderTypeID]) REFERENCES [WorkOrderType] ([ID])
);
GO

CREATE TABLE [BusinessApplicationQueryRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessApplicationID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessApplicationQueryRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessApplicationQueryRecord_BusinessApplication_BusinessApplicationID] FOREIGN KEY ([BusinessApplicationID]) REFERENCES [BusinessApplication] ([ID])
);
GO

CREATE TABLE [BusinessApplicationReplyURL] (
    [ID] nvarchar(450) NOT NULL,
    [ReplyURL] nvarchar(max) NULL,
    [BusinessApplicationID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessApplicationReplyURL] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessApplicationReplyURL_BusinessApplication_BusinessApplicationID] FOREIGN KEY ([BusinessApplicationID]) REFERENCES [BusinessApplication] ([ID])
);
GO

CREATE TABLE [BusinessApplicationSecret] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Revoked] bit NOT NULL,
    [PublicKey] nvarchar(max) NULL,
    [PrivateKey] nvarchar(max) NULL,
    [SigningPublicKey] nvarchar(max) NULL,
    [SigningPrivateKey] nvarchar(max) NULL,
    [AccessKeyPairID] nvarchar(450) NULL,
    [JwtSigningAccessKeyPairID] nvarchar(450) NULL,
    [BusinessApplicationSecretPeriod] int NOT NULL,
    [BusinessApplicationID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessApplicationSecret] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessApplicationSecret_AccessKeyPair_AccessKeyPairID] FOREIGN KEY ([AccessKeyPairID]) REFERENCES [AccessKeyPair] ([IP]),
    CONSTRAINT [FK_BusinessApplicationSecret_AccessKeyPair_JwtSigningAccessKeyPairID] FOREIGN KEY ([JwtSigningAccessKeyPairID]) REFERENCES [AccessKeyPair] ([IP]),
    CONSTRAINT [FK_BusinessApplicationSecret_BusinessApplication_BusinessApplicationID] FOREIGN KEY ([BusinessApplicationID]) REFERENCES [BusinessApplication] ([ID])
);
GO

CREATE TABLE [OpenIddictEntityFrameworkCoreApplication] (
    [Id] nvarchar(450) NOT NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [Logo] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [BusinessApplicationID] nvarchar(450) NULL,
    [ClientId] nvarchar(max) NULL,
    [ClientSecret] nvarchar(max) NULL,
    [ConcurrencyToken] nvarchar(max) NULL,
    [ConsentType] nvarchar(max) NULL,
    [DisplayName] nvarchar(max) NULL,
    [DisplayNames] nvarchar(max) NULL,
    [Permissions] nvarchar(max) NULL,
    [PostLogoutRedirectUris] nvarchar(max) NULL,
    [Properties] nvarchar(max) NULL,
    [RedirectUris] nvarchar(max) NULL,
    [Requirements] nvarchar(max) NULL,
    [Type] nvarchar(max) NULL,
    CONSTRAINT [PK_OpenIddictEntityFrameworkCoreApplication] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_OpenIddictEntityFrameworkCoreApplication_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_OpenIddictEntityFrameworkCoreApplication_BusinessApplication_BusinessApplicationID] FOREIGN KEY ([BusinessApplicationID]) REFERENCES [BusinessApplication] ([ID]),
    CONSTRAINT [FK_OpenIddictEntityFrameworkCoreApplication_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [WebPortal] (
    [ID] nvarchar(450) NOT NULL,
    [Root] bit NOT NULL,
    [Disabled] bit NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [BusinessDomainID] nvarchar(450) NULL,
    [WebsiteThemeID] nvarchar(450) NULL,
    [BusinessPortalApplicationID] nvarchar(450) NULL,
    [PublicKey] nvarchar(max) NULL,
    [PrivateKey] nvarchar(max) NULL,
    [Domain] nvarchar(max) NULL,
    [Settings] nvarchar(max) NULL,
    CONSTRAINT [PK_WebPortal] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WebPortal_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_WebPortal_BusinessApplication_BusinessPortalApplicationID] FOREIGN KEY ([BusinessPortalApplicationID]) REFERENCES [BusinessApplication] ([ID]),
    CONSTRAINT [FK_WebPortal_BusinessDomain_BusinessDomainID] FOREIGN KEY ([BusinessDomainID]) REFERENCES [BusinessDomain] ([ID]),
    CONSTRAINT [FK_WebPortal_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_WebPortal_WebsiteTheme_WebsiteThemeID] FOREIGN KEY ([WebsiteThemeID]) REFERENCES [WebsiteTheme] ([ID])
);
GO

CREATE TABLE [BusinessIndustryRecord] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessIndustryID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessIndustryRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessIndustryRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessIndustryRecord_BusinessIndustry_BusinessIndustryID] FOREIGN KEY ([BusinessIndustryID]) REFERENCES [BusinessIndustry] ([ID])
);
GO

CREATE TABLE [BusinessApplicationRequestedPermission] (
    [ID] nvarchar(450) NOT NULL,
    [IsOptional] bit NOT NULL,
    [BusinessPermissionID] nvarchar(450) NULL,
    [BusinessApplicationID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessApplicationRequestedPermission] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessApplicationRequestedPermission_BusinessApplication_BusinessApplicationID] FOREIGN KEY ([BusinessApplicationID]) REFERENCES [BusinessApplication] ([ID]),
    CONSTRAINT [FK_BusinessApplicationRequestedPermission_BusinessPermission_BusinessPermissionID] FOREIGN KEY ([BusinessPermissionID]) REFERENCES [BusinessPermission] ([ID])
);
GO

CREATE TABLE [BusinessProcessStage] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [StageOrder] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [BusinessProcessID] nvarchar(450) NULL,
    [ParentBusinessProcessStageID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [DealUnitFlowID] nvarchar(450) NULL,
    [AppraisalWorkflowID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessProcessStage] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessProcessStage_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessProcessStage_BusinessProcess_AppraisalWorkflowID] FOREIGN KEY ([AppraisalWorkflowID]) REFERENCES [BusinessProcess] ([ID]),
    CONSTRAINT [FK_BusinessProcessStage_BusinessProcess_BusinessProcessID] FOREIGN KEY ([BusinessProcessID]) REFERENCES [BusinessProcess] ([ID]),
    CONSTRAINT [FK_BusinessProcessStage_BusinessProcess_DealUnitFlowID] FOREIGN KEY ([DealUnitFlowID]) REFERENCES [BusinessProcess] ([ID]),
    CONSTRAINT [FK_BusinessProcessStage_BusinessProcessStage_ParentBusinessProcessStageID] FOREIGN KEY ([ParentBusinessProcessStageID]) REFERENCES [BusinessProcessStage] ([ID]),
    CONSTRAINT [FK_BusinessProcessStage_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [BusinessPermissionGrant] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessPermissionID] nvarchar(450) NULL,
    [GrantorBusinessProfileRecordID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [BusinessApplicationID] nvarchar(450) NULL,
    [BusinessApplicationGrantScope] int NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [BusinessSecurityRoleID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessPermissionGrant] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessPermissionGrant_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessPermissionGrant_BusinessApplication_BusinessApplicationID] FOREIGN KEY ([BusinessApplicationID]) REFERENCES [BusinessApplication] ([ID]),
    CONSTRAINT [FK_BusinessPermissionGrant_BusinessPermission_BusinessPermissionID] FOREIGN KEY ([BusinessPermissionID]) REFERENCES [BusinessPermission] ([ID]),
    CONSTRAINT [FK_BusinessPermissionGrant_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_BusinessPermissionGrant_BusinessProfileRecord_GrantorBusinessProfileRecordID] FOREIGN KEY ([GrantorBusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_BusinessPermissionGrant_BusinessSecurityRole_BusinessSecurityRoleID] FOREIGN KEY ([BusinessSecurityRoleID]) REFERENCES [BusinessSecurityRole] ([ID])
);
GO

CREATE TABLE [SecurityRoleGrant] (
    [ID] nvarchar(450) NOT NULL,
    [GrantorBusinessProfileRecordID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessSecurityRoleID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [BusinessApplicationID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_SecurityRoleGrant] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SecurityRoleGrant_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SecurityRoleGrant_BusinessApplication_BusinessApplicationID] FOREIGN KEY ([BusinessApplicationID]) REFERENCES [BusinessApplication] ([ID]),
    CONSTRAINT [FK_SecurityRoleGrant_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SecurityRoleGrant_BusinessProfileRecord_GrantorBusinessProfileRecordID] FOREIGN KEY ([GrantorBusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SecurityRoleGrant_BusinessSecurityRole_BusinessSecurityRoleID] FOREIGN KEY ([BusinessSecurityRoleID]) REFERENCES [BusinessSecurityRole] ([ID])
);
GO

CREATE TABLE [Discount] (
    [ID] nvarchar(450) NOT NULL,
    [Description] nvarchar(max) NULL,
    [BeginQuantity] float NOT NULL,
    [EndQuantity] float NOT NULL,
    [Percent] float NOT NULL,
    [Value] float NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [DiscountListID] nvarchar(450) NULL,
    CONSTRAINT [PK_Discount] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Discount_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Discount_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Discount_DiscountList_DiscountListID] FOREIGN KEY ([DiscountListID]) REFERENCES [DiscountList] ([ID])
);
GO

CREATE TABLE [FiscalIdentificationType] (
    [ID] nvarchar(450) NOT NULL,
    [Code] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [FiscalAuthorityID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_FiscalIdentificationType] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_FiscalIdentificationType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_FiscalIdentificationType_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_FiscalIdentificationType_FiscalAuthority_FiscalAuthorityID] FOREIGN KEY ([FiscalAuthorityID]) REFERENCES [FiscalAuthority] ([ID])
);
GO

CREATE TABLE [FiscalRegime] (
    [ID] nvarchar(450) NOT NULL,
    [Code] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [FiscalAuthorityID] nvarchar(450) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_FiscalRegime] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_FiscalRegime_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_FiscalRegime_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_FiscalRegime_FiscalAuthority_FiscalAuthorityID] FOREIGN KEY ([FiscalAuthorityID]) REFERENCES [FiscalAuthority] ([ID])
);
GO

CREATE TABLE [FiscalResponsibility] (
    [ID] nvarchar(450) NOT NULL,
    [Code] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [FiscalAuthorityID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_FiscalResponsibility] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_FiscalResponsibility_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_FiscalResponsibility_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_FiscalResponsibility_FiscalAuthority_FiscalAuthorityID] FOREIGN KEY ([FiscalAuthorityID]) REFERENCES [FiscalAuthority] ([ID])
);
GO

CREATE TABLE [FiscalYear] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Disabled] bit NOT NULL,
    [Default] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Start] datetime2 NOT NULL,
    [End] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [FiscalAuthorityID] nvarchar(450) NULL,
    CONSTRAINT [PK_FiscalYear] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_FiscalYear_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_FiscalYear_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_FiscalYear_FiscalAuthority_FiscalAuthorityID] FOREIGN KEY ([FiscalAuthorityID]) REFERENCES [FiscalAuthority] ([ID])
);
GO

CREATE TABLE [InvoiceEnumerationRange] (
    [ID] nvarchar(450) NOT NULL,
    [Prefix] nvarchar(max) NULL,
    [Suffix] nvarchar(max) NULL,
    [Identifier] nvarchar(max) NULL,
    [CurrentNumeration] bigint NOT NULL,
    [NumerationFrom] bigint NOT NULL,
    [NumerationTo] bigint NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ValidFrom] datetime2 NOT NULL,
    [ValidTo] datetime2 NOT NULL,
    [FiscalAuthorityID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [DocumentType] int NOT NULL,
    CONSTRAINT [PK_InvoiceEnumerationRange] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_InvoiceEnumerationRange_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_InvoiceEnumerationRange_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_InvoiceEnumerationRange_FiscalAuthority_FiscalAuthorityID] FOREIGN KEY ([FiscalAuthorityID]) REFERENCES [FiscalAuthority] ([ID])
);
GO

CREATE TABLE [WebhookRequestCondition] (
    [ID] nvarchar(450) NOT NULL,
    [WebhookRequestID] nvarchar(450) NULL,
    [PropertyName] nvarchar(max) NULL,
    [ExpectedValue] nvarchar(max) NULL,
    CONSTRAINT [PK_WebhookRequestCondition] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WebhookRequestCondition_Integration_WebhookRequestID] FOREIGN KEY ([WebhookRequestID]) REFERENCES [Integration] ([ID])
);
GO

CREATE TABLE [WebhookRequestDataEntry] (
    [ID] nvarchar(450) NOT NULL,
    [WebhookRequestID] nvarchar(450) NULL,
    [Key] nvarchar(max) NULL,
    [PropertyName] nvarchar(max) NULL,
    CONSTRAINT [PK_WebhookRequestDataEntry] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WebhookRequestDataEntry_Integration_WebhookRequestID] FOREIGN KEY ([WebhookRequestID]) REFERENCES [Integration] ([ID])
);
GO

CREATE TABLE [WebhookRequestHeader] (
    [ID] nvarchar(450) NOT NULL,
    [WebhookRequestID] nvarchar(450) NULL,
    [HeaderKey] nvarchar(max) NULL,
    [HeaderValue] nvarchar(max) NULL,
    CONSTRAINT [PK_WebhookRequestHeader] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WebhookRequestHeader_Integration_WebhookRequestID] FOREIGN KEY ([WebhookRequestID]) REFERENCES [Integration] ([ID])
);
GO

CREATE TABLE [ItemType] (
    [ID] nvarchar(450) NOT NULL,
    [PluralTitle] nvarchar(max) NULL,
    [SingularTitle] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [ImageURL] nvarchar(max) NULL,
    [GoogleCategoryTaxonomy] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ItemCategoryID] nvarchar(450) NULL,
    [ItemGoogleCategoryID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemType] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ItemType_ItemCategory_ItemCategoryID] FOREIGN KEY ([ItemCategoryID]) REFERENCES [ItemCategory] ([ID]),
    CONSTRAINT [FK_ItemType_ItemGoogleCategory_ItemGoogleCategoryID] FOREIGN KEY ([ItemGoogleCategoryID]) REFERENCES [ItemGoogleCategory] ([ID])
);
GO

CREATE TABLE [Ledger] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [DateTime] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [LedgerTypeID] nvarchar(450) NULL,
    CONSTRAINT [PK_Ledger] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Ledger_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Ledger_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Ledger_LedgerType_LedgerTypeID] FOREIGN KEY ([LedgerTypeID]) REFERENCES [LedgerType] ([ID])
);
GO

CREATE TABLE [MarketingCampaign] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Offer] nvarchar(max) NULL,
    [Active] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ProposedStart] datetime2 NOT NULL,
    [ProposedEnd] datetime2 NOT NULL,
    [ActualStart] datetime2 NOT NULL,
    [ActualEnd] datetime2 NOT NULL,
    [Code] nvarchar(max) NULL,
    [AllocatedBudget] float NOT NULL,
    [ActivityCost] float NOT NULL,
    [MiscCost] float NOT NULL,
    [ExpectedResponsePercent] float NOT NULL,
    [MarketingAreaID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [MarketingListID] nvarchar(450) NULL,
    CONSTRAINT [PK_MarketingCampaign] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_MarketingCampaign_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_MarketingCampaign_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_MarketingCampaign_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_MarketingCampaign_MarketingArea_MarketingAreaID] FOREIGN KEY ([MarketingAreaID]) REFERENCES [MarketingArea] ([ID]),
    CONSTRAINT [FK_MarketingCampaign_MarketingList_MarketingListID] FOREIGN KEY ([MarketingListID]) REFERENCES [MarketingList] ([ID])
);
GO

CREATE TABLE [PaymentTerm] (
    [ID] nvarchar(450) NOT NULL,
    [IsTemplate] bit NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Percentage] float NOT NULL,
    [CreditDays] float NOT NULL,
    [CreditWeeks] float NOT NULL,
    [CreditMonths] float NOT NULL,
    [CreditYears] float NOT NULL,
    [PaymentModeID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_PaymentTerm] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PaymentTerm_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_PaymentTerm_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_PaymentTerm_PaymentMode_PaymentModeID] FOREIGN KEY ([PaymentModeID]) REFERENCES [PaymentMode] ([ID])
);
GO

CREATE TABLE [ProficiencyRatingValue] (
    [ID] nvarchar(450) NOT NULL,
    [Value] nvarchar(max) NULL,
    [ProficiencyRatingModelID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ProficiencyRatingValue] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ProficiencyRatingValue_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ProficiencyRatingValue_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ProficiencyRatingValue_ProficiencyRatingModel_ProficiencyRatingModelID] FOREIGN KEY ([ProficiencyRatingModelID]) REFERENCES [ProficiencyRatingModel] ([ID])
);
GO

CREATE TABLE [SalesLiterature] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Content] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [ModifiedDate] datetime2 NOT NULL,
    [ExpirationDate] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [SalesLiteratureTypeID] nvarchar(450) NULL,
    CONSTRAINT [PK_SalesLiterature] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SalesLiterature_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SalesLiterature_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SalesLiterature_SalesLiteratureType_SalesLiteratureTypeID] FOREIGN KEY ([SalesLiteratureTypeID]) REFERENCES [SalesLiteratureType] ([ID])
);
GO

CREATE TABLE [Policy] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NULL,
    [Code] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [IsFree] bit NOT NULL,
    [Reduce] bit NOT NULL,
    [IsEnabled] bit NOT NULL,
    [IsDefault] bit NOT NULL,
    [AllowInternational] bit NOT NULL,
    [Hours] int NOT NULL,
    [Days] int NOT NULL,
    [Weeks] int NOT NULL,
    [Months] int NOT NULL,
    [Years] int NOT NULL,
    [Value] float NOT NULL,
    [Percentage] float NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [CountryID] nvarchar(450) NULL,
    [CountryStateID] nvarchar(450) NULL,
    [CustomState] nvarchar(max) NULL,
    [CustomCity] nvarchar(max) NULL,
    [CityID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [Zero] bit NULL,
    [Reduced] bit NULL,
    [Withholding] bit NULL,
    [FiscalAuthorityID] nvarchar(450) NULL,
    [IsExpressShipmentPolicy] bit NULL,
    [ShippingCourierID] nvarchar(450) NULL,
    [IsExtendedWarranty] bit NULL,
    [ReturnPolicy_ShippingCourierID] nvarchar(450) NULL,
    CONSTRAINT [PK_Policy] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Policy_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Policy_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Policy_City_CityID] FOREIGN KEY ([CityID]) REFERENCES [City] ([ID]),
    CONSTRAINT [FK_Policy_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_Policy_CountryState_CountryStateID] FOREIGN KEY ([CountryStateID]) REFERENCES [CountryState] ([ID]),
    CONSTRAINT [FK_Policy_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_Policy_FiscalAuthority_FiscalAuthorityID] FOREIGN KEY ([FiscalAuthorityID]) REFERENCES [FiscalAuthority] ([ID]),
    CONSTRAINT [FK_Policy_ShippingCourier_ReturnPolicy_ShippingCourierID] FOREIGN KEY ([ReturnPolicy_ShippingCourierID]) REFERENCES [ShippingCourier] ([ID]),
    CONSTRAINT [FK_Policy_ShippingCourier_ShippingCourierID] FOREIGN KEY ([ShippingCourierID]) REFERENCES [ShippingCourier] ([ID])
);
GO

CREATE TABLE [SocialMediaPost] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Content] nvarchar(max) NULL,
    [FeaturedImageUrl] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [SocialPostBucketID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_SocialMediaPost] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SocialMediaPost_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SocialMediaPost_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SocialMediaPost_SocialPostBucket_SocialPostBucketID] FOREIGN KEY ([SocialPostBucketID]) REFERENCES [SocialPostBucket] ([ID])
);
GO

CREATE TABLE [TrainingProgramResultSet] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [TrainingProgramID] nvarchar(450) NULL,
    CONSTRAINT [PK_TrainingProgramResultSet] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_TrainingProgramResultSet_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_TrainingProgramResultSet_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_TrainingProgramResultSet_TrainingProgram_TrainingProgramID] FOREIGN KEY ([TrainingProgramID]) REFERENCES [TrainingProgram] ([ID])
);
GO

CREATE TABLE [Unit] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [UnitGroupID] nvarchar(450) NULL,
    [BaseUnitAmount] float NOT NULL,
    [BaseUnitID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_Unit] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Unit_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Unit_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Unit_Unit_BaseUnitID] FOREIGN KEY ([BaseUnitID]) REFERENCES [Unit] ([ID]),
    CONSTRAINT [FK_Unit_UnitGroup_UnitGroupID] FOREIGN KEY ([UnitGroupID]) REFERENCES [UnitGroup] ([ID])
);
GO

CREATE TABLE [ExpenseClaim] (
    [ID] nvarchar(450) NOT NULL,
    [ExpenseTypeID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [CostCentreID] nvarchar(450) NULL,
    CONSTRAINT [PK_ExpenseClaim] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ExpenseClaim_CostCentre_CostCentreID] FOREIGN KEY ([CostCentreID]) REFERENCES [CostCentre] ([ID]),
    CONSTRAINT [FK_ExpenseClaim_ExpenseType_ExpenseTypeID] FOREIGN KEY ([ExpenseTypeID]) REFERENCES [ExpenseType] ([ID])
);
GO

CREATE TABLE [OpenIddictEntityFrameworkCoreAuthorization] (
    [Id] nvarchar(450) NOT NULL,
    [ApplicationId] nvarchar(450) NULL,
    [ConcurrencyToken] nvarchar(max) NULL,
    [CreationDate] datetime2 NULL,
    [Properties] nvarchar(max) NULL,
    [Scopes] nvarchar(max) NULL,
    [Status] nvarchar(max) NULL,
    [Subject] nvarchar(max) NULL,
    [Type] nvarchar(max) NULL,
    CONSTRAINT [PK_OpenIddictEntityFrameworkCoreAuthorization] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_OpenIddictEntityFrameworkCoreAuthorization_OpenIddictEntityFrameworkCoreApplication_ApplicationId] FOREIGN KEY ([ApplicationId]) REFERENCES [OpenIddictEntityFrameworkCoreApplication] ([Id])
);
GO

CREATE TABLE [MenuContext] (
    [ID] nvarchar(450) NOT NULL,
    [Enable] bit NOT NULL,
    [StudioMenu] bit NOT NULL,
    [Name] nvarchar(max) NULL,
    [Category] nvarchar(max) NULL,
    [Component] nvarchar(max) NULL,
    [CustomCss] nvarchar(max) NULL,
    [CustomJs] nvarchar(max) NULL,
    [CustomHtml] nvarchar(max) NULL,
    [LoggedInOnly] nvarchar(max) NULL,
    [BackgroundImage] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [WebPortalID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [Type] int NOT NULL,
    CONSTRAINT [PK_MenuContext] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_MenuContext_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_MenuContext_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_MenuContext_WebPortal_WebPortalID] FOREIGN KEY ([WebPortalID]) REFERENCES [WebPortal] ([ID])
);
GO

CREATE TABLE [Taxonomy] (
    [ID] nvarchar(450) NOT NULL,
    [Slug] nvarchar(max) NULL,
    [Type] nvarchar(max) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [SeoTitle] nvarchar(max) NULL,
    [MetaDescription] nvarchar(max) NULL,
    [CornerstoneContent] bit NOT NULL,
    [AllowSerachEngines] bit NOT NULL,
    [SeoKeyPhrases] nvarchar(max) NULL,
    [CanonicalUrl] nvarchar(max) NULL,
    [ImageURL] nvarchar(max) NULL,
    [Image] nvarchar(max) NULL,
    [WebPortalID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_Taxonomy] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Taxonomy_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Taxonomy_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Taxonomy_WebPortal_WebPortalID] FOREIGN KEY ([WebPortalID]) REFERENCES [WebPortal] ([ID])
);
GO

CREATE TABLE [WebPortalBusinessDomainRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [WebPortalID] nvarchar(450) NULL,
    [BusinessDomainID] nvarchar(450) NULL,
    CONSTRAINT [PK_WebPortalBusinessDomainRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WebPortalBusinessDomainRecord_BusinessDomain_BusinessDomainID] FOREIGN KEY ([BusinessDomainID]) REFERENCES [BusinessDomain] ([ID]),
    CONSTRAINT [FK_WebPortalBusinessDomainRecord_WebPortal_WebPortalID] FOREIGN KEY ([WebPortalID]) REFERENCES [WebPortal] ([ID])
);
GO

CREATE TABLE [Workflow] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [WebPortalID] nvarchar(450) NULL,
    CONSTRAINT [PK_Workflow] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Workflow_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Workflow_WebPortal_WebPortalID] FOREIGN KEY ([WebPortalID]) REFERENCES [WebPortal] ([ID])
);
GO

CREATE TABLE [BusinessProcessStageRelation] (
    [ID] nvarchar(450) NOT NULL,
    [ChildBusinessProcessStageID] nvarchar(450) NULL,
    [ParentBusinessProcessStageID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessProcessStageRelation] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessProcessStageRelation_BusinessProcessStage_ChildBusinessProcessStageID] FOREIGN KEY ([ChildBusinessProcessStageID]) REFERENCES [BusinessProcessStage] ([ID]),
    CONSTRAINT [FK_BusinessProcessStageRelation_BusinessProcessStage_ParentBusinessProcessStageID] FOREIGN KEY ([ParentBusinessProcessStageID]) REFERENCES [BusinessProcessStage] ([ID])
);
GO

CREATE TABLE [FiscalPeriod] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [FromDate] datetime2 NOT NULL,
    [ToDate] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [FiscalYearID] nvarchar(450) NULL,
    CONSTRAINT [PK_FiscalPeriod] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_FiscalPeriod_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_FiscalPeriod_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_FiscalPeriod_FiscalYear_FiscalYearID] FOREIGN KEY ([FiscalYearID]) REFERENCES [FiscalYear] ([ID])
);
GO

CREATE TABLE [FiscalYearDistribution] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [FiscalYearID] nvarchar(450) NULL,
    [January] float NOT NULL,
    [February] float NOT NULL,
    [March] float NOT NULL,
    [April] float NOT NULL,
    [May] float NOT NULL,
    [June] float NOT NULL,
    [July] float NOT NULL,
    [August] float NOT NULL,
    [September] float NOT NULL,
    [October] float NOT NULL,
    [November] float NOT NULL,
    [December] float NOT NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [BudgetID] nvarchar(450) NULL,
    CONSTRAINT [PK_FiscalYearDistribution] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_FiscalYearDistribution_Budget_BudgetID] FOREIGN KEY ([BudgetID]) REFERENCES [Budget] ([ID]),
    CONSTRAINT [FK_FiscalYearDistribution_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_FiscalYearDistribution_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_FiscalYearDistribution_FiscalYear_FiscalYearID] FOREIGN KEY ([FiscalYearID]) REFERENCES [FiscalYear] ([ID])
);
GO

CREATE TABLE [TaxClass] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Type] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [FiscalAuthorityID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [FiscalYearID] nvarchar(450) NULL,
    CONSTRAINT [PK_TaxClass] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_TaxClass_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_TaxClass_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_TaxClass_FiscalAuthority_FiscalAuthorityID] FOREIGN KEY ([FiscalAuthorityID]) REFERENCES [FiscalAuthority] ([ID]),
    CONSTRAINT [FK_TaxClass_FiscalYear_FiscalYearID] FOREIGN KEY ([FiscalYearID]) REFERENCES [FiscalYear] ([ID])
);
GO

CREATE TABLE [Journal] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [DateTime] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ParentJournalID] nvarchar(450) NULL,
    [JournalTypeID] nvarchar(450) NULL,
    [LedgerID] nvarchar(450) NULL,
    CONSTRAINT [PK_Journal] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Journal_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Journal_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Journal_Journal_ParentJournalID] FOREIGN KEY ([ParentJournalID]) REFERENCES [Journal] ([ID]),
    CONSTRAINT [FK_Journal_JournalType_JournalTypeID] FOREIGN KEY ([JournalTypeID]) REFERENCES [JournalType] ([ID]),
    CONSTRAINT [FK_Journal_Ledger_LedgerID] FOREIGN KEY ([LedgerID]) REFERENCES [Ledger] ([ID])
);
GO

CREATE TABLE [ProjectResourceSkillRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ProjectResourceID] nvarchar(450) NULL,
    [ProjectResourceSkillID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ProficiencyRatingValueID] nvarchar(450) NULL,
    [ProjectResourceRoleID] nvarchar(450) NULL,
    CONSTRAINT [PK_ProjectResourceSkillRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ProjectResourceSkillRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ProjectResourceSkillRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ProjectResourceSkillRecord_CurriculumSkill_ProjectResourceSkillID] FOREIGN KEY ([ProjectResourceSkillID]) REFERENCES [CurriculumSkill] ([ID]),
    CONSTRAINT [FK_ProjectResourceSkillRecord_ProficiencyRatingValue_ProficiencyRatingValueID] FOREIGN KEY ([ProficiencyRatingValueID]) REFERENCES [ProficiencyRatingValue] ([ID]),
    CONSTRAINT [FK_ProjectResourceSkillRecord_ProjectResource_ProjectResourceID] FOREIGN KEY ([ProjectResourceID]) REFERENCES [ProjectResource] ([ID]),
    CONSTRAINT [FK_ProjectResourceSkillRecord_ProjectResourceRole_ProjectResourceRoleID] FOREIGN KEY ([ProjectResourceRoleID]) REFERENCES [ProjectResourceRole] ([ID])
);
GO

CREATE TABLE [CourrierItemShippingPolicyRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ShippingCourrierID] nvarchar(max) NULL,
    [ShippingCourierID] nvarchar(450) NULL,
    [ItemShippingPolicyID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourrierItemShippingPolicyRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourrierItemShippingPolicyRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourrierItemShippingPolicyRecord_Policy_ItemShippingPolicyID] FOREIGN KEY ([ItemShippingPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_CourrierItemShippingPolicyRecord_ShippingCourier_ShippingCourierID] FOREIGN KEY ([ShippingCourierID]) REFERENCES [ShippingCourier] ([ID])
);
GO

CREATE TABLE [PriceList] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Context] int NOT NULL,
    [Description] nvarchar(max) NULL,
    [StartDate] datetime2 NOT NULL,
    [EndDate] datetime2 NOT NULL,
    [PartnerVisible] bit NOT NULL,
    [UnitOfMeasureDependant] bit NOT NULL,
    [UnitID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [UnitGroupID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_PriceList] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PriceList_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_PriceList_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_PriceList_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_PriceList_Unit_UnitID] FOREIGN KEY ([UnitID]) REFERENCES [Unit] ([ID]),
    CONSTRAINT [FK_PriceList_UnitGroup_UnitGroupID] FOREIGN KEY ([UnitGroupID]) REFERENCES [UnitGroup] ([ID])
);
GO

CREATE TABLE [OpenIddictEntityFrameworkCoreToken] (
    [Id] nvarchar(450) NOT NULL,
    [ApplicationId] nvarchar(450) NULL,
    [AuthorizationId] nvarchar(450) NULL,
    [ConcurrencyToken] nvarchar(max) NULL,
    [CreationDate] datetime2 NULL,
    [ExpirationDate] datetime2 NULL,
    [Payload] nvarchar(max) NULL,
    [Properties] nvarchar(max) NULL,
    [RedemptionDate] datetime2 NULL,
    [ReferenceId] nvarchar(max) NULL,
    [Status] nvarchar(max) NULL,
    [Subject] nvarchar(max) NULL,
    [Type] nvarchar(max) NULL,
    CONSTRAINT [PK_OpenIddictEntityFrameworkCoreToken] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_OpenIddictEntityFrameworkCoreToken_OpenIddictEntityFrameworkCoreApplication_ApplicationId] FOREIGN KEY ([ApplicationId]) REFERENCES [OpenIddictEntityFrameworkCoreApplication] ([Id]),
    CONSTRAINT [FK_OpenIddictEntityFrameworkCoreToken_OpenIddictEntityFrameworkCoreAuthorization_AuthorizationId] FOREIGN KEY ([AuthorizationId]) REFERENCES [OpenIddictEntityFrameworkCoreAuthorization] ([Id])
);
GO

CREATE TABLE [MenuContextItem] (
    [ID] nvarchar(450) NOT NULL,
    [UID] int NOT NULL,
    [Order] int NOT NULL,
    [Column] int NOT NULL,
    [Name] nvarchar(max) NULL,
    [Text] nvarchar(max) NULL,
    [Url] nvarchar(max) NULL,
    [Icon] nvarchar(max) NULL,
    [Image] nvarchar(max) NULL,
    [Target] nvarchar(max) NULL,
    [Category] nvarchar(max) NULL,
    [Component] nvarchar(max) NULL,
    [Background] nvarchar(max) NULL,
    [HTMLContent] nvarchar(max) NULL,
    [Tooltip] nvarchar(max) NULL,
    [IsColumn] bit NOT NULL,
    [IsSeparator] bit NOT NULL,
    [LoggedInOnly] bit NOT NULL,
    [FullHeightSubmenu] bit NOT NULL,
    [ParentMenuContextItemID] nvarchar(450) NULL,
    [MenuContextID] nvarchar(450) NULL,
    [MenuContextItemType] int NOT NULL,
    [MenuItemTabTarget] int NOT NULL,
    CONSTRAINT [PK_MenuContextItem] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_MenuContextItem_MenuContext_MenuContextID] FOREIGN KEY ([MenuContextID]) REFERENCES [MenuContext] ([ID]),
    CONSTRAINT [FK_MenuContextItem_MenuContextItem_ParentMenuContextItemID] FOREIGN KEY ([ParentMenuContextItemID]) REFERENCES [MenuContextItem] ([ID])
);
GO

CREATE TABLE [WorkflowStage] (
    [ID] nvarchar(450) NOT NULL,
    [Code] nvarchar(max) NULL,
    [ParentWorkflowStageID] nvarchar(450) NULL,
    [WorkflowID] nvarchar(450) NULL,
    CONSTRAINT [PK_WorkflowStage] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WorkflowStage_Workflow_WorkflowID] FOREIGN KEY ([WorkflowID]) REFERENCES [Workflow] ([ID]),
    CONSTRAINT [FK_WorkflowStage_WorkflowStage_ParentWorkflowStageID] FOREIGN KEY ([ParentWorkflowStageID]) REFERENCES [WorkflowStage] ([ID])
);
GO

CREATE TABLE [TaxRate] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Rate] float NOT NULL,
    [Value] float NOT NULL,
    [UM] nvarchar(max) NULL,
    [UnitID] nvarchar(450) NULL,
    [UnitGroupID] nvarchar(450) NULL,
    [Priority] int NOT NULL,
    [Compound] bit NOT NULL,
    [Shipping] bit NOT NULL,
    [Withholding] bit NOT NULL,
    [SingleTransactionThreshold] float NOT NULL,
    [CumulativeTransactionThreshold] float NOT NULL,
    [FiscalAuthorityID] nvarchar(450) NULL,
    [FiscalYearID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [CountryID] nvarchar(450) NULL,
    [TaxClassID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [TaxPolicyID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_TaxRate] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_TaxRate_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_TaxRate_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_TaxRate_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_TaxRate_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_TaxRate_FiscalAuthority_FiscalAuthorityID] FOREIGN KEY ([FiscalAuthorityID]) REFERENCES [FiscalAuthority] ([ID]),
    CONSTRAINT [FK_TaxRate_FiscalYear_FiscalYearID] FOREIGN KEY ([FiscalYearID]) REFERENCES [FiscalYear] ([ID]),
    CONSTRAINT [FK_TaxRate_Policy_TaxPolicyID] FOREIGN KEY ([TaxPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_TaxRate_TaxClass_TaxClassID] FOREIGN KEY ([TaxClassID]) REFERENCES [TaxClass] ([ID]),
    CONSTRAINT [FK_TaxRate_Unit_UnitID] FOREIGN KEY ([UnitID]) REFERENCES [Unit] ([ID]),
    CONSTRAINT [FK_TaxRate_UnitGroup_UnitGroupID] FOREIGN KEY ([UnitGroupID]) REFERENCES [UnitGroup] ([ID])
);
GO

CREATE TABLE [JournalEntry] (
    [ID] nvarchar(450) NOT NULL,
    [Group] bit NOT NULL,
    [Opening] bit NOT NULL,
    [Description] nvarchar(max) NULL,
    [EntryType] int NOT NULL,
    [TransactionType] int NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Date] datetime2 NOT NULL,
    [ForexRatesSnapshot] nvarchar(max) NULL,
    [ForexRate] float NOT NULL,
    [Credit] float NOT NULL,
    [Debit] float NOT NULL,
    [DebitAccountID] nvarchar(450) NULL,
    [CreditAccountID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [JournalID] nvarchar(450) NULL,
    [FinancialBookID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ParentJournalEntryID] nvarchar(450) NULL,
    CONSTRAINT [PK_JournalEntry] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_JournalEntry_Account_CreditAccountID] FOREIGN KEY ([CreditAccountID]) REFERENCES [Account] ([ID]),
    CONSTRAINT [FK_JournalEntry_Account_DebitAccountID] FOREIGN KEY ([DebitAccountID]) REFERENCES [Account] ([ID]),
    CONSTRAINT [FK_JournalEntry_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_JournalEntry_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_JournalEntry_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_JournalEntry_FinancialBook_FinancialBookID] FOREIGN KEY ([FinancialBookID]) REFERENCES [FinancialBook] ([ID]),
    CONSTRAINT [FK_JournalEntry_Journal_JournalID] FOREIGN KEY ([JournalID]) REFERENCES [Journal] ([ID]),
    CONSTRAINT [FK_JournalEntry_JournalEntry_ParentJournalEntryID] FOREIGN KEY ([ParentJournalEntryID]) REFERENCES [JournalEntry] ([ID])
);
GO

CREATE TABLE [PriceListTerritory] (
    [ID] nvarchar(450) NOT NULL,
    [TerritoryID] nvarchar(450) NULL,
    [PriceListID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_PriceListTerritory] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PriceListTerritory_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_PriceListTerritory_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_PriceListTerritory_PriceList_PriceListID] FOREIGN KEY ([PriceListID]) REFERENCES [PriceList] ([ID]),
    CONSTRAINT [FK_PriceListTerritory_Territory_TerritoryID] FOREIGN KEY ([TerritoryID]) REFERENCES [Territory] ([ID])
);
GO

CREATE TABLE [RolePriceMarkup] (
    [ID] nvarchar(450) NOT NULL,
    [Description] nvarchar(max) NULL,
    [Percent] float NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [PriceListID] nvarchar(450) NULL,
    CONSTRAINT [PK_RolePriceMarkup] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_RolePriceMarkup_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_RolePriceMarkup_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_RolePriceMarkup_PriceList_PriceListID] FOREIGN KEY ([PriceListID]) REFERENCES [PriceList] ([ID])
);
GO

CREATE TABLE [WorkflowExecution] (
    [ID] nvarchar(450) NOT NULL,
    [WorkflowID] nvarchar(450) NULL,
    [WorkflowStageID] nvarchar(450) NULL,
    CONSTRAINT [PK_WorkflowExecution] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WorkflowExecution_Workflow_WorkflowID] FOREIGN KEY ([WorkflowID]) REFERENCES [Workflow] ([ID]),
    CONSTRAINT [FK_WorkflowExecution_WorkflowStage_WorkflowStageID] FOREIGN KEY ([WorkflowStageID]) REFERENCES [WorkflowStage] ([ID])
);
GO

CREATE TABLE [TaxRateClassRecord] (
    [ID] nvarchar(450) NOT NULL,
    [TaxClassID] nvarchar(450) NULL,
    [TaxRateID] nvarchar(450) NULL,
    [Rate] float NOT NULL,
    [Priority] int NOT NULL,
    [Compound] bit NOT NULL,
    [Shipping] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_TaxRateClassRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_TaxRateClassRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_TaxRateClassRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_TaxRateClassRecord_TaxClass_TaxClassID] FOREIGN KEY ([TaxClassID]) REFERENCES [TaxClass] ([ID]),
    CONSTRAINT [FK_TaxRateClassRecord_TaxRate_TaxRateID] FOREIGN KEY ([TaxRateID]) REFERENCES [TaxRate] ([ID])
);
GO

CREATE TABLE [WorkflowState] (
    [ID] nvarchar(450) NOT NULL,
    [Output] nvarchar(max) NULL,
    [OutputClass] nvarchar(max) NULL,
    [OutputType] int NOT NULL,
    [WorkflowID] nvarchar(450) NULL,
    [WorkflowStageID] nvarchar(450) NULL,
    [WorkflowExecutionID] nvarchar(450) NULL,
    CONSTRAINT [PK_WorkflowState] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WorkflowState_Workflow_WorkflowID] FOREIGN KEY ([WorkflowID]) REFERENCES [Workflow] ([ID]),
    CONSTRAINT [FK_WorkflowState_WorkflowExecution_WorkflowExecutionID] FOREIGN KEY ([WorkflowExecutionID]) REFERENCES [WorkflowExecution] ([ID]),
    CONSTRAINT [FK_WorkflowState_WorkflowStage_WorkflowStageID] FOREIGN KEY ([WorkflowStageID]) REFERENCES [WorkflowStage] ([ID])
);
GO

CREATE TABLE [BusinessDepartment] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Disabled] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [OrganizationProfileID] nvarchar(450) NULL,
    [ParentDepartmentID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessDepartment] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessDepartment_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessDepartment_BusinessDepartment_ParentDepartmentID] FOREIGN KEY ([ParentDepartmentID]) REFERENCES [BusinessDepartment] ([ID]),
    CONSTRAINT [FK_BusinessDepartment_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [BusinessSecurityLog] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Message] nvarchar(max) NULL,
    [Language] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [SigningProfileID] nvarchar(450) NULL,
    [SigningCertificateID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessSecurityLog] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessSecurityLog_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessSecurityLog_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [BusinessTeam] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [AvatarURL] nvarchar(max) NULL,
    [IsPublic] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [BusinessUnitID] nvarchar(450) NULL,
    [OrganizationProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessTeam] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessTeam_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessTeam_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [ServiceQueue] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [BusinessTeamID] nvarchar(450) NULL,
    CONSTRAINT [PK_ServiceQueue] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ServiceQueue_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ServiceQueue_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ServiceQueue_BusinessTeam_BusinessTeamID] FOREIGN KEY ([BusinessTeamID]) REFERENCES [BusinessTeam] ([ID])
);
GO

CREATE TABLE [BusinessTeamRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [BusinessTeamID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [ProjectID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [EmployeeProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessTeamRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessTeamRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessTeamRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_BusinessTeamRecord_BusinessTeam_BusinessTeamID] FOREIGN KEY ([BusinessTeamID]) REFERENCES [BusinessTeam] ([ID])
);
GO

CREATE TABLE [BusinessUnit] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Disabled] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [CountryID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [OrganizationProfileID] nvarchar(450) NULL,
    [ParentBusinessUnitID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessUnit] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessUnit_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessUnit_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_BusinessUnit_BusinessUnit_ParentBusinessUnitID] FOREIGN KEY ([ParentBusinessUnitID]) REFERENCES [BusinessUnit] ([ID]),
    CONSTRAINT [FK_BusinessUnit_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID])
);
GO

CREATE TABLE [BusinessUnitRecord] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [BusinessUnitID] nvarchar(450) NULL,
    CONSTRAINT [PK_BusinessUnitRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_BusinessUnitRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_BusinessUnitRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_BusinessUnitRecord_BusinessUnit_BusinessUnitID] FOREIGN KEY ([BusinessUnitID]) REFERENCES [BusinessUnit] ([ID])
);
GO

CREATE TABLE [Cart] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [CountryID] nvarchar(450) NULL,
    [CountryStateID] nvarchar(450) NULL,
    [CityID] nvarchar(450) NULL,
    [LocationID] nvarchar(450) NULL,
    [Type] nvarchar(max) NOT NULL,
    [Freight] float NOT NULL,
    [Taxes] float NOT NULL,
    [Discounts] float NOT NULL,
    [Surcharges] float NOT NULL,
    [SubTotal] float NOT NULL,
    [Total] float NOT NULL,
    [IP] nvarchar(max) NULL,
    [ForSpiders] bit NOT NULL,
    [IPLookupID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [GuestCart_BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_Cart] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Cart_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_Cart_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Cart_Business_GuestCart_BusinessID] FOREIGN KEY ([GuestCart_BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Cart_City_CityID] FOREIGN KEY ([CityID]) REFERENCES [City] ([ID]),
    CONSTRAINT [FK_Cart_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_Cart_CountryState_CountryStateID] FOREIGN KEY ([CountryStateID]) REFERENCES [CountryState] ([ID]),
    CONSTRAINT [FK_Cart_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_Cart_IPLookup_IPLookupID] FOREIGN KEY ([IPLookupID]) REFERENCES [IPLookup] ([ID])
);
GO

CREATE TABLE [CartRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [CostCalculationMethod] int NOT NULL,
    [CartID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [Quantity] float NOT NULL,
    [ForexRatesSnapshot] nvarchar(max) NULL,
    [ForexRate] float NOT NULL,
    [TotalDetailAmountInUSD] float NOT NULL,
    [TotalDiscountsInUSD] float NOT NULL,
    [TotalProfitInUSD] float NOT NULL,
    [TotalTaxesInUSD] float NOT NULL,
    [TotalWithholdingTaxesInUSD] float NOT NULL,
    [TotalShippingCostInUSD] float NOT NULL,
    [TotalShippingTaxesInUSD] float NOT NULL,
    [TotalWarrantyCostInUSD] float NOT NULL,
    [TotalReturnCostInUSD] float NOT NULL,
    [TotalRefundCostInUSD] float NOT NULL,
    [TotalSurchargesInUSD] float NOT NULL,
    [TotalAmountInUSD] float NOT NULL,
    [CustomDetailAmount] float NOT NULL,
    [CustomDiscountsAmount] float NOT NULL,
    [CustomSurchargesAmount] float NOT NULL,
    [CustomProfitAmount] float NOT NULL,
    [CustomShippingCostAmount] float NOT NULL,
    [CustomShippingTaxAmount] float NOT NULL,
    [CustomTaxAmount] float NOT NULL,
    [CustomWithholdingTaxAmount] float NOT NULL,
    [CustomTotalAmount] float NOT NULL,
    [ItemID] nvarchar(450) NULL,
    [ItemCartRecord_ItemID] nvarchar(450) NULL,
    [ItemShippingPolicyID] nvarchar(450) NULL,
    [ReturnPolicyID] nvarchar(450) NULL,
    [RefundPolicyID] nvarchar(450) NULL,
    [WarrantyPolicyID] nvarchar(450) NULL,
    [ShippingAddressID] nvarchar(450) NULL,
    [RecentlyViewedItemRecord_ItemID] nvarchar(450) NULL,
    CONSTRAINT [PK_CartRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CartRecord_Cart_CartID] FOREIGN KEY ([CartID]) REFERENCES [Cart] ([ID]),
    CONSTRAINT [FK_CartRecord_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_CartRecord_Policy_ItemShippingPolicyID] FOREIGN KEY ([ItemShippingPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_CartRecord_Policy_RefundPolicyID] FOREIGN KEY ([RefundPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_CartRecord_Policy_ReturnPolicyID] FOREIGN KEY ([ReturnPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_CartRecord_Policy_WarrantyPolicyID] FOREIGN KEY ([WarrantyPolicyID]) REFERENCES [Policy] ([ID])
);
GO

CREATE TABLE [CognitiveAgentConversation] (
    [ID] nvarchar(450) NOT NULL,
    [Claimed] bit NOT NULL,
    [Current] bit NOT NULL,
    [AccessKey] nvarchar(max) NULL,
    [ClaimCode] nvarchar(max) NULL,
    [ChannelID] nvarchar(max) NULL,
    [ActivityID] nvarchar(max) NULL,
    [ActivityFrom] nvarchar(max) NULL,
    [ConversationID] nvarchar(max) NULL,
    [AccessCode] nvarchar(max) NULL,
    [LastActivity] datetime2 NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [State] nvarchar(max) NULL,
    [History] nvarchar(max) NULL,
    [Data] nvarchar(max) NULL,
    [DataLabel] nvarchar(max) NULL,
    [Data1] nvarchar(max) NULL,
    [Data1Label] nvarchar(max) NULL,
    [Data2] nvarchar(max) NULL,
    [Data2Label] nvarchar(max) NULL,
    [Data3] nvarchar(max) NULL,
    [Data3Label] nvarchar(max) NULL,
    [Data4] nvarchar(max) NULL,
    [Data4Label] nvarchar(max) NULL,
    [Data5] nvarchar(max) NULL,
    [Data5Label] nvarchar(max) NULL,
    [Data6] nvarchar(max) NULL,
    [Data6Label] nvarchar(max) NULL,
    [Data7] nvarchar(max) NULL,
    [Data7Label] nvarchar(max) NULL,
    [Data8] nvarchar(max) NULL,
    [Data8Label] nvarchar(max) NULL,
    [Data9] nvarchar(max) NULL,
    [Data9Label] nvarchar(max) NULL,
    [CognitiveAgentID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [IndividualID] nvarchar(450) NULL,
    [OrganizationID] nvarchar(450) NULL,
    [ReceptorBusinessID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_CognitiveAgentConversation] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CognitiveAgentConversation_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_CognitiveAgentConversation_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CognitiveAgentConversation_Business_ReceptorBusinessID] FOREIGN KEY ([ReceptorBusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CognitiveAgentConversation_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CognitiveAgentConversation_CognitiveAgent_CognitiveAgentID] FOREIGN KEY ([CognitiveAgentID]) REFERENCES [CognitiveAgent] ([ID])
);
GO

CREATE TABLE [Commission] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BaseAmount] decimal(18,2) NOT NULL,
    [AddedPercent] decimal(18,2) NOT NULL,
    [AddedAmount] decimal(18,2) NOT NULL,
    [TaxComission] decimal(18,2) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [SalaryID] nvarchar(450) NULL,
    [EmmisorWalletAccountID] nvarchar(450) NULL,
    [ReceptorWalletAccountID] nvarchar(450) NULL,
    [EmmisorContactID] nvarchar(450) NULL,
    [ReceptorContactID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [PaymentID] nvarchar(450) NULL,
    CONSTRAINT [PK_Commission] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Commission_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Commission_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [Contact] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BirthDate] datetime2 NOT NULL,
    [Gender] int NOT NULL,
    [ContactType] int NOT NULL,
    [ContactStage] int NOT NULL,
    [ContactStatus] int NOT NULL,
    [PreferredContactMethod] int NOT NULL,
    [ReadOnly] bit NOT NULL,
    [SystemRequired] bit NOT NULL,
    [DUNS] nvarchar(max) NULL,
    [Domain] nvarchar(max) NULL,
    [TwitterURL] nvarchar(max) NULL,
    [FacebookURL] nvarchar(max) NULL,
    [LinkedInURL] nvarchar(max) NULL,
    [YoutubeURL] nvarchar(max) NULL,
    [GithubURL] nvarchar(max) NULL,
    [Notes] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [LastName] nvarchar(max) NULL,
    [Email] nvarchar(max) NULL,
    [IdentityProvider] nvarchar(max) NULL,
    [ActiveDirectoryID] nvarchar(max) NULL,
    [IdP_AccessCode] nvarchar(max) NULL,
    [CoverURL] nvarchar(max) NULL,
    [AvatarURL] nvarchar(max) NULL,
    [TaxID] nvarchar(max) NULL,
    [JobTitle] nvarchar(max) NULL,
    [Department] nvarchar(max) NULL,
    [FaxNumber] nvarchar(max) NULL,
    [OfficialID] nvarchar(max) NULL,
    [MobilePhone] nvarchar(max) NULL,
    [BusinessPhone] nvarchar(max) NULL,
    [AnnualRevenue] nvarchar(max) NULL,
    [CustomState] nvarchar(max) NULL,
    [CustomCity] nvarchar(max) NULL,
    [StreetLine1] nvarchar(max) NULL,
    [StreetLine2] nvarchar(max) NULL,
    [PostalCode] nvarchar(max) NULL,
    [Longitude] nvarchar(max) NULL,
    [Latitude] nvarchar(max) NULL,
    [CountryID] nvarchar(450) NULL,
    [CountryStateID] nvarchar(450) NULL,
    [CityID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [TimezoneID] nvarchar(450) NULL,
    [TerritoryID] nvarchar(450) NULL,
    [CountryLanguageID] nvarchar(450) NULL,
    [ParentContactID] nvarchar(450) NULL,
    [OrganizationID] nvarchar(450) NULL,
    [OwnerContactID] nvarchar(450) NULL,
    [PrimaryContactID] nvarchar(450) NULL,
    [RelatedAccountHolderID] nvarchar(450) NULL,
    [RelatedBusinessProfileRecordID] nvarchar(450) NULL,
    [RelatedBusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [LastCampaignDate] datetime2 NOT NULL,
    [PartnerProfileID] nvarchar(450) NULL,
    [ContactSourceID] nvarchar(450) NULL,
    [ItemShippingPolicyID] nvarchar(450) NULL,
    [ShippingMethodID] nvarchar(450) NULL,
    [CreditLimit] float NOT NULL,
    [AllowCreditHold] bit NOT NULL,
    [PaymentTermID] nvarchar(450) NULL,
    [FinancialBookID] nvarchar(450) NULL,
    [AllowMarketingMaterials] bit NOT NULL,
    [AllowEmail] bit NOT NULL,
    [AllowFax] bit NOT NULL,
    [AllowMail] bit NOT NULL,
    [AllowFollowEmail] bit NOT NULL,
    [AllowBulkEmail] bit NOT NULL,
    [PreferedContactMethod] nvarchar(max) NULL,
    [PersonalNotes] nvarchar(max) NULL,
    [Birdthday] datetime2 NOT NULL,
    [Anniversary] datetime2 NOT NULL,
    [ContactGender] int NOT NULL,
    [ContactMaritalStatus] int NOT NULL,
    [BusinessTeamID] nvarchar(450) NULL,
    CONSTRAINT [PK_Contact] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Contact_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_Contact_AspNetUsers_RelatedAccountHolderID] FOREIGN KEY ([RelatedAccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_Contact_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Contact_Business_RelatedBusinessID] FOREIGN KEY ([RelatedBusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Contact_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Contact_BusinessProfileRecord_RelatedBusinessProfileRecordID] FOREIGN KEY ([RelatedBusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Contact_BusinessTeam_BusinessTeamID] FOREIGN KEY ([BusinessTeamID]) REFERENCES [BusinessTeam] ([ID]),
    CONSTRAINT [FK_Contact_City_CityID] FOREIGN KEY ([CityID]) REFERENCES [City] ([ID]),
    CONSTRAINT [FK_Contact_Contact_OrganizationID] FOREIGN KEY ([OrganizationID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Contact_Contact_OwnerContactID] FOREIGN KEY ([OwnerContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Contact_Contact_ParentContactID] FOREIGN KEY ([ParentContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Contact_Contact_PrimaryContactID] FOREIGN KEY ([PrimaryContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Contact_ContactSource_ContactSourceID] FOREIGN KEY ([ContactSourceID]) REFERENCES [ContactSource] ([ID]),
    CONSTRAINT [FK_Contact_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_Contact_CountryLanguage_CountryLanguageID] FOREIGN KEY ([CountryLanguageID]) REFERENCES [CountryLanguage] ([Iso639_1]),
    CONSTRAINT [FK_Contact_CountryState_CountryStateID] FOREIGN KEY ([CountryStateID]) REFERENCES [CountryState] ([ID]),
    CONSTRAINT [FK_Contact_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_Contact_FinancialBook_FinancialBookID] FOREIGN KEY ([FinancialBookID]) REFERENCES [FinancialBook] ([ID]),
    CONSTRAINT [FK_Contact_PaymentTerm_PaymentTermID] FOREIGN KEY ([PaymentTermID]) REFERENCES [PaymentTerm] ([ID]),
    CONSTRAINT [FK_Contact_Policy_ItemShippingPolicyID] FOREIGN KEY ([ItemShippingPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_Contact_ShippingMethod_ShippingMethodID] FOREIGN KEY ([ShippingMethodID]) REFERENCES [ShippingMethod] ([ID]),
    CONSTRAINT [FK_Contact_Territory_TerritoryID] FOREIGN KEY ([TerritoryID]) REFERENCES [Territory] ([ID]),
    CONSTRAINT [FK_Contact_Timezone_TimezoneID] FOREIGN KEY ([TimezoneID]) REFERENCES [Timezone] ([ID])
);
GO

CREATE TABLE [ContactGroupRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ContactID] nvarchar(450) NULL,
    [ContactsGroupID] nvarchar(450) NULL,
    CONSTRAINT [PK_ContactGroupRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ContactGroupRecord_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_ContactGroupRecord_ContactsGroup_ContactsGroupID] FOREIGN KEY ([ContactsGroupID]) REFERENCES [ContactsGroup] ([ID])
);
GO

CREATE TABLE [ContactRelation] (
    [ID] nvarchar(450) NOT NULL,
    [Date] datetime2 NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [RelatedContactID] nvarchar(450) NULL,
    [ContactRelationTypeID] nvarchar(450) NULL,
    CONSTRAINT [PK_ContactRelation] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ContactRelation_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ContactRelation_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_ContactRelation_Contact_RelatedContactID] FOREIGN KEY ([RelatedContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_ContactRelation_ContactRelationType_ContactRelationTypeID] FOREIGN KEY ([ContactRelationTypeID]) REFERENCES [ContactRelationType] ([ID])
);
GO

CREATE TABLE [EmailGroupMembership] (
    [ID] nvarchar(450) NOT NULL,
    [EmailGroupID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_EmailGroupMembership] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_EmailGroupMembership_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_EmailGroupMembership_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_EmailGroupMembership_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_EmailGroupMembership_EmailGroup_EmailGroupID] FOREIGN KEY ([EmailGroupID]) REFERENCES [EmailGroup] ([ID])
);
GO

CREATE TABLE [FiscalYearRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [FiscalPeriodID] nvarchar(450) NULL,
    [FiscalYearID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    CONSTRAINT [PK_FiscalYearRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_FiscalYearRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_FiscalYearRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_FiscalYearRecord_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_FiscalYearRecord_FiscalPeriod_FiscalPeriodID] FOREIGN KEY ([FiscalPeriodID]) REFERENCES [FiscalPeriod] ([ID]),
    CONSTRAINT [FK_FiscalYearRecord_FiscalYear_FiscalYearID] FOREIGN KEY ([FiscalYearID]) REFERENCES [FiscalYear] ([ID])
);
GO

CREATE TABLE [GenericOption] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Name] nvarchar(max) NULL,
    [Value] nvarchar(max) NULL,
    [Frozen] bit NOT NULL,
    [Autoload] bit NOT NULL,
    [Transient] bit NOT NULL,
    [Expiration] int NOT NULL,
    [WebPortalID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [BusinessApplicationID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    CONSTRAINT [PK_GenericOption] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_GenericOption_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_GenericOption_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_GenericOption_BusinessApplication_BusinessApplicationID] FOREIGN KEY ([BusinessApplicationID]) REFERENCES [BusinessApplication] ([ID]),
    CONSTRAINT [FK_GenericOption_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_GenericOption_WebPortal_WebPortalID] FOREIGN KEY ([WebPortalID]) REFERENCES [WebPortal] ([ID])
);
GO

CREATE TABLE [MarketingCampaignResponse] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [MarketingCampaignID] nvarchar(450) NULL,
    CONSTRAINT [PK_MarketingCampaignResponse] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_MarketingCampaignResponse_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_MarketingCampaignResponse_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_MarketingCampaignResponse_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_MarketingCampaignResponse_MarketingCampaign_MarketingCampaignID] FOREIGN KEY ([MarketingCampaignID]) REFERENCES [MarketingCampaign] ([ID])
);
GO

CREATE TABLE [NewsletterSubscription] (
    [ID] nvarchar(450) NOT NULL,
    [Email] nvarchar(max) NOT NULL,
    [Verified] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ContactID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [NewsletterID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_NewsletterSubscription] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_NewsletterSubscription_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_NewsletterSubscription_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_NewsletterSubscription_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_NewsletterSubscription_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_NewsletterSubscription_Newsletter_NewsletterID] FOREIGN KEY ([NewsletterID]) REFERENCES [Newsletter] ([ID])
);
GO

CREATE TABLE [PaymentRequest] (
    [ID] nvarchar(450) NOT NULL,
    [Message] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [BankAccountID] nvarchar(450) NULL,
    [PaymentModeID] nvarchar(450) NULL,
    [PaymentRequestType] int NOT NULL,
    CONSTRAINT [PK_PaymentRequest] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PaymentRequest_Account_BankAccountID] FOREIGN KEY ([BankAccountID]) REFERENCES [Account] ([ID]),
    CONSTRAINT [FK_PaymentRequest_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_PaymentRequest_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_PaymentRequest_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_PaymentRequest_PaymentMode_PaymentModeID] FOREIGN KEY ([PaymentModeID]) REFERENCES [PaymentMode] ([ID])
);
GO

CREATE TABLE [QuoteRequest] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    CONSTRAINT [PK_QuoteRequest] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_QuoteRequest_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_QuoteRequest_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID])
);
GO

CREATE TABLE [SocialProfile] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [FollowsCount] int NOT NULL,
    [FollowersCount] int NOT NULL,
    [UnreadedMessagesCount] int NOT NULL,
    [UnreadedNotificationsCount] int NOT NULL,
    [TwitterURL] nvarchar(max) NULL,
    [FacebookURL] nvarchar(max) NULL,
    [LinkedInURL] nvarchar(max) NULL,
    [YoutubeURL] nvarchar(max) NULL,
    [GithubURL] nvarchar(max) NULL,
    [Domain] nvarchar(max) NULL,
    [Notes] nvarchar(max) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    CONSTRAINT [PK_SocialProfile] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SocialProfile_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_SocialProfile_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SocialProfile_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID])
);
GO

CREATE TABLE [WishList] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NOT NULL,
    [Description] nvarchar(max) NULL,
    [Public] bit NOT NULL,
    [CartID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    CONSTRAINT [PK_WishList] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WishList_Cart_CartID] FOREIGN KEY ([CartID]) REFERENCES [Cart] ([ID]),
    CONSTRAINT [FK_WishList_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID])
);
GO

CREATE TABLE [Curriculum] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [Undergraduate] bit NOT NULL,
    [CertifiedProfessional] bit NOT NULL,
    [SoftwareEngineering] bit NOT NULL,
    [CloudEngineering] bit NOT NULL,
    [FirstLevelSupport] bit NOT NULL,
    [SecondLevelSupport] bit NOT NULL,
    [Sales] bit NOT NULL,
    [HumanResources] bit NOT NULL,
    [Education] bit NOT NULL,
    [Finance] bit NOT NULL,
    [Administrative] bit NOT NULL,
    [Executive] bit NOT NULL,
    [Commercial] bit NOT NULL,
    [Advocate] bit NOT NULL,
    [Marketing] bit NOT NULL,
    [Research] bit NOT NULL,
    [GraphicDesign] bit NOT NULL,
    [PartnerAccountRepresentative] bit NOT NULL,
    [CustomerSuccessRepresentative] bit NOT NULL,
    [StartupSuccessRepresentative] bit NOT NULL,
    [SoundEngineering] bit NOT NULL,
    [Sustainability] bit NOT NULL,
    [Others] bit NOT NULL,
    CONSTRAINT [PK_Curriculum] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Curriculum_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [FollowRecord] (
    [ID] nvarchar(450) NOT NULL,
    [FollowRecordType] int NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [EnableNotifications] bit NOT NULL,
    [FollowerSocialProfileID] nvarchar(450) NULL,
    [FollowedSocialProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_FollowRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_FollowRecord_SocialProfile_FollowedSocialProfileID] FOREIGN KEY ([FollowedSocialProfileID]) REFERENCES [SocialProfile] ([ID]),
    CONSTRAINT [FK_FollowRecord_SocialProfile_FollowerSocialProfileID] FOREIGN KEY ([FollowerSocialProfileID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [Notification] (
    [ID] nvarchar(450) NOT NULL,
    [Readed] bit NOT NULL,
    [Message] nvarchar(max) NULL,
    [Icon] nvarchar(max) NULL,
    [ImageUrl] nvarchar(max) NULL,
    [RedirectUrl] nvarchar(max) NULL,
    [Type] int NOT NULL,
    [IssuedTimestamp] datetime2 NOT NULL,
    [ReadedTimestamp] datetime2 NOT NULL,
    [SocialProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_Notification] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Notification_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [Project] (
    [ID] nvarchar(450) NOT NULL,
    [IsTemplate] bit NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [ProjectStartDate] datetime2 NOT NULL,
    [ProjectEndDate] datetime2 NOT NULL,
    [ProjectBudgetInUSD] float NOT NULL,
    [ProjectOverallCompletionPercentage] int NOT NULL,
    [BusinessTeamID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [SocialProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_Project] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Project_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Project_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Project_BusinessTeam_BusinessTeamID] FOREIGN KEY ([BusinessTeamID]) REFERENCES [BusinessTeam] ([ID]),
    CONSTRAINT [FK_Project_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [SocialBadgeRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [SocialBadgeID] nvarchar(450) NULL,
    CONSTRAINT [PK_SocialBadgeRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SocialBadgeRecord_SocialBadge_SocialBadgeID] FOREIGN KEY ([SocialBadgeID]) REFERENCES [SocialBadge] ([ID]),
    CONSTRAINT [FK_SocialBadgeRecord_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [SocialFeed] (
    [ID] nvarchar(450) NOT NULL,
    [SocialProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_SocialFeed] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SocialFeed_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [KanbanBoard] (
    [ID] nvarchar(450) NOT NULL,
    [ProjectID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_KanbanBoard] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_KanbanBoard_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_KanbanBoard_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_KanbanBoard_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID])
);
GO

CREATE TABLE [ProjectBacklog] (
    [ID] nvarchar(450) NOT NULL,
    [ProjectID] nvarchar(450) NULL,
    CONSTRAINT [PK_ProjectBacklog] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ProjectBacklog_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID])
);
GO

CREATE TABLE [TaskList] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [Reminder] datetime2 NOT NULL,
    [Reminded] bit NOT NULL,
    [Template] bit NOT NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [ProjectID] nvarchar(450) NULL,
    CONSTRAINT [PK_TaskList] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_TaskList_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_TaskList_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_TaskList_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID]),
    CONSTRAINT [FK_TaskList_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [ProjectTaskBucket] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ProjectID] nvarchar(450) NULL,
    [KanbanBoardID] nvarchar(450) NULL,
    CONSTRAINT [PK_ProjectTaskBucket] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ProjectTaskBucket_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ProjectTaskBucket_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ProjectTaskBucket_KanbanBoard_KanbanBoardID] FOREIGN KEY ([KanbanBoardID]) REFERENCES [KanbanBoard] ([ID]),
    CONSTRAINT [FK_ProjectTaskBucket_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID])
);
GO

CREATE TABLE [Task] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [DueDate] datetime2 NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Completed] bit NOT NULL,
    [CompletedTimestamp] datetime2 NOT NULL,
    [CompletionPercentage] int NOT NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [TaskListID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [StartDate] datetime2 NULL,
    [DueLine] datetime2 NULL,
    [ProjectID] nvarchar(450) NULL,
    [ProjectTaskBucketID] nvarchar(450) NULL,
    CONSTRAINT [PK_Task] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Task_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Task_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Task_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID]),
    CONSTRAINT [FK_Task_ProjectTaskBucket_ProjectTaskBucketID] FOREIGN KEY ([ProjectTaskBucketID]) REFERENCES [ProjectTaskBucket] ([ID]),
    CONSTRAINT [FK_Task_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID]),
    CONSTRAINT [FK_Task_TaskList_TaskListID] FOREIGN KEY ([TaskListID]) REFERENCES [TaskList] ([ID])
);
GO

CREATE TABLE [ProjectTaskRelationship] (
    [ID] nvarchar(450) NOT NULL,
    [IsDependenceRelation] bit NOT NULL,
    [ParentTaskID] nvarchar(max) NULL,
    [ParentProjectTaskID] nvarchar(450) NULL,
    [ChildProjectTaskID] nvarchar(450) NULL,
    CONSTRAINT [PK_ProjectTaskRelationship] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ProjectTaskRelationship_Task_ChildProjectTaskID] FOREIGN KEY ([ChildProjectTaskID]) REFERENCES [Task] ([ID]),
    CONSTRAINT [FK_ProjectTaskRelationship_Task_ParentProjectTaskID] FOREIGN KEY ([ParentProjectTaskID]) REFERENCES [Task] ([ID])
);
GO

CREATE TABLE [TaskAssignment] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Instructions] nvarchar(max) NULL,
    [TaskID] nvarchar(450) NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [TaskListID] nvarchar(450) NULL,
    CONSTRAINT [PK_TaskAssignment] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_TaskAssignment_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID]),
    CONSTRAINT [FK_TaskAssignment_Task_TaskID] FOREIGN KEY ([TaskID]) REFERENCES [Task] ([ID]),
    CONSTRAINT [FK_TaskAssignment_TaskList_TaskListID] FOREIGN KEY ([TaskListID]) REFERENCES [TaskList] ([ID])
);
GO

CREATE TABLE [ContactProfile] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [Verified] bit NOT NULL,
    [Submitted] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [VerificationTimestamp] datetime2 NOT NULL,
    [Data] nvarchar(max) NULL,
    [DataLabel] nvarchar(max) NULL,
    [Data1] nvarchar(max) NULL,
    [Data1Label] nvarchar(max) NULL,
    [Data2] nvarchar(max) NULL,
    [Data2Label] nvarchar(max) NULL,
    [Data3] nvarchar(max) NULL,
    [Data3Label] nvarchar(max) NULL,
    [Data4] nvarchar(max) NULL,
    [Data4Label] nvarchar(max) NULL,
    [Data5] nvarchar(max) NULL,
    [Data5Label] nvarchar(max) NULL,
    [Data6] nvarchar(max) NULL,
    [Data6Label] nvarchar(max) NULL,
    [Data7] nvarchar(max) NULL,
    [Data7Label] nvarchar(max) NULL,
    [Data8] nvarchar(max) NULL,
    [Data8Label] nvarchar(max) NULL,
    [Data9] nvarchar(max) NULL,
    [Data9Label] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [BankID] nvarchar(450) NULL,
    [TaxID] nvarchar(max) NULL,
    [Phone] nvarchar(max) NULL,
    [Email] nvarchar(max) NULL,
    [Address] nvarchar(max) NULL,
    [Address1] nvarchar(max) NULL,
    [Address2] nvarchar(max) NULL,
    [PostalCode] nvarchar(max) NULL,
    [BusinessName] nvarchar(max) NULL,
    [CommercialName] nvarchar(max) NULL,
    [Ticker] nvarchar(max) NULL,
    [DUNS] nvarchar(max) NULL,
    [IsPublicCompany] bit NULL,
    [IsFactaCustomer] bit NULL,
    [TaxPayerType] int NULL,
    [CountryID] nvarchar(450) NULL,
    [CountryStateID] nvarchar(450) NULL,
    [CityID] nvarchar(450) NULL,
    [FiscalIdentificationTypeID] nvarchar(450) NULL,
    [FiscalAuthorityID] nvarchar(450) NULL,
    [FiscalRegimeID] nvarchar(450) NULL,
    [GrossPay] float NULL,
    [NetSalary] float NULL,
    [PayrollCurrency] nvarchar(max) NULL,
    [JobTitleID] nvarchar(450) NULL,
    [EmployeeTypeID] nvarchar(450) NULL,
    [Authorized] bit NULL,
    [MarketingCampaignID] nvarchar(450) NULL,
    [LeadStatus] int NULL,
    [LeadRating] int NULL,
    [LeadContext] int NULL,
    [PurchaseTimeframe] int NULL,
    [PreferredContactMethod] int NULL,
    [FiscalYearEnd] datetime2 NULL,
    [FiscalYearStart] datetime2 NULL,
    [EmployeeCount] int NULL,
    [IsPublic] bit NULL,
    [PartnerProfile_Authorized] bit NULL,
    [PercentageOfBusinessForSales] int NULL,
    [PercentageOfBusinessForServices] int NULL,
    [ConsumerMarketBusinessFocusPercentage] int NULL,
    [SMBsMarketBusinessFocusPercentage] int NULL,
    [EnterpriseMarketBusinessFocusPercentage] int NULL,
    [EducationMarketBusinessFocusPercentage] int NULL,
    [OfficialInstitutionsMarketBusinessFocusPercentage] int NULL,
    [HealthcareMarketBusinessFocusPercentage] int NULL,
    [OnStoreDistributionChannel] int NULL,
    [E_CommerceDistributionChannel] int NULL,
    [TeleSalesDistributionChannel] int NULL,
    [DirectSalesDistributionChannel] int NULL,
    [OtherPartners] nvarchar(max) NULL,
    [PartnerTierID] nvarchar(450) NULL,
    [WalletAccountID] nvarchar(450) NULL,
    CONSTRAINT [PK_ContactProfile] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ContactProfile_Bank_BankID] FOREIGN KEY ([BankID]) REFERENCES [Bank] ([ID]),
    CONSTRAINT [FK_ContactProfile_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ContactProfile_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ContactProfile_City_CityID] FOREIGN KEY ([CityID]) REFERENCES [City] ([ID]),
    CONSTRAINT [FK_ContactProfile_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_ContactProfile_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_ContactProfile_CountryState_CountryStateID] FOREIGN KEY ([CountryStateID]) REFERENCES [CountryState] ([ID]),
    CONSTRAINT [FK_ContactProfile_EmployeeType_EmployeeTypeID] FOREIGN KEY ([EmployeeTypeID]) REFERENCES [EmployeeType] ([ID]),
    CONSTRAINT [FK_ContactProfile_FiscalAuthority_FiscalAuthorityID] FOREIGN KEY ([FiscalAuthorityID]) REFERENCES [FiscalAuthority] ([ID]),
    CONSTRAINT [FK_ContactProfile_FiscalIdentificationType_FiscalIdentificationTypeID] FOREIGN KEY ([FiscalIdentificationTypeID]) REFERENCES [FiscalIdentificationType] ([ID]),
    CONSTRAINT [FK_ContactProfile_FiscalRegime_FiscalRegimeID] FOREIGN KEY ([FiscalRegimeID]) REFERENCES [FiscalRegime] ([ID]),
    CONSTRAINT [FK_ContactProfile_JobTitle_JobTitleID] FOREIGN KEY ([JobTitleID]) REFERENCES [JobTitle] ([ID]),
    CONSTRAINT [FK_ContactProfile_MarketingCampaign_MarketingCampaignID] FOREIGN KEY ([MarketingCampaignID]) REFERENCES [MarketingCampaign] ([ID]),
    CONSTRAINT [FK_ContactProfile_PartnerTier_PartnerTierID] FOREIGN KEY ([PartnerTierID]) REFERENCES [PartnerTier] ([ID])
);
GO

CREATE TABLE [CreditLimit] (
    [ID] nvarchar(450) NOT NULL,
    [Value] float NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [ContactProfileID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_CreditLimit] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CreditLimit_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CreditLimit_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CreditLimit_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_CreditLimit_ContactProfile_ContactProfileID] FOREIGN KEY ([ContactProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_CreditLimit_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID])
);
GO

CREATE TABLE [DealUnit] (
    [ID] nvarchar(450) NOT NULL,
    [Closed] bit NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [PartnerCreated] bit NOT NULL,
    [PartnerCollaboration] bit NOT NULL,
    [ProposedSolution] nvarchar(max) NULL,
    [CurrentSituation] nvarchar(max) NULL,
    [CustomerNeed] nvarchar(max) NULL,
    [WonDate] datetime2 NOT NULL,
    [LostDate] datetime2 NOT NULL,
    [ExpiryDate] datetime2 NOT NULL,
    [DeliveredDate] datetime2 NOT NULL,
    [ClosedTimestamp] datetime2 NOT NULL,
    [ExpectedCloseDate] datetime2 NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [DealUnitStatus] int NOT NULL,
    [DealUnitPurchaseProcess] int NOT NULL,
    [DealUnitForecastCategory] int NOT NULL,
    [DealUnitAmountsCalculation] int NOT NULL,
    [ForexRatesSnapshot] nvarchar(max) NULL,
    [ForexRate] float NOT NULL,
    [TotalBaseAmountInUSD] float NOT NULL,
    [TotalDetailAmountInUSD] float NOT NULL,
    [TotalDiscountsInUSD] float NOT NULL,
    [TotalProfitInUSD] float NOT NULL,
    [TotalTaxBaseInUSD] float NOT NULL,
    [TotalTaxesInUSD] float NOT NULL,
    [TotalWithholdingTaxesInUSD] float NOT NULL,
    [TotalShippingCostInUSD] float NOT NULL,
    [TotalShippingTaxesInUSD] float NOT NULL,
    [TotalWarrantyCostInUSD] float NOT NULL,
    [TotalReturnCostInUSD] float NOT NULL,
    [TotalRefundCostInUSD] float NOT NULL,
    [TotalSurchargesInUSD] float NOT NULL,
    [TotalAmountInUSD] float NOT NULL,
    [CustomBaseAmount] float NOT NULL,
    [CustomDetailAmount] float NOT NULL,
    [CustomDiscountsAmount] float NOT NULL,
    [CustomSurchargesAmount] float NOT NULL,
    [CustomProfitAmount] float NOT NULL,
    [CustomShippingCostAmount] float NOT NULL,
    [CustomShippingTaxAmount] float NOT NULL,
    [CustomTaxBase] float NOT NULL,
    [CustomTaxAmount] float NOT NULL,
    [CustomWithholdingTaxAmount] float NOT NULL,
    [CustomTotalAmount] float NOT NULL,
    [TotalGlobalDiscountsInUSD] float NOT NULL,
    [TotalGlobalSurchargesInUSD] float NOT NULL,
    [CustomGlobalSurchargesAmount] float NOT NULL,
    [CustomGlobalDiscountsAmount] float NOT NULL,
    [IndividualID] nvarchar(450) NULL,
    [OrganizationID] nvarchar(450) NULL,
    [ReceptorBusinessID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [PriceListID] nvarchar(450) NULL,
    [TerritoryID] nvarchar(450) NULL,
    [BusinessTeamID] nvarchar(450) NULL,
    [WorkOrderTypeID] nvarchar(450) NULL,
    [MarketingCampaignID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [DealUnitFlowID] nvarchar(450) NULL,
    [DealUnitFlowStageID] nvarchar(450) NULL,
    [PartnerProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_DealUnit] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_DealUnit_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_DealUnit_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_DealUnit_Business_ReceptorBusinessID] FOREIGN KEY ([ReceptorBusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_DealUnit_BusinessProcess_DealUnitFlowID] FOREIGN KEY ([DealUnitFlowID]) REFERENCES [BusinessProcess] ([ID]),
    CONSTRAINT [FK_DealUnit_BusinessProcessStage_DealUnitFlowStageID] FOREIGN KEY ([DealUnitFlowStageID]) REFERENCES [BusinessProcessStage] ([ID]),
    CONSTRAINT [FK_DealUnit_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_DealUnit_BusinessTeam_BusinessTeamID] FOREIGN KEY ([BusinessTeamID]) REFERENCES [BusinessTeam] ([ID]),
    CONSTRAINT [FK_DealUnit_Contact_IndividualID] FOREIGN KEY ([IndividualID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_DealUnit_Contact_OrganizationID] FOREIGN KEY ([OrganizationID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_DealUnit_ContactProfile_PartnerProfileID] FOREIGN KEY ([PartnerProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_DealUnit_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_DealUnit_MarketingCampaign_MarketingCampaignID] FOREIGN KEY ([MarketingCampaignID]) REFERENCES [MarketingCampaign] ([ID]),
    CONSTRAINT [FK_DealUnit_PriceList_PriceListID] FOREIGN KEY ([PriceListID]) REFERENCES [PriceList] ([ID]),
    CONSTRAINT [FK_DealUnit_Territory_TerritoryID] FOREIGN KEY ([TerritoryID]) REFERENCES [Territory] ([ID]),
    CONSTRAINT [FK_DealUnit_WorkOrderType_WorkOrderTypeID] FOREIGN KEY ([WorkOrderTypeID]) REFERENCES [WorkOrderType] ([ID])
);
GO

CREATE TABLE [EmployeeDegree] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Institution] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [AchievedDate] datetime2 NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [EmployeeProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_EmployeeDegree] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_EmployeeDegree_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_EmployeeDegree_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_EmployeeDegree_ContactProfile_EmployeeProfileID] FOREIGN KEY ([EmployeeProfileID]) REFERENCES [ContactProfile] ([ID])
);
GO

CREATE TABLE [FiscalResponsibilityRecord] (
    [ID] nvarchar(450) NOT NULL,
    [FiscalResponsibilityID] nvarchar(450) NULL,
    [BillingProfileID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_FiscalResponsibilityRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_FiscalResponsibilityRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_FiscalResponsibilityRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_FiscalResponsibilityRecord_ContactProfile_BillingProfileID] FOREIGN KEY ([BillingProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_FiscalResponsibilityRecord_FiscalResponsibility_FiscalResponsibilityID] FOREIGN KEY ([FiscalResponsibilityID]) REFERENCES [FiscalResponsibility] ([ID])
);
GO

CREATE TABLE [Item] (
    [ID] nvarchar(450) NOT NULL,
    [Discriminator] nvarchar(max) NULL,
    [Type] nvarchar(max) NOT NULL,
    [Permalink] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [Barcode] nvarchar(max) NULL,
    [SKU] nvarchar(max) NULL,
    [SKUs] nvarchar(max) NULL,
    [ISBN13] nvarchar(max) NULL,
    [ISBN] nvarchar(max) NULL,
    [ISBNs] nvarchar(max) NULL,
    [UPC] nvarchar(max) NULL,
    [UPCs] nvarchar(max) NULL,
    [EAN] nvarchar(max) NULL,
    [EANs] nvarchar(max) NULL,
    [ASIN] nvarchar(max) NULL,
    [ASINs] nvarchar(max) NULL,
    [UNSPSC] nvarchar(max) NULL,
    [UNSPSCs] nvarchar(max) NULL,
    [GTIN] nvarchar(max) NULL,
    [GTINs] nvarchar(max) NULL,
    [MPN] nvarchar(max) NULL,
    [MPNs] nvarchar(max) NULL,
    [SupplierCode] nvarchar(max) NULL,
    [Series] nvarchar(max) NULL,
    [Part] nvarchar(max) NULL,
    [Model] nvarchar(max) NULL,
    [Auction] bit NOT NULL,
    [AuctionEnd] datetime2 NOT NULL,
    [AuctionStart] datetime2 NOT NULL,
    [TariffHeading] nvarchar(max) NULL,
    [SystemRequirements] nvarchar(max) NULL,
    [OperatingSystemSupported] nvarchar(max) NULL,
    [Title] nvarchar(max) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [ShortDescription] nvarchar(max) NULL,
    [PublishedDate] datetime2 NOT NULL,
    [OfficialDescriptionURL] nvarchar(max) NULL,
    [PrimaryImageURL] nvarchar(max) NULL,
    [ValidPrimaryImage] bit NOT NULL,
    [PurchaseNote] nvarchar(max) NULL,
    [Features] nvarchar(max) NULL,
    [Ingredients] nvarchar(max) NULL,
    [ReleaseDate] nvarchar(max) NULL,
    [Pattern] nvarchar(max) NULL,
    [Material] nvarchar(max) NULL,
    [Color] nvarchar(max) NULL,
    [NutritionFacts] nvarchar(max) NULL,
    [EnergyEfficiencyRating] nvarchar(max) NULL,
    [Published] bit NOT NULL,
    [Deleted] bit NOT NULL,
    [Digital] bit NOT NULL,
    [PreSale] bit NOT NULL,
    [ByRequest] bit NOT NULL,
    [Taxable] bit NOT NULL,
    [IsMonthlyDeal] bit NOT NULL,
    [Featured] bit NOT NULL,
    [Hot] bit NOT NULL,
    [DisplayOnGlobalMozaic] bit NOT NULL,
    [DisplayOnCategoryMozaic] bit NOT NULL,
    [DisplayOnBannerMarketingRotation] bit NOT NULL,
    [DisplayOnBrandsMozaic] bit NOT NULL,
    [MozaicCoverURL] nvarchar(max) NULL,
    [YoutubeVideoID] nvarchar(max) NULL,
    [PageCoverBackgroundURL] nvarchar(max) NULL,
    [Recurrency] decimal(18,2) NOT NULL,
    [PackageContent] nvarchar(max) NULL,
    [PackagedQuantity] int NOT NULL,
    [Variations] nvarchar(max) NULL,
    [ShipsToRules] nvarchar(max) NULL,
    [Categories] nvarchar(max) NULL,
    [GoogleCategories] nvarchar(max) NULL,
    [Brands] nvarchar(max) NULL,
    [OnDiscount] bit NOT NULL,
    [IsFixedDiscount] bit NOT NULL,
    [IsDeadlineDiscount] bit NOT NULL,
    [DiscountPercentage] float NOT NULL,
    [DiscountPrice] float NOT NULL,
    [DiscountAmount] float NOT NULL,
    [DeadlineDiscountFromDate] datetime2 NOT NULL,
    [DeadlineDiscountDueDate] datetime2 NOT NULL,
    [InStock] bit NOT NULL,
    [LowStock] bit NOT NULL,
    [CurrentStock] decimal(18,2) NOT NULL,
    [ManageInventory] bit NOT NULL,
    [TaxIncludedInPrice] bit NOT NULL,
    [LastFixedPricesUpdateDateTime] datetime2 NOT NULL,
    [DisableDefaultPolicies] bit NOT NULL,
    [RegularPrice] float NOT NULL,
    [EstimatedRegularPriceInUSD] float NOT NULL,
    [EstimatedBasePriceInUSD] float NOT NULL,
    [EstimatedTaxBasePriceInUSD] float NOT NULL,
    [EstimatedProfitInUSD] float NOT NULL,
    [EstimatedSurchargesInUSD] float NOT NULL,
    [EstimatedDiscountsInUSD] float NOT NULL,
    [EstimatedTaxesInUSD] float NOT NULL,
    [EstimatedWitholdingTaxesInUSD] float NOT NULL,
    [EstimatedPaymentCostInUSD] float NOT NULL,
    [EstimatedPaymentTaxInUSD] float NOT NULL,
    [EstimatedDefaultShippingCostInUSD] float NOT NULL,
    [EstimatedDefaultShippingTaxInUSD] float NOT NULL,
    [EstimatedTotalPriceInUSD] float NOT NULL,
    [EstimatedRevenueInUSD] float NOT NULL,
    [EstimatedDealSavingsInUSD] float NOT NULL,
    [ParentItemID] nvarchar(450) NULL,
    [Weight] nvarchar(max) NULL,
    [Height] float NOT NULL,
    [Width] float NOT NULL,
    [Length] float NOT NULL,
    [CountryLanguageID] nvarchar(450) NULL,
    [ItemTypeID] nvarchar(450) NULL,
    [UnitGroupID] nvarchar(450) NULL,
    [UnitID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [ItemGoogleCategoryID] nvarchar(450) NULL,
    [CountryID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [BrandID] nvarchar(450) NULL,
    [ShippingClassID] nvarchar(450) NULL,
    [ItemClassID] nvarchar(max) NULL,
    [ItemClass] int NOT NULL,
    [ItemCategoryID] nvarchar(450) NULL,
    [SupplierProfileID] nvarchar(450) NULL,
    [BateryType] nvarchar(max) NOT NULL,
    [RecurrencyPeriod] int NOT NULL,
    [MeasurementUnits] nvarchar(max) NOT NULL,
    [ContainsOrIsBattery] bit NOT NULL,
    [IsStandaloneBatery] bit NOT NULL,
    [BateryWeight] float NOT NULL,
    [NumberOfBatteries] int NOT NULL,
    [WattHours] int NOT NULL,
    [CellsInBattery] int NOT NULL,
    [IsNewArrival] bit NOT NULL,
    [IsBestSeller] bit NOT NULL,
    [IsProductOfTheMonth] bit NOT NULL,
    [IsProductOfTheWeek] bit NOT NULL,
    [IsDailyDeal] bit NOT NULL,
    [IsWeeklyDeal] bit NOT NULL,
    [IsMontlyDeal] bit NOT NULL,
    [IsDealersChoice] bit NOT NULL,
    [TryWebScraping] bit NOT NULL,
    [IsOfficialChoice] bit NOT NULL,
    [DisplayShowcaseTab] bit NOT NULL,
    [DisplayDescriptionEditor] bit NOT NULL,
    [DisplayShortDescriptionEditor] bit NOT NULL,
    [RatingAverage] float NOT NULL,
    [MinRating] float NOT NULL,
    [MaxRating] float NOT NULL,
    [ViewsCount] bigint NOT NULL,
    [ReviewsCount] bigint NOT NULL,
    [SalesCount] bigint NOT NULL,
    [CustomAddedPercentage] float NOT NULL,
    [CustomAddedValue] float NOT NULL,
    [CustomTaxPercentage] float NOT NULL,
    [CustomTaxValue] float NOT NULL,
    [CustomTaxDescription] nvarchar(max) NULL,
    [Minted] bit NULL,
    [BlockchainID] nvarchar(450) NULL,
    [MintedTimestamp] datetime2 NULL,
    [MintTransactionHash] nvarchar(max) NULL,
    [BlockchainBlockID] nvarchar(450) NULL,
    [Code] nvarchar(max) NULL,
    [Version] nvarchar(max) NULL,
    [Summary] nvarchar(max) NULL,
    [SubmitTolerance] nvarchar(max) NULL,
    [MaxCourseEnrollments] int NULL,
    [TotalEffortInWeeks] int NULL,
    [TotalHoursPerWeek] int NULL,
    [TotalEffortInHours] int NULL,
    [CalificationRanges] nvarchar(max) NULL,
    [Prerequisites] nvarchar(max) NULL,
    [MatlabAPI] nvarchar(max) NULL,
    [StartDateTime] datetime2 NULL,
    [EndDateTime] datetime2 NULL,
    [InscriptionsStartDateTime] datetime2 NULL,
    [InscriptionsEndDateTime] datetime2 NULL,
    [CourseCategoryID] nvarchar(450) NULL,
    [InstructorProfileID] nvarchar(450) NULL,
    [AllowTrials] bit NULL,
    [IsPerpetualLicense] bit NULL,
    [MaxLicenseUtilizations] int NULL,
    [TrialLicenseRelativeExpirationInDays] int NULL,
    [StandardLicenseRelativeExpirationInDays] int NULL,
    [ServiceID] nvarchar(450) NULL,
    CONSTRAINT [PK_Item] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Item_Blockchain_BlockchainID] FOREIGN KEY ([BlockchainID]) REFERENCES [Blockchain] ([ID]),
    CONSTRAINT [FK_Item_BlockchainBlock_BlockchainBlockID] FOREIGN KEY ([BlockchainBlockID]) REFERENCES [BlockchainBlock] ([ID]),
    CONSTRAINT [FK_Item_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Item_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Item_ContactProfile_InstructorProfileID] FOREIGN KEY ([InstructorProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Item_ContactProfile_SupplierProfileID] FOREIGN KEY ([SupplierProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Item_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_Item_CountryLanguage_CountryLanguageID] FOREIGN KEY ([CountryLanguageID]) REFERENCES [CountryLanguage] ([Iso639_1]),
    CONSTRAINT [FK_Item_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_Item_Item_ParentItemID] FOREIGN KEY ([ParentItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_Item_Item_ServiceID] FOREIGN KEY ([ServiceID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_Item_ItemBrand_BrandID] FOREIGN KEY ([BrandID]) REFERENCES [ItemBrand] ([ID]),
    CONSTRAINT [FK_Item_ItemCategory_CourseCategoryID] FOREIGN KEY ([CourseCategoryID]) REFERENCES [ItemCategory] ([ID]),
    CONSTRAINT [FK_Item_ItemCategory_ItemCategoryID] FOREIGN KEY ([ItemCategoryID]) REFERENCES [ItemCategory] ([ID]),
    CONSTRAINT [FK_Item_ItemGoogleCategory_ItemGoogleCategoryID] FOREIGN KEY ([ItemGoogleCategoryID]) REFERENCES [ItemGoogleCategory] ([ID]),
    CONSTRAINT [FK_Item_ItemType_ItemTypeID] FOREIGN KEY ([ItemTypeID]) REFERENCES [ItemType] ([ID]),
    CONSTRAINT [FK_Item_ShippingClass_ShippingClassID] FOREIGN KEY ([ShippingClassID]) REFERENCES [ShippingClass] ([ID]),
    CONSTRAINT [FK_Item_Unit_UnitID] FOREIGN KEY ([UnitID]) REFERENCES [Unit] ([ID]),
    CONSTRAINT [FK_Item_UnitGroup_UnitGroupID] FOREIGN KEY ([UnitGroupID]) REFERENCES [UnitGroup] ([ID])
);
GO

CREATE TABLE [JobOffer] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [TechnicalSkills] nvarchar(max) NULL,
    [NonTechnicalSkills] nvarchar(max) NULL,
    [Certifications] nvarchar(max) NULL,
    [ProjectExperience] nvarchar(max) NULL,
    [Technologies] nvarchar(max) NULL,
    [IsOfficialJobOffer] bit NOT NULL,
    [IsRemoteJobOffer] bit NOT NULL,
    [IsMidTimeJobOffer] bit NOT NULL,
    [IsUndergraduateOption] bit NOT NULL,
    [MinOverallExperienceYears] int NOT NULL,
    [AvailiablePositionsCount] int NOT NULL,
    [JobFieldID] nvarchar(450) NULL,
    [EmployerProfileID] nvarchar(450) NULL,
    [CountryID] nvarchar(450) NULL,
    [CountryStateID] nvarchar(450) NULL,
    [CityID] nvarchar(450) NULL,
    [JobTitleID] nvarchar(450) NULL,
    CONSTRAINT [PK_JobOffer] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_JobOffer_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_JobOffer_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_JobOffer_City_CityID] FOREIGN KEY ([CityID]) REFERENCES [City] ([ID]),
    CONSTRAINT [FK_JobOffer_ContactProfile_EmployerProfileID] FOREIGN KEY ([EmployerProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_JobOffer_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_JobOffer_CountryState_CountryStateID] FOREIGN KEY ([CountryStateID]) REFERENCES [CountryState] ([ID]),
    CONSTRAINT [FK_JobOffer_JobField_JobFieldID] FOREIGN KEY ([JobFieldID]) REFERENCES [JobField] ([ID]),
    CONSTRAINT [FK_JobOffer_JobTitle_JobTitleID] FOREIGN KEY ([JobTitleID]) REFERENCES [JobTitle] ([ID])
);
GO

CREATE TABLE [LeaveApplication] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Justification] nvarchar(max) NULL,
    [Approved] bit NOT NULL,
    [OnReview] bit NOT NULL,
    [LeaveTypeID] nvarchar(450) NULL,
    [EmployeeProfileID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_LeaveApplication] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_LeaveApplication_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_LeaveApplication_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_LeaveApplication_ContactProfile_EmployeeProfileID] FOREIGN KEY ([EmployeeProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_LeaveApplication_LeaveType_LeaveTypeID] FOREIGN KEY ([LeaveTypeID]) REFERENCES [LeaveType] ([ID])
);
GO

CREATE TABLE [Location] (
    [ID] nvarchar(450) NOT NULL,
    [Verified] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [VerificationTimestamp] datetime2 NOT NULL,
    [Title] nvarchar(max) NOT NULL,
    [Company] nvarchar(max) NULL,
    [Email] nvarchar(max) NULL,
    [Address1] nvarchar(max) NOT NULL,
    [Address2] nvarchar(max) NULL,
    [Address3] nvarchar(max) NULL,
    [Unit] nvarchar(max) NULL,
    [CustomCity] nvarchar(max) NULL,
    [CustomState] nvarchar(max) NULL,
    [PostalCode] nvarchar(max) NULL,
    [Phone] nvarchar(max) NULL,
    [Fax] nvarchar(max) NULL,
    [Longitud] float NOT NULL,
    [Latitud] float NOT NULL,
    [IsRoutable] bit NOT NULL,
    [IsGlobalPrimary] bit NOT NULL,
    [IsCountryPrimary] bit NOT NULL,
    [CanGenerateLabels] bit NOT NULL,
    [IsDefaultSenderAddress] bit NOT NULL,
    [IsDefaultReturnAddress] bit NOT NULL,
    [IsDefaultShippingLocation] bit NOT NULL,
    [IsDefaultBillingLocation] bit NOT NULL,
    [CountryID] nvarchar(450) NULL,
    [CountryStateID] nvarchar(450) NULL,
    [CityID] nvarchar(450) NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [ContactID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [IsGroup] bit NULL,
    [ShipwireWarehouseID] nvarchar(max) NULL,
    [ParentWarehouseID] nvarchar(450) NULL,
    [SupplierProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_Location] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Location_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_Location_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Location_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Location_City_CityID] FOREIGN KEY ([CityID]) REFERENCES [City] ([ID]),
    CONSTRAINT [FK_Location_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Location_ContactProfile_SupplierProfileID] FOREIGN KEY ([SupplierProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Location_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_Location_CountryState_CountryStateID] FOREIGN KEY ([CountryStateID]) REFERENCES [CountryState] ([ID]),
    CONSTRAINT [FK_Location_Location_ParentWarehouseID] FOREIGN KEY ([ParentWarehouseID]) REFERENCES [Location] ([ID]),
    CONSTRAINT [FK_Location_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [MarketingAreaSubscription] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [PartnerProfileID] nvarchar(450) NULL,
    [MarketingAreaID] nvarchar(450) NULL,
    CONSTRAINT [PK_MarketingAreaSubscription] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_MarketingAreaSubscription_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_MarketingAreaSubscription_ContactProfile_PartnerProfileID] FOREIGN KEY ([PartnerProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_MarketingAreaSubscription_MarketingArea_MarketingAreaID] FOREIGN KEY ([MarketingAreaID]) REFERENCES [MarketingArea] ([ID])
);
GO

CREATE TABLE [MarketingListMembership] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [LeadProfileID] nvarchar(450) NULL,
    [MarketingListID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_MarketingListMembership] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_MarketingListMembership_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_MarketingListMembership_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_MarketingListMembership_ContactProfile_LeadProfileID] FOREIGN KEY ([LeadProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_MarketingListMembership_MarketingList_MarketingListID] FOREIGN KEY ([MarketingListID]) REFERENCES [MarketingList] ([ID])
);
GO

CREATE TABLE [PurchaseRequest] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [SupplierProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_PurchaseRequest] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PurchaseRequest_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_PurchaseRequest_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_PurchaseRequest_ContactProfile_SupplierProfileID] FOREIGN KEY ([SupplierProfileID]) REFERENCES [ContactProfile] ([ID])
);
GO

CREATE TABLE [Salary] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Amount] float NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [EmployeeProfileID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_Salary] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Salary_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Salary_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Salary_ContactProfile_EmployeeProfileID] FOREIGN KEY ([EmployeeProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Salary_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID])
);
GO

CREATE TABLE [ShareTransfer] (
    [ID] nvarchar(450) NOT NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [Value] float NOT NULL,
    [NewShareHolderID] nvarchar(450) NULL,
    [FormerShareHolderID] nvarchar(450) NULL,
    [ShareTransferReasonID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShareTransfer] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShareTransfer_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ShareTransfer_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ShareTransfer_ContactProfile_FormerShareHolderID] FOREIGN KEY ([FormerShareHolderID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_ShareTransfer_ContactProfile_NewShareHolderID] FOREIGN KEY ([NewShareHolderID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_ShareTransfer_ShareTransferReason_ShareTransferReasonID] FOREIGN KEY ([ShareTransferReasonID]) REFERENCES [ShareTransferReason] ([ID])
);
GO

CREATE TABLE [SigningCertificate] (
    [ID] nvarchar(450) NOT NULL,
    [URL] nvarchar(max) NULL,
    [CSR] nvarchar(max) NULL,
    [Type] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [PublicKey] nvarchar(max) NULL,
    [PrivateKey] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [FileLengthInBits] bigint NOT NULL,
    [CertificateType] int NOT NULL,
    [ContactID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [SigningProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_SigningCertificate] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SigningCertificate_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_SigningCertificate_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SigningCertificate_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SigningCertificate_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_SigningCertificate_ContactProfile_SigningProfileID] FOREIGN KEY ([SigningProfileID]) REFERENCES [ContactProfile] ([ID])
);
GO

CREATE TABLE [SupplierGroupRecord] (
    [ID] nvarchar(450) NOT NULL,
    [SupplierProfileID] nvarchar(450) NULL,
    [SupplierGroupID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_SupplierGroupRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SupplierGroupRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SupplierGroupRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SupplierGroupRecord_ContactProfile_SupplierProfileID] FOREIGN KEY ([SupplierProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_SupplierGroupRecord_SupplierGroup_SupplierGroupID] FOREIGN KEY ([SupplierGroupID]) REFERENCES [SupplierGroup] ([ID])
);
GO

CREATE TABLE [TrainingProgramApplication] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [TrainingProgramID] nvarchar(450) NULL,
    [EmployeeProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_TrainingProgramApplication] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_TrainingProgramApplication_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_TrainingProgramApplication_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_TrainingProgramApplication_ContactProfile_EmployeeProfileID] FOREIGN KEY ([EmployeeProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_TrainingProgramApplication_TrainingProgram_TrainingProgramID] FOREIGN KEY ([TrainingProgramID]) REFERENCES [TrainingProgram] ([ID])
);
GO

CREATE TABLE [Transaction] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Description] nvarchar(max) NULL,
    [Price] float NOT NULL,
    [Quantity] float NOT NULL,
    [ExternalDescription] nvarchar(max) NULL,
    [BasisQuantity] float NOT NULL,
    [BasisAmount] float NOT NULL,
    [Percent] float NOT NULL,
    [UnitGroupID] nvarchar(450) NULL,
    [UnitID] nvarchar(450) NULL,
    [TransactionCategoryID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [BankProfileID] nvarchar(450) NULL,
    [BankAccountID] nvarchar(450) NULL,
    [ProjectResourceID] nvarchar(450) NULL,
    [ProjectTaskID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [ProjectID] nvarchar(450) NULL,
    [ProjectResourceRoleID] nvarchar(450) NULL,
    [AccountingDate] datetime2 NULL,
    [DocumentDate] datetime2 NULL,
    [StartDateTime] datetime2 NULL,
    [EndDateTime] datetime2 NULL,
    [BillingType] int NULL,
    [CustomerType] int NULL,
    [TransactionType] int NULL,
    [TransactionClass] int NULL,
    [AmountMethod] int NULL,
    [ProjectJournalID] nvarchar(450) NULL,
    CONSTRAINT [PK_Transaction] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Transaction_Account_BankAccountID] FOREIGN KEY ([BankAccountID]) REFERENCES [Account] ([ID]),
    CONSTRAINT [FK_Transaction_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Transaction_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Transaction_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Transaction_ContactProfile_BankProfileID] FOREIGN KEY ([BankProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Transaction_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_Transaction_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID]),
    CONSTRAINT [FK_Transaction_ProjectJournal_ProjectJournalID] FOREIGN KEY ([ProjectJournalID]) REFERENCES [ProjectJournal] ([ID]),
    CONSTRAINT [FK_Transaction_ProjectResource_ProjectResourceID] FOREIGN KEY ([ProjectResourceID]) REFERENCES [ProjectResource] ([ID]),
    CONSTRAINT [FK_Transaction_ProjectResourceRole_ProjectResourceRoleID] FOREIGN KEY ([ProjectResourceRoleID]) REFERENCES [ProjectResourceRole] ([ID]),
    CONSTRAINT [FK_Transaction_Task_ProjectTaskID] FOREIGN KEY ([ProjectTaskID]) REFERENCES [Task] ([ID]),
    CONSTRAINT [FK_Transaction_TransactionCategory_TransactionCategoryID] FOREIGN KEY ([TransactionCategoryID]) REFERENCES [TransactionCategory] ([ID]),
    CONSTRAINT [FK_Transaction_Unit_UnitID] FOREIGN KEY ([UnitID]) REFERENCES [Unit] ([ID]),
    CONSTRAINT [FK_Transaction_UnitGroup_UnitGroupID] FOREIGN KEY ([UnitGroupID]) REFERENCES [UnitGroup] ([ID])
);
GO

CREATE TABLE [CustomPropertyRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Value] nvarchar(max) NULL,
    [CustomPropertyID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [ContactID] nvarchar(450) NULL,
    [DealUnitID] nvarchar(450) NULL,
    CONSTRAINT [PK_CustomPropertyRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CustomPropertyRecord_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_CustomPropertyRecord_CustomProperty_CustomPropertyID] FOREIGN KEY ([CustomPropertyID]) REFERENCES [CustomProperty] ([ID]),
    CONSTRAINT [FK_CustomPropertyRecord_DealUnit_DealUnitID] FOREIGN KEY ([DealUnitID]) REFERENCES [DealUnit] ([ID])
);
GO

CREATE TABLE [CourseAssignmentType] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Abbreviation] nvarchar(max) NULL,
    [Weight] float NOT NULL,
    [Quantity] int NOT NULL,
    [Excluded] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [CourseID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseAssignmentType] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseAssignmentType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseAssignmentType_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseAssignmentType_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [CourseCollectionRecord] (
    [ID] nvarchar(450) NOT NULL,
    [CourseCollectionID] nvarchar(450) NULL,
    [Timestamp] datetime2 NOT NULL,
    [CourseID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseCollectionRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseCollectionRecord_Item_CourseCollectionID] FOREIGN KEY ([CourseCollectionID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_CourseCollectionRecord_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [CourseContentGroup] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [CourseID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseContentGroup] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseContentGroup_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseContentGroup_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseContentGroup_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [CourseGradingRubric] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [EnablePoints] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [CourseID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseGradingRubric] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseGradingRubric_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseGradingRubric_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseGradingRubric_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [CourseSection] (
    [ID] nvarchar(450) NOT NULL,
    [Icon] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [CourseID] nvarchar(450) NULL,
    [ReleaseDateTime] datetime2 NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [HideFromStudents] bit NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseSection] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseSection_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseSection_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseSection_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [CourseTeamMembership] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [CourseID] nvarchar(450) NULL,
    [InstructorProfileID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [CourseTeamMembershipType] int NOT NULL,
    CONSTRAINT [PK_CourseTeamMembership] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseTeamMembership_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseTeamMembership_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseTeamMembership_ContactProfile_InstructorProfileID] FOREIGN KEY ([InstructorProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_CourseTeamMembership_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [ItemAttributeOptionRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ItemID] nvarchar(450) NULL,
    [AttributeOptionID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemAttributeOptionRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemAttributeOptionRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemAttributeOptionRecord_ItemAttributeOption_AttributeOptionID] FOREIGN KEY ([AttributeOptionID]) REFERENCES [ItemAttributeOption] ([ID])
);
GO

CREATE TABLE [ItemBundleRecord] (
    [ProductBundleRecordID] nvarchar(450) NOT NULL,
    [ParentItemID] nvarchar(450) NULL,
    [ItemBundleID] nvarchar(450) NULL,
    [ChildItemID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemBundleRecord] PRIMARY KEY ([ProductBundleRecordID]),
    CONSTRAINT [FK_ItemBundleRecord_Item_ChildItemID] FOREIGN KEY ([ChildItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemBundleRecord_Item_ParentItemID] FOREIGN KEY ([ParentItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemBundleRecord_ItemBundle_ItemBundleID] FOREIGN KEY ([ItemBundleID]) REFERENCES [ItemBundle] ([ID])
);
GO

CREATE TABLE [ItemCategoryRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ItemCategoryID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemCategoryRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemCategoryRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemCategoryRecord_ItemCategory_ItemCategoryID] FOREIGN KEY ([ItemCategoryID]) REFERENCES [ItemCategory] ([ID])
);
GO

CREATE TABLE [ItemFamilyRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ItemFamilyID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemFamilyRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemFamilyRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemFamilyRecord_ItemFamily_ItemFamilyID] FOREIGN KEY ([ItemFamilyID]) REFERENCES [ItemFamily] ([ID])
);
GO

CREATE TABLE [ItemGoogleCategoryRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ItemID] nvarchar(450) NULL,
    [ItemGoogleCategoryID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemGoogleCategoryRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemGoogleCategoryRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemGoogleCategoryRecord_ItemGoogleCategory_ItemGoogleCategoryID] FOREIGN KEY ([ItemGoogleCategoryID]) REFERENCES [ItemGoogleCategory] ([ID])
);
GO

CREATE TABLE [ItemGroupRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ItemGroupID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemGroupRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemGroupRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemGroupRecord_ItemGroup_ItemGroupID] FOREIGN KEY ([ItemGroupID]) REFERENCES [ItemGroup] ([ID])
);
GO

CREATE TABLE [ItemQuestion] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [NeedsRevision] bit NOT NULL,
    [Question] nvarchar(max) NOT NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    [Type] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_ItemQuestion] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemQuestion_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ItemQuestion_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemQuestion_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [ItemShippingPolicyRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ItemID] nvarchar(450) NULL,
    [ItemShippingPolicyID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemShippingPolicyRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemShippingPolicyRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ItemShippingPolicyRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemShippingPolicyRecord_Policy_ItemShippingPolicyID] FOREIGN KEY ([ItemShippingPolicyID]) REFERENCES [Policy] ([ID])
);
GO

CREATE TABLE [ItemTagRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ItemTagID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemTagRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemTagRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemTagRecord_ItemTag_ItemTagID] FOREIGN KEY ([ItemTagID]) REFERENCES [ItemTag] ([ID])
);
GO

CREATE TABLE [ItemTypeRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ItemTypeID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemTypeRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemTypeRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemTypeRecord_ItemType_ItemTypeID] FOREIGN KEY ([ItemTypeID]) REFERENCES [ItemType] ([ID])
);
GO

CREATE TABLE [LicenseAttribute] (
    [ID] nvarchar(450) NOT NULL,
    [Code] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [LicenseTypeID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_LicenseAttribute] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_LicenseAttribute_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_LicenseAttribute_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_LicenseAttribute_Item_LicenseTypeID] FOREIGN KEY ([LicenseTypeID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [LicenseFeature] (
    [ID] nvarchar(450) NOT NULL,
    [Code] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [AccessKeyPairID] nvarchar(450) NULL,
    [LicenseTypeID] nvarchar(450) NULL,
    CONSTRAINT [PK_LicenseFeature] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_LicenseFeature_AccessKeyPair_AccessKeyPairID] FOREIGN KEY ([AccessKeyPairID]) REFERENCES [AccessKeyPair] ([IP]),
    CONSTRAINT [FK_LicenseFeature_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_LicenseFeature_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_LicenseFeature_Item_LicenseTypeID] FOREIGN KEY ([LicenseTypeID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [PriceListItem] (
    [ID] nvarchar(450) NOT NULL,
    [Price] float NOT NULL,
    [Percent] float NOT NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [UnitID] nvarchar(450) NULL,
    [UnitGroupID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [PriceListID] nvarchar(450) NULL,
    [DiscountListID] nvarchar(450) NULL,
    [RoundingPolicyID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [TransactionCategoryID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    [ItemPriceListID] nvarchar(450) NULL,
    CONSTRAINT [PK_PriceListItem] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PriceListItem_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_PriceListItem_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_PriceListItem_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_PriceListItem_DiscountList_DiscountListID] FOREIGN KEY ([DiscountListID]) REFERENCES [DiscountList] ([ID]),
    CONSTRAINT [FK_PriceListItem_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_PriceListItem_Policy_RoundingPolicyID] FOREIGN KEY ([RoundingPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_PriceListItem_PriceList_ItemPriceListID] FOREIGN KEY ([ItemPriceListID]) REFERENCES [PriceList] ([ID]),
    CONSTRAINT [FK_PriceListItem_PriceList_PriceListID] FOREIGN KEY ([PriceListID]) REFERENCES [PriceList] ([ID]),
    CONSTRAINT [FK_PriceListItem_TransactionCategory_TransactionCategoryID] FOREIGN KEY ([TransactionCategoryID]) REFERENCES [TransactionCategory] ([ID]),
    CONSTRAINT [FK_PriceListItem_Unit_UnitID] FOREIGN KEY ([UnitID]) REFERENCES [Unit] ([ID]),
    CONSTRAINT [FK_PriceListItem_UnitGroup_UnitGroupID] FOREIGN KEY ([UnitGroupID]) REFERENCES [UnitGroup] ([ID])
);
GO

CREATE TABLE [SalesLiteratureRecord] (
    [ID] nvarchar(450) NOT NULL,
    [SalesLiteratureID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [ItemID] nvarchar(450) NULL,
    CONSTRAINT [PK_SalesLiteratureRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SalesLiteratureRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SalesLiteratureRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SalesLiteratureRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_SalesLiteratureRecord_SalesLiterature_SalesLiteratureID] FOREIGN KEY ([SalesLiteratureID]) REFERENCES [SalesLiterature] ([ID])
);
GO

CREATE TABLE [Schedule] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Disabled] bit NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [FiscalYearID] nvarchar(450) NULL,
    [HolidayScheduleID] nvarchar(450) NULL,
    [Sunday] bit NOT NULL,
    [Monday] bit NOT NULL,
    [Tuesday] bit NOT NULL,
    [Wednesday] bit NOT NULL,
    [Thursday] bit NOT NULL,
    [Friday] bit NOT NULL,
    [Saturday] bit NOT NULL,
    [UniqueInterval] bit NOT NULL,
    [_24x7Interval] bit NOT NULL,
    [Start] datetime2 NOT NULL,
    [End] datetime2 NOT NULL,
    [TimezoneID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [AssetID] nvarchar(450) NULL,
    [ServiceID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [ProjectID] nvarchar(450) NULL,
    CONSTRAINT [PK_Schedule] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Schedule_Asset_AssetID] FOREIGN KEY ([AssetID]) REFERENCES [Asset] ([ID]),
    CONSTRAINT [FK_Schedule_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Schedule_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Schedule_FiscalYear_FiscalYearID] FOREIGN KEY ([FiscalYearID]) REFERENCES [FiscalYear] ([ID]),
    CONSTRAINT [FK_Schedule_HolidaySchedule_HolidayScheduleID] FOREIGN KEY ([HolidayScheduleID]) REFERENCES [HolidaySchedule] ([ID]),
    CONSTRAINT [FK_Schedule_Item_ServiceID] FOREIGN KEY ([ServiceID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_Schedule_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID]),
    CONSTRAINT [FK_Schedule_Timezone_TimezoneID] FOREIGN KEY ([TimezoneID]) REFERENCES [Timezone] ([ID])
);
GO

CREATE TABLE [ServiceQueueRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Order] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ServiceQueueID] nvarchar(450) NULL,
    [ServiceID] nvarchar(450) NULL,
    CONSTRAINT [PK_ServiceQueueRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ServiceQueueRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ServiceQueueRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ServiceQueueRecord_Item_ServiceID] FOREIGN KEY ([ServiceID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ServiceQueueRecord_ServiceQueue_ServiceQueueID] FOREIGN KEY ([ServiceQueueID]) REFERENCES [ServiceQueue] ([ID])
);
GO

CREATE TABLE [SocialGroup] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Name] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [AvatarURL] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [CourseID] nvarchar(450) NULL,
    CONSTRAINT [PK_SocialGroup] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SocialGroup_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SocialGroup_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SocialGroup_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_SocialGroup_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [TrainingProgramCourse] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [TrainingProgramID] nvarchar(450) NULL,
    [CourseID] nvarchar(450) NULL,
    CONSTRAINT [PK_TrainingProgramCourse] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_TrainingProgramCourse_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_TrainingProgramCourse_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_TrainingProgramCourse_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_TrainingProgramCourse_TrainingProgram_TrainingProgramID] FOREIGN KEY ([TrainingProgramID]) REFERENCES [TrainingProgram] ([ID])
);
GO

CREATE TABLE [WishListRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NULL,
    [WishListID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [ItemID] nvarchar(450) NULL,
    CONSTRAINT [PK_WishListRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WishListRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_WishListRecord_WishList_WishListID] FOREIGN KEY ([WishListID]) REFERENCES [WishList] ([ID])
);
GO

CREATE TABLE [CurriculumRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [Validated] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [CurriculumID] nvarchar(450) NULL,
    [ProficiencyRatingValueID] nvarchar(450) NULL,
    [ProficiencyRatingModelID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Title] nvarchar(max) NULL,
    [KnowledgeField] nvarchar(max) NULL,
    [Date] datetime2 NULL,
    [AcademicInstitutionProfileID] nvarchar(450) NULL,
    [ExperienceInYears] int NULL,
    [Priority] decimal(18,2) NULL,
    [CurriculumSkillID] nvarchar(450) NULL,
    [InstitutionDiploma_Date] datetime2 NULL,
    [InstitutionDiploma_AcademicInstitutionProfileID] nvarchar(450) NULL,
    [JobOfferID] nvarchar(450) NULL,
    [ProfessionalDegree_Title] nvarchar(max) NULL,
    [ProfessionalDegree_KnowledgeField] nvarchar(max) NULL,
    [ProfessionalDegree_Date] datetime2 NULL,
    [ProfessionalDegree_AcademicInstitutionProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_CurriculumRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CurriculumRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CurriculumRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CurriculumRecord_ContactProfile_AcademicInstitutionProfileID] FOREIGN KEY ([AcademicInstitutionProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_CurriculumRecord_ContactProfile_InstitutionDiploma_AcademicInstitutionProfileID] FOREIGN KEY ([InstitutionDiploma_AcademicInstitutionProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_CurriculumRecord_ContactProfile_ProfessionalDegree_AcademicInstitutionProfileID] FOREIGN KEY ([ProfessionalDegree_AcademicInstitutionProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_CurriculumRecord_Curriculum_CurriculumID] FOREIGN KEY ([CurriculumID]) REFERENCES [Curriculum] ([ID]),
    CONSTRAINT [FK_CurriculumRecord_CurriculumSkill_CurriculumSkillID] FOREIGN KEY ([CurriculumSkillID]) REFERENCES [CurriculumSkill] ([ID]),
    CONSTRAINT [FK_CurriculumRecord_JobOffer_JobOfferID] FOREIGN KEY ([JobOfferID]) REFERENCES [JobOffer] ([ID]),
    CONSTRAINT [FK_CurriculumRecord_ProficiencyRatingModel_ProficiencyRatingModelID] FOREIGN KEY ([ProficiencyRatingModelID]) REFERENCES [ProficiencyRatingModel] ([ID]),
    CONSTRAINT [FK_CurriculumRecord_ProficiencyRatingValue_ProficiencyRatingValueID] FOREIGN KEY ([ProficiencyRatingValueID]) REFERENCES [ProficiencyRatingValue] ([ID])
);
GO

CREATE TABLE [JobOfferApplication] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Start] datetime2 NOT NULL,
    [End] datetime2 NOT NULL,
    [CurriculumID] nvarchar(450) NULL,
    [JobOfferID] nvarchar(450) NULL,
    [JobApplicantProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_JobOfferApplication] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_JobOfferApplication_ContactProfile_JobApplicantProfileID] FOREIGN KEY ([JobApplicantProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_JobOfferApplication_Curriculum_CurriculumID] FOREIGN KEY ([CurriculumID]) REFERENCES [Curriculum] ([ID]),
    CONSTRAINT [FK_JobOfferApplication_JobOffer_JobOfferID] FOREIGN KEY ([JobOfferID]) REFERENCES [JobOffer] ([ID])
);
GO

CREATE TABLE [RequiredSkillRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ExperienceInYears] int NOT NULL,
    [Priority] decimal(18,2) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [RequiredSkillRecordType] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [JobOfferID] nvarchar(450) NULL,
    [EmployerProfileID] nvarchar(450) NULL,
    [CurriculumSkillID] nvarchar(450) NULL,
    CONSTRAINT [PK_RequiredSkillRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_RequiredSkillRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_RequiredSkillRecord_ContactProfile_EmployerProfileID] FOREIGN KEY ([EmployerProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_RequiredSkillRecord_CurriculumSkill_CurriculumSkillID] FOREIGN KEY ([CurriculumSkillID]) REFERENCES [CurriculumSkill] ([ID]),
    CONSTRAINT [FK_RequiredSkillRecord_JobOffer_JobOfferID] FOREIGN KEY ([JobOfferID]) REFERENCES [JobOffer] ([ID])
);
GO

CREATE TABLE [LeaveReport] (
    [ID] nvarchar(450) NOT NULL,
    [Content] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [LeaveApplicationID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_LeaveReport] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_LeaveReport_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_LeaveReport_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_LeaveReport_LeaveApplication_LeaveApplicationID] FOREIGN KEY ([LeaveApplicationID]) REFERENCES [LeaveApplication] ([ID])
);
GO

CREATE TABLE [EmployeeTransfer] (
    [ID] nvarchar(450) NOT NULL,
    [Initial] bit NOT NULL,
    [Reason] nvarchar(max) NULL,
    [Remarks] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [EffectiveDate] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [EmployeeProfileID] nvarchar(450) NULL,
    [BusinessLocationID] nvarchar(450) NULL,
    CONSTRAINT [PK_EmployeeTransfer] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_EmployeeTransfer_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_EmployeeTransfer_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_EmployeeTransfer_ContactProfile_EmployeeProfileID] FOREIGN KEY ([EmployeeProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_EmployeeTransfer_Location_BusinessLocationID] FOREIGN KEY ([BusinessLocationID]) REFERENCES [Location] ([ID])
);
GO

CREATE TABLE [ItemRestockEntry] (
    [ID] nvarchar(450) NOT NULL,
    [Quantity] float NOT NULL,
    [ItemID] nvarchar(450) NULL,
    [WarehouseID] nvarchar(450) NULL,
    [ItemRestockID] nvarchar(450) NULL,
    [OrderItemRecordID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemRestockEntry] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemRestockEntry_BillingItemRecord_OrderItemRecordID] FOREIGN KEY ([OrderItemRecordID]) REFERENCES [BillingItemRecord] ([ID]),
    CONSTRAINT [FK_ItemRestockEntry_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ItemRestockEntry_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemRestockEntry_ItemRestock_ItemRestockID] FOREIGN KEY ([ItemRestockID]) REFERENCES [ItemRestock] ([ID]),
    CONSTRAINT [FK_ItemRestockEntry_Location_WarehouseID] FOREIGN KEY ([WarehouseID]) REFERENCES [Location] ([ID])
);
GO

CREATE TABLE [ItemRetainSample] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [WarehouseID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemRetainSample] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemRetainSample_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ItemRetainSample_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemRetainSample_Location_WarehouseID] FOREIGN KEY ([WarehouseID]) REFERENCES [Location] ([ID])
);
GO

CREATE TABLE [PointOfSale] (
    [ID] nvarchar(450) NOT NULL,
    [Code] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [PriceListID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [LocationID] nvarchar(450) NULL,
    CONSTRAINT [PK_PointOfSale] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PointOfSale_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_PointOfSale_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_PointOfSale_Location_LocationID] FOREIGN KEY ([LocationID]) REFERENCES [Location] ([ID]),
    CONSTRAINT [FK_PointOfSale_PriceList_PriceListID] FOREIGN KEY ([PriceListID]) REFERENCES [PriceList] ([ID])
);
GO

CREATE TABLE [Quote] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [EffectiveFrom] datetime2 NOT NULL,
    [QuoteStatus] int NOT NULL,
    [FreightTerms] int NOT NULL,
    [EffectiveTo] datetime2 NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Closed] bit NOT NULL,
    [CostCalculationMethod] int NOT NULL,
    [ForexRatesSnapshot] nvarchar(max) NULL,
    [ForexRate] float NOT NULL,
    [TotalBaseAmountInUSD] float NOT NULL,
    [TotalDetailAmountInUSD] float NOT NULL,
    [TotalDiscountsInUSD] float NOT NULL,
    [TotalProfitInUSD] float NOT NULL,
    [TotalTaxBaseInUSD] float NOT NULL,
    [TotalTaxesInUSD] float NOT NULL,
    [TotalWithholdingTaxesInUSD] float NOT NULL,
    [TotalShippingCostInUSD] float NOT NULL,
    [TotalShippingTaxesInUSD] float NOT NULL,
    [TotalWarrantyCostInUSD] float NOT NULL,
    [TotalReturnCostInUSD] float NOT NULL,
    [TotalRefundCostInUSD] float NOT NULL,
    [TotalSurchargesInUSD] float NOT NULL,
    [TotalAmountInUSD] float NOT NULL,
    [CustomBaseAmount] float NOT NULL,
    [CustomDetailAmount] float NOT NULL,
    [CustomDiscountsAmount] float NOT NULL,
    [CustomSurchargesAmount] float NOT NULL,
    [CustomProfitAmount] float NOT NULL,
    [CustomShippingCostAmount] float NOT NULL,
    [CustomShippingTaxAmount] float NOT NULL,
    [CustomTaxBase] float NOT NULL,
    [CustomTaxAmount] float NOT NULL,
    [CustomWithholdingTaxAmount] float NOT NULL,
    [CustomTotalAmount] float NOT NULL,
    [TotalGlobalDiscountsInUSD] float NOT NULL,
    [TotalGlobalSurchargesInUSD] float NOT NULL,
    [CustomGlobalSurchargesAmount] float NOT NULL,
    [CustomGlobalDiscountsAmount] float NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [ReceptorBusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [IndividualID] nvarchar(450) NULL,
    [OrganizationID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [PriceListID] nvarchar(450) NULL,
    [DealUnitID] nvarchar(450) NULL,
    [PaymentTermID] nvarchar(450) NULL,
    [ShippingMethodID] nvarchar(450) NULL,
    [ShippingLocationID] nvarchar(450) NULL,
    [BillingLocationID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [SupplierProfileID] nvarchar(450) NULL,
    [ProjectID] nvarchar(450) NULL,
    CONSTRAINT [PK_Quote] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Quote_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_Quote_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Quote_Business_ReceptorBusinessID] FOREIGN KEY ([ReceptorBusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Quote_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Quote_Contact_IndividualID] FOREIGN KEY ([IndividualID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Quote_Contact_OrganizationID] FOREIGN KEY ([OrganizationID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Quote_ContactProfile_SupplierProfileID] FOREIGN KEY ([SupplierProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Quote_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_Quote_DealUnit_DealUnitID] FOREIGN KEY ([DealUnitID]) REFERENCES [DealUnit] ([ID]),
    CONSTRAINT [FK_Quote_Location_BillingLocationID] FOREIGN KEY ([BillingLocationID]) REFERENCES [Location] ([ID]),
    CONSTRAINT [FK_Quote_Location_ShippingLocationID] FOREIGN KEY ([ShippingLocationID]) REFERENCES [Location] ([ID]),
    CONSTRAINT [FK_Quote_PaymentTerm_PaymentTermID] FOREIGN KEY ([PaymentTermID]) REFERENCES [PaymentTerm] ([ID]),
    CONSTRAINT [FK_Quote_PriceList_PriceListID] FOREIGN KEY ([PriceListID]) REFERENCES [PriceList] ([ID]),
    CONSTRAINT [FK_Quote_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID]),
    CONSTRAINT [FK_Quote_ShippingMethod_ShippingMethodID] FOREIGN KEY ([ShippingMethodID]) REFERENCES [ShippingMethod] ([ID])
);
GO

CREATE TABLE [WalletAccount] (
    [ID] nvarchar(450) NOT NULL,
    [CreatedTimestamp] datetime2 NOT NULL,
    [EnabledToRecievePayments] bit NOT NULL,
    [WalletCurrentBalanceInUSD] float NOT NULL,
    [Test] bit NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [LegalName] nvarchar(max) NULL,
    [OfficialID] nvarchar(max) NULL,
    [OfficialIDExpeditionDate] datetime2 NOT NULL,
    [CustomAddress] nvarchar(max) NULL,
    [Phone] nvarchar(max) NULL,
    [Cellphone] nvarchar(max) NULL,
    [Department] nvarchar(max) NULL,
    [City] nvarchar(max) NULL,
    [EthereumAddress] nvarchar(max) NULL,
    [EthereumPublicKey] nvarchar(max) NULL,
    [EthereumPrivateKey] nvarchar(max) NULL,
    [MainNetEtherBalance] decimal(18,2) NOT NULL,
    [TestNetEtherBalance] decimal(18,2) NOT NULL,
    [BitcoinMainNetAddress] nvarchar(max) NULL,
    [BitcoinTestNetAddress] nvarchar(max) NULL,
    [BitcoinPublicKey] nvarchar(max) NULL,
    [BitcoinPrivateKey] nvarchar(max) NULL,
    [BitcoinMainNetBalance] decimal(18,2) NOT NULL,
    [BitcoinTestNetBalance] decimal(18,2) NOT NULL,
    [RollingReservePercent] decimal(18,2) NOT NULL,
    [RollingReserveTimeInDays] decimal(18,2) NOT NULL,
    [AccountID] nvarchar(450) NULL,
    [BillingProfileID] nvarchar(450) NULL,
    [CountryID] nvarchar(450) NULL,
    [LocationID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    CONSTRAINT [PK_WalletAccount] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WalletAccount_Account_AccountID] FOREIGN KEY ([AccountID]) REFERENCES [Account] ([ID]),
    CONSTRAINT [FK_WalletAccount_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_WalletAccount_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_WalletAccount_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_WalletAccount_ContactProfile_BillingProfileID] FOREIGN KEY ([BillingProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_WalletAccount_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_WalletAccount_Location_LocationID] FOREIGN KEY ([LocationID]) REFERENCES [Location] ([ID])
);
GO

CREATE TABLE [RetentionBonus] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Amount] float NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [SalaryID] nvarchar(450) NULL,
    CONSTRAINT [PK_RetentionBonus] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_RetentionBonus_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_RetentionBonus_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_RetentionBonus_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_RetentionBonus_Salary_SalaryID] FOREIGN KEY ([SalaryID]) REFERENCES [Salary] ([ID])
);
GO

CREATE TABLE [SalaryDeduction] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Amount] float NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [SalaryID] nvarchar(450) NULL,
    CONSTRAINT [PK_SalaryDeduction] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SalaryDeduction_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SalaryDeduction_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SalaryDeduction_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_SalaryDeduction_Salary_SalaryID] FOREIGN KEY ([SalaryID]) REFERENCES [Salary] ([ID])
);
GO

CREATE TABLE [SalaryEarning] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Amount] float NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [SalaryID] nvarchar(450) NULL,
    CONSTRAINT [PK_SalaryEarning] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SalaryEarning_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SalaryEarning_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SalaryEarning_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_SalaryEarning_Salary_SalaryID] FOREIGN KEY ([SalaryID]) REFERENCES [Salary] ([ID])
);
GO

CREATE TABLE [SignedDocument] (
    [ID] nvarchar(450) NOT NULL,
    [URL] nvarchar(max) NULL,
    [Type] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [Document] varbinary(max) NULL,
    [ContentType] nvarchar(max) NULL,
    [FileLengthInBits] bigint NOT NULL,
    [SignedDataBase64] nvarchar(max) NULL,
    [PreSignedDataBase64] nvarchar(max) NULL,
    [Signed] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [SignatorCertificateID] nvarchar(450) NULL,
    [SigningProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_SignedDocument] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SignedDocument_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_SignedDocument_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SignedDocument_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SignedDocument_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_SignedDocument_ContactProfile_SigningProfileID] FOREIGN KEY ([SigningProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_SignedDocument_SigningCertificate_SignatorCertificateID] FOREIGN KEY ([SignatorCertificateID]) REFERENCES [SigningCertificate] ([ID])
);
GO

CREATE TABLE [CourseCohort] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [StartDateTime] datetime2 NOT NULL,
    [EndDateTime] datetime2 NOT NULL,
    [ExpectedStartDateTime] datetime2 NOT NULL,
    [ExpectedEndDateTime] datetime2 NOT NULL,
    [CourseID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [CourseContentGroupID] nvarchar(450) NULL,
    [CourseCohortAssignationMethod] int NOT NULL,
    CONSTRAINT [PK_CourseCohort] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseCohort_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseCohort_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseCohort_CourseContentGroup_CourseContentGroupID] FOREIGN KEY ([CourseContentGroupID]) REFERENCES [CourseContentGroup] ([ID]),
    CONSTRAINT [FK_CourseCohort_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [CourseGradingCriteria] (
    [ID] nvarchar(450) NOT NULL,
    [Percent] float NOT NULL,
    [Description] nvarchar(max) NULL,
    [GradingRubricID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseGradingCriteria] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseGradingCriteria_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseGradingCriteria_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseGradingCriteria_CourseGradingRubric_GradingRubricID] FOREIGN KEY ([GradingRubricID]) REFERENCES [CourseGradingRubric] ([ID])
);
GO

CREATE TABLE [CourseUnit] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [ReleaseDateTime] datetime2 NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Content] nvarchar(max) NULL,
    [CourseID] nvarchar(450) NULL,
    [CourseSectionID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [CourseContentGroupID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseUnit] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseUnit_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseUnit_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseUnit_CourseContentGroup_CourseContentGroupID] FOREIGN KEY ([CourseContentGroupID]) REFERENCES [CourseContentGroup] ([ID]),
    CONSTRAINT [FK_CourseUnit_CourseSection_CourseSectionID] FOREIGN KEY ([CourseSectionID]) REFERENCES [CourseSection] ([ID]),
    CONSTRAINT [FK_CourseUnit_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [ItemQuestionReply] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Reply] nvarchar(max) NOT NULL,
    [NeedsRevision] bit NOT NULL,
    [SentimentScore] float NOT NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ItemQuestionID] nvarchar(450) NULL,
    [Type] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_ItemQuestionReply] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemQuestionReply_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ItemQuestionReply_ItemQuestion_ItemQuestionID] FOREIGN KEY ([ItemQuestionID]) REFERENCES [ItemQuestion] ([ID]),
    CONSTRAINT [FK_ItemQuestionReply_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [GenericRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [TaxPolicyID] nvarchar(450) NULL,
    [ItemPriceID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    [PricingRuleID] nvarchar(450) NULL,
    [PriceListID] nvarchar(450) NULL,
    [ItemPricingRuleRecord_ItemID] nvarchar(450) NULL,
    [ItemRefundPolicyRecord_ItemID] nvarchar(450) NULL,
    [RefundPolicyID] nvarchar(450) NULL,
    [ItemWarrantyPolicyRecord_ItemID] nvarchar(450) NULL,
    [WarrantyPolicyID] nvarchar(450) NULL,
    [ItemReturnPolicyRecord_ItemID] nvarchar(450) NULL,
    [ReturnPolicyID] nvarchar(450) NULL,
    [ItemSellingMarginPolicyRecord_ItemID] nvarchar(450) NULL,
    [ItemSellingMarginPolicyID] nvarchar(450) NULL,
    CONSTRAINT [PK_GenericRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_GenericRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_GenericRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_GenericRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_GenericRecord_Item_ItemPricingRuleRecord_ItemID] FOREIGN KEY ([ItemPricingRuleRecord_ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_GenericRecord_Item_ItemRefundPolicyRecord_ItemID] FOREIGN KEY ([ItemRefundPolicyRecord_ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_GenericRecord_Item_ItemReturnPolicyRecord_ItemID] FOREIGN KEY ([ItemReturnPolicyRecord_ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_GenericRecord_Item_ItemSellingMarginPolicyRecord_ItemID] FOREIGN KEY ([ItemSellingMarginPolicyRecord_ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_GenericRecord_Item_ItemWarrantyPolicyRecord_ItemID] FOREIGN KEY ([ItemWarrantyPolicyRecord_ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_GenericRecord_Policy_ItemSellingMarginPolicyID] FOREIGN KEY ([ItemSellingMarginPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_GenericRecord_Policy_PricingRuleID] FOREIGN KEY ([PricingRuleID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_GenericRecord_Policy_RefundPolicyID] FOREIGN KEY ([RefundPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_GenericRecord_Policy_ReturnPolicyID] FOREIGN KEY ([ReturnPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_GenericRecord_Policy_TaxPolicyID] FOREIGN KEY ([TaxPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_GenericRecord_Policy_WarrantyPolicyID] FOREIGN KEY ([WarrantyPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_GenericRecord_PriceList_PriceListID] FOREIGN KEY ([PriceListID]) REFERENCES [PriceList] ([ID]),
    CONSTRAINT [FK_GenericRecord_PriceListItem_ItemPriceID] FOREIGN KEY ([ItemPriceID]) REFERENCES [PriceListItem] ([ID])
);
GO

CREATE TABLE [TimeInterval] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [IsBreak] bit NOT NULL,
    [OccustOnMonday] bit NOT NULL,
    [OccustOnTuesday] bit NOT NULL,
    [OccustOnWednesday] bit NOT NULL,
    [OccustOnThursday] bit NOT NULL,
    [OccustOnFriday] bit NOT NULL,
    [OccustOnSaturday] bit NOT NULL,
    [OccustOnSunday] bit NOT NULL,
    [Start] datetime2 NOT NULL,
    [End] datetime2 NOT NULL,
    [RepeatEvery] int NOT NULL,
    [RepetitionCriteria] int NOT NULL,
    [RecurrenceStart] datetime2 NOT NULL,
    [RecurrenceEnd] datetime2 NOT NULL,
    [DayOfTheWeek] int NOT NULL,
    [ScheduleID] nvarchar(450) NULL,
    [ParentTimeIntervalID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [EmployeeProfileID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [LeaveApplicationID] nvarchar(450) NULL,
    [Shift_BusinessID] nvarchar(450) NULL,
    [Shift_EmployeeProfileID] nvarchar(450) NULL,
    [TrainingProgramEvent_BusinessID] nvarchar(450) NULL,
    [TrainingProgramEvent_BusinessProfileRecordID] nvarchar(450) NULL,
    [TrainingProgramID] nvarchar(450) NULL,
    CONSTRAINT [PK_TimeInterval] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_TimeInterval_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_TimeInterval_Business_Shift_BusinessID] FOREIGN KEY ([Shift_BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_TimeInterval_Business_TrainingProgramEvent_BusinessID] FOREIGN KEY ([TrainingProgramEvent_BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_TimeInterval_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_TimeInterval_BusinessProfileRecord_TrainingProgramEvent_BusinessProfileRecordID] FOREIGN KEY ([TrainingProgramEvent_BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_TimeInterval_ContactProfile_EmployeeProfileID] FOREIGN KEY ([EmployeeProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_TimeInterval_ContactProfile_Shift_EmployeeProfileID] FOREIGN KEY ([Shift_EmployeeProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_TimeInterval_LeaveApplication_LeaveApplicationID] FOREIGN KEY ([LeaveApplicationID]) REFERENCES [LeaveApplication] ([ID]),
    CONSTRAINT [FK_TimeInterval_Schedule_ScheduleID] FOREIGN KEY ([ScheduleID]) REFERENCES [Schedule] ([ID]),
    CONSTRAINT [FK_TimeInterval_TimeInterval_ParentTimeIntervalID] FOREIGN KEY ([ParentTimeIntervalID]) REFERENCES [TimeInterval] ([ID]),
    CONSTRAINT [FK_TimeInterval_TrainingProgram_TrainingProgramID] FOREIGN KEY ([TrainingProgramID]) REFERENCES [TrainingProgram] ([ID])
);
GO

CREATE TABLE [SocialGroupEnrollmentRecord] (
    [ID] nvarchar(450) NOT NULL,
    [IsOwner] bit NOT NULL,
    [IsAdmin] bit NOT NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [GroupID] nvarchar(450) NULL,
    CONSTRAINT [PK_SocialGroupEnrollmentRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SocialGroupEnrollmentRecord_SocialGroup_GroupID] FOREIGN KEY ([GroupID]) REFERENCES [SocialGroup] ([ID]),
    CONSTRAINT [FK_SocialGroupEnrollmentRecord_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [ItemBid] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Amount] decimal(18,2) NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [WalletAccountID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemBid] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemBid_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_ItemBid_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemBid_WalletAccount_WalletAccountID] FOREIGN KEY ([WalletAccountID]) REFERENCES [WalletAccount] ([ID])
);
GO

CREATE TABLE [Order] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Closed] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [LastUpdated] datetime2 NOT NULL,
    [RequestedDelivery] datetime2 NOT NULL,
    [OrderType] int NOT NULL,
    [OrderStatus] int NOT NULL,
    [FreightTerms] int NOT NULL,
    [CostCalculationMethod] int NOT NULL,
    [ForexRatesSnapshot] nvarchar(max) NULL,
    [ForexRate] float NOT NULL,
    [TotalBaseAmountInUSD] float NOT NULL,
    [TotalDetailAmountInUSD] float NOT NULL,
    [TotalTaxBaseInUSD] float NOT NULL,
    [TotalDiscountsInUSD] float NOT NULL,
    [TotalProfitInUSD] float NOT NULL,
    [TotalTaxesInUSD] float NOT NULL,
    [TotalWithholdingTaxesInUSD] float NOT NULL,
    [TotalShippingCostInUSD] float NOT NULL,
    [TotalShippingTaxesInUSD] float NOT NULL,
    [TotalWarrantyCostInUSD] float NOT NULL,
    [TotalReturnCostInUSD] float NOT NULL,
    [TotalRefundCostInUSD] float NOT NULL,
    [TotalSurchargesInUSD] float NOT NULL,
    [TotalAmountInUSD] float NOT NULL,
    [CustomBaseAmount] float NOT NULL,
    [CustomDetailAmount] float NOT NULL,
    [CustomDiscountsAmount] float NOT NULL,
    [CustomSurchargesAmount] float NOT NULL,
    [CustomProfitAmount] float NOT NULL,
    [CustomShippingCostAmount] float NOT NULL,
    [CustomShippingTaxAmount] float NOT NULL,
    [CustomTaxBase] float NOT NULL,
    [CustomTaxAmount] float NOT NULL,
    [CustomWithholdingTaxAmount] float NOT NULL,
    [CustomTotalAmount] float NOT NULL,
    [TotalGlobalDiscountsInUSD] float NOT NULL,
    [TotalGlobalSurchargesInUSD] float NOT NULL,
    [CustomGlobalSurchargesAmount] float NOT NULL,
    [CustomGlobalDiscountsAmount] float NOT NULL,
    [FirstName] nvarchar(max) NULL,
    [LastName] nvarchar(max) NULL,
    [AddressLine1] nvarchar(max) NULL,
    [AddressLine2] nvarchar(max) NULL,
    [PostalCode] nvarchar(max) NULL,
    [BillingEmail] nvarchar(max) NULL,
    [CompanyName] nvarchar(max) NULL,
    [CustomerNotes] nvarchar(max) NULL,
    [BillingContactID] nvarchar(450) NULL,
    [ShippingContactID] nvarchar(450) NULL,
    [BillingAddressID] nvarchar(450) NULL,
    [ShippingAddressID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [IndividualID] nvarchar(450) NULL,
    [OrganizationID] nvarchar(450) NULL,
    [CountryID] nvarchar(450) NULL,
    [CountryStateID] nvarchar(450) NULL,
    [CityID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ReceptorBusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [CartID] nvarchar(450) NULL,
    [WalletAccountID] nvarchar(450) NULL,
    [BillingProfileID] nvarchar(450) NULL,
    [ParentOrderID] nvarchar(450) NULL,
    [QuoteID] nvarchar(450) NULL,
    [PriceListID] nvarchar(450) NULL,
    [ShippingLocationID] nvarchar(450) NULL,
    [BillingLocationID] nvarchar(450) NULL,
    [PaymentTermID] nvarchar(450) NULL,
    [ShippingMethodID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [SalesQuoteID] nvarchar(450) NULL,
    CONSTRAINT [PK_Order] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Order_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_Order_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Order_Business_ReceptorBusinessID] FOREIGN KEY ([ReceptorBusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Order_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Order_Cart_CartID] FOREIGN KEY ([CartID]) REFERENCES [Cart] ([ID]),
    CONSTRAINT [FK_Order_City_CityID] FOREIGN KEY ([CityID]) REFERENCES [City] ([ID]),
    CONSTRAINT [FK_Order_Contact_BillingContactID] FOREIGN KEY ([BillingContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Order_Contact_IndividualID] FOREIGN KEY ([IndividualID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Order_Contact_OrganizationID] FOREIGN KEY ([OrganizationID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Order_Contact_ShippingContactID] FOREIGN KEY ([ShippingContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Order_ContactProfile_BillingProfileID] FOREIGN KEY ([BillingProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Order_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_Order_CountryState_CountryStateID] FOREIGN KEY ([CountryStateID]) REFERENCES [CountryState] ([ID]),
    CONSTRAINT [FK_Order_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_Order_Location_BillingAddressID] FOREIGN KEY ([BillingAddressID]) REFERENCES [Location] ([ID]),
    CONSTRAINT [FK_Order_Location_BillingLocationID] FOREIGN KEY ([BillingLocationID]) REFERENCES [Location] ([ID]),
    CONSTRAINT [FK_Order_Location_ShippingAddressID] FOREIGN KEY ([ShippingAddressID]) REFERENCES [Location] ([ID]),
    CONSTRAINT [FK_Order_Location_ShippingLocationID] FOREIGN KEY ([ShippingLocationID]) REFERENCES [Location] ([ID]),
    CONSTRAINT [FK_Order_Order_ParentOrderID] FOREIGN KEY ([ParentOrderID]) REFERENCES [Order] ([ID]),
    CONSTRAINT [FK_Order_PaymentTerm_PaymentTermID] FOREIGN KEY ([PaymentTermID]) REFERENCES [PaymentTerm] ([ID]),
    CONSTRAINT [FK_Order_PriceList_PriceListID] FOREIGN KEY ([PriceListID]) REFERENCES [PriceList] ([ID]),
    CONSTRAINT [FK_Order_Quote_QuoteID] FOREIGN KEY ([QuoteID]) REFERENCES [Quote] ([ID]),
    CONSTRAINT [FK_Order_Quote_SalesQuoteID] FOREIGN KEY ([SalesQuoteID]) REFERENCES [Quote] ([ID]),
    CONSTRAINT [FK_Order_ShippingMethod_ShippingMethodID] FOREIGN KEY ([ShippingMethodID]) REFERENCES [ShippingMethod] ([ID]),
    CONSTRAINT [FK_Order_WalletAccount_WalletAccountID] FOREIGN KEY ([WalletAccountID]) REFERENCES [WalletAccount] ([ID])
);
GO

CREATE TABLE [PaymentToken] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ValidUntil] datetime2 NOT NULL,
    [LastUpdated] datetime2 NOT NULL,
    [Test] bit NOT NULL,
    [Mask] nvarchar(max) NULL,
    [Data] nvarchar(max) NULL,
    [Token] nvarchar(max) NULL,
    [TokenId] nvarchar(max) NULL,
    [Nonce] nvarchar(max) NULL,
    [Status] nvarchar(max) NULL,
    [ValidSeconds] int NOT NULL,
    [TokenType] nvarchar(max) NULL,
    [ObjectType] nvarchar(max) NULL,
    [CardFranchise] nvarchar(max) NULL,
    [CardExpiratonMonth] nvarchar(max) NULL,
    [CardExpiratonYear] nvarchar(max) NULL,
    [CreatedDateProperty] nvarchar(max) NULL,
    [WalletAccountID] nvarchar(450) NULL,
    [PaymentGatewayID] nvarchar(450) NULL,
    CONSTRAINT [PK_PaymentToken] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PaymentToken_PaymentGateway_PaymentGatewayID] FOREIGN KEY ([PaymentGatewayID]) REFERENCES [PaymentGateway] ([ID]),
    CONSTRAINT [FK_PaymentToken_WalletAccount_WalletAccountID] FOREIGN KEY ([WalletAccountID]) REFERENCES [WalletAccount] ([ID])
);
GO

CREATE TABLE [WalletWithdrawRequest] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [RequestedWithdrawAmount] decimal(18,2) NOT NULL,
    [RequestedWithdrawAmountInUSD] decimal(18,2) NOT NULL,
    [WalletWithdrawRequestStatus] int NOT NULL,
    [ForexRate] nvarchar(max) NULL,
    [ForexRates] nvarchar(max) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [WalletAccountID] nvarchar(450) NULL,
    [BankAccountID] nvarchar(450) NULL,
    CONSTRAINT [PK_WalletWithdrawRequest] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WalletWithdrawRequest_Account_BankAccountID] FOREIGN KEY ([BankAccountID]) REFERENCES [Account] ([ID]),
    CONSTRAINT [FK_WalletWithdrawRequest_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_WalletWithdrawRequest_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_WalletWithdrawRequest_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_WalletWithdrawRequest_WalletAccount_WalletAccountID] FOREIGN KEY ([WalletAccountID]) REFERENCES [WalletAccount] ([ID])
);
GO

CREATE TABLE [Signature] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ValidationCode] nvarchar(max) NULL,
    [SignatureImage] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [SigningProfileID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [SigningDocumentID] nvarchar(450) NULL,
    [SigningCertificateID] nvarchar(450) NULL,
    [AgreementRevisionID] nvarchar(450) NULL,
    [SocialProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_Signature] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Signature_AgreementRevision_AgreementRevisionID] FOREIGN KEY ([AgreementRevisionID]) REFERENCES [AgreementRevision] ([ID]),
    CONSTRAINT [FK_Signature_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_Signature_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Signature_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Signature_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Signature_ContactProfile_SigningProfileID] FOREIGN KEY ([SigningProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Signature_SignedDocument_SigningDocumentID] FOREIGN KEY ([SigningDocumentID]) REFERENCES [SignedDocument] ([ID]),
    CONSTRAINT [FK_Signature_SigningCertificate_SigningCertificateID] FOREIGN KEY ([SigningCertificateID]) REFERENCES [SigningCertificate] ([ID]),
    CONSTRAINT [FK_Signature_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [CourseEnrollment] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [StudentProfileID] nvarchar(450) NULL,
    [CourseCohortID] nvarchar(450) NULL,
    [CourseID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseEnrollment] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseEnrollment_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseEnrollment_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseEnrollment_ContactProfile_StudentProfileID] FOREIGN KEY ([StudentProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_CourseEnrollment_CourseCohort_CourseCohortID] FOREIGN KEY ([CourseCohortID]) REFERENCES [CourseCohort] ([ID]),
    CONSTRAINT [FK_CourseEnrollment_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [CourseGradingCriteriaCategory] (
    [ID] nvarchar(450) NOT NULL,
    [Points] int NOT NULL,
    [Title] nvarchar(max) NULL,
    [Criteria] nvarchar(max) NULL,
    [CourseGradingRubricID] nvarchar(450) NULL,
    [CourseGradingCriteriaID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseGradingCriteriaCategory] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseGradingCriteriaCategory_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseGradingCriteriaCategory_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseGradingCriteriaCategory_CourseGradingCriteria_CourseGradingCriteriaID] FOREIGN KEY ([CourseGradingCriteriaID]) REFERENCES [CourseGradingCriteria] ([ID]),
    CONSTRAINT [FK_CourseGradingCriteriaCategory_CourseGradingRubric_CourseGradingRubricID] FOREIGN KEY ([CourseGradingRubricID]) REFERENCES [CourseGradingRubric] ([ID])
);
GO

CREATE TABLE [CourseHandout] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Content] nvarchar(max) NULL,
    [Url] nvarchar(max) NULL,
    [File] varbinary(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [ReleaseDateTime] datetime2 NOT NULL,
    [CourseID] nvarchar(450) NULL,
    [CourseUnitID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseHandout] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseHandout_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseHandout_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseHandout_CourseUnit_CourseUnitID] FOREIGN KEY ([CourseUnitID]) REFERENCES [CourseUnit] ([ID]),
    CONSTRAINT [FK_CourseHandout_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [CourseLibrary] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [Timestamp] datetime2 NOT NULL,
    [ReleaseDateTime] datetime2 NOT NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [CourseID] nvarchar(450) NULL,
    [CourseUnitID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseLibrary] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseLibrary_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseLibrary_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseLibrary_CourseUnit_CourseUnitID] FOREIGN KEY ([CourseUnitID]) REFERENCES [CourseUnit] ([ID]),
    CONSTRAINT [FK_CourseLibrary_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [CourseProblemSet] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [OverallScore] float NOT NULL,
    [ReleaseDateTime] datetime2 NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [CourseGradingRubricID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [CourseID] nvarchar(450) NULL,
    [CourseUnitID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseProblemSet] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseProblemSet_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseProblemSet_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseProblemSet_CourseGradingRubric_CourseGradingRubricID] FOREIGN KEY ([CourseGradingRubricID]) REFERENCES [CourseGradingRubric] ([ID]),
    CONSTRAINT [FK_CourseProblemSet_CourseUnit_CourseUnitID] FOREIGN KEY ([CourseUnitID]) REFERENCES [CourseUnit] ([ID]),
    CONSTRAINT [FK_CourseProblemSet_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [CourseWiki] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [ReleaseDateTime] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [CourseID] nvarchar(450) NULL,
    [CourseUnitID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseWiki] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseWiki_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseWiki_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseWiki_CourseUnit_CourseUnitID] FOREIGN KEY ([CourseUnitID]) REFERENCES [CourseUnit] ([ID]),
    CONSTRAINT [FK_CourseWiki_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [Payroll] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [PayrollPeriodID] nvarchar(450) NULL,
    CONSTRAINT [PK_Payroll] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Payroll_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Payroll_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Payroll_TimeInterval_PayrollPeriodID] FOREIGN KEY ([PayrollPeriodID]) REFERENCES [TimeInterval] ([ID])
);
GO

CREATE TABLE [ItemOwnership] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ItemBidID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    [CartID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [BlockchainBlockID] nvarchar(450) NULL,
    [WalletAccountID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemOwnership] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemOwnership_BlockchainBlock_BlockchainBlockID] FOREIGN KEY ([BlockchainBlockID]) REFERENCES [BlockchainBlock] ([ID]),
    CONSTRAINT [FK_ItemOwnership_Cart_CartID] FOREIGN KEY ([CartID]) REFERENCES [Cart] ([ID]),
    CONSTRAINT [FK_ItemOwnership_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemOwnership_ItemBid_ItemBidID] FOREIGN KEY ([ItemBidID]) REFERENCES [ItemBid] ([ID]),
    CONSTRAINT [FK_ItemOwnership_WalletAccount_WalletAccountID] FOREIGN KEY ([WalletAccountID]) REFERENCES [WalletAccount] ([ID])
);
GO

CREATE TABLE [Invoice] (
    [ID] nvarchar(450) NOT NULL,
    [Closed] bit NOT NULL,
    [Paid] bit NOT NULL,
    [Number] bigint NOT NULL,
    [Data] nvarchar(max) NULL,
    [Type] nvarchar(max) NOT NULL,
    [Notes] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [TermsAndConditions] nvarchar(max) NULL,
    [Opening] bit NOT NULL,
    [OnHold] bit NOT NULL,
    [Expired] bit NOT NULL,
    [Reported] bit NOT NULL,
    [HoldReason] nvarchar(max) NULL,
    [IgnorePricingRules] bit NOT NULL,
    [RawMaterialsSupplied] bit NOT NULL,
    [ToDate] datetime2 NOT NULL,
    [FromDate] datetime2 NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [PaymentDue] datetime2 NOT NULL,
    [Expiration] datetime2 NOT NULL,
    [ReleaseDate] datetime2 NOT NULL,
    [LastUpdated] datetime2 NOT NULL,
    [ReportedTimestamp] datetime2 NOT NULL,
    [InvoiceType] int NOT NULL,
    [DocumentType] int NOT NULL,
    [InvoiceStatus] int NOT NULL,
    [RemainingAmountInUSD] float NOT NULL,
    [ForexRatesSnapshot] nvarchar(max) NULL,
    [ForexRate] float NOT NULL,
    [TotalBaseAmountInUSD] float NOT NULL,
    [TotalDetailAmountInUSD] float NOT NULL,
    [TotalTaxBaseInUSD] float NOT NULL,
    [TotalDiscountsInUSD] float NOT NULL,
    [TotalProfitInUSD] float NOT NULL,
    [TotalTaxesInUSD] float NOT NULL,
    [TotalWithholdingTaxesInUSD] float NOT NULL,
    [TotalShippingCostInUSD] float NOT NULL,
    [TotalShippingTaxesInUSD] float NOT NULL,
    [TotalWarrantyCostInUSD] float NOT NULL,
    [TotalReturnCostInUSD] float NOT NULL,
    [TotalRefundCostInUSD] float NOT NULL,
    [TotalSurchargesInUSD] float NOT NULL,
    [TotalAmountInUSD] float NOT NULL,
    [CustomBaseAmount] float NOT NULL,
    [CustomDetailAmount] float NOT NULL,
    [CustomTaxBase] float NOT NULL,
    [CustomDiscountsAmount] float NOT NULL,
    [CustomSurchargesAmount] float NOT NULL,
    [CustomProfitAmount] float NOT NULL,
    [CustomShippingCostAmount] float NOT NULL,
    [CustomShippingTaxAmount] float NOT NULL,
    [CustomTaxAmount] float NOT NULL,
    [CustomWithholdingTaxAmount] float NOT NULL,
    [CustomTotalAmount] float NOT NULL,
    [TotalGlobalDiscountsInUSD] float NOT NULL,
    [TotalGlobalSurchargesInUSD] float NOT NULL,
    [CustomGlobalSurchargesAmount] float NOT NULL,
    [CustomGlobalDiscountsAmount] float NOT NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [IndividualID] nvarchar(450) NULL,
    [OrganizationID] nvarchar(450) NULL,
    [ReceptorBusinessID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [OrderID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [ShippingLocationID] nvarchar(450) NULL,
    [BillingLocationID] nvarchar(450) NULL,
    [EmmisorBillingProfileID] nvarchar(450) NULL,
    [ReceptorBillingProfileID] nvarchar(450) NULL,
    [InvoiceEnumerationRangeID] nvarchar(450) NULL,
    [EmmisorWalletAccountID] nvarchar(450) NULL,
    [ReceptorWalletAccountID] nvarchar(450) NULL,
    [PriceListID] nvarchar(450) NULL,
    [PaymentModeID] nvarchar(450) NULL,
    [PaymentTermID] nvarchar(450) NULL,
    [SupplierInvoiceDate] datetime2 NULL,
    [SupplierInvoiceReference] nvarchar(max) NULL,
    [PointOfSaleID] nvarchar(450) NULL,
    CONSTRAINT [PK_Invoice] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Invoice_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_Invoice_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Invoice_Business_ReceptorBusinessID] FOREIGN KEY ([ReceptorBusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Invoice_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Invoice_Contact_IndividualID] FOREIGN KEY ([IndividualID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Invoice_Contact_OrganizationID] FOREIGN KEY ([OrganizationID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Invoice_ContactProfile_EmmisorBillingProfileID] FOREIGN KEY ([EmmisorBillingProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Invoice_ContactProfile_ReceptorBillingProfileID] FOREIGN KEY ([ReceptorBillingProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Invoice_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_Invoice_InvoiceEnumerationRange_InvoiceEnumerationRangeID] FOREIGN KEY ([InvoiceEnumerationRangeID]) REFERENCES [InvoiceEnumerationRange] ([ID]),
    CONSTRAINT [FK_Invoice_Location_BillingLocationID] FOREIGN KEY ([BillingLocationID]) REFERENCES [Location] ([ID]),
    CONSTRAINT [FK_Invoice_Location_ShippingLocationID] FOREIGN KEY ([ShippingLocationID]) REFERENCES [Location] ([ID]),
    CONSTRAINT [FK_Invoice_Order_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [Order] ([ID]),
    CONSTRAINT [FK_Invoice_PaymentMode_PaymentModeID] FOREIGN KEY ([PaymentModeID]) REFERENCES [PaymentMode] ([ID]),
    CONSTRAINT [FK_Invoice_PaymentTerm_PaymentTermID] FOREIGN KEY ([PaymentTermID]) REFERENCES [PaymentTerm] ([ID]),
    CONSTRAINT [FK_Invoice_PointOfSale_PointOfSaleID] FOREIGN KEY ([PointOfSaleID]) REFERENCES [PointOfSale] ([ID]),
    CONSTRAINT [FK_Invoice_PriceList_PriceListID] FOREIGN KEY ([PriceListID]) REFERENCES [PriceList] ([ID]),
    CONSTRAINT [FK_Invoice_WalletAccount_EmmisorWalletAccountID] FOREIGN KEY ([EmmisorWalletAccountID]) REFERENCES [WalletAccount] ([ID]),
    CONSTRAINT [FK_Invoice_WalletAccount_ReceptorWalletAccountID] FOREIGN KEY ([ReceptorWalletAccountID]) REFERENCES [WalletAccount] ([ID])
);
GO

CREATE TABLE [ItemPackingSlip] (
    [ID] nvarchar(450) NOT NULL,
    [Instructions] nvarchar(max) NULL,
    [DeliveryNoteID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [OrderID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemPackingSlip] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemPackingSlip_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ItemPackingSlip_DeliveryNote_DeliveryNoteID] FOREIGN KEY ([DeliveryNoteID]) REFERENCES [DeliveryNote] ([ID]),
    CONSTRAINT [FK_ItemPackingSlip_Order_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [Order] ([ID])
);
GO

CREATE TABLE [ItemPickList] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [OrderID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [WarehouseID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemPickList] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemPickList_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ItemPickList_Location_WarehouseID] FOREIGN KEY ([WarehouseID]) REFERENCES [Location] ([ID]),
    CONSTRAINT [FK_ItemPickList_Order_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [Order] ([ID])
);
GO

CREATE TABLE [OrderRelation] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [OrderID] nvarchar(450) NULL,
    [ProjectID] nvarchar(450) NULL,
    CONSTRAINT [PK_OrderRelation] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_OrderRelation_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_OrderRelation_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_OrderRelation_Order_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [Order] ([ID]),
    CONSTRAINT [FK_OrderRelation_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID])
);
GO

CREATE TABLE [Shipment] (
    [ID] nvarchar(450) NOT NULL,
    [IsInternational] bit NOT NULL,
    [Delivered] bit NOT NULL,
    [Shipped] bit NOT NULL,
    [ShippngTimestamp] datetime2 NOT NULL,
    [DeliveryTimestamp] datetime2 NOT NULL,
    [ExpectedShippingDate] datetime2 NOT NULL,
    [ExpectedDeliveryDate] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [OrderID] nvarchar(450) NULL,
    [BillingItemRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_Shipment] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Shipment_BillingItemRecord_BillingItemRecordID] FOREIGN KEY ([BillingItemRecordID]) REFERENCES [BillingItemRecord] ([ID]),
    CONSTRAINT [FK_Shipment_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Shipment_Order_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [Order] ([ID])
);
GO

CREATE TABLE [Entitlement] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Status] int NOT NULL,
    [Quantity] int NOT NULL,
    [Repetitions] int NOT NULL,
    [ChargeAttempts] int NOT NULL,
    [FreeTrialInDays] int NOT NULL,
    [GracePeriodInDays] int NOT NULL,
    [CustomRenewalPeriod] int NOT NULL,
    [RenewalPeriod] int NOT NULL,
    [EnableAutomaticRenew] bit NOT NULL,
    [EnableAutomaticDisable] bit NOT NULL,
    [EnableAutomaticPayments] bit NOT NULL,
    [Data] nvarchar(max) NULL,
    [DataLabel] nvarchar(max) NULL,
    [Data1] nvarchar(max) NULL,
    [Data1Label] nvarchar(max) NULL,
    [Data2] nvarchar(max) NULL,
    [Data2Label] nvarchar(max) NULL,
    [Data3] nvarchar(max) NULL,
    [Data3Label] nvarchar(max) NULL,
    [Data4] nvarchar(max) NULL,
    [Data4Label] nvarchar(max) NULL,
    [Data5] nvarchar(max) NULL,
    [Data5Label] nvarchar(max) NULL,
    [Data6] nvarchar(max) NULL,
    [Data6Label] nvarchar(max) NULL,
    [Data7] nvarchar(max) NULL,
    [Data7Label] nvarchar(max) NULL,
    [Data8] nvarchar(max) NULL,
    [Data8Label] nvarchar(max) NULL,
    [Data9] nvarchar(max) NULL,
    [Data9Label] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [StartDateTime] datetime2 NOT NULL,
    [EndDateTime] datetime2 NOT NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [IndividualID] nvarchar(450) NULL,
    [OrganizationID] nvarchar(450) NULL,
    [ReceptorBusinessID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [PaymentTokenID] nvarchar(450) NULL,
    [ContactProfileID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [Code] nvarchar(max) NULL,
    [Signature] nvarchar(max) NULL,
    [PassPhrase] nvarchar(max) NULL,
    [Class] int NULL,
    [LicenseTypeID] nvarchar(450) NULL,
    [LicensingProfileID] nvarchar(450) NULL,
    [ServiceID] nvarchar(450) NULL,
    [ServiceLevelID] nvarchar(450) NULL,
    [SubscriptionPlanID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [WalletAccountID] nvarchar(450) NULL,
    [EmployeeBenefitID] nvarchar(450) NULL,
    [EmployeeProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_Entitlement] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Entitlement_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_Entitlement_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Entitlement_Business_ReceptorBusinessID] FOREIGN KEY ([ReceptorBusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Entitlement_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Entitlement_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Entitlement_Contact_IndividualID] FOREIGN KEY ([IndividualID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Entitlement_Contact_OrganizationID] FOREIGN KEY ([OrganizationID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Entitlement_ContactProfile_ContactProfileID] FOREIGN KEY ([ContactProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Entitlement_ContactProfile_EmployeeProfileID] FOREIGN KEY ([EmployeeProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Entitlement_ContactProfile_LicensingProfileID] FOREIGN KEY ([LicensingProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Entitlement_EmployeeBenefit_EmployeeBenefitID] FOREIGN KEY ([EmployeeBenefitID]) REFERENCES [EmployeeBenefit] ([ID]),
    CONSTRAINT [FK_Entitlement_Item_LicenseTypeID] FOREIGN KEY ([LicenseTypeID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_Entitlement_Item_ServiceID] FOREIGN KEY ([ServiceID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_Entitlement_Item_ServiceLevelID] FOREIGN KEY ([ServiceLevelID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_Entitlement_Item_SubscriptionPlanID] FOREIGN KEY ([SubscriptionPlanID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_Entitlement_PaymentToken_PaymentTokenID] FOREIGN KEY ([PaymentTokenID]) REFERENCES [PaymentToken] ([ID]),
    CONSTRAINT [FK_Entitlement_WalletAccount_WalletAccountID] FOREIGN KEY ([WalletAccountID]) REFERENCES [WalletAccount] ([ID])
);
GO

CREATE TABLE [WalletWithdraw] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [WithdrawStatus] int NOT NULL,
    [WalletAccountID] nvarchar(450) NULL,
    [WalletWithdrawRequestID] nvarchar(450) NULL,
    [ForexRate] nvarchar(max) NULL,
    [ForexRates] nvarchar(max) NULL,
    [BalanceBeforeWithdraw] decimal(18,2) NOT NULL,
    [BalanceAfterWithdraw] decimal(18,2) NOT NULL,
    [WithdrawedAmount] decimal(18,2) NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    CONSTRAINT [PK_WalletWithdraw] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WalletWithdraw_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_WalletWithdraw_WalletAccount_WalletAccountID] FOREIGN KEY ([WalletAccountID]) REFERENCES [WalletAccount] ([ID]),
    CONSTRAINT [FK_WalletWithdraw_WalletWithdrawRequest_WalletWithdrawRequestID] FOREIGN KEY ([WalletWithdrawRequestID]) REFERENCES [WalletWithdrawRequest] ([ID])
);
GO

CREATE TABLE [CourseAssignment] (
    [ID] nvarchar(450) NOT NULL,
    [AsignToAllCohorts] bit NOT NULL,
    [Points] float NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Instructions] nvarchar(max) NULL,
    [DueDateTime] datetime2 NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Resources] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [CourseID] nvarchar(450) NULL,
    [CourseCohortID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [CourseGradingRubricID] nvarchar(450) NULL,
    [CourseProblemSetID] nvarchar(450) NULL,
    [CourseUnitID] nvarchar(450) NULL,
    [CourseAssignmentTypeID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseAssignment] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseAssignment_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseAssignment_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseAssignment_CourseAssignmentType_CourseAssignmentTypeID] FOREIGN KEY ([CourseAssignmentTypeID]) REFERENCES [CourseAssignmentType] ([ID]),
    CONSTRAINT [FK_CourseAssignment_CourseCohort_CourseCohortID] FOREIGN KEY ([CourseCohortID]) REFERENCES [CourseCohort] ([ID]),
    CONSTRAINT [FK_CourseAssignment_CourseGradingRubric_CourseGradingRubricID] FOREIGN KEY ([CourseGradingRubricID]) REFERENCES [CourseGradingRubric] ([ID]),
    CONSTRAINT [FK_CourseAssignment_CourseProblemSet_CourseProblemSetID] FOREIGN KEY ([CourseProblemSetID]) REFERENCES [CourseProblemSet] ([ID]),
    CONSTRAINT [FK_CourseAssignment_CourseUnit_CourseUnitID] FOREIGN KEY ([CourseUnitID]) REFERENCES [CourseUnit] ([ID]),
    CONSTRAINT [FK_CourseAssignment_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [PayrollEntry] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [BankAccountID] nvarchar(450) NULL,
    [SalaryID] nvarchar(450) NULL,
    [PayrollID] nvarchar(450) NULL,
    CONSTRAINT [PK_PayrollEntry] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PayrollEntry_Account_BankAccountID] FOREIGN KEY ([BankAccountID]) REFERENCES [Account] ([ID]),
    CONSTRAINT [FK_PayrollEntry_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_PayrollEntry_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_PayrollEntry_Payroll_PayrollID] FOREIGN KEY ([PayrollID]) REFERENCES [Payroll] ([ID]),
    CONSTRAINT [FK_PayrollEntry_Salary_SalaryID] FOREIGN KEY ([SalaryID]) REFERENCES [Salary] ([ID])
);
GO

CREATE TABLE [InvoiceAdjustment] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Priority] int NOT NULL,
    [Description] nvarchar(max) NULL,
    [Code] nvarchar(max) NULL,
    [DiscountPercent] float NOT NULL,
    [SurchargePercent] float NOT NULL,
    [DiscountAmount] float NOT NULL,
    [SurchargeAmount] float NOT NULL,
    [TotalDiscount] float NOT NULL,
    [TotalSurcharge] float NOT NULL,
    [Type] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [InvoiceID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    CONSTRAINT [PK_InvoiceAdjustment] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_InvoiceAdjustment_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_InvoiceAdjustment_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_InvoiceAdjustment_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_InvoiceAdjustment_Invoice_InvoiceID] FOREIGN KEY ([InvoiceID]) REFERENCES [Invoice] ([ID])
);
GO

CREATE TABLE [InvoiceReference] (
    [ID] nvarchar(450) NOT NULL,
    [ReferralInvoiceID] nvarchar(450) NULL,
    [ReferencedInvoiceID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_InvoiceReference] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_InvoiceReference_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_InvoiceReference_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_InvoiceReference_Invoice_ReferencedInvoiceID] FOREIGN KEY ([ReferencedInvoiceID]) REFERENCES [Invoice] ([ID]),
    CONSTRAINT [FK_InvoiceReference_Invoice_ReferralInvoiceID] FOREIGN KEY ([ReferralInvoiceID]) REFERENCES [Invoice] ([ID])
);
GO

CREATE TABLE [InvoiceRelation] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [InvoiceID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Type] nvarchar(max) NOT NULL,
    [ProjectID] nvarchar(450) NULL,
    CONSTRAINT [PK_InvoiceRelation] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_InvoiceRelation_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_InvoiceRelation_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_InvoiceRelation_Invoice_InvoiceID] FOREIGN KEY ([InvoiceID]) REFERENCES [Invoice] ([ID]),
    CONSTRAINT [FK_InvoiceRelation_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID])
);
GO

CREATE TABLE [ItemPackingSlipEntry] (
    [ID] nvarchar(450) NOT NULL,
    [Quantity] nvarchar(max) NULL,
    [ItemID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ItemPackingSlipID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemPackingSlipEntry] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemPackingSlipEntry_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ItemPackingSlipEntry_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemPackingSlipEntry_ItemPackingSlip_ItemPackingSlipID] FOREIGN KEY ([ItemPackingSlipID]) REFERENCES [ItemPackingSlip] ([ID])
);
GO

CREATE TABLE [ItemPickListEntry] (
    [ID] nvarchar(450) NOT NULL,
    [Quantity] float NOT NULL,
    [ItemID] nvarchar(450) NULL,
    [WarehouseID] nvarchar(450) NULL,
    [ItemPickListID] nvarchar(450) NULL,
    [OrderItemRecordID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BillingCouponCartRecordID] nvarchar(450) NULL,
    [BillingCouponItemRecordID] nvarchar(450) NULL,
    [BillingCouponOrderRecordID] nvarchar(450) NULL,
    [DealUnitItemRecordID] nvarchar(450) NULL,
    [InvoiceItemRecordID] nvarchar(450) NULL,
    [QuoteItemRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemPickListEntry] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemPickListEntry_BillingItemRecord_BillingCouponCartRecordID] FOREIGN KEY ([BillingCouponCartRecordID]) REFERENCES [BillingItemRecord] ([ID]),
    CONSTRAINT [FK_ItemPickListEntry_BillingItemRecord_BillingCouponItemRecordID] FOREIGN KEY ([BillingCouponItemRecordID]) REFERENCES [BillingItemRecord] ([ID]),
    CONSTRAINT [FK_ItemPickListEntry_BillingItemRecord_BillingCouponOrderRecordID] FOREIGN KEY ([BillingCouponOrderRecordID]) REFERENCES [BillingItemRecord] ([ID]),
    CONSTRAINT [FK_ItemPickListEntry_BillingItemRecord_DealUnitItemRecordID] FOREIGN KEY ([DealUnitItemRecordID]) REFERENCES [BillingItemRecord] ([ID]),
    CONSTRAINT [FK_ItemPickListEntry_BillingItemRecord_InvoiceItemRecordID] FOREIGN KEY ([InvoiceItemRecordID]) REFERENCES [BillingItemRecord] ([ID]),
    CONSTRAINT [FK_ItemPickListEntry_BillingItemRecord_OrderItemRecordID] FOREIGN KEY ([OrderItemRecordID]) REFERENCES [BillingItemRecord] ([ID]),
    CONSTRAINT [FK_ItemPickListEntry_BillingItemRecord_QuoteItemRecordID] FOREIGN KEY ([QuoteItemRecordID]) REFERENCES [BillingItemRecord] ([ID]),
    CONSTRAINT [FK_ItemPickListEntry_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ItemPickListEntry_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ItemPickListEntry_ItemPickList_ItemPickListID] FOREIGN KEY ([ItemPickListID]) REFERENCES [ItemPickList] ([ID]),
    CONSTRAINT [FK_ItemPickListEntry_Location_WarehouseID] FOREIGN KEY ([WarehouseID]) REFERENCES [Location] ([ID])
);
GO

CREATE TABLE [ShippingLabel] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ExpectedDelivery] datetime2 NOT NULL,
    [TrackingCode] nvarchar(max) NULL,
    [LocationID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ShipmentID] nvarchar(450) NULL,
    [ShippingCourierID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShippingLabel] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShippingLabel_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ShippingLabel_Location_LocationID] FOREIGN KEY ([LocationID]) REFERENCES [Location] ([ID]),
    CONSTRAINT [FK_ShippingLabel_Shipment_ShipmentID] FOREIGN KEY ([ShipmentID]) REFERENCES [Shipment] ([ID]),
    CONSTRAINT [FK_ShippingLabel_ShippingCourier_ShippingCourierID] FOREIGN KEY ([ShippingCourierID]) REFERENCES [ShippingCourier] ([ID])
);
GO

CREATE TABLE [LicenseAssignment] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [LicenseID] nvarchar(450) NULL,
    [LicensingProfileID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_LicenseAssignment] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_LicenseAssignment_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_LicenseAssignment_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_LicenseAssignment_ContactProfile_LicensingProfileID] FOREIGN KEY ([LicensingProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_LicenseAssignment_Entitlement_LicenseID] FOREIGN KEY ([LicenseID]) REFERENCES [Entitlement] ([ID])
);
GO

CREATE TABLE [Payment] (
    [ID] nvarchar(450) NOT NULL,
    [Closed] bit NOT NULL,
    [Test] bit NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [Data] nvarchar(max) NULL,
    [DataLabel] nvarchar(max) NULL,
    [Data1] nvarchar(max) NULL,
    [Data1Label] nvarchar(max) NULL,
    [Data2] nvarchar(max) NULL,
    [Data2Label] nvarchar(max) NULL,
    [Data3] nvarchar(max) NULL,
    [Data3Label] nvarchar(max) NULL,
    [Data4] nvarchar(max) NULL,
    [Data4Label] nvarchar(max) NULL,
    [Data5] nvarchar(max) NULL,
    [Data5Label] nvarchar(max) NULL,
    [Data6] nvarchar(max) NULL,
    [Data6Label] nvarchar(max) NULL,
    [Data7] nvarchar(max) NULL,
    [Data7Label] nvarchar(max) NULL,
    [Data8] nvarchar(max) NULL,
    [Data8Label] nvarchar(max) NULL,
    [Data9] nvarchar(max) NULL,
    [Data9Label] nvarchar(max) NULL,
    [Response] nvarchar(max) NULL,
    [Authorization] nvarchar(max) NULL,
    [ReferenceCode] nvarchar(max) NULL,
    [CorrelationCode] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [LastUpdated] datetime2 NOT NULL,
    [OnBehalfOf] int NOT NULL,
    [PaymentType] int NOT NULL,
    [PaymentStatus] int NOT NULL,
    [ForexRate] decimal(18,2) NOT NULL,
    [BaseCost] decimal(18,2) NOT NULL,
    [TotalCost] decimal(18,2) NOT NULL,
    [TotalTaxes] decimal(18,2) NOT NULL,
    [Signature] nvarchar(max) NULL,
    [SignatureMismatch] bit NOT NULL,
    [IsExternal] bit NOT NULL,
    [MarkedForRevision] bit NOT NULL,
    [ForexRatesSnapshot] nvarchar(max) NULL,
    [OfficialID] nvarchar(max) NULL,
    [OfficialIDExpeditionDate] datetime2 NOT NULL,
    [FiscalIdentificationTypeID] nvarchar(450) NULL,
    [BillingAddress] nvarchar(max) NULL,
    [Phone] nvarchar(max) NULL,
    [Cellphone] nvarchar(max) NULL,
    [Department] nvarchar(max) NULL,
    [City] nvarchar(max) NULL,
    [CountryID] nvarchar(450) NULL,
    [LocationID] nvarchar(450) NULL,
    [EntitlementID] nvarchar(450) NULL,
    [AntiFraudScore] decimal(18,2) NOT NULL,
    [CallRecord] varbinary(max) NULL,
    [CallRecordURL] nvarchar(max) NULL,
    [Called] bit NOT NULL,
    [Verified] bit NOT NULL,
    [PayerPictureTimestamp] nvarchar(max) NULL,
    [PayerPicture] nvarchar(max) NULL,
    [IdentificationPictureTimestamp] nvarchar(max) NULL,
    [IdentificationPicture] nvarchar(max) NULL,
    [IdentificationBackPicture] nvarchar(max) NULL,
    [IdentificationBackPictureTimestamp] nvarchar(max) NULL,
    [IPLookupID] nvarchar(450) NULL,
    [CurrencyID] nvarchar(450) NULL,
    [InvoiceID] nvarchar(450) NULL,
    [OrderID] nvarchar(450) NULL,
    [AccountingEntryID] nvarchar(450) NULL,
    [PaymentGatewayID] nvarchar(450) NULL,
    [BankAccountID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [PayerBusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [IndividualID] nvarchar(450) NULL,
    [OrganizationID] nvarchar(450) NULL,
    [BankID] nvarchar(450) NULL,
    [PaymentTokenID] nvarchar(450) NULL,
    [EmmisorWalletAccountID] nvarchar(450) NULL,
    [ReceptorWalletAccountID] nvarchar(450) NULL,
    CONSTRAINT [PK_Payment] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Payment_Account_BankAccountID] FOREIGN KEY ([BankAccountID]) REFERENCES [Account] ([ID]),
    CONSTRAINT [FK_Payment_AccountingEntry_AccountingEntryID] FOREIGN KEY ([AccountingEntryID]) REFERENCES [AccountingEntry] ([ID]),
    CONSTRAINT [FK_Payment_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_Payment_Bank_BankID] FOREIGN KEY ([BankID]) REFERENCES [Bank] ([ID]),
    CONSTRAINT [FK_Payment_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Payment_Business_PayerBusinessID] FOREIGN KEY ([PayerBusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Payment_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Payment_Contact_IndividualID] FOREIGN KEY ([IndividualID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Payment_Contact_OrganizationID] FOREIGN KEY ([OrganizationID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Payment_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_Payment_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_Payment_Entitlement_EntitlementID] FOREIGN KEY ([EntitlementID]) REFERENCES [Entitlement] ([ID]),
    CONSTRAINT [FK_Payment_FiscalIdentificationType_FiscalIdentificationTypeID] FOREIGN KEY ([FiscalIdentificationTypeID]) REFERENCES [FiscalIdentificationType] ([ID]),
    CONSTRAINT [FK_Payment_Invoice_InvoiceID] FOREIGN KEY ([InvoiceID]) REFERENCES [Invoice] ([ID]),
    CONSTRAINT [FK_Payment_IPLookup_IPLookupID] FOREIGN KEY ([IPLookupID]) REFERENCES [IPLookup] ([ID]),
    CONSTRAINT [FK_Payment_Location_LocationID] FOREIGN KEY ([LocationID]) REFERENCES [Location] ([ID]),
    CONSTRAINT [FK_Payment_Order_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [Order] ([ID]),
    CONSTRAINT [FK_Payment_PaymentGateway_PaymentGatewayID] FOREIGN KEY ([PaymentGatewayID]) REFERENCES [PaymentGateway] ([ID]),
    CONSTRAINT [FK_Payment_PaymentToken_PaymentTokenID] FOREIGN KEY ([PaymentTokenID]) REFERENCES [PaymentToken] ([ID]),
    CONSTRAINT [FK_Payment_WalletAccount_EmmisorWalletAccountID] FOREIGN KEY ([EmmisorWalletAccountID]) REFERENCES [WalletAccount] ([ID]),
    CONSTRAINT [FK_Payment_WalletAccount_ReceptorWalletAccountID] FOREIGN KEY ([ReceptorWalletAccountID]) REFERENCES [WalletAccount] ([ID])
);
GO

CREATE TABLE [ServiceCase] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [IndividualID] nvarchar(450) NULL,
    [OrganizationID] nvarchar(450) NULL,
    [ReceptorBusinessID] nvarchar(450) NULL,
    [ServiceID] nvarchar(450) NULL,
    [ServiceQueueID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ServiceLevelAgreementID] nvarchar(450) NULL,
    [ServiceCaseTypeID] nvarchar(450) NULL,
    CONSTRAINT [PK_ServiceCase] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ServiceCase_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_ServiceCase_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ServiceCase_Business_ReceptorBusinessID] FOREIGN KEY ([ReceptorBusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ServiceCase_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ServiceCase_Contact_IndividualID] FOREIGN KEY ([IndividualID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_ServiceCase_Contact_OrganizationID] FOREIGN KEY ([OrganizationID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_ServiceCase_Entitlement_ServiceLevelAgreementID] FOREIGN KEY ([ServiceLevelAgreementID]) REFERENCES [Entitlement] ([ID]),
    CONSTRAINT [FK_ServiceCase_Item_ServiceID] FOREIGN KEY ([ServiceID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ServiceCase_ServiceCaseType_ServiceCaseTypeID] FOREIGN KEY ([ServiceCaseTypeID]) REFERENCES [ServiceCaseType] ([ID]),
    CONSTRAINT [FK_ServiceCase_ServiceQueue_ServiceQueueID] FOREIGN KEY ([ServiceQueueID]) REFERENCES [ServiceQueue] ([ID])
);
GO

CREATE TABLE [SupportPriority] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [SupportEntitlementID] nvarchar(450) NULL,
    CONSTRAINT [PK_SupportPriority] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SupportPriority_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SupportPriority_Entitlement_SupportEntitlementID] FOREIGN KEY ([SupportEntitlementID]) REFERENCES [Entitlement] ([ID])
);
GO

CREATE TABLE [CourseAssignmentSubmit] (
    [ID] nvarchar(450) NOT NULL,
    [Content] nvarchar(max) NULL,
    [Result] nvarchar(max) NULL,
    [Score] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [CourseAssignmentID] nvarchar(450) NULL,
    [GradingCriteriaCategoryID] nvarchar(450) NULL,
    [InstructorProfileID] nvarchar(450) NULL,
    [CourseID] nvarchar(450) NULL,
    [StudentProfileID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseAssignmentSubmit] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseAssignmentSubmit_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseAssignmentSubmit_ContactProfile_InstructorProfileID] FOREIGN KEY ([InstructorProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_CourseAssignmentSubmit_ContactProfile_StudentProfileID] FOREIGN KEY ([StudentProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_CourseAssignmentSubmit_CourseAssignment_CourseAssignmentID] FOREIGN KEY ([CourseAssignmentID]) REFERENCES [CourseAssignment] ([ID]),
    CONSTRAINT [FK_CourseAssignmentSubmit_CourseGradingCriteriaCategory_GradingCriteriaCategoryID] FOREIGN KEY ([GradingCriteriaCategoryID]) REFERENCES [CourseGradingCriteriaCategory] ([ID]),
    CONSTRAINT [FK_CourseAssignmentSubmit_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID])
);
GO

CREATE TABLE [WebContent] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [Order] int NOT NULL,
    [Slug] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [Excerpt] nvarchar(max) NULL,
    [Password] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [HighlightImage] nvarchar(max) NULL,
    [CanonicalUrl] nvarchar(max) NULL,
    [SeoTitle] nvarchar(max) NULL,
    [SeoKeyWords] nvarchar(max) NULL,
    [SeoKeyPhrases] nvarchar(max) NULL,
    [MetaDescription] nvarchar(max) NULL,
    [TwitterImage] nvarchar(max) NULL,
    [TwitterTitle] nvarchar(max) NULL,
    [TwitterDescription] nvarchar(max) NULL,
    [FacebookImage] nvarchar(max) NULL,
    [FacebookTitle] nvarchar(max) NULL,
    [FacebookDescription] nvarchar(max) NULL,
    [FeaturedImageURL] nvarchar(max) NULL,
    [Content] nvarchar(max) NULL,
    [Code] nvarchar(max) NULL,
    [Namespace] nvarchar(max) NULL,
    [TypeName] nvarchar(max) NULL,
    [GeneratedCode] nvarchar(max) NULL,
    [CompiledCode] varbinary(max) NULL,
    [CompilationPath] nvarchar(max) NULL,
    [CodeType] int NULL,
    [HTMLContent] nvarchar(max) NULL,
    [CSharpContent] nvarchar(max) NULL,
    [RazorContent] nvarchar(max) NULL,
    [CSSContent] nvarchar(max) NULL,
    [JSContent] nvarchar(max) NULL,
    [CSSFiles] nvarchar(max) NULL,
    [JSFiles] nvarchar(max) NULL,
    [RazorGeneratedCode] nvarchar(max) NULL,
    [CSharpGeneratedCode] nvarchar(max) NULL,
    [PrecompiledView] varbinary(max) NULL,
    [PrecompiledLogic] varbinary(max) NULL,
    [PrecompiledLogicSize] int NOT NULL,
    [PrecompiledLogicSizeLong] bigint NOT NULL,
    [PrecompiledViewSize] int NOT NULL,
    [PrecompiledViewSizeLong] bigint NOT NULL,
    [PrecompiledLogicViewSize] int NOT NULL,
    [Template] bit NOT NULL,
    [Default] bit NOT NULL,
    [Enable] bit NOT NULL,
    [EnableComments] bit NOT NULL,
    [DisplaySocialBox] bit NOT NULL,
    [Published] bit NOT NULL,
    [InTrashCan] bit NOT NULL,
    [SystemLocked] bit NOT NULL,
    [AllowPingbacks] bit NOT NULL,
    [AllowTrackbacks] bit NOT NULL,
    [CornerstoneContent] bit NOT NULL,
    [IsEssentialContent] bit NOT NULL,
    [AllowSearchEngineIndexing] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ReleaseDateTime] datetime2 NOT NULL,
    [LastModification] datetime2 NOT NULL,
    [TrashedTimestamp] datetime2 NOT NULL,
    [DeletionTimestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [WebPortalID] nvarchar(450) NULL,
    [WebsiteThemeID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ParentWebContentID] nvarchar(450) NULL,
    [ParentWebContentVersionID] nvarchar(450) NULL,
    [CourseAssignmentID] nvarchar(450) NULL,
    [CourseAssignmentComponent_CourseID] nvarchar(450) NULL,
    [Form] nvarchar(max) NULL,
    [WebForum_WebTemplateID] nvarchar(450) NULL,
    [WebForumCategoryID] nvarchar(450) NULL,
    [CourseForum_CourseID] nvarchar(450) NULL,
    [WebPage_WebTemplateID] nvarchar(450) NULL,
    [IsHomePage] bit NULL,
    [IsStorePage] bit NULL,
    [IsCartPage] bit NULL,
    [IsBlogPage] bit NULL,
    [IsAccountPage] bit NULL,
    [IsCheckoutPage] bit NULL,
    [IsWishListsPage] bit NULL,
    [IsContactPage] bit NULL,
    [IsPrivacyPolicyPage] bit NULL,
    [IsTermsOfServicePage] bit NULL,
    [WebPageVisibility] int NULL,
    [WebPage_WebFormID] nvarchar(450) NULL,
    [BlogPostCategoryID] nvarchar(450) NULL,
    [WebTemplateID] nvarchar(450) NULL,
    [WebFormID] nvarchar(450) NULL,
    [CourseWikiID] nvarchar(450) NULL,
    [CourseID] nvarchar(450) NULL,
    [CourseCompletionCertificateTemplate_CourseID] nvarchar(450) NULL,
    [CourseUnitID] nvarchar(450) NULL,
    [CourseUnitComponent_CourseID] nvarchar(450) NULL,
    [CoursePage_CourseID] nvarchar(450) NULL,
    [CourseUpdate_CourseID] nvarchar(450) NULL,
    [MarketingCampaignID] nvarchar(450) NULL,
    [NewsletterID] nvarchar(450) NULL,
    CONSTRAINT [PK_WebContent] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WebContent_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_WebContent_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_WebContent_CourseAssignment_CourseAssignmentID] FOREIGN KEY ([CourseAssignmentID]) REFERENCES [CourseAssignment] ([ID]),
    CONSTRAINT [FK_WebContent_CourseUnit_CourseUnitID] FOREIGN KEY ([CourseUnitID]) REFERENCES [CourseUnit] ([ID]),
    CONSTRAINT [FK_WebContent_CourseWiki_CourseWikiID] FOREIGN KEY ([CourseWikiID]) REFERENCES [CourseWiki] ([ID]),
    CONSTRAINT [FK_WebContent_Item_CourseAssignmentComponent_CourseID] FOREIGN KEY ([CourseAssignmentComponent_CourseID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_WebContent_Item_CourseCompletionCertificateTemplate_CourseID] FOREIGN KEY ([CourseCompletionCertificateTemplate_CourseID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_WebContent_Item_CourseForum_CourseID] FOREIGN KEY ([CourseForum_CourseID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_WebContent_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_WebContent_Item_CoursePage_CourseID] FOREIGN KEY ([CoursePage_CourseID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_WebContent_Item_CourseUnitComponent_CourseID] FOREIGN KEY ([CourseUnitComponent_CourseID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_WebContent_Item_CourseUpdate_CourseID] FOREIGN KEY ([CourseUpdate_CourseID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_WebContent_MarketingCampaign_MarketingCampaignID] FOREIGN KEY ([MarketingCampaignID]) REFERENCES [MarketingCampaign] ([ID]),
    CONSTRAINT [FK_WebContent_Newsletter_NewsletterID] FOREIGN KEY ([NewsletterID]) REFERENCES [Newsletter] ([ID]),
    CONSTRAINT [FK_WebContent_Taxonomy_BlogPostCategoryID] FOREIGN KEY ([BlogPostCategoryID]) REFERENCES [Taxonomy] ([ID]),
    CONSTRAINT [FK_WebContent_Taxonomy_WebForumCategoryID] FOREIGN KEY ([WebForumCategoryID]) REFERENCES [Taxonomy] ([ID]),
    CONSTRAINT [FK_WebContent_WebContent_ParentWebContentID] FOREIGN KEY ([ParentWebContentID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_WebContent_WebContent_ParentWebContentVersionID] FOREIGN KEY ([ParentWebContentVersionID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_WebContent_WebContent_WebFormID] FOREIGN KEY ([WebFormID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_WebContent_WebContent_WebForum_WebTemplateID] FOREIGN KEY ([WebForum_WebTemplateID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_WebContent_WebContent_WebPage_WebFormID] FOREIGN KEY ([WebPage_WebFormID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_WebContent_WebContent_WebPage_WebTemplateID] FOREIGN KEY ([WebPage_WebTemplateID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_WebContent_WebContent_WebTemplateID] FOREIGN KEY ([WebTemplateID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_WebContent_WebPortal_WebPortalID] FOREIGN KEY ([WebPortalID]) REFERENCES [WebPortal] ([ID]),
    CONSTRAINT [FK_WebContent_WebsiteTheme_WebsiteThemeID] FOREIGN KEY ([WebsiteThemeID]) REFERENCES [WebsiteTheme] ([ID])
);
GO

CREATE TABLE [ShippingPackage] (
    [ID] nvarchar(450) NOT NULL,
    [Code] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [Width] float NOT NULL,
    [Length] float NOT NULL,
    [Height] float NOT NULL,
    [EmptyWeight] float NOT NULL,
    [ServicePackage] bit NOT NULL,
    [ShippingCourierID] nvarchar(450) NULL,
    [ShippingLabelID] nvarchar(450) NULL,
    [SpatialUnit] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    CONSTRAINT [PK_ShippingPackage] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ShippingPackage_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ShippingPackage_ShippingCourier_ShippingCourierID] FOREIGN KEY ([ShippingCourierID]) REFERENCES [ShippingCourier] ([ID]),
    CONSTRAINT [FK_ShippingPackage_ShippingLabel_ShippingLabelID] FOREIGN KEY ([ShippingLabelID]) REFERENCES [ShippingLabel] ([ID])
);
GO

CREATE TABLE [PaymentDeduction] (
    [ID] nvarchar(450) NOT NULL,
    [Amount] float NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [PaymentID] nvarchar(450) NULL,
    [AccountID] nvarchar(450) NULL,
    [CostCentreID] nvarchar(450) NULL,
    CONSTRAINT [PK_PaymentDeduction] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PaymentDeduction_Account_AccountID] FOREIGN KEY ([AccountID]) REFERENCES [Account] ([ID]),
    CONSTRAINT [FK_PaymentDeduction_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_PaymentDeduction_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_PaymentDeduction_CostCentre_CostCentreID] FOREIGN KEY ([CostCentreID]) REFERENCES [CostCentre] ([ID]),
    CONSTRAINT [FK_PaymentDeduction_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_PaymentDeduction_Payment_PaymentID] FOREIGN KEY ([PaymentID]) REFERENCES [Payment] ([ID])
);
GO

CREATE TABLE [PaymentDispute] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Closed] bit NOT NULL,
    [DisputedAmount] decimal(18,2) NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [PaymentID] nvarchar(450) NULL,
    [PaymentGatewayID] nvarchar(450) NULL,
    [EmmisorWalletAccountID] nvarchar(450) NULL,
    [ReceptorWalletAccountID] nvarchar(450) NULL,
    CONSTRAINT [PK_PaymentDispute] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PaymentDispute_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_PaymentDispute_Payment_PaymentID] FOREIGN KEY ([PaymentID]) REFERENCES [Payment] ([ID]),
    CONSTRAINT [FK_PaymentDispute_PaymentGateway_PaymentGatewayID] FOREIGN KEY ([PaymentGatewayID]) REFERENCES [PaymentGateway] ([ID]),
    CONSTRAINT [FK_PaymentDispute_WalletAccount_EmmisorWalletAccountID] FOREIGN KEY ([EmmisorWalletAccountID]) REFERENCES [WalletAccount] ([ID]),
    CONSTRAINT [FK_PaymentDispute_WalletAccount_ReceptorWalletAccountID] FOREIGN KEY ([ReceptorWalletAccountID]) REFERENCES [WalletAccount] ([ID])
);
GO

CREATE TABLE [Receipt] (
    [ID] nvarchar(450) NOT NULL,
    [Closed] bit NOT NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Timestamp] datetime2 NOT NULL,
    [ReceiptType] int NOT NULL,
    [OrderID] nvarchar(450) NULL,
    [InvoiceID] nvarchar(450) NULL,
    [PaymentID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Receipt] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Receipt_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_Receipt_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Receipt_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Receipt_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Receipt_Invoice_InvoiceID] FOREIGN KEY ([InvoiceID]) REFERENCES [Invoice] ([ID]),
    CONSTRAINT [FK_Receipt_Order_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [Order] ([ID]),
    CONSTRAINT [FK_Receipt_Payment_PaymentID] FOREIGN KEY ([PaymentID]) REFERENCES [Payment] ([ID])
);
GO

CREATE TABLE [SupportRequest] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [Approved] bit NOT NULL,
    [ApprovedTimestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [SupportEntitlementID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [RefundPolicyID] nvarchar(450) NULL,
    [PaymentID] nvarchar(450) NULL,
    [ReturnPolicyID] nvarchar(450) NULL,
    [WarrantyPolicyID] nvarchar(450) NULL,
    CONSTRAINT [PK_SupportRequest] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SupportRequest_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_SupportRequest_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SupportRequest_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SupportRequest_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_SupportRequest_Entitlement_SupportEntitlementID] FOREIGN KEY ([SupportEntitlementID]) REFERENCES [Entitlement] ([ID]),
    CONSTRAINT [FK_SupportRequest_Payment_PaymentID] FOREIGN KEY ([PaymentID]) REFERENCES [Payment] ([ID]),
    CONSTRAINT [FK_SupportRequest_Policy_RefundPolicyID] FOREIGN KEY ([RefundPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_SupportRequest_Policy_ReturnPolicyID] FOREIGN KEY ([ReturnPolicyID]) REFERENCES [Policy] ([ID]),
    CONSTRAINT [FK_SupportRequest_Policy_WarrantyPolicyID] FOREIGN KEY ([WarrantyPolicyID]) REFERENCES [Policy] ([ID])
);
GO

CREATE TABLE [ServicePersonnelRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [EmployeeProfileID] nvarchar(450) NULL,
    [ServiceCaseID] nvarchar(450) NULL,
    [ServiceID] nvarchar(450) NULL,
    CONSTRAINT [PK_ServicePersonnelRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ServicePersonnelRecord_ContactProfile_EmployeeProfileID] FOREIGN KEY ([EmployeeProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_ServicePersonnelRecord_Item_ServiceID] FOREIGN KEY ([ServiceID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ServicePersonnelRecord_ServiceCase_ServiceCaseID] FOREIGN KEY ([ServiceCaseID]) REFERENCES [ServiceCase] ([ID])
);
GO

CREATE TABLE [CourseCompletionCertificate] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [StudentProfileID] nvarchar(450) NULL,
    [CourseEnrollmentID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [CourseCompletionCertificateTemplateID] nvarchar(450) NULL,
    [CourseID] nvarchar(450) NULL,
    CONSTRAINT [PK_CourseCompletionCertificate] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_CourseCompletionCertificate_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_CourseCompletionCertificate_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_CourseCompletionCertificate_ContactProfile_StudentProfileID] FOREIGN KEY ([StudentProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_CourseCompletionCertificate_CourseEnrollment_CourseEnrollmentID] FOREIGN KEY ([CourseEnrollmentID]) REFERENCES [CourseEnrollment] ([ID]),
    CONSTRAINT [FK_CourseCompletionCertificate_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_CourseCompletionCertificate_WebContent_CourseCompletionCertificateTemplateID] FOREIGN KEY ([CourseCompletionCertificateTemplateID]) REFERENCES [WebContent] ([ID])
);
GO

CREATE TABLE [EmailRecord] (
    [ID] nvarchar(450) NOT NULL,
    [SendedTimestamp] datetime2 NOT NULL,
    [ReadedTimestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [ReceptorBusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [IndividualID] nvarchar(450) NULL,
    [OrganizationID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [Readed] bit NOT NULL,
    [Email] nvarchar(max) NULL,
    [Content] nvarchar(max) NULL,
    [MarketingCampaignID] nvarchar(450) NULL,
    [EmailTemplateID] nvarchar(450) NULL,
    [EmailSignatureID] nvarchar(450) NULL,
    CONSTRAINT [PK_EmailRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_EmailRecord_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_EmailRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_EmailRecord_Business_ReceptorBusinessID] FOREIGN KEY ([ReceptorBusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_EmailRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_EmailRecord_Contact_IndividualID] FOREIGN KEY ([IndividualID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_EmailRecord_Contact_OrganizationID] FOREIGN KEY ([OrganizationID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_EmailRecord_MarketingCampaign_MarketingCampaignID] FOREIGN KEY ([MarketingCampaignID]) REFERENCES [MarketingCampaign] ([ID]),
    CONSTRAINT [FK_EmailRecord_WebContent_EmailSignatureID] FOREIGN KEY ([EmailSignatureID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_EmailRecord_WebContent_EmailTemplateID] FOREIGN KEY ([EmailTemplateID]) REFERENCES [WebContent] ([ID])
);
GO

CREATE TABLE [Review] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ReviewScore] float NOT NULL,
    [ReviewMessage] nvarchar(max) NOT NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [SupplierProfileID] nvarchar(450) NULL,
    [BlogPostID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    [TrainingProgramReview_BusinessID] nvarchar(450) NULL,
    [TrainingProgramID] nvarchar(450) NULL,
    CONSTRAINT [PK_Review] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Review_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Review_Business_TrainingProgramReview_BusinessID] FOREIGN KEY ([TrainingProgramReview_BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Review_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_Review_ContactProfile_SupplierProfileID] FOREIGN KEY ([SupplierProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Review_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_Review_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID]),
    CONSTRAINT [FK_Review_TrainingProgram_TrainingProgramID] FOREIGN KEY ([TrainingProgramID]) REFERENCES [TrainingProgram] ([ID]),
    CONSTRAINT [FK_Review_WebContent_BlogPostID] FOREIGN KEY ([BlogPostID]) REFERENCES [WebContent] ([ID])
);
GO

CREATE TABLE [SocialPost] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Message] nvarchar(max) NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [BlogPostID] nvarchar(450) NULL,
    [SocialFeedID] nvarchar(450) NULL,
    [WebForumID] nvarchar(450) NULL,
    [SocialGroupID] nvarchar(450) NULL,
    [WebPageID] nvarchar(450) NULL,
    CONSTRAINT [PK_SocialPost] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SocialPost_SocialFeed_SocialFeedID] FOREIGN KEY ([SocialFeedID]) REFERENCES [SocialFeed] ([ID]),
    CONSTRAINT [FK_SocialPost_SocialGroup_SocialGroupID] FOREIGN KEY ([SocialGroupID]) REFERENCES [SocialGroup] ([ID]),
    CONSTRAINT [FK_SocialPost_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID]),
    CONSTRAINT [FK_SocialPost_WebContent_BlogPostID] FOREIGN KEY ([BlogPostID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_SocialPost_WebContent_WebForumID] FOREIGN KEY ([WebForumID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_SocialPost_WebContent_WebPageID] FOREIGN KEY ([WebPageID]) REFERENCES [WebContent] ([ID])
);
GO

CREATE TABLE [WebFormSubmit] (
    [ID] nvarchar(450) NOT NULL,
    [Body] nvarchar(max) NULL,
    [WebFormID] nvarchar(450) NULL,
    CONSTRAINT [PK_WebFormSubmit] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_WebFormSubmit_WebContent_WebFormID] FOREIGN KEY ([WebFormID]) REFERENCES [WebContent] ([ID])
);
GO

CREATE TABLE [InquiryRequest] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Name] nvarchar(max) NULL,
    [LastName] nvarchar(max) NULL,
    [Email] nvarchar(max) NULL,
    [OrganizationName] nvarchar(max) NULL,
    [JobRole] nvarchar(max) NULL,
    [OrganizationDomain] nvarchar(max) NULL,
    [CountryID] nvarchar(450) NULL,
    [Phone] nvarchar(max) NULL,
    [Message] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [PaymentDisputeID] nvarchar(450) NULL,
    [WalletAccountID] nvarchar(450) NULL,
    [BusinessTeamID] nvarchar(450) NULL,
    [BusinessUnitID] nvarchar(450) NULL,
    CONSTRAINT [PK_InquiryRequest] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_InquiryRequest_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_InquiryRequest_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_InquiryRequest_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_InquiryRequest_BusinessTeam_BusinessTeamID] FOREIGN KEY ([BusinessTeamID]) REFERENCES [BusinessTeam] ([ID]),
    CONSTRAINT [FK_InquiryRequest_BusinessUnit_BusinessUnitID] FOREIGN KEY ([BusinessUnitID]) REFERENCES [BusinessUnit] ([ID]),
    CONSTRAINT [FK_InquiryRequest_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_InquiryRequest_PaymentDispute_PaymentDisputeID] FOREIGN KEY ([PaymentDisputeID]) REFERENCES [PaymentDispute] ([ID]),
    CONSTRAINT [FK_InquiryRequest_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID]),
    CONSTRAINT [FK_InquiryRequest_WalletAccount_WalletAccountID] FOREIGN KEY ([WalletAccountID]) REFERENCES [WalletAccount] ([ID])
);
GO

CREATE TABLE [OrderReturn] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Arrived] bit NOT NULL,
    [Verified] bit NOT NULL,
    [Approved] bit NOT NULL,
    [ApprovedTimestamp] datetime2 NOT NULL,
    [OrderID] nvarchar(450) NULL,
    [ReturnRequestID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_OrderReturn] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_OrderReturn_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_OrderReturn_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_OrderReturn_Order_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [Order] ([ID]),
    CONSTRAINT [FK_OrderReturn_SupportRequest_ReturnRequestID] FOREIGN KEY ([ReturnRequestID]) REFERENCES [SupportRequest] ([ID])
);
GO

CREATE TABLE [OrderWarranty] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ApprovedTimestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [WarrantyRequestID] nvarchar(450) NULL,
    CONSTRAINT [PK_OrderWarranty] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_OrderWarranty_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_OrderWarranty_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_OrderWarranty_SupportRequest_WarrantyRequestID] FOREIGN KEY ([WarrantyRequestID]) REFERENCES [SupportRequest] ([ID])
);
GO

CREATE TABLE [SupportTicket] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [SupportTicketStatus] int NOT NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [SupportTicketTypeID] nvarchar(450) NULL,
    [SupportEntitlementID] nvarchar(450) NULL,
    [SupportPriorityID] nvarchar(450) NULL,
    [SupportRequestID] nvarchar(450) NULL,
    CONSTRAINT [PK_SupportTicket] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SupportTicket_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_SupportTicket_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SupportTicket_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SupportTicket_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_SupportTicket_Entitlement_SupportEntitlementID] FOREIGN KEY ([SupportEntitlementID]) REFERENCES [Entitlement] ([ID]),
    CONSTRAINT [FK_SupportTicket_SupportPriority_SupportPriorityID] FOREIGN KEY ([SupportPriorityID]) REFERENCES [SupportPriority] ([ID]),
    CONSTRAINT [FK_SupportTicket_SupportRequest_SupportRequestID] FOREIGN KEY ([SupportRequestID]) REFERENCES [SupportRequest] ([ID]),
    CONSTRAINT [FK_SupportTicket_SupportTicketType_SupportTicketTypeID] FOREIGN KEY ([SupportTicketTypeID]) REFERENCES [SupportTicketType] ([ID])
);
GO

CREATE TABLE [SocialComment] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Message] nvarchar(max) NULL,
    [OwnerSocialProfileID] nvarchar(450) NULL,
    [SocialPostID] nvarchar(450) NULL,
    [ParentCommentID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [BlogPostID] nvarchar(450) NULL,
    CONSTRAINT [PK_SocialComment] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SocialComment_SocialComment_ParentCommentID] FOREIGN KEY ([ParentCommentID]) REFERENCES [SocialComment] ([ID]),
    CONSTRAINT [FK_SocialComment_SocialPost_SocialPostID] FOREIGN KEY ([SocialPostID]) REFERENCES [SocialPost] ([ID]),
    CONSTRAINT [FK_SocialComment_SocialProfile_OwnerSocialProfileID] FOREIGN KEY ([OwnerSocialProfileID]) REFERENCES [SocialProfile] ([ID]),
    CONSTRAINT [FK_SocialComment_WebContent_BlogPostID] FOREIGN KEY ([BlogPostID]) REFERENCES [WebContent] ([ID])
);
GO

CREATE TABLE [TaxonomyRecord] (
    [ID] nvarchar(450) NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [TaxonomyID] nvarchar(450) NULL,
    [WebContentID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [SocialForumPostID] nvarchar(450) NULL,
    [IsMainCategory] bit NULL,
    [WebPageCategoryRecord_WebPageID] nvarchar(450) NULL,
    [WebPageCategoryID] nvarchar(450) NULL,
    [WebPageTagID] nvarchar(450) NULL,
    [WebPageID] nvarchar(450) NULL,
    [BlogPostCategoryRecord_BlogPostID] nvarchar(450) NULL,
    [BlogPostID] nvarchar(450) NULL,
    [KnowledgeArticleCategoryID] nvarchar(450) NULL,
    [KnowledgeArticleID] nvarchar(450) NULL,
    CONSTRAINT [PK_TaxonomyRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_TaxonomyRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_TaxonomyRecord_SocialPost_SocialForumPostID] FOREIGN KEY ([SocialForumPostID]) REFERENCES [SocialPost] ([ID]),
    CONSTRAINT [FK_TaxonomyRecord_Taxonomy_KnowledgeArticleCategoryID] FOREIGN KEY ([KnowledgeArticleCategoryID]) REFERENCES [Taxonomy] ([ID]),
    CONSTRAINT [FK_TaxonomyRecord_Taxonomy_TaxonomyID] FOREIGN KEY ([TaxonomyID]) REFERENCES [Taxonomy] ([ID]),
    CONSTRAINT [FK_TaxonomyRecord_Taxonomy_WebPageCategoryID] FOREIGN KEY ([WebPageCategoryID]) REFERENCES [Taxonomy] ([ID]),
    CONSTRAINT [FK_TaxonomyRecord_Taxonomy_WebPageTagID] FOREIGN KEY ([WebPageTagID]) REFERENCES [Taxonomy] ([ID]),
    CONSTRAINT [FK_TaxonomyRecord_WebContent_BlogPostCategoryRecord_BlogPostID] FOREIGN KEY ([BlogPostCategoryRecord_BlogPostID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_TaxonomyRecord_WebContent_BlogPostID] FOREIGN KEY ([BlogPostID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_TaxonomyRecord_WebContent_KnowledgeArticleID] FOREIGN KEY ([KnowledgeArticleID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_TaxonomyRecord_WebContent_WebContentID] FOREIGN KEY ([WebContentID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_TaxonomyRecord_WebContent_WebPageCategoryRecord_WebPageID] FOREIGN KEY ([WebPageCategoryRecord_WebPageID]) REFERENCES [WebContent] ([ID]),
    CONSTRAINT [FK_TaxonomyRecord_WebContent_WebPageID] FOREIGN KEY ([WebPageID]) REFERENCES [WebContent] ([ID])
);
GO

CREATE TABLE [OrderItemReturn] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Approved] bit NOT NULL,
    [Reason] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ReturnRequestID] nvarchar(450) NULL,
    [OrderID] nvarchar(450) NULL,
    [OrderItemRecordID] nvarchar(450) NULL,
    [OrderReturnID] nvarchar(450) NULL,
    CONSTRAINT [PK_OrderItemReturn] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_OrderItemReturn_BillingItemRecord_OrderItemRecordID] FOREIGN KEY ([OrderItemRecordID]) REFERENCES [BillingItemRecord] ([ID]),
    CONSTRAINT [FK_OrderItemReturn_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_OrderItemReturn_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_OrderItemReturn_Order_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [Order] ([ID]),
    CONSTRAINT [FK_OrderItemReturn_OrderReturn_OrderReturnID] FOREIGN KEY ([OrderReturnID]) REFERENCES [OrderReturn] ([ID]),
    CONSTRAINT [FK_OrderItemReturn_SupportRequest_ReturnRequestID] FOREIGN KEY ([ReturnRequestID]) REFERENCES [SupportRequest] ([ID])
);
GO

CREATE TABLE [OrderItemWarranty] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ApprovedTimestamp] datetime2 NOT NULL,
    [Approved] bit NOT NULL,
    [Reason] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [WarrantyRequestID] nvarchar(450) NULL,
    [OrderWarrantyID] nvarchar(450) NULL,
    CONSTRAINT [PK_OrderItemWarranty] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_OrderItemWarranty_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_OrderItemWarranty_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_OrderItemWarranty_OrderWarranty_WarrantyRequestID] FOREIGN KEY ([WarrantyRequestID]) REFERENCES [OrderWarranty] ([ID]),
    CONSTRAINT [FK_OrderItemWarranty_SupportRequest_OrderWarrantyID] FOREIGN KEY ([OrderWarrantyID]) REFERENCES [SupportRequest] ([ID])
);
GO

CREATE TABLE [Conversation] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [Topic] nvarchar(max) NULL,
    [Closed] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [ClosedTimestamp] datetime2 NOT NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [SupportTicketID] nvarchar(450) NULL,
    CONSTRAINT [PK_Conversation] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Conversation_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID]),
    CONSTRAINT [FK_Conversation_SupportTicket_SupportTicketID] FOREIGN KEY ([SupportTicketID]) REFERENCES [SupportTicket] ([ID])
);
GO

CREATE TABLE [SocialReaction] (
    [ID] nvarchar(450) NOT NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [Timestamp] datetime2 NOT NULL,
    [Reaction] int NOT NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [BlogPostID] nvarchar(450) NULL,
    [SocialCommentID] nvarchar(450) NULL,
    [SocialPostID] nvarchar(450) NULL,
    CONSTRAINT [PK_SocialReaction] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SocialReaction_SocialComment_SocialCommentID] FOREIGN KEY ([SocialCommentID]) REFERENCES [SocialComment] ([ID]),
    CONSTRAINT [FK_SocialReaction_SocialPost_SocialPostID] FOREIGN KEY ([SocialPostID]) REFERENCES [SocialPost] ([ID]),
    CONSTRAINT [FK_SocialReaction_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID]),
    CONSTRAINT [FK_SocialReaction_WebContent_BlogPostID] FOREIGN KEY ([BlogPostID]) REFERENCES [WebContent] ([ID])
);
GO

CREATE TABLE [PrivateMessage] (
    [ID] nvarchar(450) NOT NULL,
    [SendedTimestamp] datetime2 NOT NULL,
    [ReadedTimestamp] datetime2 NOT NULL,
    [ReceivedTimestamp] datetime2 NOT NULL,
    [Readed] bit NOT NULL,
    [Message] nvarchar(max) NULL,
    [ConversationID] nvarchar(450) NULL,
    [SenderID] nvarchar(450) NULL,
    [ReceptorID] nvarchar(450) NULL,
    CONSTRAINT [PK_PrivateMessage] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PrivateMessage_Conversation_ConversationID] FOREIGN KEY ([ConversationID]) REFERENCES [Conversation] ([ID]),
    CONSTRAINT [FK_PrivateMessage_SocialProfile_ReceptorID] FOREIGN KEY ([ReceptorID]) REFERENCES [SocialProfile] ([ID]),
    CONSTRAINT [FK_PrivateMessage_SocialProfile_SenderID] FOREIGN KEY ([SenderID]) REFERENCES [SocialProfile] ([ID])
);
GO

CREATE TABLE [FileUpload] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [FileUploadURL] nvarchar(max) NULL,
    [IsFolder] bit NOT NULL,
    [FileName] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [Abstract] nvarchar(max) NULL,
    [Author] nvarchar(max) NULL,
    [KeyWords] nvarchar(max) NULL,
    [Notes] nvarchar(max) NULL,
    [ContentType] nvarchar(max) NULL,
    [FileLength] bigint NOT NULL,
    [ValidResponse] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [FileUploadPublicAccessType] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [SocialProfileID] nvarchar(450) NULL,
    [ParentFileUploadID] nvarchar(450) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [AgreementID] nvarchar(450) NULL,
    [AgreementRevisionID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [CourseAssignmentID] nvarchar(450) NULL,
    [CourseID] nvarchar(450) NULL,
    [TaskID] nvarchar(450) NULL,
    [InquiryRequestID] nvarchar(450) NULL,
    [SupportRequestID] nvarchar(450) NULL,
    [ItemAttachment_ItemID] nvarchar(450) NULL,
    [IsItemMozaicBG] bit NULL,
    [ItemID] nvarchar(450) NULL,
    [SocialMediaPostID] nvarchar(450) NULL,
    [SalesLiteratureID] nvarchar(450) NULL,
    [SocialCommentID] nvarchar(450) NULL,
    [CurriculumRecordID] nvarchar(450) NULL,
    [PrivateMessageID] nvarchar(450) NULL,
    [SocialPostID] nvarchar(450) NULL,
    [BusinessTeamID] nvarchar(450) NULL,
    CONSTRAINT [PK_FileUpload] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_FileUpload_Agreement_AgreementID] FOREIGN KEY ([AgreementID]) REFERENCES [Agreement] ([ID]),
    CONSTRAINT [FK_FileUpload_AgreementRevision_AgreementRevisionID] FOREIGN KEY ([AgreementRevisionID]) REFERENCES [AgreementRevision] ([ID]),
    CONSTRAINT [FK_FileUpload_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_FileUpload_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_FileUpload_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_FileUpload_BusinessTeam_BusinessTeamID] FOREIGN KEY ([BusinessTeamID]) REFERENCES [BusinessTeam] ([ID]),
    CONSTRAINT [FK_FileUpload_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_FileUpload_CourseAssignment_CourseAssignmentID] FOREIGN KEY ([CourseAssignmentID]) REFERENCES [CourseAssignment] ([ID]),
    CONSTRAINT [FK_FileUpload_CurriculumRecord_CurriculumRecordID] FOREIGN KEY ([CurriculumRecordID]) REFERENCES [CurriculumRecord] ([ID]),
    CONSTRAINT [FK_FileUpload_FileUpload_ParentFileUploadID] FOREIGN KEY ([ParentFileUploadID]) REFERENCES [FileUpload] ([ID]),
    CONSTRAINT [FK_FileUpload_InquiryRequest_InquiryRequestID] FOREIGN KEY ([InquiryRequestID]) REFERENCES [InquiryRequest] ([ID]),
    CONSTRAINT [FK_FileUpload_Item_CourseID] FOREIGN KEY ([CourseID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_FileUpload_Item_ItemAttachment_ItemID] FOREIGN KEY ([ItemAttachment_ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_FileUpload_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_FileUpload_PrivateMessage_PrivateMessageID] FOREIGN KEY ([PrivateMessageID]) REFERENCES [PrivateMessage] ([ID]),
    CONSTRAINT [FK_FileUpload_SalesLiterature_SalesLiteratureID] FOREIGN KEY ([SalesLiteratureID]) REFERENCES [SalesLiterature] ([ID]),
    CONSTRAINT [FK_FileUpload_SocialComment_SocialCommentID] FOREIGN KEY ([SocialCommentID]) REFERENCES [SocialComment] ([ID]),
    CONSTRAINT [FK_FileUpload_SocialMediaPost_SocialMediaPostID] FOREIGN KEY ([SocialMediaPostID]) REFERENCES [SocialMediaPost] ([ID]),
    CONSTRAINT [FK_FileUpload_SocialPost_SocialPostID] FOREIGN KEY ([SocialPostID]) REFERENCES [SocialPost] ([ID]),
    CONSTRAINT [FK_FileUpload_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID]),
    CONSTRAINT [FK_FileUpload_SupportRequest_SupportRequestID] FOREIGN KEY ([SupportRequestID]) REFERENCES [SupportRequest] ([ID]),
    CONSTRAINT [FK_FileUpload_Task_TaskID] FOREIGN KEY ([TaskID]) REFERENCES [Task] ([ID])
);
GO

CREATE TABLE [ItemImageRecord] (
    [ID] nvarchar(450) NOT NULL,
    [ItemImageID] nvarchar(450) NULL,
    [ItemID] nvarchar(450) NULL,
    CONSTRAINT [PK_ItemImageRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ItemImageRecord_FileUpload_ItemImageID] FOREIGN KEY ([ItemImageID]) REFERENCES [FileUpload] ([ID]),
    CONSTRAINT [FK_ItemImageRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID])
);
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Name') AND [object_id] = OBJECT_ID(N'[ActivityType]'))
    SET IDENTITY_INSERT [ActivityType] ON;
INSERT INTO [ActivityType] ([ID], [BusinessID], [BusinessProfileRecordID], [Name])
VALUES (N'Alert', NULL, NULL, N'Alert'),
(N'Appointment', NULL, NULL, N'Appointment'),
(N'Email', NULL, NULL, N'Email'),
(N'Letter', NULL, NULL, N'Letter'),
(N'Note', NULL, NULL, N'Note'),
(N'PhoneCall', NULL, NULL, N'Phone Call'),
(N'Task', NULL, NULL, N'Task');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Name') AND [object_id] = OBJECT_ID(N'[ActivityType]'))
    SET IDENTITY_INSERT [ActivityType] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Category', N'Description', N'IsSystemPermission', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessPermission]'))
    SET IDENTITY_INSERT [BusinessPermission] ON;
INSERT INTO [BusinessPermission] ([ID], [BusinessID], [BusinessProfileRecordID], [Category], [Description], [IsSystemPermission], [Name])
VALUES (N'accounts_create', NULL, NULL, N'Accounts', NULL, CAST(1 AS bit), N'Create accounts'),
(N'accounts_delete', NULL, NULL, N'Accounts', NULL, CAST(1 AS bit), N'Delete accounts'),
(N'accounts_manage', NULL, NULL, N'Accounts', NULL, CAST(1 AS bit), N'Manage accounts'),
(N'accounts_read', NULL, NULL, N'Accounts', NULL, CAST(1 AS bit), N'Read accounts'),
(N'accounts_update', NULL, NULL, N'Accounts', NULL, CAST(1 AS bit), N'Update accounts'),
(N'assets_create', NULL, NULL, N'Assets', NULL, CAST(1 AS bit), N'Create assets'),
(N'assets_delete', NULL, NULL, N'Assets', NULL, CAST(1 AS bit), N'Delete assets'),
(N'assets_manage', NULL, NULL, N'Assets', NULL, CAST(1 AS bit), N'Manage assets'),
(N'assets_read', NULL, NULL, N'Assets', NULL, CAST(1 AS bit), N'Read assets'),
(N'assets_update', NULL, NULL, N'Assets', NULL, CAST(1 AS bit), N'Update assets'),
(N'bots_create', NULL, NULL, N'Bots', NULL, CAST(1 AS bit), N'Create bots'),
(N'bots_delete', NULL, NULL, N'Bots', NULL, CAST(1 AS bit), N'Delete bots'),
(N'bots_manage', NULL, NULL, N'Bots', NULL, CAST(1 AS bit), N'Manage bots'),
(N'bots_read', NULL, NULL, N'Bots', NULL, CAST(1 AS bit), N'Read bots'),
(N'bots_update', NULL, NULL, N'Bots', NULL, CAST(1 AS bit), N'Update bots'),
(N'budgets_create', NULL, NULL, N'Budgets', NULL, CAST(1 AS bit), N'Create budgets'),
(N'budgets_delete', NULL, NULL, N'Budgets', NULL, CAST(1 AS bit), N'Delete budgets'),
(N'budgets_manage', NULL, NULL, N'Budgets', NULL, CAST(1 AS bit), N'Manage budgets'),
(N'budgets_read', NULL, NULL, N'Budgets', NULL, CAST(1 AS bit), N'Read budgets'),
(N'budgets_update', NULL, NULL, N'Budgets', NULL, CAST(1 AS bit), N'Update budgets'),
(N'campaigns_create', NULL, NULL, N'Campaigns', NULL, CAST(1 AS bit), N'Create campaigns'),
(N'campaigns_delete', NULL, NULL, N'Campaigns', NULL, CAST(1 AS bit), N'Delete campaigns'),
(N'campaigns_manage', NULL, NULL, N'Campaigns', NULL, CAST(1 AS bit), N'Manage campaigns'),
(N'campaigns_read', NULL, NULL, N'Campaigns', NULL, CAST(1 AS bit), N'Read campaigns'),
(N'campaigns_update', NULL, NULL, N'Campaigns', NULL, CAST(1 AS bit), N'Update campaigns'),
(N'contacts_create', NULL, NULL, N'Contacts', NULL, CAST(1 AS bit), N'Create contacts'),
(N'contacts_delete', NULL, NULL, N'Contacts', NULL, CAST(1 AS bit), N'Delete contacts'),
(N'contacts_manage', NULL, NULL, N'Contacts', NULL, CAST(1 AS bit), N'Manage contacts'),
(N'contacts_read', NULL, NULL, N'Contacts', NULL, CAST(1 AS bit), N'Read contacts'),
(N'contacts_update', NULL, NULL, N'Contacts', NULL, CAST(1 AS bit), N'Update contacts'),
(N'courses_create', NULL, NULL, N'Courses', NULL, CAST(1 AS bit), N'Create courses'),
(N'courses_delete', NULL, NULL, N'Courses', NULL, CAST(1 AS bit), N'Delete courses'),
(N'courses_manage', NULL, NULL, N'Courses', NULL, CAST(1 AS bit), N'Manage courses'),
(N'courses_read', NULL, NULL, N'Courses', NULL, CAST(1 AS bit), N'Read courses'),
(N'courses_update', NULL, NULL, N'Courses', NULL, CAST(1 AS bit), N'Update courses');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Category', N'Description', N'IsSystemPermission', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessPermission]'))
    SET IDENTITY_INSERT [BusinessPermission] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Category', N'Description', N'IsSystemPermission', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessPermission]'))
    SET IDENTITY_INSERT [BusinessPermission] ON;
INSERT INTO [BusinessPermission] ([ID], [BusinessID], [BusinessProfileRecordID], [Category], [Description], [IsSystemPermission], [Name])
VALUES (N'deal_units_create', NULL, NULL, N'Deal Units', NULL, CAST(1 AS bit), N'Create deal units'),
(N'deal_units_delete', NULL, NULL, N'Deal Units', NULL, CAST(1 AS bit), N'Delete deal units'),
(N'deal_units_manage', NULL, NULL, N'Deal Units', NULL, CAST(1 AS bit), N'Manage deal units'),
(N'deal_units_read', NULL, NULL, N'Deal Units', NULL, CAST(1 AS bit), N'Read deal units'),
(N'deal_units_update', NULL, NULL, N'Deal Units', NULL, CAST(1 AS bit), N'Update deal units'),
(N'employees_create', NULL, NULL, N'Employees', NULL, CAST(1 AS bit), N'Create employees'),
(N'employees_delete', NULL, NULL, N'Employees', NULL, CAST(1 AS bit), N'Delete employees'),
(N'employees_manage', NULL, NULL, N'Employees', NULL, CAST(1 AS bit), N'Manage employees'),
(N'employees_read', NULL, NULL, N'Employees', NULL, CAST(1 AS bit), N'Read employees'),
(N'employees_update', NULL, NULL, N'Employees', NULL, CAST(1 AS bit), N'Update employees'),
(N'expenses_create', NULL, NULL, N'Expenses', NULL, CAST(1 AS bit), N'Create expenses'),
(N'expenses_delete', NULL, NULL, N'Expenses', NULL, CAST(1 AS bit), N'Delete expenses'),
(N'expenses_manage', NULL, NULL, N'Expenses', NULL, CAST(1 AS bit), N'Manage expenses'),
(N'expenses_read', NULL, NULL, N'Expenses', NULL, CAST(1 AS bit), N'Read expenses'),
(N'expenses_update', NULL, NULL, N'Expenses', NULL, CAST(1 AS bit), N'Update expenses'),
(N'file_uploads_create', NULL, NULL, N'File Uploads', NULL, CAST(1 AS bit), N'Create file uploads'),
(N'file_uploads_delete', NULL, NULL, N'File Uploads', NULL, CAST(1 AS bit), N'Delete file uploads'),
(N'file_uploads_manage', NULL, NULL, N'File Uploads', NULL, CAST(1 AS bit), N'Manage file uploads'),
(N'file_uploads_read', NULL, NULL, N'File Uploads', NULL, CAST(1 AS bit), N'Read file uploads'),
(N'file_uploads_update', NULL, NULL, N'File Uploads', NULL, CAST(1 AS bit), N'Update file uploads'),
(N'financialbooks_create', NULL, NULL, N'Financial books', NULL, CAST(1 AS bit), N'Create financial books'),
(N'financialbooks_delete', NULL, NULL, N'Financial books', NULL, CAST(1 AS bit), N'Delete financial books'),
(N'financialbooks_manage', NULL, NULL, N'Financial books', NULL, CAST(1 AS bit), N'Manage financial books'),
(N'financialbooks_read', NULL, NULL, N'Financial books', NULL, CAST(1 AS bit), N'Read financial books'),
(N'financialbooks_update', NULL, NULL, N'Financial books', NULL, CAST(1 AS bit), N'Update financial books'),
(N'holders_create', NULL, NULL, N'Holders', NULL, CAST(1 AS bit), N'Create holders'),
(N'holders_delete', NULL, NULL, N'Holders', NULL, CAST(1 AS bit), N'Delete holders'),
(N'holders_manage', NULL, NULL, N'Holders', NULL, CAST(1 AS bit), N'Manage holders'),
(N'holders_read', NULL, NULL, N'Holders', NULL, CAST(1 AS bit), N'Read holders'),
(N'holders_update', NULL, NULL, N'Holders', NULL, CAST(1 AS bit), N'Update holders'),
(N'invoices_create', NULL, NULL, N'Invoices', NULL, CAST(1 AS bit), N'Create invoices'),
(N'invoices_delete', NULL, NULL, N'Invoices', NULL, CAST(1 AS bit), N'Delete invoices'),
(N'invoices_manage', NULL, NULL, N'Invoices', NULL, CAST(1 AS bit), N'Manage invoices'),
(N'invoices_read', NULL, NULL, N'Invoices', NULL, CAST(1 AS bit), N'Read invoices'),
(N'invoices_update', NULL, NULL, N'Invoices', NULL, CAST(1 AS bit), N'Update invoices'),
(N'journals_create', NULL, NULL, N'Journals', NULL, CAST(1 AS bit), N'Create journals'),
(N'journals_delete', NULL, NULL, N'Journals', NULL, CAST(1 AS bit), N'Delete journals'),
(N'journals_manage', NULL, NULL, N'Journals', NULL, CAST(1 AS bit), N'Manage journals'),
(N'journals_read', NULL, NULL, N'Journals', NULL, CAST(1 AS bit), N'Read journals'),
(N'journals_update', NULL, NULL, N'Journals', NULL, CAST(1 AS bit), N'Update journals'),
(N'ledgers_create', NULL, NULL, N'Ledgers', NULL, CAST(1 AS bit), N'Create ledgers'),
(N'ledgers_delete', NULL, NULL, N'Ledgers', NULL, CAST(1 AS bit), N'Delete ledgers');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Category', N'Description', N'IsSystemPermission', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessPermission]'))
    SET IDENTITY_INSERT [BusinessPermission] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Category', N'Description', N'IsSystemPermission', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessPermission]'))
    SET IDENTITY_INSERT [BusinessPermission] ON;
INSERT INTO [BusinessPermission] ([ID], [BusinessID], [BusinessProfileRecordID], [Category], [Description], [IsSystemPermission], [Name])
VALUES (N'ledgers_manage', NULL, NULL, N'Ledgers', NULL, CAST(1 AS bit), N'Manage ledgers'),
(N'ledgers_read', NULL, NULL, N'Ledgers', NULL, CAST(1 AS bit), N'Read ledgers'),
(N'ledgers_update', NULL, NULL, N'Ledgers', NULL, CAST(1 AS bit), N'Update ledgers'),
(N'organizations_create', NULL, NULL, N'Organizations', NULL, CAST(1 AS bit), N'Create organizations'),
(N'organizations_delete', NULL, NULL, N'Organizations', NULL, CAST(1 AS bit), N'Delete organizations'),
(N'organizations_manage', NULL, NULL, N'Organizations', NULL, CAST(1 AS bit), N'Manage organizations'),
(N'organizations_read', NULL, NULL, N'Organizations', NULL, CAST(1 AS bit), N'Read organizations'),
(N'organizations_update', NULL, NULL, N'Organizations', NULL, CAST(1 AS bit), N'Update organizations'),
(N'payments_create', NULL, NULL, N'Payments', NULL, CAST(1 AS bit), N'Create payments'),
(N'payments_delete', NULL, NULL, N'Payments', NULL, CAST(1 AS bit), N'Delete payments'),
(N'payments_manage', NULL, NULL, N'Payments', NULL, CAST(1 AS bit), N'Manage payments'),
(N'payments_read', NULL, NULL, N'Payments', NULL, CAST(1 AS bit), N'Read payments'),
(N'payments_update', NULL, NULL, N'Payments', NULL, CAST(1 AS bit), N'Update payments'),
(N'portal_pages_create', NULL, NULL, N'Portal Pages', NULL, CAST(1 AS bit), N'Create pages'),
(N'portal_pages_delete', NULL, NULL, N'Portal Pages', NULL, CAST(1 AS bit), N'Delete pages'),
(N'portal_pages_manage', NULL, NULL, N'Portal Pages', NULL, CAST(1 AS bit), N'Manage pages'),
(N'portal_pages_read', NULL, NULL, N'Portal Pages', NULL, CAST(1 AS bit), N'Read pages'),
(N'portal_pages_update', NULL, NULL, N'Portal Pages', NULL, CAST(1 AS bit), N'Update pages'),
(N'portal_posts_create', NULL, NULL, N'Blog Posts', NULL, CAST(1 AS bit), N'Create blog posts'),
(N'portal_posts_delete', NULL, NULL, N'Blog Posts', NULL, CAST(1 AS bit), N'Delete blog posts'),
(N'portal_posts_manage', NULL, NULL, N'Blog Posts', NULL, CAST(1 AS bit), N'Manage blog posts'),
(N'portal_posts_read', NULL, NULL, N'Blog Posts', NULL, CAST(1 AS bit), N'Read blog posts'),
(N'portal_posts_update', NULL, NULL, N'Blog Posts', NULL, CAST(1 AS bit), N'Update blog posts'),
(N'portal_settings_create', NULL, NULL, N'Portal Settings', NULL, CAST(1 AS bit), N'Create portal settings'),
(N'portal_settings_delete', NULL, NULL, N'Portal Settings', NULL, CAST(1 AS bit), N'Delete portal settings'),
(N'portal_settings_manage', NULL, NULL, N'Portal Settings', NULL, CAST(1 AS bit), N'Manage portal settings'),
(N'portal_settings_read', NULL, NULL, N'Portal Settings', NULL, CAST(1 AS bit), N'Read portal settings'),
(N'portal_settings_update', NULL, NULL, N'Portal Settings', NULL, CAST(1 AS bit), N'Update portal settings'),
(N'portals_create', NULL, NULL, N'Portals', NULL, CAST(1 AS bit), N'Create portals'),
(N'portals_delete', NULL, NULL, N'Portals', NULL, CAST(1 AS bit), N'Delete portals'),
(N'portals_manage', NULL, NULL, N'Portals', NULL, CAST(1 AS bit), N'Manage portals'),
(N'portals_read', NULL, NULL, N'Portals', NULL, CAST(1 AS bit), N'Read portals'),
(N'portals_update', NULL, NULL, N'Portals', NULL, CAST(1 AS bit), N'Update portals'),
(N'pricelists_create', NULL, NULL, N'Prices', NULL, CAST(1 AS bit), N'Create price lists'),
(N'pricelists_delete', NULL, NULL, N'Prices', NULL, CAST(1 AS bit), N'Delete price lists'),
(N'pricelists_manage', NULL, NULL, N'Prices', NULL, CAST(1 AS bit), N'Manage price lists'),
(N'pricelists_read', NULL, NULL, N'Prices', NULL, CAST(1 AS bit), N'Read price lists'),
(N'pricelists_update', NULL, NULL, N'Prices', NULL, CAST(1 AS bit), N'Update price lists'),
(N'prices_create', NULL, NULL, N'Prices', NULL, CAST(1 AS bit), N'Create prices'),
(N'prices_delete', NULL, NULL, N'Prices', NULL, CAST(1 AS bit), N'Delete prices'),
(N'prices_manage', NULL, NULL, N'Prices', NULL, CAST(1 AS bit), N'Manage prices'),
(N'prices_read', NULL, NULL, N'Prices', NULL, CAST(1 AS bit), N'Read prices');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Category', N'Description', N'IsSystemPermission', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessPermission]'))
    SET IDENTITY_INSERT [BusinessPermission] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Category', N'Description', N'IsSystemPermission', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessPermission]'))
    SET IDENTITY_INSERT [BusinessPermission] ON;
INSERT INTO [BusinessPermission] ([ID], [BusinessID], [BusinessProfileRecordID], [Category], [Description], [IsSystemPermission], [Name])
VALUES (N'prices_update', NULL, NULL, N'Prices', NULL, CAST(1 AS bit), N'Update prices'),
(N'product_taxonomies_create', NULL, NULL, N'Product taxonomies', NULL, CAST(1 AS bit), N'Create product taxonomies'),
(N'product_taxonomies_delete', NULL, NULL, N'Product taxonomies', NULL, CAST(1 AS bit), N'Delete product taxonomies'),
(N'product_taxonomies_manage', NULL, NULL, N'Product taxonomies', NULL, CAST(1 AS bit), N'Manage product taxonomies'),
(N'product_taxonomies_read', NULL, NULL, N'Product taxonomies', NULL, CAST(1 AS bit), N'Read product taxonomies'),
(N'product_taxonomies_update', NULL, NULL, N'Product taxonomies', NULL, CAST(1 AS bit), N'Update product taxonomies'),
(N'products_create', NULL, NULL, N'Products', NULL, CAST(1 AS bit), N'Create products'),
(N'products_delete', NULL, NULL, N'Products', NULL, CAST(1 AS bit), N'Delete products'),
(N'products_manage', NULL, NULL, N'Products', NULL, CAST(1 AS bit), N'Manage products'),
(N'products_read', NULL, NULL, N'Products', NULL, CAST(1 AS bit), N'Read products'),
(N'products_update', NULL, NULL, N'Products', NULL, CAST(1 AS bit), N'Update products'),
(N'projects_create', NULL, NULL, N'Projects', NULL, CAST(1 AS bit), N'Create projects'),
(N'projects_delete', NULL, NULL, N'Projects', NULL, CAST(1 AS bit), N'Delete projects'),
(N'projects_manage', NULL, NULL, N'Projects', NULL, CAST(1 AS bit), N'Manage projects'),
(N'projects_read', NULL, NULL, N'Projects', NULL, CAST(1 AS bit), N'Read projects'),
(N'projects_update', NULL, NULL, N'Projects', NULL, CAST(1 AS bit), N'Update projects'),
(N'purchase_requests_create', NULL, NULL, N'Purchase Requests', NULL, CAST(1 AS bit), N'Create purchase requests'),
(N'purchase_requests_delete', NULL, NULL, N'Purchase Requests', NULL, CAST(1 AS bit), N'Delete purchase requests'),
(N'purchase_requests_manage', NULL, NULL, N'Purchase Requests', NULL, CAST(1 AS bit), N'Manage purchase requests'),
(N'purchase_requests_read', NULL, NULL, N'Purchase Requests', NULL, CAST(1 AS bit), N'Read purchase requests'),
(N'purchase_requests_update', NULL, NULL, N'Purchase Requests', NULL, CAST(1 AS bit), N'Update purchase requests'),
(N'reports_create', NULL, NULL, N'Reports', NULL, CAST(1 AS bit), N'Create reports'),
(N'reports_delete', NULL, NULL, N'Reports', NULL, CAST(1 AS bit), N'Delete reports'),
(N'reports_manage', NULL, NULL, N'Reports', NULL, CAST(1 AS bit), N'Manage reports'),
(N'reports_read', NULL, NULL, N'Reports', NULL, CAST(1 AS bit), N'Read reports'),
(N'reports_update', NULL, NULL, N'Reports', NULL, CAST(1 AS bit), N'Update reports'),
(N'security_permissions_create', NULL, NULL, N'Security permissions', NULL, CAST(1 AS bit), N'Create security permissions'),
(N'security_permissions_delete', NULL, NULL, N'Security permissions', NULL, CAST(1 AS bit), N'Delete security permissions'),
(N'security_permissions_manage', NULL, NULL, N'Security permissions', NULL, CAST(1 AS bit), N'Manage security permissions'),
(N'security_permissions_read', NULL, NULL, N'Security permissions', NULL, CAST(1 AS bit), N'Read security permissions'),
(N'security_permissions_update', NULL, NULL, N'Security permissions', NULL, CAST(1 AS bit), N'Update security permissions'),
(N'security_roles_create', NULL, NULL, N'Security Roles', NULL, CAST(1 AS bit), N'Create security roles'),
(N'security_roles_delete', NULL, NULL, N'Security Roles', NULL, CAST(1 AS bit), N'Delete security roles'),
(N'security_roles_manage', NULL, NULL, N'Security Roles', NULL, CAST(1 AS bit), N'Manage security roles'),
(N'security_roles_read', NULL, NULL, N'Security Roles', NULL, CAST(1 AS bit), N'Read security roles'),
(N'security_roles_update', NULL, NULL, N'Security Roles', NULL, CAST(1 AS bit), N'Update security roles'),
(N'services_create', NULL, NULL, N'Services', NULL, CAST(1 AS bit), N'Create services'),
(N'services_delete', NULL, NULL, N'Services', NULL, CAST(1 AS bit), N'Delete services'),
(N'services_manage', NULL, NULL, N'Services', NULL, CAST(1 AS bit), N'Manage services'),
(N'services_read', NULL, NULL, N'Services', NULL, CAST(1 AS bit), N'Read services'),
(N'services_update', NULL, NULL, N'Services', NULL, CAST(1 AS bit), N'Update services'),
(N'shares_create', NULL, NULL, N'Shares', NULL, CAST(1 AS bit), N'Create shares');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Category', N'Description', N'IsSystemPermission', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessPermission]'))
    SET IDENTITY_INSERT [BusinessPermission] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Category', N'Description', N'IsSystemPermission', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessPermission]'))
    SET IDENTITY_INSERT [BusinessPermission] ON;
INSERT INTO [BusinessPermission] ([ID], [BusinessID], [BusinessProfileRecordID], [Category], [Description], [IsSystemPermission], [Name])
VALUES (N'shares_delete', NULL, NULL, N'Shares', NULL, CAST(1 AS bit), N'Delete shares'),
(N'shares_manage', NULL, NULL, N'Shares', NULL, CAST(1 AS bit), N'Manage shares'),
(N'shares_read', NULL, NULL, N'Shares', NULL, CAST(1 AS bit), N'Read shares'),
(N'shares_update', NULL, NULL, N'Shares', NULL, CAST(1 AS bit), N'Update shares'),
(N'shippings_create', NULL, NULL, N'Shippings', NULL, CAST(1 AS bit), N'Create shippings'),
(N'shippings_delete', NULL, NULL, N'Shippings', NULL, CAST(1 AS bit), N'Delete shippings'),
(N'shippings_manage', NULL, NULL, N'Shippings', NULL, CAST(1 AS bit), N'Manage shippings'),
(N'shippings_read', NULL, NULL, N'Shippings', NULL, CAST(1 AS bit), N'Read shippings'),
(N'shippings_update', NULL, NULL, N'Shippings', NULL, CAST(1 AS bit), N'Update shippings'),
(N'social_groups_create', NULL, NULL, N'Social Groups', NULL, CAST(1 AS bit), N'Create social groups'),
(N'social_groups_delete', NULL, NULL, N'Social Groups', NULL, CAST(1 AS bit), N'Delete social groups'),
(N'social_groups_manage', NULL, NULL, N'Social Groups', NULL, CAST(1 AS bit), N'Manage social groups'),
(N'social_groups_read', NULL, NULL, N'Social Groups', NULL, CAST(1 AS bit), N'Read social groups'),
(N'social_groups_update', NULL, NULL, N'Social Groups', NULL, CAST(1 AS bit), N'Update social groups'),
(N'social_posts_create', NULL, NULL, N'Social Posts', NULL, CAST(1 AS bit), N'Create social posts'),
(N'social_posts_delete', NULL, NULL, N'Social Posts', NULL, CAST(1 AS bit), N'Delete social posts'),
(N'social_posts_manage', NULL, NULL, N'Social Posts', NULL, CAST(1 AS bit), N'Manage social posts'),
(N'social_posts_read', NULL, NULL, N'Social Posts', NULL, CAST(1 AS bit), N'Read social posts'),
(N'social_posts_update', NULL, NULL, N'Social Posts', NULL, CAST(1 AS bit), N'Update social posts'),
(N'social_profiles_create', NULL, NULL, N'Social Groups', NULL, CAST(1 AS bit), N'Create social profiles'),
(N'social_profiles_delete', NULL, NULL, N'Social Groups', NULL, CAST(1 AS bit), N'Delete social profiles'),
(N'social_profiles_manage', NULL, NULL, N'Social Groups', NULL, CAST(1 AS bit), N'Manage social profiles'),
(N'social_profiles_read', NULL, NULL, N'Social Groups', NULL, CAST(1 AS bit), N'Read social profiles'),
(N'social_profiles_update', NULL, NULL, N'Social Groups', NULL, CAST(1 AS bit), N'Update social profiles'),
(N'stock_items_create', NULL, NULL, N'Stock items', NULL, CAST(1 AS bit), N'Create stock items'),
(N'stock_items_delete', NULL, NULL, N'Stock items', NULL, CAST(1 AS bit), N'Delete stock items'),
(N'stock_items_manage', NULL, NULL, N'Stock items', NULL, CAST(1 AS bit), N'Manage stock items'),
(N'stock_items_read', NULL, NULL, N'Stock items', NULL, CAST(1 AS bit), N'Read stock items'),
(N'stock_items_update', NULL, NULL, N'Stock items', NULL, CAST(1 AS bit), N'Update stock items'),
(N'studio_access', NULL, NULL, NULL, NULL, CAST(1 AS bit), N'Studio Access (System)'),
(N'subscriptions_create', NULL, NULL, N'Subscriptions', NULL, CAST(1 AS bit), N'Create subscriptions'),
(N'subscriptions_delete', NULL, NULL, N'Subscriptions', NULL, CAST(1 AS bit), N'Delete subscriptions'),
(N'subscriptions_manage', NULL, NULL, N'Subscriptions', NULL, CAST(1 AS bit), N'Manage subscriptions'),
(N'subscriptions_read', NULL, NULL, N'Subscriptions', NULL, CAST(1 AS bit), N'Read subscriptions'),
(N'subscriptions_update', NULL, NULL, N'Subscriptions', NULL, CAST(1 AS bit), N'Update subscriptions'),
(N'taxes_create', NULL, NULL, N'Taxes', NULL, CAST(1 AS bit), N'Create taxes'),
(N'taxes_delete', NULL, NULL, N'Taxes', NULL, CAST(1 AS bit), N'Delete taxes'),
(N'taxes_manage', NULL, NULL, N'Taxes', NULL, CAST(1 AS bit), N'Manage taxes'),
(N'taxes_read', NULL, NULL, N'Taxes', NULL, CAST(1 AS bit), N'Read taxes'),
(N'taxes_update', NULL, NULL, N'Taxes', NULL, CAST(1 AS bit), N'Update taxes'),
(N'tenants_create', NULL, NULL, N'Tenants', NULL, CAST(1 AS bit), N'Create tenants'),
(N'tenants_delete', NULL, NULL, N'Tenants', NULL, CAST(1 AS bit), N'Delete tenants');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Category', N'Description', N'IsSystemPermission', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessPermission]'))
    SET IDENTITY_INSERT [BusinessPermission] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Category', N'Description', N'IsSystemPermission', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessPermission]'))
    SET IDENTITY_INSERT [BusinessPermission] ON;
INSERT INTO [BusinessPermission] ([ID], [BusinessID], [BusinessProfileRecordID], [Category], [Description], [IsSystemPermission], [Name])
VALUES (N'tenants_manage', NULL, NULL, N'Tenants', NULL, CAST(1 AS bit), N'Manage tenants'),
(N'tenants_read', NULL, NULL, N'Tenants', NULL, CAST(1 AS bit), N'Read tenants'),
(N'tenants_update', NULL, NULL, N'Tenants', NULL, CAST(1 AS bit), N'Update tenants'),
(N'tickets_create', NULL, NULL, N'Tickets', NULL, CAST(1 AS bit), N'Create tickets'),
(N'tickets_delete', NULL, NULL, N'Tickets', NULL, CAST(1 AS bit), N'Delete tickets'),
(N'tickets_manage', NULL, NULL, N'Tickets', NULL, CAST(1 AS bit), N'Manage tickets'),
(N'tickets_read', NULL, NULL, N'Tickets', NULL, CAST(1 AS bit), N'Read tickets'),
(N'tickets_update', NULL, NULL, N'Tickets', NULL, CAST(1 AS bit), N'Update tickets'),
(N'warehouses_create', NULL, NULL, N'Warehouses', NULL, CAST(1 AS bit), N'Create warehouses'),
(N'warehouses_delete', NULL, NULL, N'Warehouses', NULL, CAST(1 AS bit), N'Delete warehouses'),
(N'warehouses_manage', NULL, NULL, N'Warehouses', NULL, CAST(1 AS bit), N'Manage warehouses'),
(N'warehouses_read', NULL, NULL, N'Warehouses', NULL, CAST(1 AS bit), N'Read warehouses'),
(N'warehouses_update', NULL, NULL, N'Warehouses', NULL, CAST(1 AS bit), N'Update warehouses'),
(N'workflows_create', NULL, NULL, N'Workflows', NULL, CAST(1 AS bit), N'Create workflows'),
(N'workflows_delete', NULL, NULL, N'Workflows', NULL, CAST(1 AS bit), N'Delete workflows'),
(N'workflows_manage', NULL, NULL, N'Workflows', NULL, CAST(1 AS bit), N'Manage workflows'),
(N'workflows_read', NULL, NULL, N'Workflows', NULL, CAST(1 AS bit), N'Read workflows'),
(N'workflows_update', NULL, NULL, N'Workflows', NULL, CAST(1 AS bit), N'Update workflows');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Category', N'Description', N'IsSystemPermission', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessPermission]'))
    SET IDENTITY_INSERT [BusinessPermission] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Description', N'IsSystemSecurityRole', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessSecurityRole]'))
    SET IDENTITY_INSERT [BusinessSecurityRole] ON;
INSERT INTO [BusinessSecurityRole] ([ID], [BusinessID], [BusinessProfileRecordID], [Description], [IsSystemSecurityRole], [Name])
VALUES (N'business_owner', NULL, NULL, NULL, CAST(1 AS bit), N'Business Owner (System)'),
(N'global_admin', NULL, NULL, NULL, CAST(1 AS bit), N'Global Admin (System)'),
(N'portal_author', NULL, NULL, NULL, CAST(1 AS bit), N'Portal Author (System)'),
(N'portal_blocked', NULL, NULL, NULL, CAST(1 AS bit), N'Portal Blocked (System)'),
(N'portal_collaborator', NULL, NULL, NULL, CAST(1 AS bit), N'Portal Colaborator (System)'),
(N'portal_default', NULL, NULL, NULL, CAST(1 AS bit), N'Portal Application (System)'),
(N'portal_editor', NULL, NULL, NULL, CAST(1 AS bit), N'Portal Editor (System)'),
(N'portal_keymaster', NULL, NULL, NULL, CAST(1 AS bit), N'Portal Keymaster (System)'),
(N'portal_moderator', NULL, NULL, NULL, CAST(1 AS bit), N'Portal Moderator (System)'),
(N'portal_participant', NULL, NULL, NULL, CAST(1 AS bit), N'Portal Participant (System)'),
(N'portal_spectator', NULL, NULL, NULL, CAST(1 AS bit), N'Portal Spectator (System)'),
(N'portal_suscriptor', NULL, NULL, NULL, CAST(1 AS bit), N'Portal Suscriptor (System)'),
(N'store_admin', NULL, NULL, NULL, CAST(1 AS bit), N'Store Admin (System)'),
(N'store_blocked', NULL, NULL, NULL, CAST(1 AS bit), N'Store Blocked (System)'),
(N'store_customer', NULL, NULL, NULL, CAST(1 AS bit), N'Store Customer (System)'),
(N'store_manager', NULL, NULL, NULL, CAST(1 AS bit), N'Store Manager (System)'),
(N'support_agent', NULL, NULL, NULL, CAST(1 AS bit), N'Support Agent (System)'),
(N'support_manager', NULL, NULL, NULL, CAST(1 AS bit), N'Support Manager (System)'),
(N'support_supervisor', NULL, NULL, NULL, CAST(1 AS bit), N'Support Supervisor (System)'),
(N'support_user', NULL, NULL, NULL, CAST(1 AS bit), N'Support User (System)');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Description', N'IsSystemSecurityRole', N'Name') AND [object_id] = OBJECT_ID(N'[BusinessSecurityRole]'))
    SET IDENTITY_INSERT [BusinessSecurityRole] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Name') AND [object_id] = OBJECT_ID(N'[SalesLiteratureType]'))
    SET IDENTITY_INSERT [SalesLiteratureType] ON;
INSERT INTO [SalesLiteratureType] ([ID], [BusinessID], [BusinessProfileRecordID], [Name])
VALUES (N'Bulletins', NULL, NULL, N'Bulletins'),
(N'CompanyBackground', NULL, NULL, N'Company Background'),
(N'Manuals', NULL, NULL, N'Manuals'),
(N'MarketingCollateral', NULL, NULL, N'Marketing Collateral');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Name') AND [object_id] = OBJECT_ID(N'[SalesLiteratureType]'))
    SET IDENTITY_INSERT [SalesLiteratureType] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Name') AND [object_id] = OBJECT_ID(N'[SalesLiteratureType]'))
    SET IDENTITY_INSERT [SalesLiteratureType] ON;
INSERT INTO [SalesLiteratureType] ([ID], [BusinessID], [BusinessProfileRecordID], [Name])
VALUES (N'News', NULL, NULL, N'News'),
(N'PoliciesAndProcedures', NULL, NULL, N'Policies And Procedures'),
(N'Presentation', NULL, NULL, N'Presentation'),
(N'PriceSheets', NULL, NULL, N'Price Sheets'),
(N'ProductSheet', NULL, NULL, N'Product Sheet'),
(N'SalesLiterature', NULL, NULL, N'Sales Literature'),
(N'Spreadsheets', NULL, NULL, N'Spreadsheets');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Name') AND [object_id] = OBJECT_ID(N'[SalesLiteratureType]'))
    SET IDENTITY_INSERT [SalesLiteratureType] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Description', N'Name', N'SystemLocked') AND [object_id] = OBJECT_ID(N'[UnitGroup]'))
    SET IDENTITY_INSERT [UnitGroup] ON;
INSERT INTO [UnitGroup] ([ID], [BusinessID], [BusinessProfileRecordID], [Description], [Name], [SystemLocked])
VALUES (N'Distance', NULL, NULL, NULL, N'Distance', CAST(1 AS bit)),
(N'Mass', NULL, NULL, NULL, N'Mass', CAST(1 AS bit)),
(N'Time', NULL, NULL, NULL, N'Time', CAST(1 AS bit)),
(N'Units', NULL, NULL, NULL, N'Units', CAST(1 AS bit));
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BusinessID', N'BusinessProfileRecordID', N'Description', N'Name', N'SystemLocked') AND [object_id] = OBJECT_ID(N'[UnitGroup]'))
    SET IDENTITY_INSERT [UnitGroup] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] ON;
INSERT INTO [Unit] ([ID], [BaseUnitAmount], [BaseUnitID], [BusinessID], [BusinessProfileRecordID], [Name], [UnitGroupID])
VALUES (N'Milligrams', 0.0E0, NULL, NULL, NULL, N'Milligrams', N'Mass'),
(N'Millimeters', 0.0E0, NULL, NULL, NULL, N'Millimeters', N'Distance'),
(N'Second', 0.0E0, NULL, NULL, NULL, N'Second', N'Time'),
(N'Unit', 1.0E0, NULL, NULL, NULL, N'Unit', N'Units');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] ON;
INSERT INTO [Unit] ([ID], [BaseUnitAmount], [BaseUnitID], [BusinessID], [BusinessProfileRecordID], [Name], [UnitGroupID])
VALUES (N'Centimeters', 10.0E0, N'Millimeters', NULL, NULL, N'Centimeters', N'Distance'),
(N'Dozen', 12.0E0, N'Unit', NULL, NULL, N'Dozen', N'Units'),
(N'Grams', 1000.0E0, N'Milligrams', NULL, NULL, N'Grams', N'Mass'),
(N'Half a Dozen', 6.0E0, N'Unit', NULL, NULL, N'Half a Dozen', N'Units'),
(N'Hundred', 100.0E0, N'Unit', NULL, NULL, N'Thousand', N'Units'),
(N'Minute', 60.0E0, N'Second', NULL, NULL, N'Minute', N'Time'),
(N'Pair', 2.0E0, N'Unit', NULL, NULL, N'Pair', N'Units'),
(N'Thousand', 1000.0E0, N'Unit', NULL, NULL, N'Thousand', N'Units');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] ON;
INSERT INTO [Unit] ([ID], [BaseUnitAmount], [BaseUnitID], [BusinessID], [BusinessProfileRecordID], [Name], [UnitGroupID])
VALUES (N'Hour', 60.0E0, N'Minute', NULL, NULL, N'Hour', N'Time');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] ON;
INSERT INTO [Unit] ([ID], [BaseUnitAmount], [BaseUnitID], [BusinessID], [BusinessProfileRecordID], [Name], [UnitGroupID])
VALUES (N'Kilogram', 1000.0E0, N'Grams', NULL, NULL, N'Kilogram', N'Mass');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] ON;
INSERT INTO [Unit] ([ID], [BaseUnitAmount], [BaseUnitID], [BusinessID], [BusinessProfileRecordID], [Name], [UnitGroupID])
VALUES (N'Meters', 100.0E0, N'Centimeters', NULL, NULL, N'Meters', N'Distance');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] ON;
INSERT INTO [Unit] ([ID], [BaseUnitAmount], [BaseUnitID], [BusinessID], [BusinessProfileRecordID], [Name], [UnitGroupID])
VALUES (N'Day', 24.0E0, N'Hour', NULL, NULL, N'Day', N'Time');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] ON;
INSERT INTO [Unit] ([ID], [BaseUnitAmount], [BaseUnitID], [BusinessID], [BusinessProfileRecordID], [Name], [UnitGroupID])
VALUES (N'Kilometers', 1000.0E0, N'Meters', NULL, NULL, N'Kilometers', N'Distance');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] ON;
INSERT INTO [Unit] ([ID], [BaseUnitAmount], [BaseUnitID], [BusinessID], [BusinessProfileRecordID], [Name], [UnitGroupID])
VALUES (N'Tonne', 1000.0E0, N'Kilogram', NULL, NULL, N'Tonne', N'Mass');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] OFF;
GO

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] ON;
INSERT INTO [Unit] ([ID], [BaseUnitAmount], [BaseUnitID], [BusinessID], [BusinessProfileRecordID], [Name], [UnitGroupID])
VALUES (N'28 Days Month', 28.0E0, N'Day', NULL, NULL, N'28 Days Month', N'Time'),
(N'29 Days Month', 29.0E0, N'Day', NULL, NULL, N'29 Days Month', N'Time'),
(N'30 Days Month', 30.0E0, N'Day', NULL, NULL, N'30 Days Month', N'Time'),
(N'31 Days Month', 31.0E0, N'Day', NULL, NULL, N'31 Days Month', N'Time'),
(N'Leap Year (Gregorian calendar)', 366.0E0, N'Day', NULL, NULL, N'Leap Year (Gregorian calendar)', N'Time'),
(N'Leap Year (Islamic calendar)', 355.0E0, N'Day', NULL, NULL, N'Leap Year (Islamic calendar)', N'Time'),
(N'Week', 7.0E0, N'Day', NULL, NULL, N'Week', N'Time'),
(N'Year (Gregorian calendar)', 365.0E0, N'Day', NULL, NULL, N'Year (Gregorian calendar)', N'Time'),
(N'Year (Islamic calendar)', 354.0E0, N'Day', NULL, NULL, N'Year (Islamic calendar)', N'Time');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'ID', N'BaseUnitAmount', N'BaseUnitID', N'BusinessID', N'BusinessProfileRecordID', N'Name', N'UnitGroupID') AND [object_id] = OBJECT_ID(N'[Unit]'))
    SET IDENTITY_INSERT [Unit] OFF;
GO

CREATE INDEX [IX_AccessKeyPair_AccountHolderID] ON [AccessKeyPair] ([AccountHolderID]);
GO

CREATE INDEX [IX_AccessKeyPair_BusinessID] ON [AccessKeyPair] ([BusinessID]);
GO

CREATE INDEX [IX_AccessKeyPair_BusinessProfileRecordID] ON [AccessKeyPair] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_AccessKeyPair_ContactID] ON [AccessKeyPair] ([ContactID]);
GO

CREATE INDEX [IX_Account_AccountGroupID] ON [Account] ([AccountGroupID]);
GO

CREATE INDEX [IX_Account_AccountHolderID] ON [Account] ([AccountHolderID]);
GO

CREATE INDEX [IX_Account_AccountTypeID] ON [Account] ([AccountTypeID]);
GO

CREATE INDEX [IX_Account_BankID] ON [Account] ([BankID]);
GO

CREATE INDEX [IX_Account_BankProfileID] ON [Account] ([BankProfileID]);
GO

CREATE INDEX [IX_Account_BillingProfileID] ON [Account] ([BillingProfileID]);
GO

CREATE INDEX [IX_Account_BusinessID] ON [Account] ([BusinessID]);
GO

CREATE INDEX [IX_Account_BusinessProfileRecordID] ON [Account] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Account_ContactID] ON [Account] ([ContactID]);
GO

CREATE INDEX [IX_Account_CurrencyID] ON [Account] ([CurrencyID]);
GO

CREATE INDEX [IX_Account_LedgerID] ON [Account] ([LedgerID]);
GO

CREATE INDEX [IX_Account_ParentAccountID] ON [Account] ([ParentAccountID]);
GO

CREATE INDEX [IX_AccountGroup_BusinessID] ON [AccountGroup] ([BusinessID]);
GO

CREATE INDEX [IX_AccountGroup_BusinessProfileRecordID] ON [AccountGroup] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_AccountGroup_ParentAccountGroupID] ON [AccountGroup] ([ParentAccountGroupID]);
GO

CREATE INDEX [IX_AccountHolderLogin_AccountHolderID] ON [AccountHolderLogin] ([AccountHolderID]);
GO

CREATE INDEX [IX_AccountHolderLogin_IPLookupID] ON [AccountHolderLogin] ([IPLookupID]);
GO

CREATE UNIQUE INDEX [IX_AccountHolderSettings_AccountHolderID] ON [AccountHolderSettings] ([AccountHolderID]) WHERE [AccountHolderID] IS NOT NULL;
GO

CREATE INDEX [IX_AccountingEntry_BankProfileID] ON [AccountingEntry] ([BankProfileID]);
GO

CREATE INDEX [IX_AccountingEntry_BusinessID] ON [AccountingEntry] ([BusinessID]);
GO

CREATE INDEX [IX_AccountingEntry_BusinessProfileRecordID] ON [AccountingEntry] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_AccountingEntry_CreditAccountID] ON [AccountingEntry] ([CreditAccountID]);
GO

CREATE INDEX [IX_AccountingEntry_CurrencyID] ON [AccountingEntry] ([CurrencyID]);
GO

CREATE INDEX [IX_AccountingEntry_DebitAccountID] ON [AccountingEntry] ([DebitAccountID]);
GO

CREATE INDEX [IX_AccountingEntry_JournalEntryID] ON [AccountingEntry] ([JournalEntryID]);
GO

CREATE INDEX [IX_AccountingEntry_PaymentChargeback_PaymentDisputeID] ON [AccountingEntry] ([PaymentChargeback_PaymentDisputeID]);
GO

CREATE INDEX [IX_AccountingEntry_PaymentChargeback_PaymentID] ON [AccountingEntry] ([PaymentChargeback_PaymentID]);
GO

CREATE INDEX [IX_AccountingEntry_PaymentChargeback_WalletAccountID] ON [AccountingEntry] ([PaymentChargeback_WalletAccountID]);
GO

CREATE INDEX [IX_AccountingEntry_PaymentDisputeID] ON [AccountingEntry] ([PaymentDisputeID]);
GO

CREATE INDEX [IX_AccountingEntry_PaymentID] ON [AccountingEntry] ([PaymentID]);
GO

CREATE INDEX [IX_AccountingEntry_RefundRequestID] ON [AccountingEntry] ([RefundRequestID]);
GO

CREATE INDEX [IX_AccountingEntry_WalletAccountID] ON [AccountingEntry] ([WalletAccountID]);
GO

CREATE INDEX [IX_AccountingPeriodClosingVoucher_AccountID] ON [AccountingPeriodClosingVoucher] ([AccountID]);
GO

CREATE INDEX [IX_AccountingPeriodClosingVoucher_BusinessID] ON [AccountingPeriodClosingVoucher] ([BusinessID]);
GO

CREATE INDEX [IX_AccountingPeriodClosingVoucher_BusinessProfileRecordID] ON [AccountingPeriodClosingVoucher] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_AccountingPeriodClosingVoucher_FiscalYearID] ON [AccountingPeriodClosingVoucher] ([FiscalYearID]);
GO

CREATE INDEX [IX_AccountRelation_AccountID] ON [AccountRelation] ([AccountID]);
GO

CREATE INDEX [IX_AccountRelation_BusinessID] ON [AccountRelation] ([BusinessID]);
GO

CREATE INDEX [IX_AccountRelation_BusinessProfileRecordID] ON [AccountRelation] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_AccountRelation_ProjectID] ON [AccountRelation] ([ProjectID]);
GO

CREATE INDEX [IX_AccountType_BusinessID] ON [AccountType] ([BusinessID]);
GO

CREATE INDEX [IX_AccountType_BusinessProfileRecordID] ON [AccountType] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ActivityFeed_BusinessID] ON [ActivityFeed] ([BusinessID]);
GO

CREATE UNIQUE INDEX [IX_ActivityFeed_ContactID] ON [ActivityFeed] ([ContactID]) WHERE [ContactID] IS NOT NULL;
GO

CREATE UNIQUE INDEX [IX_ActivityFeed_DealUnitID] ON [ActivityFeed] ([DealUnitID]) WHERE [DealUnitID] IS NOT NULL;
GO

CREATE UNIQUE INDEX [IX_ActivityFeed_MarketingCampaignID] ON [ActivityFeed] ([MarketingCampaignID]) WHERE [MarketingCampaignID] IS NOT NULL;
GO

CREATE UNIQUE INDEX [IX_ActivityFeed_MarketingListID] ON [ActivityFeed] ([MarketingListID]) WHERE [MarketingListID] IS NOT NULL;
GO

CREATE UNIQUE INDEX [IX_ActivityFeed_ProjectID] ON [ActivityFeed] ([ProjectID]) WHERE [ProjectID] IS NOT NULL;
GO

CREATE INDEX [IX_ActivityRecord_ActivityFeedID] ON [ActivityRecord] ([ActivityFeedID]);
GO

CREATE INDEX [IX_ActivityRecord_ActivityTypeID] ON [ActivityRecord] ([ActivityTypeID]);
GO

CREATE INDEX [IX_ActivityRecord_BusinessID] ON [ActivityRecord] ([BusinessID]);
GO

CREATE INDEX [IX_ActivityRecord_BusinessProfileRecordID] ON [ActivityRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ActivityRecord_InChargeBusinessProfileRecordID] ON [ActivityRecord] ([InChargeBusinessProfileRecordID]);
GO

CREATE INDEX [IX_ActivityRecord_ParentActivityID] ON [ActivityRecord] ([ParentActivityID]);
GO

CREATE INDEX [IX_ActivityType_BusinessID] ON [ActivityType] ([BusinessID]);
GO

CREATE INDEX [IX_ActivityType_BusinessProfileRecordID] ON [ActivityType] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Agreement_AgreementTypeID] ON [Agreement] ([AgreementTypeID]);
GO

CREATE INDEX [IX_Agreement_BusinessID] ON [Agreement] ([BusinessID]);
GO

CREATE INDEX [IX_Agreement_ContactID] ON [Agreement] ([ContactID]);
GO

CREATE INDEX [IX_AgreementRevision_AgreementID] ON [AgreementRevision] ([AgreementID]);
GO

CREATE INDEX [IX_AgreementRevision_BusinessID] ON [AgreementRevision] ([BusinessID]);
GO

CREATE INDEX [IX_AgreementRevision_LanguageIso639_1] ON [AgreementRevision] ([LanguageIso639_1]);
GO

CREATE INDEX [IX_AgreementType_BusinessID] ON [AgreementType] ([BusinessID]);
GO

CREATE INDEX [IX_AppliedFee_FeeID] ON [AppliedFee] ([FeeID]);
GO

CREATE INDEX [IX_AppliedFee_PaymentChargebackID] ON [AppliedFee] ([PaymentChargebackID]);
GO

CREATE INDEX [IX_AppliedFee_PaymentGatewayID] ON [AppliedFee] ([PaymentGatewayID]);
GO

CREATE INDEX [IX_AppliedFee_PaymentID] ON [AppliedFee] ([PaymentID]);
GO

CREATE INDEX [IX_AppliedFee_PaymentRefundID] ON [AppliedFee] ([PaymentRefundID]);
GO

CREATE INDEX [IX_AppliedFee_WalletWithdrawID] ON [AppliedFee] ([WalletWithdrawID]);
GO

CREATE INDEX [IX_AppliedTaxPolicyRecord_AppliedFeeID] ON [AppliedTaxPolicyRecord] ([AppliedFeeID]);
GO

CREATE INDEX [IX_AppliedTaxPolicyRecord_BillingItemRecordID] ON [AppliedTaxPolicyRecord] ([BillingItemRecordID]);
GO

CREATE INDEX [IX_AppliedTaxPolicyRecord_BusinessID] ON [AppliedTaxPolicyRecord] ([BusinessID]);
GO

CREATE INDEX [IX_AppliedTaxPolicyRecord_BusinessProfileRecordID] ON [AppliedTaxPolicyRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_AppliedTaxPolicyRecord_InvoiceID] ON [AppliedTaxPolicyRecord] ([InvoiceID]);
GO

CREATE INDEX [IX_AppliedTaxPolicyRecord_ItemID] ON [AppliedTaxPolicyRecord] ([ItemID]);
GO

CREATE INDEX [IX_AppliedTaxPolicyRecord_PaymentID] ON [AppliedTaxPolicyRecord] ([PaymentID]);
GO

CREATE INDEX [IX_AppliedTaxPolicyRecord_TaxPolicyID] ON [AppliedTaxPolicyRecord] ([TaxPolicyID]);
GO

CREATE INDEX [IX_AppraisalSession_AppraisalStageID] ON [AppraisalSession] ([AppraisalStageID]);
GO

CREATE INDEX [IX_AppraisalSession_AppraisalWorkflowID] ON [AppraisalSession] ([AppraisalWorkflowID]);
GO

CREATE INDEX [IX_AppraisalSession_BusinessID] ON [AppraisalSession] ([BusinessID]);
GO

CREATE INDEX [IX_AppraisalSession_BusinessProfileRecordID] ON [AppraisalSession] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_AppraisalSession_EmployeeProfileID] ON [AppraisalSession] ([EmployeeProfileID]);
GO

CREATE INDEX [IX_AspNetRoleClaims_RoleId] ON [AspNetRoleClaims] ([RoleId]);
GO

CREATE UNIQUE INDEX [RoleNameIndex] ON [AspNetRoles] ([NormalizedName]) WHERE [NormalizedName] IS NOT NULL;
GO

CREATE INDEX [IX_AspNetUserClaims_UserId] ON [AspNetUserClaims] ([UserId]);
GO

CREATE INDEX [IX_AspNetUserLogins_UserId] ON [AspNetUserLogins] ([UserId]);
GO

CREATE INDEX [IX_AspNetUserRoles_RoleId] ON [AspNetUserRoles] ([RoleId]);
GO

CREATE INDEX [EmailIndex] ON [AspNetUsers] ([NormalizedEmail]);
GO

CREATE INDEX [IX_AspNetUsers_CityID] ON [AspNetUsers] ([CityID]);
GO

CREATE INDEX [IX_AspNetUsers_CountryID] ON [AspNetUsers] ([CountryID]);
GO

CREATE INDEX [IX_AspNetUsers_CountryLanguageID] ON [AspNetUsers] ([CountryLanguageID]);
GO

CREATE INDEX [IX_AspNetUsers_CountryStateID] ON [AspNetUsers] ([CountryStateID]);
GO

CREATE INDEX [IX_AspNetUsers_CurrencyID] ON [AspNetUsers] ([CurrencyID]);
GO

CREATE INDEX [IX_AspNetUsers_SelectedBusinessID] ON [AspNetUsers] ([SelectedBusinessID]);
GO

CREATE INDEX [IX_AspNetUsers_TimezoneID] ON [AspNetUsers] ([TimezoneID]);
GO

CREATE UNIQUE INDEX [UserNameIndex] ON [AspNetUsers] ([NormalizedUserName]) WHERE [NormalizedUserName] IS NOT NULL;
GO

CREATE INDEX [IX_Asset_AssetCategoryID] ON [Asset] ([AssetCategoryID]);
GO

CREATE INDEX [IX_Asset_AssetLocationID] ON [Asset] ([AssetLocationID]);
GO

CREATE INDEX [IX_Asset_BusinessID] ON [Asset] ([BusinessID]);
GO

CREATE INDEX [IX_Asset_BusinessProfileRecordID] ON [Asset] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Asset_ContactID] ON [Asset] ([ContactID]);
GO

CREATE INDEX [IX_Asset_FinancialBookID] ON [Asset] ([FinancialBookID]);
GO

CREATE INDEX [IX_Asset_ItemID] ON [Asset] ([ItemID]);
GO

CREATE INDEX [IX_Asset_OrganizationDepartmentID] ON [Asset] ([OrganizationDepartmentID]);
GO

CREATE INDEX [IX_Asset_PurchaseInvoiceID] ON [Asset] ([PurchaseInvoiceID]);
GO

CREATE INDEX [IX_Asset_PurchaseReceiptID] ON [Asset] ([PurchaseReceiptID]);
GO

CREATE INDEX [IX_AssetCategory_BusinessID] ON [AssetCategory] ([BusinessID]);
GO

CREATE INDEX [IX_AssetDepreciationRecord_BusinessID] ON [AssetDepreciationRecord] ([BusinessID]);
GO

CREATE INDEX [IX_AssetDepreciationRecord_FinancialBookID] ON [AssetDepreciationRecord] ([FinancialBookID]);
GO

CREATE INDEX [IX_AssetTransfer_AssetID] ON [AssetTransfer] ([AssetID]);
GO

CREATE INDEX [IX_AssetTransfer_BusinessID] ON [AssetTransfer] ([BusinessID]);
GO

CREATE INDEX [IX_AssetTransfer_DestinationContactID] ON [AssetTransfer] ([DestinationContactID]);
GO

CREATE INDEX [IX_AssetTransfer_DestinationDepartmentID] ON [AssetTransfer] ([DestinationDepartmentID]);
GO

CREATE INDEX [IX_AssetTransfer_DestinationLocationID] ON [AssetTransfer] ([DestinationLocationID]);
GO

CREATE UNIQUE INDEX [IX_AssetTransfer_PreviousShareTransferID] ON [AssetTransfer] ([PreviousShareTransferID]) WHERE [PreviousShareTransferID] IS NOT NULL;
GO

CREATE INDEX [IX_AssetTransfer_SourceContactID] ON [AssetTransfer] ([SourceContactID]);
GO

CREATE INDEX [IX_AssetTransfer_SourceDepartmentID] ON [AssetTransfer] ([SourceDepartmentID]);
GO

CREATE INDEX [IX_AssetTransfer_SourceLocationID] ON [AssetTransfer] ([SourceLocationID]);
GO

CREATE INDEX [IX_AssetValueAmend_BusinessID] ON [AssetValueAmend] ([BusinessID]);
GO

CREATE INDEX [IX_AssetValueAmend_FinancialBookID] ON [AssetValueAmend] ([FinancialBookID]);
GO

CREATE INDEX [IX_Bank_CountryID] ON [Bank] ([CountryID]);
GO

CREATE INDEX [IX_BankGuarantee_BankAccountID] ON [BankGuarantee] ([BankAccountID]);
GO

CREATE INDEX [IX_BankGuarantee_BankProfileID] ON [BankGuarantee] ([BankProfileID]);
GO

CREATE INDEX [IX_BankGuarantee_BusinessID] ON [BankGuarantee] ([BusinessID]);
GO

CREATE INDEX [IX_BankGuarantee_BusinessProfileRecordID] ON [BankGuarantee] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BankGuarantee_ContactID] ON [BankGuarantee] ([ContactID]);
GO

CREATE INDEX [IX_BankGuarantee_CurrencyID] ON [BankGuarantee] ([CurrencyID]);
GO

CREATE INDEX [IX_BankGuarantee_OrderID] ON [BankGuarantee] ([OrderID]);
GO

CREATE INDEX [IX_BankGuarantee_ProjectID] ON [BankGuarantee] ([ProjectID]);
GO

CREATE INDEX [IX_BillingCoupon_BusinessID] ON [BillingCoupon] ([BusinessID]);
GO

CREATE INDEX [IX_BillingCoupon_BusinessProfileRecordID] ON [BillingCoupon] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BillingCoupon_CurrencyID] ON [BillingCoupon] ([CurrencyID]);
GO

CREATE UNIQUE INDEX [IX_BillingItemRecord_AccountingEntryID] ON [BillingItemRecord] ([AccountingEntryID]) WHERE [AccountingEntryID] IS NOT NULL;
GO

CREATE INDEX [IX_BillingItemRecord_BillingCouponCartRecord_BillingCouponID] ON [BillingItemRecord] ([BillingCouponCartRecord_BillingCouponID]);
GO

CREATE INDEX [IX_BillingItemRecord_BillingCouponID] ON [BillingItemRecord] ([BillingCouponID]);
GO

CREATE INDEX [IX_BillingItemRecord_BillingCouponOrderRecord_BillingCouponID] ON [BillingItemRecord] ([BillingCouponOrderRecord_BillingCouponID]);
GO

CREATE INDEX [IX_BillingItemRecord_BusinessID] ON [BillingItemRecord] ([BusinessID]);
GO

CREATE INDEX [IX_BillingItemRecord_BusinessProfileRecordID] ON [BillingItemRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BillingItemRecord_CartID] ON [BillingItemRecord] ([CartID]);
GO

CREATE INDEX [IX_BillingItemRecord_CurrencyID] ON [BillingItemRecord] ([CurrencyID]);
GO

CREATE INDEX [IX_BillingItemRecord_DealUnitID] ON [BillingItemRecord] ([DealUnitID]);
GO

CREATE INDEX [IX_BillingItemRecord_InvoiceID] ON [BillingItemRecord] ([InvoiceID]);
GO

CREATE INDEX [IX_BillingItemRecord_ItemID] ON [BillingItemRecord] ([ItemID]);
GO

CREATE INDEX [IX_BillingItemRecord_ItemPriceID] ON [BillingItemRecord] ([ItemPriceID]);
GO

CREATE INDEX [IX_BillingItemRecord_ItemShipmentPolicyID] ON [BillingItemRecord] ([ItemShipmentPolicyID]);
GO

CREATE INDEX [IX_BillingItemRecord_LocationID] ON [BillingItemRecord] ([LocationID]);
GO

CREATE INDEX [IX_BillingItemRecord_OrderID] ON [BillingItemRecord] ([OrderID]);
GO

CREATE INDEX [IX_BillingItemRecord_OrderItemRecord_OrderID] ON [BillingItemRecord] ([OrderItemRecord_OrderID]);
GO

CREATE INDEX [IX_BillingItemRecord_ParentBillingItemRecordID] ON [BillingItemRecord] ([ParentBillingItemRecordID]);
GO

CREATE INDEX [IX_BillingItemRecord_ParentOrderID] ON [BillingItemRecord] ([ParentOrderID]);
GO

CREATE INDEX [IX_BillingItemRecord_PriceListItemID] ON [BillingItemRecord] ([PriceListItemID]);
GO

CREATE INDEX [IX_BillingItemRecord_QuoteID] ON [BillingItemRecord] ([QuoteID]);
GO

CREATE INDEX [IX_BillingItemRecord_QuoteItemRecordID] ON [BillingItemRecord] ([QuoteItemRecordID]);
GO

CREATE INDEX [IX_BillingItemRecord_RefundPolicyID] ON [BillingItemRecord] ([RefundPolicyID]);
GO

CREATE INDEX [IX_BillingItemRecord_ReturnPolicyID] ON [BillingItemRecord] ([ReturnPolicyID]);
GO

CREATE INDEX [IX_BillingItemRecord_UnitGroupID] ON [BillingItemRecord] ([UnitGroupID]);
GO

CREATE INDEX [IX_BillingItemRecord_UnitID] ON [BillingItemRecord] ([UnitID]);
GO

CREATE INDEX [IX_BillingItemRecord_WarrantyPolicyID] ON [BillingItemRecord] ([WarrantyPolicyID]);
GO

CREATE INDEX [IX_Blockchain_BusinessID] ON [Blockchain] ([BusinessID]);
GO

CREATE INDEX [IX_Blockchain_BusinessProfileRecordID] ON [Blockchain] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BlockchainBlock_BlockchainID] ON [BlockchainBlock] ([BlockchainID]);
GO

CREATE INDEX [IX_BlockchainBlock_NonFungibleTokenID] ON [BlockchainBlock] ([NonFungibleTokenID]);
GO

CREATE UNIQUE INDEX [IX_BlockchainBlock_PreviousBlockchainBlockID] ON [BlockchainBlock] ([PreviousBlockchainBlockID]);
GO

CREATE INDEX [IX_BlockchainBlock_WalletAccountID] ON [BlockchainBlock] ([WalletAccountID]);
GO

CREATE INDEX [IX_BlockRecord_BlockedSocialProfileID] ON [BlockRecord] ([BlockedSocialProfileID]);
GO

CREATE INDEX [IX_BlockRecord_BlockerSocialProfileID] ON [BlockRecord] ([BlockerSocialProfileID]);
GO

CREATE INDEX [IX_BrandRecord_BrandID] ON [BrandRecord] ([BrandID]);
GO

CREATE INDEX [IX_BrandRecord_ItemID] ON [BrandRecord] ([ItemID]);
GO

CREATE INDEX [IX_Budget_BusinessID] ON [Budget] ([BusinessID]);
GO

CREATE INDEX [IX_Budget_CostCentreID] ON [Budget] ([CostCentreID]);
GO

CREATE INDEX [IX_Budget_FiscalYearID] ON [Budget] ([FiscalYearID]);
GO

CREATE INDEX [IX_Budget_ProjectID] ON [Budget] ([ProjectID]);
GO

CREATE INDEX [IX_Business_BusinessIndustryID] ON [Business] ([BusinessIndustryID]);
GO

CREATE INDEX [IX_Business_BusinessSegmentID] ON [Business] ([BusinessSegmentID]);
GO

CREATE INDEX [IX_Business_BusinessTypeID] ON [Business] ([BusinessTypeID]);
GO

CREATE INDEX [IX_Business_CityID] ON [Business] ([CityID]);
GO

CREATE INDEX [IX_Business_CountryID] ON [Business] ([CountryID]);
GO

CREATE INDEX [IX_Business_CountryLanguageID] ON [Business] ([CountryLanguageID]);
GO

CREATE INDEX [IX_Business_CountryStateID] ON [Business] ([CountryStateID]);
GO

CREATE INDEX [IX_Business_CurrencyID] ON [Business] ([CurrencyID]);
GO

CREATE INDEX [IX_Business_ParentBusinessID] ON [Business] ([ParentBusinessID]);
GO

CREATE INDEX [IX_Business_TimezoneID] ON [Business] ([TimezoneID]);
GO

CREATE INDEX [IX_BusinessApplication_BusinessID] ON [BusinessApplication] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessApplication_BusinessProfileRecordID] ON [BusinessApplication] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessApplicationQueryRecord_BusinessApplicationID] ON [BusinessApplicationQueryRecord] ([BusinessApplicationID]);
GO

CREATE INDEX [IX_BusinessApplicationReplyURL_BusinessApplicationID] ON [BusinessApplicationReplyURL] ([BusinessApplicationID]);
GO

CREATE INDEX [IX_BusinessApplicationRequestedPermission_BusinessApplicationID] ON [BusinessApplicationRequestedPermission] ([BusinessApplicationID]);
GO

CREATE INDEX [IX_BusinessApplicationRequestedPermission_BusinessPermissionID] ON [BusinessApplicationRequestedPermission] ([BusinessPermissionID]);
GO

CREATE INDEX [IX_BusinessApplicationSecret_AccessKeyPairID] ON [BusinessApplicationSecret] ([AccessKeyPairID]);
GO

CREATE INDEX [IX_BusinessApplicationSecret_BusinessApplicationID] ON [BusinessApplicationSecret] ([BusinessApplicationID]);
GO

CREATE INDEX [IX_BusinessApplicationSecret_JwtSigningAccessKeyPairID] ON [BusinessApplicationSecret] ([JwtSigningAccessKeyPairID]);
GO

CREATE INDEX [IX_BusinessDepartment_BusinessID] ON [BusinessDepartment] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessDepartment_BusinessProfileRecordID] ON [BusinessDepartment] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessDepartment_OrganizationProfileID] ON [BusinessDepartment] ([OrganizationProfileID]);
GO

CREATE INDEX [IX_BusinessDepartment_ParentDepartmentID] ON [BusinessDepartment] ([ParentDepartmentID]);
GO

CREATE INDEX [IX_BusinessDomain_BusinessID] ON [BusinessDomain] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessIndustry_BusinessProfileRecordID] ON [BusinessIndustry] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessIndustry_ParentBusinessIndustryID] ON [BusinessIndustry] ([ParentBusinessIndustryID]);
GO

CREATE INDEX [IX_BusinessIndustryRecord_BusinessID] ON [BusinessIndustryRecord] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessIndustryRecord_BusinessIndustryID] ON [BusinessIndustryRecord] ([BusinessIndustryID]);
GO

CREATE INDEX [IX_BusinessPermission_BusinessID] ON [BusinessPermission] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessPermission_BusinessProfileRecordID] ON [BusinessPermission] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessPermissionGrant_BusinessApplicationID] ON [BusinessPermissionGrant] ([BusinessApplicationID]);
GO

CREATE INDEX [IX_BusinessPermissionGrant_BusinessID] ON [BusinessPermissionGrant] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessPermissionGrant_BusinessPermissionID] ON [BusinessPermissionGrant] ([BusinessPermissionID]);
GO

CREATE INDEX [IX_BusinessPermissionGrant_BusinessProfileRecordID] ON [BusinessPermissionGrant] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessPermissionGrant_BusinessSecurityRoleID] ON [BusinessPermissionGrant] ([BusinessSecurityRoleID]);
GO

CREATE INDEX [IX_BusinessPermissionGrant_GrantorBusinessProfileRecordID] ON [BusinessPermissionGrant] ([GrantorBusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessPosition_BusinessID] ON [BusinessPosition] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessPosition_BusinessProfileRecordID] ON [BusinessPosition] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessProcess_BusinessID] ON [BusinessProcess] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessProcess_BusinessProfileRecordID] ON [BusinessProcess] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessProcess_ParentBusinessProcessID] ON [BusinessProcess] ([ParentBusinessProcessID]);
GO

CREATE INDEX [IX_BusinessProcessStage_AppraisalWorkflowID] ON [BusinessProcessStage] ([AppraisalWorkflowID]);
GO

CREATE INDEX [IX_BusinessProcessStage_BusinessID] ON [BusinessProcessStage] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessProcessStage_BusinessProcessID] ON [BusinessProcessStage] ([BusinessProcessID]);
GO

CREATE INDEX [IX_BusinessProcessStage_BusinessProfileRecordID] ON [BusinessProcessStage] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessProcessStage_DealUnitFlowID] ON [BusinessProcessStage] ([DealUnitFlowID]);
GO

CREATE INDEX [IX_BusinessProcessStage_ParentBusinessProcessStageID] ON [BusinessProcessStage] ([ParentBusinessProcessStageID]);
GO

CREATE INDEX [IX_BusinessProcessStageRelation_ChildBusinessProcessStageID] ON [BusinessProcessStageRelation] ([ChildBusinessProcessStageID]);
GO

CREATE INDEX [IX_BusinessProcessStageRelation_ParentBusinessProcessStageID] ON [BusinessProcessStageRelation] ([ParentBusinessProcessStageID]);
GO

CREATE INDEX [IX_BusinessProfileInvitation_BusinessID] ON [BusinessProfileInvitation] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessProfileInvitation_BusinessProfileRecordID] ON [BusinessProfileInvitation] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessProfileRecord_AccountHolderID] ON [BusinessProfileRecord] ([AccountHolderID]);
GO

CREATE INDEX [IX_BusinessProfileRecord_BusinessID] ON [BusinessProfileRecord] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessRelationship_ChildBusinessID] ON [BusinessRelationship] ([ChildBusinessID]);
GO

CREATE INDEX [IX_BusinessRelationship_ParentBusinessID] ON [BusinessRelationship] ([ParentBusinessID]);
GO

CREATE INDEX [IX_BusinessSecurityLog_BusinessID] ON [BusinessSecurityLog] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessSecurityLog_BusinessProfileRecordID] ON [BusinessSecurityLog] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessSecurityLog_SigningCertificateID] ON [BusinessSecurityLog] ([SigningCertificateID]);
GO

CREATE INDEX [IX_BusinessSecurityLog_SigningProfileID] ON [BusinessSecurityLog] ([SigningProfileID]);
GO

CREATE INDEX [IX_BusinessSecurityRole_BusinessID] ON [BusinessSecurityRole] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessSecurityRole_BusinessProfileRecordID] ON [BusinessSecurityRole] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessTeam_BusinessID] ON [BusinessTeam] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessTeam_BusinessProfileRecordID] ON [BusinessTeam] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessTeam_BusinessUnitID] ON [BusinessTeam] ([BusinessUnitID]);
GO

CREATE INDEX [IX_BusinessTeam_OrganizationProfileID] ON [BusinessTeam] ([OrganizationProfileID]);
GO

CREATE INDEX [IX_BusinessTeamRecord_BusinessID] ON [BusinessTeamRecord] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessTeamRecord_BusinessProfileRecordID] ON [BusinessTeamRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessTeamRecord_BusinessTeamID] ON [BusinessTeamRecord] ([BusinessTeamID]);
GO

CREATE INDEX [IX_BusinessTeamRecord_ContactID] ON [BusinessTeamRecord] ([ContactID]);
GO

CREATE INDEX [IX_BusinessTeamRecord_EmployeeProfileID] ON [BusinessTeamRecord] ([EmployeeProfileID]);
GO

CREATE INDEX [IX_BusinessTeamRecord_ProjectID] ON [BusinessTeamRecord] ([ProjectID]);
GO

CREATE UNIQUE INDEX [IX_BusinessTenantSettings_BusinessID] ON [BusinessTenantSettings] ([BusinessID]) WHERE [BusinessID] IS NOT NULL;
GO

CREATE INDEX [IX_BusinessUnit_BusinessID] ON [BusinessUnit] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessUnit_BusinessProfileRecordID] ON [BusinessUnit] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessUnit_CountryID] ON [BusinessUnit] ([CountryID]);
GO

CREATE INDEX [IX_BusinessUnit_OrganizationProfileID] ON [BusinessUnit] ([OrganizationProfileID]);
GO

CREATE INDEX [IX_BusinessUnit_ParentBusinessUnitID] ON [BusinessUnit] ([ParentBusinessUnitID]);
GO

CREATE INDEX [IX_BusinessUnitRecord_BusinessID] ON [BusinessUnitRecord] ([BusinessID]);
GO

CREATE INDEX [IX_BusinessUnitRecord_BusinessProfileRecordID] ON [BusinessUnitRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_BusinessUnitRecord_BusinessUnitID] ON [BusinessUnitRecord] ([BusinessUnitID]);
GO

CREATE UNIQUE INDEX [IX_Cart_AccountHolderID] ON [Cart] ([AccountHolderID]) WHERE [AccountHolderID] IS NOT NULL;
GO

CREATE UNIQUE INDEX [IX_Cart_BusinessID] ON [Cart] ([BusinessID]) WHERE [BusinessID] IS NOT NULL;
GO

CREATE INDEX [IX_Cart_CityID] ON [Cart] ([CityID]);
GO

CREATE UNIQUE INDEX [IX_Cart_ContactID] ON [Cart] ([ContactID]) WHERE [ContactID] IS NOT NULL;
GO

CREATE INDEX [IX_Cart_CountryID] ON [Cart] ([CountryID]);
GO

CREATE INDEX [IX_Cart_CountryStateID] ON [Cart] ([CountryStateID]);
GO

CREATE INDEX [IX_Cart_CurrencyID] ON [Cart] ([CurrencyID]);
GO

CREATE INDEX [IX_Cart_GuestCart_BusinessID] ON [Cart] ([GuestCart_BusinessID]);
GO

CREATE INDEX [IX_Cart_IPLookupID] ON [Cart] ([IPLookupID]);
GO

CREATE INDEX [IX_Cart_LocationID] ON [Cart] ([LocationID]);
GO

CREATE INDEX [IX_CartRecord_CartID] ON [CartRecord] ([CartID]);
GO

CREATE INDEX [IX_CartRecord_CurrencyID] ON [CartRecord] ([CurrencyID]);
GO

CREATE INDEX [IX_CartRecord_ItemCartRecord_ItemID] ON [CartRecord] ([ItemCartRecord_ItemID]);
GO

CREATE INDEX [IX_CartRecord_ItemID] ON [CartRecord] ([ItemID]);
GO

CREATE INDEX [IX_CartRecord_ItemShippingPolicyID] ON [CartRecord] ([ItemShippingPolicyID]);
GO

CREATE INDEX [IX_CartRecord_RecentlyViewedItemRecord_ItemID] ON [CartRecord] ([RecentlyViewedItemRecord_ItemID]);
GO

CREATE INDEX [IX_CartRecord_RefundPolicyID] ON [CartRecord] ([RefundPolicyID]);
GO

CREATE INDEX [IX_CartRecord_ReturnPolicyID] ON [CartRecord] ([ReturnPolicyID]);
GO

CREATE INDEX [IX_CartRecord_ShippingAddressID] ON [CartRecord] ([ShippingAddressID]);
GO

CREATE INDEX [IX_CartRecord_WarrantyPolicyID] ON [CartRecord] ([WarrantyPolicyID]);
GO

CREATE INDEX [IX_Cell_ColumnID] ON [Cell] ([ColumnID]);
GO

CREATE INDEX [IX_Cell_RowID] ON [Cell] ([RowID]);
GO

CREATE INDEX [IX_City_CountryID] ON [City] ([CountryID]);
GO

CREATE INDEX [IX_City_StateID] ON [City] ([StateID]);
GO

CREATE INDEX [IX_CognitiveAgent_BusinessID] ON [CognitiveAgent] ([BusinessID]);
GO

CREATE INDEX [IX_CognitiveAgent_BusinessProfileRecordID] ON [CognitiveAgent] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CognitiveAgentConversation_AccountHolderID] ON [CognitiveAgentConversation] ([AccountHolderID]);
GO

CREATE INDEX [IX_CognitiveAgentConversation_BusinessID] ON [CognitiveAgentConversation] ([BusinessID]);
GO

CREATE INDEX [IX_CognitiveAgentConversation_BusinessProfileRecordID] ON [CognitiveAgentConversation] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CognitiveAgentConversation_CognitiveAgentID] ON [CognitiveAgentConversation] ([CognitiveAgentID]);
GO

CREATE INDEX [IX_CognitiveAgentConversation_IndividualID] ON [CognitiveAgentConversation] ([IndividualID]);
GO

CREATE INDEX [IX_CognitiveAgentConversation_OrganizationID] ON [CognitiveAgentConversation] ([OrganizationID]);
GO

CREATE INDEX [IX_CognitiveAgentConversation_ReceptorBusinessID] ON [CognitiveAgentConversation] ([ReceptorBusinessID]);
GO

CREATE INDEX [IX_Column_EntityID] ON [Column] ([EntityID]);
GO

CREATE INDEX [IX_Commission_BusinessID] ON [Commission] ([BusinessID]);
GO

CREATE INDEX [IX_Commission_BusinessProfileRecordID] ON [Commission] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Commission_EmmisorContactID] ON [Commission] ([EmmisorContactID]);
GO

CREATE INDEX [IX_Commission_EmmisorWalletAccountID] ON [Commission] ([EmmisorWalletAccountID]);
GO

CREATE INDEX [IX_Commission_PaymentID] ON [Commission] ([PaymentID]);
GO

CREATE INDEX [IX_Commission_ReceptorContactID] ON [Commission] ([ReceptorContactID]);
GO

CREATE INDEX [IX_Commission_ReceptorWalletAccountID] ON [Commission] ([ReceptorWalletAccountID]);
GO

CREATE INDEX [IX_Commission_SalaryID] ON [Commission] ([SalaryID]);
GO

CREATE INDEX [IX_Contact_AccountHolderID] ON [Contact] ([AccountHolderID]);
GO

CREATE INDEX [IX_Contact_BusinessID] ON [Contact] ([BusinessID]);
GO

CREATE INDEX [IX_Contact_BusinessProfileRecordID] ON [Contact] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Contact_BusinessTeamID] ON [Contact] ([BusinessTeamID]);
GO

CREATE INDEX [IX_Contact_CityID] ON [Contact] ([CityID]);
GO

CREATE INDEX [IX_Contact_ContactSourceID] ON [Contact] ([ContactSourceID]);
GO

CREATE INDEX [IX_Contact_CountryID] ON [Contact] ([CountryID]);
GO

CREATE INDEX [IX_Contact_CountryLanguageID] ON [Contact] ([CountryLanguageID]);
GO

CREATE INDEX [IX_Contact_CountryStateID] ON [Contact] ([CountryStateID]);
GO

CREATE INDEX [IX_Contact_CurrencyID] ON [Contact] ([CurrencyID]);
GO

CREATE INDEX [IX_Contact_FinancialBookID] ON [Contact] ([FinancialBookID]);
GO

CREATE INDEX [IX_Contact_ItemShippingPolicyID] ON [Contact] ([ItemShippingPolicyID]);
GO

CREATE INDEX [IX_Contact_OrganizationID] ON [Contact] ([OrganizationID]);
GO

CREATE INDEX [IX_Contact_OwnerContactID] ON [Contact] ([OwnerContactID]);
GO

CREATE INDEX [IX_Contact_ParentContactID] ON [Contact] ([ParentContactID]);
GO

CREATE INDEX [IX_Contact_PartnerProfileID] ON [Contact] ([PartnerProfileID]);
GO

CREATE INDEX [IX_Contact_PaymentTermID] ON [Contact] ([PaymentTermID]);
GO

CREATE INDEX [IX_Contact_PrimaryContactID] ON [Contact] ([PrimaryContactID]);
GO

CREATE INDEX [IX_Contact_RelatedAccountHolderID] ON [Contact] ([RelatedAccountHolderID]);
GO

CREATE INDEX [IX_Contact_RelatedBusinessID] ON [Contact] ([RelatedBusinessID]);
GO

CREATE UNIQUE INDEX [IX_Contact_RelatedBusinessProfileRecordID] ON [Contact] ([RelatedBusinessProfileRecordID]) WHERE [RelatedBusinessProfileRecordID] IS NOT NULL;
GO

CREATE INDEX [IX_Contact_ShippingMethodID] ON [Contact] ([ShippingMethodID]);
GO

CREATE INDEX [IX_Contact_TerritoryID] ON [Contact] ([TerritoryID]);
GO

CREATE INDEX [IX_Contact_TimezoneID] ON [Contact] ([TimezoneID]);
GO

CREATE INDEX [IX_ContactGroupRecord_ContactID] ON [ContactGroupRecord] ([ContactID]);
GO

CREATE INDEX [IX_ContactGroupRecord_ContactsGroupID] ON [ContactGroupRecord] ([ContactsGroupID]);
GO

CREATE INDEX [IX_ContactProfile_BankID] ON [ContactProfile] ([BankID]);
GO

CREATE INDEX [IX_ContactProfile_BusinessID] ON [ContactProfile] ([BusinessID]);
GO

CREATE INDEX [IX_ContactProfile_BusinessProfileRecordID] ON [ContactProfile] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ContactProfile_CityID] ON [ContactProfile] ([CityID]);
GO

CREATE INDEX [IX_ContactProfile_ContactID] ON [ContactProfile] ([ContactID]);
GO

CREATE INDEX [IX_ContactProfile_CountryID] ON [ContactProfile] ([CountryID]);
GO

CREATE INDEX [IX_ContactProfile_CountryStateID] ON [ContactProfile] ([CountryStateID]);
GO

CREATE INDEX [IX_ContactProfile_EmployeeTypeID] ON [ContactProfile] ([EmployeeTypeID]);
GO

CREATE INDEX [IX_ContactProfile_FiscalAuthorityID] ON [ContactProfile] ([FiscalAuthorityID]);
GO

CREATE INDEX [IX_ContactProfile_FiscalIdentificationTypeID] ON [ContactProfile] ([FiscalIdentificationTypeID]);
GO

CREATE INDEX [IX_ContactProfile_FiscalRegimeID] ON [ContactProfile] ([FiscalRegimeID]);
GO

CREATE INDEX [IX_ContactProfile_JobTitleID] ON [ContactProfile] ([JobTitleID]);
GO

CREATE INDEX [IX_ContactProfile_MarketingCampaignID] ON [ContactProfile] ([MarketingCampaignID]);
GO

CREATE INDEX [IX_ContactProfile_PartnerTierID] ON [ContactProfile] ([PartnerTierID]);
GO

CREATE INDEX [IX_ContactProfile_WalletAccountID] ON [ContactProfile] ([WalletAccountID]);
GO

CREATE INDEX [IX_ContactRelation_BusinessID] ON [ContactRelation] ([BusinessID]);
GO

CREATE INDEX [IX_ContactRelation_ContactID] ON [ContactRelation] ([ContactID]);
GO

CREATE INDEX [IX_ContactRelation_ContactRelationTypeID] ON [ContactRelation] ([ContactRelationTypeID]);
GO

CREATE INDEX [IX_ContactRelation_RelatedContactID] ON [ContactRelation] ([RelatedContactID]);
GO

CREATE INDEX [IX_ContactRelationType_BusinessID] ON [ContactRelationType] ([BusinessID]);
GO

CREATE INDEX [IX_ContactSource_BusinessID] ON [ContactSource] ([BusinessID]);
GO

CREATE INDEX [IX_Conversation_SocialProfileID] ON [Conversation] ([SocialProfileID]);
GO

CREATE INDEX [IX_Conversation_SupportTicketID] ON [Conversation] ([SupportTicketID]);
GO

CREATE INDEX [IX_CostCentre_BusinessID] ON [CostCentre] ([BusinessID]);
GO

CREATE INDEX [IX_CostCentre_CostCentresGroupID] ON [CostCentre] ([CostCentresGroupID]);
GO

CREATE INDEX [IX_CostCentre_ParentCostCentreID] ON [CostCentre] ([ParentCostCentreID]);
GO

CREATE INDEX [IX_CostCentresGroup_BusinessID] ON [CostCentresGroup] ([BusinessID]);
GO

CREATE INDEX [IX_CostCentresGroup_ParentCostCentresGroupID] ON [CostCentresGroup] ([ParentCostCentresGroupID]);
GO

CREATE INDEX [IX_CountryAltSpelling_CountryID] ON [CountryAltSpelling] ([CountryID]);
GO

CREATE INDEX [IX_CountryBorder_BorderCountryID] ON [CountryBorder] ([BorderCountryID]);
GO

CREATE INDEX [IX_CountryBorder_CountryID] ON [CountryBorder] ([CountryID]);
GO

CREATE INDEX [IX_CountryCallingCode_CountryID] ON [CountryCallingCode] ([CountryID]);
GO

CREATE INDEX [IX_CountryLanguageRecord_CountryID] ON [CountryLanguageRecord] ([CountryID]);
GO

CREATE INDEX [IX_CountryLanguageRecord_CountryLanguageID] ON [CountryLanguageRecord] ([CountryLanguageID]);
GO

CREATE UNIQUE INDEX [IX_CountryNameTranslations_CountryID] ON [CountryNameTranslations] ([CountryID]) WHERE [CountryID] IS NOT NULL;
GO

CREATE INDEX [IX_CountryRegionalBlockRecord_CountryID] ON [CountryRegionalBlockRecord] ([CountryID]);
GO

CREATE INDEX [IX_CountryRegionalBlockRecord_RegionalBlockID] ON [CountryRegionalBlockRecord] ([RegionalBlockID]);
GO

CREATE INDEX [IX_CountryState_CountryID] ON [CountryState] ([CountryID]);
GO

CREATE INDEX [IX_CountryTimeZoneRecord_CountryID] ON [CountryTimeZoneRecord] ([CountryID]);
GO

CREATE INDEX [IX_CountryTimeZoneRecord_TimezoneID] ON [CountryTimeZoneRecord] ([TimezoneID]);
GO

CREATE INDEX [IX_CountryTopLevelDomain_CountryID] ON [CountryTopLevelDomain] ([CountryID]);
GO

CREATE INDEX [IX_CourrierItemShippingPolicyRecord_BusinessID] ON [CourrierItemShippingPolicyRecord] ([BusinessID]);
GO

CREATE INDEX [IX_CourrierItemShippingPolicyRecord_ItemShippingPolicyID] ON [CourrierItemShippingPolicyRecord] ([ItemShippingPolicyID]);
GO

CREATE INDEX [IX_CourrierItemShippingPolicyRecord_ShippingCourierID] ON [CourrierItemShippingPolicyRecord] ([ShippingCourierID]);
GO

CREATE INDEX [IX_CourseAssignment_BusinessID] ON [CourseAssignment] ([BusinessID]);
GO

CREATE INDEX [IX_CourseAssignment_BusinessProfileRecordID] ON [CourseAssignment] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseAssignment_CourseAssignmentTypeID] ON [CourseAssignment] ([CourseAssignmentTypeID]);
GO

CREATE INDEX [IX_CourseAssignment_CourseCohortID] ON [CourseAssignment] ([CourseCohortID]);
GO

CREATE INDEX [IX_CourseAssignment_CourseGradingRubricID] ON [CourseAssignment] ([CourseGradingRubricID]);
GO

CREATE INDEX [IX_CourseAssignment_CourseID] ON [CourseAssignment] ([CourseID]);
GO

CREATE INDEX [IX_CourseAssignment_CourseProblemSetID] ON [CourseAssignment] ([CourseProblemSetID]);
GO

CREATE INDEX [IX_CourseAssignment_CourseUnitID] ON [CourseAssignment] ([CourseUnitID]);
GO

CREATE INDEX [IX_CourseAssignmentSubmit_BusinessID] ON [CourseAssignmentSubmit] ([BusinessID]);
GO

CREATE INDEX [IX_CourseAssignmentSubmit_CourseAssignmentID] ON [CourseAssignmentSubmit] ([CourseAssignmentID]);
GO

CREATE INDEX [IX_CourseAssignmentSubmit_CourseID] ON [CourseAssignmentSubmit] ([CourseID]);
GO

CREATE INDEX [IX_CourseAssignmentSubmit_GradingCriteriaCategoryID] ON [CourseAssignmentSubmit] ([GradingCriteriaCategoryID]);
GO

CREATE INDEX [IX_CourseAssignmentSubmit_InstructorProfileID] ON [CourseAssignmentSubmit] ([InstructorProfileID]);
GO

CREATE INDEX [IX_CourseAssignmentSubmit_StudentProfileID] ON [CourseAssignmentSubmit] ([StudentProfileID]);
GO

CREATE INDEX [IX_CourseAssignmentType_BusinessID] ON [CourseAssignmentType] ([BusinessID]);
GO

CREATE INDEX [IX_CourseAssignmentType_BusinessProfileRecordID] ON [CourseAssignmentType] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseAssignmentType_CourseID] ON [CourseAssignmentType] ([CourseID]);
GO

CREATE INDEX [IX_CourseCohort_BusinessID] ON [CourseCohort] ([BusinessID]);
GO

CREATE INDEX [IX_CourseCohort_BusinessProfileRecordID] ON [CourseCohort] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseCohort_CourseContentGroupID] ON [CourseCohort] ([CourseContentGroupID]);
GO

CREATE INDEX [IX_CourseCohort_CourseID] ON [CourseCohort] ([CourseID]);
GO

CREATE INDEX [IX_CourseCollectionRecord_CourseCollectionID] ON [CourseCollectionRecord] ([CourseCollectionID]);
GO

CREATE INDEX [IX_CourseCollectionRecord_CourseID] ON [CourseCollectionRecord] ([CourseID]);
GO

CREATE INDEX [IX_CourseCompletionCertificate_BusinessID] ON [CourseCompletionCertificate] ([BusinessID]);
GO

CREATE INDEX [IX_CourseCompletionCertificate_BusinessProfileRecordID] ON [CourseCompletionCertificate] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseCompletionCertificate_CourseCompletionCertificateTemplateID] ON [CourseCompletionCertificate] ([CourseCompletionCertificateTemplateID]);
GO

CREATE UNIQUE INDEX [IX_CourseCompletionCertificate_CourseEnrollmentID] ON [CourseCompletionCertificate] ([CourseEnrollmentID]) WHERE [CourseEnrollmentID] IS NOT NULL;
GO

CREATE INDEX [IX_CourseCompletionCertificate_CourseID] ON [CourseCompletionCertificate] ([CourseID]);
GO

CREATE INDEX [IX_CourseCompletionCertificate_StudentProfileID] ON [CourseCompletionCertificate] ([StudentProfileID]);
GO

CREATE INDEX [IX_CourseContentGroup_BusinessID] ON [CourseContentGroup] ([BusinessID]);
GO

CREATE INDEX [IX_CourseContentGroup_BusinessProfileRecordID] ON [CourseContentGroup] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseContentGroup_CourseID] ON [CourseContentGroup] ([CourseID]);
GO

CREATE INDEX [IX_CourseEnrollment_BusinessID] ON [CourseEnrollment] ([BusinessID]);
GO

CREATE INDEX [IX_CourseEnrollment_BusinessProfileRecordID] ON [CourseEnrollment] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseEnrollment_CourseCohortID] ON [CourseEnrollment] ([CourseCohortID]);
GO

CREATE INDEX [IX_CourseEnrollment_CourseID] ON [CourseEnrollment] ([CourseID]);
GO

CREATE INDEX [IX_CourseEnrollment_StudentProfileID] ON [CourseEnrollment] ([StudentProfileID]);
GO

CREATE INDEX [IX_CourseGradingCriteria_BusinessID] ON [CourseGradingCriteria] ([BusinessID]);
GO

CREATE INDEX [IX_CourseGradingCriteria_BusinessProfileRecordID] ON [CourseGradingCriteria] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseGradingCriteria_GradingRubricID] ON [CourseGradingCriteria] ([GradingRubricID]);
GO

CREATE INDEX [IX_CourseGradingCriteriaCategory_BusinessID] ON [CourseGradingCriteriaCategory] ([BusinessID]);
GO

CREATE INDEX [IX_CourseGradingCriteriaCategory_BusinessProfileRecordID] ON [CourseGradingCriteriaCategory] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseGradingCriteriaCategory_CourseGradingCriteriaID] ON [CourseGradingCriteriaCategory] ([CourseGradingCriteriaID]);
GO

CREATE INDEX [IX_CourseGradingCriteriaCategory_CourseGradingRubricID] ON [CourseGradingCriteriaCategory] ([CourseGradingRubricID]);
GO

CREATE INDEX [IX_CourseGradingRubric_BusinessID] ON [CourseGradingRubric] ([BusinessID]);
GO

CREATE INDEX [IX_CourseGradingRubric_BusinessProfileRecordID] ON [CourseGradingRubric] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseGradingRubric_CourseID] ON [CourseGradingRubric] ([CourseID]);
GO

CREATE INDEX [IX_CourseHandout_BusinessID] ON [CourseHandout] ([BusinessID]);
GO

CREATE INDEX [IX_CourseHandout_BusinessProfileRecordID] ON [CourseHandout] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseHandout_CourseID] ON [CourseHandout] ([CourseID]);
GO

CREATE INDEX [IX_CourseHandout_CourseUnitID] ON [CourseHandout] ([CourseUnitID]);
GO

CREATE INDEX [IX_CourseLibrary_BusinessID] ON [CourseLibrary] ([BusinessID]);
GO

CREATE INDEX [IX_CourseLibrary_BusinessProfileRecordID] ON [CourseLibrary] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseLibrary_CourseID] ON [CourseLibrary] ([CourseID]);
GO

CREATE INDEX [IX_CourseLibrary_CourseUnitID] ON [CourseLibrary] ([CourseUnitID]);
GO

CREATE INDEX [IX_CourseProblemSet_BusinessID] ON [CourseProblemSet] ([BusinessID]);
GO

CREATE INDEX [IX_CourseProblemSet_BusinessProfileRecordID] ON [CourseProblemSet] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseProblemSet_CourseGradingRubricID] ON [CourseProblemSet] ([CourseGradingRubricID]);
GO

CREATE INDEX [IX_CourseProblemSet_CourseID] ON [CourseProblemSet] ([CourseID]);
GO

CREATE INDEX [IX_CourseProblemSet_CourseUnitID] ON [CourseProblemSet] ([CourseUnitID]);
GO

CREATE INDEX [IX_CourseSection_BusinessID] ON [CourseSection] ([BusinessID]);
GO

CREATE INDEX [IX_CourseSection_BusinessProfileRecordID] ON [CourseSection] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseSection_CourseID] ON [CourseSection] ([CourseID]);
GO

CREATE INDEX [IX_CourseTeamMembership_BusinessID] ON [CourseTeamMembership] ([BusinessID]);
GO

CREATE INDEX [IX_CourseTeamMembership_BusinessProfileRecordID] ON [CourseTeamMembership] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseTeamMembership_CourseID] ON [CourseTeamMembership] ([CourseID]);
GO

CREATE INDEX [IX_CourseTeamMembership_InstructorProfileID] ON [CourseTeamMembership] ([InstructorProfileID]);
GO

CREATE INDEX [IX_CourseUnit_BusinessID] ON [CourseUnit] ([BusinessID]);
GO

CREATE INDEX [IX_CourseUnit_BusinessProfileRecordID] ON [CourseUnit] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseUnit_CourseContentGroupID] ON [CourseUnit] ([CourseContentGroupID]);
GO

CREATE INDEX [IX_CourseUnit_CourseID] ON [CourseUnit] ([CourseID]);
GO

CREATE INDEX [IX_CourseUnit_CourseSectionID] ON [CourseUnit] ([CourseSectionID]);
GO

CREATE INDEX [IX_CourseWiki_BusinessID] ON [CourseWiki] ([BusinessID]);
GO

CREATE INDEX [IX_CourseWiki_BusinessProfileRecordID] ON [CourseWiki] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CourseWiki_CourseID] ON [CourseWiki] ([CourseID]);
GO

CREATE INDEX [IX_CourseWiki_CourseUnitID] ON [CourseWiki] ([CourseUnitID]);
GO

CREATE INDEX [IX_CreditLimit_BusinessID] ON [CreditLimit] ([BusinessID]);
GO

CREATE INDEX [IX_CreditLimit_BusinessProfileRecordID] ON [CreditLimit] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CreditLimit_ContactID] ON [CreditLimit] ([ContactID]);
GO

CREATE INDEX [IX_CreditLimit_ContactProfileID] ON [CreditLimit] ([ContactProfileID]);
GO

CREATE INDEX [IX_CreditLimit_CurrencyID] ON [CreditLimit] ([CurrencyID]);
GO

CREATE INDEX [IX_Currency_CountryID] ON [Currency] ([CountryID]);
GO

CREATE UNIQUE INDEX [IX_Curriculum_SocialProfileID] ON [Curriculum] ([SocialProfileID]) WHERE [SocialProfileID] IS NOT NULL;
GO

CREATE INDEX [IX_CurriculumRecord_AcademicInstitutionProfileID] ON [CurriculumRecord] ([AcademicInstitutionProfileID]);
GO

CREATE INDEX [IX_CurriculumRecord_BusinessID] ON [CurriculumRecord] ([BusinessID]);
GO

CREATE INDEX [IX_CurriculumRecord_BusinessProfileRecordID] ON [CurriculumRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CurriculumRecord_CurriculumID] ON [CurriculumRecord] ([CurriculumID]);
GO

CREATE INDEX [IX_CurriculumRecord_CurriculumSkillID] ON [CurriculumRecord] ([CurriculumSkillID]);
GO

CREATE INDEX [IX_CurriculumRecord_InstitutionDiploma_AcademicInstitutionProfileID] ON [CurriculumRecord] ([InstitutionDiploma_AcademicInstitutionProfileID]);
GO

CREATE INDEX [IX_CurriculumRecord_JobOfferID] ON [CurriculumRecord] ([JobOfferID]);
GO

CREATE INDEX [IX_CurriculumRecord_ProfessionalDegree_AcademicInstitutionProfileID] ON [CurriculumRecord] ([ProfessionalDegree_AcademicInstitutionProfileID]);
GO

CREATE INDEX [IX_CurriculumRecord_ProficiencyRatingModelID] ON [CurriculumRecord] ([ProficiencyRatingModelID]);
GO

CREATE INDEX [IX_CurriculumRecord_ProficiencyRatingValueID] ON [CurriculumRecord] ([ProficiencyRatingValueID]);
GO

CREATE INDEX [IX_CurriculumSkill_BusinessID] ON [CurriculumSkill] ([BusinessID]);
GO

CREATE INDEX [IX_CurriculumSkill_BusinessProfileRecordID] ON [CurriculumSkill] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_CustomProperty_BusinessID] ON [CustomProperty] ([BusinessID]);
GO

CREATE INDEX [IX_CustomPropertyRecord_ContactID] ON [CustomPropertyRecord] ([ContactID]);
GO

CREATE INDEX [IX_CustomPropertyRecord_CustomPropertyID] ON [CustomPropertyRecord] ([CustomPropertyID]);
GO

CREATE INDEX [IX_CustomPropertyRecord_DealUnitID] ON [CustomPropertyRecord] ([DealUnitID]);
GO

CREATE INDEX [IX_DealUnit_AccountHolderID] ON [DealUnit] ([AccountHolderID]);
GO

CREATE INDEX [IX_DealUnit_BusinessID] ON [DealUnit] ([BusinessID]);
GO

CREATE INDEX [IX_DealUnit_BusinessProfileRecordID] ON [DealUnit] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_DealUnit_BusinessTeamID] ON [DealUnit] ([BusinessTeamID]);
GO

CREATE INDEX [IX_DealUnit_CurrencyID] ON [DealUnit] ([CurrencyID]);
GO

CREATE INDEX [IX_DealUnit_DealUnitFlowID] ON [DealUnit] ([DealUnitFlowID]);
GO

CREATE INDEX [IX_DealUnit_DealUnitFlowStageID] ON [DealUnit] ([DealUnitFlowStageID]);
GO

CREATE INDEX [IX_DealUnit_IndividualID] ON [DealUnit] ([IndividualID]);
GO

CREATE INDEX [IX_DealUnit_MarketingCampaignID] ON [DealUnit] ([MarketingCampaignID]);
GO

CREATE INDEX [IX_DealUnit_OrganizationID] ON [DealUnit] ([OrganizationID]);
GO

CREATE INDEX [IX_DealUnit_PartnerProfileID] ON [DealUnit] ([PartnerProfileID]);
GO

CREATE INDEX [IX_DealUnit_PriceListID] ON [DealUnit] ([PriceListID]);
GO

CREATE INDEX [IX_DealUnit_ReceptorBusinessID] ON [DealUnit] ([ReceptorBusinessID]);
GO

CREATE INDEX [IX_DealUnit_TerritoryID] ON [DealUnit] ([TerritoryID]);
GO

CREATE INDEX [IX_DealUnit_WorkOrderTypeID] ON [DealUnit] ([WorkOrderTypeID]);
GO

CREATE INDEX [IX_DeliveryNote_BusinessID] ON [DeliveryNote] ([BusinessID]);
GO

CREATE INDEX [IX_Discount_BusinessID] ON [Discount] ([BusinessID]);
GO

CREATE INDEX [IX_Discount_BusinessProfileRecordID] ON [Discount] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Discount_DiscountListID] ON [Discount] ([DiscountListID]);
GO

CREATE INDEX [IX_DiscountList_BusinessID] ON [DiscountList] ([BusinessID]);
GO

CREATE INDEX [IX_DiscountList_BusinessProfileRecordID] ON [DiscountList] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_DiscountList_CurrencyID] ON [DiscountList] ([CurrencyID]);
GO

CREATE INDEX [IX_EmailGroup_BusinessID] ON [EmailGroup] ([BusinessID]);
GO

CREATE INDEX [IX_EmailGroup_BusinessProfileRecordID] ON [EmailGroup] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_EmailGroupMembership_BusinessID] ON [EmailGroupMembership] ([BusinessID]);
GO

CREATE INDEX [IX_EmailGroupMembership_BusinessProfileRecordID] ON [EmailGroupMembership] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_EmailGroupMembership_ContactID] ON [EmailGroupMembership] ([ContactID]);
GO

CREATE INDEX [IX_EmailGroupMembership_EmailGroupID] ON [EmailGroupMembership] ([EmailGroupID]);
GO

CREATE INDEX [IX_EmailRecord_AccountHolderID] ON [EmailRecord] ([AccountHolderID]);
GO

CREATE INDEX [IX_EmailRecord_BusinessID] ON [EmailRecord] ([BusinessID]);
GO

CREATE INDEX [IX_EmailRecord_BusinessProfileRecordID] ON [EmailRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_EmailRecord_EmailSignatureID] ON [EmailRecord] ([EmailSignatureID]);
GO

CREATE INDEX [IX_EmailRecord_EmailTemplateID] ON [EmailRecord] ([EmailTemplateID]);
GO

CREATE INDEX [IX_EmailRecord_IndividualID] ON [EmailRecord] ([IndividualID]);
GO

CREATE INDEX [IX_EmailRecord_MarketingCampaignID] ON [EmailRecord] ([MarketingCampaignID]);
GO

CREATE INDEX [IX_EmailRecord_OrganizationID] ON [EmailRecord] ([OrganizationID]);
GO

CREATE INDEX [IX_EmailRecord_ReceptorBusinessID] ON [EmailRecord] ([ReceptorBusinessID]);
GO

CREATE INDEX [IX_EmployeeBenefit_BusinessID] ON [EmployeeBenefit] ([BusinessID]);
GO

CREATE INDEX [IX_EmployeeBenefit_BusinessProfileRecordID] ON [EmployeeBenefit] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_EmployeeDegree_BusinessID] ON [EmployeeDegree] ([BusinessID]);
GO

CREATE INDEX [IX_EmployeeDegree_BusinessProfileRecordID] ON [EmployeeDegree] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_EmployeeDegree_EmployeeProfileID] ON [EmployeeDegree] ([EmployeeProfileID]);
GO

CREATE INDEX [IX_EmployeeTransfer_BusinessID] ON [EmployeeTransfer] ([BusinessID]);
GO

CREATE INDEX [IX_EmployeeTransfer_BusinessLocationID] ON [EmployeeTransfer] ([BusinessLocationID]);
GO

CREATE INDEX [IX_EmployeeTransfer_BusinessProfileRecordID] ON [EmployeeTransfer] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_EmployeeTransfer_EmployeeProfileID] ON [EmployeeTransfer] ([EmployeeProfileID]);
GO

CREATE INDEX [IX_EmployeeType_BusinessID] ON [EmployeeType] ([BusinessID]);
GO

CREATE INDEX [IX_EmployeeType_BusinessProfileRecordID] ON [EmployeeType] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Entitlement_AccountHolderID] ON [Entitlement] ([AccountHolderID]);
GO

CREATE INDEX [IX_Entitlement_BusinessID] ON [Entitlement] ([BusinessID]);
GO

CREATE INDEX [IX_Entitlement_BusinessProfileRecordID] ON [Entitlement] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Entitlement_ContactID] ON [Entitlement] ([ContactID]);
GO

CREATE INDEX [IX_Entitlement_ContactProfileID] ON [Entitlement] ([ContactProfileID]);
GO

CREATE INDEX [IX_Entitlement_EmployeeBenefitID] ON [Entitlement] ([EmployeeBenefitID]);
GO

CREATE INDEX [IX_Entitlement_EmployeeProfileID] ON [Entitlement] ([EmployeeProfileID]);
GO

CREATE INDEX [IX_Entitlement_IndividualID] ON [Entitlement] ([IndividualID]);
GO

CREATE INDEX [IX_Entitlement_LicenseTypeID] ON [Entitlement] ([LicenseTypeID]);
GO

CREATE INDEX [IX_Entitlement_LicensingProfileID] ON [Entitlement] ([LicensingProfileID]);
GO

CREATE INDEX [IX_Entitlement_OrganizationID] ON [Entitlement] ([OrganizationID]);
GO

CREATE INDEX [IX_Entitlement_PaymentTokenID] ON [Entitlement] ([PaymentTokenID]);
GO

CREATE INDEX [IX_Entitlement_ReceptorBusinessID] ON [Entitlement] ([ReceptorBusinessID]);
GO

CREATE INDEX [IX_Entitlement_ServiceID] ON [Entitlement] ([ServiceID]);
GO

CREATE INDEX [IX_Entitlement_ServiceLevelID] ON [Entitlement] ([ServiceLevelID]);
GO

CREATE INDEX [IX_Entitlement_SubscriptionPlanID] ON [Entitlement] ([SubscriptionPlanID]);
GO

CREATE INDEX [IX_Entitlement_WalletAccountID] ON [Entitlement] ([WalletAccountID]);
GO

CREATE INDEX [IX_ExpenseClaim_CostCentreID] ON [ExpenseClaim] ([CostCentreID]);
GO

CREATE INDEX [IX_ExpenseClaim_ExpenseTypeID] ON [ExpenseClaim] ([ExpenseTypeID]);
GO

CREATE INDEX [IX_FileUpload_AccountHolderID] ON [FileUpload] ([AccountHolderID]);
GO

CREATE INDEX [IX_FileUpload_AgreementID] ON [FileUpload] ([AgreementID]);
GO

CREATE INDEX [IX_FileUpload_AgreementRevisionID] ON [FileUpload] ([AgreementRevisionID]);
GO

CREATE INDEX [IX_FileUpload_BusinessID] ON [FileUpload] ([BusinessID]);
GO

CREATE INDEX [IX_FileUpload_BusinessProfileRecordID] ON [FileUpload] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_FileUpload_BusinessTeamID] ON [FileUpload] ([BusinessTeamID]);
GO

CREATE INDEX [IX_FileUpload_ContactID] ON [FileUpload] ([ContactID]);
GO

CREATE INDEX [IX_FileUpload_CourseAssignmentID] ON [FileUpload] ([CourseAssignmentID]);
GO

CREATE INDEX [IX_FileUpload_CourseID] ON [FileUpload] ([CourseID]);
GO

CREATE INDEX [IX_FileUpload_CurriculumRecordID] ON [FileUpload] ([CurriculumRecordID]);
GO

CREATE INDEX [IX_FileUpload_InquiryRequestID] ON [FileUpload] ([InquiryRequestID]);
GO

CREATE INDEX [IX_FileUpload_ItemAttachment_ItemID] ON [FileUpload] ([ItemAttachment_ItemID]);
GO

CREATE INDEX [IX_FileUpload_ItemID] ON [FileUpload] ([ItemID]);
GO

CREATE INDEX [IX_FileUpload_ParentFileUploadID] ON [FileUpload] ([ParentFileUploadID]);
GO

CREATE INDEX [IX_FileUpload_PrivateMessageID] ON [FileUpload] ([PrivateMessageID]);
GO

CREATE INDEX [IX_FileUpload_SalesLiteratureID] ON [FileUpload] ([SalesLiteratureID]);
GO

CREATE INDEX [IX_FileUpload_SocialCommentID] ON [FileUpload] ([SocialCommentID]);
GO

CREATE INDEX [IX_FileUpload_SocialMediaPostID] ON [FileUpload] ([SocialMediaPostID]);
GO

CREATE INDEX [IX_FileUpload_SocialPostID] ON [FileUpload] ([SocialPostID]);
GO

CREATE INDEX [IX_FileUpload_SocialProfileID] ON [FileUpload] ([SocialProfileID]);
GO

CREATE INDEX [IX_FileUpload_SupportRequestID] ON [FileUpload] ([SupportRequestID]);
GO

CREATE INDEX [IX_FileUpload_TaskID] ON [FileUpload] ([TaskID]);
GO

CREATE INDEX [IX_FinancialBook_BusinessID] ON [FinancialBook] ([BusinessID]);
GO

CREATE INDEX [IX_FiscalAuthority_BusinessID] ON [FiscalAuthority] ([BusinessID]);
GO

CREATE INDEX [IX_FiscalAuthority_BusinessProfileRecordID] ON [FiscalAuthority] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_FiscalAuthority_CountryID] ON [FiscalAuthority] ([CountryID]);
GO

CREATE INDEX [IX_FiscalIdentificationType_BusinessID] ON [FiscalIdentificationType] ([BusinessID]);
GO

CREATE INDEX [IX_FiscalIdentificationType_BusinessProfileRecordID] ON [FiscalIdentificationType] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_FiscalIdentificationType_FiscalAuthorityID] ON [FiscalIdentificationType] ([FiscalAuthorityID]);
GO

CREATE INDEX [IX_FiscalPeriod_BusinessID] ON [FiscalPeriod] ([BusinessID]);
GO

CREATE INDEX [IX_FiscalPeriod_BusinessProfileRecordID] ON [FiscalPeriod] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_FiscalPeriod_FiscalYearID] ON [FiscalPeriod] ([FiscalYearID]);
GO

CREATE INDEX [IX_FiscalRegime_BusinessID] ON [FiscalRegime] ([BusinessID]);
GO

CREATE INDEX [IX_FiscalRegime_BusinessProfileRecordID] ON [FiscalRegime] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_FiscalRegime_FiscalAuthorityID] ON [FiscalRegime] ([FiscalAuthorityID]);
GO

CREATE INDEX [IX_FiscalResponsibility_BusinessID] ON [FiscalResponsibility] ([BusinessID]);
GO

CREATE INDEX [IX_FiscalResponsibility_BusinessProfileRecordID] ON [FiscalResponsibility] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_FiscalResponsibility_FiscalAuthorityID] ON [FiscalResponsibility] ([FiscalAuthorityID]);
GO

CREATE INDEX [IX_FiscalResponsibilityRecord_BillingProfileID] ON [FiscalResponsibilityRecord] ([BillingProfileID]);
GO

CREATE INDEX [IX_FiscalResponsibilityRecord_BusinessID] ON [FiscalResponsibilityRecord] ([BusinessID]);
GO

CREATE INDEX [IX_FiscalResponsibilityRecord_BusinessProfileRecordID] ON [FiscalResponsibilityRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_FiscalResponsibilityRecord_FiscalResponsibilityID] ON [FiscalResponsibilityRecord] ([FiscalResponsibilityID]);
GO

CREATE INDEX [IX_FiscalYear_BusinessID] ON [FiscalYear] ([BusinessID]);
GO

CREATE INDEX [IX_FiscalYear_BusinessProfileRecordID] ON [FiscalYear] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_FiscalYear_FiscalAuthorityID] ON [FiscalYear] ([FiscalAuthorityID]);
GO

CREATE INDEX [IX_FiscalYearDistribution_BudgetID] ON [FiscalYearDistribution] ([BudgetID]);
GO

CREATE INDEX [IX_FiscalYearDistribution_BusinessID] ON [FiscalYearDistribution] ([BusinessID]);
GO

CREATE INDEX [IX_FiscalYearDistribution_BusinessProfileRecordID] ON [FiscalYearDistribution] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_FiscalYearDistribution_FiscalYearID] ON [FiscalYearDistribution] ([FiscalYearID]);
GO

CREATE INDEX [IX_FiscalYearRecord_BusinessID] ON [FiscalYearRecord] ([BusinessID]);
GO

CREATE INDEX [IX_FiscalYearRecord_BusinessProfileRecordID] ON [FiscalYearRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_FiscalYearRecord_ContactID] ON [FiscalYearRecord] ([ContactID]);
GO

CREATE INDEX [IX_FiscalYearRecord_FiscalPeriodID] ON [FiscalYearRecord] ([FiscalPeriodID]);
GO

CREATE INDEX [IX_FiscalYearRecord_FiscalYearID] ON [FiscalYearRecord] ([FiscalYearID]);
GO

CREATE INDEX [IX_FollowRecord_FollowedSocialProfileID] ON [FollowRecord] ([FollowedSocialProfileID]);
GO

CREATE INDEX [IX_FollowRecord_FollowerSocialProfileID] ON [FollowRecord] ([FollowerSocialProfileID]);
GO

CREATE INDEX [IX_ForeignExchangeSet_BusinessID] ON [ForeignExchangeSet] ([BusinessID]);
GO

CREATE INDEX [IX_ForeignExchangeSet_BusinessProfileRecordID] ON [ForeignExchangeSet] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ForeignKey_ColumnID] ON [ForeignKey] ([ColumnID]);
GO

CREATE INDEX [IX_ForeignKey_EntityID] ON [ForeignKey] ([EntityID]);
GO

CREATE INDEX [IX_ForeignKey_ForeignColumnID] ON [ForeignKey] ([ForeignColumnID]);
GO

CREATE INDEX [IX_ForeignKey_ForeignEntityID] ON [ForeignKey] ([ForeignEntityID]);
GO

CREATE INDEX [IX_GenericOption_AccountHolderID] ON [GenericOption] ([AccountHolderID]);
GO

CREATE INDEX [IX_GenericOption_BusinessApplicationID] ON [GenericOption] ([BusinessApplicationID]);
GO

CREATE INDEX [IX_GenericOption_BusinessID] ON [GenericOption] ([BusinessID]);
GO

CREATE INDEX [IX_GenericOption_ContactID] ON [GenericOption] ([ContactID]);
GO

CREATE INDEX [IX_GenericOption_WebPortalID] ON [GenericOption] ([WebPortalID]);
GO

CREATE INDEX [IX_GenericRecord_BusinessID] ON [GenericRecord] ([BusinessID]);
GO

CREATE INDEX [IX_GenericRecord_BusinessProfileRecordID] ON [GenericRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_GenericRecord_ItemID] ON [GenericRecord] ([ItemID]);
GO

CREATE INDEX [IX_GenericRecord_ItemPriceID] ON [GenericRecord] ([ItemPriceID]);
GO

CREATE INDEX [IX_GenericRecord_ItemPricingRuleRecord_ItemID] ON [GenericRecord] ([ItemPricingRuleRecord_ItemID]);
GO

CREATE INDEX [IX_GenericRecord_ItemRefundPolicyRecord_ItemID] ON [GenericRecord] ([ItemRefundPolicyRecord_ItemID]);
GO

CREATE INDEX [IX_GenericRecord_ItemReturnPolicyRecord_ItemID] ON [GenericRecord] ([ItemReturnPolicyRecord_ItemID]);
GO

CREATE INDEX [IX_GenericRecord_ItemSellingMarginPolicyID] ON [GenericRecord] ([ItemSellingMarginPolicyID]);
GO

CREATE INDEX [IX_GenericRecord_ItemSellingMarginPolicyRecord_ItemID] ON [GenericRecord] ([ItemSellingMarginPolicyRecord_ItemID]);
GO

CREATE INDEX [IX_GenericRecord_ItemWarrantyPolicyRecord_ItemID] ON [GenericRecord] ([ItemWarrantyPolicyRecord_ItemID]);
GO

CREATE INDEX [IX_GenericRecord_PriceListID] ON [GenericRecord] ([PriceListID]);
GO

CREATE INDEX [IX_GenericRecord_PricingRuleID] ON [GenericRecord] ([PricingRuleID]);
GO

CREATE INDEX [IX_GenericRecord_RefundPolicyID] ON [GenericRecord] ([RefundPolicyID]);
GO

CREATE INDEX [IX_GenericRecord_ReturnPolicyID] ON [GenericRecord] ([ReturnPolicyID]);
GO

CREATE INDEX [IX_GenericRecord_TaxPolicyID] ON [GenericRecord] ([TaxPolicyID]);
GO

CREATE INDEX [IX_GenericRecord_WarrantyPolicyID] ON [GenericRecord] ([WarrantyPolicyID]);
GO

CREATE INDEX [IX_Holiday_BusinessID] ON [Holiday] ([BusinessID]);
GO

CREATE INDEX [IX_HolidaySchedule_BusinessID] ON [HolidaySchedule] ([BusinessID]);
GO

CREATE INDEX [IX_HolidayScheduleRecord_HolidayID] ON [HolidayScheduleRecord] ([HolidayID]);
GO

CREATE INDEX [IX_HolidayScheduleRecord_HolidayScheduleID] ON [HolidayScheduleRecord] ([HolidayScheduleID]);
GO

CREATE INDEX [IX_InquiryRequest_AccountHolderID] ON [InquiryRequest] ([AccountHolderID]);
GO

CREATE INDEX [IX_InquiryRequest_BusinessID] ON [InquiryRequest] ([BusinessID]);
GO

CREATE INDEX [IX_InquiryRequest_BusinessProfileRecordID] ON [InquiryRequest] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_InquiryRequest_BusinessTeamID] ON [InquiryRequest] ([BusinessTeamID]);
GO

CREATE INDEX [IX_InquiryRequest_BusinessUnitID] ON [InquiryRequest] ([BusinessUnitID]);
GO

CREATE INDEX [IX_InquiryRequest_CountryID] ON [InquiryRequest] ([CountryID]);
GO

CREATE INDEX [IX_InquiryRequest_PaymentDisputeID] ON [InquiryRequest] ([PaymentDisputeID]);
GO

CREATE INDEX [IX_InquiryRequest_SocialProfileID] ON [InquiryRequest] ([SocialProfileID]);
GO

CREATE INDEX [IX_InquiryRequest_WalletAccountID] ON [InquiryRequest] ([WalletAccountID]);
GO

CREATE INDEX [IX_Integration_AccountHolderID] ON [Integration] ([AccountHolderID]);
GO

CREATE INDEX [IX_Integration_BusinessID] ON [Integration] ([BusinessID]);
GO

CREATE INDEX [IX_Integration_BusinessProfileRecordID] ON [Integration] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Invoice_AccountHolderID] ON [Invoice] ([AccountHolderID]);
GO

CREATE INDEX [IX_Invoice_BillingLocationID] ON [Invoice] ([BillingLocationID]);
GO

CREATE INDEX [IX_Invoice_BusinessID] ON [Invoice] ([BusinessID]);
GO

CREATE INDEX [IX_Invoice_BusinessProfileRecordID] ON [Invoice] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Invoice_CurrencyID] ON [Invoice] ([CurrencyID]);
GO

CREATE INDEX [IX_Invoice_EmmisorBillingProfileID] ON [Invoice] ([EmmisorBillingProfileID]);
GO

CREATE INDEX [IX_Invoice_EmmisorWalletAccountID] ON [Invoice] ([EmmisorWalletAccountID]);
GO

CREATE INDEX [IX_Invoice_IndividualID] ON [Invoice] ([IndividualID]);
GO

CREATE INDEX [IX_Invoice_InvoiceEnumerationRangeID] ON [Invoice] ([InvoiceEnumerationRangeID]);
GO

CREATE INDEX [IX_Invoice_OrderID] ON [Invoice] ([OrderID]);
GO

CREATE INDEX [IX_Invoice_OrganizationID] ON [Invoice] ([OrganizationID]);
GO

CREATE INDEX [IX_Invoice_PaymentModeID] ON [Invoice] ([PaymentModeID]);
GO

CREATE INDEX [IX_Invoice_PaymentTermID] ON [Invoice] ([PaymentTermID]);
GO

CREATE INDEX [IX_Invoice_PointOfSaleID] ON [Invoice] ([PointOfSaleID]);
GO

CREATE INDEX [IX_Invoice_PriceListID] ON [Invoice] ([PriceListID]);
GO

CREATE INDEX [IX_Invoice_ReceptorBillingProfileID] ON [Invoice] ([ReceptorBillingProfileID]);
GO

CREATE INDEX [IX_Invoice_ReceptorBusinessID] ON [Invoice] ([ReceptorBusinessID]);
GO

CREATE INDEX [IX_Invoice_ReceptorWalletAccountID] ON [Invoice] ([ReceptorWalletAccountID]);
GO

CREATE INDEX [IX_Invoice_ShippingLocationID] ON [Invoice] ([ShippingLocationID]);
GO

CREATE INDEX [IX_InvoiceAdjustment_BusinessID] ON [InvoiceAdjustment] ([BusinessID]);
GO

CREATE INDEX [IX_InvoiceAdjustment_BusinessProfileRecordID] ON [InvoiceAdjustment] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_InvoiceAdjustment_CurrencyID] ON [InvoiceAdjustment] ([CurrencyID]);
GO

CREATE INDEX [IX_InvoiceAdjustment_InvoiceID] ON [InvoiceAdjustment] ([InvoiceID]);
GO

CREATE INDEX [IX_InvoiceEnumerationRange_BusinessID] ON [InvoiceEnumerationRange] ([BusinessID]);
GO

CREATE INDEX [IX_InvoiceEnumerationRange_BusinessProfileRecordID] ON [InvoiceEnumerationRange] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_InvoiceEnumerationRange_FiscalAuthorityID] ON [InvoiceEnumerationRange] ([FiscalAuthorityID]);
GO

CREATE INDEX [IX_InvoiceReference_BusinessID] ON [InvoiceReference] ([BusinessID]);
GO

CREATE INDEX [IX_InvoiceReference_BusinessProfileRecordID] ON [InvoiceReference] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_InvoiceReference_ReferencedInvoiceID] ON [InvoiceReference] ([ReferencedInvoiceID]);
GO

CREATE INDEX [IX_InvoiceReference_ReferralInvoiceID] ON [InvoiceReference] ([ReferralInvoiceID]);
GO

CREATE INDEX [IX_InvoiceRelation_BusinessID] ON [InvoiceRelation] ([BusinessID]);
GO

CREATE INDEX [IX_InvoiceRelation_BusinessProfileRecordID] ON [InvoiceRelation] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_InvoiceRelation_InvoiceID] ON [InvoiceRelation] ([InvoiceID]);
GO

CREATE INDEX [IX_InvoiceRelation_ProjectID] ON [InvoiceRelation] ([ProjectID]);
GO

CREATE INDEX [IX_IPLookup_AccountHolderID] ON [IPLookup] ([AccountHolderID]);
GO

CREATE INDEX [IX_IPLookup_CountryID] ON [IPLookup] ([CountryID]);
GO

CREATE INDEX [IX_Item_BlockchainBlockID] ON [Item] ([BlockchainBlockID]);
GO

CREATE INDEX [IX_Item_BlockchainID] ON [Item] ([BlockchainID]);
GO

CREATE INDEX [IX_Item_BrandID] ON [Item] ([BrandID]);
GO

CREATE INDEX [IX_Item_BusinessID] ON [Item] ([BusinessID]);
GO

CREATE INDEX [IX_Item_BusinessProfileRecordID] ON [Item] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Item_CountryID] ON [Item] ([CountryID]);
GO

CREATE INDEX [IX_Item_CountryLanguageID] ON [Item] ([CountryLanguageID]);
GO

CREATE INDEX [IX_Item_CourseCategoryID] ON [Item] ([CourseCategoryID]);
GO

CREATE INDEX [IX_Item_CurrencyID] ON [Item] ([CurrencyID]);
GO

CREATE INDEX [IX_Item_InstructorProfileID] ON [Item] ([InstructorProfileID]);
GO

CREATE INDEX [IX_Item_ItemCategoryID] ON [Item] ([ItemCategoryID]);
GO

CREATE INDEX [IX_Item_ItemGoogleCategoryID] ON [Item] ([ItemGoogleCategoryID]);
GO

CREATE INDEX [IX_Item_ItemTypeID] ON [Item] ([ItemTypeID]);
GO

CREATE INDEX [IX_Item_ParentItemID] ON [Item] ([ParentItemID]);
GO

CREATE INDEX [IX_Item_ServiceID] ON [Item] ([ServiceID]);
GO

CREATE INDEX [IX_Item_ShippingClassID] ON [Item] ([ShippingClassID]);
GO

CREATE INDEX [IX_Item_SupplierProfileID] ON [Item] ([SupplierProfileID]);
GO

CREATE INDEX [IX_Item_UnitGroupID] ON [Item] ([UnitGroupID]);
GO

CREATE INDEX [IX_Item_UnitID] ON [Item] ([UnitID]);
GO

CREATE INDEX [IX_ItemAttribute_BusinessID] ON [ItemAttribute] ([BusinessID]);
GO

CREATE INDEX [IX_ItemAttributeOption_BusinessID] ON [ItemAttributeOption] ([BusinessID]);
GO

CREATE INDEX [IX_ItemAttributeOption_ItemAttributeID] ON [ItemAttributeOption] ([ItemAttributeID]);
GO

CREATE INDEX [IX_ItemAttributeOptionRecord_AttributeOptionID] ON [ItemAttributeOptionRecord] ([AttributeOptionID]);
GO

CREATE INDEX [IX_ItemAttributeOptionRecord_ItemID] ON [ItemAttributeOptionRecord] ([ItemID]);
GO

CREATE INDEX [IX_ItemBid_CurrencyID] ON [ItemBid] ([CurrencyID]);
GO

CREATE INDEX [IX_ItemBid_ItemID] ON [ItemBid] ([ItemID]);
GO

CREATE INDEX [IX_ItemBid_WalletAccountID] ON [ItemBid] ([WalletAccountID]);
GO

CREATE INDEX [IX_ItemBrand_BusinessID] ON [ItemBrand] ([BusinessID]);
GO

CREATE INDEX [IX_ItemBundle_BusinessID] ON [ItemBundle] ([BusinessID]);
GO

CREATE INDEX [IX_ItemBundleRecord_ChildItemID] ON [ItemBundleRecord] ([ChildItemID]);
GO

CREATE INDEX [IX_ItemBundleRecord_ItemBundleID] ON [ItemBundleRecord] ([ItemBundleID]);
GO

CREATE INDEX [IX_ItemBundleRecord_ParentItemID] ON [ItemBundleRecord] ([ParentItemID]);
GO

CREATE INDEX [IX_ItemCategory_BusinessID] ON [ItemCategory] ([BusinessID]);
GO

CREATE INDEX [IX_ItemCategory_BusinessProfileRecordID] ON [ItemCategory] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ItemCategory_ParentItemCategoryID] ON [ItemCategory] ([ParentItemCategoryID]);
GO

CREATE INDEX [IX_ItemCategoryRecord_ItemCategoryID] ON [ItemCategoryRecord] ([ItemCategoryID]);
GO

CREATE INDEX [IX_ItemCategoryRecord_ItemID] ON [ItemCategoryRecord] ([ItemID]);
GO

CREATE INDEX [IX_ItemFamily_BusinessID] ON [ItemFamily] ([BusinessID]);
GO

CREATE INDEX [IX_ItemFamilyRecord_ItemFamilyID] ON [ItemFamilyRecord] ([ItemFamilyID]);
GO

CREATE INDEX [IX_ItemFamilyRecord_ItemID] ON [ItemFamilyRecord] ([ItemID]);
GO

CREATE INDEX [IX_ItemGoogleCategory_ParentItemGoogleCategoryID] ON [ItemGoogleCategory] ([ParentItemGoogleCategoryID]);
GO

CREATE INDEX [IX_ItemGoogleCategoryRecord_ItemGoogleCategoryID] ON [ItemGoogleCategoryRecord] ([ItemGoogleCategoryID]);
GO

CREATE INDEX [IX_ItemGoogleCategoryRecord_ItemID] ON [ItemGoogleCategoryRecord] ([ItemID]);
GO

CREATE INDEX [IX_ItemGroup_BusinessID] ON [ItemGroup] ([BusinessID]);
GO

CREATE INDEX [IX_ItemGroupRecord_ItemGroupID] ON [ItemGroupRecord] ([ItemGroupID]);
GO

CREATE INDEX [IX_ItemGroupRecord_ItemID] ON [ItemGroupRecord] ([ItemID]);
GO

CREATE INDEX [IX_ItemImageRecord_ItemID] ON [ItemImageRecord] ([ItemID]);
GO

CREATE INDEX [IX_ItemImageRecord_ItemImageID] ON [ItemImageRecord] ([ItemImageID]);
GO

CREATE INDEX [IX_ItemOwnership_BlockchainBlockID] ON [ItemOwnership] ([BlockchainBlockID]);
GO

CREATE INDEX [IX_ItemOwnership_CartID] ON [ItemOwnership] ([CartID]);
GO

CREATE INDEX [IX_ItemOwnership_ItemBidID] ON [ItemOwnership] ([ItemBidID]);
GO

CREATE INDEX [IX_ItemOwnership_ItemID] ON [ItemOwnership] ([ItemID]);
GO

CREATE INDEX [IX_ItemOwnership_WalletAccountID] ON [ItemOwnership] ([WalletAccountID]);
GO

CREATE INDEX [IX_ItemPackingSlip_BusinessID] ON [ItemPackingSlip] ([BusinessID]);
GO

CREATE INDEX [IX_ItemPackingSlip_DeliveryNoteID] ON [ItemPackingSlip] ([DeliveryNoteID]);
GO

CREATE INDEX [IX_ItemPackingSlip_OrderID] ON [ItemPackingSlip] ([OrderID]);
GO

CREATE INDEX [IX_ItemPackingSlipEntry_BusinessID] ON [ItemPackingSlipEntry] ([BusinessID]);
GO

CREATE INDEX [IX_ItemPackingSlipEntry_ItemID] ON [ItemPackingSlipEntry] ([ItemID]);
GO

CREATE INDEX [IX_ItemPackingSlipEntry_ItemPackingSlipID] ON [ItemPackingSlipEntry] ([ItemPackingSlipID]);
GO

CREATE INDEX [IX_ItemPickList_BusinessID] ON [ItemPickList] ([BusinessID]);
GO

CREATE INDEX [IX_ItemPickList_OrderID] ON [ItemPickList] ([OrderID]);
GO

CREATE INDEX [IX_ItemPickList_WarehouseID] ON [ItemPickList] ([WarehouseID]);
GO

CREATE INDEX [IX_ItemPickListEntry_BillingCouponCartRecordID] ON [ItemPickListEntry] ([BillingCouponCartRecordID]);
GO

CREATE INDEX [IX_ItemPickListEntry_BillingCouponItemRecordID] ON [ItemPickListEntry] ([BillingCouponItemRecordID]);
GO

CREATE INDEX [IX_ItemPickListEntry_BillingCouponOrderRecordID] ON [ItemPickListEntry] ([BillingCouponOrderRecordID]);
GO

CREATE INDEX [IX_ItemPickListEntry_BusinessID] ON [ItemPickListEntry] ([BusinessID]);
GO

CREATE INDEX [IX_ItemPickListEntry_DealUnitItemRecordID] ON [ItemPickListEntry] ([DealUnitItemRecordID]);
GO

CREATE INDEX [IX_ItemPickListEntry_InvoiceItemRecordID] ON [ItemPickListEntry] ([InvoiceItemRecordID]);
GO

CREATE INDEX [IX_ItemPickListEntry_ItemID] ON [ItemPickListEntry] ([ItemID]);
GO

CREATE INDEX [IX_ItemPickListEntry_ItemPickListID] ON [ItemPickListEntry] ([ItemPickListID]);
GO

CREATE INDEX [IX_ItemPickListEntry_OrderItemRecordID] ON [ItemPickListEntry] ([OrderItemRecordID]);
GO

CREATE INDEX [IX_ItemPickListEntry_QuoteItemRecordID] ON [ItemPickListEntry] ([QuoteItemRecordID]);
GO

CREATE INDEX [IX_ItemPickListEntry_WarehouseID] ON [ItemPickListEntry] ([WarehouseID]);
GO

CREATE INDEX [IX_ItemQuestion_BusinessID] ON [ItemQuestion] ([BusinessID]);
GO

CREATE INDEX [IX_ItemQuestion_ItemID] ON [ItemQuestion] ([ItemID]);
GO

CREATE INDEX [IX_ItemQuestion_SocialProfileID] ON [ItemQuestion] ([SocialProfileID]);
GO

CREATE INDEX [IX_ItemQuestionReply_BusinessID] ON [ItemQuestionReply] ([BusinessID]);
GO

CREATE INDEX [IX_ItemQuestionReply_ItemQuestionID] ON [ItemQuestionReply] ([ItemQuestionID]);
GO

CREATE INDEX [IX_ItemQuestionReply_SocialProfileID] ON [ItemQuestionReply] ([SocialProfileID]);
GO

CREATE INDEX [IX_ItemRestock_BusinessID] ON [ItemRestock] ([BusinessID]);
GO

CREATE INDEX [IX_ItemRestockEntry_BusinessID] ON [ItemRestockEntry] ([BusinessID]);
GO

CREATE INDEX [IX_ItemRestockEntry_ItemID] ON [ItemRestockEntry] ([ItemID]);
GO

CREATE INDEX [IX_ItemRestockEntry_ItemRestockID] ON [ItemRestockEntry] ([ItemRestockID]);
GO

CREATE INDEX [IX_ItemRestockEntry_OrderItemRecordID] ON [ItemRestockEntry] ([OrderItemRecordID]);
GO

CREATE INDEX [IX_ItemRestockEntry_WarehouseID] ON [ItemRestockEntry] ([WarehouseID]);
GO

CREATE INDEX [IX_ItemRetainSample_BusinessID] ON [ItemRetainSample] ([BusinessID]);
GO

CREATE INDEX [IX_ItemRetainSample_ItemID] ON [ItemRetainSample] ([ItemID]);
GO

CREATE INDEX [IX_ItemRetainSample_WarehouseID] ON [ItemRetainSample] ([WarehouseID]);
GO

CREATE INDEX [IX_ItemShippingPolicyRecord_BusinessID] ON [ItemShippingPolicyRecord] ([BusinessID]);
GO

CREATE INDEX [IX_ItemShippingPolicyRecord_ItemID] ON [ItemShippingPolicyRecord] ([ItemID]);
GO

CREATE INDEX [IX_ItemShippingPolicyRecord_ItemShippingPolicyID] ON [ItemShippingPolicyRecord] ([ItemShippingPolicyID]);
GO

CREATE INDEX [IX_ItemTag_BusinessID] ON [ItemTag] ([BusinessID]);
GO

CREATE INDEX [IX_ItemTagRecord_ItemID] ON [ItemTagRecord] ([ItemID]);
GO

CREATE INDEX [IX_ItemTagRecord_ItemTagID] ON [ItemTagRecord] ([ItemTagID]);
GO

CREATE INDEX [IX_ItemType_BusinessID] ON [ItemType] ([BusinessID]);
GO

CREATE INDEX [IX_ItemType_ItemCategoryID] ON [ItemType] ([ItemCategoryID]);
GO

CREATE INDEX [IX_ItemType_ItemGoogleCategoryID] ON [ItemType] ([ItemGoogleCategoryID]);
GO

CREATE INDEX [IX_ItemTypeRecord_ItemID] ON [ItemTypeRecord] ([ItemID]);
GO

CREATE INDEX [IX_ItemTypeRecord_ItemTypeID] ON [ItemTypeRecord] ([ItemTypeID]);
GO

CREATE INDEX [IX_JobField_BusinessID] ON [JobField] ([BusinessID]);
GO

CREATE INDEX [IX_JobOffer_BusinessID] ON [JobOffer] ([BusinessID]);
GO

CREATE INDEX [IX_JobOffer_BusinessProfileRecordID] ON [JobOffer] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_JobOffer_CityID] ON [JobOffer] ([CityID]);
GO

CREATE INDEX [IX_JobOffer_CountryID] ON [JobOffer] ([CountryID]);
GO

CREATE INDEX [IX_JobOffer_CountryStateID] ON [JobOffer] ([CountryStateID]);
GO

CREATE INDEX [IX_JobOffer_EmployerProfileID] ON [JobOffer] ([EmployerProfileID]);
GO

CREATE INDEX [IX_JobOffer_JobFieldID] ON [JobOffer] ([JobFieldID]);
GO

CREATE INDEX [IX_JobOffer_JobTitleID] ON [JobOffer] ([JobTitleID]);
GO

CREATE INDEX [IX_JobOfferApplication_CurriculumID] ON [JobOfferApplication] ([CurriculumID]);
GO

CREATE INDEX [IX_JobOfferApplication_JobApplicantProfileID] ON [JobOfferApplication] ([JobApplicantProfileID]);
GO

CREATE INDEX [IX_JobOfferApplication_JobOfferID] ON [JobOfferApplication] ([JobOfferID]);
GO

CREATE INDEX [IX_JobTitle_BusinessID] ON [JobTitle] ([BusinessID]);
GO

CREATE INDEX [IX_JobTitle_BusinessProfileRecordID] ON [JobTitle] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Journal_BusinessID] ON [Journal] ([BusinessID]);
GO

CREATE INDEX [IX_Journal_BusinessProfileRecordID] ON [Journal] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Journal_JournalTypeID] ON [Journal] ([JournalTypeID]);
GO

CREATE INDEX [IX_Journal_LedgerID] ON [Journal] ([LedgerID]);
GO

CREATE INDEX [IX_Journal_ParentJournalID] ON [Journal] ([ParentJournalID]);
GO

CREATE INDEX [IX_JournalEntry_BusinessID] ON [JournalEntry] ([BusinessID]);
GO

CREATE INDEX [IX_JournalEntry_BusinessProfileRecordID] ON [JournalEntry] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_JournalEntry_CreditAccountID] ON [JournalEntry] ([CreditAccountID]);
GO

CREATE INDEX [IX_JournalEntry_CurrencyID] ON [JournalEntry] ([CurrencyID]);
GO

CREATE INDEX [IX_JournalEntry_DebitAccountID] ON [JournalEntry] ([DebitAccountID]);
GO

CREATE INDEX [IX_JournalEntry_FinancialBookID] ON [JournalEntry] ([FinancialBookID]);
GO

CREATE INDEX [IX_JournalEntry_JournalID] ON [JournalEntry] ([JournalID]);
GO

CREATE INDEX [IX_JournalEntry_ParentJournalEntryID] ON [JournalEntry] ([ParentJournalEntryID]);
GO

CREATE INDEX [IX_JournalType_BusinessID] ON [JournalType] ([BusinessID]);
GO

CREATE INDEX [IX_JournalType_BusinessProfileRecordID] ON [JournalType] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_KanbanBoard_BusinessID] ON [KanbanBoard] ([BusinessID]);
GO

CREATE INDEX [IX_KanbanBoard_BusinessProfileRecordID] ON [KanbanBoard] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_KanbanBoard_ProjectID] ON [KanbanBoard] ([ProjectID]);
GO

CREATE INDEX [IX_LeaveApplication_BusinessID] ON [LeaveApplication] ([BusinessID]);
GO

CREATE INDEX [IX_LeaveApplication_BusinessProfileRecordID] ON [LeaveApplication] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_LeaveApplication_EmployeeProfileID] ON [LeaveApplication] ([EmployeeProfileID]);
GO

CREATE INDEX [IX_LeaveApplication_LeaveTypeID] ON [LeaveApplication] ([LeaveTypeID]);
GO

CREATE INDEX [IX_LeaveReport_BusinessID] ON [LeaveReport] ([BusinessID]);
GO

CREATE INDEX [IX_LeaveReport_BusinessProfileRecordID] ON [LeaveReport] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_LeaveReport_LeaveApplicationID] ON [LeaveReport] ([LeaveApplicationID]);
GO

CREATE INDEX [IX_LeaveType_BusinessID] ON [LeaveType] ([BusinessID]);
GO

CREATE INDEX [IX_Ledger_BusinessID] ON [Ledger] ([BusinessID]);
GO

CREATE INDEX [IX_Ledger_BusinessProfileRecordID] ON [Ledger] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Ledger_LedgerTypeID] ON [Ledger] ([LedgerTypeID]);
GO

CREATE INDEX [IX_LedgerType_BusinessID] ON [LedgerType] ([BusinessID]);
GO

CREATE INDEX [IX_LedgerType_BusinessProfileRecordID] ON [LedgerType] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_LicenseAssignment_BusinessID] ON [LicenseAssignment] ([BusinessID]);
GO

CREATE INDEX [IX_LicenseAssignment_BusinessProfileRecordID] ON [LicenseAssignment] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_LicenseAssignment_LicenseID] ON [LicenseAssignment] ([LicenseID]);
GO

CREATE INDEX [IX_LicenseAssignment_LicensingProfileID] ON [LicenseAssignment] ([LicensingProfileID]);
GO

CREATE INDEX [IX_LicenseAttribute_BusinessID] ON [LicenseAttribute] ([BusinessID]);
GO

CREATE INDEX [IX_LicenseAttribute_BusinessProfileRecordID] ON [LicenseAttribute] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_LicenseAttribute_LicenseTypeID] ON [LicenseAttribute] ([LicenseTypeID]);
GO

CREATE INDEX [IX_LicenseFeature_AccessKeyPairID] ON [LicenseFeature] ([AccessKeyPairID]);
GO

CREATE INDEX [IX_LicenseFeature_BusinessID] ON [LicenseFeature] ([BusinessID]);
GO

CREATE INDEX [IX_LicenseFeature_BusinessProfileRecordID] ON [LicenseFeature] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_LicenseFeature_LicenseTypeID] ON [LicenseFeature] ([LicenseTypeID]);
GO

CREATE INDEX [IX_LicenseValidation_BusinessID] ON [LicenseValidation] ([BusinessID]);
GO

CREATE INDEX [IX_LocalizationResource_BusinessID] ON [LocalizationResource] ([BusinessID]);
GO

CREATE INDEX [IX_LocalizationResource_CountryLanguageID] ON [LocalizationResource] ([CountryLanguageID]);
GO

CREATE INDEX [IX_LocalizationResource_CountryLanguageRecordID] ON [LocalizationResource] ([CountryLanguageRecordID]);
GO

CREATE INDEX [IX_LocalizationResource_LocalizationStringID] ON [LocalizationResource] ([LocalizationStringID]);
GO

CREATE INDEX [IX_Location_AccountHolderID] ON [Location] ([AccountHolderID]);
GO

CREATE INDEX [IX_Location_BusinessID] ON [Location] ([BusinessID]);
GO

CREATE INDEX [IX_Location_BusinessProfileRecordID] ON [Location] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Location_CityID] ON [Location] ([CityID]);
GO

CREATE INDEX [IX_Location_ContactID] ON [Location] ([ContactID]);
GO

CREATE INDEX [IX_Location_CountryID] ON [Location] ([CountryID]);
GO

CREATE INDEX [IX_Location_CountryStateID] ON [Location] ([CountryStateID]);
GO

CREATE INDEX [IX_Location_ParentWarehouseID] ON [Location] ([ParentWarehouseID]);
GO

CREATE INDEX [IX_Location_SocialProfileID] ON [Location] ([SocialProfileID]);
GO

CREATE INDEX [IX_Location_SupplierProfileID] ON [Location] ([SupplierProfileID]);
GO

CREATE INDEX [IX_MaintenanceVisit_BusinessID] ON [MaintenanceVisit] ([BusinessID]);
GO

CREATE INDEX [IX_MaintenanceVisit_BusinessProfileRecordID] ON [MaintenanceVisit] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_MarketingArea_BusinessID] ON [MarketingArea] ([BusinessID]);
GO

CREATE INDEX [IX_MarketingArea_BusinessProfileRecordID] ON [MarketingArea] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_MarketingAreaSubscription_BusinessID] ON [MarketingAreaSubscription] ([BusinessID]);
GO

CREATE INDEX [IX_MarketingAreaSubscription_MarketingAreaID] ON [MarketingAreaSubscription] ([MarketingAreaID]);
GO

CREATE INDEX [IX_MarketingAreaSubscription_PartnerProfileID] ON [MarketingAreaSubscription] ([PartnerProfileID]);
GO

CREATE INDEX [IX_MarketingCampaign_BusinessID] ON [MarketingCampaign] ([BusinessID]);
GO

CREATE INDEX [IX_MarketingCampaign_BusinessProfileRecordID] ON [MarketingCampaign] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_MarketingCampaign_CurrencyID] ON [MarketingCampaign] ([CurrencyID]);
GO

CREATE INDEX [IX_MarketingCampaign_MarketingAreaID] ON [MarketingCampaign] ([MarketingAreaID]);
GO

CREATE INDEX [IX_MarketingCampaign_MarketingListID] ON [MarketingCampaign] ([MarketingListID]);
GO

CREATE INDEX [IX_MarketingCampaignResponse_BusinessID] ON [MarketingCampaignResponse] ([BusinessID]);
GO

CREATE INDEX [IX_MarketingCampaignResponse_BusinessProfileRecordID] ON [MarketingCampaignResponse] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_MarketingCampaignResponse_ContactID] ON [MarketingCampaignResponse] ([ContactID]);
GO

CREATE INDEX [IX_MarketingCampaignResponse_MarketingCampaignID] ON [MarketingCampaignResponse] ([MarketingCampaignID]);
GO

CREATE INDEX [IX_MarketingList_BusinessID] ON [MarketingList] ([BusinessID]);
GO

CREATE INDEX [IX_MarketingList_BusinessProfileRecordID] ON [MarketingList] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_MarketingList_CurrencyID] ON [MarketingList] ([CurrencyID]);
GO

CREATE INDEX [IX_MarketingListMembership_BusinessID] ON [MarketingListMembership] ([BusinessID]);
GO

CREATE INDEX [IX_MarketingListMembership_BusinessProfileRecordID] ON [MarketingListMembership] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_MarketingListMembership_LeadProfileID] ON [MarketingListMembership] ([LeadProfileID]);
GO

CREATE INDEX [IX_MarketingListMembership_MarketingListID] ON [MarketingListMembership] ([MarketingListID]);
GO

CREATE INDEX [IX_MenuContext_AccountHolderID] ON [MenuContext] ([AccountHolderID]);
GO

CREATE INDEX [IX_MenuContext_BusinessID] ON [MenuContext] ([BusinessID]);
GO

CREATE INDEX [IX_MenuContext_WebPortalID] ON [MenuContext] ([WebPortalID]);
GO

CREATE INDEX [IX_MenuContextItem_MenuContextID] ON [MenuContextItem] ([MenuContextID]);
GO

CREATE INDEX [IX_MenuContextItem_ParentMenuContextItemID] ON [MenuContextItem] ([ParentMenuContextItemID]);
GO

CREATE INDEX [IX_Newsletter_BusinessID] ON [Newsletter] ([BusinessID]);
GO

CREATE INDEX [IX_Newsletter_BusinessProfileRecordID] ON [Newsletter] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_NewsletterSubscription_AccountHolderID] ON [NewsletterSubscription] ([AccountHolderID]);
GO

CREATE INDEX [IX_NewsletterSubscription_BusinessID] ON [NewsletterSubscription] ([BusinessID]);
GO

CREATE INDEX [IX_NewsletterSubscription_BusinessProfileRecordID] ON [NewsletterSubscription] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_NewsletterSubscription_ContactID] ON [NewsletterSubscription] ([ContactID]);
GO

CREATE INDEX [IX_NewsletterSubscription_NewsletterID] ON [NewsletterSubscription] ([NewsletterID]);
GO

CREATE INDEX [IX_Notification_SocialProfileID] ON [Notification] ([SocialProfileID]);
GO

CREATE INDEX [IX_OpenIddictEntityFrameworkCoreApplication_BusinessApplicationID] ON [OpenIddictEntityFrameworkCoreApplication] ([BusinessApplicationID]);
GO

CREATE INDEX [IX_OpenIddictEntityFrameworkCoreApplication_BusinessID] ON [OpenIddictEntityFrameworkCoreApplication] ([BusinessID]);
GO

CREATE INDEX [IX_OpenIddictEntityFrameworkCoreApplication_BusinessProfileRecordID] ON [OpenIddictEntityFrameworkCoreApplication] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_OpenIddictEntityFrameworkCoreAuthorization_ApplicationId] ON [OpenIddictEntityFrameworkCoreAuthorization] ([ApplicationId]);
GO

CREATE INDEX [IX_OpenIddictEntityFrameworkCoreToken_ApplicationId] ON [OpenIddictEntityFrameworkCoreToken] ([ApplicationId]);
GO

CREATE INDEX [IX_OpenIddictEntityFrameworkCoreToken_AuthorizationId] ON [OpenIddictEntityFrameworkCoreToken] ([AuthorizationId]);
GO

CREATE INDEX [IX_Order_AccountHolderID] ON [Order] ([AccountHolderID]);
GO

CREATE INDEX [IX_Order_BillingAddressID] ON [Order] ([BillingAddressID]);
GO

CREATE INDEX [IX_Order_BillingContactID] ON [Order] ([BillingContactID]);
GO

CREATE INDEX [IX_Order_BillingLocationID] ON [Order] ([BillingLocationID]);
GO

CREATE INDEX [IX_Order_BillingProfileID] ON [Order] ([BillingProfileID]);
GO

CREATE INDEX [IX_Order_BusinessID] ON [Order] ([BusinessID]);
GO

CREATE INDEX [IX_Order_BusinessProfileRecordID] ON [Order] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Order_CartID] ON [Order] ([CartID]);
GO

CREATE INDEX [IX_Order_CityID] ON [Order] ([CityID]);
GO

CREATE INDEX [IX_Order_CountryID] ON [Order] ([CountryID]);
GO

CREATE INDEX [IX_Order_CountryStateID] ON [Order] ([CountryStateID]);
GO

CREATE INDEX [IX_Order_CurrencyID] ON [Order] ([CurrencyID]);
GO

CREATE INDEX [IX_Order_IndividualID] ON [Order] ([IndividualID]);
GO

CREATE INDEX [IX_Order_OrganizationID] ON [Order] ([OrganizationID]);
GO

CREATE INDEX [IX_Order_ParentOrderID] ON [Order] ([ParentOrderID]);
GO

CREATE INDEX [IX_Order_PaymentTermID] ON [Order] ([PaymentTermID]);
GO

CREATE INDEX [IX_Order_PriceListID] ON [Order] ([PriceListID]);
GO

CREATE INDEX [IX_Order_QuoteID] ON [Order] ([QuoteID]);
GO

CREATE INDEX [IX_Order_ReceptorBusinessID] ON [Order] ([ReceptorBusinessID]);
GO

CREATE INDEX [IX_Order_SalesQuoteID] ON [Order] ([SalesQuoteID]);
GO

CREATE INDEX [IX_Order_ShippingAddressID] ON [Order] ([ShippingAddressID]);
GO

CREATE INDEX [IX_Order_ShippingContactID] ON [Order] ([ShippingContactID]);
GO

CREATE INDEX [IX_Order_ShippingLocationID] ON [Order] ([ShippingLocationID]);
GO

CREATE INDEX [IX_Order_ShippingMethodID] ON [Order] ([ShippingMethodID]);
GO

CREATE INDEX [IX_Order_WalletAccountID] ON [Order] ([WalletAccountID]);
GO

CREATE INDEX [IX_OrderItemReturn_BusinessID] ON [OrderItemReturn] ([BusinessID]);
GO

CREATE INDEX [IX_OrderItemReturn_BusinessProfileRecordID] ON [OrderItemReturn] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_OrderItemReturn_OrderID] ON [OrderItemReturn] ([OrderID]);
GO

CREATE INDEX [IX_OrderItemReturn_OrderItemRecordID] ON [OrderItemReturn] ([OrderItemRecordID]);
GO

CREATE INDEX [IX_OrderItemReturn_OrderReturnID] ON [OrderItemReturn] ([OrderReturnID]);
GO

CREATE INDEX [IX_OrderItemReturn_ReturnRequestID] ON [OrderItemReturn] ([ReturnRequestID]);
GO

CREATE INDEX [IX_OrderItemWarranty_BusinessID] ON [OrderItemWarranty] ([BusinessID]);
GO

CREATE INDEX [IX_OrderItemWarranty_BusinessProfileRecordID] ON [OrderItemWarranty] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_OrderItemWarranty_OrderWarrantyID] ON [OrderItemWarranty] ([OrderWarrantyID]);
GO

CREATE INDEX [IX_OrderItemWarranty_WarrantyRequestID] ON [OrderItemWarranty] ([WarrantyRequestID]);
GO

CREATE INDEX [IX_OrderRelation_BusinessID] ON [OrderRelation] ([BusinessID]);
GO

CREATE INDEX [IX_OrderRelation_BusinessProfileRecordID] ON [OrderRelation] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_OrderRelation_OrderID] ON [OrderRelation] ([OrderID]);
GO

CREATE INDEX [IX_OrderRelation_ProjectID] ON [OrderRelation] ([ProjectID]);
GO

CREATE INDEX [IX_OrderReturn_BusinessID] ON [OrderReturn] ([BusinessID]);
GO

CREATE INDEX [IX_OrderReturn_BusinessProfileRecordID] ON [OrderReturn] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_OrderReturn_OrderID] ON [OrderReturn] ([OrderID]);
GO

CREATE INDEX [IX_OrderReturn_ReturnRequestID] ON [OrderReturn] ([ReturnRequestID]);
GO

CREATE INDEX [IX_OrderWarranty_BusinessID] ON [OrderWarranty] ([BusinessID]);
GO

CREATE INDEX [IX_OrderWarranty_BusinessProfileRecordID] ON [OrderWarranty] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_OrderWarranty_WarrantyRequestID] ON [OrderWarranty] ([WarrantyRequestID]);
GO

CREATE INDEX [IX_Payment_AccountHolderID] ON [Payment] ([AccountHolderID]);
GO

CREATE INDEX [IX_Payment_AccountingEntryID] ON [Payment] ([AccountingEntryID]);
GO

CREATE INDEX [IX_Payment_BankAccountID] ON [Payment] ([BankAccountID]);
GO

CREATE INDEX [IX_Payment_BankID] ON [Payment] ([BankID]);
GO

CREATE INDEX [IX_Payment_BusinessID] ON [Payment] ([BusinessID]);
GO

CREATE INDEX [IX_Payment_BusinessProfileRecordID] ON [Payment] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Payment_CountryID] ON [Payment] ([CountryID]);
GO

CREATE INDEX [IX_Payment_CurrencyID] ON [Payment] ([CurrencyID]);
GO

CREATE INDEX [IX_Payment_EmmisorWalletAccountID] ON [Payment] ([EmmisorWalletAccountID]);
GO

CREATE INDEX [IX_Payment_EntitlementID] ON [Payment] ([EntitlementID]);
GO

CREATE INDEX [IX_Payment_FiscalIdentificationTypeID] ON [Payment] ([FiscalIdentificationTypeID]);
GO

CREATE INDEX [IX_Payment_IndividualID] ON [Payment] ([IndividualID]);
GO

CREATE INDEX [IX_Payment_InvoiceID] ON [Payment] ([InvoiceID]);
GO

CREATE INDEX [IX_Payment_IPLookupID] ON [Payment] ([IPLookupID]);
GO

CREATE INDEX [IX_Payment_LocationID] ON [Payment] ([LocationID]);
GO

CREATE INDEX [IX_Payment_OrderID] ON [Payment] ([OrderID]);
GO

CREATE INDEX [IX_Payment_OrganizationID] ON [Payment] ([OrganizationID]);
GO

CREATE INDEX [IX_Payment_PayerBusinessID] ON [Payment] ([PayerBusinessID]);
GO

CREATE INDEX [IX_Payment_PaymentGatewayID] ON [Payment] ([PaymentGatewayID]);
GO

CREATE INDEX [IX_Payment_PaymentTokenID] ON [Payment] ([PaymentTokenID]);
GO

CREATE INDEX [IX_Payment_ReceptorWalletAccountID] ON [Payment] ([ReceptorWalletAccountID]);
GO

CREATE INDEX [IX_PaymentDeduction_AccountID] ON [PaymentDeduction] ([AccountID]);
GO

CREATE INDEX [IX_PaymentDeduction_BusinessID] ON [PaymentDeduction] ([BusinessID]);
GO

CREATE INDEX [IX_PaymentDeduction_BusinessProfileRecordID] ON [PaymentDeduction] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_PaymentDeduction_CostCentreID] ON [PaymentDeduction] ([CostCentreID]);
GO

CREATE INDEX [IX_PaymentDeduction_CurrencyID] ON [PaymentDeduction] ([CurrencyID]);
GO

CREATE INDEX [IX_PaymentDeduction_PaymentID] ON [PaymentDeduction] ([PaymentID]);
GO

CREATE INDEX [IX_PaymentDispute_CurrencyID] ON [PaymentDispute] ([CurrencyID]);
GO

CREATE INDEX [IX_PaymentDispute_EmmisorWalletAccountID] ON [PaymentDispute] ([EmmisorWalletAccountID]);
GO

CREATE INDEX [IX_PaymentDispute_PaymentGatewayID] ON [PaymentDispute] ([PaymentGatewayID]);
GO

CREATE INDEX [IX_PaymentDispute_PaymentID] ON [PaymentDispute] ([PaymentID]);
GO

CREATE INDEX [IX_PaymentDispute_ReceptorWalletAccountID] ON [PaymentDispute] ([ReceptorWalletAccountID]);
GO

CREATE INDEX [IX_PaymentGateway_BusinessID] ON [PaymentGateway] ([BusinessID]);
GO

CREATE INDEX [IX_PaymentMode_BusinessID] ON [PaymentMode] ([BusinessID]);
GO

CREATE INDEX [IX_PaymentMode_BusinessProfileRecordID] ON [PaymentMode] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_PaymentRequest_BankAccountID] ON [PaymentRequest] ([BankAccountID]);
GO

CREATE INDEX [IX_PaymentRequest_BusinessID] ON [PaymentRequest] ([BusinessID]);
GO

CREATE INDEX [IX_PaymentRequest_BusinessProfileRecordID] ON [PaymentRequest] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_PaymentRequest_ContactID] ON [PaymentRequest] ([ContactID]);
GO

CREATE INDEX [IX_PaymentRequest_PaymentModeID] ON [PaymentRequest] ([PaymentModeID]);
GO

CREATE INDEX [IX_PaymentTerm_BusinessID] ON [PaymentTerm] ([BusinessID]);
GO

CREATE INDEX [IX_PaymentTerm_BusinessProfileRecordID] ON [PaymentTerm] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_PaymentTerm_PaymentModeID] ON [PaymentTerm] ([PaymentModeID]);
GO

CREATE INDEX [IX_PaymentToken_PaymentGatewayID] ON [PaymentToken] ([PaymentGatewayID]);
GO

CREATE INDEX [IX_PaymentToken_WalletAccountID] ON [PaymentToken] ([WalletAccountID]);
GO

CREATE INDEX [IX_Payroll_BusinessID] ON [Payroll] ([BusinessID]);
GO

CREATE INDEX [IX_Payroll_BusinessProfileRecordID] ON [Payroll] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Payroll_PayrollPeriodID] ON [Payroll] ([PayrollPeriodID]);
GO

CREATE INDEX [IX_PayrollEntry_BankAccountID] ON [PayrollEntry] ([BankAccountID]);
GO

CREATE INDEX [IX_PayrollEntry_BusinessID] ON [PayrollEntry] ([BusinessID]);
GO

CREATE INDEX [IX_PayrollEntry_CurrencyID] ON [PayrollEntry] ([CurrencyID]);
GO

CREATE INDEX [IX_PayrollEntry_PayrollID] ON [PayrollEntry] ([PayrollID]);
GO

CREATE INDEX [IX_PayrollEntry_SalaryID] ON [PayrollEntry] ([SalaryID]);
GO

CREATE INDEX [IX_PointOfSale_BusinessID] ON [PointOfSale] ([BusinessID]);
GO

CREATE INDEX [IX_PointOfSale_BusinessProfileRecordID] ON [PointOfSale] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_PointOfSale_LocationID] ON [PointOfSale] ([LocationID]);
GO

CREATE INDEX [IX_PointOfSale_PriceListID] ON [PointOfSale] ([PriceListID]);
GO

CREATE INDEX [IX_Policy_BusinessID] ON [Policy] ([BusinessID]);
GO

CREATE INDEX [IX_Policy_BusinessProfileRecordID] ON [Policy] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Policy_CityID] ON [Policy] ([CityID]);
GO

CREATE INDEX [IX_Policy_CountryID] ON [Policy] ([CountryID]);
GO

CREATE INDEX [IX_Policy_CountryStateID] ON [Policy] ([CountryStateID]);
GO

CREATE INDEX [IX_Policy_CurrencyID] ON [Policy] ([CurrencyID]);
GO

CREATE INDEX [IX_Policy_FiscalAuthorityID] ON [Policy] ([FiscalAuthorityID]);
GO

CREATE INDEX [IX_Policy_ReturnPolicy_ShippingCourierID] ON [Policy] ([ReturnPolicy_ShippingCourierID]);
GO

CREATE INDEX [IX_Policy_ShippingCourierID] ON [Policy] ([ShippingCourierID]);
GO

CREATE INDEX [IX_PriceList_BusinessID] ON [PriceList] ([BusinessID]);
GO

CREATE INDEX [IX_PriceList_BusinessProfileRecordID] ON [PriceList] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_PriceList_CurrencyID] ON [PriceList] ([CurrencyID]);
GO

CREATE INDEX [IX_PriceList_UnitGroupID] ON [PriceList] ([UnitGroupID]);
GO

CREATE INDEX [IX_PriceList_UnitID] ON [PriceList] ([UnitID]);
GO

CREATE INDEX [IX_PriceListItem_BusinessID] ON [PriceListItem] ([BusinessID]);
GO

CREATE INDEX [IX_PriceListItem_BusinessProfileRecordID] ON [PriceListItem] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_PriceListItem_CurrencyID] ON [PriceListItem] ([CurrencyID]);
GO

CREATE INDEX [IX_PriceListItem_DiscountListID] ON [PriceListItem] ([DiscountListID]);
GO

CREATE INDEX [IX_PriceListItem_ItemID] ON [PriceListItem] ([ItemID]);
GO

CREATE INDEX [IX_PriceListItem_ItemPriceListID] ON [PriceListItem] ([ItemPriceListID]);
GO

CREATE INDEX [IX_PriceListItem_PriceListID] ON [PriceListItem] ([PriceListID]);
GO

CREATE INDEX [IX_PriceListItem_RoundingPolicyID] ON [PriceListItem] ([RoundingPolicyID]);
GO

CREATE INDEX [IX_PriceListItem_TransactionCategoryID] ON [PriceListItem] ([TransactionCategoryID]);
GO

CREATE INDEX [IX_PriceListItem_UnitGroupID] ON [PriceListItem] ([UnitGroupID]);
GO

CREATE INDEX [IX_PriceListItem_UnitID] ON [PriceListItem] ([UnitID]);
GO

CREATE INDEX [IX_PriceListTerritory_BusinessID] ON [PriceListTerritory] ([BusinessID]);
GO

CREATE INDEX [IX_PriceListTerritory_BusinessProfileRecordID] ON [PriceListTerritory] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_PriceListTerritory_PriceListID] ON [PriceListTerritory] ([PriceListID]);
GO

CREATE INDEX [IX_PriceListTerritory_TerritoryID] ON [PriceListTerritory] ([TerritoryID]);
GO

CREATE INDEX [IX_PrivateMessage_ConversationID] ON [PrivateMessage] ([ConversationID]);
GO

CREATE INDEX [IX_PrivateMessage_ReceptorID] ON [PrivateMessage] ([ReceptorID]);
GO

CREATE INDEX [IX_PrivateMessage_SenderID] ON [PrivateMessage] ([SenderID]);
GO

CREATE INDEX [IX_ProductionPlan_BusinessID] ON [ProductionPlan] ([BusinessID]);
GO

CREATE INDEX [IX_ProficiencyRatingModel_BusinessID] ON [ProficiencyRatingModel] ([BusinessID]);
GO

CREATE INDEX [IX_ProficiencyRatingModel_BusinessProfileRecordID] ON [ProficiencyRatingModel] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ProficiencyRatingValue_BusinessID] ON [ProficiencyRatingValue] ([BusinessID]);
GO

CREATE INDEX [IX_ProficiencyRatingValue_BusinessProfileRecordID] ON [ProficiencyRatingValue] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ProficiencyRatingValue_ProficiencyRatingModelID] ON [ProficiencyRatingValue] ([ProficiencyRatingModelID]);
GO

CREATE INDEX [IX_Project_BusinessID] ON [Project] ([BusinessID]);
GO

CREATE INDEX [IX_Project_BusinessProfileRecordID] ON [Project] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Project_BusinessTeamID] ON [Project] ([BusinessTeamID]);
GO

CREATE INDEX [IX_Project_SocialProfileID] ON [Project] ([SocialProfileID]);
GO

CREATE INDEX [IX_ProjectBacklog_ProjectID] ON [ProjectBacklog] ([ProjectID]);
GO

CREATE INDEX [IX_ProjectJournal_BusinessID] ON [ProjectJournal] ([BusinessID]);
GO

CREATE INDEX [IX_ProjectJournal_BusinessProfileRecordID] ON [ProjectJournal] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ProjectResource_BusinessID] ON [ProjectResource] ([BusinessID]);
GO

CREATE INDEX [IX_ProjectResource_BusinessProfileRecordID] ON [ProjectResource] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ProjectResourceRole_BusinessID] ON [ProjectResourceRole] ([BusinessID]);
GO

CREATE INDEX [IX_ProjectResourceRole_BusinessProfileRecordID] ON [ProjectResourceRole] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ProjectResourceSkillRecord_BusinessID] ON [ProjectResourceSkillRecord] ([BusinessID]);
GO

CREATE INDEX [IX_ProjectResourceSkillRecord_BusinessProfileRecordID] ON [ProjectResourceSkillRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ProjectResourceSkillRecord_ProficiencyRatingValueID] ON [ProjectResourceSkillRecord] ([ProficiencyRatingValueID]);
GO

CREATE INDEX [IX_ProjectResourceSkillRecord_ProjectResourceID] ON [ProjectResourceSkillRecord] ([ProjectResourceID]);
GO

CREATE INDEX [IX_ProjectResourceSkillRecord_ProjectResourceRoleID] ON [ProjectResourceSkillRecord] ([ProjectResourceRoleID]);
GO

CREATE INDEX [IX_ProjectResourceSkillRecord_ProjectResourceSkillID] ON [ProjectResourceSkillRecord] ([ProjectResourceSkillID]);
GO

CREATE INDEX [IX_ProjectTaskBucket_BusinessID] ON [ProjectTaskBucket] ([BusinessID]);
GO

CREATE INDEX [IX_ProjectTaskBucket_BusinessProfileRecordID] ON [ProjectTaskBucket] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ProjectTaskBucket_KanbanBoardID] ON [ProjectTaskBucket] ([KanbanBoardID]);
GO

CREATE INDEX [IX_ProjectTaskBucket_ProjectID] ON [ProjectTaskBucket] ([ProjectID]);
GO

CREATE INDEX [IX_ProjectTaskRelationship_ChildProjectTaskID] ON [ProjectTaskRelationship] ([ChildProjectTaskID]);
GO

CREATE INDEX [IX_ProjectTaskRelationship_ParentProjectTaskID] ON [ProjectTaskRelationship] ([ParentProjectTaskID]);
GO

CREATE INDEX [IX_PurchaseRequest_BusinessID] ON [PurchaseRequest] ([BusinessID]);
GO

CREATE INDEX [IX_PurchaseRequest_BusinessProfileRecordID] ON [PurchaseRequest] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_PurchaseRequest_SupplierProfileID] ON [PurchaseRequest] ([SupplierProfileID]);
GO

CREATE INDEX [IX_Quote_AccountHolderID] ON [Quote] ([AccountHolderID]);
GO

CREATE INDEX [IX_Quote_BillingLocationID] ON [Quote] ([BillingLocationID]);
GO

CREATE INDEX [IX_Quote_BusinessID] ON [Quote] ([BusinessID]);
GO

CREATE INDEX [IX_Quote_BusinessProfileRecordID] ON [Quote] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Quote_CurrencyID] ON [Quote] ([CurrencyID]);
GO

CREATE INDEX [IX_Quote_DealUnitID] ON [Quote] ([DealUnitID]);
GO

CREATE INDEX [IX_Quote_IndividualID] ON [Quote] ([IndividualID]);
GO

CREATE INDEX [IX_Quote_OrganizationID] ON [Quote] ([OrganizationID]);
GO

CREATE INDEX [IX_Quote_PaymentTermID] ON [Quote] ([PaymentTermID]);
GO

CREATE INDEX [IX_Quote_PriceListID] ON [Quote] ([PriceListID]);
GO

CREATE INDEX [IX_Quote_ProjectID] ON [Quote] ([ProjectID]);
GO

CREATE INDEX [IX_Quote_ReceptorBusinessID] ON [Quote] ([ReceptorBusinessID]);
GO

CREATE INDEX [IX_Quote_ShippingLocationID] ON [Quote] ([ShippingLocationID]);
GO

CREATE INDEX [IX_Quote_ShippingMethodID] ON [Quote] ([ShippingMethodID]);
GO

CREATE INDEX [IX_Quote_SupplierProfileID] ON [Quote] ([SupplierProfileID]);
GO

CREATE INDEX [IX_QuoteRequest_BusinessID] ON [QuoteRequest] ([BusinessID]);
GO

CREATE INDEX [IX_QuoteRequest_ContactID] ON [QuoteRequest] ([ContactID]);
GO

CREATE INDEX [IX_Receipt_AccountHolderID] ON [Receipt] ([AccountHolderID]);
GO

CREATE INDEX [IX_Receipt_BusinessID] ON [Receipt] ([BusinessID]);
GO

CREATE INDEX [IX_Receipt_BusinessProfileRecordID] ON [Receipt] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Receipt_ContactID] ON [Receipt] ([ContactID]);
GO

CREATE INDEX [IX_Receipt_InvoiceID] ON [Receipt] ([InvoiceID]);
GO

CREATE INDEX [IX_Receipt_OrderID] ON [Receipt] ([OrderID]);
GO

CREATE INDEX [IX_Receipt_PaymentID] ON [Receipt] ([PaymentID]);
GO

CREATE INDEX [IX_RegionalBlockAlternativeAcronym_RegionalBlockID] ON [RegionalBlockAlternativeAcronym] ([RegionalBlockID]);
GO

CREATE INDEX [IX_RegionalBlockAlternativeName_RegionalBlockID] ON [RegionalBlockAlternativeName] ([RegionalBlockID]);
GO

CREATE INDEX [IX_RequiredSkillRecord_BusinessID] ON [RequiredSkillRecord] ([BusinessID]);
GO

CREATE INDEX [IX_RequiredSkillRecord_CurriculumSkillID] ON [RequiredSkillRecord] ([CurriculumSkillID]);
GO

CREATE INDEX [IX_RequiredSkillRecord_EmployerProfileID] ON [RequiredSkillRecord] ([EmployerProfileID]);
GO

CREATE INDEX [IX_RequiredSkillRecord_JobOfferID] ON [RequiredSkillRecord] ([JobOfferID]);
GO

CREATE INDEX [IX_RetentionBonus_BusinessID] ON [RetentionBonus] ([BusinessID]);
GO

CREATE INDEX [IX_RetentionBonus_BusinessProfileRecordID] ON [RetentionBonus] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_RetentionBonus_CurrencyID] ON [RetentionBonus] ([CurrencyID]);
GO

CREATE INDEX [IX_RetentionBonus_SalaryID] ON [RetentionBonus] ([SalaryID]);
GO

CREATE INDEX [IX_Review_BlogPostID] ON [Review] ([BlogPostID]);
GO

CREATE INDEX [IX_Review_BusinessID] ON [Review] ([BusinessID]);
GO

CREATE INDEX [IX_Review_ContactID] ON [Review] ([ContactID]);
GO

CREATE INDEX [IX_Review_ItemID] ON [Review] ([ItemID]);
GO

CREATE INDEX [IX_Review_SocialProfileID] ON [Review] ([SocialProfileID]);
GO

CREATE INDEX [IX_Review_SupplierProfileID] ON [Review] ([SupplierProfileID]);
GO

CREATE INDEX [IX_Review_TrainingProgramID] ON [Review] ([TrainingProgramID]);
GO

CREATE INDEX [IX_Review_TrainingProgramReview_BusinessID] ON [Review] ([TrainingProgramReview_BusinessID]);
GO

CREATE INDEX [IX_RolePriceMarkup_BusinessID] ON [RolePriceMarkup] ([BusinessID]);
GO

CREATE INDEX [IX_RolePriceMarkup_BusinessProfileRecordID] ON [RolePriceMarkup] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_RolePriceMarkup_PriceListID] ON [RolePriceMarkup] ([PriceListID]);
GO

CREATE INDEX [IX_Row_EntityID] ON [Row] ([EntityID]);
GO

CREATE INDEX [IX_Salary_BusinessID] ON [Salary] ([BusinessID]);
GO

CREATE INDEX [IX_Salary_BusinessProfileRecordID] ON [Salary] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Salary_CurrencyID] ON [Salary] ([CurrencyID]);
GO

CREATE INDEX [IX_Salary_EmployeeProfileID] ON [Salary] ([EmployeeProfileID]);
GO

CREATE INDEX [IX_SalaryDeduction_BusinessID] ON [SalaryDeduction] ([BusinessID]);
GO

CREATE INDEX [IX_SalaryDeduction_BusinessProfileRecordID] ON [SalaryDeduction] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SalaryDeduction_CurrencyID] ON [SalaryDeduction] ([CurrencyID]);
GO

CREATE INDEX [IX_SalaryDeduction_SalaryID] ON [SalaryDeduction] ([SalaryID]);
GO

CREATE INDEX [IX_SalaryEarning_BusinessID] ON [SalaryEarning] ([BusinessID]);
GO

CREATE INDEX [IX_SalaryEarning_BusinessProfileRecordID] ON [SalaryEarning] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SalaryEarning_CurrencyID] ON [SalaryEarning] ([CurrencyID]);
GO

CREATE INDEX [IX_SalaryEarning_SalaryID] ON [SalaryEarning] ([SalaryID]);
GO

CREATE INDEX [IX_SalesLiterature_BusinessID] ON [SalesLiterature] ([BusinessID]);
GO

CREATE INDEX [IX_SalesLiterature_BusinessProfileRecordID] ON [SalesLiterature] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SalesLiterature_SalesLiteratureTypeID] ON [SalesLiterature] ([SalesLiteratureTypeID]);
GO

CREATE INDEX [IX_SalesLiteratureRecord_BusinessID] ON [SalesLiteratureRecord] ([BusinessID]);
GO

CREATE INDEX [IX_SalesLiteratureRecord_BusinessProfileRecordID] ON [SalesLiteratureRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SalesLiteratureRecord_ItemID] ON [SalesLiteratureRecord] ([ItemID]);
GO

CREATE INDEX [IX_SalesLiteratureRecord_SalesLiteratureID] ON [SalesLiteratureRecord] ([SalesLiteratureID]);
GO

CREATE INDEX [IX_SalesLiteratureType_BusinessID] ON [SalesLiteratureType] ([BusinessID]);
GO

CREATE INDEX [IX_SalesLiteratureType_BusinessProfileRecordID] ON [SalesLiteratureType] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Schedule_AssetID] ON [Schedule] ([AssetID]);
GO

CREATE INDEX [IX_Schedule_BusinessID] ON [Schedule] ([BusinessID]);
GO

CREATE INDEX [IX_Schedule_ContactID] ON [Schedule] ([ContactID]);
GO

CREATE INDEX [IX_Schedule_FiscalYearID] ON [Schedule] ([FiscalYearID]);
GO

CREATE INDEX [IX_Schedule_HolidayScheduleID] ON [Schedule] ([HolidayScheduleID]);
GO

CREATE INDEX [IX_Schedule_ProjectID] ON [Schedule] ([ProjectID]);
GO

CREATE INDEX [IX_Schedule_ServiceID] ON [Schedule] ([ServiceID]);
GO

CREATE INDEX [IX_Schedule_TimezoneID] ON [Schedule] ([TimezoneID]);
GO

CREATE INDEX [IX_SecurityRoleGrant_BusinessApplicationID] ON [SecurityRoleGrant] ([BusinessApplicationID]);
GO

CREATE INDEX [IX_SecurityRoleGrant_BusinessID] ON [SecurityRoleGrant] ([BusinessID]);
GO

CREATE INDEX [IX_SecurityRoleGrant_BusinessProfileRecordID] ON [SecurityRoleGrant] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SecurityRoleGrant_BusinessSecurityRoleID] ON [SecurityRoleGrant] ([BusinessSecurityRoleID]);
GO

CREATE INDEX [IX_SecurityRoleGrant_GrantorBusinessProfileRecordID] ON [SecurityRoleGrant] ([GrantorBusinessProfileRecordID]);
GO

CREATE INDEX [IX_SEOKeyWord_BusinessID] ON [SEOKeyWord] ([BusinessID]);
GO

CREATE INDEX [IX_SEOKeyWordRecord_SEOKeyWordID] ON [SEOKeyWordRecord] ([SEOKeyWordID]);
GO

CREATE INDEX [IX_ServiceCase_AccountHolderID] ON [ServiceCase] ([AccountHolderID]);
GO

CREATE INDEX [IX_ServiceCase_BusinessID] ON [ServiceCase] ([BusinessID]);
GO

CREATE INDEX [IX_ServiceCase_BusinessProfileRecordID] ON [ServiceCase] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ServiceCase_IndividualID] ON [ServiceCase] ([IndividualID]);
GO

CREATE INDEX [IX_ServiceCase_OrganizationID] ON [ServiceCase] ([OrganizationID]);
GO

CREATE INDEX [IX_ServiceCase_ReceptorBusinessID] ON [ServiceCase] ([ReceptorBusinessID]);
GO

CREATE INDEX [IX_ServiceCase_ServiceCaseTypeID] ON [ServiceCase] ([ServiceCaseTypeID]);
GO

CREATE INDEX [IX_ServiceCase_ServiceID] ON [ServiceCase] ([ServiceID]);
GO

CREATE INDEX [IX_ServiceCase_ServiceLevelAgreementID] ON [ServiceCase] ([ServiceLevelAgreementID]);
GO

CREATE INDEX [IX_ServiceCase_ServiceQueueID] ON [ServiceCase] ([ServiceQueueID]);
GO

CREATE INDEX [IX_ServiceCaseType_BusinessID] ON [ServiceCaseType] ([BusinessID]);
GO

CREATE INDEX [IX_ServiceCaseType_BusinessProfileRecordID] ON [ServiceCaseType] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ServicePersonnelRecord_EmployeeProfileID] ON [ServicePersonnelRecord] ([EmployeeProfileID]);
GO

CREATE INDEX [IX_ServicePersonnelRecord_ServiceCaseID] ON [ServicePersonnelRecord] ([ServiceCaseID]);
GO

CREATE INDEX [IX_ServicePersonnelRecord_ServiceID] ON [ServicePersonnelRecord] ([ServiceID]);
GO

CREATE INDEX [IX_ServiceQueue_BusinessID] ON [ServiceQueue] ([BusinessID]);
GO

CREATE INDEX [IX_ServiceQueue_BusinessProfileRecordID] ON [ServiceQueue] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ServiceQueue_BusinessTeamID] ON [ServiceQueue] ([BusinessTeamID]);
GO

CREATE INDEX [IX_ServiceQueueRecord_BusinessID] ON [ServiceQueueRecord] ([BusinessID]);
GO

CREATE INDEX [IX_ServiceQueueRecord_BusinessProfileRecordID] ON [ServiceQueueRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ServiceQueueRecord_ServiceID] ON [ServiceQueueRecord] ([ServiceID]);
GO

CREATE INDEX [IX_ServiceQueueRecord_ServiceQueueID] ON [ServiceQueueRecord] ([ServiceQueueID]);
GO

CREATE INDEX [IX_ShareClass_BusinessID] ON [ShareClass] ([BusinessID]);
GO

CREATE INDEX [IX_ShareClass_BusinessProfileRecordID] ON [ShareClass] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ShareClass_CurrencyID] ON [ShareClass] ([CurrencyID]);
GO

CREATE INDEX [IX_ShareIssuance_BusinessID] ON [ShareIssuance] ([BusinessID]);
GO

CREATE INDEX [IX_ShareIssuance_BusinessProfileRecordID] ON [ShareIssuance] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ShareIssuance_CurrencyID] ON [ShareIssuance] ([CurrencyID]);
GO

CREATE INDEX [IX_ShareTransfer_BusinessID] ON [ShareTransfer] ([BusinessID]);
GO

CREATE INDEX [IX_ShareTransfer_BusinessProfileRecordID] ON [ShareTransfer] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ShareTransfer_FormerShareHolderID] ON [ShareTransfer] ([FormerShareHolderID]);
GO

CREATE INDEX [IX_ShareTransfer_NewShareHolderID] ON [ShareTransfer] ([NewShareHolderID]);
GO

CREATE INDEX [IX_ShareTransfer_ShareTransferReasonID] ON [ShareTransfer] ([ShareTransferReasonID]);
GO

CREATE INDEX [IX_ShareTransferReason_BusinessID] ON [ShareTransferReason] ([BusinessID]);
GO

CREATE INDEX [IX_ShareTransferReason_BusinessProfileRecordID] ON [ShareTransferReason] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Shipment_BillingItemRecordID] ON [Shipment] ([BillingItemRecordID]);
GO

CREATE INDEX [IX_Shipment_BusinessID] ON [Shipment] ([BusinessID]);
GO

CREATE INDEX [IX_Shipment_OrderID] ON [Shipment] ([OrderID]);
GO

CREATE INDEX [IX_ShippingClass_BusinessID] ON [ShippingClass] ([BusinessID]);
GO

CREATE INDEX [IX_ShippingCourier_BusinessID] ON [ShippingCourier] ([BusinessID]);
GO

CREATE INDEX [IX_ShippingCourier_BusinessProfileRecordID] ON [ShippingCourier] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ShippingCourier_CountryID] ON [ShippingCourier] ([CountryID]);
GO

CREATE INDEX [IX_ShippingLabel_BusinessID] ON [ShippingLabel] ([BusinessID]);
GO

CREATE INDEX [IX_ShippingLabel_LocationID] ON [ShippingLabel] ([LocationID]);
GO

CREATE INDEX [IX_ShippingLabel_ShipmentID] ON [ShippingLabel] ([ShipmentID]);
GO

CREATE INDEX [IX_ShippingLabel_ShippingCourierID] ON [ShippingLabel] ([ShippingCourierID]);
GO

CREATE INDEX [IX_ShippingMethod_BusinessID] ON [ShippingMethod] ([BusinessID]);
GO

CREATE INDEX [IX_ShippingMethod_CurrencyID] ON [ShippingMethod] ([CurrencyID]);
GO

CREATE INDEX [IX_ShippingMethodClassRecord_BusinessID] ON [ShippingMethodClassRecord] ([BusinessID]);
GO

CREATE INDEX [IX_ShippingMethodClassRecord_CurrencyID] ON [ShippingMethodClassRecord] ([CurrencyID]);
GO

CREATE INDEX [IX_ShippingMethodClassRecord_ShippingClassID] ON [ShippingMethodClassRecord] ([ShippingClassID]);
GO

CREATE INDEX [IX_ShippingMethodClassRecord_ShippingMethodID] ON [ShippingMethodClassRecord] ([ShippingMethodID]);
GO

CREATE INDEX [IX_ShippingMethodZoneRecord_BusinessID] ON [ShippingMethodZoneRecord] ([BusinessID]);
GO

CREATE INDEX [IX_ShippingMethodZoneRecord_ShippingMethodID] ON [ShippingMethodZoneRecord] ([ShippingMethodID]);
GO

CREATE INDEX [IX_ShippingMethodZoneRecord_ShippingZoneID] ON [ShippingMethodZoneRecord] ([ShippingZoneID]);
GO

CREATE INDEX [IX_ShippingPackage_BusinessID] ON [ShippingPackage] ([BusinessID]);
GO

CREATE INDEX [IX_ShippingPackage_ShippingCourierID] ON [ShippingPackage] ([ShippingCourierID]);
GO

CREATE INDEX [IX_ShippingPackage_ShippingLabelID] ON [ShippingPackage] ([ShippingLabelID]);
GO

CREATE INDEX [IX_ShippingRegion_BusinessID] ON [ShippingRegion] ([BusinessID]);
GO

CREATE INDEX [IX_ShippingRegionCountryRecord_BusinessID] ON [ShippingRegionCountryRecord] ([BusinessID]);
GO

CREATE INDEX [IX_ShippingRegionCountryRecord_CountryID] ON [ShippingRegionCountryRecord] ([CountryID]);
GO

CREATE INDEX [IX_ShippingRegionCountryRecord_ShippingRegionID] ON [ShippingRegionCountryRecord] ([ShippingRegionID]);
GO

CREATE INDEX [IX_ShippingRegionZoneRecord_BusinessID] ON [ShippingRegionZoneRecord] ([BusinessID]);
GO

CREATE INDEX [IX_ShippingRegionZoneRecord_ShippingRegionID] ON [ShippingRegionZoneRecord] ([ShippingRegionID]);
GO

CREATE INDEX [IX_ShippingRegionZoneRecord_ShippingZoneID] ON [ShippingRegionZoneRecord] ([ShippingZoneID]);
GO

CREATE INDEX [IX_ShippingZone_BusinessID] ON [ShippingZone] ([BusinessID]);
GO

CREATE INDEX [IX_Signature_AccountHolderID] ON [Signature] ([AccountHolderID]);
GO

CREATE INDEX [IX_Signature_AgreementRevisionID] ON [Signature] ([AgreementRevisionID]);
GO

CREATE INDEX [IX_Signature_BusinessID] ON [Signature] ([BusinessID]);
GO

CREATE INDEX [IX_Signature_BusinessProfileRecordID] ON [Signature] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Signature_ContactID] ON [Signature] ([ContactID]);
GO

CREATE INDEX [IX_Signature_SigningCertificateID] ON [Signature] ([SigningCertificateID]);
GO

CREATE INDEX [IX_Signature_SigningDocumentID] ON [Signature] ([SigningDocumentID]);
GO

CREATE INDEX [IX_Signature_SigningProfileID] ON [Signature] ([SigningProfileID]);
GO

CREATE INDEX [IX_Signature_SocialProfileID] ON [Signature] ([SocialProfileID]);
GO

CREATE INDEX [IX_SignedDocument_AccountHolderID] ON [SignedDocument] ([AccountHolderID]);
GO

CREATE INDEX [IX_SignedDocument_BusinessID] ON [SignedDocument] ([BusinessID]);
GO

CREATE INDEX [IX_SignedDocument_BusinessProfileRecordID] ON [SignedDocument] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SignedDocument_ContactID] ON [SignedDocument] ([ContactID]);
GO

CREATE INDEX [IX_SignedDocument_SignatorCertificateID] ON [SignedDocument] ([SignatorCertificateID]);
GO

CREATE INDEX [IX_SignedDocument_SigningProfileID] ON [SignedDocument] ([SigningProfileID]);
GO

CREATE INDEX [IX_SigningCertificate_AccountHolderID] ON [SigningCertificate] ([AccountHolderID]);
GO

CREATE INDEX [IX_SigningCertificate_BusinessID] ON [SigningCertificate] ([BusinessID]);
GO

CREATE INDEX [IX_SigningCertificate_BusinessProfileRecordID] ON [SigningCertificate] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SigningCertificate_ContactID] ON [SigningCertificate] ([ContactID]);
GO

CREATE INDEX [IX_SigningCertificate_SigningProfileID] ON [SigningCertificate] ([SigningProfileID]);
GO

CREATE INDEX [IX_SocialBadge_BusinessID] ON [SocialBadge] ([BusinessID]);
GO

CREATE INDEX [IX_SocialBadge_BusinessProfileRecordID] ON [SocialBadge] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SocialBadgeRecord_SocialBadgeID] ON [SocialBadgeRecord] ([SocialBadgeID]);
GO

CREATE INDEX [IX_SocialBadgeRecord_SocialProfileID] ON [SocialBadgeRecord] ([SocialProfileID]);
GO

CREATE INDEX [IX_SocialComment_BlogPostID] ON [SocialComment] ([BlogPostID]);
GO

CREATE INDEX [IX_SocialComment_OwnerSocialProfileID] ON [SocialComment] ([OwnerSocialProfileID]);
GO

CREATE INDEX [IX_SocialComment_ParentCommentID] ON [SocialComment] ([ParentCommentID]);
GO

CREATE INDEX [IX_SocialComment_SocialPostID] ON [SocialComment] ([SocialPostID]);
GO

CREATE UNIQUE INDEX [IX_SocialFeed_SocialProfileID] ON [SocialFeed] ([SocialProfileID]) WHERE [SocialProfileID] IS NOT NULL;
GO

CREATE INDEX [IX_SocialGroup_BusinessID] ON [SocialGroup] ([BusinessID]);
GO

CREATE INDEX [IX_SocialGroup_BusinessProfileRecordID] ON [SocialGroup] ([BusinessProfileRecordID]);
GO

CREATE UNIQUE INDEX [IX_SocialGroup_CourseID] ON [SocialGroup] ([CourseID]) WHERE [CourseID] IS NOT NULL;
GO

CREATE INDEX [IX_SocialGroup_SocialProfileID] ON [SocialGroup] ([SocialProfileID]);
GO

CREATE INDEX [IX_SocialGroupEnrollmentRecord_GroupID] ON [SocialGroupEnrollmentRecord] ([GroupID]);
GO

CREATE INDEX [IX_SocialGroupEnrollmentRecord_SocialProfileID] ON [SocialGroupEnrollmentRecord] ([SocialProfileID]);
GO

CREATE INDEX [IX_SocialMediaPost_BusinessID] ON [SocialMediaPost] ([BusinessID]);
GO

CREATE INDEX [IX_SocialMediaPost_BusinessProfileRecordID] ON [SocialMediaPost] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SocialMediaPost_SocialPostBucketID] ON [SocialMediaPost] ([SocialPostBucketID]);
GO

CREATE INDEX [IX_SocialPost_BlogPostID] ON [SocialPost] ([BlogPostID]);
GO

CREATE INDEX [IX_SocialPost_SocialFeedID] ON [SocialPost] ([SocialFeedID]);
GO

CREATE INDEX [IX_SocialPost_SocialGroupID] ON [SocialPost] ([SocialGroupID]);
GO

CREATE INDEX [IX_SocialPost_SocialProfileID] ON [SocialPost] ([SocialProfileID]);
GO

CREATE INDEX [IX_SocialPost_WebForumID] ON [SocialPost] ([WebForumID]);
GO

CREATE INDEX [IX_SocialPost_WebPageID] ON [SocialPost] ([WebPageID]);
GO

CREATE INDEX [IX_SocialPostBucket_BusinessID] ON [SocialPostBucket] ([BusinessID]);
GO

CREATE INDEX [IX_SocialPostBucket_BusinessProfileRecordID] ON [SocialPostBucket] ([BusinessProfileRecordID]);
GO

CREATE UNIQUE INDEX [IX_SocialProfile_AccountHolderID] ON [SocialProfile] ([AccountHolderID]) WHERE [AccountHolderID] IS NOT NULL;
GO

CREATE UNIQUE INDEX [IX_SocialProfile_BusinessID] ON [SocialProfile] ([BusinessID]) WHERE [BusinessID] IS NOT NULL;
GO

CREATE UNIQUE INDEX [IX_SocialProfile_ContactID] ON [SocialProfile] ([ContactID]) WHERE [ContactID] IS NOT NULL;
GO

CREATE INDEX [IX_SocialReaction_BlogPostID] ON [SocialReaction] ([BlogPostID]);
GO

CREATE INDEX [IX_SocialReaction_SocialCommentID] ON [SocialReaction] ([SocialCommentID]);
GO

CREATE INDEX [IX_SocialReaction_SocialPostID] ON [SocialReaction] ([SocialPostID]);
GO

CREATE INDEX [IX_SocialReaction_SocialProfileID] ON [SocialReaction] ([SocialProfileID]);
GO

CREATE INDEX [IX_SupplierGroup_BusinessID] ON [SupplierGroup] ([BusinessID]);
GO

CREATE INDEX [IX_SupplierGroup_BusinessProfileRecordID] ON [SupplierGroup] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SupplierGroupRecord_BusinessID] ON [SupplierGroupRecord] ([BusinessID]);
GO

CREATE INDEX [IX_SupplierGroupRecord_BusinessProfileRecordID] ON [SupplierGroupRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SupplierGroupRecord_SupplierGroupID] ON [SupplierGroupRecord] ([SupplierGroupID]);
GO

CREATE INDEX [IX_SupplierGroupRecord_SupplierProfileID] ON [SupplierGroupRecord] ([SupplierProfileID]);
GO

CREATE INDEX [IX_SupportPriority_BusinessID] ON [SupportPriority] ([BusinessID]);
GO

CREATE INDEX [IX_SupportPriority_SupportEntitlementID] ON [SupportPriority] ([SupportEntitlementID]);
GO

CREATE INDEX [IX_SupportRequest_AccountHolderID] ON [SupportRequest] ([AccountHolderID]);
GO

CREATE INDEX [IX_SupportRequest_BusinessID] ON [SupportRequest] ([BusinessID]);
GO

CREATE INDEX [IX_SupportRequest_BusinessProfileRecordID] ON [SupportRequest] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SupportRequest_ContactID] ON [SupportRequest] ([ContactID]);
GO

CREATE INDEX [IX_SupportRequest_PaymentID] ON [SupportRequest] ([PaymentID]);
GO

CREATE INDEX [IX_SupportRequest_RefundPolicyID] ON [SupportRequest] ([RefundPolicyID]);
GO

CREATE INDEX [IX_SupportRequest_ReturnPolicyID] ON [SupportRequest] ([ReturnPolicyID]);
GO

CREATE INDEX [IX_SupportRequest_SupportEntitlementID] ON [SupportRequest] ([SupportEntitlementID]);
GO

CREATE INDEX [IX_SupportRequest_WarrantyPolicyID] ON [SupportRequest] ([WarrantyPolicyID]);
GO

CREATE INDEX [IX_SupportTicket_AccountHolderID] ON [SupportTicket] ([AccountHolderID]);
GO

CREATE INDEX [IX_SupportTicket_BusinessID] ON [SupportTicket] ([BusinessID]);
GO

CREATE INDEX [IX_SupportTicket_BusinessProfileRecordID] ON [SupportTicket] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SupportTicket_ContactID] ON [SupportTicket] ([ContactID]);
GO

CREATE INDEX [IX_SupportTicket_SupportEntitlementID] ON [SupportTicket] ([SupportEntitlementID]);
GO

CREATE INDEX [IX_SupportTicket_SupportPriorityID] ON [SupportTicket] ([SupportPriorityID]);
GO

CREATE INDEX [IX_SupportTicket_SupportRequestID] ON [SupportTicket] ([SupportRequestID]);
GO

CREATE INDEX [IX_SupportTicket_SupportTicketTypeID] ON [SupportTicket] ([SupportTicketTypeID]);
GO

CREATE INDEX [IX_SupportTicketType_BusinessID] ON [SupportTicketType] ([BusinessID]);
GO

CREATE UNIQUE INDEX [IX_SustainabilityProfile_BusinessID] ON [SustainabilityProfile] ([BusinessID]) WHERE [BusinessID] IS NOT NULL;
GO

CREATE INDEX [IX_SustainabilityProfile_BusinessProfileRecordID] ON [SustainabilityProfile] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Task_BusinessID] ON [Task] ([BusinessID]);
GO

CREATE INDEX [IX_Task_BusinessProfileRecordID] ON [Task] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Task_ProjectID] ON [Task] ([ProjectID]);
GO

CREATE INDEX [IX_Task_ProjectTaskBucketID] ON [Task] ([ProjectTaskBucketID]);
GO

CREATE INDEX [IX_Task_SocialProfileID] ON [Task] ([SocialProfileID]);
GO

CREATE INDEX [IX_Task_TaskListID] ON [Task] ([TaskListID]);
GO

CREATE INDEX [IX_TaskAssignment_SocialProfileID] ON [TaskAssignment] ([SocialProfileID]);
GO

CREATE INDEX [IX_TaskAssignment_TaskID] ON [TaskAssignment] ([TaskID]);
GO

CREATE INDEX [IX_TaskAssignment_TaskListID] ON [TaskAssignment] ([TaskListID]);
GO

CREATE INDEX [IX_TaskList_BusinessID] ON [TaskList] ([BusinessID]);
GO

CREATE INDEX [IX_TaskList_BusinessProfileRecordID] ON [TaskList] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_TaskList_ProjectID] ON [TaskList] ([ProjectID]);
GO

CREATE INDEX [IX_TaskList_SocialProfileID] ON [TaskList] ([SocialProfileID]);
GO

CREATE INDEX [IX_TaxClass_BusinessID] ON [TaxClass] ([BusinessID]);
GO

CREATE INDEX [IX_TaxClass_BusinessProfileRecordID] ON [TaxClass] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_TaxClass_FiscalAuthorityID] ON [TaxClass] ([FiscalAuthorityID]);
GO

CREATE INDEX [IX_TaxClass_FiscalYearID] ON [TaxClass] ([FiscalYearID]);
GO

CREATE INDEX [IX_Taxonomy_BusinessID] ON [Taxonomy] ([BusinessID]);
GO

CREATE INDEX [IX_Taxonomy_BusinessProfileRecordID] ON [Taxonomy] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Taxonomy_WebPortalID] ON [Taxonomy] ([WebPortalID]);
GO

CREATE INDEX [IX_TaxonomyRecord_BlogPostCategoryRecord_BlogPostID] ON [TaxonomyRecord] ([BlogPostCategoryRecord_BlogPostID]);
GO

CREATE INDEX [IX_TaxonomyRecord_BlogPostID] ON [TaxonomyRecord] ([BlogPostID]);
GO

CREATE INDEX [IX_TaxonomyRecord_BusinessID] ON [TaxonomyRecord] ([BusinessID]);
GO

CREATE INDEX [IX_TaxonomyRecord_KnowledgeArticleCategoryID] ON [TaxonomyRecord] ([KnowledgeArticleCategoryID]);
GO

CREATE INDEX [IX_TaxonomyRecord_KnowledgeArticleID] ON [TaxonomyRecord] ([KnowledgeArticleID]);
GO

CREATE INDEX [IX_TaxonomyRecord_SocialForumPostID] ON [TaxonomyRecord] ([SocialForumPostID]);
GO

CREATE INDEX [IX_TaxonomyRecord_TaxonomyID] ON [TaxonomyRecord] ([TaxonomyID]);
GO

CREATE INDEX [IX_TaxonomyRecord_WebContentID] ON [TaxonomyRecord] ([WebContentID]);
GO

CREATE INDEX [IX_TaxonomyRecord_WebPageCategoryID] ON [TaxonomyRecord] ([WebPageCategoryID]);
GO

CREATE INDEX [IX_TaxonomyRecord_WebPageCategoryRecord_WebPageID] ON [TaxonomyRecord] ([WebPageCategoryRecord_WebPageID]);
GO

CREATE INDEX [IX_TaxonomyRecord_WebPageID] ON [TaxonomyRecord] ([WebPageID]);
GO

CREATE INDEX [IX_TaxonomyRecord_WebPageTagID] ON [TaxonomyRecord] ([WebPageTagID]);
GO

CREATE INDEX [IX_TaxRate_BusinessID] ON [TaxRate] ([BusinessID]);
GO

CREATE INDEX [IX_TaxRate_BusinessProfileRecordID] ON [TaxRate] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_TaxRate_CountryID] ON [TaxRate] ([CountryID]);
GO

CREATE INDEX [IX_TaxRate_CurrencyID] ON [TaxRate] ([CurrencyID]);
GO

CREATE INDEX [IX_TaxRate_FiscalAuthorityID] ON [TaxRate] ([FiscalAuthorityID]);
GO

CREATE INDEX [IX_TaxRate_FiscalYearID] ON [TaxRate] ([FiscalYearID]);
GO

CREATE INDEX [IX_TaxRate_TaxClassID] ON [TaxRate] ([TaxClassID]);
GO

CREATE INDEX [IX_TaxRate_TaxPolicyID] ON [TaxRate] ([TaxPolicyID]);
GO

CREATE INDEX [IX_TaxRate_UnitGroupID] ON [TaxRate] ([UnitGroupID]);
GO

CREATE INDEX [IX_TaxRate_UnitID] ON [TaxRate] ([UnitID]);
GO

CREATE INDEX [IX_TaxRateClassRecord_BusinessID] ON [TaxRateClassRecord] ([BusinessID]);
GO

CREATE INDEX [IX_TaxRateClassRecord_BusinessProfileRecordID] ON [TaxRateClassRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_TaxRateClassRecord_TaxClassID] ON [TaxRateClassRecord] ([TaxClassID]);
GO

CREATE INDEX [IX_TaxRateClassRecord_TaxRateID] ON [TaxRateClassRecord] ([TaxRateID]);
GO

CREATE INDEX [IX_Territory_AccountHolderId] ON [Territory] ([AccountHolderId]);
GO

CREATE INDEX [IX_Territory_BusinessID] ON [Territory] ([BusinessID]);
GO

CREATE INDEX [IX_Territory_BusinessProfileRecordID] ON [Territory] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Territory_ParentTerritoryID] ON [Territory] ([ParentTerritoryID]);
GO

CREATE INDEX [IX_TimeInterval_BusinessID] ON [TimeInterval] ([BusinessID]);
GO

CREATE INDEX [IX_TimeInterval_BusinessProfileRecordID] ON [TimeInterval] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_TimeInterval_EmployeeProfileID] ON [TimeInterval] ([EmployeeProfileID]);
GO

CREATE INDEX [IX_TimeInterval_LeaveApplicationID] ON [TimeInterval] ([LeaveApplicationID]);
GO

CREATE INDEX [IX_TimeInterval_ParentTimeIntervalID] ON [TimeInterval] ([ParentTimeIntervalID]);
GO

CREATE INDEX [IX_TimeInterval_ScheduleID] ON [TimeInterval] ([ScheduleID]);
GO

CREATE INDEX [IX_TimeInterval_Shift_BusinessID] ON [TimeInterval] ([Shift_BusinessID]);
GO

CREATE INDEX [IX_TimeInterval_Shift_EmployeeProfileID] ON [TimeInterval] ([Shift_EmployeeProfileID]);
GO

CREATE INDEX [IX_TimeInterval_TrainingProgramEvent_BusinessID] ON [TimeInterval] ([TrainingProgramEvent_BusinessID]);
GO

CREATE INDEX [IX_TimeInterval_TrainingProgramEvent_BusinessProfileRecordID] ON [TimeInterval] ([TrainingProgramEvent_BusinessProfileRecordID]);
GO

CREATE INDEX [IX_TimeInterval_TrainingProgramID] ON [TimeInterval] ([TrainingProgramID]);
GO

CREATE INDEX [IX_TrainingProgram_BusinessID] ON [TrainingProgram] ([BusinessID]);
GO

CREATE INDEX [IX_TrainingProgram_BusinessProfileRecordID] ON [TrainingProgram] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_TrainingProgramApplication_BusinessID] ON [TrainingProgramApplication] ([BusinessID]);
GO

CREATE INDEX [IX_TrainingProgramApplication_BusinessProfileRecordID] ON [TrainingProgramApplication] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_TrainingProgramApplication_EmployeeProfileID] ON [TrainingProgramApplication] ([EmployeeProfileID]);
GO

CREATE INDEX [IX_TrainingProgramApplication_TrainingProgramID] ON [TrainingProgramApplication] ([TrainingProgramID]);
GO

CREATE INDEX [IX_TrainingProgramCourse_BusinessID] ON [TrainingProgramCourse] ([BusinessID]);
GO

CREATE INDEX [IX_TrainingProgramCourse_BusinessProfileRecordID] ON [TrainingProgramCourse] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_TrainingProgramCourse_CourseID] ON [TrainingProgramCourse] ([CourseID]);
GO

CREATE INDEX [IX_TrainingProgramCourse_TrainingProgramID] ON [TrainingProgramCourse] ([TrainingProgramID]);
GO

CREATE INDEX [IX_TrainingProgramResultSet_BusinessID] ON [TrainingProgramResultSet] ([BusinessID]);
GO

CREATE INDEX [IX_TrainingProgramResultSet_BusinessProfileRecordID] ON [TrainingProgramResultSet] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_TrainingProgramResultSet_TrainingProgramID] ON [TrainingProgramResultSet] ([TrainingProgramID]);
GO

CREATE INDEX [IX_Transaction_BankAccountID] ON [Transaction] ([BankAccountID]);
GO

CREATE INDEX [IX_Transaction_BankProfileID] ON [Transaction] ([BankProfileID]);
GO

CREATE INDEX [IX_Transaction_BusinessID] ON [Transaction] ([BusinessID]);
GO

CREATE INDEX [IX_Transaction_BusinessProfileRecordID] ON [Transaction] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Transaction_ContactID] ON [Transaction] ([ContactID]);
GO

CREATE INDEX [IX_Transaction_CurrencyID] ON [Transaction] ([CurrencyID]);
GO

CREATE INDEX [IX_Transaction_ProjectID] ON [Transaction] ([ProjectID]);
GO

CREATE INDEX [IX_Transaction_ProjectJournalID] ON [Transaction] ([ProjectJournalID]);
GO

CREATE INDEX [IX_Transaction_ProjectResourceID] ON [Transaction] ([ProjectResourceID]);
GO

CREATE INDEX [IX_Transaction_ProjectResourceRoleID] ON [Transaction] ([ProjectResourceRoleID]);
GO

CREATE INDEX [IX_Transaction_ProjectTaskID] ON [Transaction] ([ProjectTaskID]);
GO

CREATE INDEX [IX_Transaction_TransactionCategoryID] ON [Transaction] ([TransactionCategoryID]);
GO

CREATE INDEX [IX_Transaction_UnitGroupID] ON [Transaction] ([UnitGroupID]);
GO

CREATE INDEX [IX_Transaction_UnitID] ON [Transaction] ([UnitID]);
GO

CREATE INDEX [IX_TransactionCategory_BusinessID] ON [TransactionCategory] ([BusinessID]);
GO

CREATE INDEX [IX_TransactionCategory_BusinessProfileRecordID] ON [TransactionCategory] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Unit_BaseUnitID] ON [Unit] ([BaseUnitID]);
GO

CREATE INDEX [IX_Unit_BusinessID] ON [Unit] ([BusinessID]);
GO

CREATE INDEX [IX_Unit_BusinessProfileRecordID] ON [Unit] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Unit_UnitGroupID] ON [Unit] ([UnitGroupID]);
GO

CREATE INDEX [IX_UnitGroup_BusinessID] ON [UnitGroup] ([BusinessID]);
GO

CREATE INDEX [IX_UnitGroup_BusinessProfileRecordID] ON [UnitGroup] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_View_EntityID] ON [View] ([EntityID]);
GO

CREATE UNIQUE INDEX [IX_WalletAccount_AccountHolderID] ON [WalletAccount] ([AccountHolderID]) WHERE [AccountHolderID] IS NOT NULL;
GO

CREATE INDEX [IX_WalletAccount_AccountID] ON [WalletAccount] ([AccountID]);
GO

CREATE INDEX [IX_WalletAccount_BillingProfileID] ON [WalletAccount] ([BillingProfileID]);
GO

CREATE UNIQUE INDEX [IX_WalletAccount_BusinessID] ON [WalletAccount] ([BusinessID]) WHERE [BusinessID] IS NOT NULL;
GO

CREATE UNIQUE INDEX [IX_WalletAccount_ContactID] ON [WalletAccount] ([ContactID]) WHERE [ContactID] IS NOT NULL;
GO

CREATE INDEX [IX_WalletAccount_CountryID] ON [WalletAccount] ([CountryID]);
GO

CREATE INDEX [IX_WalletAccount_LocationID] ON [WalletAccount] ([LocationID]);
GO

CREATE INDEX [IX_WalletWithdraw_CurrencyID] ON [WalletWithdraw] ([CurrencyID]);
GO

CREATE INDEX [IX_WalletWithdraw_WalletAccountID] ON [WalletWithdraw] ([WalletAccountID]);
GO

CREATE INDEX [IX_WalletWithdraw_WalletWithdrawRequestID] ON [WalletWithdraw] ([WalletWithdrawRequestID]);
GO

CREATE INDEX [IX_WalletWithdrawRequest_BankAccountID] ON [WalletWithdrawRequest] ([BankAccountID]);
GO

CREATE INDEX [IX_WalletWithdrawRequest_BusinessID] ON [WalletWithdrawRequest] ([BusinessID]);
GO

CREATE INDEX [IX_WalletWithdrawRequest_BusinessProfileRecordID] ON [WalletWithdrawRequest] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_WalletWithdrawRequest_CurrencyID] ON [WalletWithdrawRequest] ([CurrencyID]);
GO

CREATE INDEX [IX_WalletWithdrawRequest_WalletAccountID] ON [WalletWithdrawRequest] ([WalletAccountID]);
GO

CREATE INDEX [IX_WebContent_BlogPostCategoryID] ON [WebContent] ([BlogPostCategoryID]);
GO

CREATE INDEX [IX_WebContent_BusinessID] ON [WebContent] ([BusinessID]);
GO

CREATE INDEX [IX_WebContent_BusinessProfileRecordID] ON [WebContent] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_WebContent_CourseAssignmentComponent_CourseID] ON [WebContent] ([CourseAssignmentComponent_CourseID]);
GO

CREATE INDEX [IX_WebContent_CourseAssignmentID] ON [WebContent] ([CourseAssignmentID]);
GO

CREATE INDEX [IX_WebContent_CourseCompletionCertificateTemplate_CourseID] ON [WebContent] ([CourseCompletionCertificateTemplate_CourseID]);
GO

CREATE INDEX [IX_WebContent_CourseForum_CourseID] ON [WebContent] ([CourseForum_CourseID]);
GO

CREATE INDEX [IX_WebContent_CourseID] ON [WebContent] ([CourseID]);
GO

CREATE INDEX [IX_WebContent_CoursePage_CourseID] ON [WebContent] ([CoursePage_CourseID]);
GO

CREATE INDEX [IX_WebContent_CourseUnitComponent_CourseID] ON [WebContent] ([CourseUnitComponent_CourseID]);
GO

CREATE INDEX [IX_WebContent_CourseUnitID] ON [WebContent] ([CourseUnitID]);
GO

CREATE INDEX [IX_WebContent_CourseUpdate_CourseID] ON [WebContent] ([CourseUpdate_CourseID]);
GO

CREATE INDEX [IX_WebContent_CourseWikiID] ON [WebContent] ([CourseWikiID]);
GO

CREATE INDEX [IX_WebContent_MarketingCampaignID] ON [WebContent] ([MarketingCampaignID]);
GO

CREATE INDEX [IX_WebContent_NewsletterID] ON [WebContent] ([NewsletterID]);
GO

CREATE INDEX [IX_WebContent_ParentWebContentID] ON [WebContent] ([ParentWebContentID]);
GO

CREATE INDEX [IX_WebContent_ParentWebContentVersionID] ON [WebContent] ([ParentWebContentVersionID]);
GO

CREATE INDEX [IX_WebContent_WebFormID] ON [WebContent] ([WebFormID]);
GO

CREATE INDEX [IX_WebContent_WebForum_WebTemplateID] ON [WebContent] ([WebForum_WebTemplateID]);
GO

CREATE INDEX [IX_WebContent_WebForumCategoryID] ON [WebContent] ([WebForumCategoryID]);
GO

CREATE INDEX [IX_WebContent_WebPage_WebFormID] ON [WebContent] ([WebPage_WebFormID]);
GO

CREATE INDEX [IX_WebContent_WebPage_WebTemplateID] ON [WebContent] ([WebPage_WebTemplateID]);
GO

CREATE INDEX [IX_WebContent_WebPortalID] ON [WebContent] ([WebPortalID]);
GO

CREATE INDEX [IX_WebContent_WebsiteThemeID] ON [WebContent] ([WebsiteThemeID]);
GO

CREATE INDEX [IX_WebContent_WebTemplateID] ON [WebContent] ([WebTemplateID]);
GO

CREATE INDEX [IX_WebFormSubmit_WebFormID] ON [WebFormSubmit] ([WebFormID]);
GO

CREATE INDEX [IX_WebhookRequestCondition_WebhookRequestID] ON [WebhookRequestCondition] ([WebhookRequestID]);
GO

CREATE INDEX [IX_WebhookRequestDataEntry_WebhookRequestID] ON [WebhookRequestDataEntry] ([WebhookRequestID]);
GO

CREATE INDEX [IX_WebhookRequestHeader_WebhookRequestID] ON [WebhookRequestHeader] ([WebhookRequestID]);
GO

CREATE INDEX [IX_WebPortal_BusinessDomainID] ON [WebPortal] ([BusinessDomainID]);
GO

CREATE INDEX [IX_WebPortal_BusinessID] ON [WebPortal] ([BusinessID]);
GO

CREATE INDEX [IX_WebPortal_BusinessPortalApplicationID] ON [WebPortal] ([BusinessPortalApplicationID]);
GO

CREATE INDEX [IX_WebPortal_BusinessProfileRecordID] ON [WebPortal] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_WebPortal_WebsiteThemeID] ON [WebPortal] ([WebsiteThemeID]);
GO

CREATE INDEX [IX_WebPortalBusinessDomainRecord_BusinessDomainID] ON [WebPortalBusinessDomainRecord] ([BusinessDomainID]);
GO

CREATE INDEX [IX_WebPortalBusinessDomainRecord_WebPortalID] ON [WebPortalBusinessDomainRecord] ([WebPortalID]);
GO

CREATE INDEX [IX_WebResource_BusinessID] ON [WebResource] ([BusinessID]);
GO

CREATE INDEX [IX_WebResource_WebsiteThemeID] ON [WebResource] ([WebsiteThemeID]);
GO

CREATE INDEX [IX_WebsiteTheme_BusinessID] ON [WebsiteTheme] ([BusinessID]);
GO

CREATE INDEX [IX_WishList_CartID] ON [WishList] ([CartID]);
GO

CREATE INDEX [IX_WishList_ContactID] ON [WishList] ([ContactID]);
GO

CREATE INDEX [IX_WishListRecord_ItemID] ON [WishListRecord] ([ItemID]);
GO

CREATE INDEX [IX_WishListRecord_WishListID] ON [WishListRecord] ([WishListID]);
GO

CREATE INDEX [IX_Workflow_BusinessID] ON [Workflow] ([BusinessID]);
GO

CREATE INDEX [IX_Workflow_WebPortalID] ON [Workflow] ([WebPortalID]);
GO

CREATE INDEX [IX_WorkflowExecution_WorkflowID] ON [WorkflowExecution] ([WorkflowID]);
GO

CREATE INDEX [IX_WorkflowExecution_WorkflowStageID] ON [WorkflowExecution] ([WorkflowStageID]);
GO

CREATE INDEX [IX_WorkflowStage_ParentWorkflowStageID] ON [WorkflowStage] ([ParentWorkflowStageID]);
GO

CREATE INDEX [IX_WorkflowStage_WorkflowID] ON [WorkflowStage] ([WorkflowID]);
GO

CREATE INDEX [IX_WorkflowState_WorkflowExecutionID] ON [WorkflowState] ([WorkflowExecutionID]);
GO

CREATE INDEX [IX_WorkflowState_WorkflowID] ON [WorkflowState] ([WorkflowID]);
GO

CREATE INDEX [IX_WorkflowState_WorkflowStageID] ON [WorkflowState] ([WorkflowStageID]);
GO

CREATE INDEX [IX_WorkOrder_BusinessID] ON [WorkOrder] ([BusinessID]);
GO

CREATE INDEX [IX_WorkOrder_WorkOrderTypeID] ON [WorkOrder] ([WorkOrderTypeID]);
GO

CREATE INDEX [IX_WorkOrderType_BusinessID] ON [WorkOrderType] ([BusinessID]);
GO

CREATE INDEX [IX_Workstation_BusinessID] ON [Workstation] ([BusinessID]);
GO

ALTER TABLE [AccessKeyPair] ADD CONSTRAINT [FK_AccessKeyPair_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]);
GO

ALTER TABLE [AccessKeyPair] ADD CONSTRAINT [FK_AccessKeyPair_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AccessKeyPair] ADD CONSTRAINT [FK_AccessKeyPair_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [AccessKeyPair] ADD CONSTRAINT [FK_AccessKeyPair_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [Account] ADD CONSTRAINT [FK_Account_AccountGroup_AccountGroupID] FOREIGN KEY ([AccountGroupID]) REFERENCES [AccountGroup] ([ID]);
GO

ALTER TABLE [Account] ADD CONSTRAINT [FK_Account_AccountType_AccountTypeID] FOREIGN KEY ([AccountTypeID]) REFERENCES [AccountType] ([ID]);
GO

ALTER TABLE [Account] ADD CONSTRAINT [FK_Account_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]);
GO

ALTER TABLE [Account] ADD CONSTRAINT [FK_Account_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [Account] ADD CONSTRAINT [FK_Account_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [Account] ADD CONSTRAINT [FK_Account_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [Account] ADD CONSTRAINT [FK_Account_ContactProfile_BankProfileID] FOREIGN KEY ([BankProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [Account] ADD CONSTRAINT [FK_Account_ContactProfile_BillingProfileID] FOREIGN KEY ([BillingProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [Account] ADD CONSTRAINT [FK_Account_Ledger_LedgerID] FOREIGN KEY ([LedgerID]) REFERENCES [Ledger] ([ID]);
GO

ALTER TABLE [AccountGroup] ADD CONSTRAINT [FK_AccountGroup_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AccountGroup] ADD CONSTRAINT [FK_AccountGroup_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [AccountHolderLogin] ADD CONSTRAINT [FK_AccountHolderLogin_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]);
GO

ALTER TABLE [AccountHolderLogin] ADD CONSTRAINT [FK_AccountHolderLogin_IPLookup_IPLookupID] FOREIGN KEY ([IPLookupID]) REFERENCES [IPLookup] ([ID]);
GO

ALTER TABLE [AccountHolderSettings] ADD CONSTRAINT [FK_AccountHolderSettings_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]);
GO

ALTER TABLE [AccountingEntry] ADD CONSTRAINT [FK_AccountingEntry_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AccountingEntry] ADD CONSTRAINT [FK_AccountingEntry_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [AccountingEntry] ADD CONSTRAINT [FK_AccountingEntry_ContactProfile_BankProfileID] FOREIGN KEY ([BankProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [AccountingEntry] ADD CONSTRAINT [FK_AccountingEntry_JournalEntry_JournalEntryID] FOREIGN KEY ([JournalEntryID]) REFERENCES [JournalEntry] ([ID]);
GO

ALTER TABLE [AccountingEntry] ADD CONSTRAINT [FK_AccountingEntry_Payment_PaymentChargeback_PaymentID] FOREIGN KEY ([PaymentChargeback_PaymentID]) REFERENCES [Payment] ([ID]);
GO

ALTER TABLE [AccountingEntry] ADD CONSTRAINT [FK_AccountingEntry_Payment_PaymentID] FOREIGN KEY ([PaymentID]) REFERENCES [Payment] ([ID]);
GO

ALTER TABLE [AccountingEntry] ADD CONSTRAINT [FK_AccountingEntry_PaymentDispute_PaymentChargeback_PaymentDisputeID] FOREIGN KEY ([PaymentChargeback_PaymentDisputeID]) REFERENCES [PaymentDispute] ([ID]);
GO

ALTER TABLE [AccountingEntry] ADD CONSTRAINT [FK_AccountingEntry_PaymentDispute_PaymentDisputeID] FOREIGN KEY ([PaymentDisputeID]) REFERENCES [PaymentDispute] ([ID]);
GO

ALTER TABLE [AccountingEntry] ADD CONSTRAINT [FK_AccountingEntry_SupportRequest_RefundRequestID] FOREIGN KEY ([RefundRequestID]) REFERENCES [SupportRequest] ([ID]);
GO

ALTER TABLE [AccountingEntry] ADD CONSTRAINT [FK_AccountingEntry_WalletAccount_PaymentChargeback_WalletAccountID] FOREIGN KEY ([PaymentChargeback_WalletAccountID]) REFERENCES [WalletAccount] ([ID]);
GO

ALTER TABLE [AccountingEntry] ADD CONSTRAINT [FK_AccountingEntry_WalletAccount_WalletAccountID] FOREIGN KEY ([WalletAccountID]) REFERENCES [WalletAccount] ([ID]);
GO

ALTER TABLE [AccountingPeriodClosingVoucher] ADD CONSTRAINT [FK_AccountingPeriodClosingVoucher_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AccountingPeriodClosingVoucher] ADD CONSTRAINT [FK_AccountingPeriodClosingVoucher_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [AccountingPeriodClosingVoucher] ADD CONSTRAINT [FK_AccountingPeriodClosingVoucher_FiscalYear_FiscalYearID] FOREIGN KEY ([FiscalYearID]) REFERENCES [FiscalYear] ([ID]);
GO

ALTER TABLE [AccountRelation] ADD CONSTRAINT [FK_AccountRelation_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AccountRelation] ADD CONSTRAINT [FK_AccountRelation_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [AccountRelation] ADD CONSTRAINT [FK_AccountRelation_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID]);
GO

ALTER TABLE [AccountType] ADD CONSTRAINT [FK_AccountType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AccountType] ADD CONSTRAINT [FK_AccountType_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [ActivityFeed] ADD CONSTRAINT [FK_ActivityFeed_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [ActivityFeed] ADD CONSTRAINT [FK_ActivityFeed_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [ActivityFeed] ADD CONSTRAINT [FK_ActivityFeed_DealUnit_DealUnitID] FOREIGN KEY ([DealUnitID]) REFERENCES [DealUnit] ([ID]);
GO

ALTER TABLE [ActivityFeed] ADD CONSTRAINT [FK_ActivityFeed_MarketingCampaign_MarketingCampaignID] FOREIGN KEY ([MarketingCampaignID]) REFERENCES [MarketingCampaign] ([ID]);
GO

ALTER TABLE [ActivityFeed] ADD CONSTRAINT [FK_ActivityFeed_MarketingList_MarketingListID] FOREIGN KEY ([MarketingListID]) REFERENCES [MarketingList] ([ID]);
GO

ALTER TABLE [ActivityFeed] ADD CONSTRAINT [FK_ActivityFeed_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID]);
GO

ALTER TABLE [ActivityRecord] ADD CONSTRAINT [FK_ActivityRecord_ActivityType_ActivityTypeID] FOREIGN KEY ([ActivityTypeID]) REFERENCES [ActivityType] ([ID]);
GO

ALTER TABLE [ActivityRecord] ADD CONSTRAINT [FK_ActivityRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [ActivityRecord] ADD CONSTRAINT [FK_ActivityRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [ActivityRecord] ADD CONSTRAINT [FK_ActivityRecord_BusinessProfileRecord_InChargeBusinessProfileRecordID] FOREIGN KEY ([InChargeBusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [ActivityType] ADD CONSTRAINT [FK_ActivityType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [ActivityType] ADD CONSTRAINT [FK_ActivityType_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [Agreement] ADD CONSTRAINT [FK_Agreement_AgreementType_AgreementTypeID] FOREIGN KEY ([AgreementTypeID]) REFERENCES [AgreementType] ([ID]);
GO

ALTER TABLE [Agreement] ADD CONSTRAINT [FK_Agreement_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [Agreement] ADD CONSTRAINT [FK_Agreement_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [AgreementRevision] ADD CONSTRAINT [FK_AgreementRevision_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AgreementType] ADD CONSTRAINT [FK_AgreementType_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AppliedFee] ADD CONSTRAINT [FK_AppliedFee_Payment_PaymentID] FOREIGN KEY ([PaymentID]) REFERENCES [Payment] ([ID]);
GO

ALTER TABLE [AppliedFee] ADD CONSTRAINT [FK_AppliedFee_PaymentGateway_PaymentGatewayID] FOREIGN KEY ([PaymentGatewayID]) REFERENCES [PaymentGateway] ([ID]);
GO

ALTER TABLE [AppliedFee] ADD CONSTRAINT [FK_AppliedFee_WalletWithdraw_WalletWithdrawID] FOREIGN KEY ([WalletWithdrawID]) REFERENCES [WalletWithdraw] ([ID]);
GO

ALTER TABLE [AppliedTaxPolicyRecord] ADD CONSTRAINT [FK_AppliedTaxPolicyRecord_BillingItemRecord_BillingItemRecordID] FOREIGN KEY ([BillingItemRecordID]) REFERENCES [BillingItemRecord] ([ID]);
GO

ALTER TABLE [AppliedTaxPolicyRecord] ADD CONSTRAINT [FK_AppliedTaxPolicyRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AppliedTaxPolicyRecord] ADD CONSTRAINT [FK_AppliedTaxPolicyRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [AppliedTaxPolicyRecord] ADD CONSTRAINT [FK_AppliedTaxPolicyRecord_Invoice_InvoiceID] FOREIGN KEY ([InvoiceID]) REFERENCES [Invoice] ([ID]);
GO

ALTER TABLE [AppliedTaxPolicyRecord] ADD CONSTRAINT [FK_AppliedTaxPolicyRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]);
GO

ALTER TABLE [AppliedTaxPolicyRecord] ADD CONSTRAINT [FK_AppliedTaxPolicyRecord_Payment_PaymentID] FOREIGN KEY ([PaymentID]) REFERENCES [Payment] ([ID]);
GO

ALTER TABLE [AppliedTaxPolicyRecord] ADD CONSTRAINT [FK_AppliedTaxPolicyRecord_Policy_TaxPolicyID] FOREIGN KEY ([TaxPolicyID]) REFERENCES [Policy] ([ID]);
GO

ALTER TABLE [AppraisalSession] ADD CONSTRAINT [FK_AppraisalSession_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AppraisalSession] ADD CONSTRAINT [FK_AppraisalSession_BusinessProcess_AppraisalWorkflowID] FOREIGN KEY ([AppraisalWorkflowID]) REFERENCES [BusinessProcess] ([ID]);
GO

ALTER TABLE [AppraisalSession] ADD CONSTRAINT [FK_AppraisalSession_BusinessProcessStage_AppraisalStageID] FOREIGN KEY ([AppraisalStageID]) REFERENCES [BusinessProcessStage] ([ID]);
GO

ALTER TABLE [AppraisalSession] ADD CONSTRAINT [FK_AppraisalSession_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [AppraisalSession] ADD CONSTRAINT [FK_AppraisalSession_ContactProfile_EmployeeProfileID] FOREIGN KEY ([EmployeeProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [AspNetUserClaims] ADD CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id]);
GO

ALTER TABLE [AspNetUserLogins] ADD CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id]);
GO

ALTER TABLE [AspNetUserRoles] ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id]);
GO

ALTER TABLE [AspNetUsers] ADD CONSTRAINT [FK_AspNetUsers_Business_SelectedBusinessID] FOREIGN KEY ([SelectedBusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [Asset] ADD CONSTRAINT [FK_Asset_AssetCategory_AssetCategoryID] FOREIGN KEY ([AssetCategoryID]) REFERENCES [AssetCategory] ([ID]);
GO

ALTER TABLE [Asset] ADD CONSTRAINT [FK_Asset_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [Asset] ADD CONSTRAINT [FK_Asset_BusinessDepartment_OrganizationDepartmentID] FOREIGN KEY ([OrganizationDepartmentID]) REFERENCES [BusinessDepartment] ([ID]);
GO

ALTER TABLE [Asset] ADD CONSTRAINT [FK_Asset_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [Asset] ADD CONSTRAINT [FK_Asset_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [Asset] ADD CONSTRAINT [FK_Asset_FinancialBook_FinancialBookID] FOREIGN KEY ([FinancialBookID]) REFERENCES [FinancialBook] ([ID]);
GO

ALTER TABLE [Asset] ADD CONSTRAINT [FK_Asset_Invoice_PurchaseInvoiceID] FOREIGN KEY ([PurchaseInvoiceID]) REFERENCES [Invoice] ([ID]);
GO

ALTER TABLE [Asset] ADD CONSTRAINT [FK_Asset_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]);
GO

ALTER TABLE [Asset] ADD CONSTRAINT [FK_Asset_Location_AssetLocationID] FOREIGN KEY ([AssetLocationID]) REFERENCES [Location] ([ID]);
GO

ALTER TABLE [Asset] ADD CONSTRAINT [FK_Asset_Receipt_PurchaseReceiptID] FOREIGN KEY ([PurchaseReceiptID]) REFERENCES [Receipt] ([ID]);
GO

ALTER TABLE [AssetCategory] ADD CONSTRAINT [FK_AssetCategory_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AssetDepreciationRecord] ADD CONSTRAINT [FK_AssetDepreciationRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AssetDepreciationRecord] ADD CONSTRAINT [FK_AssetDepreciationRecord_FinancialBook_FinancialBookID] FOREIGN KEY ([FinancialBookID]) REFERENCES [FinancialBook] ([ID]);
GO

ALTER TABLE [AssetTransfer] ADD CONSTRAINT [FK_AssetTransfer_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AssetTransfer] ADD CONSTRAINT [FK_AssetTransfer_BusinessDepartment_DestinationDepartmentID] FOREIGN KEY ([DestinationDepartmentID]) REFERENCES [BusinessDepartment] ([ID]);
GO

ALTER TABLE [AssetTransfer] ADD CONSTRAINT [FK_AssetTransfer_BusinessDepartment_SourceDepartmentID] FOREIGN KEY ([SourceDepartmentID]) REFERENCES [BusinessDepartment] ([ID]);
GO

ALTER TABLE [AssetTransfer] ADD CONSTRAINT [FK_AssetTransfer_Contact_DestinationContactID] FOREIGN KEY ([DestinationContactID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [AssetTransfer] ADD CONSTRAINT [FK_AssetTransfer_Contact_SourceContactID] FOREIGN KEY ([SourceContactID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [AssetTransfer] ADD CONSTRAINT [FK_AssetTransfer_Location_DestinationLocationID] FOREIGN KEY ([DestinationLocationID]) REFERENCES [Location] ([ID]);
GO

ALTER TABLE [AssetTransfer] ADD CONSTRAINT [FK_AssetTransfer_Location_SourceLocationID] FOREIGN KEY ([SourceLocationID]) REFERENCES [Location] ([ID]);
GO

ALTER TABLE [AssetValueAmend] ADD CONSTRAINT [FK_AssetValueAmend_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [AssetValueAmend] ADD CONSTRAINT [FK_AssetValueAmend_FinancialBook_FinancialBookID] FOREIGN KEY ([FinancialBookID]) REFERENCES [FinancialBook] ([ID]);
GO

ALTER TABLE [BankGuarantee] ADD CONSTRAINT [FK_BankGuarantee_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [BankGuarantee] ADD CONSTRAINT [FK_BankGuarantee_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [BankGuarantee] ADD CONSTRAINT [FK_BankGuarantee_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [BankGuarantee] ADD CONSTRAINT [FK_BankGuarantee_ContactProfile_BankProfileID] FOREIGN KEY ([BankProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [BankGuarantee] ADD CONSTRAINT [FK_BankGuarantee_Order_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [Order] ([ID]);
GO

ALTER TABLE [BankGuarantee] ADD CONSTRAINT [FK_BankGuarantee_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID]);
GO

ALTER TABLE [BillingCoupon] ADD CONSTRAINT [FK_BillingCoupon_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [BillingCoupon] ADD CONSTRAINT [FK_BillingCoupon_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Cart_CartID] FOREIGN KEY ([CartID]) REFERENCES [Cart] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_DealUnit_DealUnitID] FOREIGN KEY ([DealUnitID]) REFERENCES [DealUnit] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Invoice_InvoiceID] FOREIGN KEY ([InvoiceID]) REFERENCES [Invoice] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Location_LocationID] FOREIGN KEY ([LocationID]) REFERENCES [Location] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Order_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [Order] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Order_OrderItemRecord_OrderID] FOREIGN KEY ([OrderItemRecord_OrderID]) REFERENCES [Order] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Order_ParentOrderID] FOREIGN KEY ([ParentOrderID]) REFERENCES [Order] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Policy_ItemShipmentPolicyID] FOREIGN KEY ([ItemShipmentPolicyID]) REFERENCES [Policy] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Policy_RefundPolicyID] FOREIGN KEY ([RefundPolicyID]) REFERENCES [Policy] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Policy_ReturnPolicyID] FOREIGN KEY ([ReturnPolicyID]) REFERENCES [Policy] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Policy_WarrantyPolicyID] FOREIGN KEY ([WarrantyPolicyID]) REFERENCES [Policy] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_PriceListItem_ItemPriceID] FOREIGN KEY ([ItemPriceID]) REFERENCES [PriceListItem] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_PriceListItem_PriceListItemID] FOREIGN KEY ([PriceListItemID]) REFERENCES [PriceListItem] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Quote_QuoteID] FOREIGN KEY ([QuoteID]) REFERENCES [Quote] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_Unit_UnitID] FOREIGN KEY ([UnitID]) REFERENCES [Unit] ([ID]);
GO

ALTER TABLE [BillingItemRecord] ADD CONSTRAINT [FK_BillingItemRecord_UnitGroup_UnitGroupID] FOREIGN KEY ([UnitGroupID]) REFERENCES [UnitGroup] ([ID]);
GO

ALTER TABLE [Blockchain] ADD CONSTRAINT [FK_Blockchain_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [Blockchain] ADD CONSTRAINT [FK_Blockchain_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [BlockchainBlock] ADD CONSTRAINT [FK_BlockchainBlock_Item_NonFungibleTokenID] FOREIGN KEY ([NonFungibleTokenID]) REFERENCES [Item] ([ID]);
GO

ALTER TABLE [BlockchainBlock] ADD CONSTRAINT [FK_BlockchainBlock_WalletAccount_WalletAccountID] FOREIGN KEY ([WalletAccountID]) REFERENCES [WalletAccount] ([ID]);
GO

ALTER TABLE [BlockRecord] ADD CONSTRAINT [FK_BlockRecord_SocialProfile_BlockedSocialProfileID] FOREIGN KEY ([BlockedSocialProfileID]) REFERENCES [SocialProfile] ([ID]);
GO

ALTER TABLE [BlockRecord] ADD CONSTRAINT [FK_BlockRecord_SocialProfile_BlockerSocialProfileID] FOREIGN KEY ([BlockerSocialProfileID]) REFERENCES [SocialProfile] ([ID]);
GO

ALTER TABLE [BrandRecord] ADD CONSTRAINT [FK_BrandRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]);
GO

ALTER TABLE [BrandRecord] ADD CONSTRAINT [FK_BrandRecord_ItemBrand_BrandID] FOREIGN KEY ([BrandID]) REFERENCES [ItemBrand] ([ID]);
GO

ALTER TABLE [Budget] ADD CONSTRAINT [FK_Budget_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [Budget] ADD CONSTRAINT [FK_Budget_CostCentre_CostCentreID] FOREIGN KEY ([CostCentreID]) REFERENCES [CostCentre] ([ID]);
GO

ALTER TABLE [Budget] ADD CONSTRAINT [FK_Budget_FiscalYear_FiscalYearID] FOREIGN KEY ([FiscalYearID]) REFERENCES [FiscalYear] ([ID]);
GO

ALTER TABLE [Budget] ADD CONSTRAINT [FK_Budget_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID]);
GO

ALTER TABLE [Business] ADD CONSTRAINT [FK_Business_BusinessIndustry_BusinessIndustryID] FOREIGN KEY ([BusinessIndustryID]) REFERENCES [BusinessIndustry] ([ID]);
GO

ALTER TABLE [BusinessDepartment] ADD CONSTRAINT [FK_BusinessDepartment_ContactProfile_OrganizationProfileID] FOREIGN KEY ([OrganizationProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [BusinessSecurityLog] ADD CONSTRAINT [FK_BusinessSecurityLog_ContactProfile_SigningProfileID] FOREIGN KEY ([SigningProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [BusinessSecurityLog] ADD CONSTRAINT [FK_BusinessSecurityLog_SigningCertificate_SigningCertificateID] FOREIGN KEY ([SigningCertificateID]) REFERENCES [SigningCertificate] ([ID]);
GO

ALTER TABLE [BusinessTeam] ADD CONSTRAINT [FK_BusinessTeam_BusinessUnit_BusinessUnitID] FOREIGN KEY ([BusinessUnitID]) REFERENCES [BusinessUnit] ([ID]);
GO

ALTER TABLE [BusinessTeam] ADD CONSTRAINT [FK_BusinessTeam_ContactProfile_OrganizationProfileID] FOREIGN KEY ([OrganizationProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [BusinessTeamRecord] ADD CONSTRAINT [FK_BusinessTeamRecord_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [BusinessTeamRecord] ADD CONSTRAINT [FK_BusinessTeamRecord_ContactProfile_EmployeeProfileID] FOREIGN KEY ([EmployeeProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [BusinessTeamRecord] ADD CONSTRAINT [FK_BusinessTeamRecord_Project_ProjectID] FOREIGN KEY ([ProjectID]) REFERENCES [Project] ([ID]);
GO

ALTER TABLE [BusinessUnit] ADD CONSTRAINT [FK_BusinessUnit_ContactProfile_OrganizationProfileID] FOREIGN KEY ([OrganizationProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [Cart] ADD CONSTRAINT [FK_Cart_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [Cart] ADD CONSTRAINT [FK_Cart_Location_LocationID] FOREIGN KEY ([LocationID]) REFERENCES [Location] ([ID]);
GO

ALTER TABLE [CartRecord] ADD CONSTRAINT [FK_CartRecord_Item_ItemCartRecord_ItemID] FOREIGN KEY ([ItemCartRecord_ItemID]) REFERENCES [Item] ([ID]);
GO

ALTER TABLE [CartRecord] ADD CONSTRAINT [FK_CartRecord_Item_ItemID] FOREIGN KEY ([ItemID]) REFERENCES [Item] ([ID]);
GO

ALTER TABLE [CartRecord] ADD CONSTRAINT [FK_CartRecord_Item_RecentlyViewedItemRecord_ItemID] FOREIGN KEY ([RecentlyViewedItemRecord_ItemID]) REFERENCES [Item] ([ID]);
GO

ALTER TABLE [CartRecord] ADD CONSTRAINT [FK_CartRecord_Location_ShippingAddressID] FOREIGN KEY ([ShippingAddressID]) REFERENCES [Location] ([ID]);
GO

ALTER TABLE [CognitiveAgentConversation] ADD CONSTRAINT [FK_CognitiveAgentConversation_Contact_IndividualID] FOREIGN KEY ([IndividualID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [CognitiveAgentConversation] ADD CONSTRAINT [FK_CognitiveAgentConversation_Contact_OrganizationID] FOREIGN KEY ([OrganizationID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [Commission] ADD CONSTRAINT [FK_Commission_Contact_EmmisorContactID] FOREIGN KEY ([EmmisorContactID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [Commission] ADD CONSTRAINT [FK_Commission_Contact_ReceptorContactID] FOREIGN KEY ([ReceptorContactID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [Commission] ADD CONSTRAINT [FK_Commission_Payment_PaymentID] FOREIGN KEY ([PaymentID]) REFERENCES [Payment] ([ID]);
GO

ALTER TABLE [Commission] ADD CONSTRAINT [FK_Commission_Salary_SalaryID] FOREIGN KEY ([SalaryID]) REFERENCES [Salary] ([ID]);
GO

ALTER TABLE [Commission] ADD CONSTRAINT [FK_Commission_WalletAccount_EmmisorWalletAccountID] FOREIGN KEY ([EmmisorWalletAccountID]) REFERENCES [WalletAccount] ([ID]);
GO

ALTER TABLE [Commission] ADD CONSTRAINT [FK_Commission_WalletAccount_ReceptorWalletAccountID] FOREIGN KEY ([ReceptorWalletAccountID]) REFERENCES [WalletAccount] ([ID]);
GO

ALTER TABLE [Contact] ADD CONSTRAINT [FK_Contact_ContactProfile_PartnerProfileID] FOREIGN KEY ([PartnerProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [ContactProfile] ADD CONSTRAINT [FK_ContactProfile_WalletAccount_WalletAccountID] FOREIGN KEY ([WalletAccountID]) REFERENCES [WalletAccount] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220524003345_V_1_5_6', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [JobOffer] ADD [Benefits] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [CurrencyID] nvarchar(450) NULL;
GO

ALTER TABLE [JobOffer] ADD [ExpectedHireDate] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [JobOffer] ADD [MaxSalaryAmount] decimal(18,2) NOT NULL DEFAULT 0.0;
GO

ALTER TABLE [JobOffer] ADD [MinSalaryAmount] decimal(18,2) NOT NULL DEFAULT 0.0;
GO

CREATE INDEX [IX_JobOffer_CurrencyID] ON [JobOffer] ([CurrencyID]);
GO

ALTER TABLE [JobOffer] ADD CONSTRAINT [FK_JobOffer_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220525022115_V_1_5_8', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

EXEC sp_rename N'[CurriculumRecord].[ProfessionalDegree_Title]', N'Recommendation', N'COLUMN';
GO

EXEC sp_rename N'[CurriculumRecord].[ProfessionalDegree_Date]', N'ExperienceTo', N'COLUMN';
GO

EXEC sp_rename N'[CurriculumRecord].[InstitutionDiploma_Date]', N'ExperienceFrom', N'COLUMN';
GO

ALTER TABLE [JobOffer] ADD [ViewsCount] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [JobField] ADD [Description] nvarchar(max) NULL;
GO

DECLARE @var0 sysname;
SELECT @var0 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[CurriculumRecord]') AND [c].[name] = N'Priority');
IF @var0 IS NOT NULL EXEC(N'ALTER TABLE [CurriculumRecord] DROP CONSTRAINT [' + @var0 + '];');
ALTER TABLE [CurriculumRecord] ALTER COLUMN [Priority] decimal(18,2) NOT NULL;
ALTER TABLE [CurriculumRecord] ADD DEFAULT 0.0 FOR [Priority];
GO

DECLARE @var1 sysname;
SELECT @var1 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[CurriculumRecord]') AND [c].[name] = N'Date');
IF @var1 IS NOT NULL EXEC(N'ALTER TABLE [CurriculumRecord] DROP CONSTRAINT [' + @var1 + '];');
ALTER TABLE [CurriculumRecord] ALTER COLUMN [Date] datetime2 NOT NULL;
ALTER TABLE [CurriculumRecord] ADD DEFAULT '0001-01-01T00:00:00.0000000' FOR [Date];
GO

ALTER TABLE [CurriculumRecord] ADD [AwardedDate] datetime2 NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [CountryLanguageID] nvarchar(450) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [CurriculumExperienceID] nvarchar(450) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [CurriculumLanguageProficiency] int NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [Description] nvarchar(max) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [EmployerProfileID] nvarchar(450) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [Featured] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [CurriculumRecord] ADD [IndividualSkillProficiency] int NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [InstitutionName] nvarchar(max) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [IsCurrentOccupation] bit NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [OrganizationName] nvarchar(max) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [ProficiencyPercentage] float NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [ProjectAccomplishments] nvarchar(max) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [ProjectGoals] nvarchar(max) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [ProjectResponsibilities] nvarchar(max) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [RelationshipType] int NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [SocialProfileID] nvarchar(450) NULL;
GO

ALTER TABLE [Curriculum] ADD [CoverLetter] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [BusinessIndustryID] nvarchar(450) NULL;
GO

CREATE TABLE [Gig] (
    [ID] nvarchar(450) NOT NULL,
    [Type] nvarchar(max) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [EmployerProfileID] nvarchar(450) NULL,
    [MinBudget] decimal(18,2) NOT NULL,
    [MaxBudget] decimal(18,2) NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [CountryID] nvarchar(450) NULL,
    [CountryStateID] nvarchar(450) NULL,
    [CityID] nvarchar(450) NULL,
    CONSTRAINT [PK_Gig] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Gig_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Gig_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_Gig_City_CityID] FOREIGN KEY ([CityID]) REFERENCES [City] ([ID]),
    CONSTRAINT [FK_Gig_ContactProfile_EmployerProfileID] FOREIGN KEY ([EmployerProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_Gig_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]),
    CONSTRAINT [FK_Gig_CountryState_CountryStateID] FOREIGN KEY ([CountryStateID]) REFERENCES [CountryState] ([ID]),
    CONSTRAINT [FK_Gig_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID])
);
GO

CREATE TABLE [GigApplication] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [AcceptedTimestamp] datetime2 NULL,
    [Accepted] bit NOT NULL,
    [GigID] nvarchar(450) NULL,
    [Proposal] nvarchar(max) NULL,
    [Cost] decimal(18,2) NOT NULL,
    [CurrencyID] nvarchar(450) NULL,
    [JobApplicantProfileID] nvarchar(450) NULL,
    CONSTRAINT [PK_GigApplication] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_GigApplication_ContactProfile_JobApplicantProfileID] FOREIGN KEY ([JobApplicantProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_GigApplication_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]),
    CONSTRAINT [FK_GigApplication_Gig_GigID] FOREIGN KEY ([GigID]) REFERENCES [Gig] ([ID])
);
GO

CREATE INDEX [IX_CurriculumRecord_CountryLanguageID] ON [CurriculumRecord] ([CountryLanguageID]);
GO

CREATE INDEX [IX_CurriculumRecord_CurriculumExperienceID] ON [CurriculumRecord] ([CurriculumExperienceID]);
GO

CREATE INDEX [IX_CurriculumRecord_EmployerProfileID] ON [CurriculumRecord] ([EmployerProfileID]);
GO

CREATE INDEX [IX_CurriculumRecord_SocialProfileID] ON [CurriculumRecord] ([SocialProfileID]);
GO

CREATE INDEX [IX_Contact_BusinessIndustryID] ON [Contact] ([BusinessIndustryID]);
GO

CREATE INDEX [IX_Gig_BusinessID] ON [Gig] ([BusinessID]);
GO

CREATE INDEX [IX_Gig_BusinessProfileRecordID] ON [Gig] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Gig_CityID] ON [Gig] ([CityID]);
GO

CREATE INDEX [IX_Gig_CountryID] ON [Gig] ([CountryID]);
GO

CREATE INDEX [IX_Gig_CountryStateID] ON [Gig] ([CountryStateID]);
GO

CREATE INDEX [IX_Gig_CurrencyID] ON [Gig] ([CurrencyID]);
GO

CREATE INDEX [IX_Gig_EmployerProfileID] ON [Gig] ([EmployerProfileID]);
GO

CREATE INDEX [IX_GigApplication_CurrencyID] ON [GigApplication] ([CurrencyID]);
GO

CREATE INDEX [IX_GigApplication_GigID] ON [GigApplication] ([GigID]);
GO

CREATE INDEX [IX_GigApplication_JobApplicantProfileID] ON [GigApplication] ([JobApplicantProfileID]);
GO

ALTER TABLE [Contact] ADD CONSTRAINT [FK_Contact_BusinessIndustry_BusinessIndustryID] FOREIGN KEY ([BusinessIndustryID]) REFERENCES [BusinessIndustry] ([ID]);
GO

ALTER TABLE [CurriculumRecord] ADD CONSTRAINT [FK_CurriculumRecord_ContactProfile_EmployerProfileID] FOREIGN KEY ([EmployerProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [CurriculumRecord] ADD CONSTRAINT [FK_CurriculumRecord_CountryLanguage_CountryLanguageID] FOREIGN KEY ([CountryLanguageID]) REFERENCES [CountryLanguage] ([Iso639_1]);
GO

ALTER TABLE [CurriculumRecord] ADD CONSTRAINT [FK_CurriculumRecord_CurriculumRecord_CurriculumExperienceID] FOREIGN KEY ([CurriculumExperienceID]) REFERENCES [CurriculumRecord] ([ID]);
GO

ALTER TABLE [CurriculumRecord] ADD CONSTRAINT [FK_CurriculumRecord_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220528230436_V_1_6_1', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [CurriculumRecord] DROP CONSTRAINT [FK_CurriculumRecord_ContactProfile_InstitutionDiploma_AcademicInstitutionProfileID];
GO

ALTER TABLE [CurriculumRecord] DROP CONSTRAINT [FK_CurriculumRecord_ContactProfile_ProfessionalDegree_AcademicInstitutionProfileID];
GO

ALTER TABLE [CurriculumRecord] DROP CONSTRAINT [FK_CurriculumRecord_CurriculumSkill_CurriculumSkillID];
GO

ALTER TABLE [CurriculumSkill] DROP CONSTRAINT [FK_CurriculumSkill_Business_BusinessID];
GO

ALTER TABLE [CurriculumSkill] DROP CONSTRAINT [FK_CurriculumSkill_BusinessProfileRecord_BusinessProfileRecordID];
GO

ALTER TABLE [ProjectResourceSkillRecord] DROP CONSTRAINT [FK_ProjectResourceSkillRecord_CurriculumSkill_ProjectResourceSkillID];
GO

ALTER TABLE [RequiredSkillRecord] DROP CONSTRAINT [FK_RequiredSkillRecord_CurriculumSkill_CurriculumSkillID];
GO

ALTER TABLE [CurriculumSkill] DROP CONSTRAINT [PK_CurriculumSkill];
GO

DECLARE @var2 sysname;
SELECT @var2 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Curriculum]') AND [c].[name] = N'CoverLetter');
IF @var2 IS NOT NULL EXEC(N'ALTER TABLE [Curriculum] DROP CONSTRAINT [' + @var2 + '];');
ALTER TABLE [Curriculum] DROP COLUMN [CoverLetter];
GO

EXEC sp_rename N'[CurriculumSkill]', N'Skill';
GO

EXEC sp_rename N'[RequiredSkillRecord].[CurriculumSkillID]', N'SkillID', N'COLUMN';
GO

EXEC sp_rename N'[RequiredSkillRecord].[IX_RequiredSkillRecord_CurriculumSkillID]', N'IX_RequiredSkillRecord_SkillID', N'INDEX';
GO

EXEC sp_rename N'[CurriculumRecord].[ProfessionalDegree_KnowledgeField]', N'CurriculumDegree_KnowledgeField', N'COLUMN';
GO

EXEC sp_rename N'[CurriculumRecord].[ProfessionalDegree_AcademicInstitutionProfileID]', N'CurriculumEducation_AcademicInstitutionProfileID', N'COLUMN';
GO

EXEC sp_rename N'[CurriculumRecord].[InstitutionDiploma_AcademicInstitutionProfileID]', N'CurriculumDiploma_AcademicInstitutionProfileID', N'COLUMN';
GO

EXEC sp_rename N'[CurriculumRecord].[CurriculumSkillID]', N'SkillID', N'COLUMN';
GO

EXEC sp_rename N'[CurriculumRecord].[IX_CurriculumRecord_ProfessionalDegree_AcademicInstitutionProfileID]', N'IX_CurriculumRecord_CurriculumEducation_AcademicInstitutionProfileID', N'INDEX';
GO

EXEC sp_rename N'[CurriculumRecord].[IX_CurriculumRecord_InstitutionDiploma_AcademicInstitutionProfileID]', N'IX_CurriculumRecord_CurriculumDiploma_AcademicInstitutionProfileID', N'INDEX';
GO

EXEC sp_rename N'[CurriculumRecord].[IX_CurriculumRecord_CurriculumSkillID]', N'IX_CurriculumRecord_SkillID', N'INDEX';
GO

EXEC sp_rename N'[Skill].[IX_CurriculumSkill_BusinessProfileRecordID]', N'IX_Skill_BusinessProfileRecordID', N'INDEX';
GO

EXEC sp_rename N'[Skill].[IX_CurriculumSkill_BusinessID]', N'IX_Skill_BusinessID', N'INDEX';
GO

ALTER TABLE [GigApplication] ADD [CurriculumCoverID] nvarchar(450) NULL;
GO

ALTER TABLE [GigApplication] ADD [CurriculumID] nvarchar(450) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [CoverLetter] nvarchar(max) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [CurriculumDegree_AcademicInstitutionProfileID] nvarchar(450) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [EndDate] datetime2 NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [GigID] nvarchar(450) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [StartDate] datetime2 NULL;
GO

ALTER TABLE [Skill] ADD CONSTRAINT [PK_Skill] PRIMARY KEY ([ID]);
GO

CREATE INDEX [IX_GigApplication_CurriculumCoverID] ON [GigApplication] ([CurriculumCoverID]);
GO

CREATE INDEX [IX_GigApplication_CurriculumID] ON [GigApplication] ([CurriculumID]);
GO

CREATE INDEX [IX_CurriculumRecord_CurriculumDegree_AcademicInstitutionProfileID] ON [CurriculumRecord] ([CurriculumDegree_AcademicInstitutionProfileID]);
GO

CREATE INDEX [IX_CurriculumRecord_GigID] ON [CurriculumRecord] ([GigID]);
GO

ALTER TABLE [CurriculumRecord] ADD CONSTRAINT [FK_CurriculumRecord_ContactProfile_CurriculumDegree_AcademicInstitutionProfileID] FOREIGN KEY ([CurriculumDegree_AcademicInstitutionProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [CurriculumRecord] ADD CONSTRAINT [FK_CurriculumRecord_ContactProfile_CurriculumDiploma_AcademicInstitutionProfileID] FOREIGN KEY ([CurriculumDiploma_AcademicInstitutionProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [CurriculumRecord] ADD CONSTRAINT [FK_CurriculumRecord_ContactProfile_CurriculumEducation_AcademicInstitutionProfileID] FOREIGN KEY ([CurriculumEducation_AcademicInstitutionProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [CurriculumRecord] ADD CONSTRAINT [FK_CurriculumRecord_Gig_GigID] FOREIGN KEY ([GigID]) REFERENCES [Gig] ([ID]);
GO

ALTER TABLE [CurriculumRecord] ADD CONSTRAINT [FK_CurriculumRecord_Skill_SkillID] FOREIGN KEY ([SkillID]) REFERENCES [Skill] ([ID]);
GO

ALTER TABLE [GigApplication] ADD CONSTRAINT [FK_GigApplication_Curriculum_CurriculumID] FOREIGN KEY ([CurriculumID]) REFERENCES [Curriculum] ([ID]);
GO

ALTER TABLE [GigApplication] ADD CONSTRAINT [FK_GigApplication_CurriculumRecord_CurriculumCoverID] FOREIGN KEY ([CurriculumCoverID]) REFERENCES [CurriculumRecord] ([ID]);
GO

ALTER TABLE [ProjectResourceSkillRecord] ADD CONSTRAINT [FK_ProjectResourceSkillRecord_Skill_ProjectResourceSkillID] FOREIGN KEY ([ProjectResourceSkillID]) REFERENCES [Skill] ([ID]);
GO

ALTER TABLE [RequiredSkillRecord] ADD CONSTRAINT [FK_RequiredSkillRecord_Skill_SkillID] FOREIGN KEY ([SkillID]) REFERENCES [Skill] ([ID]);
GO

ALTER TABLE [Skill] ADD CONSTRAINT [FK_Skill_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [Skill] ADD CONSTRAINT [FK_Skill_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220529193855_V_1_6_2', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

DECLARE @var3 sysname;
SELECT @var3 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[CurriculumRecord]') AND [c].[name] = N'AwardedDate');
IF @var3 IS NOT NULL EXEC(N'ALTER TABLE [CurriculumRecord] DROP CONSTRAINT [' + @var3 + '];');
ALTER TABLE [CurriculumRecord] DROP COLUMN [AwardedDate];
GO

EXEC sp_rename N'[Skill].[CurriculumSkillType]', N'SkillType', N'COLUMN';
GO

EXEC sp_rename N'[CurriculumRecord].[OrganizationName]', N'Responsibilities', N'COLUMN';
GO

ALTER TABLE [Skill] ADD [IconUrl] nvarchar(max) NULL;
GO

ALTER TABLE [Skill] ADD [Url] nvarchar(max) NULL;
GO

ALTER TABLE [JobOfferApplication] ADD [CurrencyID] nvarchar(450) NULL;
GO

ALTER TABLE [JobOfferApplication] ADD [CurriculumCoverID] nvarchar(450) NULL;
GO

ALTER TABLE [JobOfferApplication] ADD [SalaryExpectation] float NOT NULL DEFAULT 0.0E0;
GO

ALTER TABLE [CurriculumRecord] ADD [Achievements] nvarchar(max) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [CurriculumEducation_KnowledgeField] nvarchar(max) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [ImageUrl] nvarchar(max) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [Organization] nvarchar(max) NULL;
GO

ALTER TABLE [CurriculumRecord] ADD [Remarks] nvarchar(max) NULL;
GO

ALTER TABLE [ContactProfile] ADD [CurrencyID] nvarchar(450) NULL;
GO

ALTER TABLE [ContactProfile] ADD [CurriculumID] nvarchar(450) NULL;
GO

ALTER TABLE [ContactProfile] ADD [SalaryExpectation] decimal(18,2) NULL;
GO

ALTER TABLE [ActivityFeed] ADD [GigApplicationID] nvarchar(450) NULL;
GO

ALTER TABLE [ActivityFeed] ADD [JobOfferApplicationID] nvarchar(450) NULL;
GO

CREATE INDEX [IX_JobOfferApplication_CurrencyID] ON [JobOfferApplication] ([CurrencyID]);
GO

CREATE INDEX [IX_JobOfferApplication_CurriculumCoverID] ON [JobOfferApplication] ([CurriculumCoverID]);
GO

CREATE INDEX [IX_ContactProfile_CurrencyID] ON [ContactProfile] ([CurrencyID]);
GO

CREATE UNIQUE INDEX [IX_ContactProfile_CurriculumID] ON [ContactProfile] ([CurriculumID]) WHERE [CurriculumID] IS NOT NULL;
GO

CREATE UNIQUE INDEX [IX_ActivityFeed_GigApplicationID] ON [ActivityFeed] ([GigApplicationID]) WHERE [GigApplicationID] IS NOT NULL;
GO

CREATE UNIQUE INDEX [IX_ActivityFeed_JobOfferApplicationID] ON [ActivityFeed] ([JobOfferApplicationID]) WHERE [JobOfferApplicationID] IS NOT NULL;
GO

ALTER TABLE [ActivityFeed] ADD CONSTRAINT [FK_ActivityFeed_GigApplication_GigApplicationID] FOREIGN KEY ([GigApplicationID]) REFERENCES [GigApplication] ([ID]);
GO

ALTER TABLE [ActivityFeed] ADD CONSTRAINT [FK_ActivityFeed_JobOfferApplication_JobOfferApplicationID] FOREIGN KEY ([JobOfferApplicationID]) REFERENCES [JobOfferApplication] ([ID]);
GO

ALTER TABLE [ContactProfile] ADD CONSTRAINT [FK_ContactProfile_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]);
GO

ALTER TABLE [ContactProfile] ADD CONSTRAINT [FK_ContactProfile_Curriculum_CurriculumID] FOREIGN KEY ([CurriculumID]) REFERENCES [Curriculum] ([ID]);
GO

ALTER TABLE [JobOfferApplication] ADD CONSTRAINT [FK_JobOfferApplication_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]);
GO

ALTER TABLE [JobOfferApplication] ADD CONSTRAINT [FK_JobOfferApplication_CurriculumRecord_CurriculumCoverID] FOREIGN KEY ([CurriculumCoverID]) REFERENCES [CurriculumRecord] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220530004202_V_1_6_3', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [ContactProfile] DROP CONSTRAINT [FK_ContactProfile_Curriculum_CurriculumID];
GO

ALTER TABLE [Curriculum] DROP CONSTRAINT [FK_Curriculum_SocialProfile_SocialProfileID];
GO

DROP INDEX [IX_Curriculum_SocialProfileID] ON [Curriculum];
GO

DROP INDEX [IX_ContactProfile_CurriculumID] ON [ContactProfile];
GO

DECLARE @var4 sysname;
SELECT @var4 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Curriculum]') AND [c].[name] = N'SocialProfileID');
IF @var4 IS NOT NULL EXEC(N'ALTER TABLE [Curriculum] DROP CONSTRAINT [' + @var4 + '];');
ALTER TABLE [Curriculum] DROP COLUMN [SocialProfileID];
GO

DECLARE @var5 sysname;
SELECT @var5 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ContactProfile]') AND [c].[name] = N'CurriculumID');
IF @var5 IS NOT NULL EXEC(N'ALTER TABLE [ContactProfile] DROP CONSTRAINT [' + @var5 + '];');
ALTER TABLE [ContactProfile] DROP COLUMN [CurriculumID];
GO

ALTER TABLE [Contact] ADD [BusinessSegmentID] nvarchar(450) NULL;
GO

CREATE INDEX [IX_Contact_BusinessSegmentID] ON [Contact] ([BusinessSegmentID]);
GO

ALTER TABLE [Contact] ADD CONSTRAINT [FK_Contact_BusinessSegment_BusinessSegmentID] FOREIGN KEY ([BusinessSegmentID]) REFERENCES [BusinessSegment] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220530030021_V_1_6_4', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [ContactProfile] DROP CONSTRAINT [FK_ContactProfile_PartnerTier_PartnerTierID];
GO

DROP TABLE [PartnerTier];
GO

DROP TABLE [WorkOrder];
GO

DECLARE @var6 sysname;
SELECT @var6 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Contact]') AND [c].[name] = N'Birdthday');
IF @var6 IS NOT NULL EXEC(N'ALTER TABLE [Contact] DROP CONSTRAINT [' + @var6 + '];');
ALTER TABLE [Contact] DROP COLUMN [Birdthday];
GO

DECLARE @var7 sysname;
SELECT @var7 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[BusinessSegment]') AND [c].[name] = N'EmployeeHighRangeValue');
IF @var7 IS NOT NULL EXEC(N'ALTER TABLE [BusinessSegment] DROP CONSTRAINT [' + @var7 + '];');
ALTER TABLE [BusinessSegment] DROP COLUMN [EmployeeHighRangeValue];
GO

DECLARE @var8 sysname;
SELECT @var8 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[BusinessSegment]') AND [c].[name] = N'EmployeeLowRangeValue');
IF @var8 IS NOT NULL EXEC(N'ALTER TABLE [BusinessSegment] DROP CONSTRAINT [' + @var8 + '];');
ALTER TABLE [BusinessSegment] DROP COLUMN [EmployeeLowRangeValue];
GO

EXEC sp_rename N'[ContactProfile].[PartnerTierID]', N'PartnerProgramTierID', N'COLUMN';
GO

EXEC sp_rename N'[ContactProfile].[IX_ContactProfile_PartnerTierID]', N'IX_ContactProfile_PartnerProgramTierID', N'INDEX';
GO

EXEC sp_rename N'[Contact].[PreferedContactMethod]', N'Website', N'COLUMN';
GO

EXEC sp_rename N'[Contact].[BirthDate]', N'Birthday', N'COLUMN';
GO

ALTER TABLE [Workstation] ADD [BusinessProfileRecordID] nvarchar(450) NULL;
GO

ALTER TABLE [Workstation] ADD [Code] nvarchar(max) NULL;
GO

ALTER TABLE [Workstation] ADD [Description] nvarchar(max) NULL;
GO

ALTER TABLE [Workstation] ADD [LocationID] nvarchar(450) NULL;
GO

ALTER TABLE [Workstation] ADD [Type] nvarchar(max) NULL;
GO

ALTER TABLE [WorkOrderType] ADD [BusinessProfileRecordID] nvarchar(450) NULL;
GO

ALTER TABLE [WorkOrderType] ADD [Description] nvarchar(max) NULL;
GO

ALTER TABLE [WorkOrderType] ADD [Name] nvarchar(max) NULL;
GO

ALTER TABLE [WorkOrderType] ADD [Timestamp] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [Task] ADD [Data] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data1] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data1Label] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data2] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data2Label] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data3] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data3Label] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data4] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data4Label] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data5] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data5Label] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data6] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data6Label] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data7] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data7Label] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data8] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data8Label] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data9] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Data9Label] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [DataLabel] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [Instructions] nvarchar(max) NULL;
GO

ALTER TABLE [Task] ADD [IsTemplate] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [Task] ADD [PriorityID] nvarchar(450) NULL;
GO

ALTER TABLE [Task] ADD [ServiceCaseID] nvarchar(450) NULL;
GO

ALTER TABLE [Task] ADD [ServiceID] nvarchar(450) NULL;
GO

ALTER TABLE [Shipment] ADD [ShippingTerms] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [ServiceCase] ADD [CurrencyID] nvarchar(450) NULL;
GO

ALTER TABLE [ServiceCase] ADD [Discriminator] nvarchar(max) NOT NULL DEFAULT N'';
GO

ALTER TABLE [ServiceCase] ADD [Instructions] nvarchar(max) NULL;
GO

ALTER TABLE [ServiceCase] ADD [PriceListID] nvarchar(450) NULL;
GO

ALTER TABLE [ServiceCase] ADD [ProductionPlanID] nvarchar(450) NULL;
GO

ALTER TABLE [ServiceCase] ADD [PromisedEndDate] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [ServiceCase] ADD [PromisedStartDate] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [ServiceCase] ADD [Taxable] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [ServiceCase] ADD [TerritoryID] nvarchar(450) NULL;
GO

ALTER TABLE [ServiceCase] ADD [WorkLocation] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [ServiceCase] ADD [WorkOrderTypeID] nvarchar(450) NULL;
GO

ALTER TABLE [ServiceCase] ADD [WorkstationID] nvarchar(450) NULL;
GO

ALTER TABLE [ProductionPlan] ADD [BusinessProfileRecordID] nvarchar(450) NULL;
GO

ALTER TABLE [ProductionPlan] ADD [Description] nvarchar(max) NULL;
GO

ALTER TABLE [ProductionPlan] ADD [Timestamp] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [ProductionPlan] ADD [Title] nvarchar(max) NULL;
GO

ALTER TABLE [Curriculum] ADD [JobApplicantProfileID] nvarchar(450) NULL;
GO

ALTER TABLE [Curriculum] ADD [SocialProfileID] nvarchar(450) NULL;
GO

ALTER TABLE [ContactProfile] ADD [PartnerProfileStatus] int NULL;
GO

ALTER TABLE [ContactProfile] ADD [PartnerProgramEndDate] datetime2 NULL;
GO

ALTER TABLE [ContactProfile] ADD [PartnerProgramStartDate] datetime2 NULL;
GO

ALTER TABLE [Contact] ADD [About] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [AllowPhoneCalls] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [Contact] ADD [BusinessSizeID] nvarchar(450) NULL;
GO

ALTER TABLE [Contact] ADD [Data] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data1] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data1Label] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data2] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data2Label] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data3] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data3Label] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data4] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data4Label] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data5] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data5Label] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data6] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data6Label] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data7] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data7Label] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data8] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data8Label] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data9] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Data9Label] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [DataLabel] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Description] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [Contact] ADD [OrganizationName] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [OrganizationOwnership] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [Contact] ADD [SICCode] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [ShippingTerms] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [Contact] ADD [TaxExempt] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [Contact] ADD [TickerSymbol] nvarchar(max) NULL;
GO

ALTER TABLE [BusinessSegment] ADD [CurrencyID] nvarchar(450) NULL;
GO

ALTER TABLE [BusinessSegment] ADD [MaxRevenue] float NOT NULL DEFAULT 0.0E0;
GO

ALTER TABLE [BusinessSegment] ADD [MinRevenue] float NOT NULL DEFAULT 0.0E0;
GO

ALTER TABLE [Business] ADD [BusinessSizeID] nvarchar(450) NULL;
GO

CREATE TABLE [BusinessSize] (
    [ID] nvarchar(450) NOT NULL,
    [EmployeeLowRangeValue] int NOT NULL,
    [EmployeeHighRangeValue] int NOT NULL,
    CONSTRAINT [PK_BusinessSize] PRIMARY KEY ([ID])
);
GO

CREATE TABLE [PartnerProgram] (
    [ID] nvarchar(450) NOT NULL,
    [Title] bit NOT NULL,
    [Criteria] bit NOT NULL,
    [Description] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [PartnerProgramEndDate] datetime2 NOT NULL,
    [PartnerProgramStartDate] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_PartnerProgram] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PartnerProgram_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_PartnerProgram_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [Priority] (
    [ID] nvarchar(450) NOT NULL,
    [Title] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [Notes] nvarchar(max) NULL,
    [Color] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_Priority] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_Priority_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_Priority_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID])
);
GO

CREATE TABLE [ServiceFulfillmentPreferences] (
    [ID] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NULL,
    [Details] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [ServiceCaseID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_ServiceFulfillmentPreferences] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ServiceFulfillmentPreferences_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ServiceFulfillmentPreferences_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ServiceFulfillmentPreferences_ServiceCase_ServiceCaseID] FOREIGN KEY ([ServiceCaseID]) REFERENCES [ServiceCase] ([ID])
);
GO

CREATE TABLE [PartnerProgramTier] (
    [ID] nvarchar(450) NOT NULL,
    [Title] bit NOT NULL,
    [Criteria] bit NOT NULL,
    [Description] bit NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [PartnerProgramID] nvarchar(450) NULL,
    [PriceListID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    CONSTRAINT [PK_PartnerProgramTier] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PartnerProgramTier_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_PartnerProgramTier_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_PartnerProgramTier_PartnerProgram_PartnerProgramID] FOREIGN KEY ([PartnerProgramID]) REFERENCES [PartnerProgram] ([ID]),
    CONSTRAINT [FK_PartnerProgramTier_PriceList_PriceListID] FOREIGN KEY ([PriceListID]) REFERENCES [PriceList] ([ID])
);
GO

CREATE TABLE [ServiceFulfillment] (
    [ID] nvarchar(450) NOT NULL,
    [Timestamp] datetime2 NOT NULL,
    [Accepted] bit NOT NULL,
    [Remarks] nvarchar(max) NULL,
    [ServiceID] nvarchar(450) NULL,
    [ServiceCaseID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [ServiceFulfillmentPreferencesID] nvarchar(450) NULL,
    CONSTRAINT [PK_ServiceFulfillment] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_ServiceFulfillment_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_ServiceFulfillment_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_ServiceFulfillment_Item_ServiceID] FOREIGN KEY ([ServiceID]) REFERENCES [Item] ([ID]),
    CONSTRAINT [FK_ServiceFulfillment_ServiceCase_ServiceCaseID] FOREIGN KEY ([ServiceCaseID]) REFERENCES [ServiceCase] ([ID]),
    CONSTRAINT [FK_ServiceFulfillment_ServiceFulfillmentPreferences_ServiceFulfillmentPreferencesID] FOREIGN KEY ([ServiceFulfillmentPreferencesID]) REFERENCES [ServiceFulfillmentPreferences] ([ID])
);
GO

CREATE TABLE [PartnerProgramRegistration] (
    [ID] nvarchar(450) NOT NULL,
    [FormData] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [RegistrationStatus] int NOT NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [PartnerProgramTierID] nvarchar(450) NULL,
    [PartnerProfileID] nvarchar(450) NULL,
    [PartnerProgramID] nvarchar(450) NULL,
    CONSTRAINT [PK_PartnerProgramRegistration] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_PartnerProgramRegistration_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_PartnerProgramRegistration_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_PartnerProgramRegistration_ContactProfile_PartnerProfileID] FOREIGN KEY ([PartnerProfileID]) REFERENCES [ContactProfile] ([ID]),
    CONSTRAINT [FK_PartnerProgramRegistration_PartnerProgram_PartnerProgramID] FOREIGN KEY ([PartnerProgramID]) REFERENCES [PartnerProgram] ([ID]),
    CONSTRAINT [FK_PartnerProgramRegistration_PartnerProgramTier_PartnerProgramTierID] FOREIGN KEY ([PartnerProgramTierID]) REFERENCES [PartnerProgramTier] ([ID])
);
GO

CREATE INDEX [IX_Workstation_BusinessProfileRecordID] ON [Workstation] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Workstation_LocationID] ON [Workstation] ([LocationID]);
GO

CREATE INDEX [IX_WorkOrderType_BusinessProfileRecordID] ON [WorkOrderType] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Task_PriorityID] ON [Task] ([PriorityID]);
GO

CREATE INDEX [IX_Task_ServiceCaseID] ON [Task] ([ServiceCaseID]);
GO

CREATE INDEX [IX_Task_ServiceID] ON [Task] ([ServiceID]);
GO

CREATE INDEX [IX_ServiceCase_CurrencyID] ON [ServiceCase] ([CurrencyID]);
GO

CREATE INDEX [IX_ServiceCase_PriceListID] ON [ServiceCase] ([PriceListID]);
GO

CREATE INDEX [IX_ServiceCase_ProductionPlanID] ON [ServiceCase] ([ProductionPlanID]);
GO

CREATE INDEX [IX_ServiceCase_TerritoryID] ON [ServiceCase] ([TerritoryID]);
GO

CREATE INDEX [IX_ServiceCase_WorkOrderTypeID] ON [ServiceCase] ([WorkOrderTypeID]);
GO

CREATE INDEX [IX_ServiceCase_WorkstationID] ON [ServiceCase] ([WorkstationID]);
GO

CREATE INDEX [IX_ProductionPlan_BusinessProfileRecordID] ON [ProductionPlan] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_Curriculum_JobApplicantProfileID] ON [Curriculum] ([JobApplicantProfileID]);
GO

CREATE INDEX [IX_Curriculum_SocialProfileID] ON [Curriculum] ([SocialProfileID]);
GO

CREATE INDEX [IX_Contact_BusinessSizeID] ON [Contact] ([BusinessSizeID]);
GO

CREATE INDEX [IX_BusinessSegment_CurrencyID] ON [BusinessSegment] ([CurrencyID]);
GO

CREATE INDEX [IX_Business_BusinessSizeID] ON [Business] ([BusinessSizeID]);
GO

CREATE INDEX [IX_PartnerProgram_BusinessID] ON [PartnerProgram] ([BusinessID]);
GO

CREATE INDEX [IX_PartnerProgram_BusinessProfileRecordID] ON [PartnerProgram] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_PartnerProgramRegistration_BusinessID] ON [PartnerProgramRegistration] ([BusinessID]);
GO

CREATE INDEX [IX_PartnerProgramRegistration_BusinessProfileRecordID] ON [PartnerProgramRegistration] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_PartnerProgramRegistration_PartnerProfileID] ON [PartnerProgramRegistration] ([PartnerProfileID]);
GO

CREATE INDEX [IX_PartnerProgramRegistration_PartnerProgramID] ON [PartnerProgramRegistration] ([PartnerProgramID]);
GO

CREATE INDEX [IX_PartnerProgramRegistration_PartnerProgramTierID] ON [PartnerProgramRegistration] ([PartnerProgramTierID]);
GO

CREATE INDEX [IX_PartnerProgramTier_BusinessID] ON [PartnerProgramTier] ([BusinessID]);
GO

CREATE INDEX [IX_PartnerProgramTier_BusinessProfileRecordID] ON [PartnerProgramTier] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_PartnerProgramTier_PartnerProgramID] ON [PartnerProgramTier] ([PartnerProgramID]);
GO

CREATE INDEX [IX_PartnerProgramTier_PriceListID] ON [PartnerProgramTier] ([PriceListID]);
GO

CREATE INDEX [IX_Priority_BusinessID] ON [Priority] ([BusinessID]);
GO

CREATE INDEX [IX_Priority_BusinessProfileRecordID] ON [Priority] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ServiceFulfillment_BusinessID] ON [ServiceFulfillment] ([BusinessID]);
GO

CREATE INDEX [IX_ServiceFulfillment_BusinessProfileRecordID] ON [ServiceFulfillment] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ServiceFulfillment_ServiceCaseID] ON [ServiceFulfillment] ([ServiceCaseID]);
GO

CREATE INDEX [IX_ServiceFulfillment_ServiceFulfillmentPreferencesID] ON [ServiceFulfillment] ([ServiceFulfillmentPreferencesID]);
GO

CREATE INDEX [IX_ServiceFulfillment_ServiceID] ON [ServiceFulfillment] ([ServiceID]);
GO

CREATE INDEX [IX_ServiceFulfillmentPreferences_BusinessID] ON [ServiceFulfillmentPreferences] ([BusinessID]);
GO

CREATE INDEX [IX_ServiceFulfillmentPreferences_BusinessProfileRecordID] ON [ServiceFulfillmentPreferences] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_ServiceFulfillmentPreferences_ServiceCaseID] ON [ServiceFulfillmentPreferences] ([ServiceCaseID]);
GO

ALTER TABLE [Business] ADD CONSTRAINT [FK_Business_BusinessSize_BusinessSizeID] FOREIGN KEY ([BusinessSizeID]) REFERENCES [BusinessSize] ([ID]);
GO

ALTER TABLE [BusinessSegment] ADD CONSTRAINT [FK_BusinessSegment_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]);
GO

ALTER TABLE [Contact] ADD CONSTRAINT [FK_Contact_BusinessSize_BusinessSizeID] FOREIGN KEY ([BusinessSizeID]) REFERENCES [BusinessSize] ([ID]);
GO

ALTER TABLE [ContactProfile] ADD CONSTRAINT [FK_ContactProfile_PartnerProgramTier_PartnerProgramTierID] FOREIGN KEY ([PartnerProgramTierID]) REFERENCES [PartnerProgramTier] ([ID]);
GO

ALTER TABLE [Curriculum] ADD CONSTRAINT [FK_Curriculum_ContactProfile_JobApplicantProfileID] FOREIGN KEY ([JobApplicantProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [Curriculum] ADD CONSTRAINT [FK_Curriculum_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID]);
GO

ALTER TABLE [ProductionPlan] ADD CONSTRAINT [FK_ProductionPlan_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [ServiceCase] ADD CONSTRAINT [FK_ServiceCase_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]);
GO

ALTER TABLE [ServiceCase] ADD CONSTRAINT [FK_ServiceCase_PriceList_PriceListID] FOREIGN KEY ([PriceListID]) REFERENCES [PriceList] ([ID]);
GO

ALTER TABLE [ServiceCase] ADD CONSTRAINT [FK_ServiceCase_ProductionPlan_ProductionPlanID] FOREIGN KEY ([ProductionPlanID]) REFERENCES [ProductionPlan] ([ID]);
GO

ALTER TABLE [ServiceCase] ADD CONSTRAINT [FK_ServiceCase_Territory_TerritoryID] FOREIGN KEY ([TerritoryID]) REFERENCES [Territory] ([ID]);
GO

ALTER TABLE [ServiceCase] ADD CONSTRAINT [FK_ServiceCase_WorkOrderType_WorkOrderTypeID] FOREIGN KEY ([WorkOrderTypeID]) REFERENCES [WorkOrderType] ([ID]);
GO

ALTER TABLE [ServiceCase] ADD CONSTRAINT [FK_ServiceCase_Workstation_WorkstationID] FOREIGN KEY ([WorkstationID]) REFERENCES [Workstation] ([ID]);
GO

ALTER TABLE [Task] ADD CONSTRAINT [FK_Task_Item_ServiceID] FOREIGN KEY ([ServiceID]) REFERENCES [Item] ([ID]);
GO

ALTER TABLE [Task] ADD CONSTRAINT [FK_Task_Priority_PriorityID] FOREIGN KEY ([PriorityID]) REFERENCES [Priority] ([ID]);
GO

ALTER TABLE [Task] ADD CONSTRAINT [FK_Task_ServiceCase_ServiceCaseID] FOREIGN KEY ([ServiceCaseID]) REFERENCES [ServiceCase] ([ID]);
GO

ALTER TABLE [WorkOrderType] ADD CONSTRAINT [FK_WorkOrderType_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [Workstation] ADD CONSTRAINT [FK_Workstation_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [Workstation] ADD CONSTRAINT [FK_Workstation_Location_LocationID] FOREIGN KEY ([LocationID]) REFERENCES [Location] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220530042707_V_1_6_5', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [BusinessSegment] DROP CONSTRAINT [FK_BusinessSegment_Currency_CurrencyID];
GO

DROP INDEX [IX_BusinessSegment_CurrencyID] ON [BusinessSegment];
GO

DECLARE @var9 sysname;
SELECT @var9 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[CurriculumRecord]') AND [c].[name] = N'EndDate');
IF @var9 IS NOT NULL EXEC(N'ALTER TABLE [CurriculumRecord] DROP CONSTRAINT [' + @var9 + '];');
ALTER TABLE [CurriculumRecord] DROP COLUMN [EndDate];
GO

DECLARE @var10 sysname;
SELECT @var10 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[CurriculumRecord]') AND [c].[name] = N'ExperienceFrom');
IF @var10 IS NOT NULL EXEC(N'ALTER TABLE [CurriculumRecord] DROP CONSTRAINT [' + @var10 + '];');
ALTER TABLE [CurriculumRecord] DROP COLUMN [ExperienceFrom];
GO

DECLARE @var11 sysname;
SELECT @var11 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[CurriculumRecord]') AND [c].[name] = N'ExperienceTo');
IF @var11 IS NOT NULL EXEC(N'ALTER TABLE [CurriculumRecord] DROP CONSTRAINT [' + @var11 + '];');
ALTER TABLE [CurriculumRecord] DROP COLUMN [ExperienceTo];
GO

DECLARE @var12 sysname;
SELECT @var12 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[CurriculumRecord]') AND [c].[name] = N'IsCurrentOccupation');
IF @var12 IS NOT NULL EXEC(N'ALTER TABLE [CurriculumRecord] DROP CONSTRAINT [' + @var12 + '];');
ALTER TABLE [CurriculumRecord] DROP COLUMN [IsCurrentOccupation];
GO

DECLARE @var13 sysname;
SELECT @var13 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[CurriculumRecord]') AND [c].[name] = N'StartDate');
IF @var13 IS NOT NULL EXEC(N'ALTER TABLE [CurriculumRecord] DROP CONSTRAINT [' + @var13 + '];');
ALTER TABLE [CurriculumRecord] DROP COLUMN [StartDate];
GO

DECLARE @var14 sysname;
SELECT @var14 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[BusinessSegment]') AND [c].[name] = N'CurrencyID');
IF @var14 IS NOT NULL EXEC(N'ALTER TABLE [BusinessSegment] DROP CONSTRAINT [' + @var14 + '];');
ALTER TABLE [BusinessSegment] DROP COLUMN [CurrencyID];
GO

EXEC sp_rename N'[ContactProfile].[SalaryExpectation]', N'MinSalaryExpectation', N'COLUMN';
GO

EXEC sp_rename N'[BusinessSegment].[MinRevenue]', N'MinEmployees', N'COLUMN';
GO

EXEC sp_rename N'[BusinessSegment].[MaxRevenue]', N'MaxEmployees', N'COLUMN';
GO

DECLARE @var15 sysname;
SELECT @var15 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Gig]') AND [c].[name] = N'Type');
IF @var15 IS NOT NULL EXEC(N'ALTER TABLE [Gig] DROP CONSTRAINT [' + @var15 + '];');
ALTER TABLE [Gig] ALTER COLUMN [Type] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [ExpectedDeliveryDate] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [Gig] ADD [ViewsCount] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [CurriculumRecord] ADD [Current] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [CurriculumRecord] ADD [DateFrom] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [CurriculumRecord] ADD [DateTo] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [ContactProfile] ADD [CareerLevel] int NULL;
GO

ALTER TABLE [ContactProfile] ADD [CurrentSalary] decimal(18,2) NULL;
GO

ALTER TABLE [ContactProfile] ADD [MaxSalaryExpectation] decimal(18,2) NULL;
GO

ALTER TABLE [Contact] ADD [BattleNetUsername] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Brothers] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [BrothersCount] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [Contact] ADD [Childrens] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [ChildrensCount] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [Contact] ADD [ContactEducationLevel] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [Contact] ADD [ContactEthnicGroup] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [Contact] ADD [CreditScore] float NOT NULL DEFAULT 0.0E0;
GO

ALTER TABLE [Contact] ADD [DirectEmployeesCount] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [Contact] ADD [DisplayInSocialSearch] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [Contact] ADD [FacebookPageURL] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [GithubUsername] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [IndirectEmployeesCount] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [Contact] ADD [InstagramURL] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [InstagramUsername] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [LastContactDate] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [Contact] ADD [Overdue] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [Contact] ADD [OverdueAmount] float NOT NULL DEFAULT 0.0E0;
GO

ALTER TABLE [Contact] ADD [OverdueLimit] float NOT NULL DEFAULT 0.0E0;
GO

ALTER TABLE [Contact] ADD [Parents] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [RedditURL] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [Spouse] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [StackExchangeURL] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [StackOverflowURL] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [TelegramPhone] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [TikTokUsername] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [TwitchURL] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [TwitterUsername] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [WhatsAppPhone] nvarchar(max) NULL;
GO

ALTER TABLE [Contact] ADD [XboxLiveUsername] nvarchar(max) NULL;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220531072147_V_1_6_5_1', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [JobOffer] ADD [Data] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data1] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data1Label] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data2] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data2Label] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data3] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data3Label] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data4] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data4Label] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data5] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data5Label] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data6] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data6Label] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data7] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data7Label] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data8] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data8Label] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data9] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Data9Label] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [DataLabel] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data1] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data1Label] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data2] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data2Label] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data3] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data3Label] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data4] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data4Label] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data5] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data5Label] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data6] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data6Label] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data7] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data7Label] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data8] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data8Label] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data9] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Data9Label] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [DataLabel] nvarchar(max) NULL;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220612013856_V_1_7_7_2', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [Signature] DROP CONSTRAINT [FK_Signature_SignedDocument_SigningDocumentID];
GO

ALTER TABLE [SignedDocument] DROP CONSTRAINT [FK_SignedDocument_SigningCertificate_SignatorCertificateID];
GO

EXEC sp_rename N'[SignedDocument].[SignatorCertificateID]', N'SigningCertificateID', N'COLUMN';
GO

EXEC sp_rename N'[SignedDocument].[IX_SignedDocument_SignatorCertificateID]', N'IX_SignedDocument_SigningCertificateID', N'INDEX';
GO

EXEC sp_rename N'[Signature].[SigningDocumentID]', N'SignedDocumentID', N'COLUMN';
GO

EXEC sp_rename N'[Signature].[IX_Signature_SigningDocumentID]', N'IX_Signature_SignedDocumentID', N'INDEX';
GO

ALTER TABLE [SigningCertificate] ADD [Signature] nvarchar(max) NULL;
GO

ALTER TABLE [JobTitle] ADD [CityID] nvarchar(450) NULL;
GO

ALTER TABLE [JobTitle] ADD [CountryID] nvarchar(450) NULL;
GO

ALTER TABLE [JobTitle] ADD [CountryStateID] nvarchar(450) NULL;
GO

ALTER TABLE [JobTitle] ADD [CurrencyID] nvarchar(450) NULL;
GO

ALTER TABLE [JobOffer] ADD [ExternalUrl] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [ImageUrl] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Location] nvarchar(max) NULL;
GO

ALTER TABLE [JobOffer] ADD [Remote] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [Gig] ADD [ExternalUrl] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Location] nvarchar(max) NULL;
GO

ALTER TABLE [Gig] ADD [Remote] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [GenericRecord] ADD [JobFieldID] nvarchar(450) NULL;
GO

ALTER TABLE [GenericRecord] ADD [JobOfferID] nvarchar(450) NULL;
GO

ALTER TABLE [FileUpload] ADD [MD5Hash] nvarchar(max) NULL;
GO

ALTER TABLE [FileUpload] ADD [Metadata] nvarchar(max) NULL;
GO

ALTER TABLE [FileUpload] ADD [SignedDocumentID] nvarchar(450) NULL;
GO

ALTER TABLE [ContactProfile] ADD [About] nvarchar(max) NULL;
GO

ALTER TABLE [ContactProfile] ADD [AvatarUrl] nvarchar(max) NULL;
GO

ALTER TABLE [ContactProfile] ADD [ExperienceInYears] int NULL;
GO

ALTER TABLE [BusinessSecurityLog] ADD [SignedDocumentID] nvarchar(450) NULL;
GO

CREATE INDEX [IX_JobTitle_CityID] ON [JobTitle] ([CityID]);
GO

CREATE INDEX [IX_JobTitle_CountryID] ON [JobTitle] ([CountryID]);
GO

CREATE INDEX [IX_JobTitle_CountryStateID] ON [JobTitle] ([CountryStateID]);
GO

CREATE INDEX [IX_JobTitle_CurrencyID] ON [JobTitle] ([CurrencyID]);
GO

CREATE INDEX [IX_GenericRecord_JobFieldID] ON [GenericRecord] ([JobFieldID]);
GO

CREATE INDEX [IX_GenericRecord_JobOfferID] ON [GenericRecord] ([JobOfferID]);
GO

CREATE INDEX [IX_FileUpload_SignedDocumentID] ON [FileUpload] ([SignedDocumentID]);
GO

CREATE INDEX [IX_BusinessSecurityLog_SignedDocumentID] ON [BusinessSecurityLog] ([SignedDocumentID]);
GO

ALTER TABLE [BusinessSecurityLog] ADD CONSTRAINT [FK_BusinessSecurityLog_SignedDocument_SignedDocumentID] FOREIGN KEY ([SignedDocumentID]) REFERENCES [SignedDocument] ([ID]);
GO

ALTER TABLE [FileUpload] ADD CONSTRAINT [FK_FileUpload_SignedDocument_SignedDocumentID] FOREIGN KEY ([SignedDocumentID]) REFERENCES [SignedDocument] ([ID]);
GO

ALTER TABLE [GenericRecord] ADD CONSTRAINT [FK_GenericRecord_JobField_JobFieldID] FOREIGN KEY ([JobFieldID]) REFERENCES [JobField] ([ID]);
GO

ALTER TABLE [GenericRecord] ADD CONSTRAINT [FK_GenericRecord_JobOffer_JobOfferID] FOREIGN KEY ([JobOfferID]) REFERENCES [JobOffer] ([ID]);
GO

ALTER TABLE [JobTitle] ADD CONSTRAINT [FK_JobTitle_City_CityID] FOREIGN KEY ([CityID]) REFERENCES [City] ([ID]);
GO

ALTER TABLE [JobTitle] ADD CONSTRAINT [FK_JobTitle_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Country] ([ID]);
GO

ALTER TABLE [JobTitle] ADD CONSTRAINT [FK_JobTitle_CountryState_CountryStateID] FOREIGN KEY ([CountryStateID]) REFERENCES [CountryState] ([ID]);
GO

ALTER TABLE [JobTitle] ADD CONSTRAINT [FK_JobTitle_Currency_CurrencyID] FOREIGN KEY ([CurrencyID]) REFERENCES [Currency] ([ID]);
GO

ALTER TABLE [Signature] ADD CONSTRAINT [FK_Signature_SignedDocument_SignedDocumentID] FOREIGN KEY ([SignedDocumentID]) REFERENCES [SignedDocument] ([ID]);
GO

ALTER TABLE [SignedDocument] ADD CONSTRAINT [FK_SignedDocument_SigningCertificate_SigningCertificateID] FOREIGN KEY ([SigningCertificateID]) REFERENCES [SigningCertificate] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220613055849_V_1_7_7_3', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [ContactProfile] ADD [Hireable] bit NULL;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220620194055_V_1_7_8', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [WebContent] ADD [SocialProfileID] nvarchar(450) NULL;
GO

ALTER TABLE [TaxonomyRecord] ADD [BlogPostTagID] nvarchar(450) NULL;
GO

ALTER TABLE [IPLookup] ADD [LastAccess] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [IPLookup] ADD [LastReset] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [IPLookup] ADD [RecentAccessCount] bigint NOT NULL DEFAULT CAST(0 AS bigint);
GO

ALTER TABLE [IPLookup] ADD [TotalAccessCount] bigint NOT NULL DEFAULT CAST(0 AS bigint);
GO

CREATE INDEX [IX_WebContent_SocialProfileID] ON [WebContent] ([SocialProfileID]);
GO

CREATE INDEX [IX_TaxonomyRecord_BlogPostTagID] ON [TaxonomyRecord] ([BlogPostTagID]);
GO

ALTER TABLE [TaxonomyRecord] ADD CONSTRAINT [FK_TaxonomyRecord_Taxonomy_BlogPostTagID] FOREIGN KEY ([BlogPostTagID]) REFERENCES [Taxonomy] ([ID]);
GO

ALTER TABLE [WebContent] ADD CONSTRAINT [FK_WebContent_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220624140610_V_1_7_9', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

DECLARE @var16 sysname;
SELECT @var16 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AccountHolderSettings]') AND [c].[name] = N'Analytics');
IF @var16 IS NOT NULL EXEC(N'ALTER TABLE [AccountHolderSettings] DROP CONSTRAINT [' + @var16 + '];');
ALTER TABLE [AccountHolderSettings] DROP COLUMN [Analytics];
GO

DECLARE @var17 sysname;
SELECT @var17 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AccountHolderSettings]') AND [c].[name] = N'Cookies');
IF @var17 IS NOT NULL EXEC(N'ALTER TABLE [AccountHolderSettings] DROP CONSTRAINT [' + @var17 + '];');
ALTER TABLE [AccountHolderSettings] DROP COLUMN [Cookies];
GO

DECLARE @var18 sysname;
SELECT @var18 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AccountHolderSettings]') AND [c].[name] = N'DarkTheme');
IF @var18 IS NOT NULL EXEC(N'ALTER TABLE [AccountHolderSettings] DROP CONSTRAINT [' + @var18 + '];');
ALTER TABLE [AccountHolderSettings] DROP COLUMN [DarkTheme];
GO

EXEC sp_rename N'[BusinessTenantSettings].[ForexRates]', N'Data', N'COLUMN';
GO

EXEC sp_rename N'[BusinessTenantSettings].[ExchangeRatesUpdatedTimestamp]', N'Timestamp', N'COLUMN';
GO

EXEC sp_rename N'[AccountHolderSettings].[ForexRates]', N'Data', N'COLUMN';
GO

EXEC sp_rename N'[AccountHolderSettings].[ExchangeRatesUpdatedTimestamp]', N'Timestamp', N'COLUMN';
GO

ALTER TABLE [BusinessProfileRecord] ADD [IsFavorite] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [AspNetUsers] ADD [CommunicationsEmail] nvarchar(max) NULL;
GO

ALTER TABLE [AspNetUsers] ADD [CultureIdentifier] nvarchar(max) NULL;
GO

ALTER TABLE [AspNetUsers] ADD [CurrencyFormat] nvarchar(max) NULL;
GO

ALTER TABLE [AspNetUsers] ADD [EnableCommunications] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [AspNetUsers] ADD [EnableHighContrast] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [AspNetUsers] ADD [LastActivity] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [AspNetUsers] ADD [MenuBehavior] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [AspNetUsers] ADD [StartupDirectory] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [AspNetUsers] ADD [ThemeMode] int NOT NULL DEFAULT 0;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220709201431_V_1_8_3', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [BusinessSecurityLog] DROP CONSTRAINT [FK_BusinessSecurityLog_Business_BusinessID];
GO

ALTER TABLE [BusinessSecurityLog] DROP CONSTRAINT [FK_BusinessSecurityLog_BusinessProfileRecord_BusinessProfileRecordID];
GO

ALTER TABLE [BusinessSecurityLog] DROP CONSTRAINT [FK_BusinessSecurityLog_ContactProfile_SigningProfileID];
GO

ALTER TABLE [BusinessSecurityLog] DROP CONSTRAINT [FK_BusinessSecurityLog_SignedDocument_SignedDocumentID];
GO

ALTER TABLE [BusinessSecurityLog] DROP CONSTRAINT [FK_BusinessSecurityLog_SigningCertificate_SigningCertificateID];
GO

ALTER TABLE [BusinessSecurityLog] DROP CONSTRAINT [PK_BusinessSecurityLog];
GO

EXEC sp_rename N'[BusinessSecurityLog]', N'Log';
GO

EXEC sp_rename N'[Log].[Language]', N'SecurityEvent', N'COLUMN';
GO

EXEC sp_rename N'[Log].[IX_BusinessSecurityLog_SigningProfileID]', N'IX_Log_SigningProfileID', N'INDEX';
GO

EXEC sp_rename N'[Log].[IX_BusinessSecurityLog_SigningCertificateID]', N'IX_Log_SigningCertificateID', N'INDEX';
GO

EXEC sp_rename N'[Log].[IX_BusinessSecurityLog_SignedDocumentID]', N'IX_Log_SignedDocumentID', N'INDEX';
GO

EXEC sp_rename N'[Log].[IX_BusinessSecurityLog_BusinessProfileRecordID]', N'IX_Log_BusinessProfileRecordID', N'INDEX';
GO

EXEC sp_rename N'[Log].[IX_BusinessSecurityLog_BusinessID]', N'IX_Log_BusinessID', N'INDEX';
GO

ALTER TABLE [Project] ADD [AccountHolderID] nvarchar(450) NULL;
GO

ALTER TABLE [Project] ADD [ContactID] nvarchar(450) NULL;
GO

ALTER TABLE [Invoice] ADD [EntitlementID] nvarchar(450) NULL;
GO

ALTER TABLE [Entitlement] ADD [EnableProRateBilling] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [Entitlement] ADD [EnableUsageThreshold] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [Entitlement] ADD [NextInvoiceDateTime] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [Entitlement] ADD [UsageThreshold] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [Log] ADD [AccountHolderID] nvarchar(450) NULL;
GO

ALTER TABLE [Log] ADD [ContactID] nvarchar(450) NULL;
GO

ALTER TABLE [Log] ADD [CountryLanguageID] nvarchar(450) NULL;
GO

ALTER TABLE [Log] ADD [Data] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data1] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data1Label] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data2] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data2Label] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data3] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data3Label] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data4] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data4Label] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data5] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data5Label] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data6] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data6Label] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data7] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data7Label] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data8] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data8Label] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data9] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [Data9Label] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [DataLabel] nvarchar(max) NULL;
GO

ALTER TABLE [Log] ADD [EntitlementID] nvarchar(450) NULL;
GO

ALTER TABLE [Log] ADD [FileUploadID] nvarchar(450) NULL;
GO

ALTER TABLE [Log] ADD [LogType] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [Log] ADD [RequiresAttention] bit NULL;
GO

ALTER TABLE [Log] ADD CONSTRAINT [PK_Log] PRIMARY KEY ([ID]);
GO

CREATE TABLE [MementoRecord] (
    [ID] nvarchar(450) NOT NULL,
    [Description] nvarchar(max) NULL,
    [Timestamp] datetime2 NOT NULL,
    [OldSnapshot] nvarchar(max) NULL,
    [NewSnapshot] nvarchar(max) NULL,
    [AccountHolderID] nvarchar(450) NULL,
    [ContactID] nvarchar(450) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [Discriminator] nvarchar(max) NOT NULL,
    [WebContentID] nvarchar(450) NULL,
    CONSTRAINT [PK_MementoRecord] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_MementoRecord_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]),
    CONSTRAINT [FK_MementoRecord_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_MementoRecord_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_MementoRecord_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]),
    CONSTRAINT [FK_MementoRecord_WebContent_WebContentID] FOREIGN KEY ([WebContentID]) REFERENCES [WebContent] ([ID])
);
GO

CREATE INDEX [IX_Project_AccountHolderID] ON [Project] ([AccountHolderID]);
GO

CREATE INDEX [IX_Project_ContactID] ON [Project] ([ContactID]);
GO

CREATE INDEX [IX_Invoice_EntitlementID] ON [Invoice] ([EntitlementID]);
GO

CREATE INDEX [IX_Log_AccountHolderID] ON [Log] ([AccountHolderID]);
GO

CREATE INDEX [IX_Log_ContactID] ON [Log] ([ContactID]);
GO

CREATE INDEX [IX_Log_CountryLanguageID] ON [Log] ([CountryLanguageID]);
GO

CREATE INDEX [IX_Log_EntitlementID] ON [Log] ([EntitlementID]);
GO

CREATE INDEX [IX_Log_FileUploadID] ON [Log] ([FileUploadID]);
GO

CREATE INDEX [IX_MementoRecord_AccountHolderID] ON [MementoRecord] ([AccountHolderID]);
GO

CREATE INDEX [IX_MementoRecord_BusinessID] ON [MementoRecord] ([BusinessID]);
GO

CREATE INDEX [IX_MementoRecord_BusinessProfileRecordID] ON [MementoRecord] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_MementoRecord_ContactID] ON [MementoRecord] ([ContactID]);
GO

CREATE INDEX [IX_MementoRecord_WebContentID] ON [MementoRecord] ([WebContentID]);
GO

ALTER TABLE [Invoice] ADD CONSTRAINT [FK_Invoice_Entitlement_EntitlementID] FOREIGN KEY ([EntitlementID]) REFERENCES [Entitlement] ([ID]);
GO

ALTER TABLE [Log] ADD CONSTRAINT [FK_Log_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]);
GO

ALTER TABLE [Log] ADD CONSTRAINT [FK_Log_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [Log] ADD CONSTRAINT [FK_Log_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [Log] ADD CONSTRAINT [FK_Log_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]);
GO

ALTER TABLE [Log] ADD CONSTRAINT [FK_Log_ContactProfile_SigningProfileID] FOREIGN KEY ([SigningProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

ALTER TABLE [Log] ADD CONSTRAINT [FK_Log_CountryLanguage_CountryLanguageID] FOREIGN KEY ([CountryLanguageID]) REFERENCES [CountryLanguage] ([Iso639_1]);
GO

ALTER TABLE [Log] ADD CONSTRAINT [FK_Log_Entitlement_EntitlementID] FOREIGN KEY ([EntitlementID]) REFERENCES [Entitlement] ([ID]);
GO

ALTER TABLE [Log] ADD CONSTRAINT [FK_Log_FileUpload_FileUploadID] FOREIGN KEY ([FileUploadID]) REFERENCES [FileUpload] ([ID]);
GO

ALTER TABLE [Log] ADD CONSTRAINT [FK_Log_SignedDocument_SignedDocumentID] FOREIGN KEY ([SignedDocumentID]) REFERENCES [SignedDocument] ([ID]);
GO

ALTER TABLE [Log] ADD CONSTRAINT [FK_Log_SigningCertificate_SigningCertificateID] FOREIGN KEY ([SigningCertificateID]) REFERENCES [SigningCertificate] ([ID]);
GO

ALTER TABLE [Project] ADD CONSTRAINT [FK_Project_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]);
GO

ALTER TABLE [Project] ADD CONSTRAINT [FK_Project_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220711115821_V_1_8_4', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

EXEC sp_rename N'[ContactProfile].[Hireable]', N'AvailableForHire', N'COLUMN';
GO

ALTER TABLE [JobOfferApplication] ADD [PartnerProfileID] nvarchar(450) NULL;
GO

CREATE INDEX [IX_JobOfferApplication_PartnerProfileID] ON [JobOfferApplication] ([PartnerProfileID]);
GO

ALTER TABLE [JobOfferApplication] ADD CONSTRAINT [FK_JobOfferApplication_ContactProfile_PartnerProfileID] FOREIGN KEY ([PartnerProfileID]) REFERENCES [ContactProfile] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220718072302_V_1_9_0', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

DECLARE @var19 sysname;
SELECT @var19 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[BusinessProfileInvitation]') AND [c].[name] = N'Email');
IF @var19 IS NOT NULL EXEC(N'ALTER TABLE [BusinessProfileInvitation] DROP CONSTRAINT [' + @var19 + '];');
ALTER TABLE [BusinessProfileInvitation] ALTER COLUMN [Email] nvarchar(max) NOT NULL;
ALTER TABLE [BusinessProfileInvitation] ADD DEFAULT N'' FOR [Email];
GO

ALTER TABLE [BusinessProfileInvitation] ADD [AccountHolderID] nvarchar(450) NULL;
GO

ALTER TABLE [BusinessProfileInvitation] ADD [RelatedBusinessProfileRecordID] nvarchar(450) NULL;
GO

ALTER TABLE [BusinessProfileInvitation] ADD [Revoked] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [BusinessProfileInvitation] ADD [RevokedTimestamp] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

ALTER TABLE [BusinessProfileInvitation] ADD [Timestamp] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

CREATE INDEX [IX_BusinessProfileInvitation_AccountHolderID] ON [BusinessProfileInvitation] ([AccountHolderID]);
GO

CREATE INDEX [IX_BusinessProfileInvitation_RelatedBusinessProfileRecordID] ON [BusinessProfileInvitation] ([RelatedBusinessProfileRecordID]);
GO

ALTER TABLE [BusinessProfileInvitation] ADD CONSTRAINT [FK_BusinessProfileInvitation_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]);
GO

ALTER TABLE [BusinessProfileInvitation] ADD CONSTRAINT [FK_BusinessProfileInvitation_BusinessProfileRecord_RelatedBusinessProfileRecordID] FOREIGN KEY ([RelatedBusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220719215226_V_1_9_1', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [Log] ADD [SocialProfileID] nvarchar(450) NULL;
GO

ALTER TABLE [ActivityRecord] ADD [SocialProfileID] nvarchar(450) NULL;
GO

CREATE INDEX [IX_Log_SocialProfileID] ON [Log] ([SocialProfileID]);
GO

CREATE INDEX [IX_ActivityRecord_SocialProfileID] ON [ActivityRecord] ([SocialProfileID]);
GO

ALTER TABLE [ActivityRecord] ADD CONSTRAINT [FK_ActivityRecord_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID]);
GO

ALTER TABLE [Log] ADD CONSTRAINT [FK_Log_SocialProfile_SocialProfileID] FOREIGN KEY ([SocialProfileID]) REFERENCES [SocialProfile] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220725224315_V_1_9_7', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [AccessKeyPair] DROP CONSTRAINT [FK_AccessKeyPair_AspNetUsers_AccountHolderID];
GO

ALTER TABLE [AccessKeyPair] DROP CONSTRAINT [FK_AccessKeyPair_Business_BusinessID];
GO

ALTER TABLE [AccessKeyPair] DROP CONSTRAINT [FK_AccessKeyPair_BusinessProfileRecord_BusinessProfileRecordID];
GO

ALTER TABLE [AccessKeyPair] DROP CONSTRAINT [FK_AccessKeyPair_Contact_ContactID];
GO

ALTER TABLE [BusinessApplicationSecret] DROP CONSTRAINT [FK_BusinessApplicationSecret_AccessKeyPair_AccessKeyPairID];
GO

ALTER TABLE [BusinessApplicationSecret] DROP CONSTRAINT [FK_BusinessApplicationSecret_AccessKeyPair_JwtSigningAccessKeyPairID];
GO

ALTER TABLE [LicenseFeature] DROP CONSTRAINT [FK_LicenseFeature_AccessKeyPair_AccessKeyPairID];
GO

DROP INDEX [IX_LicenseFeature_AccessKeyPairID] ON [LicenseFeature];
GO

ALTER TABLE [AccessKeyPair] DROP CONSTRAINT [PK_AccessKeyPair];
GO

DECLARE @var20 sysname;
SELECT @var20 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[LicenseFeature]') AND [c].[name] = N'AccessKeyPairID');
IF @var20 IS NOT NULL EXEC(N'ALTER TABLE [LicenseFeature] DROP CONSTRAINT [' + @var20 + '];');
ALTER TABLE [LicenseFeature] DROP COLUMN [AccessKeyPairID];
GO

DECLARE @var21 sysname;
SELECT @var21 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Entitlement]') AND [c].[name] = N'PassPhrase');
IF @var21 IS NOT NULL EXEC(N'ALTER TABLE [Entitlement] DROP CONSTRAINT [' + @var21 + '];');
ALTER TABLE [Entitlement] DROP COLUMN [PassPhrase];
GO

EXEC sp_rename N'[AccessKeyPair]', N'SecurityCertificate';
GO

EXEC sp_rename N'[Item].[MaxLicenseUtilizations]', N'TrialSubscriptionRelativeExpirationInDays', N'COLUMN';
GO

EXEC sp_rename N'[Entitlement].[Class]', N'SubscriptionClass', N'COLUMN';
GO

EXEC sp_rename N'[SecurityCertificate].[IP]', N'ID', N'COLUMN';
GO

EXEC sp_rename N'[SecurityCertificate].[IX_AccessKeyPair_ContactID]', N'IX_SecurityCertificate_ContactID', N'INDEX';
GO

EXEC sp_rename N'[SecurityCertificate].[IX_AccessKeyPair_BusinessProfileRecordID]', N'IX_SecurityCertificate_BusinessProfileRecordID', N'INDEX';
GO

EXEC sp_rename N'[SecurityCertificate].[IX_AccessKeyPair_BusinessID]', N'IX_SecurityCertificate_BusinessID', N'INDEX';
GO

EXEC sp_rename N'[SecurityCertificate].[IX_AccessKeyPair_AccountHolderID]', N'IX_SecurityCertificate_AccountHolderID', N'INDEX';
GO

ALTER TABLE [LicenseFeature] ADD [Key] nvarchar(max) NULL;
GO

ALTER TABLE [LicenseFeature] ADD [Value] nvarchar(max) NULL;
GO

ALTER TABLE [Item] ADD [AllowSubscriptionTrials] bit NULL;
GO

ALTER TABLE [Item] ADD [IsPerpetualSubscription] bit NULL;
GO

ALTER TABLE [Item] ADD [LicensingCertificateID] nvarchar(450) NULL;
GO

ALTER TABLE [Item] ADD [MaxLicenseUsages] int NULL;
GO

ALTER TABLE [Item] ADD [StandardSubscriptionRelativeExpirationInDays] int NULL;
GO

ALTER TABLE [Item] ADD [SubscriptionsCertificateID] nvarchar(450) NULL;
GO

ALTER TABLE [Entitlement] ADD [LicenseClass] int NULL;
GO

ALTER TABLE [Entitlement] ADD [SecurityCertificateID] nvarchar(450) NULL;
GO

ALTER TABLE [SecurityCertificate] ADD [ExpirePeriod] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [SecurityCertificate] ADD [Expired] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [SecurityCertificate] ADD [PassPhrase] nvarchar(max) NULL;
GO

ALTER TABLE [SecurityCertificate] ADD [Type] nvarchar(max) NOT NULL DEFAULT N'';
GO

ALTER TABLE [SecurityCertificate] ADD CONSTRAINT [PK_SecurityCertificate] PRIMARY KEY ([ID]);
GO

CREATE TABLE [SubscriptionFeature] (
    [ID] nvarchar(450) NOT NULL,
    [Code] nvarchar(max) NULL,
    [Key] nvarchar(max) NULL,
    [Value] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    [BusinessID] nvarchar(450) NULL,
    [BusinessProfileRecordID] nvarchar(450) NULL,
    [SubscriptionPlanID] nvarchar(450) NULL,
    CONSTRAINT [PK_SubscriptionFeature] PRIMARY KEY ([ID]),
    CONSTRAINT [FK_SubscriptionFeature_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]),
    CONSTRAINT [FK_SubscriptionFeature_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]),
    CONSTRAINT [FK_SubscriptionFeature_Item_SubscriptionPlanID] FOREIGN KEY ([SubscriptionPlanID]) REFERENCES [Item] ([ID])
);
GO

CREATE INDEX [IX_Item_LicensingCertificateID] ON [Item] ([LicensingCertificateID]);
GO

CREATE INDEX [IX_Item_SubscriptionsCertificateID] ON [Item] ([SubscriptionsCertificateID]);
GO

CREATE INDEX [IX_Entitlement_SecurityCertificateID] ON [Entitlement] ([SecurityCertificateID]);
GO

CREATE INDEX [IX_SubscriptionFeature_BusinessID] ON [SubscriptionFeature] ([BusinessID]);
GO

CREATE INDEX [IX_SubscriptionFeature_BusinessProfileRecordID] ON [SubscriptionFeature] ([BusinessProfileRecordID]);
GO

CREATE INDEX [IX_SubscriptionFeature_SubscriptionPlanID] ON [SubscriptionFeature] ([SubscriptionPlanID]);
GO

ALTER TABLE [BusinessApplicationSecret] ADD CONSTRAINT [FK_BusinessApplicationSecret_SecurityCertificate_AccessKeyPairID] FOREIGN KEY ([AccessKeyPairID]) REFERENCES [SecurityCertificate] ([ID]);
GO

ALTER TABLE [BusinessApplicationSecret] ADD CONSTRAINT [FK_BusinessApplicationSecret_SecurityCertificate_JwtSigningAccessKeyPairID] FOREIGN KEY ([JwtSigningAccessKeyPairID]) REFERENCES [SecurityCertificate] ([ID]);
GO

ALTER TABLE [Entitlement] ADD CONSTRAINT [FK_Entitlement_SecurityCertificate_SecurityCertificateID] FOREIGN KEY ([SecurityCertificateID]) REFERENCES [SecurityCertificate] ([ID]);
GO

ALTER TABLE [Item] ADD CONSTRAINT [FK_Item_SecurityCertificate_LicensingCertificateID] FOREIGN KEY ([LicensingCertificateID]) REFERENCES [SecurityCertificate] ([ID]);
GO

ALTER TABLE [Item] ADD CONSTRAINT [FK_Item_SecurityCertificate_SubscriptionsCertificateID] FOREIGN KEY ([SubscriptionsCertificateID]) REFERENCES [SecurityCertificate] ([ID]);
GO

ALTER TABLE [SecurityCertificate] ADD CONSTRAINT [FK_SecurityCertificate_AspNetUsers_AccountHolderID] FOREIGN KEY ([AccountHolderID]) REFERENCES [AspNetUsers] ([Id]);
GO

ALTER TABLE [SecurityCertificate] ADD CONSTRAINT [FK_SecurityCertificate_Business_BusinessID] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);
GO

ALTER TABLE [SecurityCertificate] ADD CONSTRAINT [FK_SecurityCertificate_BusinessProfileRecord_BusinessProfileRecordID] FOREIGN KEY ([BusinessProfileRecordID]) REFERENCES [BusinessProfileRecord] ([ID]);
GO

ALTER TABLE [SecurityCertificate] ADD CONSTRAINT [FK_SecurityCertificate_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Contact] ([ID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220726082519_V_1_9_8', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [SecurityCertificate] ADD [EncryptedPrivateKey] bit NOT NULL DEFAULT CAST(0 AS bit);
GO

ALTER TABLE [SecurityCertificate] ADD [PrivateRsaParameters] nvarchar(max) NULL;
GO

ALTER TABLE [SecurityCertificate] ADD [PublicRsaParameters] nvarchar(max) NULL;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220726115151_V_1_9_9', N'6.0.7');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [Timezone] ADD [Type] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [RegionalBlock] ADD [Type] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [ForeignExchangeSet] ADD [Type] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [Currency] ADD [Type] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [CountryState] ADD [Type] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [CountryRegionalBlockRecord] ADD [Type] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [CountryLanguageRecord] ADD [Type] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [CountryLanguage] ADD [Type] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [CountryCallingCode] ADD [Type] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [CountryBorder] ADD [Type] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [CountryAltSpelling] ADD [Type] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [Country] ADD [Type] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [City] ADD [Type] int NOT NULL DEFAULT 0;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220805161642_V_1_9_9_4', N'6.0.7');
GO

COMMIT;
GO

