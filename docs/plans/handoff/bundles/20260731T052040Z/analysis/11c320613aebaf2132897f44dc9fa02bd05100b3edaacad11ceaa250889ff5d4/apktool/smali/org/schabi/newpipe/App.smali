.class public Lorg/schabi/newpipe/App;
.super Landroid/app/Application;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcoil3/SingletonImageLoader$Factory;


# static fields
.field public static final Companion:Lorg/schabi/newpipe/App$Companion;

.field public static final TAG:Ljava/lang/String;

.field public static instance:Lorg/schabi/newpipe/App;


# instance fields
.field public isFirstRun:Z

.field public notificationsRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/App$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 7
    .line 8
    const-class v0, Lorg/schabi/newpipe/App;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/schabi/newpipe/App;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 53

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/acra/ACRA;->isACRASenderServiceProcess()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_d

    .line 13
    .line 14
    :cond_0
    new-instance v1, Lorg/acra/config/CoreConfigurationBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Lorg/acra/config/CoreConfigurationBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 20
    .line 21
    const/16 v3, 0xe

    .line 22
    .line 23
    aget-object v4, v2, v3

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v4, v1, Lorg/acra/config/CoreConfigurationBuilder;->buildConfigClass$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$15;

    .line 29
    .line 30
    iget-object v5, v4, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 31
    .line 32
    const-class v6, Landroidx/room/Room;

    .line 33
    .line 34
    iput-object v6, v4, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v5, Ljava/lang/Class;

    .line 37
    .line 38
    iget-object v5, v4, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$15;->this$0:Lorg/acra/config/CoreConfigurationBuilder;

    .line 39
    .line 40
    iget v6, v5, Lorg/acra/config/CoreConfigurationBuilder;->_defaultsBitField0:I

    .line 41
    .line 42
    and-int/lit16 v6, v6, -0x4001

    .line 43
    .line 44
    iput v6, v5, Lorg/acra/config/CoreConfigurationBuilder;->_defaultsBitField0:I

    .line 45
    .line 46
    const/16 v5, 0x1e

    .line 47
    .line 48
    new-array v5, v5, [Ljava/lang/Class;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const-class v7, Ljava/lang/String;

    .line 52
    .line 53
    aput-object v7, v5, v6

    .line 54
    .line 55
    const/4 v8, 0x1

    .line 56
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    aput-object v9, v5, v8

    .line 59
    .line 60
    const/4 v10, 0x2

    .line 61
    const-class v11, Ljava/util/List;

    .line 62
    .line 63
    aput-object v11, v5, v10

    .line 64
    .line 65
    const/4 v12, 0x3

    .line 66
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 67
    .line 68
    aput-object v13, v5, v12

    .line 69
    .line 70
    const/4 v14, 0x4

    .line 71
    aput-object v11, v5, v14

    .line 72
    .line 73
    const/4 v15, 0x5

    .line 74
    aput-object v11, v5, v15

    .line 75
    .line 76
    const/16 v16, 0x6

    .line 77
    .line 78
    aput-object v9, v5, v16

    .line 79
    .line 80
    const/16 v17, 0x7

    .line 81
    .line 82
    aput-object v9, v5, v17

    .line 83
    .line 84
    const/16 v18, 0x8

    .line 85
    .line 86
    aput-object v11, v5, v18

    .line 87
    .line 88
    const/16 v19, 0x9

    .line 89
    .line 90
    aput-object v9, v5, v19

    .line 91
    .line 92
    const/16 v20, 0xa

    .line 93
    .line 94
    aput-object v9, v5, v20

    .line 95
    .line 96
    const/16 v21, 0xb

    .line 97
    .line 98
    aput-object v9, v5, v21

    .line 99
    .line 100
    const/16 v22, 0xc

    .line 101
    .line 102
    aput-object v11, v5, v22

    .line 103
    .line 104
    const/16 v23, 0xd

    .line 105
    .line 106
    aput-object v11, v5, v23

    .line 107
    .line 108
    const-class v24, Ljava/lang/Class;

    .line 109
    .line 110
    aput-object v24, v5, v3

    .line 111
    .line 112
    const/16 v25, 0xf

    .line 113
    .line 114
    aput-object v7, v5, v25

    .line 115
    .line 116
    const/16 v26, 0x10

    .line 117
    .line 118
    aput-object v13, v5, v26

    .line 119
    .line 120
    const-class v27, Lorg/acra/file/Directory;

    .line 121
    .line 122
    const/16 v28, 0x11

    .line 123
    .line 124
    aput-object v27, v5, v28

    .line 125
    .line 126
    const/16 v27, 0x12

    .line 127
    .line 128
    aput-object v24, v5, v27

    .line 129
    .line 130
    const/16 v29, 0x13

    .line 131
    .line 132
    aput-object v9, v5, v29

    .line 133
    .line 134
    const/16 v30, 0x14

    .line 135
    .line 136
    aput-object v11, v5, v30

    .line 137
    .line 138
    const/16 v31, 0x15

    .line 139
    .line 140
    aput-object v24, v5, v31

    .line 141
    .line 142
    const/16 v24, 0x16

    .line 143
    .line 144
    aput-object v7, v5, v24

    .line 145
    .line 146
    const/16 v24, 0x17

    .line 147
    .line 148
    aput-object v7, v5, v24

    .line 149
    .line 150
    const-class v7, Lorg/acra/data/StringFormat;

    .line 151
    .line 152
    const/16 v24, 0x18

    .line 153
    .line 154
    aput-object v7, v5, v24

    .line 155
    .line 156
    const/16 v7, 0x19

    .line 157
    .line 158
    aput-object v9, v5, v7

    .line 159
    .line 160
    const-class v7, Lorg/acra/plugins/PluginLoader;

    .line 161
    .line 162
    const/16 v9, 0x1a

    .line 163
    .line 164
    aput-object v7, v5, v9

    .line 165
    .line 166
    const/16 v7, 0x1b

    .line 167
    .line 168
    aput-object v11, v5, v7

    .line 169
    .line 170
    const/16 v7, 0x1c

    .line 171
    .line 172
    aput-object v13, v5, v7

    .line 173
    .line 174
    const-class v7, Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 175
    .line 176
    const/16 v9, 0x1d

    .line 177
    .line 178
    aput-object v7, v5, v9

    .line 179
    .line 180
    const-class v7, Lorg/acra/config/CoreConfiguration;

    .line 181
    .line 182
    invoke-virtual {v7, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    aget-object v7, v2, v6

    .line 187
    .line 188
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    iget-object v7, v1, Lorg/acra/config/CoreConfigurationBuilder;->sharedPreferencesName$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 192
    .line 193
    iget-object v7, v7, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v7, Ljava/lang/String;

    .line 196
    .line 197
    aget-object v9, v2, v8

    .line 198
    .line 199
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    iget-object v9, v1, Lorg/acra/config/CoreConfigurationBuilder;->includeDropBoxSystemTags$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 203
    .line 204
    iget-object v9, v9, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v9, Ljava/lang/Boolean;

    .line 207
    .line 208
    if-eqz v9, :cond_1

    .line 209
    .line 210
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    goto :goto_0

    .line 215
    :cond_1
    move v9, v6

    .line 216
    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    aget-object v11, v2, v10

    .line 221
    .line 222
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    iget-object v11, v1, Lorg/acra/config/CoreConfigurationBuilder;->additionalDropBoxTags$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 226
    .line 227
    iget-object v11, v11, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v11, Ljava/util/List;

    .line 230
    .line 231
    aget-object v13, v2, v12

    .line 232
    .line 233
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    iget-object v13, v1, Lorg/acra/config/CoreConfigurationBuilder;->dropboxCollectionMinutes$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 237
    .line 238
    iget-object v13, v13, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v13, Ljava/lang/Integer;

    .line 241
    .line 242
    if-eqz v13, :cond_2

    .line 243
    .line 244
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    goto :goto_1

    .line 249
    :cond_2
    move v13, v6

    .line 250
    :goto_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v13

    .line 254
    aget-object v24, v2, v14

    .line 255
    .line 256
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    move/from16 p1, v3

    .line 260
    .line 261
    iget-object v3, v1, Lorg/acra/config/CoreConfigurationBuilder;->logcatArguments$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 262
    .line 263
    iget-object v3, v3, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v3, Ljava/util/List;

    .line 266
    .line 267
    aget-object v24, v2, v15

    .line 268
    .line 269
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    move/from16 v24, v10

    .line 273
    .line 274
    iget-object v10, v1, Lorg/acra/config/CoreConfigurationBuilder;->reportContent$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 275
    .line 276
    iget-object v10, v10, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v10, Ljava/util/List;

    .line 279
    .line 280
    aget-object v32, v2, v16

    .line 281
    .line 282
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    move/from16 v32, v12

    .line 286
    .line 287
    iget-object v12, v1, Lorg/acra/config/CoreConfigurationBuilder;->deleteUnapprovedReportsOnApplicationStart$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 288
    .line 289
    iget-object v12, v12, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v12, Ljava/lang/Boolean;

    .line 292
    .line 293
    if-eqz v12, :cond_3

    .line 294
    .line 295
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 296
    .line 297
    .line 298
    move-result v12

    .line 299
    goto :goto_2

    .line 300
    :cond_3
    move v12, v6

    .line 301
    :goto_2
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 302
    .line 303
    .line 304
    move-result-object v12

    .line 305
    aget-object v33, v2, v17

    .line 306
    .line 307
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    move/from16 v33, v14

    .line 311
    .line 312
    iget-object v14, v1, Lorg/acra/config/CoreConfigurationBuilder;->alsoReportToAndroidFramework$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 313
    .line 314
    iget-object v14, v14, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v14, Ljava/lang/Boolean;

    .line 317
    .line 318
    if-eqz v14, :cond_4

    .line 319
    .line 320
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 321
    .line 322
    .line 323
    move-result v14

    .line 324
    goto :goto_3

    .line 325
    :cond_4
    move v14, v6

    .line 326
    :goto_3
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 327
    .line 328
    .line 329
    move-result-object v14

    .line 330
    aget-object v34, v2, v18

    .line 331
    .line 332
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    move/from16 v34, v15

    .line 336
    .line 337
    iget-object v15, v1, Lorg/acra/config/CoreConfigurationBuilder;->additionalSharedPreferences$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 338
    .line 339
    iget-object v15, v15, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v15, Ljava/util/List;

    .line 342
    .line 343
    aget-object v35, v2, v19

    .line 344
    .line 345
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    move/from16 v35, v6

    .line 349
    .line 350
    iget-object v6, v1, Lorg/acra/config/CoreConfigurationBuilder;->logcatFilterByPid$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 351
    .line 352
    iget-object v6, v6, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v6, Ljava/lang/Boolean;

    .line 355
    .line 356
    if-eqz v6, :cond_5

    .line 357
    .line 358
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    goto :goto_4

    .line 363
    :cond_5
    move/from16 v6, v35

    .line 364
    .line 365
    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    aget-object v36, v2, v20

    .line 370
    .line 371
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    move/from16 v36, v8

    .line 375
    .line 376
    iget-object v8, v1, Lorg/acra/config/CoreConfigurationBuilder;->logcatReadNonBlocking$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 377
    .line 378
    iget-object v8, v8, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v8, Ljava/lang/Boolean;

    .line 381
    .line 382
    if-eqz v8, :cond_6

    .line 383
    .line 384
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 385
    .line 386
    .line 387
    move-result v8

    .line 388
    goto :goto_5

    .line 389
    :cond_6
    move/from16 v8, v35

    .line 390
    .line 391
    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    aget-object v37, v2, v21

    .line 396
    .line 397
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    move-object/from16 v37, v2

    .line 401
    .line 402
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->sendReportsInDevMode$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 403
    .line 404
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v2, Ljava/lang/Boolean;

    .line 407
    .line 408
    if-eqz v2, :cond_7

    .line 409
    .line 410
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    goto :goto_6

    .line 415
    :cond_7
    move/from16 v2, v35

    .line 416
    .line 417
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    aget-object v38, v37, v22

    .line 422
    .line 423
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    move-object/from16 v38, v2

    .line 427
    .line 428
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->excludeMatchingSharedPreferencesKeys$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 429
    .line 430
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v2, Ljava/util/List;

    .line 433
    .line 434
    aget-object v39, v37, v23

    .line 435
    .line 436
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    move-object/from16 v39, v2

    .line 440
    .line 441
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->excludeMatchingSettingsKeys$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 442
    .line 443
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast v2, Ljava/util/List;

    .line 446
    .line 447
    aget-object v40, v37, p1

    .line 448
    .line 449
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    iget-object v4, v4, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 453
    .line 454
    check-cast v4, Ljava/lang/Class;

    .line 455
    .line 456
    aget-object v40, v37, v25

    .line 457
    .line 458
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    move-object/from16 v40, v2

    .line 462
    .line 463
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFile$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 464
    .line 465
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v2, Ljava/lang/String;

    .line 468
    .line 469
    aget-object v41, v37, v26

    .line 470
    .line 471
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    move-object/from16 v41, v2

    .line 475
    .line 476
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFileLines$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 477
    .line 478
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v2, Ljava/lang/Integer;

    .line 481
    .line 482
    if-eqz v2, :cond_8

    .line 483
    .line 484
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    goto :goto_7

    .line 489
    :cond_8
    move/from16 v2, v35

    .line 490
    .line 491
    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    aget-object v42, v37, v28

    .line 496
    .line 497
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    move-object/from16 v42, v2

    .line 501
    .line 502
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFileDir$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 503
    .line 504
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v2, Lorg/acra/file/Directory;

    .line 507
    .line 508
    aget-object v43, v37, v27

    .line 509
    .line 510
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    move-object/from16 v43, v2

    .line 514
    .line 515
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->retryPolicyClass$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 516
    .line 517
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v2, Ljava/lang/Class;

    .line 520
    .line 521
    aget-object v44, v37, v29

    .line 522
    .line 523
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    move-object/from16 v44, v2

    .line 527
    .line 528
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->stopServicesOnCrash$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 529
    .line 530
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v2, Ljava/lang/Boolean;

    .line 533
    .line 534
    if-eqz v2, :cond_9

    .line 535
    .line 536
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    goto :goto_8

    .line 541
    :cond_9
    move/from16 v2, v35

    .line 542
    .line 543
    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    aget-object v45, v37, v30

    .line 548
    .line 549
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    move-object/from16 v45, v2

    .line 553
    .line 554
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->attachmentUris$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 555
    .line 556
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast v2, Ljava/util/List;

    .line 559
    .line 560
    aget-object v46, v37, v31

    .line 561
    .line 562
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    move-object/from16 v46, v2

    .line 566
    .line 567
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->attachmentUriProvider$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 568
    .line 569
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v2, Ljava/lang/Class;

    .line 572
    .line 573
    const/16 v47, 0x16

    .line 574
    .line 575
    aget-object v47, v37, v47

    .line 576
    .line 577
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    move-object/from16 v47, v2

    .line 581
    .line 582
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->reportSendSuccessToast$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 583
    .line 584
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v2, Ljava/lang/String;

    .line 587
    .line 588
    const/16 v48, 0x17

    .line 589
    .line 590
    aget-object v48, v37, v48

    .line 591
    .line 592
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    .line 594
    .line 595
    move-object/from16 v48, v2

    .line 596
    .line 597
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->reportSendFailureToast$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 598
    .line 599
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 600
    .line 601
    check-cast v2, Ljava/lang/String;

    .line 602
    .line 603
    const/16 v49, 0x18

    .line 604
    .line 605
    aget-object v49, v37, v49

    .line 606
    .line 607
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    move-object/from16 v49, v2

    .line 611
    .line 612
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->reportFormat$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 613
    .line 614
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v2, Lorg/acra/data/StringFormat;

    .line 617
    .line 618
    const/16 v50, 0x19

    .line 619
    .line 620
    aget-object v50, v37, v50

    .line 621
    .line 622
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 623
    .line 624
    .line 625
    move-object/from16 v50, v2

    .line 626
    .line 627
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->parallel$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 628
    .line 629
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 630
    .line 631
    check-cast v2, Ljava/lang/Boolean;

    .line 632
    .line 633
    if-eqz v2, :cond_a

    .line 634
    .line 635
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    goto :goto_9

    .line 640
    :cond_a
    move/from16 v2, v35

    .line 641
    .line 642
    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    const/16 v51, 0x1a

    .line 647
    .line 648
    aget-object v51, v37, v51

    .line 649
    .line 650
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    .line 652
    .line 653
    move-object/from16 v51, v2

    .line 654
    .line 655
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->pluginLoader$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 656
    .line 657
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 658
    .line 659
    check-cast v2, Lorg/acra/plugins/PluginLoader;

    .line 660
    .line 661
    const/16 v52, 0x1b

    .line 662
    .line 663
    aget-object v37, v37, v52

    .line 664
    .line 665
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    move-object/from16 v37, v2

    .line 669
    .line 670
    iget-object v2, v1, Lorg/acra/config/CoreConfigurationBuilder;->pluginConfigurations$delegate:Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    .line 671
    .line 672
    iget-object v2, v2, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 673
    .line 674
    check-cast v2, Ljava/util/List;

    .line 675
    .line 676
    iget v1, v1, Lorg/acra/config/CoreConfigurationBuilder;->_defaultsBitField0:I

    .line 677
    .line 678
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    move-object/from16 v52, v1

    .line 683
    .line 684
    const/16 v1, 0x1e

    .line 685
    .line 686
    new-array v1, v1, [Ljava/lang/Object;

    .line 687
    .line 688
    aput-object v7, v1, v35

    .line 689
    .line 690
    aput-object v9, v1, v36

    .line 691
    .line 692
    aput-object v11, v1, v24

    .line 693
    .line 694
    aput-object v13, v1, v32

    .line 695
    .line 696
    aput-object v3, v1, v33

    .line 697
    .line 698
    aput-object v10, v1, v34

    .line 699
    .line 700
    aput-object v12, v1, v16

    .line 701
    .line 702
    aput-object v14, v1, v17

    .line 703
    .line 704
    aput-object v15, v1, v18

    .line 705
    .line 706
    aput-object v6, v1, v19

    .line 707
    .line 708
    aput-object v8, v1, v20

    .line 709
    .line 710
    aput-object v38, v1, v21

    .line 711
    .line 712
    aput-object v39, v1, v22

    .line 713
    .line 714
    aput-object v40, v1, v23

    .line 715
    .line 716
    aput-object v4, v1, p1

    .line 717
    .line 718
    aput-object v41, v1, v25

    .line 719
    .line 720
    aput-object v42, v1, v26

    .line 721
    .line 722
    aput-object v43, v1, v28

    .line 723
    .line 724
    aput-object v44, v1, v27

    .line 725
    .line 726
    aput-object v45, v1, v29

    .line 727
    .line 728
    aput-object v46, v1, v30

    .line 729
    .line 730
    aput-object v47, v1, v31

    .line 731
    .line 732
    const/16 v3, 0x16

    .line 733
    .line 734
    aput-object v48, v1, v3

    .line 735
    .line 736
    const/16 v3, 0x17

    .line 737
    .line 738
    aput-object v49, v1, v3

    .line 739
    .line 740
    const/16 v3, 0x18

    .line 741
    .line 742
    aput-object v50, v1, v3

    .line 743
    .line 744
    const/16 v3, 0x19

    .line 745
    .line 746
    aput-object v51, v1, v3

    .line 747
    .line 748
    const/16 v3, 0x1a

    .line 749
    .line 750
    aput-object v37, v1, v3

    .line 751
    .line 752
    const/16 v3, 0x1b

    .line 753
    .line 754
    aput-object v2, v1, v3

    .line 755
    .line 756
    const/16 v2, 0x1c

    .line 757
    .line 758
    aput-object v52, v1, v2

    .line 759
    .line 760
    const/4 v2, 0x0

    .line 761
    const/16 v3, 0x1d

    .line 762
    .line 763
    aput-object v2, v1, v3

    .line 764
    .line 765
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 770
    .line 771
    .line 772
    check-cast v1, Lorg/acra/config/CoreConfiguration;

    .line 773
    .line 774
    invoke-static {}, Lorg/acra/ACRA;->isACRASenderServiceProcess()Z

    .line 775
    .line 776
    .line 777
    move-result v2

    .line 778
    sget-object v3, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 779
    .line 780
    instance-of v3, v3, Lorg/acra/reporter/ErrorReporterImpl;

    .line 781
    .line 782
    const-string v4, "ACRA"

    .line 783
    .line 784
    if-eqz v3, :cond_b

    .line 785
    .line 786
    const-string v3, "ACRA#init called more than once. This might have unexpected side effects. Doing this outside of tests is discouraged."

    .line 787
    .line 788
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    .line 790
    .line 791
    sget-object v3, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 792
    .line 793
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 794
    .line 795
    .line 796
    check-cast v3, Lorg/acra/reporter/ErrorReporterImpl;

    .line 797
    .line 798
    iget-object v3, v3, Lorg/acra/reporter/ErrorReporterImpl;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 799
    .line 800
    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 801
    .line 802
    .line 803
    new-instance v3, Lorg/acra/util/StubCreator$$ExternalSyntheticLambda0;

    .line 804
    .line 805
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 806
    .line 807
    .line 808
    const-class v5, Lkotlin/ranges/RangesKt;

    .line 809
    .line 810
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 811
    .line 812
    .line 813
    move-result-object v5

    .line 814
    move/from16 v6, v36

    .line 815
    .line 816
    new-array v7, v6, [Ljava/lang/Class;

    .line 817
    .line 818
    const-class v6, Lorg/acra/ErrorReporter;

    .line 819
    .line 820
    aput-object v6, v7, v35

    .line 821
    .line 822
    invoke-static {v5, v7, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v3

    .line 826
    check-cast v3, Lorg/acra/ErrorReporter;

    .line 827
    .line 828
    sput-object v3, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 829
    .line 830
    :cond_b
    invoke-virtual {v1}, Lorg/acra/config/CoreConfiguration;->getSharedPreferencesName()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    if-eqz v3, :cond_c

    .line 835
    .line 836
    invoke-virtual {v1}, Lorg/acra/config/CoreConfiguration;->getSharedPreferencesName()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v3

    .line 840
    move/from16 v5, v35

    .line 841
    .line 842
    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 847
    .line 848
    .line 849
    goto :goto_a

    .line 850
    :cond_c
    move/from16 v5, v35

    .line 851
    .line 852
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 853
    .line 854
    .line 855
    move-result-object v3

    .line 856
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    .line 858
    .line 859
    :goto_a
    if-nez v2, :cond_e

    .line 860
    .line 861
    :try_start_0
    const-string v2, "acra.disable"

    .line 862
    .line 863
    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 864
    .line 865
    .line 866
    move-result v2

    .line 867
    const-string v5, "acra.enable"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    .line 869
    const/16 v36, 0x1

    .line 870
    .line 871
    xor-int/lit8 v2, v2, 0x1

    .line 872
    .line 873
    :try_start_1
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 874
    .line 875
    .line 876
    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 877
    goto :goto_b

    .line 878
    :catch_0
    const/16 v36, 0x1

    .line 879
    .line 880
    :catch_1
    move/from16 v8, v36

    .line 881
    .line 882
    :goto_b
    if-eqz v8, :cond_d

    .line 883
    .line 884
    const-string v2, "enabled"

    .line 885
    .line 886
    goto :goto_c

    .line 887
    :cond_d
    const-string v2, "disabled"

    .line 888
    .line 889
    :goto_c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v5

    .line 893
    const-string v6, " for "

    .line 894
    .line 895
    const-string v7, ", initializing..."

    .line 896
    .line 897
    const-string v9, "ACRA is "

    .line 898
    .line 899
    invoke-static {v9, v2, v6, v5, v7}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v2

    .line 903
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    .line 905
    .line 906
    new-instance v2, Lorg/acra/reporter/ErrorReporterImpl;

    .line 907
    .line 908
    invoke-direct {v2, v0, v1, v8}, Lorg/acra/reporter/ErrorReporterImpl;-><init>(Lorg/schabi/newpipe/App;Lorg/acra/config/CoreConfiguration;Z)V

    .line 909
    .line 910
    .line 911
    sput-object v2, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 912
    .line 913
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 914
    .line 915
    .line 916
    :cond_e
    :goto_d
    return-void
.end method

.method public final newImageLoader(Landroid/content/Context;)Lcoil3/RealImageLoader;
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lokhttp3/Dispatcher;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lokhttp3/Dispatcher;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const-class v0, Landroid/app/ActivityManager;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast p0, Landroid/app/ActivityManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->transitionFactoryKey:Lcoil3/Extras$Key;

    .line 25
    .line 26
    iget-object v0, p1, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcoil3/Extras$Builder;

    .line 29
    .line 30
    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->allowRgb565Key:Lcoil3/Extras$Key;

    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object v2, v0, Lcoil3/Extras$Builder;->data:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    sget-object p0, Lcoil3/request/ImageRequestsKt;->transformationsKey:Lcoil3/Extras$Key;

    .line 42
    .line 43
    new-instance p0, Lcoil3/transition/CrossfadeTransition$Factory;

    .line 44
    .line 45
    const/16 v1, 0xc8

    .line 46
    .line 47
    invoke-direct {p0, v1}, Lcoil3/transition/CrossfadeTransition$Factory;-><init>(I)V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->transitionFactoryKey:Lcoil3/Extras$Key;

    .line 51
    .line 52
    iget-object v0, v0, Lcoil3/Extras$Builder;->data:Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    new-instance p0, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v2, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v3, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v4, Lorg/schabi/newpipe/DownloaderImpl;->instance:Lorg/schabi/newpipe/DownloaderImpl;

    .line 83
    .line 84
    iget-object v4, v4, Lorg/schabi/newpipe/DownloaderImpl;->client:Lokhttp3/OkHttpClient;

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance v5, Lcoil3/network/NetworkFetcher$Factory;

    .line 90
    .line 91
    new-instance v6, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    const/16 v7, 0x19

    .line 94
    .line 95
    invoke-direct {v6, v4, v7}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v5, v6}, Lcoil3/network/NetworkFetcher$Factory;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 99
    .line 100
    .line 101
    const-class v4, Lcoil3/Uri;

    .line 102
    .line 103
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    new-instance v6, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    invoke-direct {v6, v5, v4, v7}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    new-instance v8, Lcoil3/ComponentRegistry;

    .line 117
    .line 118
    invoke-static {p0}, Lcoil3/util/UtilsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-static {v0}, Lcoil3/util/UtilsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    invoke-static {v1}, Lcoil3/util/UtilsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    invoke-static {v2}, Lcoil3/util/UtilsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    invoke-static {v3}, Lcoil3/util/UtilsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    invoke-direct/range {v8 .. v13}, Lcoil3/ComponentRegistry;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    iput-object v8, p1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 142
    .line 143
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->build()Lcoil3/RealImageLoader;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0
.end method

.method public final onCreate()V
    .locals 15

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lorg/schabi/newpipe/App;->instance:Lorg/schabi/newpipe/App;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "activity"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/app/ActivityManager;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 39
    .line 40
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 41
    .line 42
    if-ne v3, v0, :cond_0

    .line 43
    .line 44
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 45
    .line 46
    const-string v3, ":phoenix"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    sget-object p0, Lorg/schabi/newpipe/App;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string v0, "This is a phoenix process! Aborting initialization of App[onCreate]"

    .line 57
    .line 58
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const v2, 0x7f13023c

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const/4 v4, -0x1

    .line 79
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v3, 0x1

    .line 84
    if-ne v0, v4, :cond_2

    .line 85
    .line 86
    move v0, v3

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    move v0, v1

    .line 89
    :goto_0
    iput-boolean v0, p0, Lorg/schabi/newpipe/App;->isFirstRun:Z

    .line 90
    .line 91
    sget-object v0, Lorg/schabi/newpipe/settings/migration/MigrationManager;->MIGRATION_INFO:Ljava/util/ArrayList;

    .line 92
    .line 93
    sget-object v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->sp:Landroid/content/SharedPreferences;

    .line 94
    .line 95
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->sp:Landroid/content/SharedPreferences;

    .line 104
    .line 105
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    sget-object v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->sp:Landroid/content/SharedPreferences;

    .line 110
    .line 111
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    sget-object v0, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-boolean v0, v0, Lorg/schabi/newpipe/App;->isFirstRun:Z

    .line 125
    .line 126
    const/16 v6, 0x8

    .line 127
    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    sget-object v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->sp:Landroid/content/SharedPreferences;

    .line 131
    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_4

    .line 144
    .line 145
    :cond_3
    if-ne v5, v6, :cond_4

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_4
    sget-object v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->SETTING_MIGRATIONS:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 149
    .line 150
    array-length v6, v0

    .line 151
    move v7, v1

    .line 152
    move v8, v5

    .line 153
    :goto_1
    if-ge v7, v6, :cond_6

    .line 154
    .line 155
    aget-object v9, v0, v7

    .line 156
    .line 157
    :try_start_0
    iget v10, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->ints:I

    .line 158
    .line 159
    if-lt v10, v8, :cond_5

    .line 160
    .line 161
    sget v10, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 162
    .line 163
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->migrate(Lorg/schabi/newpipe/App;)V

    .line 164
    .line 165
    .line 166
    iget v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->objects:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :catch_0
    move-exception v0

    .line 170
    move-object v10, v0

    .line 171
    goto :goto_3

    .line 172
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :goto_3
    sget-object v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->sp:Landroid/content/SharedPreferences;

    .line 176
    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    .line 187
    .line 188
    new-instance v9, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 189
    .line 190
    sget-object v11, Lorg/schabi/newpipe/error/UserAction;->PREFERENCES_MIGRATION:Lorg/schabi/newpipe/error/UserAction;

    .line 191
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v2, "Migrating preferences from version "

    .line 195
    .line 196
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v2, " to 8. Error at "

    .line 203
    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v2, " => "

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    add-int/2addr v8, v3

    .line 216
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    const/4 v13, 0x0

    .line 224
    const/16 v14, 0x18

    .line 225
    .line 226
    invoke-direct/range {v9 .. v14}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 227
    .line 228
    .line 229
    sget-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-static {p0, v9}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_6
    sget-object v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->sp:Landroid/content/SharedPreferences;

    .line 239
    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    .line 250
    .line 251
    :goto_4
    const v0, 0x7f16000a

    .line 252
    .line 253
    .line 254
    invoke-static {p0, v0}, Landroidx/preference/PreferenceManager;->setDefaultValues(Lorg/schabi/newpipe/App;I)V

    .line 255
    .line 256
    .line 257
    const v0, 0x7f16000f

    .line 258
    .line 259
    .line 260
    invoke-static {p0, v0}, Landroidx/preference/PreferenceManager;->setDefaultValues(Lorg/schabi/newpipe/App;I)V

    .line 261
    .line 262
    .line 263
    const v0, 0x7f160006

    .line 264
    .line 265
    .line 266
    invoke-static {p0, v0}, Landroidx/preference/PreferenceManager;->setDefaultValues(Lorg/schabi/newpipe/App;I)V

    .line 267
    .line 268
    .line 269
    const v0, 0x7f160001

    .line 270
    .line 271
    .line 272
    invoke-static {p0, v0}, Landroidx/preference/PreferenceManager;->setDefaultValues(Lorg/schabi/newpipe/App;I)V

    .line 273
    .line 274
    .line 275
    const v0, 0x7f160008

    .line 276
    .line 277
    .line 278
    invoke-static {p0, v0}, Landroidx/preference/PreferenceManager;->setDefaultValues(Lorg/schabi/newpipe/App;I)V

    .line 279
    .line 280
    .line 281
    const v0, 0x7f160004

    .line 282
    .line 283
    .line 284
    invoke-static {p0, v0}, Landroidx/preference/PreferenceManager;->setDefaultValues(Lorg/schabi/newpipe/App;I)V

    .line 285
    .line 286
    .line 287
    const v0, 0x7f16000d

    .line 288
    .line 289
    .line 290
    invoke-static {p0, v0}, Landroidx/preference/PreferenceManager;->setDefaultValues(Lorg/schabi/newpipe/App;I)V

    .line 291
    .line 292
    .line 293
    const v0, 0x7f16000e

    .line 294
    .line 295
    .line 296
    invoke-static {p0, v0}, Landroidx/preference/PreferenceManager;->setDefaultValues(Lorg/schabi/newpipe/App;I)V

    .line 297
    .line 298
    .line 299
    const v0, 0x7f160005

    .line 300
    .line 301
    .line 302
    invoke-static {p0, v0}, Landroidx/preference/PreferenceManager;->setDefaultValues(Lorg/schabi/newpipe/App;I)V

    .line 303
    .line 304
    .line 305
    const v0, 0x7f160003

    .line 306
    .line 307
    .line 308
    invoke-static {p0, v0}, Landroidx/preference/PreferenceManager;->setDefaultValues(Lorg/schabi/newpipe/App;I)V

    .line 309
    .line 310
    .line 311
    const v0, 0x7f13011c

    .line 312
    .line 313
    .line 314
    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 315
    .line 316
    invoke-static {p0, v0, v2}, Lokio/Options$Companion;->saveDefaultDirectory(Landroid/content/Context;ILjava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const v0, 0x7f130116

    .line 320
    .line 321
    .line 322
    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 323
    .line 324
    invoke-static {p0, v0, v2}, Lokio/Options$Companion;->saveDefaultDirectory(Landroid/content/Context;ILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    const v2, 0x7f130103

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    const v5, 0x7f130107

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    const v6, 0x7f1302d2

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    const/16 v7, 0x3e2

    .line 361
    .line 362
    if-eq v7, v6, :cond_7

    .line 363
    .line 364
    move v6, v3

    .line 365
    goto :goto_5

    .line 366
    :cond_7
    move v6, v1

    .line 367
    :goto_5
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    if-nez v4, :cond_8

    .line 372
    .line 373
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-nez v0, :cond_8

    .line 378
    .line 379
    move v0, v3

    .line 380
    goto :goto_6

    .line 381
    :cond_8
    move v0, v1

    .line 382
    :goto_6
    sget-object v2, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    iget-boolean v2, v2, Lorg/schabi/newpipe/App;->isFirstRun:Z

    .line 392
    .line 393
    if-nez v2, :cond_9

    .line 394
    .line 395
    if-eqz v6, :cond_a

    .line 396
    .line 397
    if-nez v0, :cond_a

    .line 398
    .line 399
    :cond_9
    invoke-static {p0}, Lokio/Options$Companion;->setMediaTunneling(Landroid/content/Context;)V

    .line 400
    .line 401
    .line 402
    :cond_a
    new-instance v0, Lorg/schabi/newpipe/DownloaderImpl;

    .line 403
    .line 404
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    .line 405
    .line 406
    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 407
    .line 408
    .line 409
    invoke-direct {v0, v2}, Lorg/schabi/newpipe/DownloaderImpl;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 410
    .line 411
    .line 412
    sput-object v0, Lorg/schabi/newpipe/DownloaderImpl;->instance:Lorg/schabi/newpipe/DownloaderImpl;

    .line 413
    .line 414
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    const v4, 0x7f13040f

    .line 423
    .line 424
    .line 425
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    const-string v5, "recaptcha_cookies"

    .line 433
    .line 434
    const/4 v6, 0x0

    .line 435
    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    iget-object v4, v0, Lorg/schabi/newpipe/DownloaderImpl;->mCookies:Ljava/util/HashMap;

    .line 440
    .line 441
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/DownloaderImpl;->updateYoutubeRestrictedModeCookies(Landroid/content/Context;)V

    .line 445
    .line 446
    .line 447
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->getPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    new-instance v4, Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 452
    .line 453
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-direct {v4, v5, v2}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->getPreferredContentCountry(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    const-string v5, "Initializing with downloader={}, localization={}, country={}"

    .line 469
    .line 470
    const/4 v7, 0x3

    .line 471
    new-array v8, v7, [Ljava/lang/Object;

    .line 472
    .line 473
    aput-object v0, v8, v1

    .line 474
    .line 475
    aput-object v4, v8, v3

    .line 476
    .line 477
    const/4 v9, 0x2

    .line 478
    aput-object v2, v8, v9

    .line 479
    .line 480
    invoke-static {v5, v8}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    sput-object v0, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 484
    .line 485
    sput-object v4, Lus/shandian/giga/util/Utility;->preferredLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 486
    .line 487
    sput-object v2, Lus/shandian/giga/util/Utility;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 488
    .line 489
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->resolvePrettyTime()Lorg/ocpsoft/prettytime/PrettyTime;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-static {v0}, Lorg/schabi/newpipe/util/Localization;->initPrettyTime(Lorg/ocpsoft/prettytime/PrettyTime;)V

    .line 494
    .line 495
    .line 496
    new-instance v0, Lokio/ByteString$Companion;

    .line 497
    .line 498
    const/16 v2, 0xb

    .line 499
    .line 500
    invoke-direct {v0, v2}, Lokio/ByteString$Companion;-><init>(I)V

    .line 501
    .line 502
    .line 503
    sget-object v2, Lcom/livefront/bridge/Bridge;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 504
    .line 505
    const-class v2, Lcom/livefront/bridge/Bridge;

    .line 506
    .line 507
    monitor-enter v2

    .line 508
    :try_start_1
    new-instance v4, Lcom/livefront/bridge/BridgeDelegate;

    .line 509
    .line 510
    sget-object v5, Lcom/livefront/bridge/Bridge;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 511
    .line 512
    invoke-direct {v4, p0, v5, v0}, Lcom/livefront/bridge/BridgeDelegate;-><init>(Lorg/schabi/newpipe/App;Ljava/util/concurrent/ExecutorService;Lokio/ByteString$Companion;)V

    .line 513
    .line 514
    .line 515
    sput-object v4, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 516
    .line 517
    monitor-exit v2

    .line 518
    sget-object v0, Lorg/schabi/newpipe/util/StateSaver;->STATE_OBJECTS_HOLDER:Lj$/util/concurrent/ConcurrentHashMap;

    .line 519
    .line 520
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    if-eqz v0, :cond_b

    .line 525
    .line 526
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    sput-object v0, Lorg/schabi/newpipe/util/StateSaver;->cacheDirPath:Ljava/lang/String;

    .line 531
    .line 532
    :cond_b
    sget-object v0, Lorg/schabi/newpipe/util/StateSaver;->cacheDirPath:Ljava/lang/String;

    .line 533
    .line 534
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    if-eqz v0, :cond_c

    .line 539
    .line 540
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    sput-object v0, Lorg/schabi/newpipe/util/StateSaver;->cacheDirPath:Ljava/lang/String;

    .line 549
    .line 550
    :cond_c
    const v0, 0x7f130385

    .line 551
    .line 552
    .line 553
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    new-instance v2, Landroidx/core/app/NotificationChannelCompat;

    .line 558
    .line 559
    invoke-direct {v2, v0, v9}, Landroidx/core/app/NotificationChannelCompat;-><init>(Ljava/lang/String;I)V

    .line 560
    .line 561
    .line 562
    const v0, 0x7f130386

    .line 563
    .line 564
    .line 565
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    iput-object v0, v2, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/String;

    .line 570
    .line 571
    const v0, 0x7f130384

    .line 572
    .line 573
    .line 574
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    iput-object v0, v2, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 579
    .line 580
    const v0, 0x7f13003f

    .line 581
    .line 582
    .line 583
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    new-instance v4, Landroidx/core/app/NotificationChannelCompat;

    .line 588
    .line 589
    invoke-direct {v4, v0, v9}, Landroidx/core/app/NotificationChannelCompat;-><init>(Ljava/lang/String;I)V

    .line 590
    .line 591
    .line 592
    const v0, 0x7f130040

    .line 593
    .line 594
    .line 595
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    iput-object v0, v4, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/String;

    .line 600
    .line 601
    const v0, 0x7f13003e

    .line 602
    .line 603
    .line 604
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    iput-object v0, v4, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 609
    .line 610
    const v0, 0x7f1301fc

    .line 611
    .line 612
    .line 613
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    new-instance v5, Landroidx/core/app/NotificationChannelCompat;

    .line 618
    .line 619
    const/4 v8, 0x4

    .line 620
    invoke-direct {v5, v0, v8}, Landroidx/core/app/NotificationChannelCompat;-><init>(Ljava/lang/String;I)V

    .line 621
    .line 622
    .line 623
    const v0, 0x7f1301fd

    .line 624
    .line 625
    .line 626
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    iput-object v0, v5, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/String;

    .line 631
    .line 632
    const v0, 0x7f1301fb

    .line 633
    .line 634
    .line 635
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    iput-object v0, v5, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 640
    .line 641
    const v0, 0x7f130164

    .line 642
    .line 643
    .line 644
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    new-instance v10, Landroidx/core/app/NotificationChannelCompat;

    .line 649
    .line 650
    invoke-direct {v10, v0, v9}, Landroidx/core/app/NotificationChannelCompat;-><init>(Ljava/lang/String;I)V

    .line 651
    .line 652
    .line 653
    const v0, 0x7f130165

    .line 654
    .line 655
    .line 656
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    iput-object v0, v10, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/String;

    .line 661
    .line 662
    const v0, 0x7f130163

    .line 663
    .line 664
    .line 665
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    iput-object v0, v10, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 670
    .line 671
    const v0, 0x7f1304ce

    .line 672
    .line 673
    .line 674
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    new-instance v11, Landroidx/core/app/NotificationChannelCompat;

    .line 679
    .line 680
    invoke-direct {v11, v0, v7}, Landroidx/core/app/NotificationChannelCompat;-><init>(Ljava/lang/String;I)V

    .line 681
    .line 682
    .line 683
    const v0, 0x7f1304cf

    .line 684
    .line 685
    .line 686
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    iput-object v0, v11, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/String;

    .line 691
    .line 692
    const v0, 0x7f1304cd

    .line 693
    .line 694
    .line 695
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    iput-object v0, v11, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 700
    .line 701
    const/4 v0, 0x5

    .line 702
    new-array v0, v0, [Landroidx/core/app/NotificationChannelCompat;

    .line 703
    .line 704
    aput-object v2, v0, v1

    .line 705
    .line 706
    aput-object v4, v0, v3

    .line 707
    .line 708
    aput-object v5, v0, v9

    .line 709
    .line 710
    aput-object v10, v0, v7

    .line 711
    .line 712
    aput-object v11, v0, v8

    .line 713
    .line 714
    invoke-static {v0}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    new-instance v2, Landroidx/core/app/NotificationManagerCompat;

    .line 719
    .line 720
    invoke-direct {v2, p0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 721
    .line 722
    .line 723
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 724
    .line 725
    const/16 v4, 0x1a

    .line 726
    .line 727
    if-lt v3, v4, :cond_f

    .line 728
    .line 729
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 730
    .line 731
    .line 732
    move-result v3

    .line 733
    if-nez v3, :cond_f

    .line 734
    .line 735
    new-instance v3, Ljava/util/ArrayList;

    .line 736
    .line 737
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 738
    .line 739
    .line 740
    move-result v5

    .line 741
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 742
    .line 743
    .line 744
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 749
    .line 750
    .line 751
    move-result v5

    .line 752
    if-eqz v5, :cond_e

    .line 753
    .line 754
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v5

    .line 758
    check-cast v5, Landroidx/core/app/NotificationChannelCompat;

    .line 759
    .line 760
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 761
    .line 762
    if-ge v7, v4, :cond_d

    .line 763
    .line 764
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 765
    .line 766
    .line 767
    move-object v7, v6

    .line 768
    goto :goto_8

    .line 769
    :cond_d
    iget-object v7, v5, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    .line 770
    .line 771
    iget-object v8, v5, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/String;

    .line 772
    .line 773
    iget v9, v5, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    .line 774
    .line 775
    invoke-static {v7, v8, v9}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->createNotificationChannel(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 776
    .line 777
    .line 778
    move-result-object v7

    .line 779
    iget-object v8, v5, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 780
    .line 781
    invoke-static {v7, v8}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setDescription(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    invoke-static {v7}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setGroup(Landroid/app/NotificationChannel;)V

    .line 785
    .line 786
    .line 787
    invoke-static {v7}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setShowBadge(Landroid/app/NotificationChannel;)V

    .line 788
    .line 789
    .line 790
    iget-object v8, v5, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    .line 791
    .line 792
    iget-object v5, v5, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 793
    .line 794
    invoke-static {v7, v8, v5}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setSound(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 795
    .line 796
    .line 797
    invoke-static {v7}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->enableLights(Landroid/app/NotificationChannel;)V

    .line 798
    .line 799
    .line 800
    invoke-static {v7}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setLightColor(Landroid/app/NotificationChannel;)V

    .line 801
    .line 802
    .line 803
    invoke-static {v7}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->setVibrationPattern(Landroid/app/NotificationChannel;)V

    .line 804
    .line 805
    .line 806
    invoke-static {v7}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->enableVibration(Landroid/app/NotificationChannel;)V

    .line 807
    .line 808
    .line 809
    :goto_8
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    goto :goto_7

    .line 813
    :cond_e
    iget-object v0, v2, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 814
    .line 815
    invoke-static {v0, v3}, Landroidx/core/app/NotificationChannelCompat$Api26Impl;->createNotificationChannels(Landroid/app/NotificationManager;Ljava/util/ArrayList;)V

    .line 816
    .line 817
    .line 818
    :cond_f
    sget-object v0, Lorg/schabi/newpipe/util/ServiceHelper;->DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 819
    .line 820
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SERVICES:Ljava/util/List;

    .line 821
    .line 822
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 823
    .line 824
    .line 825
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 826
    .line 827
    .line 828
    move-result-object v2

    .line 829
    :cond_10
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    if-eqz v0, :cond_12

    .line 834
    .line 835
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    check-cast v0, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 840
    .line 841
    iget v0, v0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 842
    .line 843
    sget-object v3, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    .line 844
    .line 845
    iget v3, v3, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 846
    .line 847
    if-ne v0, v3, :cond_10

    .line 848
    .line 849
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    const v3, 0x7f1303bb

    .line 858
    .line 859
    .line 860
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v3

    .line 864
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    if-nez v0, :cond_11

    .line 869
    .line 870
    goto :goto_9

    .line 871
    :cond_11
    :try_start_2
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lokhttp3/ConnectionPool;

    .line 872
    .line 873
    .line 874
    move-result-object v3

    .line 875
    invoke-virtual {v3, v0}, Lokhttp3/ConnectionPool;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    check-cast v0, Lcom/grack/nanojson/JsonObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 880
    .line 881
    goto :goto_a

    .line 882
    :catchall_0
    move-exception v0

    .line 883
    new-instance v3, Lkotlin/Result$Failure;

    .line 884
    .line 885
    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 886
    .line 887
    .line 888
    move-object v0, v3

    .line 889
    :goto_a
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 890
    .line 891
    .line 892
    move-result-object v3

    .line 893
    if-nez v3, :cond_10

    .line 894
    .line 895
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 896
    .line 897
    sget-object v3, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    .line 898
    .line 899
    new-instance v4, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 900
    .line 901
    const-string/jumbo v5, "url"

    .line 902
    .line 903
    .line 904
    invoke-virtual {v0, v5, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v5

    .line 908
    const-string v7, "name"

    .line 909
    .line 910
    invoke-virtual {v0, v7, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    invoke-direct {v4, v5, v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    iput-object v4, v3, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->instance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 918
    .line 919
    goto :goto_9

    .line 920
    :cond_12
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    sget-object v1, Lorg/schabi/newpipe/util/image/PreferredImageQuality;->Companion:Lorg/schabi/newpipe/util/image/PreferredImageQuality$Companion;

    .line 929
    .line 930
    const v2, 0x7f130208

    .line 931
    .line 932
    .line 933
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v2

    .line 937
    const v3, 0x7f130205

    .line 938
    .line 939
    .line 940
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v3

    .line 944
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 949
    .line 950
    .line 951
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/image/PreferredImageQuality$Companion;->fromPreferenceKey(Landroid/content/Context;Ljava/lang/String;)Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    sput-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy;->preferredImageQuality:Lorg/schabi/newpipe/util/image/PreferredImageQuality;

    .line 956
    .line 957
    new-instance v0, Lokio/ByteString$Companion;

    .line 958
    .line 959
    invoke-direct {v0, p0}, Lokio/ByteString$Companion;-><init>(Lorg/schabi/newpipe/App;)V

    .line 960
    .line 961
    .line 962
    sput-object v0, Lkotlin/math/MathKt;->errorHandler:Lokio/ByteString$Companion;

    .line 963
    .line 964
    sget-object p0, Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;->INSTANCE:Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;

    .line 965
    .line 966
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->poTokenProvider:Lorg/schabi/newpipe/util/potoken/PoTokenProviderImpl;

    .line 967
    .line 968
    return-void

    .line 969
    :catchall_1
    move-exception v0

    .line 970
    move-object p0, v0

    .line 971
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 972
    throw p0
.end method
