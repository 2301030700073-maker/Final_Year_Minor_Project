.class public final Lcom/android/contacts/list/ContactListFilter;
.super Ljava/lang/Object;
.source "ContactListFilter.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final accountType:Ljava/lang/String;

.field public final dataSet:Ljava/lang/String;

.field public final filterType:I

.field public final icon:Landroid/graphics/drawable/Drawable;

.field private mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 283
    new-instance v0, Lcom/android/contacts/list/ContactListFilter$1;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactListFilter$1;-><init>()V

    sput-object v0, Lcom/android/contacts/list/ContactListFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 74
    iput-object p2, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/list/ContactListFilter;
    .locals 7

    .line 86
    new-instance v6, Lcom/android/contacts/list/ContactListFilter;

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method public static createDeviceContactsFilter(Landroid/graphics/drawable/Drawable;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/list/ContactListFilter;
    .locals 7

    .line 103
    new-instance v6, Lcom/android/contacts/list/ContactListFilter;

    iget-object v2, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const/4 v1, -0x8

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method public static createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;
    .locals 7

    .line 81
    new-instance v6, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method public static createGroupMembersFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/list/ContactListFilter;
    .locals 7

    .line 92
    new-instance v6, Lcom/android/contacts/list/ContactListFilter;

    const/4 v1, -0x7

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method public static final filterTypeToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "(unknown)"

    return-object p0

    :pswitch_0
    const-string p0, "FILTER_TYPE_ACCOUNT"

    return-object p0

    :pswitch_1
    const-string p0, "FILTER_TYPE_DEFAULT"

    return-object p0

    :pswitch_2
    const-string p0, "FILTER_TYPE_ALL_ACCOUNTS"

    return-object p0

    :pswitch_3
    const-string p0, "FILTER_TYPE_CUSTOM"

    return-object p0

    :pswitch_4
    const-string p0, "FILTER_TYPE_STARRED"

    return-object p0

    :pswitch_5
    const-string p0, "FILTER_TYPE_WITH_PHONE_NUMBERS_ONLY"

    return-object p0

    :pswitch_6
    const-string p0, "FILTER_TYPE_SINGLE_CONTACT"

    return-object p0

    :pswitch_7
    const-string p0, "FILTER_TYPE_GROUP_MEMBERS"

    return-object p0

    :pswitch_8
    const-string p0, "FILTER_TYPE_DEVICE_CONTACTS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;
    .locals 3

    .line 249
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilter;->restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object p0

    const/4 v0, -0x2

    if-nez p0, :cond_0

    .line 251
    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object p0

    .line 255
    :cond_0
    iget v1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    .line 257
    :cond_1
    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;
    .locals 8

    const-string v0, "filter.type"

    const/4 v1, -0x1

    .line 263
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v0, 0x0

    if-ne v3, v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "filter.accountName"

    .line 268
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "filter.accountType"

    .line 269
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "filter.dataSet"

    .line 270
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    new-instance p0, Lcom/android/contacts/list/ContactListFilter;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public static storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 233
    iget v0, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, -0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 237
    :cond_1
    iget v0, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    :goto_0
    const-string v1, "filter.type"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p1, :cond_2

    move-object v1, v0

    goto :goto_1

    .line 238
    :cond_2
    iget-object v1, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    :goto_1
    const-string v2, "filter.accountName"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p1, :cond_3

    move-object v1, v0

    goto :goto_2

    .line 239
    :cond_3
    iget-object v1, p1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    :goto_2
    const-string v2, "filter.accountType"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p1, :cond_4

    goto :goto_3

    .line 240
    :cond_4
    iget-object v0, p1, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    :goto_3
    const-string p1, "filter.dataSet"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 241
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 2

    .line 333
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eqz v0, :cond_1

    const/4 v1, -0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "filterType must be FILTER_TYPE_ACCOUNT or FILER_TYPE_GROUP_MEMBERS"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 339
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "account_name"

    .line 340
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 341
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    const-string v1, "account_type"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "data_set"

    .line 344
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    return-object p1
.end method

.method public compareTo(Lcom/android/contacts/list/ContactListFilter;)I
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 188
    :cond_1
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    iget p1, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListFilter;->compareTo(Lcom/android/contacts/list/ContactListFilter;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 212
    :cond_0
    instance-of v1, p1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 216
    :cond_1
    check-cast p1, Lcom/android/contacts/list/ContactListFilter;

    .line 217
    iget v1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    iget v3, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 218
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    .line 219
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    .line 220
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->mId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    iget v1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    const/16 v2, 0x2d

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x2f

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 319
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->mId:Ljava/lang/String;

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncableAccounts(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 440
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilter;->isGoogleAccountType()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v1, :cond_0

    .line 441
    new-instance p1, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 442
    :cond_0
    iget v1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    const/4 v2, -0x3

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    :cond_1
    if-eqz p1, :cond_3

    .line 445
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 446
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 447
    iget-object v2, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 449
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 193
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 194
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 195
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    .line 201
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public isContactsFilterType()Z
    .locals 2

    .line 112
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isGoogleAccountType()Z
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    const-string v1, "com.google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSyncable()Z
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilter;->isGoogleAccountType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowSyncState()Z
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilter;->isGoogleAccountType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toAccountWithDataSet()Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 4

    .line 350
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eqz v0, :cond_1

    const/4 v1, -0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create Account from filter type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 354
    invoke-static {v2}, Lcom/android/contacts/list/ContactListFilter;->filterTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toListType()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x6

    return v0

    :pswitch_3
    const/4 v0, 0x7

    return v0

    :pswitch_4
    const/16 v0, 0x8

    return v0

    :pswitch_5
    const/16 v0, 0x9

    return v0

    :pswitch_6
    const/4 v0, 0x3

    return v0

    :pswitch_7
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 152
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v0, :pswitch_data_0

    .line 173
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "default"

    return-object v0

    :pswitch_2
    const-string v0, "all_accounts"

    return-object v0

    :pswitch_3
    const-string v0, "custom"

    return-object v0

    :pswitch_4
    const-string v0, "starred"

    return-object v0

    :pswitch_5
    const-string v0, "with_phones"

    return-object v0

    :pswitch_6
    const-string v0, "single"

    return-object v0

    :pswitch_7
    const-string v0, "group_members"

    return-object v0

    :pswitch_8
    const-string v0, "device_contacts"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 277
    iget p2, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object p2, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object p2, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object p2, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
