.class public Lcom/android/contacts/model/account/GoogleAccountType;
.super Lcom/android/contacts/model/account/BaseAccountType;
.source "GoogleAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final PLUS_EXTENSION_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gms"

.field private static final TAG:Ljava/lang/String; = "GoogleAccountType"

.field private static final mExtensionPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.android.gms"

    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/account/GoogleAccountType;->mExtensionPackages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType;-><init>()V

    const-string v0, "com.google"

    .line 51
    iput-object v0, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/contacts/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 56
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/GoogleAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/GoogleAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/contacts/model/account/GoogleAccountType;->addDataKindRelation(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/contacts/model/account/GoogleAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindCustomField(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p0, Lcom/android/contacts/model/account/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "GoogleAccountType"

    const-string v1, "Failed to build google account type"

    .line 76
    invoke-static {p1, v0, v1, p2}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 162
    new-instance p1, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v0, "vnd.android.cursor.item/contact_event"

    const v1, 0x7f100117

    const/16 v2, 0x78

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    .line 164
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$EventActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/account/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 165
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    const-string v0, "data2"

    .line 167
    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 169
    sget-object v5, Lcom/android/contacts/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 170
    sget-object v5, Lcom/android/contacts/util/CommonDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    const/4 v5, 0x3

    .line 171
    invoke-static {v5, v3}, Lcom/android/contacts/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/contacts/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v7, 0x2

    invoke-static {v7, v6}, Lcom/android/contacts/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v6, v6}, Lcom/android/contacts/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    const-string v7, "data3"

    .line 175
    invoke-virtual {v6, v7}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    .line 174
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iput-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 178
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 181
    new-instance v4, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v4, v2, v1, v3}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private addDataKindRelation(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 127
    new-instance p1, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v0, "vnd.android.cursor.item/relation"

    const v1, 0x7f1001e9

    const/16 v2, 0x3e7

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    .line 129
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$RelationActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/account/BaseAccountType$RelationActionInflater;-><init>()V

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 130
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    const-string v0, "data2"

    .line 132
    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 134
    invoke-static {v3}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v5, 0x6

    invoke-static {v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v5, 0x7

    invoke-static {v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v5, 0x8

    invoke-static {v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v5, 0x9

    invoke-static {v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v5, 0xc

    invoke-static {v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v5, 0xd

    invoke-static {v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v5, 0xe

    invoke-static {v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v4, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/contacts/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    const-string v6, "data3"

    .line 149
    invoke-virtual {v3, v6}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    .line 148
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    iput-object v3, p1, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 152
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 155
    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const/16 v4, 0x2061

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 110
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    const-string v0, "data2"

    .line 112
    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x1

    .line 114
    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 121
    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f10010d

    const/16 v4, 0x21

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    const-string v0, "data2"

    .line 89
    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    .line 91
    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x7

    invoke-static {v3}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    const-string v3, "data3"

    .line 100
    invoke-virtual {v2, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 103
    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f1001ce

    invoke-direct {v2, v3, v4, v1}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public areContactsWritable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getExtensionPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/android/contacts/model/account/GoogleAccountType;->mExtensionPackages:Ljava/util/List;

    return-object v0
.end method

.method public getViewContactNotifyServiceClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.syncadapters.contacts.SyncHighResPhotoIntentService"

    return-object v0
.end method

.method public getViewContactNotifyServicePackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.syncadapters.contacts"

    return-object v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
