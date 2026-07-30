.class public Lcom/android/contacts/preference/ContactsPreferences;
.super Ljava/lang/Object;
.source "ContactsPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;
    }
.end annotation


# static fields
.field public static final DISPLAY_ORDER_ALTERNATIVE:I = 0x2

.field public static final DISPLAY_ORDER_KEY:Ljava/lang/String; = "android.contacts.DISPLAY_ORDER"

.field public static final DISPLAY_ORDER_PRIMARY:I = 0x1

.field public static final PHONETIC_NAME_DISPLAY_KEY:Ljava/lang/String; = "Phonetic_name_display"

.field private static final PREFERENCE_UNASSIGNED:I = -0x1

.field public static final PREF_DISPLAY_ONLY_PHONES:Ljava/lang/String; = "only_phones"

.field public static final PREF_DISPLAY_ONLY_PHONES_DEFAULT:Z = false

.field public static final SORT_ORDER_ALTERNATIVE:I = 0x2

.field public static final SORT_ORDER_KEY:Ljava/lang/String; = "android.contacts.SORT_ORDER"

.field public static final SORT_ORDER_PRIMARY:I = 0x1


# instance fields
.field private final mBackupManager:Landroid/app/backup/BackupManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

.field private mDefaultAccountKey:Ljava/lang/String;

.field private mDisplayOrder:I

.field private mHandler:Landroid/os/Handler;

.field private final mIsDefaultAccountUserChangeable:Z

.field private mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

.field private mPhoneticNameDisplayPreference:I

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private mSortOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    .line 81
    iput v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    .line 82
    iput v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPhoneticNameDisplayPreference:I

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 85
    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    .line 99
    iput-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    .line 100
    iput-boolean p2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mIsDefaultAccountUserChangeable:Z

    .line 102
    new-instance p2, Landroid/app/backup/BackupManager;

    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 104
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    .line 105
    iget-object p2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 107
    iget-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1000a8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Lcom/android/contacts/preference/ContactsPreferences;->maybeMigrateSystemSettings()V

    return-void
.end method

.method private maybeMigrateSystemSettings()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v0

    .line 356
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :catch_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setSortOrder(I)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v0

    .line 366
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    :catch_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setDisplayOrder(I)V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Phonetic_name_display"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 374
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultPhoneticNameDisplayPreference()I

    move-result v0

    .line 376
    :try_start_2
    iget-object v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 380
    :catch_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setPhoneticNameDisplayPreference(I)V

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    .line 385
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 388
    invoke-static {v0}, Lcom/android/contacts/model/account/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    .line 390
    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setDefaultAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public clearDefaultAccount()V
    .locals 2

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 228
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getDefaultAccount()Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 3

    .line 213
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->isDefaultAccountUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    return-object v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    const/4 v2, 0x0

    .line 218
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    invoke-static {v0}, Lcom/android/contacts/model/account/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    return-object v0
.end method

.method public getDefaultDisplayOrder()I
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getDefaultPhoneticNameDisplayPreference()I
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultSortOrder()I
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getDisplayOrder()I
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->isDisplayOrderUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v0

    return v0

    .line 158
    :cond_0
    iget v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v1

    const-string v2, "android.contacts.DISPLAY_ORDER"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    .line 161
    :cond_1
    iget v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    return v0
.end method

.method public getPhoneticNameDisplayPreference()I
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->isPhoneticNameDisplayPreferenceChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultPhoneticNameDisplayPreference()I

    move-result v0

    return v0

    .line 197
    :cond_0
    iget v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPhoneticNameDisplayPreference:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultPhoneticNameDisplayPreference()I

    move-result v1

    const-string v2, "Phonetic_name_display"

    .line 198
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPhoneticNameDisplayPreference:I

    .line 201
    :cond_1
    iget v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPhoneticNameDisplayPreference:I

    return v0
.end method

.method public getSortOrder()I
    .locals 3

    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->isSortOrderUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v0

    return v0

    .line 128
    :cond_0
    iget v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v1

    const-string v2, "android.contacts.SORT_ORDER"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    .line 131
    :cond_1
    iget v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    return v0
.end method

.method public isDefaultAccountSet()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isDefaultAccountUserChangeable()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mIsDefaultAccountUserChangeable:Z

    return v0
.end method

.method public isDisplayOrderUserChangeable()Z
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isPhoneticNameDisplayPreferenceChangeable()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSortOrderUserChangeable()Z
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 310
    iget-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences$1;

    invoke-direct {v0, p0, p2}, Lcom/android/contacts/preference/ContactsPreferences$1;-><init>(Lcom/android/contacts/preference/ContactsPreferences;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public refreshValue(Ljava/lang/String;)V
    .locals 2

    const-string v0, "android.contacts.DISPLAY_ORDER"

    .line 325
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 326
    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    .line 327
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    goto :goto_0

    :cond_0
    const-string v0, "android.contacts.SORT_ORDER"

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    .line 330
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    goto :goto_0

    :cond_1
    const-string v0, "Phonetic_name_display"

    .line 331
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPhoneticNameDisplayPreference:I

    .line 333
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getPhoneticNameDisplayPreference()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPhoneticNameDisplayPreference:I

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 335
    iput-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 336
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 338
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;->onChange()V

    :cond_4
    return-void
.end method

.method public registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 286
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    const/4 p1, -0x1

    .line 290
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    .line 291
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    .line 292
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPhoneticNameDisplayPreference:I

    const/4 p1, 0x0

    .line 293
    iput-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 295
    iget-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public setDefaultAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 236
    iput-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 237
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountWithDataSet;->stringify()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisplayOrder(I)V
    .locals 2

    .line 165
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    .line 166
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    .line 167
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    iget-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method

.method public setPhoneticNameDisplayPreference(I)V
    .locals 2

    .line 186
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPhoneticNameDisplayPreference:I

    .line 187
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Phonetic_name_display"

    .line 188
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    iget-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method

.method public setSortOrder(I)V
    .locals 2

    .line 135
    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    .line 136
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.contacts.SORT_ORDER"

    .line 137
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    iget-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method

.method public shouldHidePhoneticNamesIfEmpty()Z
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getPhoneticNameDisplayPreference()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public shouldShowAccountChangedNotification(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)Z"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    .line 262
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountWithDataSet;->isNullAccount()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    .line 266
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 267
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountWithDataSet;->isNullAccount()Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    if-nez v0, :cond_4

    return v3

    .line 275
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method public unregisterChangeListener()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
