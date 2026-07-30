.class public final Lcom/android/contacts/preference/PhoneticNameDisplayPreference;
.super Landroid/preference/ListPreference;
.source "PhoneticNameDisplayPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcom/android/contacts/preference/PhoneticNameDisplayPreference;->prepare()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/android/contacts/preference/PhoneticNameDisplayPreference;->prepare()V

    return-void
.end method

.method private prepare()V
    .locals 5

    .line 48
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/PhoneticNameDisplayPreference;->mContext:Landroid/content/Context;

    .line 49
    new-instance v1, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v1, v0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/preference/PhoneticNameDisplayPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lcom/android/contacts/preference/PhoneticNameDisplayPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f10010a

    .line 51
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/contacts/preference/PhoneticNameDisplayPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f10010b

    .line 52
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 50
    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v0, v0, [Ljava/lang/String;

    .line 55
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 56
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 54
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/android/contacts/preference/PhoneticNameDisplayPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getPhoneticNameDisplayPreference()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/contacts/preference/PhoneticNameDisplayPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getPhoneticNameDisplayPreference()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/preference/PhoneticNameDisplayPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f10010b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/preference/PhoneticNameDisplayPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f10010a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 80
    iget-object v0, p0, Lcom/android/contacts/preference/PhoneticNameDisplayPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getPhoneticNameDisplayPreference()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/contacts/preference/PhoneticNameDisplayPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0, p1}, Lcom/android/contacts/preference/ContactsPreferences;->setPhoneticNameDisplayPreference(I)V

    .line 82
    invoke-virtual {p0}, Landroid/preference/ListPreference;->notifyChanged()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected shouldPersist()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
