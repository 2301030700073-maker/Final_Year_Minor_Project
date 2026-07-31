.class public final Lcom/fsck/k9/job/MailSyncWorker;
.super Landroidx/work/Worker;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final messagingController:Lcom/fsck/k9/controller/MessagingController;

.field public final preferences:Lcom/fsck/k9/Preferences;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Preferences;Lnet/thunderbird/core/preference/GeneralSettingsManager;Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p4, p5}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/fsck/k9/job/MailSyncWorker;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/fsck/k9/job/MailSyncWorker;->preferences:Lcom/fsck/k9/Preferences;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/fsck/k9/job/MailSyncWorker;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$Result;
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 4
    .line 5
    const-string v1, "accountUuid"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_9

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v3, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object v0, v3, v4

    .line 19
    .line 20
    const-string v5, "Executing periodic mail sync for account %s"

    .line 21
    .line 22
    invoke-static {v5, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/fsck/k9/job/MailSyncWorker;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 26
    .line 27
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v3, v3, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 34
    .line 35
    iget-object v3, v3, Lnet/thunderbird/core/preference/network/NetworkSettings;->backgroundOps:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v5, 0x2

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    if-eq v3, v2, :cond_1

    .line 45
    .line 46
    if-ne v3, v5, :cond_0

    .line 47
    .line 48
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_1
    :goto_0
    const-string p0, "Background sync is disabled. Skipping mail sync."

    .line 60
    .line 61
    new-array v0, v4, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/job/MailSyncWorker;->preferences:Lcom/fsck/k9/Preferences;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    if-nez v7, :cond_3

    .line 78
    .line 79
    new-array p0, v2, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object v0, p0, v4

    .line 82
    .line 83
    const-string v0, "Account %s not found. Can\'t perform mail sync."

    .line 84
    .line 85
    invoke-static {v0, p0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance p0, Landroidx/work/ListenableWorker$Result$Failure;

    .line 89
    .line 90
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 91
    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_3
    invoke-virtual {v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutomaticCheckIntervalMinutes()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-gtz v0, :cond_4

    .line 99
    .line 100
    const-string p0, "Periodic mail sync has been disabled for this account. Skipping mail sync."

    .line 101
    .line 102
    new-array v0, v4, [Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :cond_4
    invoke-virtual {v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-boolean v0, v0, Lcom/fsck/k9/mail/ServerSettings;->isMissingCredentials:Z

    .line 117
    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    const-string p0, "Password for this account is missing. Skipping mail sync."

    .line 121
    .line 122
    new-array v0, v4, [Ljava/lang/Object;

    .line 123
    .line 124
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :cond_5
    invoke-virtual {v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 137
    .line 138
    sget-object v1, Lcom/fsck/k9/mail/AuthType;->XOAUTH2:Lcom/fsck/k9/mail/AuthType;

    .line 139
    .line 140
    if-ne v0, v1, :cond_6

    .line 141
    .line 142
    invoke-virtual {v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOAuthState()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-nez v0, :cond_6

    .line 147
    .line 148
    const-string p0, "Account requires sign-in. Skipping mail sync."

    .line 149
    .line 150
    new-array v0, v4, [Ljava/lang/Object;

    .line 151
    .line 152
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    return-object p0

    .line 160
    :cond_6
    iget-object v6, p0, Lcom/fsck/k9/job/MailSyncWorker;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    .line 166
    .line 167
    invoke-direct {p0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 168
    .line 169
    .line 170
    new-instance v1, Lcom/fsck/k9/helper/MutableBoolean;

    .line 171
    .line 172
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-boolean v4, v1, Lcom/fsck/k9/helper/MutableBoolean;->value:Z

    .line 176
    .line 177
    new-instance v11, Lcom/fsck/k9/controller/MessagingController$8;

    .line 178
    .line 179
    invoke-direct {v11, v4, p0, v1}, Lcom/fsck/k9/controller/MessagingController$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    const/4 v8, 0x0

    .line 183
    const/4 v9, 0x0

    .line 184
    const/4 v10, 0x1

    .line 185
    invoke-virtual/range {v6 .. v11}, Lcom/fsck/k9/controller/MessagingController;->checkMail(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 186
    .line 187
    .line 188
    new-array v0, v2, [Ljava/lang/Object;

    .line 189
    .line 190
    aput-object v7, v0, v4

    .line 191
    .line 192
    const-string v3, "performPeriodicMailSync(%s) about to await latch release"

    .line 193
    .line 194
    invoke-static {v3, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 198
    .line 199
    .line 200
    const-string p0, "performPeriodicMailSync(%s) got latch release"

    .line 201
    .line 202
    new-array v0, v2, [Ljava/lang/Object;

    .line 203
    .line 204
    aput-object v7, v0, v4

    .line 205
    .line 206
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    move-object p0, v0

    .line 212
    const-string v0, "Interrupted while awaiting latch release"

    .line 213
    .line 214
    new-array v3, v4, [Ljava/lang/Object;

    .line 215
    .line 216
    invoke-static {p0, v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :goto_1
    iget-boolean p0, v1, Lcom/fsck/k9/helper/MutableBoolean;->value:Z

    .line 220
    .line 221
    if-nez p0, :cond_7

    .line 222
    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 224
    .line 225
    .line 226
    move-result-wide v0

    .line 227
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    new-array v5, v5, [Ljava/lang/Object;

    .line 232
    .line 233
    aput-object v7, v5, v4

    .line 234
    .line 235
    aput-object v3, v5, v2

    .line 236
    .line 237
    const-string v2, "Account %s successfully synced @ %tc"

    .line 238
    .line 239
    invoke-static {v2, v5}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7, v0, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setLastSyncTime(J)V

    .line 243
    .line 244
    .line 245
    iget-object v0, v6, Lcom/fsck/k9/controller/MessagingController;->preferences:Lcom/fsck/k9/Preferences;

    .line 246
    .line 247
    invoke-virtual {v0, v7}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 248
    .line 249
    .line 250
    :cond_7
    if-nez p0, :cond_8

    .line 251
    .line 252
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    goto :goto_2

    .line 257
    :cond_8
    new-instance p0, Landroidx/work/ListenableWorker$Result$Retry;

    .line 258
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    .line 261
    .line 262
    :goto_2
    return-object p0

    .line 263
    :cond_9
    const-string p0, "Required value was null."

    .line 264
    .line 265
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    return-object v1
.end method
