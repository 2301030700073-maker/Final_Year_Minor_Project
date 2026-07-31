.class public final synthetic Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/RouterActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    iget-object v2, v0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/RouterActivity;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v4, p1

    .line 11
    .line 12
    check-cast v4, Ljava/lang/Throwable;

    .line 13
    .line 14
    sget v1, Lorg/schabi/newpipe/RouterActivity;->$r8$clinit:I

    .line 15
    .line 16
    new-instance v3, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 17
    .line 18
    const-string v1, "Getting service from url: "

    .line 19
    .line 20
    iget-object v8, v0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1, v8}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const/4 v7, 0x0

    .line 27
    sget-object v5, Lorg/schabi/newpipe/error/UserAction;->SHARE_TO_NEWPIPE:Lorg/schabi/newpipe/error/UserAction;

    .line 28
    .line 29
    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Lorg/schabi/newpipe/RouterActivity;->handleError(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    move-object/from16 v1, p1

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Boolean;

    .line 39
    .line 40
    sget v3, Lorg/schabi/newpipe/RouterActivity;->$r8$clinit:I

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_19

    .line 47
    .line 48
    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v3, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    .line 58
    .line 59
    iget-object v4, v2, Lorg/schabi/newpipe/RouterActivity;->currentService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 60
    .line 61
    iget-object v5, v2, Lorg/schabi/newpipe/RouterActivity;->currentLinkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 62
    .line 63
    new-instance v6, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 64
    .line 65
    const v7, 0x7f13049c

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    const v9, 0x7f13049b

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    const v10, 0x7f08011a

    .line 80
    .line 81
    .line 82
    invoke-direct {v6, v8, v9, v10}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    new-instance v8, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 86
    .line 87
    const v9, 0x7f130532

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    const v11, 0x7f130531

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    const v12, 0x7f08013b

    .line 102
    .line 103
    .line 104
    invoke-direct {v8, v10, v11, v12}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    new-instance v10, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 108
    .line 109
    const v11, 0x7f13005f

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    const v13, 0x7f13005e

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    const v14, 0x7f080112

    .line 124
    .line 125
    .line 126
    invoke-direct {v10, v12, v13, v14}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    new-instance v12, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 130
    .line 131
    const v13, 0x7f1303e1

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    const v15, 0x7f1303e0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v15

    .line 145
    const v9, 0x7f080136

    .line 146
    .line 147
    .line 148
    invoke-direct {v12, v14, v15, v9}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    new-instance v9, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    iget-object v4, v4, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 160
    .line 161
    iget-object v4, v4, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->mediaCapabilities:Ljava/util/Set;

    .line 162
    .line 163
    const v15, 0x7f130521

    .line 164
    .line 165
    .line 166
    const v11, 0x7f130523

    .line 167
    .line 168
    .line 169
    sget-object v7, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    .line 170
    .line 171
    sget-object v6, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    .line 172
    .line 173
    sget-object v14, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 174
    .line 175
    if-eq v5, v14, :cond_2

    .line 176
    .line 177
    sget-object v13, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->PLAYLIST:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 178
    .line 179
    if-ne v5, v13, :cond_0

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_0
    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    invoke-interface {v5, v13, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    invoke-interface {v5, v11, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-eqz v11, :cond_1

    .line 211
    .line 212
    if-nez v13, :cond_1

    .line 213
    .line 214
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    :cond_1
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_6

    .line 225
    .line 226
    if-nez v5, :cond_6

    .line 227
    .line 228
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :cond_2
    :goto_0
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    if-eqz v11, :cond_3

    .line 238
    .line 239
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    :cond_3
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_4

    .line 250
    .line 251
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    :cond_4
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {v4}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    new-instance v8, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 263
    .line 264
    const/16 v10, 0x14

    .line 265
    .line 266
    invoke-direct {v8, v10}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4, v8}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    new-instance v8, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 274
    .line 275
    const/16 v10, 0x13

    .line 276
    .line 277
    invoke-direct {v8, v10}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4, v8}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-virtual {v4, v8}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    check-cast v4, Ljava/lang/Integer;

    .line 293
    .line 294
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-lez v4, :cond_5

    .line 299
    .line 300
    new-instance v4, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 301
    .line 302
    const v8, 0x7f13014b

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    const v8, 0x7f13014d

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    const v11, 0x7f0800de

    .line 317
    .line 318
    .line 319
    invoke-direct {v4, v10, v8, v11}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    :cond_5
    if-ne v5, v14, :cond_6

    .line 326
    .line 327
    new-instance v4, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 328
    .line 329
    const v5, 0x7f130114

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    const v5, 0x7f13010e

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    const v10, 0x7f08010d

    .line 344
    .line 345
    .line 346
    invoke-direct {v4, v8, v5, v10}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    new-instance v4, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 353
    .line 354
    const v5, 0x7f130020

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    const v5, 0x7f13001f

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    const v10, 0x7f08013e

    .line 369
    .line 370
    .line 371
    invoke-direct {v4, v8, v5, v10}, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    :cond_6
    :goto_1
    const v4, 0x7f1303f2

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    const v5, 0x7f1303f1

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-direct {v3, v2, v9, v4}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;-><init>(Lorg/schabi/newpipe/RouterActivity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    const v5, 0x7f130020

    .line 399
    .line 400
    .line 401
    const v8, 0x7f130114

    .line 402
    .line 403
    .line 404
    const v10, 0x7f13049c

    .line 405
    .line 406
    .line 407
    filled-new-array {v10, v8, v5}, [I

    .line 408
    .line 409
    .line 410
    move-result-object v5

    .line 411
    invoke-virtual {v3, v5}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->isAvailableAndSelected([I)Z

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    if-eqz v5, :cond_7

    .line 416
    .line 417
    invoke-virtual {v2, v4}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_a

    .line 421
    .line 422
    :cond_7
    const v5, 0x7f130532

    .line 423
    .line 424
    .line 425
    const v8, 0x7f13014b

    .line 426
    .line 427
    .line 428
    const v10, 0x7f13005f

    .line 429
    .line 430
    .line 431
    const v11, 0x7f1303e1

    .line 432
    .line 433
    .line 434
    filled-new-array {v5, v10, v11, v8}, [I

    .line 435
    .line 436
    .line 437
    move-result-object v12

    .line 438
    invoke-virtual {v3, v12}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->isAvailableAndSelected([I)Z

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    const/4 v8, 0x1

    .line 443
    if-eqz v3, :cond_11

    .line 444
    .line 445
    const v3, 0x7f130523

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v9

    .line 460
    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    if-nez v5, :cond_9

    .line 473
    .line 474
    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v5

    .line 482
    if-eqz v5, :cond_8

    .line 483
    .line 484
    goto :goto_3

    .line 485
    :cond_8
    :goto_2
    const v10, 0x7f13005f

    .line 486
    .line 487
    .line 488
    goto :goto_4

    .line 489
    :cond_9
    :goto_3
    move v1, v8

    .line 490
    goto :goto_2

    .line 491
    :goto_4
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    const v9, 0x7f13014b

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v9

    .line 506
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v9

    .line 510
    iget-object v10, v2, Lorg/schabi/newpipe/RouterActivity;->currentLinkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 511
    .line 512
    if-eq v10, v14, :cond_c

    .line 513
    .line 514
    if-eqz v0, :cond_a

    .line 515
    .line 516
    if-nez v5, :cond_b

    .line 517
    .line 518
    :cond_a
    if-eqz v3, :cond_c

    .line 519
    .line 520
    if-eqz v1, :cond_c

    .line 521
    .line 522
    :cond_b
    const v0, 0x7f1301b6

    .line 523
    .line 524
    .line 525
    invoke-static {v2, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 530
    .line 531
    .line 532
    const v10, 0x7f13049c

    .line 533
    .line 534
    .line 535
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_a

    .line 543
    .line 544
    :cond_c
    iget-object v0, v2, Lorg/schabi/newpipe/RouterActivity;->currentService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 545
    .line 546
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 547
    .line 548
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->mediaCapabilities:Ljava/util/Set;

    .line 549
    .line 550
    if-eqz v1, :cond_d

    .line 551
    .line 552
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    if-nez v1, :cond_10

    .line 557
    .line 558
    :cond_d
    if-eqz v5, :cond_e

    .line 559
    .line 560
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    if-nez v1, :cond_10

    .line 565
    .line 566
    :cond_e
    if-eqz v9, :cond_f

    .line 567
    .line 568
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    if-nez v1, :cond_10

    .line 573
    .line 574
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_f

    .line 579
    .line 580
    goto :goto_5

    .line 581
    :cond_f
    const v10, 0x7f13049c

    .line 582
    .line 583
    .line 584
    goto :goto_6

    .line 585
    :cond_10
    :goto_5
    invoke-virtual {v2, v4}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_a

    .line 589
    .line 590
    :goto_6
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_a

    .line 598
    .line 599
    :cond_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-eqz v0, :cond_18

    .line 604
    .line 605
    if-eq v0, v8, :cond_17

    .line 606
    .line 607
    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    invoke-virtual {v2}, Lorg/schabi/newpipe/RouterActivity;->getThemeWrapperContext()Landroid/view/ContextThemeWrapper;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    invoke-static {v4}, Lorg/jsoup/parser/TokenData;->inflate$1(Landroid/view/LayoutInflater;)Lorg/jsoup/parser/TokenData;

    .line 624
    .line 625
    .line 626
    move-result-object v5

    .line 627
    iget-object v6, v5, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 628
    .line 629
    check-cast v6, Landroid/widget/RadioGroup;

    .line 630
    .line 631
    new-instance v7, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;

    .line 632
    .line 633
    invoke-direct {v7, v2, v6, v9, v0}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;Ljava/util/ArrayList;Landroid/content/SharedPreferences;)V

    .line 634
    .line 635
    .line 636
    new-instance v10, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 637
    .line 638
    invoke-direct {v10, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 639
    .line 640
    .line 641
    const v11, 0x7f1303f6

    .line 642
    .line 643
    .line 644
    invoke-virtual {v10, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 645
    .line 646
    .line 647
    iget-object v5, v5, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 648
    .line 649
    check-cast v5, Landroid/widget/ScrollView;

    .line 650
    .line 651
    invoke-virtual {v10, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 652
    .line 653
    .line 654
    move-result-object v5

    .line 655
    iget-object v10, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 656
    .line 657
    iput-boolean v8, v10, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 658
    .line 659
    const v10, 0x7f13022f

    .line 660
    .line 661
    .line 662
    invoke-virtual {v5, v10, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 663
    .line 664
    .line 665
    move-result-object v5

    .line 666
    const v10, 0x7f130026

    .line 667
    .line 668
    .line 669
    invoke-virtual {v5, v10, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 670
    .line 671
    .line 672
    move-result-object v5

    .line 673
    new-instance v7, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda5;

    .line 674
    .line 675
    invoke-direct {v7, v2, v8}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;I)V

    .line 676
    .line 677
    .line 678
    iget-object v10, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 679
    .line 680
    iput-object v7, v10, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 681
    .line 682
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 683
    .line 684
    .line 685
    move-result-object v5

    .line 686
    iput-object v5, v2, Lorg/schabi/newpipe/RouterActivity;->alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

    .line 687
    .line 688
    new-instance v7, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda11;

    .line 689
    .line 690
    invoke-direct {v7, v2, v6}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 694
    .line 695
    .line 696
    new-instance v5, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda12;

    .line 697
    .line 698
    invoke-direct {v5, v2}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/RouterActivity;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v6, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 702
    .line 703
    .line 704
    new-instance v5, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda13;

    .line 705
    .line 706
    invoke-direct {v5, v2, v6, v9}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;Ljava/util/ArrayList;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 710
    .line 711
    .line 712
    move-result-object v7

    .line 713
    const/16 v10, 0x3039

    .line 714
    .line 715
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 716
    .line 717
    .line 718
    move-result v11

    .line 719
    const/4 v12, 0x0

    .line 720
    const/4 v13, -0x1

    .line 721
    if-eqz v11, :cond_13

    .line 722
    .line 723
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v11

    .line 727
    check-cast v11, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 728
    .line 729
    const v14, 0x7f0d0080

    .line 730
    .line 731
    .line 732
    invoke-virtual {v4, v14, v12, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 733
    .line 734
    .line 735
    move-result-object v14

    .line 736
    if-eqz v14, :cond_12

    .line 737
    .line 738
    check-cast v14, Landroid/widget/RadioButton;

    .line 739
    .line 740
    iget-object v15, v11, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->description:Ljava/lang/String;

    .line 741
    .line 742
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    .line 744
    .line 745
    iget v11, v11, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->icon:I

    .line 746
    .line 747
    invoke-static {v3, v11}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 748
    .line 749
    .line 750
    move-result-object v11

    .line 751
    invoke-virtual {v14, v11, v12, v12, v12}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v14, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 755
    .line 756
    .line 757
    add-int/lit8 v11, v10, 0x1

    .line 758
    .line 759
    invoke-virtual {v14, v10}, Landroid/view/View;->setId(I)V

    .line 760
    .line 761
    .line 762
    new-instance v10, Landroid/widget/RadioGroup$LayoutParams;

    .line 763
    .line 764
    const/4 v12, -0x2

    .line 765
    invoke-direct {v10, v13, v12}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v14, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v14, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 775
    .line 776
    .line 777
    move v10, v11

    .line 778
    goto :goto_7

    .line 779
    :cond_12
    const-string v0, "rootView"

    .line 780
    .line 781
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    goto/16 :goto_a

    .line 785
    .line 786
    :cond_13
    iget v3, v2, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    .line 787
    .line 788
    if-ne v3, v13, :cond_15

    .line 789
    .line 790
    const v3, 0x7f1303f3

    .line 791
    .line 792
    .line 793
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v3

    .line 797
    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 802
    .line 803
    .line 804
    move-result v3

    .line 805
    if-nez v3, :cond_15

    .line 806
    .line 807
    :goto_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 808
    .line 809
    .line 810
    move-result v3

    .line 811
    if-ge v1, v3, :cond_15

    .line 812
    .line 813
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v3

    .line 817
    check-cast v3, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 818
    .line 819
    iget-object v3, v3, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->key:Ljava/lang/String;

    .line 820
    .line 821
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    move-result v3

    .line 825
    if-eqz v3, :cond_14

    .line 826
    .line 827
    iput v1, v2, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    .line 828
    .line 829
    goto :goto_9

    .line 830
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 831
    .line 832
    goto :goto_8

    .line 833
    :cond_15
    :goto_9
    iget v0, v2, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    .line 834
    .line 835
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 836
    .line 837
    .line 838
    move-result v1

    .line 839
    sub-int/2addr v1, v8

    .line 840
    invoke-static {v0, v13, v1}, Lokhttp3/Cookie$Companion;->clamp(III)I

    .line 841
    .line 842
    .line 843
    move-result v0

    .line 844
    iput v0, v2, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    .line 845
    .line 846
    if-eq v0, v13, :cond_16

    .line 847
    .line 848
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    check-cast v0, Landroid/widget/RadioButton;

    .line 853
    .line 854
    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 855
    .line 856
    .line 857
    :cond_16
    iget-object v0, v2, Lorg/schabi/newpipe/RouterActivity;->alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

    .line 858
    .line 859
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 860
    .line 861
    .line 862
    invoke-static {v2}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    if-eqz v0, :cond_1a

    .line 867
    .line 868
    iget-object v0, v2, Lorg/schabi/newpipe/RouterActivity;->alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

    .line 869
    .line 870
    invoke-static {v0}, Lorg/schabi/newpipe/views/FocusOverlayView;->setupFocusObserver(Landroid/app/Dialog;)V

    .line 871
    .line 872
    .line 873
    goto :goto_a

    .line 874
    :cond_17
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    check-cast v0, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 879
    .line 880
    iget-object v0, v0, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->key:Ljava/lang/String;

    .line 881
    .line 882
    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    goto :goto_a

    .line 886
    :cond_18
    const v10, 0x7f13049c

    .line 887
    .line 888
    .line 889
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    goto :goto_a

    .line 897
    :cond_19
    iget-object v0, v0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 898
    .line 899
    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/RouterActivity;->showUnsupportedUrlDialog(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    :cond_1a
    :goto_a
    return-void

    .line 903
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
