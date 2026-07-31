.class public Lorg/openintents/openpgp/util/OpenPgpKeyPreference;
.super Landroidx/preference/Preference;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;


# instance fields
.field public cachedActivityResultData:Landroid/content/Intent;

.field public defaultUserId:Ljava/lang/String;

.field public intentSenderFragment:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

.field public keyCreationTime:J

.field public keyId:J

.field public keyPrimaryUserId:Ljava/lang/String;

.field public openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

.field public final openPgpCallback:Lorg/openintents/openpgp/util/OpenPgpKeyPreference$1;

.field public pendingIntentRunImmediately:Z

.field public pendingIntentSelectKey:Landroid/app/PendingIntent;

.field public showAutocryptHint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/openintents/openpgp/util/OpenPgpKeyPreference$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference$1;-><init>(Lorg/openintents/openpgp/util/OpenPgpKeyPreference;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->openPgpCallback:Lorg/openintents/openpgp/util/OpenPgpKeyPreference$1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final apiRetrievePendingIntentAndKeyInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->cachedActivityResultData:Landroid/content/Intent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->cachedActivityResultData:Landroid/content/Intent;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    :goto_0
    const-string v1, "org.openintents.openpgp.action.GET_SIGN_KEY_ID"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "user_id"

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->defaultUserId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string v1, "preselect_key_id"

    .line 28
    .line 29
    iget-wide v2, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyId:J

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string v1, "show_autocrypt_hint"

    .line 35
    .line 36
    iget-boolean v2, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->showAutocryptHint:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 42
    .line 43
    invoke-virtual {v1}, Lorg/openintents/openpgp/OpenPgpApiManager;->getOpenPgpApi()Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->openPgpCallback:Lorg/openintents/openpgp/util/OpenPgpKeyPreference$1;

    .line 48
    .line 49
    invoke-virtual {v1, v0, p0}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApiAsync(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final apiStartPendingIntent()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentSelectKey:Landroid/app/PendingIntent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string p0, "Tried to launch pending intent but didn\'t have any?"

    .line 7
    .line 8
    new-array v0, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :try_start_0
    iget-object v3, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->intentSenderFragment:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v4, 0x270f

    .line 22
    .line 23
    invoke-static {v3, v0, v4}, Lorg/openintents/openpgp/util/OpenPgpIntentStarter;->startIntentSenderForResult(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentSelectKey:Landroid/app/PendingIntent;

    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    :try_start_1
    const-string v3, "Error launching pending intent"

    .line 33
    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v0, v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentSelectKey:Landroid/app/PendingIntent;

    .line 40
    .line 41
    return-void

    .line 42
    :goto_0
    iput-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentSelectKey:Landroid/app/PendingIntent;

    .line 43
    .line 44
    throw v0
.end method

.method public final onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->refreshTitleAndSummary()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->refreshConnection()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentSelectKey:Landroid/app/PendingIntent;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->apiStartPendingIntent()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentRunImmediately:Z

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->apiRetrievePendingIntentAndKeyInfo()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    int-to-long p0, p0

    .line 7
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final onOpenPgpProviderError(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;->ConnectionLost:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->refreshConnection()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onOpenPgpProviderStatusChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 4
    .line 5
    sget-object v1, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->OK:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->apiRetrievePendingIntentAndKeyInfo()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentSelectKey:Landroid/app/PendingIntent;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentRunImmediately:Z

    .line 18
    .line 19
    iput-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->cachedActivityResultData:Landroid/content/Intent;

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->refreshTitleAndSummary()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onSetInitialValue(Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    iget-wide p1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyId:J

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/compose/ui/unit/IntRectKt;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, v1}, Landroidx/compose/ui/unit/IntRectKt;->getLong(JLjava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    :goto_0
    iput-wide p1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyId:J

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->shouldDisableDependents()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    check-cast p1, Ljava/lang/Long;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    invoke-virtual {p0, p1, p2}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->setAndPersist(J)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final refreshTitleAndSummary()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 8
    .line 9
    sget-object v3, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->UNCONFIGURED:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 10
    .line 11
    if-eq v0, v3, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    iget-wide v3, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyId:J

    .line 20
    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    cmp-long v0, v3, v5

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const v4, 0x7f120531

    .line 28
    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    const v0, 0x7f120535

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyPrimaryUserId:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    iget-wide v7, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyCreationTime:J

    .line 55
    .line 56
    cmp-long v5, v7, v5

    .line 57
    .line 58
    if-eqz v5, :cond_5

    .line 59
    .line 60
    sget-object v4, Lorg/openintents/openpgp/util/OpenPgpUtils;->USER_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_2

    .line 67
    .line 68
    sget-object v4, Lorg/openintents/openpgp/util/OpenPgpUtils;->USER_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 69
    .line 70
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    new-instance v4, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    const/4 v6, 0x3

    .line 87
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const/4 v7, 0x2

    .line 92
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-direct {v4, v5, v6}, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    new-instance v4, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    invoke-direct {v4, v0, v0}, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    const v0, 0x7f120532

    .line 106
    .line 107
    .line 108
    iget-object v5, v4, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v5, :cond_3

    .line 111
    .line 112
    new-array v4, v2, [Ljava/lang/Object;

    .line 113
    .line 114
    aput-object v5, v4, v1

    .line 115
    .line 116
    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    iget-object v4, v4, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v4, :cond_4

    .line 127
    .line 128
    new-array v5, v2, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v4, v5, v1

    .line 131
    .line 132
    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    const v0, 0x7f120533

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    :goto_2
    iget-wide v4, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyCreationTime:J

    .line 151
    .line 152
    const v0, 0x10015

    .line 153
    .line 154
    .line 155
    invoke-static {v3, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    new-array v2, v2, [Ljava/lang/Object;

    .line 160
    .line 161
    aput-object v0, v2, v1

    .line 162
    .line 163
    const v0, 0x7f12052f

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_5
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    const v0, 0x7f120530

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public final setAndPersist(J)V
    .locals 4

    .line 1
    iput-wide p1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyId:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->shouldDisableDependents()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 8
    .line 9
    .line 10
    iget-wide p1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyId:J

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    not-long v0, p1

    .line 20
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/compose/ui/unit/IntRectKt;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2, v0, v1, v3}, Landroidx/compose/ui/unit/IntRectKt;->getLong(JLjava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v2, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    :goto_0
    cmp-long v0, p1, v0

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    :goto_1
    return-void

    .line 55
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/compose/ui/unit/IntRectKt;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0, p1, p2, v3}, Landroidx/compose/ui/unit/IntRectKt;->putLong(JLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final shouldDisableDependents()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyId:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method
