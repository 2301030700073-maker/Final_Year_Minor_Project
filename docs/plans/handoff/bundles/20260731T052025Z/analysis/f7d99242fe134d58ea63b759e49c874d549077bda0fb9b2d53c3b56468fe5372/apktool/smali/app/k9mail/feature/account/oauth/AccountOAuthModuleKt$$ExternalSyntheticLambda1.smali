.class public final synthetic Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 7
    iput p2, p0, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const-class v1, Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;

    .line 6
    .line 7
    sget-object v2, Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;->Create:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    .line 8
    .line 9
    const-class v3, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 10
    .line 11
    const-class v4, Lapp/k9mail/feature/account/oauth/data/AuthorizationStateRepository;

    .line 12
    .line 13
    const-class v5, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;

    .line 14
    .line 15
    const-class v6, Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;

    .line 16
    .line 17
    const-class v7, Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;

    .line 18
    .line 19
    const/4 v8, 0x2

    .line 20
    const/4 v9, 0x0

    .line 21
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    const-class v11, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 24
    .line 25
    const/4 v12, 0x1

    .line 26
    const/4 v13, 0x0

    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    move-object/from16 v0, p1

    .line 31
    .line 32
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 33
    .line 34
    move-object/from16 v1, p2

    .line 35
    .line 36
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsValidator;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :pswitch_0
    move-object/from16 v0, p1

    .line 51
    .line 52
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 53
    .line 54
    move-object/from16 v1, p2

    .line 55
    .line 56
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryValidator;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :pswitch_1
    move-object/from16 v0, p1

    .line 71
    .line 72
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 73
    .line 74
    move-object/from16 v1, p2

    .line 75
    .line 76
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v1, Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;

    .line 85
    .line 86
    const-class v2, Lnet/thunderbird/app/common/account/AccountCreator;

    .line 87
    .line 88
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lnet/thunderbird/app/common/account/AccountCreator;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Lapp/k9mail/feature/account/setup/domain/usecase/CreateAccount;-><init>(Lnet/thunderbird/app/common/account/AccountCreator;)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :pswitch_2
    move-object/from16 v0, p1

    .line 103
    .line 104
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 105
    .line 106
    move-object/from16 v1, p2

    .line 107
    .line 108
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    new-instance v1, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;

    .line 117
    .line 118
    const-class v2, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryService;

    .line 119
    .line 120
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryService;

    .line 129
    .line 130
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;

    .line 139
    .line 140
    invoke-direct {v1, v2, v0}, Lapp/k9mail/feature/account/setup/domain/usecase/GetAutoDiscovery;-><init>(Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryService;Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;)V

    .line 141
    .line 142
    .line 143
    return-object v1

    .line 144
    :pswitch_3
    move-object/from16 v0, p1

    .line 145
    .line 146
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 147
    .line 148
    move-object/from16 v1, p2

    .line 149
    .line 150
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    new-instance v1, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryService;

    .line 159
    .line 160
    const-class v2, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryRegistry;

    .line 161
    .line 162
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryRegistry;

    .line 171
    .line 172
    invoke-direct {v1, v0}, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryService;-><init>(Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryRegistry;)V

    .line 173
    .line 174
    .line 175
    return-object v1

    .line 176
    :pswitch_4
    move-object/from16 v0, p1

    .line 177
    .line 178
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 179
    .line 180
    move-object/from16 v1, p2

    .line 181
    .line 182
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    new-instance v1, Lorg/koin/core/qualifier/StringQualifier;

    .line 191
    .line 192
    const-string v2, "extraAutoDiscoveries"

    .line 193
    .line 194
    invoke-direct {v1, v2}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const-class v2, Ljava/util/List;

    .line 198
    .line 199
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v0, v2, v13, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    check-cast v1, Ljava/util/List;

    .line 208
    .line 209
    new-instance v2, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryRegistry;

    .line 210
    .line 211
    const-class v3, Lokhttp3/OkHttpClient;

    .line 212
    .line 213
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 222
    .line 223
    new-instance v3, Landroidx/transition/Transition$1;

    .line 224
    .line 225
    sget-object v4, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryRegistry;->defaultAutoconfigUrlConfig:Lapp/k9mail/autodiscovery/autoconfig/AutoconfigUrlConfig;

    .line 226
    .line 227
    invoke-direct {v3, v4}, Landroidx/transition/Transition$1;-><init>(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    new-instance v5, Lcom/beetstra/jutf7/Base64Util;

    .line 231
    .line 232
    new-instance v6, Landroidx/work/Configuration$Builder;

    .line 233
    .line 234
    const/4 v7, 0x6

    .line 235
    invoke-direct {v6, v7, v0}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    new-instance v10, Lcom/jcraft/jzlib/Adler32;

    .line 239
    .line 240
    new-instance v11, Landroidx/collection/internal/Lock;

    .line 241
    .line 242
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-direct {v10, v11}, Lcom/jcraft/jzlib/Adler32;-><init>(Landroidx/collection/internal/Lock;)V

    .line 246
    .line 247
    .line 248
    const/16 v11, 0x9

    .line 249
    .line 250
    invoke-direct {v5, v11, v6, v10}, Lcom/beetstra/jutf7/Base64Util;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    new-instance v6, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigDiscovery;

    .line 254
    .line 255
    invoke-direct {v6, v3, v5}, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigDiscovery;-><init>(Lapp/k9mail/autodiscovery/autoconfig/AutoconfigUrlProvider;Lcom/beetstra/jutf7/Base64Util;)V

    .line 256
    .line 257
    .line 258
    new-instance v3, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 259
    .line 260
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 261
    .line 262
    .line 263
    new-instance v5, Lcom/beetstra/jutf7/Base64Util;

    .line 264
    .line 265
    new-instance v10, Landroidx/work/Configuration$Builder;

    .line 266
    .line 267
    invoke-direct {v10, v7, v0}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    new-instance v13, Lcom/jcraft/jzlib/Adler32;

    .line 271
    .line 272
    new-instance v14, Landroidx/collection/internal/Lock;

    .line 273
    .line 274
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-direct {v13, v14}, Lcom/jcraft/jzlib/Adler32;-><init>(Landroidx/collection/internal/Lock;)V

    .line 278
    .line 279
    .line 280
    invoke-direct {v5, v11, v10, v13}, Lcom/beetstra/jutf7/Base64Util;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    new-instance v10, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigDiscovery;

    .line 284
    .line 285
    invoke-direct {v10, v3, v5}, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigDiscovery;-><init>(Lapp/k9mail/autodiscovery/autoconfig/AutoconfigUrlProvider;Lcom/beetstra/jutf7/Base64Util;)V

    .line 286
    .line 287
    .line 288
    new-instance v15, Lcom/bumptech/glide/load/Option$1;

    .line 289
    .line 290
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 291
    .line 292
    .line 293
    new-instance v3, Lcom/beetstra/jutf7/Base64Util;

    .line 294
    .line 295
    new-instance v5, Landroidx/work/Configuration$Builder;

    .line 296
    .line 297
    invoke-direct {v5, v7, v0}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    new-instance v0, Lcom/jcraft/jzlib/Adler32;

    .line 301
    .line 302
    new-instance v7, Landroidx/collection/internal/Lock;

    .line 303
    .line 304
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-direct {v0, v7}, Lcom/jcraft/jzlib/Adler32;-><init>(Landroidx/collection/internal/Lock;)V

    .line 308
    .line 309
    .line 310
    invoke-direct {v3, v11, v5, v0}, Lcom/beetstra/jutf7/Base64Util;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    new-instance v13, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;

    .line 314
    .line 315
    new-instance v14, Lokio/Path$Companion;

    .line 316
    .line 317
    new-instance v0, Lcom/bumptech/glide/GlideBuilder$1;

    .line 318
    .line 319
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-direct {v14, v0}, Lokio/Path$Companion;-><init>(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    new-instance v0, Lokio/AsyncTimeout$Companion;

    .line 326
    .line 327
    invoke-direct {v0, v15}, Lokio/AsyncTimeout$Companion;-><init>(Lcom/bumptech/glide/load/Option$1;)V

    .line 328
    .line 329
    .line 330
    new-instance v5, Landroidx/work/Configuration$Builder;

    .line 331
    .line 332
    new-instance v7, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 333
    .line 334
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 335
    .line 336
    .line 337
    const/4 v11, 0x7

    .line 338
    invoke-direct {v5, v11, v7, v4}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    move-object/from16 v16, v0

    .line 342
    .line 343
    move-object/from16 v18, v3

    .line 344
    .line 345
    move-object/from16 v17, v5

    .line 346
    .line 347
    invoke-direct/range {v13 .. v18}, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;-><init>(Lokio/Path$Companion;Lcom/bumptech/glide/load/Option$1;Lokio/AsyncTimeout$Companion;Landroidx/work/Configuration$Builder;Lcom/beetstra/jutf7/Base64Util;)V

    .line 348
    .line 349
    .line 350
    const/4 v0, 0x3

    .line 351
    new-array v0, v0, [Lapp/k9mail/autodiscovery/api/AutoDiscovery;

    .line 352
    .line 353
    aput-object v6, v0, v9

    .line 354
    .line 355
    aput-object v10, v0, v12

    .line 356
    .line 357
    aput-object v13, v0, v8

    .line 358
    .line 359
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-direct {v2, v0}, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryRegistry;-><init>(Ljava/util/ArrayList;)V

    .line 368
    .line 369
    .line 370
    return-object v2

    .line 371
    :pswitch_5
    move-object/from16 v0, p1

    .line 372
    .line 373
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 374
    .line 375
    move-object/from16 v1, p2

    .line 376
    .line 377
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 378
    .line 379
    invoke-static {v0, v1, v5, v13, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    move-object/from16 v16, v1

    .line 384
    .line 385
    check-cast v16, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;

    .line 386
    .line 387
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    move-object v15, v1

    .line 396
    check-cast v15, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 397
    .line 398
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    move-object/from16 v17, v1

    .line 407
    .line 408
    check-cast v17, Lapp/k9mail/feature/account/oauth/data/AuthorizationStateRepository;

    .line 409
    .line 410
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    move-object/from16 v18, v1

    .line 419
    .line 420
    check-cast v18, Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;

    .line 421
    .line 422
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    move-object/from16 v19, v0

    .line 431
    .line 432
    check-cast v19, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 433
    .line 434
    new-instance v14, Lapp/k9mail/feature/account/server/validation/ui/OutgoingServerValidationViewModel;

    .line 435
    .line 436
    const/16 v20, 0x0

    .line 437
    .line 438
    invoke-direct/range {v14 .. v20}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;-><init>(Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;Lapp/k9mail/feature/account/oauth/data/AuthorizationStateRepository;Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Z)V

    .line 439
    .line 440
    .line 441
    return-object v14

    .line 442
    :pswitch_6
    move-object/from16 v0, p1

    .line 443
    .line 444
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 445
    .line 446
    move-object/from16 v1, p2

    .line 447
    .line 448
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 449
    .line 450
    invoke-static {v0, v1, v5, v13, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    move-object/from16 v16, v1

    .line 455
    .line 456
    check-cast v16, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;

    .line 457
    .line 458
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    move-object v15, v1

    .line 467
    check-cast v15, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 468
    .line 469
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    move-object/from16 v17, v1

    .line 478
    .line 479
    check-cast v17, Lapp/k9mail/feature/account/oauth/data/AuthorizationStateRepository;

    .line 480
    .line 481
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    move-object/from16 v18, v1

    .line 490
    .line 491
    check-cast v18, Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;

    .line 492
    .line 493
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    move-object/from16 v19, v0

    .line 502
    .line 503
    check-cast v19, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 504
    .line 505
    new-instance v14, Lapp/k9mail/feature/account/server/validation/ui/IncomingServerValidationViewModel;

    .line 506
    .line 507
    const/16 v20, 0x1

    .line 508
    .line 509
    invoke-direct/range {v14 .. v20}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;-><init>(Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;Lapp/k9mail/feature/account/oauth/data/AuthorizationStateRepository;Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Z)V

    .line 510
    .line 511
    .line 512
    return-object v14

    .line 513
    :pswitch_7
    move-object/from16 v0, p1

    .line 514
    .line 515
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 516
    .line 517
    move-object/from16 v1, p2

    .line 518
    .line 519
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 520
    .line 521
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    new-instance v1, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;

    .line 528
    .line 529
    const-class v2, Lcom/fsck/k9/mail/oauth/AuthStateStorage;

    .line 530
    .line 531
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    check-cast v2, Lcom/fsck/k9/mail/oauth/AuthStateStorage;

    .line 540
    .line 541
    new-instance v3, Lokhttp3/Dispatcher;

    .line 542
    .line 543
    const-class v9, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 544
    .line 545
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    check-cast v4, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 554
    .line 555
    const-class v10, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 556
    .line 557
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 558
    .line 559
    .line 560
    move-result-object v5

    .line 561
    invoke-virtual {v0, v5, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v5

    .line 565
    check-cast v5, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 566
    .line 567
    new-instance v6, Lorg/koin/core/qualifier/StringQualifier;

    .line 568
    .line 569
    const-string v7, "ClientInfoAppName"

    .line 570
    .line 571
    invoke-direct {v6, v7}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    const-class v7, Ljava/lang/String;

    .line 575
    .line 576
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 577
    .line 578
    .line 579
    move-result-object v8

    .line 580
    invoke-virtual {v0, v8, v13, v6}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    check-cast v6, Ljava/lang/String;

    .line 585
    .line 586
    new-instance v8, Lorg/koin/core/qualifier/StringQualifier;

    .line 587
    .line 588
    const-string v11, "ClientInfoAppVersion"

    .line 589
    .line 590
    invoke-direct {v8, v11}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 594
    .line 595
    .line 596
    move-result-object v7

    .line 597
    invoke-virtual {v0, v7, v13, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v7

    .line 601
    check-cast v7, Ljava/lang/String;

    .line 602
    .line 603
    const/16 v8, 0x15

    .line 604
    .line 605
    invoke-direct/range {v3 .. v8}, Lokhttp3/Dispatcher;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 606
    .line 607
    .line 608
    new-instance v4, Landroidx/work/Configuration$Builder;

    .line 609
    .line 610
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 611
    .line 612
    .line 613
    move-result-object v5

    .line 614
    invoke-virtual {v0, v5, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v5

    .line 618
    check-cast v5, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 619
    .line 620
    const/16 v6, 0x1d

    .line 621
    .line 622
    invoke-direct {v4, v6, v5}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    new-instance v5, Lcom/google/zxing/BinaryBitmap;

    .line 626
    .line 627
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 628
    .line 629
    .line 630
    move-result-object v6

    .line 631
    invoke-virtual {v0, v6, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v6

    .line 635
    check-cast v6, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 636
    .line 637
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 638
    .line 639
    .line 640
    move-result-object v7

    .line 641
    invoke-virtual {v0, v7, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    check-cast v0, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 646
    .line 647
    const/4 v7, 0x5

    .line 648
    invoke-direct {v5, v7, v6, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    invoke-direct {v1, v2, v3, v4, v5}, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;-><init>(Lcom/fsck/k9/mail/oauth/AuthStateStorage;Lokhttp3/Dispatcher;Landroidx/work/Configuration$Builder;Lcom/google/zxing/BinaryBitmap;)V

    .line 652
    .line 653
    .line 654
    return-object v1

    .line 655
    :pswitch_8
    move-object/from16 v0, p1

    .line 656
    .line 657
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 658
    .line 659
    move-object/from16 v1, p2

    .line 660
    .line 661
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 662
    .line 663
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 667
    .line 668
    .line 669
    new-instance v1, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;

    .line 670
    .line 671
    const-class v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsValidator;

    .line 672
    .line 673
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    check-cast v3, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsValidator;

    .line 682
    .line 683
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 684
    .line 685
    .line 686
    move-result-object v4

    .line 687
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    check-cast v0, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 692
    .line 693
    new-instance v4, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 694
    .line 695
    const/16 v5, 0x7f

    .line 696
    .line 697
    invoke-direct {v4, v13, v13, v13, v5}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;-><init>(Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;I)V

    .line 698
    .line 699
    .line 700
    invoke-direct {v1, v4, v2, v3, v0}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;-><init>(Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsValidator;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V

    .line 701
    .line 702
    .line 703
    return-object v1

    .line 704
    :pswitch_9
    move-object/from16 v0, p1

    .line 705
    .line 706
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 707
    .line 708
    move-object/from16 v1, p2

    .line 709
    .line 710
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 711
    .line 712
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 716
    .line 717
    .line 718
    new-instance v1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;

    .line 719
    .line 720
    const-class v3, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;

    .line 721
    .line 722
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 723
    .line 724
    .line 725
    move-result-object v3

    .line 726
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    check-cast v3, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;

    .line 731
    .line 732
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    check-cast v0, Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 741
    .line 742
    new-instance v4, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 743
    .line 744
    const/16 v5, 0xfff

    .line 745
    .line 746
    invoke-direct {v4, v13, v13, v5}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;-><init>(Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;I)V

    .line 747
    .line 748
    .line 749
    invoke-direct {v1, v4, v2, v3, v0}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;-><init>(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;)V

    .line 750
    .line 751
    .line 752
    return-object v1

    .line 753
    :pswitch_a
    move-object/from16 v0, p1

    .line 754
    .line 755
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 756
    .line 757
    move-object/from16 v1, p2

    .line 758
    .line 759
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 760
    .line 761
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 765
    .line 766
    .line 767
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsValidator;

    .line 768
    .line 769
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 770
    .line 771
    .line 772
    return-object v0

    .line 773
    :pswitch_b
    move-object/from16 v0, p1

    .line 774
    .line 775
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 776
    .line 777
    move-object/from16 v1, p2

    .line 778
    .line 779
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 780
    .line 781
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 785
    .line 786
    .line 787
    new-instance v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsValidator;

    .line 788
    .line 789
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 790
    .line 791
    .line 792
    return-object v0

    .line 793
    :pswitch_c
    move-object/from16 v0, p1

    .line 794
    .line 795
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 796
    .line 797
    move-object/from16 v1, p2

    .line 798
    .line 799
    check-cast v1, Ljava/lang/Integer;

    .line 800
    .line 801
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 802
    .line 803
    .line 804
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 805
    .line 806
    .line 807
    move-result v1

    .line 808
    invoke-static {v0, v1}, Landroidx/work/OperationKt;->WarningTitle(Landroidx/compose/runtime/Composer;I)V

    .line 809
    .line 810
    .line 811
    return-object v10

    .line 812
    :pswitch_d
    move-object/from16 v0, p1

    .line 813
    .line 814
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 815
    .line 816
    move-object/from16 v1, p2

    .line 817
    .line 818
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 819
    .line 820
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 824
    .line 825
    .line 826
    new-instance v1, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;

    .line 827
    .line 828
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    check-cast v2, Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;

    .line 837
    .line 838
    const-class v3, Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;

    .line 839
    .line 840
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v3

    .line 848
    check-cast v3, Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;

    .line 849
    .line 850
    const-class v4, Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;

    .line 851
    .line 852
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 853
    .line 854
    .line 855
    move-result-object v4

    .line 856
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    check-cast v0, Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;

    .line 861
    .line 862
    invoke-direct {v1, v2, v3, v0}, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;-><init>(Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;)V

    .line 863
    .line 864
    .line 865
    return-object v1

    .line 866
    :pswitch_e
    move-object/from16 v0, p1

    .line 867
    .line 868
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 869
    .line 870
    move-object/from16 v1, p2

    .line 871
    .line 872
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 873
    .line 874
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 878
    .line 879
    .line 880
    new-instance v0, Lapp/k9mail/feature/account/server/certificate/ui/DefaultFingerprintFormatter;

    .line 881
    .line 882
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 883
    .line 884
    .line 885
    return-object v0

    .line 886
    :pswitch_f
    move-object/from16 v0, p1

    .line 887
    .line 888
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 889
    .line 890
    move-object/from16 v1, p2

    .line 891
    .line 892
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 893
    .line 894
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 898
    .line 899
    .line 900
    new-instance v0, Lapp/k9mail/feature/account/server/certificate/ui/DefaultServerNameFormatter;

    .line 901
    .line 902
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 903
    .line 904
    .line 905
    return-object v0

    .line 906
    :pswitch_10
    move-object/from16 v0, p1

    .line 907
    .line 908
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 909
    .line 910
    move-object/from16 v1, p2

    .line 911
    .line 912
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 913
    .line 914
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 918
    .line 919
    .line 920
    new-instance v0, Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;

    .line 921
    .line 922
    invoke-direct {v0}, Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;-><init>()V

    .line 923
    .line 924
    .line 925
    return-object v0

    .line 926
    :pswitch_11
    move-object/from16 v0, p1

    .line 927
    .line 928
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 929
    .line 930
    move-object/from16 v1, p2

    .line 931
    .line 932
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 933
    .line 934
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 935
    .line 936
    .line 937
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 938
    .line 939
    .line 940
    new-instance v1, Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;

    .line 941
    .line 942
    const-class v2, Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 943
    .line 944
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 945
    .line 946
    .line 947
    move-result-object v2

    .line 948
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    check-cast v0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 953
    .line 954
    invoke-direct {v1, v0}, Lapp/k9mail/feature/account/server/certificate/domain/usecase/AddServerCertificateException;-><init>(Lcom/fsck/k9/mail/ssl/LocalKeyStore;)V

    .line 955
    .line 956
    .line 957
    return-object v1

    .line 958
    :pswitch_12
    move-object/from16 v0, p1

    .line 959
    .line 960
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 961
    .line 962
    move-object/from16 v1, p2

    .line 963
    .line 964
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 965
    .line 966
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 967
    .line 968
    .line 969
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 970
    .line 971
    .line 972
    new-instance v0, Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;

    .line 973
    .line 974
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 975
    .line 976
    .line 977
    iput-object v13, v0, Lapp/k9mail/feature/account/server/certificate/data/InMemoryServerCertificateErrorRepository;->serverCertificateError:Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;

    .line 978
    .line 979
    return-object v0

    .line 980
    :pswitch_13
    move-object/from16 v0, p1

    .line 981
    .line 982
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 983
    .line 984
    move-object/from16 v1, p2

    .line 985
    .line 986
    check-cast v1, Ljava/lang/Integer;

    .line 987
    .line 988
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 989
    .line 990
    .line 991
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 992
    .line 993
    .line 994
    move-result v1

    .line 995
    invoke-static {v0, v1}, Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt;->GoogleSignInSupportText(Landroidx/compose/runtime/Composer;I)V

    .line 996
    .line 997
    .line 998
    return-object v10

    .line 999
    :pswitch_14
    move-object/from16 v0, p1

    .line 1000
    .line 1001
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1002
    .line 1003
    move-object/from16 v1, p2

    .line 1004
    .line 1005
    check-cast v1, Ljava/lang/Integer;

    .line 1006
    .line 1007
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1008
    .line 1009
    .line 1010
    move-result v1

    .line 1011
    and-int/lit8 v2, v1, 0x3

    .line 1012
    .line 1013
    if-eq v2, v8, :cond_0

    .line 1014
    .line 1015
    move v2, v12

    .line 1016
    goto :goto_0

    .line 1017
    :cond_0
    move v2, v9

    .line 1018
    :goto_0
    and-int/2addr v1, v12

    .line 1019
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1020
    .line 1021
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1022
    .line 1023
    .line 1024
    move-result v1

    .line 1025
    if-eqz v1, :cond_1

    .line 1026
    .line 1027
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 1028
    .line 1029
    const/high16 v2, 0x41000000    # 8.0f

    .line 1030
    .line 1031
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v13

    .line 1035
    const v1, 0x7f080079

    .line 1036
    .line 1037
    .line 1038
    invoke-static {v1, v0, v9}, Lkotlin/math/MathKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v11

    .line 1042
    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 1043
    .line 1044
    const-string v12, "Google logo"

    .line 1045
    .line 1046
    const/16 v17, 0xdb8

    .line 1047
    .line 1048
    move-object/from16 v16, v0

    .line 1049
    .line 1050
    invoke-static/range {v11 .. v17}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V

    .line 1051
    .line 1052
    .line 1053
    goto :goto_1

    .line 1054
    :cond_1
    move-object/from16 v16, v0

    .line 1055
    .line 1056
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1057
    .line 1058
    .line 1059
    :goto_1
    return-object v10

    .line 1060
    :pswitch_15
    move-object/from16 v0, p1

    .line 1061
    .line 1062
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1063
    .line 1064
    move-object/from16 v1, p2

    .line 1065
    .line 1066
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1067
    .line 1068
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1072
    .line 1073
    .line 1074
    new-instance v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

    .line 1075
    .line 1076
    const-class v2, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

    .line 1077
    .line 1078
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v2

    .line 1082
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v2

    .line 1086
    check-cast v2, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

    .line 1087
    .line 1088
    const-class v3, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;

    .line 1089
    .line 1090
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v3

    .line 1094
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v3

    .line 1098
    check-cast v3, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;

    .line 1099
    .line 1100
    const-class v4, Lapp/k9mail/feature/account/oauth/domain/usecase/CheckIsGoogleSignIn;

    .line 1101
    .line 1102
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v4

    .line 1106
    invoke-virtual {v0, v4, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v4

    .line 1110
    check-cast v4, Lapp/k9mail/feature/account/oauth/domain/usecase/CheckIsGoogleSignIn;

    .line 1111
    .line 1112
    const-class v5, Lnet/thunderbird/core/logging/Logger;

    .line 1113
    .line 1114
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v5

    .line 1118
    invoke-virtual {v0, v5, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 1123
    .line 1124
    invoke-direct {v1, v2, v3, v4, v0}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;-><init>(Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;Lapp/k9mail/feature/account/oauth/domain/usecase/CheckIsGoogleSignIn;Lnet/thunderbird/core/logging/Logger;)V

    .line 1125
    .line 1126
    .line 1127
    return-object v1

    .line 1128
    :pswitch_16
    move-object/from16 v0, p1

    .line 1129
    .line 1130
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1131
    .line 1132
    move-object/from16 v1, p2

    .line 1133
    .line 1134
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1135
    .line 1136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1140
    .line 1141
    .line 1142
    new-instance v0, Lapp/k9mail/feature/account/oauth/domain/usecase/CheckIsGoogleSignIn;

    .line 1143
    .line 1144
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1145
    .line 1146
    .line 1147
    return-object v0

    .line 1148
    :pswitch_17
    move-object/from16 v0, p1

    .line 1149
    .line 1150
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1151
    .line 1152
    move-object/from16 v2, p2

    .line 1153
    .line 1154
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1155
    .line 1156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1160
    .line 1161
    .line 1162
    new-instance v2, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;

    .line 1163
    .line 1164
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v1

    .line 1168
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v0

    .line 1172
    check-cast v0, Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;

    .line 1173
    .line 1174
    invoke-direct {v2, v0}, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;-><init>(Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;)V

    .line 1175
    .line 1176
    .line 1177
    return-object v2

    .line 1178
    :pswitch_18
    move-object/from16 v0, p1

    .line 1179
    .line 1180
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1181
    .line 1182
    move-object/from16 v2, p2

    .line 1183
    .line 1184
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 1185
    .line 1186
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1190
    .line 1191
    .line 1192
    new-instance v2, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;

    .line 1193
    .line 1194
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v1

    .line 1198
    invoke-virtual {v0, v1, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v1

    .line 1202
    check-cast v1, Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;

    .line 1203
    .line 1204
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v3

    .line 1208
    invoke-virtual {v0, v3, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v0

    .line 1212
    check-cast v0, Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;

    .line 1213
    .line 1214
    invoke-direct {v2, v1, v0}, Lapp/k9mail/feature/account/oauth/domain/usecase/GetOAuthRequestIntent;-><init>(Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;)V

    .line 1215
    .line 1216
    .line 1217
    return-object v2

    .line 1218
    :pswitch_19
    move-object/from16 v0, p1

    .line 1219
    .line 1220
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1221
    .line 1222
    move-object/from16 v1, p2

    .line 1223
    .line 1224
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1225
    .line 1226
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1230
    .line 1231
    .line 1232
    new-instance v0, Lapp/k9mail/feature/account/oauth/data/AuthorizationStateRepository;

    .line 1233
    .line 1234
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1235
    .line 1236
    .line 1237
    return-object v0

    .line 1238
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1239
    .line 1240
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1241
    .line 1242
    move-object/from16 v1, p2

    .line 1243
    .line 1244
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1245
    .line 1246
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1250
    .line 1251
    .line 1252
    new-instance v1, Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;

    .line 1253
    .line 1254
    const-class v2, Lnet/openid/appauth/AuthorizationService;

    .line 1255
    .line 1256
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v2

    .line 1260
    invoke-virtual {v0, v2, v13, v13}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    check-cast v0, Lnet/openid/appauth/AuthorizationService;

    .line 1265
    .line 1266
    invoke-direct {v1, v0}, Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;-><init>(Lnet/openid/appauth/AuthorizationService;)V

    .line 1267
    .line 1268
    .line 1269
    return-object v1

    .line 1270
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1271
    .line 1272
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1273
    .line 1274
    move-object/from16 v1, p2

    .line 1275
    .line 1276
    check-cast v1, Ljava/lang/Integer;

    .line 1277
    .line 1278
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1279
    .line 1280
    .line 1281
    move-result v1

    .line 1282
    and-int/lit8 v2, v1, 0x3

    .line 1283
    .line 1284
    if-eq v2, v8, :cond_2

    .line 1285
    .line 1286
    move v9, v12

    .line 1287
    :cond_2
    and-int/2addr v1, v12

    .line 1288
    move-object v5, v0

    .line 1289
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1290
    .line 1291
    invoke-virtual {v5, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1292
    .line 1293
    .line 1294
    move-result v0

    .line 1295
    if-eqz v0, :cond_3

    .line 1296
    .line 1297
    const v0, 0x7f12003b

    .line 1298
    .line 1299
    .line 1300
    invoke-static {v5, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v3

    .line 1304
    const/4 v6, 0x0

    .line 1305
    const/4 v7, 0x5

    .line 1306
    const/4 v2, 0x0

    .line 1307
    const/4 v4, 0x0

    .line 1308
    invoke-static/range {v2 .. v7}, Landroidx/room/util/SchemaInfoUtilKt;->LoadingView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V

    .line 1309
    .line 1310
    .line 1311
    goto :goto_2

    .line 1312
    :cond_3
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1313
    .line 1314
    .line 1315
    :goto_2
    return-object v10

    .line 1316
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1317
    .line 1318
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1319
    .line 1320
    move-object/from16 v1, p2

    .line 1321
    .line 1322
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1323
    .line 1324
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1328
    .line 1329
    .line 1330
    new-instance v1, Lnet/openid/appauth/AuthorizationService;

    .line 1331
    .line 1332
    invoke-static {v0}, Lokio/Okio;->androidApplication(Lorg/koin/core/scope/Scope;)Landroid/app/Application;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    invoke-direct {v1, v0}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;)V

    .line 1337
    .line 1338
    .line 1339
    return-object v1

    .line 1340
    nop

    .line 1341
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
