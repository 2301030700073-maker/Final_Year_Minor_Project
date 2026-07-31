.class public final synthetic Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/16 v4, 0x1d

    .line 6
    .line 7
    const/16 v6, 0xf

    .line 8
    .line 9
    const/16 v7, 0xb

    .line 10
    .line 11
    const/16 v8, 0xa

    .line 12
    .line 13
    const/16 v11, 0xe

    .line 14
    .line 15
    const/16 v12, 0xd

    .line 16
    .line 17
    const/16 v13, 0xc

    .line 18
    .line 19
    const/16 v14, 0x9

    .line 20
    .line 21
    const/4 v15, 0x5

    .line 22
    const/4 v5, 0x4

    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v9, 0x2

    .line 28
    const/4 v10, 0x1

    .line 29
    sget-object v21, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    packed-switch v0, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    move-object/from16 v0, p1

    .line 35
    .line 36
    check-cast v0, Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v1, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;

    .line 42
    .line 43
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ljava/lang/Number;

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Ljava/lang/Number;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/Number;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-direct {v1, v3, v4, v5, v0}, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;-><init>(FFFF)V

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :pswitch_0
    move-object/from16 v0, p1

    .line 88
    .line 89
    check-cast v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    return-object v21

    .line 95
    :pswitch_1
    move-object/from16 v0, p1

    .line 96
    .line 97
    check-cast v0, Lkotlinx/collections/immutable/ImmutableSet;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    return-object v0

    .line 111
    :pswitch_2
    move-object/from16 v0, p1

    .line 112
    .line 113
    check-cast v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lorg/minidns/util/Hex;->bannerSlideInSlideOutAnimationSpec(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)Landroidx/compose/animation/ContentTransform;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    return-object v0

    .line 123
    :pswitch_3
    move-object/from16 v0, p1

    .line 124
    .line 125
    check-cast v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {v0}, Lorg/minidns/util/Hex;->bannerSlideInSlideOutAnimationSpec(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)Landroidx/compose/animation/ContentTransform;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    return-object v0

    .line 135
    :pswitch_4
    move-object/from16 v0, p1

    .line 136
    .line 137
    check-cast v0, Lnet/thunderbird/feature/notification/api/ui/style/builder/InAppNotificationStyleBuilder;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lnet/thunderbird/feature/notification/api/ui/style/builder/InAppNotificationStyleBuilder;->style:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 143
    .line 144
    sget-object v2, Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$Undefined;->INSTANCE:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$Undefined;

    .line 145
    .line 146
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    .line 152
    new-instance v1, Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$BannerGlobalNotification;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object v1, v0, Lnet/thunderbird/feature/notification/api/ui/style/builder/InAppNotificationStyleBuilder;->style:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, v0, Lnet/thunderbird/feature/notification/api/ui/style/builder/InAppNotificationStyleBuilder;->style:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const-class v1, Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$BannerGlobalNotification;

    .line 175
    .line 176
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const-string v2, ", trying to set "

    .line 185
    .line 186
    const-string v3, "."

    .line 187
    .line 188
    const-string v4, "An in-app notification can only have one type of style. Current style is "

    .line 189
    .line 190
    invoke-static {v4, v0, v2, v1, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    const/16 v21, 0x0

    .line 198
    .line 199
    :goto_0
    return-object v21

    .line 200
    :pswitch_5
    move-object/from16 v0, p1

    .line 201
    .line 202
    check-cast v0, Lnet/thunderbird/feature/notification/api/ui/style/builder/InAppNotificationStyleBuilder;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    iget-object v1, v0, Lnet/thunderbird/feature/notification/api/ui/style/builder/InAppNotificationStyleBuilder;->style:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 208
    .line 209
    sget-object v2, Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$Undefined;->INSTANCE:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$Undefined;

    .line 210
    .line 211
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_1

    .line 216
    .line 217
    sget-object v1, Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$BannerInlineNotification;->INSTANCE:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$BannerInlineNotification;

    .line 218
    .line 219
    iput-object v1, v0, Lnet/thunderbird/feature/notification/api/ui/style/builder/InAppNotificationStyleBuilder;->style:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_1
    iget-object v0, v0, Lnet/thunderbird/feature/notification/api/ui/style/builder/InAppNotificationStyleBuilder;->style:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const-class v1, Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle$BannerInlineNotification;

    .line 237
    .line 238
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    const-string v2, ", trying to set "

    .line 247
    .line 248
    const-string v3, "."

    .line 249
    .line 250
    const-string v4, "An in-app notification can only have one type of style. Current style is "

    .line 251
    .line 252
    invoke-static {v4, v0, v2, v1, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    const/16 v21, 0x0

    .line 260
    .line 261
    :goto_1
    return-object v21

    .line 262
    :pswitch_6
    move-object/from16 v0, p1

    .line 263
    .line 264
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    iget-object v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->displayFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 270
    .line 271
    if-eqz v0, :cond_2

    .line 272
    .line 273
    invoke-interface {v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;->getId()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    if-nez v0, :cond_3

    .line 278
    .line 279
    :cond_2
    const/16 v0, 0x30

    .line 280
    .line 281
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    :cond_3
    return-object v0

    .line 286
    :pswitch_7
    move-object/from16 v0, p1

    .line 287
    .line 288
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    invoke-interface {v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;->getId()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    return-object v0

    .line 298
    :pswitch_8
    move-object/from16 v0, p1

    .line 299
    .line 300
    check-cast v0, Ljava/lang/Integer;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    neg-int v0, v0

    .line 307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    return-object v0

    .line 312
    :pswitch_9
    move-object/from16 v0, p1

    .line 313
    .line 314
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    invoke-interface {v0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;->getId()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    return-object v0

    .line 324
    :pswitch_a
    move-object/from16 v0, p1

    .line 325
    .line 326
    check-cast v0, Ljava/lang/Integer;

    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    return-object v0

    .line 336
    :pswitch_b
    move-object/from16 v0, p1

    .line 337
    .line 338
    check-cast v0, Ljava/lang/Integer;

    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    neg-int v0, v0

    .line 345
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    return-object v0

    .line 350
    :pswitch_c
    move-object/from16 v0, p1

    .line 351
    .line 352
    check-cast v0, Ljava/lang/Integer;

    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    neg-int v0, v0

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    return-object v0

    .line 364
    :pswitch_d
    move-object/from16 v0, p1

    .line 365
    .line 366
    check-cast v0, Lorg/koin/core/module/Module;

    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    new-instance v2, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 372
    .line 373
    invoke-direct {v2, v1}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 374
    .line 375
    .line 376
    new-instance v15, Lorg/koin/core/definition/BeanDefinition;

    .line 377
    .line 378
    const-class v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository;

    .line 379
    .line 380
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 381
    .line 382
    .line 383
    move-result-object v17

    .line 384
    sget-object v23, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 385
    .line 386
    const/16 v18, 0x0

    .line 387
    .line 388
    sget-object v27, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 389
    .line 390
    move-object/from16 v19, v2

    .line 391
    .line 392
    move-object/from16 v16, v23

    .line 393
    .line 394
    move-object/from16 v20, v27

    .line 395
    .line 396
    invoke-direct/range {v15 .. v20}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 397
    .line 398
    .line 399
    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 400
    .line 401
    invoke-direct {v1, v15}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 405
    .line 406
    .line 407
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 408
    .line 409
    invoke-direct {v1, v14}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 410
    .line 411
    .line 412
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 413
    .line 414
    const-class v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDrawerConfig;

    .line 415
    .line 416
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 417
    .line 418
    .line 419
    move-result-object v24

    .line 420
    const/16 v25, 0x0

    .line 421
    .line 422
    move-object/from16 v26, v1

    .line 423
    .line 424
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 425
    .line 426
    .line 427
    move-object/from16 v1, v22

    .line 428
    .line 429
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 430
    .line 431
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 435
    .line 436
    .line 437
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 438
    .line 439
    invoke-direct {v1, v8}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 440
    .line 441
    .line 442
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 443
    .line 444
    const-class v2, Lokio/AsyncTimeout$Companion;

    .line 445
    .line 446
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 447
    .line 448
    .line 449
    move-result-object v24

    .line 450
    move-object/from16 v26, v1

    .line 451
    .line 452
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 453
    .line 454
    .line 455
    move-object/from16 v1, v22

    .line 456
    .line 457
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 458
    .line 459
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 463
    .line 464
    .line 465
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 466
    .line 467
    invoke-direct {v1, v7}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 468
    .line 469
    .line 470
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 471
    .line 472
    const-class v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 473
    .line 474
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 475
    .line 476
    .line 477
    move-result-object v24

    .line 478
    move-object/from16 v26, v1

    .line 479
    .line 480
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 481
    .line 482
    .line 483
    move-object/from16 v1, v22

    .line 484
    .line 485
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 486
    .line 487
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 491
    .line 492
    .line 493
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 494
    .line 495
    invoke-direct {v1, v13}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 496
    .line 497
    .line 498
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 499
    .line 500
    const-class v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;

    .line 501
    .line 502
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 503
    .line 504
    .line 505
    move-result-object v24

    .line 506
    move-object/from16 v26, v1

    .line 507
    .line 508
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 509
    .line 510
    .line 511
    move-object/from16 v1, v22

    .line 512
    .line 513
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 514
    .line 515
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 519
    .line 520
    .line 521
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 522
    .line 523
    invoke-direct {v1, v12}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 524
    .line 525
    .line 526
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 527
    .line 528
    const-class v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayTreeFolder;

    .line 529
    .line 530
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 531
    .line 532
    .line 533
    move-result-object v24

    .line 534
    move-object/from16 v26, v1

    .line 535
    .line 536
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 537
    .line 538
    .line 539
    move-object/from16 v1, v22

    .line 540
    .line 541
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 542
    .line 543
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 547
    .line 548
    .line 549
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 550
    .line 551
    invoke-direct {v1, v11}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 552
    .line 553
    .line 554
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 555
    .line 556
    const-class v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAccount;

    .line 557
    .line 558
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 559
    .line 560
    .line 561
    move-result-object v24

    .line 562
    move-object/from16 v26, v1

    .line 563
    .line 564
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 565
    .line 566
    .line 567
    move-object/from16 v1, v22

    .line 568
    .line 569
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 570
    .line 571
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 575
    .line 576
    .line 577
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 578
    .line 579
    invoke-direct {v1, v6}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 580
    .line 581
    .line 582
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 583
    .line 584
    const-class v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/SyncAllAccounts;

    .line 585
    .line 586
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 587
    .line 588
    .line 589
    move-result-object v24

    .line 590
    move-object/from16 v26, v1

    .line 591
    .line 592
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 593
    .line 594
    .line 595
    move-object/from16 v1, v22

    .line 596
    .line 597
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 598
    .line 599
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 603
    .line 604
    .line 605
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 606
    .line 607
    const/16 v2, 0x10

    .line 608
    .line 609
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 610
    .line 611
    .line 612
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 613
    .line 614
    const-class v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;

    .line 615
    .line 616
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 617
    .line 618
    .line 619
    move-result-object v24

    .line 620
    sget-object v27, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 621
    .line 622
    move-object/from16 v26, v1

    .line 623
    .line 624
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 625
    .line 626
    .line 627
    move-object/from16 v1, v22

    .line 628
    .line 629
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 630
    .line 631
    .line 632
    return-object v21

    .line 633
    :pswitch_e
    move-object/from16 v0, p1

    .line 634
    .line 635
    check-cast v0, Lorg/koin/core/module/Module;

    .line 636
    .line 637
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 641
    .line 642
    invoke-direct {v1, v3}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 643
    .line 644
    .line 645
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 646
    .line 647
    const-class v6, Lnet/thunderbird/feature/mail/message/reader/impl/html/DefaultMessageReaderHtmlSettingsProvider;

    .line 648
    .line 649
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 650
    .line 651
    .line 652
    move-result-object v24

    .line 653
    sget-object v26, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 654
    .line 655
    const/16 v25, 0x0

    .line 656
    .line 657
    sget-object v30, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 658
    .line 659
    move-object/from16 v23, v26

    .line 660
    .line 661
    move-object/from16 v27, v30

    .line 662
    .line 663
    move-object/from16 v26, v1

    .line 664
    .line 665
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 666
    .line 667
    .line 668
    move-object/from16 v1, v22

    .line 669
    .line 670
    move-object/from16 v26, v23

    .line 671
    .line 672
    move-object/from16 v6, v27

    .line 673
    .line 674
    new-instance v7, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 675
    .line 676
    invoke-direct {v7, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v0, v7}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 680
    .line 681
    .line 682
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 683
    .line 684
    invoke-direct {v1, v4}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 685
    .line 686
    .line 687
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 688
    .line 689
    const-class v4, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultCssVariableNameProvider;

    .line 690
    .line 691
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 692
    .line 693
    .line 694
    move-result-object v27

    .line 695
    const/16 v28, 0x0

    .line 696
    .line 697
    sget-object v30, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 698
    .line 699
    move-object/from16 v29, v1

    .line 700
    .line 701
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 702
    .line 703
    .line 704
    move-object/from16 v1, v25

    .line 705
    .line 706
    new-instance v4, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 707
    .line 708
    invoke-direct {v4, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 712
    .line 713
    .line 714
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 715
    .line 716
    invoke-direct {v1, v10}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 717
    .line 718
    .line 719
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 720
    .line 721
    const-class v4, Lnet/thunderbird/feature/mail/message/reader/api/css/GlobalCssStyleProvider$Factory;

    .line 722
    .line 723
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 724
    .line 725
    .line 726
    move-result-object v27

    .line 727
    move-object/from16 v29, v1

    .line 728
    .line 729
    move-object/from16 v30, v6

    .line 730
    .line 731
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 732
    .line 733
    .line 734
    move-object/from16 v1, v25

    .line 735
    .line 736
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 737
    .line 738
    invoke-direct {v4, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 742
    .line 743
    .line 744
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 745
    .line 746
    invoke-direct {v1, v9}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 747
    .line 748
    .line 749
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 750
    .line 751
    const-class v4, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultSignatureCssStyleProvider$Factory;

    .line 752
    .line 753
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 754
    .line 755
    .line 756
    move-result-object v27

    .line 757
    move-object/from16 v29, v1

    .line 758
    .line 759
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 760
    .line 761
    .line 762
    move-object/from16 v1, v25

    .line 763
    .line 764
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 765
    .line 766
    invoke-direct {v4, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 770
    .line 771
    .line 772
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 773
    .line 774
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 775
    .line 776
    .line 777
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 778
    .line 779
    const-class v4, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultPlainTextMessagePreElementCssStyleProvider$Factory;

    .line 780
    .line 781
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 782
    .line 783
    .line 784
    move-result-object v27

    .line 785
    move-object/from16 v29, v1

    .line 786
    .line 787
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 788
    .line 789
    .line 790
    move-object/from16 v1, v25

    .line 791
    .line 792
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 793
    .line 794
    invoke-direct {v4, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 798
    .line 799
    .line 800
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 801
    .line 802
    invoke-direct {v1, v5}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 803
    .line 804
    .line 805
    new-instance v4, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 806
    .line 807
    invoke-direct {v4, v15}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 808
    .line 809
    .line 810
    new-instance v5, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 811
    .line 812
    const/4 v6, 0x6

    .line 813
    invoke-direct {v5, v6}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 814
    .line 815
    .line 816
    new-array v2, v2, [Lkotlin/jvm/functions/Function2;

    .line 817
    .line 818
    aput-object v1, v2, v3

    .line 819
    .line 820
    aput-object v4, v2, v10

    .line 821
    .line 822
    aput-object v5, v2, v9

    .line 823
    .line 824
    const-class v1, Ljava/util/List;

    .line 825
    .line 826
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 827
    .line 828
    .line 829
    move-result-object v3

    .line 830
    invoke-virtual {v3}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    const-class v4, Lnet/thunderbird/feature/mail/message/reader/api/css/CssStyleProvider$Factory;

    .line 835
    .line 836
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 837
    .line 838
    .line 839
    move-result-object v4

    .line 840
    invoke-virtual {v4}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v4

    .line 844
    const-string v5, "<"

    .line 845
    .line 846
    const-string v6, ">"

    .line 847
    .line 848
    invoke-static {v3, v5, v4, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v3

    .line 852
    new-instance v4, Lorg/koin/core/qualifier/StringQualifier;

    .line 853
    .line 854
    invoke-direct {v4, v3}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    new-instance v3, Lnet/thunderbird/app/common/core/logging/LoggerModuleKt$appCommonCoreLogger$lambda$0$$inlined$singleListOf$default$1;

    .line 858
    .line 859
    invoke-direct {v3, v2, v9}, Lnet/thunderbird/app/common/core/logging/LoggerModuleKt$appCommonCoreLogger$lambda$0$$inlined$singleListOf$default$1;-><init>([Lkotlin/jvm/functions/Function2;I)V

    .line 860
    .line 861
    .line 862
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 863
    .line 864
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 865
    .line 866
    .line 867
    move-result-object v27

    .line 868
    move-object/from16 v29, v3

    .line 869
    .line 870
    move-object/from16 v28, v4

    .line 871
    .line 872
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 873
    .line 874
    .line 875
    move-object/from16 v1, v25

    .line 876
    .line 877
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 878
    .line 879
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 883
    .line 884
    .line 885
    new-instance v1, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 886
    .line 887
    const/4 v2, 0x7

    .line 888
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 889
    .line 890
    .line 891
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 892
    .line 893
    const-class v2, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;

    .line 894
    .line 895
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 896
    .line 897
    .line 898
    move-result-object v27

    .line 899
    const/16 v28, 0x0

    .line 900
    .line 901
    move-object/from16 v29, v1

    .line 902
    .line 903
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 904
    .line 905
    .line 906
    move-object/from16 v1, v25

    .line 907
    .line 908
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 909
    .line 910
    .line 911
    return-object v21

    .line 912
    :pswitch_f
    move-object/from16 v0, p1

    .line 913
    .line 914
    check-cast v0, Lorg/koin/core/module/Module;

    .line 915
    .line 916
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 917
    .line 918
    .line 919
    new-instance v4, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 920
    .line 921
    const/16 v6, 0x14

    .line 922
    .line 923
    invoke-direct {v4, v6}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 924
    .line 925
    .line 926
    new-instance v6, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 927
    .line 928
    const/16 v7, 0x15

    .line 929
    .line 930
    invoke-direct {v6, v7}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 931
    .line 932
    .line 933
    new-instance v7, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 934
    .line 935
    const/16 v11, 0x16

    .line 936
    .line 937
    invoke-direct {v7, v11}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 938
    .line 939
    .line 940
    new-instance v11, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 941
    .line 942
    const/16 v12, 0x17

    .line 943
    .line 944
    invoke-direct {v11, v12}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 945
    .line 946
    .line 947
    new-instance v12, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 948
    .line 949
    const/16 v13, 0x18

    .line 950
    .line 951
    invoke-direct {v12, v13}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 952
    .line 953
    .line 954
    new-instance v13, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 955
    .line 956
    move/from16 v16, v2

    .line 957
    .line 958
    const/16 v2, 0x19

    .line 959
    .line 960
    invoke-direct {v13, v2}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 961
    .line 962
    .line 963
    new-instance v2, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 964
    .line 965
    move/from16 v17, v9

    .line 966
    .line 967
    const/16 v9, 0x1a

    .line 968
    .line 969
    invoke-direct {v2, v9}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 970
    .line 971
    .line 972
    new-instance v9, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 973
    .line 974
    move/from16 v18, v5

    .line 975
    .line 976
    const/16 v5, 0x1b

    .line 977
    .line 978
    invoke-direct {v9, v5}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 979
    .line 980
    .line 981
    new-instance v5, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 982
    .line 983
    move/from16 v22, v3

    .line 984
    .line 985
    const/16 v3, 0x1c

    .line 986
    .line 987
    invoke-direct {v5, v3}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 988
    .line 989
    .line 990
    new-instance v3, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 991
    .line 992
    move/from16 v23, v14

    .line 993
    .line 994
    const/16 v14, 0x13

    .line 995
    .line 996
    invoke-direct {v3, v14}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 997
    .line 998
    .line 999
    new-array v8, v8, [Lkotlin/jvm/functions/Function2;

    .line 1000
    .line 1001
    aput-object v4, v8, v22

    .line 1002
    .line 1003
    aput-object v6, v8, v10

    .line 1004
    .line 1005
    aput-object v7, v8, v17

    .line 1006
    .line 1007
    aput-object v11, v8, v16

    .line 1008
    .line 1009
    aput-object v12, v8, v18

    .line 1010
    .line 1011
    aput-object v13, v8, v15

    .line 1012
    .line 1013
    const/16 v20, 0x6

    .line 1014
    .line 1015
    aput-object v2, v8, v20

    .line 1016
    .line 1017
    const/16 v19, 0x7

    .line 1018
    .line 1019
    aput-object v9, v8, v19

    .line 1020
    .line 1021
    aput-object v5, v8, v1

    .line 1022
    .line 1023
    aput-object v3, v8, v23

    .line 1024
    .line 1025
    const-class v1, Ljava/util/List;

    .line 1026
    .line 1027
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v2

    .line 1031
    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v2

    .line 1035
    const-class v3, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandlerFactory;

    .line 1036
    .line 1037
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v3

    .line 1041
    invoke-virtual {v3}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v3

    .line 1045
    const-string v4, "<"

    .line 1046
    .line 1047
    const-string v5, ">"

    .line 1048
    .line 1049
    invoke-static {v2, v4, v3, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v2

    .line 1053
    new-instance v14, Lorg/koin/core/qualifier/StringQualifier;

    .line 1054
    .line 1055
    invoke-direct {v14, v2}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    new-instance v15, Lnet/thunderbird/app/common/core/logging/LoggerModuleKt$appCommonCoreLogger$lambda$0$$inlined$singleListOf$default$1;

    .line 1059
    .line 1060
    invoke-direct {v15, v8, v10}, Lnet/thunderbird/app/common/core/logging/LoggerModuleKt$appCommonCoreLogger$lambda$0$$inlined$singleListOf$default$1;-><init>([Lkotlin/jvm/functions/Function2;I)V

    .line 1061
    .line 1062
    .line 1063
    new-instance v11, Lorg/koin/core/definition/BeanDefinition;

    .line 1064
    .line 1065
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v13

    .line 1069
    sget-object v12, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1070
    .line 1071
    sget-object v16, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 1072
    .line 1073
    invoke-direct/range {v11 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1074
    .line 1075
    .line 1076
    invoke-static {v11, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 1077
    .line 1078
    .line 1079
    return-object v21

    .line 1080
    :pswitch_10
    move-object/from16 v0, p1

    .line 1081
    .line 1082
    check-cast v0, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;

    .line 1083
    .line 1084
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1085
    .line 1086
    .line 1087
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 1088
    .line 1089
    invoke-direct {v1, v13}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1090
    .line 1091
    .line 1092
    iget-object v2, v0, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->stateClass:Lkotlin/jvm/internal/ClassReference;

    .line 1093
    .line 1094
    const-class v3, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListSearchEvent$UpdateSearchQuery;

    .line 1095
    .line 1096
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v3

    .line 1100
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1101
    .line 1102
    const/16 v5, 0x11

    .line 1103
    .line 1104
    invoke-direct {v4, v5}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1105
    .line 1106
    .line 1107
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1108
    .line 1109
    const/16 v6, 0x12

    .line 1110
    .line 1111
    invoke-direct {v5, v6, v1}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v0, v2, v3, v4, v5}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1115
    .line 1116
    .line 1117
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 1118
    .line 1119
    invoke-direct {v1, v12}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1120
    .line 1121
    .line 1122
    const-class v3, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListSearchEvent$SearchRemotely;

    .line 1123
    .line 1124
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v3

    .line 1128
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1129
    .line 1130
    const/16 v5, 0x13

    .line 1131
    .line 1132
    invoke-direct {v4, v5}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1133
    .line 1134
    .line 1135
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1136
    .line 1137
    const/16 v6, 0x14

    .line 1138
    .line 1139
    invoke-direct {v5, v6, v1}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v0, v2, v3, v4, v5}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1143
    .line 1144
    .line 1145
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 1146
    .line 1147
    invoke-direct {v1, v11}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1148
    .line 1149
    .line 1150
    const-class v3, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListSearchEvent$ExitSearchMode;

    .line 1151
    .line 1152
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v3

    .line 1156
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1157
    .line 1158
    const/16 v7, 0x15

    .line 1159
    .line 1160
    invoke-direct {v4, v7}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1161
    .line 1162
    .line 1163
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1164
    .line 1165
    const/16 v11, 0x16

    .line 1166
    .line 1167
    invoke-direct {v5, v11, v1}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v0, v2, v3, v4, v5}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1171
    .line 1172
    .line 1173
    return-object v21

    .line 1174
    :pswitch_11
    move/from16 v23, v14

    .line 1175
    .line 1176
    move-object/from16 v0, p1

    .line 1177
    .line 1178
    check-cast v0, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;

    .line 1179
    .line 1180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1181
    .line 1182
    .line 1183
    new-instance v2, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 1184
    .line 1185
    invoke-direct {v2, v15}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1186
    .line 1187
    .line 1188
    iget-object v3, v0, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->stateClass:Lkotlin/jvm/internal/ClassReference;

    .line 1189
    .line 1190
    const-class v4, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;

    .line 1191
    .line 1192
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v4

    .line 1196
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1197
    .line 1198
    invoke-direct {v5, v7}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1199
    .line 1200
    .line 1201
    new-instance v7, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 1202
    .line 1203
    invoke-direct {v7, v6, v2}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v0, v3, v4, v5, v7}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1207
    .line 1208
    .line 1209
    new-instance v2, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 1210
    .line 1211
    const/4 v4, 0x6

    .line 1212
    invoke-direct {v2, v4}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1213
    .line 1214
    .line 1215
    const-class v4, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$EnterSelectionMode;

    .line 1216
    .line 1217
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v4

    .line 1221
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1222
    .line 1223
    invoke-direct {v5, v13}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1224
    .line 1225
    .line 1226
    new-instance v7, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1227
    .line 1228
    invoke-direct {v7, v12, v2}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v0, v3, v4, v5, v7}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1232
    .line 1233
    .line 1234
    new-instance v2, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 1235
    .line 1236
    const/4 v4, 0x7

    .line 1237
    invoke-direct {v2, v4}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1238
    .line 1239
    .line 1240
    const-class v4, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListSearchEvent$EnterSearchMode;

    .line 1241
    .line 1242
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v4

    .line 1246
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1247
    .line 1248
    invoke-direct {v5, v11}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1249
    .line 1250
    .line 1251
    new-instance v7, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1252
    .line 1253
    invoke-direct {v7, v6, v2}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {v0, v3, v4, v5, v7}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1257
    .line 1258
    .line 1259
    new-instance v2, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 1260
    .line 1261
    invoke-direct {v2, v1}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1262
    .line 1263
    .line 1264
    const-class v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SetMessageActive;

    .line 1265
    .line 1266
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v1

    .line 1270
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1271
    .line 1272
    move/from16 v5, v23

    .line 1273
    .line 1274
    invoke-direct {v4, v5}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1275
    .line 1276
    .line 1277
    new-instance v6, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 1278
    .line 1279
    invoke-direct {v6, v12, v2}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {v0, v3, v1, v4, v6}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1283
    .line 1284
    .line 1285
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 1286
    .line 1287
    invoke-direct {v1, v5}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1288
    .line 1289
    .line 1290
    const-class v2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;

    .line 1291
    .line 1292
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v2

    .line 1296
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1297
    .line 1298
    invoke-direct {v4, v8}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1299
    .line 1300
    .line 1301
    new-instance v5, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 1302
    .line 1303
    invoke-direct {v5, v11, v1}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v0, v3, v2, v4, v5}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1307
    .line 1308
    .line 1309
    return-object v21

    .line 1310
    :pswitch_12
    move-object/from16 v12, p1

    .line 1311
    .line 1312
    check-cast v12, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 1313
    .line 1314
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1315
    .line 1316
    .line 1317
    const/16 v19, 0x0

    .line 1318
    .line 1319
    const/16 v20, 0x7df

    .line 1320
    .line 1321
    const/4 v13, 0x0

    .line 1322
    const/4 v14, 0x0

    .line 1323
    const/4 v15, 0x0

    .line 1324
    const/16 v16, 0x0

    .line 1325
    .line 1326
    const/16 v17, 0x0

    .line 1327
    .line 1328
    const/16 v18, 0x0

    .line 1329
    .line 1330
    invoke-static/range {v12 .. v20}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;Lkotlinx/collections/immutable/PersistentMap;Lkotlinx/collections/immutable/PersistentMap;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;ZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v0

    .line 1334
    return-object v0

    .line 1335
    :pswitch_13
    move/from16 v16, v2

    .line 1336
    .line 1337
    move/from16 v22, v3

    .line 1338
    .line 1339
    move/from16 v18, v5

    .line 1340
    .line 1341
    move/from16 v17, v9

    .line 1342
    .line 1343
    move-object/from16 v0, p1

    .line 1344
    .line 1345
    check-cast v0, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;

    .line 1346
    .line 1347
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1348
    .line 1349
    .line 1350
    new-instance v2, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1351
    .line 1352
    const/16 v3, 0x19

    .line 1353
    .line 1354
    invoke-direct {v2, v3}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1355
    .line 1356
    .line 1357
    iget-object v3, v0, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->stateClass:Lkotlin/jvm/internal/ClassReference;

    .line 1358
    .line 1359
    const-class v5, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdatePreferences;

    .line 1360
    .line 1361
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v5

    .line 1365
    new-instance v6, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1366
    .line 1367
    move/from16 v9, v22

    .line 1368
    .line 1369
    invoke-direct {v6, v9}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1370
    .line 1371
    .line 1372
    new-instance v9, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 1373
    .line 1374
    invoke-direct {v9, v8, v2}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v0, v3, v5, v6, v9}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1378
    .line 1379
    .line 1380
    new-instance v2, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1381
    .line 1382
    const/16 v5, 0x1a

    .line 1383
    .line 1384
    invoke-direct {v2, v5}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1385
    .line 1386
    .line 1387
    const-class v5, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$ChangeSortCriteria;

    .line 1388
    .line 1389
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v5

    .line 1393
    new-instance v6, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1394
    .line 1395
    const/4 v8, 0x7

    .line 1396
    invoke-direct {v6, v8}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1397
    .line 1398
    .line 1399
    new-instance v8, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 1400
    .line 1401
    invoke-direct {v8, v7, v2}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {v0, v3, v5, v6, v8}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1405
    .line 1406
    .line 1407
    new-instance v2, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1408
    .line 1409
    const/16 v5, 0x1b

    .line 1410
    .line 1411
    invoke-direct {v2, v5}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1412
    .line 1413
    .line 1414
    const-class v5, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$SwipeActionsLoaded;

    .line 1415
    .line 1416
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v5

    .line 1420
    new-instance v6, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1421
    .line 1422
    invoke-direct {v6, v1}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1423
    .line 1424
    .line 1425
    new-instance v7, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 1426
    .line 1427
    invoke-direct {v7, v13, v2}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v0, v3, v5, v6, v7}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1431
    .line 1432
    .line 1433
    new-instance v2, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1434
    .line 1435
    const/16 v5, 0x1c

    .line 1436
    .line 1437
    invoke-direct {v2, v5}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1438
    .line 1439
    .line 1440
    const-class v5, Lnet/thunderbird/feature/mail/message/list/ui/event/FolderEvent$FolderLoaded;

    .line 1441
    .line 1442
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v5

    .line 1446
    new-instance v6, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1447
    .line 1448
    invoke-direct {v6, v10}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1449
    .line 1450
    .line 1451
    new-instance v7, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 1452
    .line 1453
    move/from16 v8, v18

    .line 1454
    .line 1455
    invoke-direct {v7, v8, v2}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {v0, v3, v5, v6, v7}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1459
    .line 1460
    .line 1461
    new-instance v2, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1462
    .line 1463
    invoke-direct {v2, v4}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1464
    .line 1465
    .line 1466
    const-class v4, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$SelectAll;

    .line 1467
    .line 1468
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v4

    .line 1472
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1473
    .line 1474
    move/from16 v6, v17

    .line 1475
    .line 1476
    invoke-direct {v5, v6}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1477
    .line 1478
    .line 1479
    new-instance v6, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 1480
    .line 1481
    invoke-direct {v6, v15, v2}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v0, v3, v4, v5, v6}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1485
    .line 1486
    .line 1487
    new-instance v2, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 1488
    .line 1489
    invoke-direct {v2, v10}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1490
    .line 1491
    .line 1492
    const-class v4, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$DeselectAll;

    .line 1493
    .line 1494
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v4

    .line 1498
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1499
    .line 1500
    move/from16 v6, v16

    .line 1501
    .line 1502
    invoke-direct {v5, v6}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1503
    .line 1504
    .line 1505
    new-instance v6, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 1506
    .line 1507
    const/4 v7, 0x6

    .line 1508
    invoke-direct {v6, v7, v2}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1509
    .line 1510
    .line 1511
    invoke-virtual {v0, v3, v4, v5, v6}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1512
    .line 1513
    .line 1514
    new-instance v2, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 1515
    .line 1516
    const/4 v6, 0x2

    .line 1517
    invoke-direct {v2, v6}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1518
    .line 1519
    .line 1520
    const-class v4, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnFocusEnter;

    .line 1521
    .line 1522
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v4

    .line 1526
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1527
    .line 1528
    const/4 v8, 0x4

    .line 1529
    invoke-direct {v5, v8}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1530
    .line 1531
    .line 1532
    new-instance v6, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 1533
    .line 1534
    const/4 v8, 0x7

    .line 1535
    invoke-direct {v6, v8, v2}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1536
    .line 1537
    .line 1538
    invoke-virtual {v0, v3, v4, v5, v6}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1539
    .line 1540
    .line 1541
    new-instance v2, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 1542
    .line 1543
    const/4 v6, 0x3

    .line 1544
    invoke-direct {v2, v6}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1545
    .line 1546
    .line 1547
    const-class v4, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnFocusExit;

    .line 1548
    .line 1549
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v4

    .line 1553
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1554
    .line 1555
    invoke-direct {v5, v15}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1556
    .line 1557
    .line 1558
    new-instance v6, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 1559
    .line 1560
    invoke-direct {v6, v1, v2}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1561
    .line 1562
    .line 1563
    invoke-virtual {v0, v3, v4, v5, v6}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1564
    .line 1565
    .line 1566
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;

    .line 1567
    .line 1568
    const/4 v8, 0x4

    .line 1569
    invoke-direct {v1, v8}, Lnet/thunderbird/feature/mail/message/reader/impl/inject/FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1570
    .line 1571
    .line 1572
    const-class v2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$UpdateFooter;

    .line 1573
    .line 1574
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v2

    .line 1578
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 1579
    .line 1580
    const/4 v6, 0x6

    .line 1581
    invoke-direct {v4, v6}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 1582
    .line 1583
    .line 1584
    new-instance v5, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 1585
    .line 1586
    const/16 v6, 0x9

    .line 1587
    .line 1588
    invoke-direct {v5, v6, v1}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {v0, v3, v2, v4, v5}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 1592
    .line 1593
    .line 1594
    return-object v21

    .line 1595
    :pswitch_14
    move-object/from16 v0, p1

    .line 1596
    .line 1597
    check-cast v0, Ljava/lang/Integer;

    .line 1598
    .line 1599
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1600
    .line 1601
    .line 1602
    move-result v0

    .line 1603
    neg-int v0, v0

    .line 1604
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v0

    .line 1608
    return-object v0

    .line 1609
    :pswitch_15
    move-object/from16 v0, p1

    .line 1610
    .line 1611
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 1612
    .line 1613
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1614
    .line 1615
    .line 1616
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v0

    .line 1620
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v0

    .line 1624
    return-object v0

    .line 1625
    :pswitch_16
    move-object/from16 v0, p1

    .line 1626
    .line 1627
    check-cast v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 1628
    .line 1629
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1630
    .line 1631
    .line 1632
    new-instance v0, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 1633
    .line 1634
    const/16 v2, 0x19

    .line 1635
    .line 1636
    invoke-direct {v0, v2}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1637
    .line 1638
    .line 1639
    invoke-static {v0}, Landroidx/compose/animation/EnterExitTransitionKt;->slideInHorizontally$default(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v0

    .line 1643
    new-instance v2, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1644
    .line 1645
    invoke-direct {v2, v1}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1646
    .line 1647
    .line 1648
    invoke-static {v2}, Landroidx/compose/animation/EnterExitTransitionKt;->slideOutHorizontally$default(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v1

    .line 1652
    invoke-static {v0, v1}, Landroidx/compose/animation/CrossfadeKt;->togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;

    .line 1653
    .line 1654
    .line 1655
    move-result-object v0

    .line 1656
    return-object v0

    .line 1657
    :pswitch_17
    move-object/from16 v0, p1

    .line 1658
    .line 1659
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 1660
    .line 1661
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1662
    .line 1663
    .line 1664
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 1665
    .line 1666
    return-object v0

    .line 1667
    :pswitch_18
    move-object/from16 v0, p1

    .line 1668
    .line 1669
    check-cast v0, Lorg/koin/core/module/Module;

    .line 1670
    .line 1671
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1672
    .line 1673
    .line 1674
    new-array v1, v10, [Lorg/koin/core/module/Module;

    .line 1675
    .line 1676
    sget-object v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/inject/MessageListSideEffectsModuleKt;->messageListSideEffectsModule:Lorg/koin/core/module/Module;

    .line 1677
    .line 1678
    const/16 v22, 0x0

    .line 1679
    .line 1680
    aput-object v2, v1, v22

    .line 1681
    .line 1682
    iget-object v2, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 1683
    .line 1684
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 1685
    .line 1686
    .line 1687
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1688
    .line 1689
    invoke-direct {v1, v6}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1690
    .line 1691
    .line 1692
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 1693
    .line 1694
    const-class v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;

    .line 1695
    .line 1696
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v24

    .line 1700
    sget-object v26, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 1701
    .line 1702
    const/16 v25, 0x0

    .line 1703
    .line 1704
    sget-object v30, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 1705
    .line 1706
    move-object/from16 v23, v26

    .line 1707
    .line 1708
    move-object/from16 v27, v30

    .line 1709
    .line 1710
    move-object/from16 v26, v1

    .line 1711
    .line 1712
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1713
    .line 1714
    .line 1715
    move-object/from16 v1, v22

    .line 1716
    .line 1717
    move-object/from16 v26, v23

    .line 1718
    .line 1719
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1720
    .line 1721
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1722
    .line 1723
    .line 1724
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1725
    .line 1726
    .line 1727
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1728
    .line 1729
    const/16 v2, 0x13

    .line 1730
    .line 1731
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1732
    .line 1733
    .line 1734
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1735
    .line 1736
    const-class v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 1737
    .line 1738
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v27

    .line 1742
    const/16 v28, 0x0

    .line 1743
    .line 1744
    move-object/from16 v29, v1

    .line 1745
    .line 1746
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1747
    .line 1748
    .line 1749
    move-object/from16 v1, v25

    .line 1750
    .line 1751
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1752
    .line 1753
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1754
    .line 1755
    .line 1756
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1757
    .line 1758
    .line 1759
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1760
    .line 1761
    const/16 v6, 0x14

    .line 1762
    .line 1763
    invoke-direct {v1, v6}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1764
    .line 1765
    .line 1766
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1767
    .line 1768
    const-class v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;

    .line 1769
    .line 1770
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v27

    .line 1774
    move-object/from16 v29, v1

    .line 1775
    .line 1776
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1777
    .line 1778
    .line 1779
    move-object/from16 v1, v25

    .line 1780
    .line 1781
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1782
    .line 1783
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1784
    .line 1785
    .line 1786
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1787
    .line 1788
    .line 1789
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1790
    .line 1791
    const/16 v2, 0x15

    .line 1792
    .line 1793
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1794
    .line 1795
    .line 1796
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1797
    .line 1798
    const-class v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;

    .line 1799
    .line 1800
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v27

    .line 1804
    move-object/from16 v29, v1

    .line 1805
    .line 1806
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1807
    .line 1808
    .line 1809
    move-object/from16 v1, v25

    .line 1810
    .line 1811
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1812
    .line 1813
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1814
    .line 1815
    .line 1816
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1817
    .line 1818
    .line 1819
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1820
    .line 1821
    const/16 v2, 0x16

    .line 1822
    .line 1823
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1824
    .line 1825
    .line 1826
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1827
    .line 1828
    const-class v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$ViewModel;

    .line 1829
    .line 1830
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1831
    .line 1832
    .line 1833
    move-result-object v27

    .line 1834
    move-object/from16 v29, v1

    .line 1835
    .line 1836
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1837
    .line 1838
    .line 1839
    move-object/from16 v1, v25

    .line 1840
    .line 1841
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1842
    .line 1843
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1847
    .line 1848
    .line 1849
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1850
    .line 1851
    const/16 v2, 0x17

    .line 1852
    .line 1853
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1854
    .line 1855
    .line 1856
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1857
    .line 1858
    const-class v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment$Factory;

    .line 1859
    .line 1860
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v27

    .line 1864
    move-object/from16 v29, v1

    .line 1865
    .line 1866
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1867
    .line 1868
    .line 1869
    move-object/from16 v1, v25

    .line 1870
    .line 1871
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1872
    .line 1873
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1874
    .line 1875
    .line 1876
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1877
    .line 1878
    .line 1879
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1880
    .line 1881
    invoke-direct {v1, v7}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1882
    .line 1883
    .line 1884
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1885
    .line 1886
    const-class v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;

    .line 1887
    .line 1888
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v27

    .line 1892
    move-object/from16 v29, v1

    .line 1893
    .line 1894
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1895
    .line 1896
    .line 1897
    move-object/from16 v1, v25

    .line 1898
    .line 1899
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1900
    .line 1901
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1902
    .line 1903
    .line 1904
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1905
    .line 1906
    .line 1907
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1908
    .line 1909
    invoke-direct {v1, v13}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1910
    .line 1911
    .line 1912
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1913
    .line 1914
    const-class v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;

    .line 1915
    .line 1916
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v27

    .line 1920
    move-object/from16 v29, v1

    .line 1921
    .line 1922
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1923
    .line 1924
    .line 1925
    move-object/from16 v1, v25

    .line 1926
    .line 1927
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1928
    .line 1929
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1930
    .line 1931
    .line 1932
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1933
    .line 1934
    .line 1935
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1936
    .line 1937
    invoke-direct {v1, v12}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1938
    .line 1939
    .line 1940
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1941
    .line 1942
    const-class v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;

    .line 1943
    .line 1944
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v27

    .line 1948
    move-object/from16 v29, v1

    .line 1949
    .line 1950
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1951
    .line 1952
    .line 1953
    move-object/from16 v1, v25

    .line 1954
    .line 1955
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1956
    .line 1957
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1958
    .line 1959
    .line 1960
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1961
    .line 1962
    .line 1963
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1964
    .line 1965
    invoke-direct {v1, v11}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1966
    .line 1967
    .line 1968
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 1969
    .line 1970
    const-class v2, Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 1971
    .line 1972
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v27

    .line 1976
    move-object/from16 v29, v1

    .line 1977
    .line 1978
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1979
    .line 1980
    .line 1981
    move-object/from16 v1, v25

    .line 1982
    .line 1983
    move-object/from16 v2, v30

    .line 1984
    .line 1985
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1986
    .line 1987
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1988
    .line 1989
    .line 1990
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1991
    .line 1992
    .line 1993
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 1994
    .line 1995
    const/16 v3, 0x10

    .line 1996
    .line 1997
    invoke-direct {v1, v3}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1998
    .line 1999
    .line 2000
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 2001
    .line 2002
    const-class v3, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalDeleteOperationDecider;

    .line 2003
    .line 2004
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2005
    .line 2006
    .line 2007
    move-result-object v27

    .line 2008
    sget-object v30, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 2009
    .line 2010
    move-object/from16 v29, v1

    .line 2011
    .line 2012
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2013
    .line 2014
    .line 2015
    move-object/from16 v1, v25

    .line 2016
    .line 2017
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2018
    .line 2019
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2020
    .line 2021
    .line 2022
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2023
    .line 2024
    .line 2025
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 2026
    .line 2027
    const/16 v3, 0x11

    .line 2028
    .line 2029
    invoke-direct {v1, v3}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2030
    .line 2031
    .line 2032
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 2033
    .line 2034
    const-class v3, Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 2035
    .line 2036
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2037
    .line 2038
    .line 2039
    move-result-object v27

    .line 2040
    move-object/from16 v29, v1

    .line 2041
    .line 2042
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2043
    .line 2044
    .line 2045
    move-object/from16 v1, v25

    .line 2046
    .line 2047
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2048
    .line 2049
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2050
    .line 2051
    .line 2052
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2053
    .line 2054
    .line 2055
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 2056
    .line 2057
    const/16 v3, 0x12

    .line 2058
    .line 2059
    invoke-direct {v1, v3}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2060
    .line 2061
    .line 2062
    new-instance v25, Lorg/koin/core/definition/BeanDefinition;

    .line 2063
    .line 2064
    const-class v3, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenRenderer;

    .line 2065
    .line 2066
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2067
    .line 2068
    .line 2069
    move-result-object v27

    .line 2070
    move-object/from16 v29, v1

    .line 2071
    .line 2072
    move-object/from16 v30, v2

    .line 2073
    .line 2074
    invoke-direct/range {v25 .. v30}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2075
    .line 2076
    .line 2077
    move-object/from16 v1, v25

    .line 2078
    .line 2079
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2080
    .line 2081
    .line 2082
    return-object v21

    .line 2083
    :pswitch_19
    move-object/from16 v0, p1

    .line 2084
    .line 2085
    check-cast v0, Lnet/thunderbird/feature/changelog/internal/ReleaseUiModel;

    .line 2086
    .line 2087
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2088
    .line 2089
    .line 2090
    iget-object v0, v0, Lnet/thunderbird/feature/changelog/internal/ReleaseUiModel;->version:Ljava/lang/String;

    .line 2091
    .line 2092
    return-object v0

    .line 2093
    :pswitch_1a
    move-object/from16 v0, p1

    .line 2094
    .line 2095
    check-cast v0, Lorg/koin/core/module/Module;

    .line 2096
    .line 2097
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2098
    .line 2099
    .line 2100
    new-instance v15, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 2101
    .line 2102
    const/16 v1, 0x18

    .line 2103
    .line 2104
    invoke-direct {v15, v1}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2105
    .line 2106
    .line 2107
    new-instance v11, Lorg/koin/core/definition/BeanDefinition;

    .line 2108
    .line 2109
    const-class v1, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 2110
    .line 2111
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2112
    .line 2113
    .line 2114
    move-result-object v13

    .line 2115
    sget-object v23, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 2116
    .line 2117
    const/4 v14, 0x0

    .line 2118
    sget-object v27, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 2119
    .line 2120
    move-object/from16 v12, v23

    .line 2121
    .line 2122
    move-object/from16 v16, v27

    .line 2123
    .line 2124
    invoke-direct/range {v11 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2125
    .line 2126
    .line 2127
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2128
    .line 2129
    invoke-direct {v1, v11}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2130
    .line 2131
    .line 2132
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2133
    .line 2134
    .line 2135
    new-instance v1, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 2136
    .line 2137
    const/16 v2, 0x19

    .line 2138
    .line 2139
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2140
    .line 2141
    .line 2142
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2143
    .line 2144
    const-class v2, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;

    .line 2145
    .line 2146
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v24

    .line 2150
    const/16 v25, 0x0

    .line 2151
    .line 2152
    move-object/from16 v26, v1

    .line 2153
    .line 2154
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2155
    .line 2156
    .line 2157
    move-object/from16 v1, v22

    .line 2158
    .line 2159
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2160
    .line 2161
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2162
    .line 2163
    .line 2164
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2165
    .line 2166
    .line 2167
    new-instance v1, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 2168
    .line 2169
    const/16 v2, 0x1a

    .line 2170
    .line 2171
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2172
    .line 2173
    .line 2174
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2175
    .line 2176
    const-class v2, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAccountProfileDataMapper;

    .line 2177
    .line 2178
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v24

    .line 2182
    move-object/from16 v26, v1

    .line 2183
    .line 2184
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2185
    .line 2186
    .line 2187
    move-object/from16 v1, v22

    .line 2188
    .line 2189
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2190
    .line 2191
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2192
    .line 2193
    .line 2194
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2195
    .line 2196
    .line 2197
    new-instance v1, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 2198
    .line 2199
    const/16 v2, 0x1b

    .line 2200
    .line 2201
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2202
    .line 2203
    .line 2204
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2205
    .line 2206
    const-class v2, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 2207
    .line 2208
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2209
    .line 2210
    .line 2211
    move-result-object v24

    .line 2212
    move-object/from16 v26, v1

    .line 2213
    .line 2214
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2215
    .line 2216
    .line 2217
    move-object/from16 v1, v22

    .line 2218
    .line 2219
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2220
    .line 2221
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2222
    .line 2223
    .line 2224
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2225
    .line 2226
    .line 2227
    new-instance v1, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 2228
    .line 2229
    const/16 v2, 0x1c

    .line 2230
    .line 2231
    invoke-direct {v1, v2}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2232
    .line 2233
    .line 2234
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2235
    .line 2236
    const-class v2, Lnet/thunderbird/feature/account/storage/legacy/LegacyAvatarDtoStorageHandler;

    .line 2237
    .line 2238
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2239
    .line 2240
    .line 2241
    move-result-object v24

    .line 2242
    move-object/from16 v26, v1

    .line 2243
    .line 2244
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2245
    .line 2246
    .line 2247
    move-object/from16 v1, v22

    .line 2248
    .line 2249
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2250
    .line 2251
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2252
    .line 2253
    .line 2254
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2255
    .line 2256
    .line 2257
    new-instance v1, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 2258
    .line 2259
    invoke-direct {v1, v4}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2260
    .line 2261
    .line 2262
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2263
    .line 2264
    const-class v2, Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;

    .line 2265
    .line 2266
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2267
    .line 2268
    .line 2269
    move-result-object v24

    .line 2270
    move-object/from16 v26, v1

    .line 2271
    .line 2272
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2273
    .line 2274
    .line 2275
    move-object/from16 v1, v22

    .line 2276
    .line 2277
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2278
    .line 2279
    invoke-direct {v2, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2280
    .line 2281
    .line 2282
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2283
    .line 2284
    .line 2285
    new-instance v1, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 2286
    .line 2287
    invoke-direct {v1, v10}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2288
    .line 2289
    .line 2290
    new-instance v22, Lorg/koin/core/definition/BeanDefinition;

    .line 2291
    .line 2292
    const-class v2, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;

    .line 2293
    .line 2294
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2295
    .line 2296
    .line 2297
    move-result-object v24

    .line 2298
    sget-object v27, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 2299
    .line 2300
    move-object/from16 v26, v1

    .line 2301
    .line 2302
    invoke-direct/range {v22 .. v27}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2303
    .line 2304
    .line 2305
    move-object/from16 v1, v22

    .line 2306
    .line 2307
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2308
    .line 2309
    .line 2310
    return-object v21

    .line 2311
    :pswitch_1b
    move-object/from16 v0, p1

    .line 2312
    .line 2313
    check-cast v0, Ljava/lang/String;

    .line 2314
    .line 2315
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2316
    .line 2317
    .line 2318
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2319
    .line 2320
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 2321
    .line 2322
    .line 2323
    move-result-object v0

    .line 2324
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2325
    .line 2326
    .line 2327
    return-object v0

    .line 2328
    :pswitch_1c
    move-object/from16 v0, p1

    .line 2329
    .line 2330
    check-cast v0, Lorg/koin/core/module/Module;

    .line 2331
    .line 2332
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2333
    .line 2334
    .line 2335
    new-instance v5, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 2336
    .line 2337
    const/4 v6, 0x2

    .line 2338
    invoke-direct {v5, v6}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2339
    .line 2340
    .line 2341
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 2342
    .line 2343
    const-class v2, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 2344
    .line 2345
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2346
    .line 2347
    .line 2348
    move-result-object v3

    .line 2349
    sget-object v7, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 2350
    .line 2351
    const/4 v4, 0x0

    .line 2352
    sget-object v6, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 2353
    .line 2354
    move-object v2, v7

    .line 2355
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2356
    .line 2357
    .line 2358
    move-object v2, v6

    .line 2359
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 2360
    .line 2361
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2362
    .line 2363
    .line 2364
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2365
    .line 2366
    .line 2367
    new-instance v10, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 2368
    .line 2369
    const/4 v6, 0x3

    .line 2370
    invoke-direct {v10, v6}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2371
    .line 2372
    .line 2373
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 2374
    .line 2375
    const-class v1, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;

    .line 2376
    .line 2377
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2378
    .line 2379
    .line 2380
    move-result-object v8

    .line 2381
    const/4 v9, 0x0

    .line 2382
    sget-object v11, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 2383
    .line 2384
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2385
    .line 2386
    .line 2387
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2388
    .line 2389
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2390
    .line 2391
    .line 2392
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2393
    .line 2394
    .line 2395
    new-instance v10, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 2396
    .line 2397
    const/4 v8, 0x4

    .line 2398
    invoke-direct {v10, v8}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2399
    .line 2400
    .line 2401
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 2402
    .line 2403
    const-class v1, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;

    .line 2404
    .line 2405
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2406
    .line 2407
    .line 2408
    move-result-object v8

    .line 2409
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2410
    .line 2411
    .line 2412
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 2413
    .line 2414
    invoke-direct {v1, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 2415
    .line 2416
    .line 2417
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 2418
    .line 2419
    .line 2420
    new-instance v10, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 2421
    .line 2422
    invoke-direct {v10, v15}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2423
    .line 2424
    .line 2425
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 2426
    .line 2427
    const-class v1, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;

    .line 2428
    .line 2429
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2430
    .line 2431
    .line 2432
    move-result-object v8

    .line 2433
    move-object v11, v2

    .line 2434
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 2435
    .line 2436
    .line 2437
    invoke-static {v6, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 2438
    .line 2439
    .line 2440
    return-object v21

    .line 2441
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
