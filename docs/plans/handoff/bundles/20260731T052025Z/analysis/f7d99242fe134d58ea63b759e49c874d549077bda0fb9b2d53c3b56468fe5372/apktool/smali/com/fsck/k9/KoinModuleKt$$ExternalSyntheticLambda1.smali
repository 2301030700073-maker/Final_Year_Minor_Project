.class public final synthetic Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const-class v1, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;

    .line 6
    .line 7
    const-class v2, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 8
    .line 9
    const-class v3, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 10
    .line 11
    const-class v4, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 12
    .line 13
    const-class v5, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 14
    .line 15
    const-class v6, Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 16
    .line 17
    const-class v7, Lnet/thunderbird/core/logging/Logger;

    .line 18
    .line 19
    const-class v8, Lcom/fsck/k9/Preferences;

    .line 20
    .line 21
    const-class v9, Landroid/content/Context;

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    move-object/from16 v0, p1

    .line 28
    .line 29
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 30
    .line 31
    move-object/from16 v1, p2

    .line 32
    .line 33
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 34
    .line 35
    invoke-static {v0, v1, v9, v10, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :pswitch_0
    move-object/from16 v0, p1

    .line 47
    .line 48
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 49
    .line 50
    move-object/from16 v1, p2

    .line 51
    .line 52
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 53
    .line 54
    invoke-static {v0, v1, v8, v10, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :pswitch_1
    move-object/from16 v0, p1

    .line 66
    .line 67
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 68
    .line 69
    move-object/from16 v1, p2

    .line 70
    .line 71
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 72
    .line 73
    invoke-static {v0, v1, v8, v10, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getStorage()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0

    .line 84
    :pswitch_2
    move-object/from16 v0, p1

    .line 85
    .line 86
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 87
    .line 88
    move-object/from16 v1, p2

    .line 89
    .line 90
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    new-instance v1, Lcom/fsck/k9/Preferences;

    .line 99
    .line 100
    const-class v2, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 101
    .line 102
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 111
    .line 112
    const-class v3, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 113
    .line 114
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 123
    .line 124
    const-class v4, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;

    .line 125
    .line 126
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;

    .line 135
    .line 136
    const-class v5, Lnet/thunderbird/core/android/account/AccountDefaultsProvider;

    .line 137
    .line 138
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lnet/thunderbird/core/android/account/AccountDefaultsProvider;

    .line 147
    .line 148
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/fsck/k9/Preferences;-><init>(Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/mailstore/LocalStoreProvider;Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;Lnet/thunderbird/core/android/account/AccountDefaultsProvider;)V

    .line 149
    .line 150
    .line 151
    return-object v1

    .line 152
    :pswitch_3
    move-object/from16 v0, p1

    .line 153
    .line 154
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 155
    .line 156
    move-object/from16 v1, p2

    .line 157
    .line 158
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    new-instance v0, Lcom/fsck/k9/EmailAddressValidator;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 169
    .line 170
    .line 171
    return-object v0

    .line 172
    :pswitch_4
    move-object/from16 v0, p1

    .line 173
    .line 174
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 175
    .line 176
    move-object/from16 v1, p2

    .line 177
    .line 178
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    new-instance v1, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 187
    .line 188
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    check-cast v2, Landroid/content/Context;

    .line 197
    .line 198
    const-class v3, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;

    .line 199
    .line 200
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;

    .line 209
    .line 210
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;-><init>(Landroid/content/Context;Lcom/fsck/k9/mail/ssl/TrustManagerFactory;)V

    .line 211
    .line 212
    .line 213
    return-object v1

    .line 214
    :pswitch_5
    move-object/from16 v0, p1

    .line 215
    .line 216
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 217
    .line 218
    move-object/from16 v1, p2

    .line 219
    .line 220
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    new-instance v1, Lcom/fsck/k9/LocalKeyStoreManager;

    .line 229
    .line 230
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    check-cast v0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 239
    .line 240
    invoke-direct {v1, v0}, Lcom/fsck/k9/LocalKeyStoreManager;-><init>(Lcom/fsck/k9/mail/ssl/LocalKeyStore;)V

    .line 241
    .line 242
    .line 243
    return-object v1

    .line 244
    :pswitch_6
    move-object/from16 v0, p1

    .line 245
    .line 246
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 247
    .line 248
    move-object/from16 v1, p2

    .line 249
    .line 250
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 251
    .line 252
    invoke-static {v0, v1, v6, v10, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 257
    .line 258
    new-instance v1, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;

    .line 259
    .line 260
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;-><init>(Lcom/fsck/k9/mail/ssl/LocalKeyStore;)V

    .line 261
    .line 262
    .line 263
    :try_start_0
    invoke-virtual {v1}, Lcom/fsck/k9/mail/ssl/TrustManagerFactory;->initialize()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .line 265
    .line 266
    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    const/4 v1, 0x0

    .line 269
    new-array v1, v1, [Ljava/lang/Object;

    .line 270
    .line 271
    const-string v2, "Failed to initialize X509 Trust Manager!"

    .line 272
    .line 273
    invoke-static {v0, v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 277
    .line 278
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    throw v1

    .line 282
    :pswitch_7
    move-object/from16 v0, p1

    .line 283
    .line 284
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 285
    .line 286
    move-object/from16 v1, p2

    .line 287
    .line 288
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    new-instance v1, Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 297
    .line 298
    const-class v2, Lcom/fsck/k9/helper/AndroidKeyStoreDirectoryProvider;

    .line 299
    .line 300
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, Lcom/fsck/k9/helper/AndroidKeyStoreDirectoryProvider;

    .line 309
    .line 310
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;-><init>(Lcom/fsck/k9/helper/AndroidKeyStoreDirectoryProvider;)V

    .line 311
    .line 312
    .line 313
    return-object v1

    .line 314
    :pswitch_8
    move-object/from16 v0, p1

    .line 315
    .line 316
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 317
    .line 318
    move-object/from16 v1, p2

    .line 319
    .line 320
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    new-instance v0, Lcom/fsck/k9/helper/Contacts;

    .line 329
    .line 330
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 331
    .line 332
    .line 333
    return-object v0

    .line 334
    :pswitch_9
    move-object/from16 v0, p1

    .line 335
    .line 336
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 337
    .line 338
    move-object/from16 v1, p2

    .line 339
    .line 340
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 349
    .line 350
    invoke-direct {v0}, Lcom/fsck/k9/mailstore/LocalStoreProvider;-><init>()V

    .line 351
    .line 352
    .line 353
    return-object v0

    .line 354
    :pswitch_a
    move-object/from16 v0, p1

    .line 355
    .line 356
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 357
    .line 358
    move-object/from16 v1, p2

    .line 359
    .line 360
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    new-instance v0, Lapp/k9mail/widget/K9UnreadWidgetConfig;

    .line 369
    .line 370
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 371
    .line 372
    .line 373
    return-object v0

    .line 374
    :pswitch_b
    move-object/from16 v0, p1

    .line 375
    .line 376
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 377
    .line 378
    move-object/from16 v1, p2

    .line 379
    .line 380
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    new-instance v0, Lapp/k9mail/widget/K9MessageListWidgetConfig;

    .line 389
    .line 390
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 391
    .line 392
    .line 393
    return-object v0

    .line 394
    :pswitch_c
    move-object/from16 v0, p1

    .line 395
    .line 396
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 397
    .line 398
    move-object/from16 v1, p2

    .line 399
    .line 400
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    new-instance v0, Lapp/k9mail/provider/K9AppNotificationIconProvider;

    .line 409
    .line 410
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 411
    .line 412
    .line 413
    return-object v0

    .line 414
    :pswitch_d
    move-object/from16 v0, p1

    .line 415
    .line 416
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 417
    .line 418
    move-object/from16 v1, p2

    .line 419
    .line 420
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    new-instance v0, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 429
    .line 430
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 431
    .line 432
    .line 433
    return-object v0

    .line 434
    :pswitch_e
    move-object/from16 v0, p1

    .line 435
    .line 436
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 437
    .line 438
    move-object/from16 v1, p2

    .line 439
    .line 440
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 441
    .line 442
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    new-instance v0, Lapp/k9mail/provider/K9ThemeProvider;

    .line 449
    .line 450
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 451
    .line 452
    .line 453
    return-object v0

    .line 454
    :pswitch_f
    move-object/from16 v0, p1

    .line 455
    .line 456
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 457
    .line 458
    move-object/from16 v1, p2

    .line 459
    .line 460
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    new-instance v1, Lapp/k9mail/provider/K9AppNameProvider;

    .line 469
    .line 470
    invoke-static {v0}, Lokio/Okio;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-direct {v1, v0}, Lapp/k9mail/provider/K9AppNameProvider;-><init>(Landroid/content/Context;)V

    .line 475
    .line 476
    .line 477
    return-object v1

    .line 478
    :pswitch_10
    move-object/from16 v0, p1

    .line 479
    .line 480
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 481
    .line 482
    move-object/from16 v1, p2

    .line 483
    .line 484
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    new-instance v1, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 493
    .line 494
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 503
    .line 504
    const-class v3, Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 505
    .line 506
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    check-cast v3, Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 515
    .line 516
    const-class v5, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 517
    .line 518
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    check-cast v5, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 527
    .line 528
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    check-cast v0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 537
    .line 538
    invoke-direct {v1, v5, v3, v0, v2}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;-><init>(Lapp/k9mail/legacy/mailstore/MessageStoreManager;Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;)V

    .line 539
    .line 540
    .line 541
    return-object v1

    .line 542
    :pswitch_11
    move-object/from16 v0, p1

    .line 543
    .line 544
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 545
    .line 546
    move-object/from16 v1, p2

    .line 547
    .line 548
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 549
    .line 550
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    new-instance v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;

    .line 557
    .line 558
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    check-cast v2, Lcom/fsck/k9/Preferences;

    .line 567
    .line 568
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    check-cast v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 577
    .line 578
    invoke-direct {v1, v2, v0}, Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;-><init>(Lcom/fsck/k9/Preferences;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;)V

    .line 579
    .line 580
    .line 581
    return-object v1

    .line 582
    :pswitch_12
    move-object/from16 v0, p1

    .line 583
    .line 584
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 585
    .line 586
    move-object/from16 v1, p2

    .line 587
    .line 588
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 589
    .line 590
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    new-instance v1, Lcom/fsck/k9/controller/MessagingController$8;

    .line 597
    .line 598
    const-class v2, Lapp/k9mail/feature/widget/unread/UnreadWidgetUpdater;

    .line 599
    .line 600
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    check-cast v2, Lapp/k9mail/feature/widget/unread/UnreadWidgetUpdater;

    .line 609
    .line 610
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 619
    .line 620
    const/4 v3, 0x1

    .line 621
    invoke-direct {v1, v3, v2, v0}, Lcom/fsck/k9/controller/MessagingController$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    return-object v1

    .line 625
    :pswitch_13
    move-object/from16 v0, p1

    .line 626
    .line 627
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 628
    .line 629
    move-object/from16 v1, p2

    .line 630
    .line 631
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 632
    .line 633
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    new-instance v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetUpdater;

    .line 640
    .line 641
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v2

    .line 649
    check-cast v2, Landroid/content/Context;

    .line 650
    .line 651
    const-class v3, Lapp/k9mail/widget/K9UnreadWidgetConfig;

    .line 652
    .line 653
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    check-cast v0, Lapp/k9mail/widget/K9UnreadWidgetConfig;

    .line 662
    .line 663
    invoke-direct {v1, v2, v0}, Lapp/k9mail/feature/widget/unread/UnreadWidgetUpdater;-><init>(Landroid/content/Context;Lapp/k9mail/widget/K9UnreadWidgetConfig;)V

    .line 664
    .line 665
    .line 666
    return-object v1

    .line 667
    :pswitch_14
    move-object/from16 v0, p1

    .line 668
    .line 669
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 670
    .line 671
    move-object/from16 v1, p2

    .line 672
    .line 673
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 674
    .line 675
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 679
    .line 680
    .line 681
    new-instance v11, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

    .line 682
    .line 683
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    move-object v12, v1

    .line 692
    check-cast v12, Landroid/content/Context;

    .line 693
    .line 694
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    move-object v13, v1

    .line 703
    check-cast v13, Lcom/fsck/k9/Preferences;

    .line 704
    .line 705
    const-class v1, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 706
    .line 707
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    move-object v14, v1

    .line 716
    check-cast v14, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 717
    .line 718
    const-class v1, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 719
    .line 720
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    move-object v15, v1

    .line 729
    check-cast v15, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 730
    .line 731
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v1

    .line 739
    move-object/from16 v16, v1

    .line 740
    .line 741
    check-cast v16, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 742
    .line 743
    const-class v1, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 744
    .line 745
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    move-object/from16 v17, v1

    .line 754
    .line 755
    check-cast v17, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 756
    .line 757
    const-class v1, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 758
    .line 759
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    move-object/from16 v18, v1

    .line 768
    .line 769
    check-cast v18, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 770
    .line 771
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    move-object/from16 v19, v0

    .line 780
    .line 781
    check-cast v19, Lnet/thunderbird/core/logging/Logger;

    .line 782
    .line 783
    invoke-direct/range {v11 .. v19}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;-><init>(Landroid/content/Context;Lcom/fsck/k9/Preferences;Lcom/fsck/k9/controller/DefaultMessageCountsProvider;Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;Lcom/fsck/k9/resources/K9CoreResourceProvider;Lnet/thunderbird/core/logging/Logger;)V

    .line 784
    .line 785
    .line 786
    return-object v11

    .line 787
    :pswitch_15
    move-object/from16 v0, p1

    .line 788
    .line 789
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 790
    .line 791
    move-object/from16 v1, p2

    .line 792
    .line 793
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 794
    .line 795
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 799
    .line 800
    .line 801
    new-instance v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;

    .line 802
    .line 803
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v2

    .line 811
    check-cast v2, Landroid/content/Context;

    .line 812
    .line 813
    const-class v3, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

    .line 814
    .line 815
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 816
    .line 817
    .line 818
    move-result-object v3

    .line 819
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    check-cast v3, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

    .line 824
    .line 825
    const-class v4, Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;

    .line 826
    .line 827
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 828
    .line 829
    .line 830
    move-result-object v4

    .line 831
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    check-cast v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;

    .line 836
    .line 837
    invoke-direct {v1, v2, v3, v0}, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;-><init>(Landroid/content/Context;Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;)V

    .line 838
    .line 839
    .line 840
    return-object v1

    .line 841
    :pswitch_16
    move-object/from16 v0, p1

    .line 842
    .line 843
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 844
    .line 845
    move-object/from16 v1, p2

    .line 846
    .line 847
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 848
    .line 849
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 853
    .line 854
    .line 855
    new-instance v11, Lapp/k9mail/feature/widget/message/list/MessageListLoader;

    .line 856
    .line 857
    const-class v1, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 858
    .line 859
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    move-object v12, v1

    .line 868
    check-cast v12, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 869
    .line 870
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    move-object v13, v1

    .line 879
    check-cast v13, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 880
    .line 881
    const-class v1, Lcom/fsck/k9/helper/MessageHelper;

    .line 882
    .line 883
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 884
    .line 885
    .line 886
    move-result-object v1

    .line 887
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v1

    .line 891
    move-object v14, v1

    .line 892
    check-cast v14, Lcom/fsck/k9/helper/MessageHelper;

    .line 893
    .line 894
    const-class v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 895
    .line 896
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 897
    .line 898
    .line 899
    move-result-object v1

    .line 900
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    move-object v15, v1

    .line 905
    check-cast v15, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 906
    .line 907
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 908
    .line 909
    .line 910
    move-result-object v1

    .line 911
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    move-object/from16 v16, v0

    .line 916
    .line 917
    check-cast v16, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 918
    .line 919
    invoke-direct/range {v11 .. v16}, Lapp/k9mail/feature/widget/message/list/MessageListLoader;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/DefaultMessageListRepository;Lcom/fsck/k9/helper/MessageHelper;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;)V

    .line 920
    .line 921
    .line 922
    return-object v11

    .line 923
    :pswitch_17
    move-object/from16 v0, p1

    .line 924
    .line 925
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 926
    .line 927
    move-object/from16 v1, p2

    .line 928
    .line 929
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 930
    .line 931
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 935
    .line 936
    .line 937
    new-instance v1, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;

    .line 938
    .line 939
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 940
    .line 941
    .line 942
    move-result-object v3

    .line 943
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v3

    .line 947
    check-cast v3, Landroid/content/Context;

    .line 948
    .line 949
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 950
    .line 951
    .line 952
    move-result-object v2

    .line 953
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v2

    .line 957
    check-cast v2, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 958
    .line 959
    const-class v4, Lapp/k9mail/widget/K9MessageListWidgetConfig;

    .line 960
    .line 961
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 962
    .line 963
    .line 964
    move-result-object v4

    .line 965
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    check-cast v0, Lapp/k9mail/widget/K9MessageListWidgetConfig;

    .line 970
    .line 971
    invoke-direct {v1, v3, v2, v0}, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;-><init>(Landroid/content/Context;Lcom/fsck/k9/mailstore/DefaultMessageListRepository;Lapp/k9mail/widget/K9MessageListWidgetConfig;)V

    .line 972
    .line 973
    .line 974
    return-object v1

    .line 975
    :pswitch_18
    move-object/from16 v0, p1

    .line 976
    .line 977
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 978
    .line 979
    move-object/from16 v1, p2

    .line 980
    .line 981
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 982
    .line 983
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 984
    .line 985
    .line 986
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 987
    .line 988
    .line 989
    new-instance v0, Lapp/k9mail/feature/telemetry/noop/NoOpTelemetryManager;

    .line 990
    .line 991
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 992
    .line 993
    .line 994
    return-object v0

    .line 995
    :pswitch_19
    move-object/from16 v0, p1

    .line 996
    .line 997
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 998
    .line 999
    move-object/from16 v2, p2

    .line 1000
    .line 1001
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1002
    .line 1003
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1007
    .line 1008
    .line 1009
    new-instance v2, Lapp/k9mail/feature/settings/import/ui/PickAppViewModel;

    .line 1010
    .line 1011
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v1

    .line 1015
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;

    .line 1020
    .line 1021
    invoke-direct {v2, v0}, Lapp/k9mail/feature/settings/import/ui/PickAppViewModel;-><init>(Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;)V

    .line 1022
    .line 1023
    .line 1024
    return-object v2

    .line 1025
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1026
    .line 1027
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1028
    .line 1029
    move-object/from16 v1, p2

    .line 1030
    .line 1031
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1032
    .line 1033
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1037
    .line 1038
    .line 1039
    new-instance v1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 1040
    .line 1041
    const-class v2, Landroid/app/Application;

    .line 1042
    .line 1043
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v2

    .line 1047
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v2

    .line 1051
    check-cast v2, Landroid/app/Application;

    .line 1052
    .line 1053
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v3

    .line 1057
    invoke-virtual {v0, v3, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v3

    .line 1061
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 1062
    .line 1063
    const-class v4, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

    .line 1064
    .line 1065
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v4

    .line 1069
    invoke-virtual {v0, v4, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v4

    .line 1073
    check-cast v4, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

    .line 1074
    .line 1075
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v5

    .line 1079
    invoke-virtual {v0, v5, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v0

    .line 1083
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 1084
    .line 1085
    invoke-direct {v1, v2, v3, v4, v0}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;-><init>(Landroid/app/Application;Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;Lnet/thunderbird/core/logging/Logger;)V

    .line 1086
    .line 1087
    .line 1088
    return-object v1

    .line 1089
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1090
    .line 1091
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1092
    .line 1093
    move-object/from16 v2, p2

    .line 1094
    .line 1095
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1096
    .line 1097
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1101
    .line 1102
    .line 1103
    new-instance v11, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 1104
    .line 1105
    const-class v2, Landroid/content/ContentResolver;

    .line 1106
    .line 1107
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v2

    .line 1111
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v2

    .line 1115
    move-object v12, v2

    .line 1116
    check-cast v12, Landroid/content/ContentResolver;

    .line 1117
    .line 1118
    const-class v2, Lcom/fsck/k9/preferences/SettingsImporter;

    .line 1119
    .line 1120
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v2

    .line 1124
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v2

    .line 1128
    move-object v13, v2

    .line 1129
    check-cast v13, Lcom/fsck/k9/preferences/SettingsImporter;

    .line 1130
    .line 1131
    const-class v2, Lcom/fsck/k9/account/AccountActivator;

    .line 1132
    .line 1133
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v2

    .line 1137
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v2

    .line 1141
    move-object v14, v2

    .line 1142
    check-cast v14, Lcom/fsck/k9/account/AccountActivator;

    .line 1143
    .line 1144
    const-class v2, Lapp/k9mail/feature/migration/launcher/k9/K9MigrationManager;

    .line 1145
    .line 1146
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    invoke-virtual {v0, v2, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v2

    .line 1154
    move-object v15, v2

    .line 1155
    check-cast v15, Lapp/k9mail/feature/migration/launcher/k9/K9MigrationManager;

    .line 1156
    .line 1157
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    move-object/from16 v16, v1

    .line 1166
    .line 1167
    check-cast v16, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;

    .line 1168
    .line 1169
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    invoke-virtual {v0, v1, v10, v10}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    move-object/from16 v17, v0

    .line 1178
    .line 1179
    check-cast v17, Lnet/thunderbird/core/logging/Logger;

    .line 1180
    .line 1181
    invoke-direct/range {v11 .. v17}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;-><init>(Landroid/content/ContentResolver;Lcom/fsck/k9/preferences/SettingsImporter;Lcom/fsck/k9/account/AccountActivator;Lapp/k9mail/feature/migration/launcher/k9/K9MigrationManager;Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;Lnet/thunderbird/core/logging/Logger;)V

    .line 1182
    .line 1183
    .line 1184
    return-object v11

    .line 1185
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1186
    .line 1187
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1188
    .line 1189
    move-object/from16 v1, p2

    .line 1190
    .line 1191
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1192
    .line 1193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1197
    .line 1198
    .line 1199
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    .line 1200
    .line 1201
    return-object v0

    .line 1202
    nop

    .line 1203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
