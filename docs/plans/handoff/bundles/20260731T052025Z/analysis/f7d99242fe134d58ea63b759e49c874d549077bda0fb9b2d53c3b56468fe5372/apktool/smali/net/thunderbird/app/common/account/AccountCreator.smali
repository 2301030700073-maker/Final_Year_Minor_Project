.class public final Lnet/thunderbird/app/common/account/AccountCreator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountColorPicker:Lnet/thunderbird/app/common/account/AccountColorPicker;

.field public final avatarMonogramCreator:Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

.field public final context:Landroid/app/Application;

.field public final coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final deletePolicyProvider:Lcom/fsck/k9/account/DefaultDeletePolicyProvider;

.field public final localFoldersCreator:Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

.field public final messagingController:Lcom/fsck/k9/controller/MessagingController;

.field public final preferences:Lcom/fsck/k9/Preferences;

.field public final unifiedInboxConfigurator:Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/AccountColorPicker;Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;Lcom/fsck/k9/Preferences;Landroid/app/Application;Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/account/DefaultDeletePolicyProvider;Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lnet/thunderbird/app/common/account/AccountCreator;->accountColorPicker:Lnet/thunderbird/app/common/account/AccountColorPicker;

    .line 12
    .line 13
    iput-object p2, p0, Lnet/thunderbird/app/common/account/AccountCreator;->localFoldersCreator:Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

    .line 14
    .line 15
    iput-object p3, p0, Lnet/thunderbird/app/common/account/AccountCreator;->preferences:Lcom/fsck/k9/Preferences;

    .line 16
    .line 17
    iput-object p4, p0, Lnet/thunderbird/app/common/account/AccountCreator;->context:Landroid/app/Application;

    .line 18
    .line 19
    iput-object p5, p0, Lnet/thunderbird/app/common/account/AccountCreator;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 20
    .line 21
    iput-object p6, p0, Lnet/thunderbird/app/common/account/AccountCreator;->deletePolicyProvider:Lcom/fsck/k9/account/DefaultDeletePolicyProvider;

    .line 22
    .line 23
    iput-object p7, p0, Lnet/thunderbird/app/common/account/AccountCreator;->avatarMonogramCreator:Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 24
    .line 25
    iput-object p8, p0, Lnet/thunderbird/app/common/account/AccountCreator;->unifiedInboxConfigurator:Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 26
    .line 27
    iput-object v0, p0, Lnet/thunderbird/app/common/account/AccountCreator;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 28
    .line 29
    return-void
.end method

.method public static final access$create(Lnet/thunderbird/app/common/account/AccountCreator;Lapp/k9mail/feature/account/common/domain/entity/Account;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lnet/thunderbird/app/common/account/AccountCreator$create$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;

    .line 13
    .line 14
    iget v4, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;

    .line 27
    .line 28
    invoke-direct {v3, v1, v2}, Lnet/thunderbird/app/common/account/AccountCreator$create$1;-><init>(Lnet/thunderbird/app/common/account/AccountCreator;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x2

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x1

    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    if-eq v5, v9, :cond_2

    .line 44
    .line 45
    if-ne v5, v7, :cond_1

    .line 46
    .line 47
    iget-object v0, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 48
    .line 49
    iget-object v3, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->L$0:Lapp/k9mail/feature/account/common/domain/entity/Account;

    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object v11, v0

    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v8

    .line 63
    :cond_2
    iget-object v0, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->L$2:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 64
    .line 65
    iget-object v5, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 66
    .line 67
    iget-object v10, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->L$0:Lapp/k9mail/feature/account/common/domain/entity/Account;

    .line 68
    .line 69
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object/from16 v16, v10

    .line 73
    .line 74
    move-object v10, v0

    .line 75
    move-object/from16 v0, v16

    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, v1, Lnet/thunderbird/app/common/account/AccountCreator;->preferences:Lcom/fsck/k9/Preferences;

    .line 83
    .line 84
    iget-object v5, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->uuid:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    new-instance v10, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 93
    .line 94
    new-instance v11, Lcom/fsck/k9/Preferences$$ExternalSyntheticLambda1;

    .line 95
    .line 96
    invoke-direct {v11, v2, v9}, Lcom/fsck/k9/Preferences$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/Preferences;I)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v10, v5, v11}, Lnet/thunderbird/core/android/account/LegacyAccountDto;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 100
    .line 101
    .line 102
    iget-object v11, v2, Lcom/fsck/k9/Preferences;->accountDefaultsProvider:Lnet/thunderbird/core/android/account/AccountDefaultsProvider;

    .line 103
    .line 104
    check-cast v11, Lnet/thunderbird/app/common/account/DefaultAccountDefaultsProvider;

    .line 105
    .line 106
    invoke-virtual {v11, v10}, Lnet/thunderbird/app/common/account/DefaultAccountDefaultsProvider;->applyDefaults(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 107
    .line 108
    .line 109
    iget-object v11, v2, Lcom/fsck/k9/Preferences;->accountLock:Ljava/lang/Object;

    .line 110
    .line 111
    monitor-enter v11

    .line 112
    :try_start_0
    iput-object v10, v2, Lcom/fsck/k9/Preferences;->newAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 113
    .line 114
    iget-object v12, v2, Lcom/fsck/k9/Preferences;->accountsMap:Ljava/util/LinkedHashMap;

    .line 115
    .line 116
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-interface {v12, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    iget-object v2, v2, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    monitor-exit v11

    .line 128
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->emailAddress:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v10, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setEmail(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v2, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;

    .line 134
    .line 135
    sget-object v5, Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;->MONOGRAM:Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;

    .line 136
    .line 137
    iget-object v11, v1, Lnet/thunderbird/app/common/account/AccountCreator;->avatarMonogramCreator:Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 138
    .line 139
    iget-object v12, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 140
    .line 141
    iget-object v12, v12, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->accountName:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v13, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->emailAddress:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-static {v12, v13}, Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;->create(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    invoke-direct {v2, v5, v11, v8, v8}, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;-><init>(Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAvatar(Lnet/thunderbird/feature/account/storage/profile/AvatarDto;)V

    .line 156
    .line 157
    .line 158
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 159
    .line 160
    iget-object v5, v2, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 161
    .line 162
    const-string v11, "imap"

    .line 163
    .line 164
    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_4

    .line 169
    .line 170
    invoke-static {v2}, Landroidx/core/util/DebugUtils;->isUseCompression(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    invoke-virtual {v10, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setUseCompression(Z)V

    .line 175
    .line 176
    .line 177
    invoke-static {v2}, Landroidx/core/util/DebugUtils;->isSendClientInfo(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    invoke-virtual {v10, v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSendClientInfoEnabled(Z)V

    .line 182
    .line 183
    .line 184
    invoke-static {v2}, Landroidx/core/util/DebugUtils;->getAutoDetectNamespace(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    invoke-static {v2}, Landroidx/core/util/DebugUtils;->getPathPrefix(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    const-string v12, "autoDetectNamespace"

    .line 193
    .line 194
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    new-instance v13, Lkotlin/Pair;

    .line 199
    .line 200
    invoke-direct {v13, v12, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    const-string v5, "pathPrefix"

    .line 204
    .line 205
    new-instance v12, Lkotlin/Pair;

    .line 206
    .line 207
    invoke-direct {v12, v5, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    new-array v5, v7, [Lkotlin/Pair;

    .line 211
    .line 212
    aput-object v13, v5, v6

    .line 213
    .line 214
    aput-object v12, v5, v9

    .line 215
    .line 216
    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    const/16 v11, 0xff

    .line 221
    .line 222
    invoke-static {v2, v8, v8, v5, v11}, Lcom/fsck/k9/mail/ServerSettings;->copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    iput-object v2, v10, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalIncomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_4
    iput-object v2, v10, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalIncomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 230
    .line 231
    :goto_1
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 232
    .line 233
    iput-object v2, v10, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalOutgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 234
    .line 235
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->authorizationState:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v10, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOAuthState(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 241
    .line 242
    iget-object v2, v2, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->accountName:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v10, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setName(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 248
    .line 249
    iget-object v2, v2, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->displayName:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v10, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSenderName(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 255
    .line 256
    iget-object v2, v2, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->emailSignature:Ljava/lang/String;

    .line 257
    .line 258
    if-eqz v2, :cond_5

    .line 259
    .line 260
    invoke-virtual {v10, v9}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSignatureUse(Z)V

    .line 261
    .line 262
    .line 263
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 264
    .line 265
    iget-object v2, v2, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->emailSignature:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v10, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSignature(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_5
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 271
    .line 272
    iget-boolean v2, v2, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->showNotification:Z

    .line 273
    .line 274
    invoke-virtual {v10, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifyNewMail(Z)V

    .line 275
    .line 276
    .line 277
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 278
    .line 279
    iget v2, v2, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->checkFrequencyInMinutes:I

    .line 280
    .line 281
    invoke-virtual {v10, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAutomaticCheckIntervalMinutes(I)V

    .line 282
    .line 283
    .line 284
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 285
    .line 286
    iget v2, v2, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->messageDisplayCount:I

    .line 287
    .line 288
    invoke-virtual {v10, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDisplayCount(I)V

    .line 289
    .line 290
    .line 291
    iget-object v2, v1, Lnet/thunderbird/app/common/account/AccountCreator;->deletePolicyProvider:Lcom/fsck/k9/account/DefaultDeletePolicyProvider;

    .line 292
    .line 293
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    iget-object v5, v5, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-static {v5}, Lcom/fsck/k9/account/DefaultDeletePolicyProvider;->getDeletePolicy(Ljava/lang/String;)Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v10, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDeletePolicy(Lnet/thunderbird/core/android/account/DeletePolicy;)V

    .line 307
    .line 308
    .line 309
    iget-object v2, v1, Lnet/thunderbird/app/common/account/AccountCreator;->accountColorPicker:Lnet/thunderbird/app/common/account/AccountColorPicker;

    .line 310
    .line 311
    iput-object v0, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->L$0:Lapp/k9mail/feature/account/common/domain/entity/Account;

    .line 312
    .line 313
    iput-object v10, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 314
    .line 315
    iput-object v10, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->L$2:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 316
    .line 317
    iput v9, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->label:I

    .line 318
    .line 319
    invoke-virtual {v2, v3}, Lnet/thunderbird/app/common/account/AccountColorPicker;->pickColor(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    if-ne v2, v4, :cond_6

    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_6
    move-object v5, v10

    .line 327
    :goto_2
    check-cast v2, Ljava/lang/Number;

    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    invoke-virtual {v10, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setChipColor(I)V

    .line 334
    .line 335
    .line 336
    iget-object v2, v1, Lnet/thunderbird/app/common/account/AccountCreator;->localFoldersCreator:Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;

    .line 337
    .line 338
    iput-object v0, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->L$0:Lapp/k9mail/feature/account/common/domain/entity/Account;

    .line 339
    .line 340
    iput-object v5, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 341
    .line 342
    iput-object v8, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->L$2:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 343
    .line 344
    iput v7, v3, Lnet/thunderbird/app/common/account/AccountCreator$create$1;->label:I

    .line 345
    .line 346
    invoke-virtual {v2, v5, v3}, Lcom/fsck/k9/mailstore/SpecialLocalFoldersCreator;->createSpecialLocalFolders(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    if-ne v2, v4, :cond_7

    .line 351
    .line 352
    :goto_3
    return-object v4

    .line 353
    :cond_7
    move-object v3, v0

    .line 354
    move-object v11, v5

    .line 355
    :goto_4
    iget-object v0, v3, Lapp/k9mail/feature/account/common/domain/entity/Account;->specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 356
    .line 357
    if-eqz v0, :cond_8

    .line 358
    .line 359
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;->archiveSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 360
    .line 361
    invoke-static {v2}, Lnet/thunderbird/app/common/account/AccountCreator;->toFolderServerId(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v11, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedArchiveFolder(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;->archiveSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 369
    .line 370
    invoke-static {v2}, Lnet/thunderbird/app/common/account/AccountCreator;->toFolderSelection(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    iput-object v2, v11, Lnet/thunderbird/core/android/account/LegacyAccountDto;->archiveFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 375
    .line 376
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;->draftsSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 377
    .line 378
    invoke-static {v2}, Lnet/thunderbird/app/common/account/AccountCreator;->toFolderServerId(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    invoke-virtual {v11, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedDraftsFolder(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-static {v2}, Lnet/thunderbird/app/common/account/AccountCreator;->toFolderSelection(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    iput-object v2, v11, Lnet/thunderbird/core/android/account/LegacyAccountDto;->draftsFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 390
    .line 391
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;->sentSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 392
    .line 393
    invoke-static {v2}, Lnet/thunderbird/app/common/account/AccountCreator;->toFolderServerId(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-virtual {v11, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedSentFolder(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-static {v2}, Lnet/thunderbird/app/common/account/AccountCreator;->toFolderSelection(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    iput-object v2, v11, Lnet/thunderbird/core/android/account/LegacyAccountDto;->sentFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 405
    .line 406
    iget-object v2, v0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;->spamSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 407
    .line 408
    invoke-static {v2}, Lnet/thunderbird/app/common/account/AccountCreator;->toFolderServerId(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    invoke-virtual {v11, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedSpamFolder(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-static {v2}, Lnet/thunderbird/app/common/account/AccountCreator;->toFolderSelection(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    iput-object v2, v11, Lnet/thunderbird/core/android/account/LegacyAccountDto;->spamFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 420
    .line 421
    iget-object v0, v0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;->trashSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 422
    .line 423
    invoke-static {v0}, Lnet/thunderbird/app/common/account/AccountCreator;->toFolderServerId(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v11, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedTrashFolder(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-static {v0}, Lnet/thunderbird/app/common/account/AccountCreator;->toFolderSelection(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    iput-object v0, v11, Lnet/thunderbird/core/android/account/LegacyAccountDto;->trashFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 435
    .line 436
    :cond_8
    invoke-virtual {v11}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->markSetupFinished()V

    .line 437
    .line 438
    .line 439
    iget-object v0, v1, Lnet/thunderbird/app/common/account/AccountCreator;->preferences:Lcom/fsck/k9/Preferences;

    .line 440
    .line 441
    invoke-virtual {v0, v11}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 442
    .line 443
    .line 444
    iget-object v0, v1, Lnet/thunderbird/app/common/account/AccountCreator;->unifiedInboxConfigurator:Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 445
    .line 446
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;->configureUnifiedInbox()V

    .line 447
    .line 448
    .line 449
    iget-object v0, v1, Lnet/thunderbird/app/common/account/AccountCreator;->context:Landroid/app/Application;

    .line 450
    .line 451
    invoke-static {v0}, Lcom/fsck/k9/Core;->setServicesEnabled(Landroid/content/Context;)V

    .line 452
    .line 453
    .line 454
    iget-object v0, v1, Lnet/thunderbird/app/common/account/AccountCreator;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 460
    .line 461
    invoke-direct {v2, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 462
    .line 463
    .line 464
    const-string v4, "refreshFolderListBlocking"

    .line 465
    .line 466
    new-instance v5, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 467
    .line 468
    const/16 v7, 0x10

    .line 469
    .line 470
    invoke-direct {v5, v0, v11, v2, v7}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0, v4, v5}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 474
    .line 475
    .line 476
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 477
    .line 478
    .line 479
    goto :goto_5

    .line 480
    :catch_0
    move-exception v0

    .line 481
    const-string v2, "Interrupted while awaiting latch release"

    .line 482
    .line 483
    new-array v4, v6, [Ljava/lang/Object;

    .line 484
    .line 485
    invoke-static {v0, v2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    :goto_5
    iget-object v0, v3, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 489
    .line 490
    iget v0, v0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->checkFrequencyInMinutes:I

    .line 491
    .line 492
    const/4 v2, -0x1

    .line 493
    if-ne v0, v2, :cond_9

    .line 494
    .line 495
    iget-object v10, v1, Lnet/thunderbird/app/common/account/AccountCreator;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 496
    .line 497
    const/4 v14, 0x0

    .line 498
    const/4 v15, 0x0

    .line 499
    const/4 v12, 0x0

    .line 500
    const/4 v13, 0x1

    .line 501
    invoke-virtual/range {v10 .. v15}, Lcom/fsck/k9/controller/MessagingController;->checkMail(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 502
    .line 503
    .line 504
    :cond_9
    iget-object v0, v11, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 505
    .line 506
    return-object v0

    .line 507
    :catchall_0
    move-exception v0

    .line 508
    monitor-exit v11

    .line 509
    throw v0
.end method

.method public static toFolderSelection(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;
    .locals 3

    .line 1
    instance-of v0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 2
    .line 3
    sget-object v1, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->AUTOMATIC:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 4
    .line 5
    sget-object v2, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->MANUAL:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 10
    .line 11
    iget-boolean p0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;->isAutomatic:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    return-object v2

    .line 17
    :cond_1
    instance-of v0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Regular;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_2
    instance-of v0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Special;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    check-cast p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Special;

    .line 27
    .line 28
    iget-boolean p0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Special;->isAutomatic:Z

    .line 29
    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_3
    return-object v2

    .line 34
    :cond_4
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public static toFolderServerId(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$None;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    instance-of v0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Regular;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Regular;

    .line 12
    .line 13
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Regular;->remoteFolder:Lcom/fsck/k9/mail/folders/RemoteFolder;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->serverId:Ljava/lang/String;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    instance-of v0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Special;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    check-cast p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Special;

    .line 23
    .line 24
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption$Special;->remoteFolder:Lcom/fsck/k9/mail/folders/RemoteFolder;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->serverId:Ljava/lang/String;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method


# virtual methods
.method public final createAccount(Lapp/k9mail/feature/account/common/domain/entity/Account;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lnet/thunderbird/app/common/account/AccountCreator$createAccount$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/thunderbird/app/common/account/AccountCreator$createAccount$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/app/common/account/AccountCreator$createAccount$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/thunderbird/app/common/account/AccountCreator$createAccount$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/app/common/account/AccountCreator$createAccount$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/app/common/account/AccountCreator$createAccount$1;-><init>(Lnet/thunderbird/app/common/account/AccountCreator;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/thunderbird/app/common/account/AccountCreator$createAccount$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/app/common/account/AccountCreator$createAccount$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :try_start_1
    iget-object p2, p0, Lnet/thunderbird/app/common/account/AccountCreator;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 49
    .line 50
    new-instance v1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 51
    .line 52
    const/16 v4, 0x15

    .line 53
    .line 54
    invoke-direct {v1, p0, p1, v2, v4}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 55
    .line 56
    .line 57
    iput v3, v0, Lnet/thunderbird/app/common/account/AccountCreator$createAccount$1;->label:I

    .line 58
    .line 59
    invoke-static {p2, v1, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 64
    .line 65
    if-ne p2, p0, :cond_3

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_3
    :goto_1
    :try_start_2
    check-cast p2, Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    .line 70
    return-object p2

    .line 71
    :catch_0
    move-exception p0

    .line 72
    const/4 p1, 0x0

    .line 73
    new-array p1, p1, [Ljava/lang/Object;

    .line 74
    .line 75
    const-string p2, "Error while creating new account"

    .line 76
    .line 77
    invoke-static {p0, p2, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-nez p0, :cond_4

    .line 87
    .line 88
    const-string p0, "Unknown create account error"

    .line 89
    .line 90
    :cond_4
    invoke-direct {p1, p0}, Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object p1
.end method
