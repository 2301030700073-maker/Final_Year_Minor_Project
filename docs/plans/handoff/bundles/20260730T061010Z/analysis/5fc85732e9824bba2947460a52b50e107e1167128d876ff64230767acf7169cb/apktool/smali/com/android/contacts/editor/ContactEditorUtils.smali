.class public Lcom/android/contacts/editor/ContactEditorUtils;
.super Ljava/lang/Object;
.source "ContactEditorUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactEditorUtils"


# instance fields
.field private final mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v0, p1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1

    .line 48
    new-instance v0, Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static maybeConvertToLegacyLookupUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "contacts"

    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 66
    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    const-string p2, "content://contacts/people"

    .line 68
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 69
    invoke-static {p2, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method cleanupForTest()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->clearDefaultAccount()V

    return-void
.end method

.method public getCreatedAccount(ILandroid/content/Intent;)Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 2

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const-string v0, "accountType"

    .line 152
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authAccount"

    .line 153
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    new-instance v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct {v1, p2, v0, p1}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getOnlyOrDefaultAccount(Ljava/util/List;)Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)",
            "Lcom/android/contacts/model/account/AccountWithDataSet;"
        }
    .end annotation

    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountWithDataSet;

    return-object p1

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p1}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    return-object p1
.end method

.method public maybeUpdateDefaultAccount(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 124
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 125
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountWithDataSet;->isNullAccount()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 126
    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0, p1}, Lcom/android/contacts/preference/ContactsPreferences;->setDefaultAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    :cond_0
    return-void
.end method

.method removeDefaultAccountForTest()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->clearDefaultAccount()V

    return-void
.end method

.method public saveDefaultAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 1

    if-nez p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p1}, Lcom/android/contacts/preference/ContactsPreferences;->clearDefaultAccount()V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0, p1}, Lcom/android/contacts/preference/ContactsPreferences;->setDefaultAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    :goto_0
    return-void
.end method

.method public shouldShowAccountChangedNotification(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)Z"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0, p1}, Lcom/android/contacts/preference/ContactsPreferences;->shouldShowAccountChangedNotification(Ljava/util/List;)Z

    move-result p1

    return p1
.end method
