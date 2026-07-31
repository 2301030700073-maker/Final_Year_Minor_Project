.class public final Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final configurationProvider:Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;

.field public final repository:Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;->repository:Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;->configurationProvider:Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/String;Ljava/lang/String;)Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;->configurationProvider:Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;

    .line 12
    .line 13
    iget-object v2, v2, Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;->hostnameMapping:Lkotlin/collections/builders/MapBuilder;

    .line 14
    .line 15
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 16
    .line 17
    move-object/from16 v4, p1

    .line 18
    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    sget-object v0, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$NotSupported;->INSTANCE:Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$NotSupported;

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_0
    new-instance v3, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$Success;

    .line 38
    .line 39
    new-instance v4, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 40
    .line 41
    iget-object v5, v2, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;->authorizationEndpoint:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget-object v6, v2, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;->tokenEndpoint:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const/4 v7, 0x0

    .line 54
    invoke-direct {v4, v5, v6, v7, v7}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 55
    .line 56
    .line 57
    new-instance v5, Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 58
    .line 59
    iget-object v6, v2, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;->clientId:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v8, v2, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;->redirectUri:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v9, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v4, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mConfiguration:Ljava/lang/Object;

    .line 76
    .line 77
    const-string v4, "client ID cannot be null or empty"

    .line 78
    .line 79
    invoke-static {v6, v4}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iput-object v6, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClientId:Ljava/lang/Object;

    .line 83
    .line 84
    const-string v4, "expected response type cannot be null or empty"

    .line 85
    .line 86
    const-string v6, "code"

    .line 87
    .line 88
    invoke-static {v6, v4}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iput-object v6, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/Object;

    .line 92
    .line 93
    const-string v4, "redirect URI cannot be null or empty"

    .line 94
    .line 95
    invoke-static {v8, v4}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput-object v8, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mRedirectUri:Ljava/lang/Object;

    .line 99
    .line 100
    new-instance v4, Ljava/security/SecureRandom;

    .line 101
    .line 102
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 103
    .line 104
    .line 105
    const/16 v6, 0x10

    .line 106
    .line 107
    new-array v8, v6, [B

    .line 108
    .line 109
    invoke-virtual {v4, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 110
    .line 111
    .line 112
    const/16 v4, 0xb

    .line 113
    .line 114
    invoke-static {v8, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    if-eqz v8, :cond_1

    .line 119
    .line 120
    const-string v10, "state cannot be empty if defined"

    .line 121
    .line 122
    invoke-static {v8, v10}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    iput-object v8, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mState:Ljava/lang/Object;

    .line 126
    .line 127
    new-instance v8, Ljava/security/SecureRandom;

    .line 128
    .line 129
    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    .line 130
    .line 131
    .line 132
    new-array v6, v6, [B

    .line 133
    .line 134
    invoke-virtual {v8, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 135
    .line 136
    .line 137
    invoke-static {v6, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    if-eqz v6, :cond_2

    .line 142
    .line 143
    const-string v8, "nonce cannot be empty if defined"

    .line 144
    .line 145
    invoke-static {v6, v8}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_2
    iput-object v6, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mNonce:Ljava/lang/Object;

    .line 149
    .line 150
    sget-object v6, Lnet/openid/appauth/CodeVerifierUtil;->REGEX_CODE_VERIFIER:Ljava/util/regex/Pattern;

    .line 151
    .line 152
    new-instance v6, Ljava/security/SecureRandom;

    .line 153
    .line 154
    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    .line 155
    .line 156
    .line 157
    const/16 v8, 0x40

    .line 158
    .line 159
    new-array v10, v8, [B

    .line 160
    .line 161
    invoke-virtual {v6, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 162
    .line 163
    .line 164
    invoke-static {v10, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v5, v6}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setCodeVerifier(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance v6, Ljava/security/SecureRandom;

    .line 172
    .line 173
    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    .line 174
    .line 175
    .line 176
    new-array v8, v8, [B

    .line 177
    .line 178
    invoke-virtual {v6, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 179
    .line 180
    .line 181
    invoke-static {v8, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    iget-object v10, v2, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;->scopes:Ljava/util/List;

    .line 186
    .line 187
    const/4 v14, 0x0

    .line 188
    const/16 v15, 0x3e

    .line 189
    .line 190
    const-string v11, " "

    .line 191
    .line 192
    const/4 v12, 0x0

    .line 193
    const/4 v13, 0x0

    .line 194
    invoke-static/range {v10 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    const/4 v8, 0x0

    .line 203
    if-eqz v6, :cond_3

    .line 204
    .line 205
    iput-object v7, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/Object;

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_3
    const-string v6, " +"

    .line 209
    .line 210
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    if-nez v2, :cond_4

    .line 215
    .line 216
    new-array v2, v8, [Ljava/lang/String;

    .line 217
    .line 218
    :cond_4
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-static {v2}, Lorg/jsoup/Jsoup;->iterableToString(Ljava/util/List;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    iput-object v2, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/Object;

    .line 227
    .line 228
    :goto_0
    invoke-virtual {v5, v4}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setCodeVerifier(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-nez v2, :cond_5

    .line 236
    .line 237
    const-string v2, "login hint must be null or not empty"

    .line 238
    .line 239
    invoke-static {v1, v2}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iput-object v1, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mLoginHint:Ljava/lang/Object;

    .line 243
    .line 244
    :cond_5
    new-instance v10, Lnet/openid/appauth/AuthorizationRequest;

    .line 245
    .line 246
    iget-object v1, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mConfiguration:Ljava/lang/Object;

    .line 247
    .line 248
    move-object v11, v1

    .line 249
    check-cast v11, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 250
    .line 251
    iget-object v1, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClientId:Ljava/lang/Object;

    .line 252
    .line 253
    move-object v12, v1

    .line 254
    check-cast v12, Ljava/lang/String;

    .line 255
    .line 256
    iget-object v1, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/Object;

    .line 257
    .line 258
    move-object v13, v1

    .line 259
    check-cast v13, Ljava/lang/String;

    .line 260
    .line 261
    iget-object v1, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mRedirectUri:Ljava/lang/Object;

    .line 262
    .line 263
    move-object v14, v1

    .line 264
    check-cast v14, Landroid/net/Uri;

    .line 265
    .line 266
    iget-object v1, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mLoginHint:Ljava/lang/Object;

    .line 267
    .line 268
    move-object/from16 v16, v1

    .line 269
    .line 270
    check-cast v16, Ljava/lang/String;

    .line 271
    .line 272
    iget-object v1, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/Object;

    .line 273
    .line 274
    move-object/from16 v19, v1

    .line 275
    .line 276
    check-cast v19, Ljava/lang/String;

    .line 277
    .line 278
    iget-object v1, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mState:Ljava/lang/Object;

    .line 279
    .line 280
    move-object/from16 v20, v1

    .line 281
    .line 282
    check-cast v20, Ljava/lang/String;

    .line 283
    .line 284
    iget-object v1, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mNonce:Ljava/lang/Object;

    .line 285
    .line 286
    move-object/from16 v21, v1

    .line 287
    .line 288
    check-cast v21, Ljava/lang/String;

    .line 289
    .line 290
    iget-object v1, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/Object;

    .line 291
    .line 292
    move-object/from16 v22, v1

    .line 293
    .line 294
    check-cast v22, Ljava/lang/String;

    .line 295
    .line 296
    iget-object v1, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/Object;

    .line 297
    .line 298
    move-object/from16 v23, v1

    .line 299
    .line 300
    check-cast v23, Ljava/lang/String;

    .line 301
    .line 302
    iget-object v1, v5, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/Object;

    .line 303
    .line 304
    move-object/from16 v24, v1

    .line 305
    .line 306
    check-cast v24, Ljava/lang/String;

    .line 307
    .line 308
    new-instance v1, Ljava/util/HashMap;

    .line 309
    .line 310
    invoke-direct {v1, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 311
    .line 312
    .line 313
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 314
    .line 315
    .line 316
    move-result-object v28

    .line 317
    const/4 v15, 0x0

    .line 318
    const/16 v17, 0x0

    .line 319
    .line 320
    const/16 v18, 0x0

    .line 321
    .line 322
    const/16 v25, 0x0

    .line 323
    .line 324
    const/16 v26, 0x0

    .line 325
    .line 326
    const/16 v27, 0x0

    .line 327
    .line 328
    invoke-direct/range {v10 .. v28}, Lnet/openid/appauth/AuthorizationRequest;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    .line 329
    .line 330
    .line 331
    iget-object v0, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;->repository:Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;

    .line 332
    .line 333
    iget-object v0, v0, Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;->service:Lnet/openid/appauth/AuthorizationService;

    .line 334
    .line 335
    iget-boolean v1, v0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    .line 336
    .line 337
    const-string v2, "Service has been disposed and rendered inoperable"

    .line 338
    .line 339
    if-nez v1, :cond_10

    .line 340
    .line 341
    iget-object v1, v0, Lnet/openid/appauth/AuthorizationService;->mCustomTabManager:Lokhttp3/Dispatcher;

    .line 342
    .line 343
    iget-object v4, v1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v4, Ljava/util/concurrent/CountDownLatch;

    .line 346
    .line 347
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 348
    .line 349
    const-wide/16 v11, 0x1

    .line 350
    .line 351
    invoke-virtual {v4, v11, v12, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .line 353
    .line 354
    goto :goto_1

    .line 355
    :catch_0
    new-array v5, v8, [Ljava/lang/Object;

    .line 356
    .line 357
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    const/4 v9, 0x4

    .line 362
    const-string v11, "Interrupted while waiting for browser connection"

    .line 363
    .line 364
    invoke-virtual {v6, v9, v7, v11, v5}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 368
    .line 369
    .line 370
    :goto_1
    iget-object v1, v1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    check-cast v1, Landroidx/browser/customtabs/CustomTabsServiceConnection$1;

    .line 379
    .line 380
    if-nez v1, :cond_6

    .line 381
    .line 382
    :goto_2
    move-object v6, v7

    .line 383
    goto :goto_5

    .line 384
    :cond_6
    iget-object v4, v1, Landroidx/browser/customtabs/CustomTabsServiceConnection$1;->mService:Landroid/support/customtabs/ICustomTabsService;

    .line 385
    .line 386
    new-instance v5, Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 387
    .line 388
    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    .line 389
    .line 390
    .line 391
    const-string v6, "android.support.customtabs.ICustomTabsCallback"

    .line 392
    .line 393
    invoke-virtual {v5, v5, v6}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    new-instance v6, Landroid/os/Handler;

    .line 397
    .line 398
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 399
    .line 400
    .line 401
    move-result-object v9

    .line 402
    invoke-direct {v6, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 403
    .line 404
    .line 405
    :try_start_1
    move-object v6, v4

    .line 406
    check-cast v6, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;

    .line 407
    .line 408
    invoke-virtual {v6, v5}, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;->newSession(Landroidx/browser/customtabs/CustomTabsClient$2;)Z

    .line 409
    .line 410
    .line 411
    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 412
    if-nez v6, :cond_7

    .line 413
    .line 414
    goto :goto_3

    .line 415
    :cond_7
    new-instance v6, Landroidx/cardview/widget/CardView$1;

    .line 416
    .line 417
    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsServiceConnection$1;->mServiceComponentName:Landroid/content/ComponentName;

    .line 418
    .line 419
    invoke-direct {v6, v4, v5, v1}, Landroidx/cardview/widget/CardView$1;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroidx/browser/customtabs/CustomTabsClient$2;Landroid/content/ComponentName;)V

    .line 420
    .line 421
    .line 422
    goto :goto_4

    .line 423
    :catch_1
    :goto_3
    move-object v6, v7

    .line 424
    :goto_4
    if-nez v6, :cond_8

    .line 425
    .line 426
    new-array v1, v8, [Ljava/lang/Object;

    .line 427
    .line 428
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    const/4 v5, 0x5

    .line 433
    const-string v6, "Failed to create custom tabs session through custom tabs client"

    .line 434
    .line 435
    invoke-virtual {v4, v5, v7, v6, v1}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    goto :goto_2

    .line 439
    :cond_8
    :goto_5
    new-instance v1, Landroid/content/Intent;

    .line 440
    .line 441
    const-string v4, "android.intent.action.VIEW"

    .line 442
    .line 443
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    const-string v5, "android.support.customtabs.extra.SESSION"

    .line 447
    .line 448
    if-eqz v6, :cond_9

    .line 449
    .line 450
    iget-object v9, v6, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v9, Landroid/content/ComponentName;

    .line 453
    .line 454
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v9

    .line 458
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    .line 460
    .line 461
    iget-object v6, v6, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v6, Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 464
    .line 465
    new-instance v9, Landroid/os/Bundle;

    .line 466
    .line 467
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v9, v5, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 474
    .line 475
    .line 476
    :cond_9
    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 477
    .line 478
    .line 479
    move-result v6

    .line 480
    if-nez v6, :cond_a

    .line 481
    .line 482
    new-instance v6, Landroid/os/Bundle;

    .line 483
    .line 484
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 491
    .line 492
    .line 493
    :cond_a
    const-string v5, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 494
    .line 495
    const/4 v6, 0x1

    .line 496
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 497
    .line 498
    .line 499
    new-instance v5, Landroid/os/Bundle;

    .line 500
    .line 501
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 505
    .line 506
    .line 507
    const-string v5, "androidx.browser.customtabs.extra.SHARE_STATE"

    .line 508
    .line 509
    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    .line 511
    .line 512
    iget-boolean v5, v0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    .line 513
    .line 514
    if-nez v5, :cond_f

    .line 515
    .line 516
    iget-object v2, v0, Lnet/openid/appauth/AuthorizationService;->mBrowser:Lnet/openid/appauth/browser/BrowserDescriptor;

    .line 517
    .line 518
    if-eqz v2, :cond_e

    .line 519
    .line 520
    iget-object v5, v2, Lnet/openid/appauth/browser/BrowserDescriptor;->useCustomTab:Ljava/lang/Boolean;

    .line 521
    .line 522
    iget-object v9, v10, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 523
    .line 524
    iget-object v9, v9, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v9, Landroid/net/Uri;

    .line 527
    .line 528
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 529
    .line 530
    .line 531
    move-result-object v9

    .line 532
    iget-object v11, v10, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    .line 533
    .line 534
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v11

    .line 538
    const-string v12, "redirect_uri"

    .line 539
    .line 540
    invoke-virtual {v9, v12, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 541
    .line 542
    .line 543
    move-result-object v9

    .line 544
    const-string v11, "client_id"

    .line 545
    .line 546
    iget-object v12, v10, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {v9, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 549
    .line 550
    .line 551
    move-result-object v9

    .line 552
    const-string v11, "response_type"

    .line 553
    .line 554
    iget-object v12, v10, Lnet/openid/appauth/AuthorizationRequest;->responseType:Ljava/lang/String;

    .line 555
    .line 556
    invoke-virtual {v9, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 557
    .line 558
    .line 559
    move-result-object v9

    .line 560
    const-string v11, "display"

    .line 561
    .line 562
    iget-object v12, v10, Lnet/openid/appauth/AuthorizationRequest;->display:Ljava/lang/String;

    .line 563
    .line 564
    invoke-static {v9, v11, v12}, Lkotlin/io/ByteStreamsKt;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    const-string v11, "login_hint"

    .line 568
    .line 569
    iget-object v12, v10, Lnet/openid/appauth/AuthorizationRequest;->loginHint:Ljava/lang/String;

    .line 570
    .line 571
    invoke-static {v9, v11, v12}, Lkotlin/io/ByteStreamsKt;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    const-string v11, "prompt"

    .line 575
    .line 576
    iget-object v12, v10, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    .line 577
    .line 578
    invoke-static {v9, v11, v12}, Lkotlin/io/ByteStreamsKt;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    const-string v11, "ui_locales"

    .line 582
    .line 583
    iget-object v12, v10, Lnet/openid/appauth/AuthorizationRequest;->uiLocales:Ljava/lang/String;

    .line 584
    .line 585
    invoke-static {v9, v11, v12}, Lkotlin/io/ByteStreamsKt;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    const-string v11, "state"

    .line 589
    .line 590
    iget-object v12, v10, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    .line 591
    .line 592
    invoke-static {v9, v11, v12}, Lkotlin/io/ByteStreamsKt;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    const-string v11, "nonce"

    .line 596
    .line 597
    iget-object v12, v10, Lnet/openid/appauth/AuthorizationRequest;->nonce:Ljava/lang/String;

    .line 598
    .line 599
    invoke-static {v9, v11, v12}, Lkotlin/io/ByteStreamsKt;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    const-string v11, "scope"

    .line 603
    .line 604
    iget-object v12, v10, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    .line 605
    .line 606
    invoke-static {v9, v11, v12}, Lkotlin/io/ByteStreamsKt;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    const-string v11, "response_mode"

    .line 610
    .line 611
    iget-object v12, v10, Lnet/openid/appauth/AuthorizationRequest;->responseMode:Ljava/lang/String;

    .line 612
    .line 613
    invoke-static {v9, v11, v12}, Lkotlin/io/ByteStreamsKt;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    iget-object v11, v10, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    .line 617
    .line 618
    if-eqz v11, :cond_b

    .line 619
    .line 620
    const-string v11, "code_challenge"

    .line 621
    .line 622
    iget-object v12, v10, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallenge:Ljava/lang/String;

    .line 623
    .line 624
    invoke-virtual {v9, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 625
    .line 626
    .line 627
    move-result-object v11

    .line 628
    const-string v12, "code_challenge_method"

    .line 629
    .line 630
    iget-object v13, v10, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallengeMethod:Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v11, v12, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 633
    .line 634
    .line 635
    :cond_b
    const-string v11, "claims"

    .line 636
    .line 637
    iget-object v12, v10, Lnet/openid/appauth/AuthorizationRequest;->claims:Lorg/json/JSONObject;

    .line 638
    .line 639
    invoke-static {v9, v11, v12}, Lkotlin/io/ByteStreamsKt;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 640
    .line 641
    .line 642
    const-string v11, "claims_locales"

    .line 643
    .line 644
    iget-object v12, v10, Lnet/openid/appauth/AuthorizationRequest;->claimsLocales:Ljava/lang/String;

    .line 645
    .line 646
    invoke-static {v9, v11, v12}, Lkotlin/io/ByteStreamsKt;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 647
    .line 648
    .line 649
    iget-object v11, v10, Lnet/openid/appauth/AuthorizationRequest;->additionalParameters:Ljava/util/Map;

    .line 650
    .line 651
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 652
    .line 653
    .line 654
    move-result-object v11

    .line 655
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 656
    .line 657
    .line 658
    move-result-object v11

    .line 659
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 660
    .line 661
    .line 662
    move-result v12

    .line 663
    if-eqz v12, :cond_c

    .line 664
    .line 665
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v12

    .line 669
    check-cast v12, Ljava/util/Map$Entry;

    .line 670
    .line 671
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v13

    .line 675
    check-cast v13, Ljava/lang/String;

    .line 676
    .line 677
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v12

    .line 681
    check-cast v12, Ljava/lang/String;

    .line 682
    .line 683
    invoke-virtual {v9, v13, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 684
    .line 685
    .line 686
    goto :goto_6

    .line 687
    :cond_c
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 688
    .line 689
    .line 690
    move-result-object v9

    .line 691
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 692
    .line 693
    .line 694
    move-result v11

    .line 695
    if-eqz v11, :cond_d

    .line 696
    .line 697
    goto :goto_7

    .line 698
    :cond_d
    new-instance v1, Landroid/content/Intent;

    .line 699
    .line 700
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    :goto_7
    iget-object v2, v2, Lnet/openid/appauth/browser/BrowserDescriptor;->packageName:Ljava/lang/String;

    .line 704
    .line 705
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v4

    .line 719
    const/4 v5, 0x2

    .line 720
    new-array v5, v5, [Ljava/lang/Object;

    .line 721
    .line 722
    aput-object v2, v5, v8

    .line 723
    .line 724
    aput-object v4, v5, v6

    .line 725
    .line 726
    const-string v2, "Using %s as browser for auth, custom tab = %s"

    .line 727
    .line 728
    invoke-static {v2, v5}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    .line 730
    .line 731
    iget-object v0, v0, Lnet/openid/appauth/AuthorizationService;->mContext:Landroid/content/Context;

    .line 732
    .line 733
    sget v2, Lnet/openid/appauth/AuthorizationManagementActivity;->$r8$clinit:I

    .line 734
    .line 735
    new-instance v2, Landroid/content/Intent;

    .line 736
    .line 737
    const-class v4, Lnet/openid/appauth/AuthorizationManagementActivity;

    .line 738
    .line 739
    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 740
    .line 741
    .line 742
    const-string v0, "authIntent"

    .line 743
    .line 744
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 745
    .line 746
    .line 747
    const-string v0, "authRequest"

    .line 748
    .line 749
    invoke-virtual {v10}, Lnet/openid/appauth/AuthorizationRequest;->jsonSerializeString()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    .line 755
    .line 756
    const-string v0, "authRequestType"

    .line 757
    .line 758
    const-string v1, "authorization"

    .line 759
    .line 760
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    .line 762
    .line 763
    const-string v0, "completeIntent"

    .line 764
    .line 765
    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 766
    .line 767
    .line 768
    const-string v0, "cancelIntent"

    .line 769
    .line 770
    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 771
    .line 772
    .line 773
    invoke-direct {v3, v2}, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationIntentResult$Success;-><init>(Landroid/content/Intent;)V

    .line 774
    .line 775
    .line 776
    return-object v3

    .line 777
    :cond_e
    new-instance v0, Landroid/content/ActivityNotFoundException;

    .line 778
    .line 779
    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    .line 780
    .line 781
    .line 782
    throw v0

    .line 783
    :cond_f
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    return-object v7

    .line 787
    :cond_10
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    return-object v7
.end method
