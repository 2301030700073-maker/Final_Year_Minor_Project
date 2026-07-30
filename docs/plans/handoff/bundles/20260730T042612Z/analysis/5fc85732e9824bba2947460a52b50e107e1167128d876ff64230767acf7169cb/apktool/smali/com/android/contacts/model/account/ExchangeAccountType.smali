.class public Lcom/android/contacts/model/account/ExchangeAccountType;
.super Lcom/android/contacts/model/account/BaseAccountType;
.source "ExchangeAccountType.java"


# static fields
.field private static final ACCOUNT_TYPE_AOSP:Ljava/lang/String; = "com.android.exchange"

.field private static final ACCOUNT_TYPE_GOOGLE_1:Ljava/lang/String; = "com.google.android.exchange"

.field private static final ACCOUNT_TYPE_GOOGLE_2:Ljava/lang/String; = "com.google.android.gm.exchange"

.field private static final TAG:Ljava/lang/String; = "ExchangeAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType;-><init>()V

    .line 50
    iput-object p3, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    const/4 p3, 0x0

    .line 51
    iput-object p3, p0, Lcom/android/contacts/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 55
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExchangeAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExchangeAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExchangeAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExchangeAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExchangeAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExchangeAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExchangeAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExchangeAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExchangeAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExchangeAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExchangeAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/ExchangeAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    const/4 p2, 0x1

    .line 70
    iput-boolean p2, p0, Lcom/android/contacts/model/account/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "ExchangeAccountType"

    const-string v0, "Failed to build exchange account type"

    .line 73
    invoke-static {p1, p3, v0, p2}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static isExchangeType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.exchange"

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.exchange"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.gm.exchange"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 174
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    const/4 v0, 0x3

    .line 176
    iput v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 178
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 179
    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f10010d

    const/16 v4, 0x21

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 278
    new-instance p1, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v0, "vnd.android.cursor.item/contact_event"

    const v1, 0x7f100117

    const/16 v2, 0x78

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    .line 280
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$EventActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/account/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 281
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 283
    iput v3, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    const-string v0, "data2"

    .line 285
    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 286
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 287
    invoke-static {v4, v5}, Lcom/android/contacts/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Lcom/android/contacts/util/CommonDateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 291
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 292
    new-instance v4, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v4, v2, v1, v3}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 226
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    const/4 v0, 0x3

    .line 229
    iput v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 231
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "data2"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 235
    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f100159

    const/16 v4, 0x21

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 131
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    const/4 v0, 0x1

    .line 133
    iput v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 135
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 136
    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f1001bf

    const/16 v4, 0x2061

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 269
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    .line 271
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 272
    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f10016b

    const v4, 0x24001

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 242
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    const/4 v0, 0x1

    .line 244
    iput v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 246
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 247
    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f100134

    const/16 v4, 0x2001

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f100135

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

    .line 144
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    const-string v0, "data2"

    .line 146
    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    .line 148
    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v3}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    .line 152
    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    .line 154
    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    .line 156
    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xe

    .line 162
    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    .line 164
    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 167
    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f1001ce

    invoke-direct {v1, v3, v4, v2}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 113
    new-instance p1, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v0, "#phoneticName"

    const v1, 0x7f1001b5

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    .line 115
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const v1, 0x7f1001b1

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 116
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 118
    iput v3, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 120
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 121
    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f1001b6

    const/16 v4, 0xc1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f1001b7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 257
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    const/4 v0, 0x1

    .line 259
    iput v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 261
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 262
    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data15"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 84
    new-instance p1, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v0, "vnd.android.cursor.item/name"

    const v1, 0x7f1001b1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    .line 86
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 87
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 89
    iput v3, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 91
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 92
    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data4"

    const v4, 0x7f1001b9

    const/16 v5, 0x2061

    invoke-direct {v1, v2, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 93
    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f1001b2

    invoke-direct {v1, v2, v3, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f1001b4

    invoke-direct {v1, v2, v3, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f1001b3

    invoke-direct {v1, v2, v3, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f1001ba

    invoke-direct {v1, v2, v3, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f1001b6

    const/16 v4, 0xc1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f1001b7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 186
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    .line 188
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 189
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "data2"

    .line 190
    iput-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    .line 192
    invoke-static {v2}, Lcom/android/contacts/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v3}, Lcom/android/contacts/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/contacts/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const v2, 0x7f1001d7

    const-string v4, "data10"

    const v5, 0x7f1001d8

    const-string v6, "data9"

    const v7, 0x7f1001d9

    const-string v8, "data8"

    const v9, 0x7f1001d6

    const-string v10, "data7"

    const v11, 0x7f1001da

    const-string v12, "data4"

    const v13, 0x22071

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v0, v4, v2, v13}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 199
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v0

    .line 198
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v1, v6, v5, v13}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v1, v8, v7, v13}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v1, v10, v9, v13}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v1, v12, v11, v13}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_0
    new-instance v0, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v0, v12, v11, v13}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v1, v10, v9, v13}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v1, v8, v7, v13}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v1, v6, v5, v13}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-direct {v1, v4, v2, v13}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 218
    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    .line 217
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p1
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 299
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    const/4 v0, 0x1

    .line 301
    iput v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 303
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 304
    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f10024a

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public areContactsWritable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
