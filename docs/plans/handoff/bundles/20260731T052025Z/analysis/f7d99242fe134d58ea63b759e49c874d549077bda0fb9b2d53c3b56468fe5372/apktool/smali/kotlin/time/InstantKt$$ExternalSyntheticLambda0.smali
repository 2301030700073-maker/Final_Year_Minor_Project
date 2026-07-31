.class public final synthetic Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lcom/fsck/k9/mailstore/LocalStore$8;I)V
    .locals 0

    .line 7
    iput p2, p0, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    const/16 v2, 0x2d

    .line 8
    .line 9
    const/16 v3, 0x74

    .line 10
    .line 11
    const/16 v4, 0x54

    .line 12
    .line 13
    const/16 v5, 0x3a

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    const/4 v7, 0x0

    .line 17
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    move-object/from16 v0, p1

    .line 23
    .line 24
    check-cast v0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlinx/io/Sink$-CC;->offsetSecondsOfMinute$default(Lkotlinx/datetime/format/UtcOffsetFormat$Builder;)V

    .line 30
    .line 31
    .line 32
    return-object v8

    .line 33
    :pswitch_0
    move-object/from16 v0, p1

    .line 34
    .line 35
    check-cast v0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v5}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lkotlinx/io/Sink$-CC;->offsetSecondsOfMinute$default(Lkotlinx/datetime/format/UtcOffsetFormat$Builder;)V

    .line 44
    .line 45
    .line 46
    return-object v8

    .line 47
    :pswitch_1
    move-object/from16 v0, p1

    .line 48
    .line 49
    check-cast v0, Lkotlinx/datetime/format/DateTimeFormatBuilder$WithTime;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x2e

    .line 55
    .line 56
    invoke-static {v0, v1}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Lkotlinx/datetime/format/DateTimeFormatBuilder$WithTime;->secondFraction()V

    .line 60
    .line 61
    .line 62
    return-object v8

    .line 63
    :pswitch_2
    move-object/from16 v0, p1

    .line 64
    .line 65
    check-cast v0, Lkotlinx/datetime/format/DateTimeFormatBuilder$WithTime;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v5}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Lkotlinx/datetime/format/Padding;->ZERO:Lkotlinx/datetime/format/Padding;

    .line 74
    .line 75
    invoke-interface {v0, v1}, Lkotlinx/datetime/format/DateTimeFormatBuilder$WithTime;->second(Lkotlinx/datetime/format/Padding;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    const/16 v2, 0x1b

    .line 81
    .line 82
    invoke-direct {v1, v2}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 83
    .line 84
    .line 85
    const-string v2, ""

    .line 86
    .line 87
    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt__IndentKt;->optional(Lkotlinx/datetime/format/DateTimeFormatBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 88
    .line 89
    .line 90
    return-object v8

    .line 91
    :pswitch_3
    move-object/from16 v0, p1

    .line 92
    .line 93
    check-cast v0, Lkotlinx/datetime/format/DateTimeFormatBuilder$WithTime;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    return-object v8

    .line 99
    :pswitch_4
    move-object/from16 v0, p1

    .line 100
    .line 101
    check-cast v0, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v4}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 107
    .line 108
    .line 109
    return-object v8

    .line 110
    :pswitch_5
    move-object/from16 v0, p1

    .line 111
    .line 112
    check-cast v0, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v3}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 118
    .line 119
    .line 120
    return-object v8

    .line 121
    :pswitch_6
    move-object/from16 v0, p1

    .line 122
    .line 123
    check-cast v0, Lkotlin/coroutines/CoroutineContext$Element;

    .line 124
    .line 125
    instance-of v1, v0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 126
    .line 127
    if-eqz v1, :cond_0

    .line 128
    .line 129
    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 134
    :pswitch_7
    move-object/from16 v0, p1

    .line 135
    .line 136
    check-cast v0, Ljava/lang/Character;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const/16 v1, 0x30

    .line 143
    .line 144
    if-gt v1, v0, :cond_1

    .line 145
    .line 146
    if-ge v0, v5, :cond_1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_1
    move v6, v7

    .line 150
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    return-object v0

    .line 155
    :pswitch_8
    move-object/from16 v0, p1

    .line 156
    .line 157
    check-cast v0, Ljava/lang/Character;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-ne v0, v5, :cond_2

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_2
    move v6, v7

    .line 167
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    return-object v0

    .line 172
    :pswitch_9
    move-object/from16 v0, p1

    .line 173
    .line 174
    check-cast v0, Ljava/lang/Character;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-ne v0, v5, :cond_3

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_3
    move v6, v7

    .line 184
    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    return-object v0

    .line 189
    :pswitch_a
    move-object/from16 v0, p1

    .line 190
    .line 191
    check-cast v0, Ljava/lang/Character;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eq v0, v4, :cond_5

    .line 198
    .line 199
    if-ne v0, v3, :cond_4

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_4
    move v6, v7

    .line 203
    :cond_5
    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    return-object v0

    .line 208
    :pswitch_b
    move-object/from16 v0, p1

    .line 209
    .line 210
    check-cast v0, Ljava/lang/Character;

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-ne v0, v2, :cond_6

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_6
    move v6, v7

    .line 220
    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    return-object v0

    .line 225
    :pswitch_c
    if-nez p1, :cond_7

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_7
    move v6, v7

    .line 229
    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    return-object v0

    .line 234
    :pswitch_d
    move-object/from16 v0, p1

    .line 235
    .line 236
    check-cast v0, Lcom/skydoves/landscapist/coil3/CoilImageState;

    .line 237
    .line 238
    invoke-static {v0}, Lcom/skydoves/landscapist/coil3/CoilImageKt;->$r8$lambda$eaXpVeZvdW297vamY1I2ZyDu2AQ(Lcom/skydoves/landscapist/coil3/CoilImageState;)Lkotlin/Unit;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    return-object v0

    .line 243
    :pswitch_e
    move-object/from16 v0, p1

    .line 244
    .line 245
    check-cast v0, Lcom/skydoves/landscapist/coil3/CoilImageState;

    .line 246
    .line 247
    invoke-static {v0}, Lcom/skydoves/landscapist/coil3/CoilImageKt;->$r8$lambda$zEJZsghGThWG4dr6vo7CZwMdu2w(Lcom/skydoves/landscapist/coil3/CoilImageState;)Lkotlin/Unit;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    return-object v0

    .line 252
    :pswitch_f
    move-object/from16 v0, p1

    .line 253
    .line 254
    check-cast v0, Lorg/koin/core/module/Module;

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    new-instance v13, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 260
    .line 261
    invoke-direct {v13, v7}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 262
    .line 263
    .line 264
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 265
    .line 266
    const-class v2, Lcom/fsck/k9/view/WebViewConfigProvider;

    .line 267
    .line 268
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    sget-object v3, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 273
    .line 274
    const/4 v12, 0x0

    .line 275
    sget-object v14, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 276
    .line 277
    move-object v10, v3

    .line 278
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 279
    .line 280
    .line 281
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 282
    .line 283
    invoke-direct {v2, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 287
    .line 288
    .line 289
    new-instance v6, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 290
    .line 291
    const/16 v2, 0xb

    .line 292
    .line 293
    invoke-direct {v6, v2}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 294
    .line 295
    .line 296
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 297
    .line 298
    const-class v4, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;

    .line 299
    .line 300
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    const/4 v5, 0x0

    .line 305
    sget-object v7, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 306
    .line 307
    invoke-direct/range {v2 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 308
    .line 309
    .line 310
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 311
    .line 312
    invoke-direct {v4, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 316
    .line 317
    .line 318
    new-instance v6, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 319
    .line 320
    const/16 v2, 0xc

    .line 321
    .line 322
    invoke-direct {v6, v2}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 323
    .line 324
    .line 325
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 326
    .line 327
    const-class v4, Lcom/fsck/k9/helper/ReplyToParser;

    .line 328
    .line 329
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-direct/range {v2 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 334
    .line 335
    .line 336
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 337
    .line 338
    invoke-direct {v4, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 342
    .line 343
    .line 344
    new-instance v6, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 345
    .line 346
    const/16 v2, 0xd

    .line 347
    .line 348
    invoke-direct {v6, v2}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 349
    .line 350
    .line 351
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 352
    .line 353
    const-class v4, Lcom/fsck/k9/message/ReplyActionStrategy;

    .line 354
    .line 355
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-direct/range {v2 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 360
    .line 361
    .line 362
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 363
    .line 364
    invoke-direct {v4, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 368
    .line 369
    .line 370
    new-instance v6, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 371
    .line 372
    const/16 v2, 0xe

    .line 373
    .line 374
    invoke-direct {v6, v2}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 375
    .line 376
    .line 377
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 378
    .line 379
    const-class v4, Lcom/fsck/k9/view/K9WebViewClient;

    .line 380
    .line 381
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-direct/range {v2 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 386
    .line 387
    .line 388
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 389
    .line 390
    invoke-direct {v4, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 394
    .line 395
    .line 396
    new-instance v6, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 397
    .line 398
    const/16 v2, 0xf

    .line 399
    .line 400
    invoke-direct {v6, v2}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 401
    .line 402
    .line 403
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 404
    .line 405
    const-class v4, Lcom/fsck/k9/view/WebViewClientFactory;

    .line 406
    .line 407
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    invoke-direct/range {v2 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 412
    .line 413
    .line 414
    new-instance v4, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 415
    .line 416
    invoke-direct {v4, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v4}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 420
    .line 421
    .line 422
    new-instance v6, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 423
    .line 424
    invoke-direct {v6, v1}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 425
    .line 426
    .line 427
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 428
    .line 429
    const-class v1, Lcom/fsck/k9/view/UserInputEmailAddressParser;

    .line 430
    .line 431
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    invoke-direct/range {v2 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 436
    .line 437
    .line 438
    invoke-static {v2, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 439
    .line 440
    .line 441
    return-object v8

    .line 442
    :pswitch_10
    move-object/from16 v0, p1

    .line 443
    .line 444
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    return-object v8

    .line 450
    :pswitch_11
    move-object/from16 v0, p1

    .line 451
    .line 452
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    return-object v8

    .line 458
    :pswitch_12
    move-object/from16 v0, p1

    .line 459
    .line 460
    check-cast v0, Lcom/fsck/k9/ui/settings/export/SettingsListItem$Account;

    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    iget-boolean v0, v0, Lcom/fsck/k9/ui/settings/export/SettingsListItem;->selected:Z

    .line 466
    .line 467
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    return-object v0

    .line 472
    :pswitch_13
    move-object/from16 v0, p1

    .line 473
    .line 474
    check-cast v0, Lorg/koin/core/module/Module;

    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    new-instance v13, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 480
    .line 481
    const/16 v1, 0x1d

    .line 482
    .line 483
    invoke-direct {v13, v1}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 484
    .line 485
    .line 486
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 487
    .line 488
    const-class v1, Lcom/fsck/k9/ui/settings/SettingsViewModel;

    .line 489
    .line 490
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 491
    .line 492
    .line 493
    move-result-object v11

    .line 494
    sget-object v15, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 495
    .line 496
    const/4 v12, 0x0

    .line 497
    sget-object v19, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 498
    .line 499
    move-object v10, v15

    .line 500
    move-object/from16 v14, v19

    .line 501
    .line 502
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 503
    .line 504
    .line 505
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 506
    .line 507
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 511
    .line 512
    .line 513
    new-instance v1, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 514
    .line 515
    invoke-direct {v1, v6}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 516
    .line 517
    .line 518
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 519
    .line 520
    const-class v2, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 521
    .line 522
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 523
    .line 524
    .line 525
    move-result-object v16

    .line 526
    const/16 v17, 0x0

    .line 527
    .line 528
    move-object/from16 v18, v1

    .line 529
    .line 530
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 531
    .line 532
    .line 533
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 534
    .line 535
    invoke-direct {v1, v14}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 539
    .line 540
    .line 541
    new-instance v1, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 542
    .line 543
    const/4 v2, 0x2

    .line 544
    invoke-direct {v1, v2}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 545
    .line 546
    .line 547
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 548
    .line 549
    const-class v2, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;

    .line 550
    .line 551
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 552
    .line 553
    .line 554
    move-result-object v16

    .line 555
    move-object/from16 v18, v1

    .line 556
    .line 557
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 558
    .line 559
    .line 560
    move-object/from16 v1, v19

    .line 561
    .line 562
    new-instance v2, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 563
    .line 564
    invoke-direct {v2, v14}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 568
    .line 569
    .line 570
    new-instance v2, Lorg/koin/core/qualifier/StringQualifier;

    .line 571
    .line 572
    const-string v3, "SaveSettingsExecutorService"

    .line 573
    .line 574
    invoke-direct {v2, v3}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    new-instance v3, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 578
    .line 579
    const/4 v4, 0x3

    .line 580
    invoke-direct {v3, v4}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 581
    .line 582
    .line 583
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 584
    .line 585
    const-class v4, Ljava/util/concurrent/ExecutorService;

    .line 586
    .line 587
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 588
    .line 589
    .line 590
    move-result-object v16

    .line 591
    sget-object v19, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 592
    .line 593
    move-object/from16 v17, v2

    .line 594
    .line 595
    move-object/from16 v18, v3

    .line 596
    .line 597
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 598
    .line 599
    .line 600
    move-object/from16 v2, v19

    .line 601
    .line 602
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 603
    .line 604
    invoke-direct {v3, v14}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 608
    .line 609
    .line 610
    new-instance v3, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 611
    .line 612
    const/4 v4, 0x4

    .line 613
    invoke-direct {v3, v4}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 614
    .line 615
    .line 616
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 617
    .line 618
    const-class v4, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 619
    .line 620
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 621
    .line 622
    .line 623
    move-result-object v16

    .line 624
    const/16 v17, 0x0

    .line 625
    .line 626
    move-object/from16 v19, v1

    .line 627
    .line 628
    move-object/from16 v18, v3

    .line 629
    .line 630
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 631
    .line 632
    .line 633
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 634
    .line 635
    invoke-direct {v3, v14}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 639
    .line 640
    .line 641
    new-instance v3, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 642
    .line 643
    const/4 v4, 0x5

    .line 644
    invoke-direct {v3, v4}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 645
    .line 646
    .line 647
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 648
    .line 649
    const-class v4, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;

    .line 650
    .line 651
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 652
    .line 653
    .line 654
    move-result-object v16

    .line 655
    move-object/from16 v19, v2

    .line 656
    .line 657
    move-object/from16 v18, v3

    .line 658
    .line 659
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 660
    .line 661
    .line 662
    new-instance v2, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 663
    .line 664
    invoke-direct {v2, v14}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0, v2}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 668
    .line 669
    .line 670
    new-instance v2, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 671
    .line 672
    const/4 v3, 0x6

    .line 673
    invoke-direct {v2, v3}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 674
    .line 675
    .line 676
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 677
    .line 678
    const-class v3, Lcom/fsck/k9/ui/settings/account/Vibrator;

    .line 679
    .line 680
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 681
    .line 682
    .line 683
    move-result-object v16

    .line 684
    move-object/from16 v19, v1

    .line 685
    .line 686
    move-object/from16 v18, v2

    .line 687
    .line 688
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 689
    .line 690
    .line 691
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 692
    .line 693
    invoke-direct {v1, v14}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 697
    .line 698
    .line 699
    new-instance v1, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 700
    .line 701
    const/4 v2, 0x7

    .line 702
    invoke-direct {v1, v2}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 703
    .line 704
    .line 705
    new-instance v14, Lorg/koin/core/definition/BeanDefinition;

    .line 706
    .line 707
    const-class v2, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 708
    .line 709
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 710
    .line 711
    .line 712
    move-result-object v16

    .line 713
    move-object/from16 v18, v1

    .line 714
    .line 715
    invoke-direct/range {v14 .. v19}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 716
    .line 717
    .line 718
    invoke-static {v14, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 719
    .line 720
    .line 721
    return-object v8

    .line 722
    :pswitch_14
    move-object/from16 v0, p1

    .line 723
    .line 724
    check-cast v0, Lcom/fsck/k9/mail/Address;

    .line 725
    .line 726
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 727
    .line 728
    .line 729
    invoke-static {v0}, Lcom/fsck/k9/mailstore/LocalStore$8;->toDisplayString(Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    return-object v0

    .line 734
    :pswitch_15
    move-object/from16 v0, p1

    .line 735
    .line 736
    check-cast v0, Lcom/fsck/k9/mail/Address;

    .line 737
    .line 738
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 739
    .line 740
    .line 741
    invoke-static {v0}, Lcom/fsck/k9/mailstore/LocalStore$8;->toDisplayString(Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    return-object v0

    .line 746
    :pswitch_16
    move-object/from16 v0, p1

    .line 747
    .line 748
    check-cast v0, [Lcom/fsck/k9/mail/Address;

    .line 749
    .line 750
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    .line 752
    .line 753
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    return-object v0

    .line 758
    :pswitch_17
    move-object/from16 v0, p1

    .line 759
    .line 760
    check-cast v0, [Lcom/fsck/k9/mail/Address;

    .line 761
    .line 762
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 763
    .line 764
    .line 765
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    return-object v0

    .line 770
    :pswitch_18
    move-object/from16 v0, p1

    .line 771
    .line 772
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;

    .line 773
    .line 774
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;->item:Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 778
    .line 779
    return-object v0

    .line 780
    :pswitch_19
    move-object/from16 v0, p1

    .line 781
    .line 782
    check-cast v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 783
    .line 784
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 785
    .line 786
    .line 787
    return-object v8

    .line 788
    :pswitch_1a
    move-object/from16 v0, p1

    .line 789
    .line 790
    check-cast v0, Lorg/koin/core/module/Module;

    .line 791
    .line 792
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    new-array v1, v6, [Lorg/koin/core/module/Module;

    .line 796
    .line 797
    sget-object v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/NavigationDrawerModuleKt;->navigationDropDownDrawerModule:Lorg/koin/core/module/Module;

    .line 798
    .line 799
    aput-object v2, v1, v7

    .line 800
    .line 801
    iget-object v2, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 802
    .line 803
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 804
    .line 805
    .line 806
    new-instance v13, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 807
    .line 808
    const/16 v1, 0x15

    .line 809
    .line 810
    invoke-direct {v13, v1}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 811
    .line 812
    .line 813
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 814
    .line 815
    const-class v1, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 816
    .line 817
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 818
    .line 819
    .line 820
    move-result-object v11

    .line 821
    sget-object v2, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 822
    .line 823
    const/4 v12, 0x0

    .line 824
    sget-object v6, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 825
    .line 826
    move-object v10, v2

    .line 827
    move-object v14, v6

    .line 828
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 829
    .line 830
    .line 831
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 832
    .line 833
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 837
    .line 838
    .line 839
    new-instance v5, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 840
    .line 841
    const/16 v1, 0x16

    .line 842
    .line 843
    invoke-direct {v5, v1}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 844
    .line 845
    .line 846
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 847
    .line 848
    const-class v3, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 849
    .line 850
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 851
    .line 852
    .line 853
    move-result-object v3

    .line 854
    const/4 v4, 0x0

    .line 855
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 856
    .line 857
    .line 858
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 859
    .line 860
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 864
    .line 865
    .line 866
    new-instance v5, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 867
    .line 868
    const/16 v1, 0x17

    .line 869
    .line 870
    invoke-direct {v5, v1}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 871
    .line 872
    .line 873
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 874
    .line 875
    const-class v3, Lcom/fsck/k9/ui/messagelist/MessageListLoader;

    .line 876
    .line 877
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 878
    .line 879
    .line 880
    move-result-object v3

    .line 881
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 882
    .line 883
    .line 884
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 885
    .line 886
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 890
    .line 891
    .line 892
    new-instance v5, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 893
    .line 894
    const/16 v1, 0x18

    .line 895
    .line 896
    invoke-direct {v5, v1}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 897
    .line 898
    .line 899
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 900
    .line 901
    const-class v3, Lcom/fsck/k9/ui/messagelist/MessageListLiveDataFactory;

    .line 902
    .line 903
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 904
    .line 905
    .line 906
    move-result-object v3

    .line 907
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 908
    .line 909
    .line 910
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 911
    .line 912
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 913
    .line 914
    .line 915
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 916
    .line 917
    .line 918
    new-instance v5, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 919
    .line 920
    const/16 v1, 0x19

    .line 921
    .line 922
    invoke-direct {v5, v1}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 923
    .line 924
    .line 925
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 926
    .line 927
    const-class v3, Lcom/bumptech/glide/load/Option$1;

    .line 928
    .line 929
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 930
    .line 931
    .line 932
    move-result-object v3

    .line 933
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 934
    .line 935
    .line 936
    new-instance v3, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 937
    .line 938
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 939
    .line 940
    .line 941
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 942
    .line 943
    .line 944
    new-instance v5, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 945
    .line 946
    const/16 v1, 0x1a

    .line 947
    .line 948
    invoke-direct {v5, v1}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 949
    .line 950
    .line 951
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 952
    .line 953
    const-class v3, Lcom/fsck/k9/ui/messagelist/SortTypeToastProvider;

    .line 954
    .line 955
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 956
    .line 957
    .line 958
    move-result-object v3

    .line 959
    sget-object v6, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 960
    .line 961
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 962
    .line 963
    .line 964
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 965
    .line 966
    .line 967
    return-object v8

    .line 968
    :pswitch_1b
    move-object/from16 v0, p1

    .line 969
    .line 970
    check-cast v0, Lorg/koin/core/module/Module;

    .line 971
    .line 972
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 973
    .line 974
    .line 975
    new-instance v6, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 976
    .line 977
    invoke-direct {v6, v1}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 978
    .line 979
    .line 980
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 981
    .line 982
    const-class v1, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;

    .line 983
    .line 984
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 985
    .line 986
    .line 987
    move-result-object v4

    .line 988
    sget-object v10, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 989
    .line 990
    const/4 v5, 0x0

    .line 991
    sget-object v14, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 992
    .line 993
    move-object v3, v10

    .line 994
    move-object v7, v14

    .line 995
    invoke-direct/range {v2 .. v7}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 996
    .line 997
    .line 998
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 999
    .line 1000
    invoke-direct {v1, v2}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1004
    .line 1005
    .line 1006
    new-instance v13, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 1007
    .line 1008
    const/16 v1, 0x11

    .line 1009
    .line 1010
    invoke-direct {v13, v1}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1011
    .line 1012
    .line 1013
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 1014
    .line 1015
    const-class v1, Lcom/fsck/k9/ui/messagedetails/ContactSettingsProvider;

    .line 1016
    .line 1017
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v11

    .line 1021
    const/4 v12, 0x0

    .line 1022
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1023
    .line 1024
    .line 1025
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1026
    .line 1027
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1031
    .line 1032
    .line 1033
    new-instance v13, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 1034
    .line 1035
    const/16 v1, 0x12

    .line 1036
    .line 1037
    invoke-direct {v13, v1}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1038
    .line 1039
    .line 1040
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 1041
    .line 1042
    const-class v1, Lcom/fsck/k9/ui/messagedetails/AddToContactsLauncher;

    .line 1043
    .line 1044
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v11

    .line 1048
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1049
    .line 1050
    .line 1051
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1052
    .line 1053
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1057
    .line 1058
    .line 1059
    new-instance v13, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 1060
    .line 1061
    const/16 v1, 0x13

    .line 1062
    .line 1063
    invoke-direct {v13, v1}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1064
    .line 1065
    .line 1066
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 1067
    .line 1068
    const-class v1, Lcom/fsck/k9/ui/messagedetails/ShowContactLauncher;

    .line 1069
    .line 1070
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v11

    .line 1074
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1075
    .line 1076
    .line 1077
    new-instance v1, Lorg/koin/core/instance/FactoryInstanceFactory;

    .line 1078
    .line 1079
    invoke-direct {v1, v9}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v0, v1}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 1083
    .line 1084
    .line 1085
    new-instance v13, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 1086
    .line 1087
    const/16 v1, 0x14

    .line 1088
    .line 1089
    invoke-direct {v13, v1}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1090
    .line 1091
    .line 1092
    new-instance v9, Lorg/koin/core/definition/BeanDefinition;

    .line 1093
    .line 1094
    const-class v1, Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;

    .line 1095
    .line 1096
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v11

    .line 1100
    invoke-direct/range {v9 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 1101
    .line 1102
    .line 1103
    invoke-static {v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 1104
    .line 1105
    .line 1106
    return-object v8

    .line 1107
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1108
    .line 1109
    check-cast v0, Ljava/lang/Character;

    .line 1110
    .line 1111
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 1112
    .line 1113
    .line 1114
    move-result v0

    .line 1115
    if-ne v0, v2, :cond_8

    .line 1116
    .line 1117
    goto :goto_7

    .line 1118
    :cond_8
    move v6, v7

    .line 1119
    :goto_7
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    return-object v0

    .line 1124
    nop

    .line 1125
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
