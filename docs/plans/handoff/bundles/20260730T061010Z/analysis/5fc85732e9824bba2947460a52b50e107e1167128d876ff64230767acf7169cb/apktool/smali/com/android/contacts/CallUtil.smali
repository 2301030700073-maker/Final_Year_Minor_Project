.class public Lcom/android/contacts/CallUtil;
.super Ljava/lang/Object;
.source "CallUtil.java"


# direct methods
.method public static getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static getCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 97
    invoke-static {p0}, Lcom/android/contacts/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 98
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 99
    invoke-static {v0}, Lcom/android/contacts/CallUtil;->getCallIntentForEmergencyNumber(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/contacts/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getCallIntentForEmergencyNumber(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static getCallUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 136
    invoke-static {p0}, Lcom/android/contacts/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "sip"

    .line 137
    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "tel"

    .line 139
    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getCallWithSubjectIntent(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 84
    invoke-static {p0}, Lcom/android/contacts/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/android/contacts/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.telecom.extra.CALL_SUBJECT"

    .line 85
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 87
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public static getVideoCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/contacts/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p0, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    const/4 v1, 0x3

    .line 123
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.android.phone.CALL_ORIGIN"

    .line 126
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static getVideoCallingAvailability(Landroid/content/Context;)I
    .locals 5

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 153
    invoke-static {p0, v0}, Lcom/android/contacts/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 154
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isVideoCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "telecom"

    .line 158
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-nez v0, :cond_1

    return v1

    .line 164
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    .line 165
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 166
    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v4, 0x8

    .line 168
    invoke-virtual {v3, v4}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isVideoPresenceCompatible()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x100

    .line 175
    invoke-virtual {v3, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    const/4 v2, 0x3

    :cond_4
    return v2

    :cond_5
    return v1

    :catch_0
    move-exception v0

    const-string v2, "CallUtil"

    const-string v3, "Security exception when getting call capable phone accounts"

    .line 185
    invoke-static {p0, v2, v3, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return v1
.end method

.method public static isCallWithSubjectSupported(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 200
    invoke-static {p0, v0}, Lcom/android/contacts/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 201
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isCallSubjectCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "telecom"

    .line 205
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-nez v0, :cond_1

    return v1

    .line 211
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    .line 212
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 213
    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v4, 0x40

    .line 214
    invoke-virtual {v3, v4}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1

    :catch_0
    move-exception v0

    const-string v2, "CallUtil"

    const-string v3, "Security exception when getting call capable phone accounts"

    .line 220
    invoke-static {p0, v2, v3, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public static isTachyonEnabled(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "CallUtil"

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 237
    invoke-static {p0, v1}, Lcom/android/contacts/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 238
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isNCompatible()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "telecom"

    .line 242
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    if-nez v1, :cond_1

    return v2

    .line 247
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    .line 248
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 249
    invoke-virtual {v1, v4}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {v4}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const-string v4, "android.telecom.extra.SUPPORTS_VIDEO_CALLING_FALLBACK"

    .line 255
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x3

    .line 257
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 258
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device video fallback config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_4
    const-class v5, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CarrierConfigManager;

    .line 263
    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, "allow_video_calling_fallback_bool"

    .line 265
    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 267
    :goto_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Carrier video fallback config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_6
    invoke-static {}, Lcom/android/contactsbind/experiments/Flags;->getInstance()Lcom/android/contactsbind/experiments/Flags;

    move-result-object v6

    const-string v7, "QuickContact__video_call_integration"

    invoke-virtual {v6, v7}, Lcom/android/contactsbind/experiments/Flags;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 274
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Experiment video fallback config: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    if-eqz v1, :cond_8

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2

    :catch_0
    move-exception v1

    const-string v3, "Security exception when getting call capable phone accounts"

    .line 283
    invoke-static {p0, v0, v3, v1}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    return v2
.end method
