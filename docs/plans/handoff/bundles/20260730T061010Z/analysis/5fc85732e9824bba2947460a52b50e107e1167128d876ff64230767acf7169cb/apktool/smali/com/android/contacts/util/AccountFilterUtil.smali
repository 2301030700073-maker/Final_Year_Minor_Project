.class public Lcom/android/contacts/util/AccountFilterUtil;
.super Ljava/lang/Object;
.source "AccountFilterUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountFilterUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/android/contacts/util/AccountFilterUtil;->getDefaultAccount(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p0

    return-object p0
.end method

.method public static createContactsFilter(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilter;
    .locals 0

    .line 177
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterController;->isCustomFilterPersisted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x3

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    .line 180
    :goto_0
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object p0

    return-object p0
.end method

.method private static getActionBarTitleForAccount(Landroid/content/Context;Lcom/android/contacts/list/ContactListFilter;)Ljava/lang/String;
    .locals 3

    .line 233
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 234
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListFilter;->toAccountWithDataSet()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountInfoForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const p1, 0x7f1000b7

    .line 236
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->hasGoogleAccountType()Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f100237

    .line 240
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0x7f100238

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 243
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getNameLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 242
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getActionBarTitleForFilter(Landroid/content/Context;Lcom/android/contacts/list/ContactListFilter;)Ljava/lang/String;
    .locals 2

    .line 223
    iget v0, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, -0x8

    if-ne v0, v1, :cond_0

    const p1, 0x7f100023

    .line 224
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    .line 225
    iget-object v0, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    invoke-static {p0, p1}, Lcom/android/contacts/util/AccountFilterUtil;->getActionBarTitleForAccount(Landroid/content/Context;Lcom/android/contacts/list/ContactListFilter;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f1000b7

    .line 229
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultAccount(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 1

    .line 167
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v0, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p0

    return-object p0
.end method

.method public static handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    const-string p1, "contactListFilter"

    .line 98
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/ContactListFilter;

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    iget p2, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_1

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 105
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static isAllContactsFilter(Lcom/android/contacts/list/ContactListFilter;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilter;->isContactsFilterType()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDeviceContactsFilter(Lcom/android/contacts/list/ContactListFilter;)Z
    .locals 1

    .line 216
    iget p0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v0, -0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/list/ContactListFilter;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p0, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 84
    :cond_0
    sget-object p0, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string p1, "getActivity() returned null. Ignored"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static startEditorIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 3

    .line 188
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 189
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 194
    invoke-static {p2}, Lcom/android/contacts/util/AccountFilterUtil;->isAllContactsFilter(Lcom/android/contacts/list/ContactListFilter;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 196
    new-instance p1, Landroid/accounts/Account;

    iget-object v1, p2, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.provider.extra.ACCOUNT"

    .line 197
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    iget-object p1, p2, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    const-string p2, "android.provider.extra.DATA_SET"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {p2}, Lcom/android/contacts/util/AccountFilterUtil;->isDeviceContactsFilter(Lcom/android/contacts/list/ContactListFilter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactListFilter;->toAccountWithDataSet()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    const-string p2, "com.android.contacts.ACCOUNT_WITH_DATA_SET"

    .line 200
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityInApp(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const p1, 0x7f1001a5

    const/4 p2, 0x0

    .line 207
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
