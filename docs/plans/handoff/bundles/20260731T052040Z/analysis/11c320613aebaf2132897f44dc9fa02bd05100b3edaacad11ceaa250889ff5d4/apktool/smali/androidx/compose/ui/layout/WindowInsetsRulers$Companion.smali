.class public final Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

.field public static final CaptionBar:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

.field public static final DisplayCutout:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

.field public static final Ime:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

.field public static final MandatorySystemGestures:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

.field public static final NavigationBars:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

.field public static final StatusBars:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

.field public static final SystemGestures:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

.field public static final TappableElement:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

.field public static final Waterfall:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->$$INSTANCE:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 9
    .line 10
    const-string v1, "caption bar"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->CaptionBar:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 16
    .line 17
    new-instance v1, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 18
    .line 19
    const-string v2, "display cutout"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->DisplayCutout:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 25
    .line 26
    new-instance v2, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 27
    .line 28
    const-string v3, "ime"

    .line 29
    .line 30
    invoke-direct {v2, v3}, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->Ime:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 34
    .line 35
    new-instance v3, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 36
    .line 37
    const-string v4, "mandatory system gestures"

    .line 38
    .line 39
    invoke-direct {v3, v4}, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sput-object v3, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->MandatorySystemGestures:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 43
    .line 44
    new-instance v4, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 45
    .line 46
    const-string v5, "navigation bars"

    .line 47
    .line 48
    invoke-direct {v4, v5}, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v4, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->NavigationBars:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 52
    .line 53
    new-instance v5, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 54
    .line 55
    const-string/jumbo v6, "status bars"

    .line 56
    .line 57
    .line 58
    invoke-direct {v5, v6}, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v5, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->StatusBars:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 62
    .line 63
    const/4 v6, 0x3

    .line 64
    new-array v7, v6, [Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 65
    .line 66
    const/4 v8, 0x0

    .line 67
    aput-object v5, v7, v8

    .line 68
    .line 69
    const/4 v9, 0x1

    .line 70
    aput-object v4, v7, v9

    .line 71
    .line 72
    const/4 v10, 0x2

    .line 73
    aput-object v0, v7, v10

    .line 74
    .line 75
    new-instance v11, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .line 79
    .line 80
    move v12, v8

    .line 81
    :goto_0
    if-ge v12, v6, :cond_0

    .line 82
    .line 83
    aget-object v13, v7, v12

    .line 84
    .line 85
    check-cast v13, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 86
    .line 87
    iget-object v13, v13, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->current:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 88
    .line 89
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 v12, v12, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    new-array v12, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 96
    .line 97
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    check-cast v11, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 102
    .line 103
    array-length v12, v11

    .line 104
    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    check-cast v11, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 109
    .line 110
    new-instance v12, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 111
    .line 112
    invoke-direct {v12, v11}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 113
    .line 114
    .line 115
    new-instance v11, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .line 119
    .line 120
    move v12, v8

    .line 121
    :goto_1
    if-ge v12, v6, :cond_1

    .line 122
    .line 123
    aget-object v13, v7, v12

    .line 124
    .line 125
    check-cast v13, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 126
    .line 127
    iget-object v13, v13, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->maximum:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 128
    .line 129
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    add-int/lit8 v12, v12, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    new-array v7, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 136
    .line 137
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    check-cast v7, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 142
    .line 143
    array-length v11, v7

    .line 144
    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    check-cast v7, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 149
    .line 150
    new-instance v11, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 151
    .line 152
    invoke-direct {v11, v7}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 153
    .line 154
    .line 155
    new-instance v7, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 156
    .line 157
    const-string/jumbo v11, "system gestures"

    .line 158
    .line 159
    .line 160
    invoke-direct {v7, v11}, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sput-object v7, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->SystemGestures:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 164
    .line 165
    new-instance v11, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 166
    .line 167
    const-string/jumbo v12, "tappable element"

    .line 168
    .line 169
    .line 170
    invoke-direct {v11, v12}, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sput-object v11, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->TappableElement:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 174
    .line 175
    new-instance v12, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 176
    .line 177
    const-string/jumbo v13, "waterfall"

    .line 178
    .line 179
    .line 180
    invoke-direct {v12, v13}, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    sput-object v12, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->Waterfall:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 184
    .line 185
    const/4 v13, 0x6

    .line 186
    new-array v14, v13, [Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 187
    .line 188
    aput-object v5, v14, v8

    .line 189
    .line 190
    aput-object v4, v14, v9

    .line 191
    .line 192
    aput-object v0, v14, v10

    .line 193
    .line 194
    aput-object v1, v14, v6

    .line 195
    .line 196
    const/4 v15, 0x4

    .line 197
    aput-object v2, v14, v15

    .line 198
    .line 199
    const/16 v16, 0x5

    .line 200
    .line 201
    aput-object v11, v14, v16

    .line 202
    .line 203
    move/from16 v17, v6

    .line 204
    .line 205
    new-instance v6, Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .line 209
    .line 210
    move/from16 v18, v9

    .line 211
    .line 212
    move v9, v8

    .line 213
    :goto_2
    if-ge v9, v13, :cond_2

    .line 214
    .line 215
    aget-object v19, v14, v9

    .line 216
    .line 217
    move/from16 v20, v10

    .line 218
    .line 219
    move-object/from16 v10, v19

    .line 220
    .line 221
    check-cast v10, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 222
    .line 223
    iget-object v10, v10, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->current:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 224
    .line 225
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    add-int/lit8 v9, v9, 0x1

    .line 229
    .line 230
    move/from16 v10, v20

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_2
    move/from16 v20, v10

    .line 234
    .line 235
    new-array v9, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 236
    .line 237
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    check-cast v6, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 242
    .line 243
    array-length v9, v6

    .line 244
    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    check-cast v6, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 249
    .line 250
    new-instance v9, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 251
    .line 252
    invoke-direct {v9, v6}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 253
    .line 254
    .line 255
    new-instance v6, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .line 259
    .line 260
    move v9, v8

    .line 261
    :goto_3
    if-ge v9, v13, :cond_3

    .line 262
    .line 263
    aget-object v10, v14, v9

    .line 264
    .line 265
    check-cast v10, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 266
    .line 267
    iget-object v10, v10, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->maximum:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 268
    .line 269
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    add-int/lit8 v9, v9, 0x1

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_3
    new-array v9, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 276
    .line 277
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    check-cast v6, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 282
    .line 283
    array-length v9, v6

    .line 284
    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    check-cast v6, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 289
    .line 290
    new-instance v9, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 291
    .line 292
    invoke-direct {v9, v6}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 293
    .line 294
    .line 295
    new-array v6, v15, [Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 296
    .line 297
    aput-object v3, v6, v8

    .line 298
    .line 299
    aput-object v7, v6, v18

    .line 300
    .line 301
    aput-object v11, v6, v20

    .line 302
    .line 303
    aput-object v12, v6, v17

    .line 304
    .line 305
    new-instance v9, Ljava/util/ArrayList;

    .line 306
    .line 307
    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    .line 309
    .line 310
    move v10, v8

    .line 311
    :goto_4
    if-ge v10, v15, :cond_4

    .line 312
    .line 313
    aget-object v14, v6, v10

    .line 314
    .line 315
    check-cast v14, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 316
    .line 317
    iget-object v14, v14, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->current:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 318
    .line 319
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    add-int/lit8 v10, v10, 0x1

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_4
    new-array v10, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 326
    .line 327
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v9

    .line 331
    check-cast v9, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 332
    .line 333
    array-length v10, v9

    .line 334
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v9

    .line 338
    check-cast v9, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 339
    .line 340
    new-instance v10, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 341
    .line 342
    invoke-direct {v10, v9}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 343
    .line 344
    .line 345
    new-instance v9, Ljava/util/ArrayList;

    .line 346
    .line 347
    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 348
    .line 349
    .line 350
    move v10, v8

    .line 351
    :goto_5
    if-ge v10, v15, :cond_5

    .line 352
    .line 353
    aget-object v14, v6, v10

    .line 354
    .line 355
    check-cast v14, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 356
    .line 357
    iget-object v14, v14, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->maximum:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 358
    .line 359
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    add-int/lit8 v10, v10, 0x1

    .line 363
    .line 364
    goto :goto_5

    .line 365
    :cond_5
    new-array v6, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 366
    .line 367
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    check-cast v6, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 372
    .line 373
    array-length v9, v6

    .line 374
    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    check-cast v6, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 379
    .line 380
    new-instance v9, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 381
    .line 382
    invoke-direct {v9, v6}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 383
    .line 384
    .line 385
    const/16 v6, 0x9

    .line 386
    .line 387
    new-array v9, v6, [Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 388
    .line 389
    aput-object v5, v9, v8

    .line 390
    .line 391
    aput-object v4, v9, v18

    .line 392
    .line 393
    aput-object v0, v9, v20

    .line 394
    .line 395
    aput-object v2, v9, v17

    .line 396
    .line 397
    aput-object v7, v9, v15

    .line 398
    .line 399
    aput-object v3, v9, v16

    .line 400
    .line 401
    aput-object v11, v9, v13

    .line 402
    .line 403
    const/4 v0, 0x7

    .line 404
    aput-object v1, v9, v0

    .line 405
    .line 406
    const/16 v0, 0x8

    .line 407
    .line 408
    aput-object v12, v9, v0

    .line 409
    .line 410
    new-instance v0, Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 413
    .line 414
    .line 415
    move v1, v8

    .line 416
    :goto_6
    if-ge v1, v6, :cond_6

    .line 417
    .line 418
    aget-object v2, v9, v1

    .line 419
    .line 420
    check-cast v2, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 421
    .line 422
    iget-object v2, v2, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->current:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 423
    .line 424
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    add-int/lit8 v1, v1, 0x1

    .line 428
    .line 429
    goto :goto_6

    .line 430
    :cond_6
    new-array v1, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 431
    .line 432
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    check-cast v0, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 437
    .line 438
    array-length v1, v0

    .line 439
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 444
    .line 445
    new-instance v1, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 446
    .line 447
    invoke-direct {v1, v0}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 448
    .line 449
    .line 450
    new-instance v0, Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 453
    .line 454
    .line 455
    move v1, v8

    .line 456
    :goto_7
    if-ge v1, v6, :cond_7

    .line 457
    .line 458
    aget-object v2, v9, v1

    .line 459
    .line 460
    check-cast v2, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 461
    .line 462
    iget-object v2, v2, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->maximum:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 463
    .line 464
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    add-int/lit8 v1, v1, 0x1

    .line 468
    .line 469
    goto :goto_7

    .line 470
    :cond_7
    new-array v1, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 471
    .line 472
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    check-cast v0, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 477
    .line 478
    array-length v1, v0

    .line 479
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    check-cast v0, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 484
    .line 485
    new-instance v1, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 486
    .line 487
    invoke-direct {v1, v0}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 488
    .line 489
    .line 490
    return-void
.end method
