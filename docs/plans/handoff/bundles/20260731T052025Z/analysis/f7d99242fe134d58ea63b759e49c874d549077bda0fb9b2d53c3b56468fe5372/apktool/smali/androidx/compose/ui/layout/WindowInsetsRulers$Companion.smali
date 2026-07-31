.class public final Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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
    const-string v6, "status bars"

    .line 56
    .line 57
    invoke-direct {v5, v6}, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sput-object v5, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->StatusBars:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 61
    .line 62
    const/4 v6, 0x3

    .line 63
    new-array v7, v6, [Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    aput-object v5, v7, v8

    .line 67
    .line 68
    const/4 v9, 0x1

    .line 69
    aput-object v4, v7, v9

    .line 70
    .line 71
    const/4 v10, 0x2

    .line 72
    aput-object v0, v7, v10

    .line 73
    .line 74
    new-instance v11, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .line 78
    .line 79
    move v12, v8

    .line 80
    :goto_0
    if-ge v12, v6, :cond_0

    .line 81
    .line 82
    aget-object v13, v7, v12

    .line 83
    .line 84
    check-cast v13, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 85
    .line 86
    iget-object v13, v13, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->current:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 87
    .line 88
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    add-int/lit8 v12, v12, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    new-array v12, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 95
    .line 96
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    check-cast v11, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 101
    .line 102
    array-length v12, v11

    .line 103
    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    check-cast v11, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 108
    .line 109
    new-instance v12, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 110
    .line 111
    invoke-direct {v12, v11}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 112
    .line 113
    .line 114
    new-instance v11, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .line 118
    .line 119
    move v12, v8

    .line 120
    :goto_1
    if-ge v12, v6, :cond_1

    .line 121
    .line 122
    aget-object v13, v7, v12

    .line 123
    .line 124
    check-cast v13, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 125
    .line 126
    iget-object v13, v13, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->maximum:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 127
    .line 128
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    add-int/lit8 v12, v12, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    new-array v7, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 135
    .line 136
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    check-cast v7, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 141
    .line 142
    array-length v11, v7

    .line 143
    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    check-cast v7, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 148
    .line 149
    new-instance v11, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 150
    .line 151
    invoke-direct {v11, v7}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 152
    .line 153
    .line 154
    new-instance v7, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 155
    .line 156
    const-string v11, "system gestures"

    .line 157
    .line 158
    invoke-direct {v7, v11}, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sput-object v7, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->SystemGestures:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 162
    .line 163
    new-instance v11, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 164
    .line 165
    const-string v12, "tappable element"

    .line 166
    .line 167
    invoke-direct {v11, v12}, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sput-object v11, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->TappableElement:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 171
    .line 172
    new-instance v12, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 173
    .line 174
    const-string/jumbo v13, "waterfall"

    .line 175
    .line 176
    .line 177
    invoke-direct {v12, v13}, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    sput-object v12, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->Waterfall:Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 181
    .line 182
    const/4 v13, 0x6

    .line 183
    new-array v14, v13, [Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 184
    .line 185
    aput-object v5, v14, v8

    .line 186
    .line 187
    aput-object v4, v14, v9

    .line 188
    .line 189
    aput-object v0, v14, v10

    .line 190
    .line 191
    aput-object v1, v14, v6

    .line 192
    .line 193
    const/4 v15, 0x4

    .line 194
    aput-object v2, v14, v15

    .line 195
    .line 196
    const/16 v16, 0x5

    .line 197
    .line 198
    aput-object v11, v14, v16

    .line 199
    .line 200
    move/from16 v17, v6

    .line 201
    .line 202
    new-instance v6, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .line 206
    .line 207
    move/from16 v18, v9

    .line 208
    .line 209
    move v9, v8

    .line 210
    :goto_2
    if-ge v9, v13, :cond_2

    .line 211
    .line 212
    aget-object v19, v14, v9

    .line 213
    .line 214
    move/from16 v20, v10

    .line 215
    .line 216
    move-object/from16 v10, v19

    .line 217
    .line 218
    check-cast v10, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 219
    .line 220
    iget-object v10, v10, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->current:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 221
    .line 222
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    add-int/lit8 v9, v9, 0x1

    .line 226
    .line 227
    move/from16 v10, v20

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_2
    move/from16 v20, v10

    .line 231
    .line 232
    new-array v9, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 233
    .line 234
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    check-cast v6, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 239
    .line 240
    array-length v9, v6

    .line 241
    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    check-cast v6, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 246
    .line 247
    new-instance v9, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 248
    .line 249
    invoke-direct {v9, v6}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 250
    .line 251
    .line 252
    new-instance v6, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .line 256
    .line 257
    move v9, v8

    .line 258
    :goto_3
    if-ge v9, v13, :cond_3

    .line 259
    .line 260
    aget-object v10, v14, v9

    .line 261
    .line 262
    check-cast v10, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 263
    .line 264
    iget-object v10, v10, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->maximum:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 265
    .line 266
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    add-int/lit8 v9, v9, 0x1

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_3
    new-array v9, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 273
    .line 274
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    check-cast v6, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 279
    .line 280
    array-length v9, v6

    .line 281
    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    check-cast v6, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 286
    .line 287
    new-instance v9, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 288
    .line 289
    invoke-direct {v9, v6}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 290
    .line 291
    .line 292
    new-array v6, v15, [Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 293
    .line 294
    aput-object v3, v6, v8

    .line 295
    .line 296
    aput-object v7, v6, v18

    .line 297
    .line 298
    aput-object v11, v6, v20

    .line 299
    .line 300
    aput-object v12, v6, v17

    .line 301
    .line 302
    new-instance v9, Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .line 306
    .line 307
    move v10, v8

    .line 308
    :goto_4
    if-ge v10, v15, :cond_4

    .line 309
    .line 310
    aget-object v14, v6, v10

    .line 311
    .line 312
    check-cast v14, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 313
    .line 314
    iget-object v14, v14, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->current:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 315
    .line 316
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    add-int/lit8 v10, v10, 0x1

    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_4
    new-array v10, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 323
    .line 324
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v9

    .line 328
    check-cast v9, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 329
    .line 330
    array-length v10, v9

    .line 331
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v9

    .line 335
    check-cast v9, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 336
    .line 337
    new-instance v10, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 338
    .line 339
    invoke-direct {v10, v9}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 340
    .line 341
    .line 342
    new-instance v9, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .line 346
    .line 347
    move v10, v8

    .line 348
    :goto_5
    if-ge v10, v15, :cond_5

    .line 349
    .line 350
    aget-object v14, v6, v10

    .line 351
    .line 352
    check-cast v14, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 353
    .line 354
    iget-object v14, v14, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->maximum:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 355
    .line 356
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    add-int/lit8 v10, v10, 0x1

    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_5
    new-array v6, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 363
    .line 364
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    check-cast v6, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 369
    .line 370
    array-length v9, v6

    .line 371
    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    check-cast v6, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 376
    .line 377
    new-instance v9, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 378
    .line 379
    invoke-direct {v9, v6}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 380
    .line 381
    .line 382
    const/16 v6, 0x9

    .line 383
    .line 384
    new-array v9, v6, [Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 385
    .line 386
    aput-object v5, v9, v8

    .line 387
    .line 388
    aput-object v4, v9, v18

    .line 389
    .line 390
    aput-object v0, v9, v20

    .line 391
    .line 392
    aput-object v2, v9, v17

    .line 393
    .line 394
    aput-object v7, v9, v15

    .line 395
    .line 396
    aput-object v3, v9, v16

    .line 397
    .line 398
    aput-object v11, v9, v13

    .line 399
    .line 400
    const/4 v0, 0x7

    .line 401
    aput-object v1, v9, v0

    .line 402
    .line 403
    const/16 v0, 0x8

    .line 404
    .line 405
    aput-object v12, v9, v0

    .line 406
    .line 407
    new-instance v0, Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 410
    .line 411
    .line 412
    move v1, v8

    .line 413
    :goto_6
    if-ge v1, v6, :cond_6

    .line 414
    .line 415
    aget-object v2, v9, v1

    .line 416
    .line 417
    check-cast v2, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 418
    .line 419
    iget-object v2, v2, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->current:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 420
    .line 421
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    add-int/lit8 v1, v1, 0x1

    .line 425
    .line 426
    goto :goto_6

    .line 427
    :cond_6
    new-array v1, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 428
    .line 429
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    check-cast v0, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 434
    .line 435
    array-length v1, v0

    .line 436
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    check-cast v0, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 441
    .line 442
    new-instance v1, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 443
    .line 444
    invoke-direct {v1, v0}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 445
    .line 446
    .line 447
    new-instance v0, Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 450
    .line 451
    .line 452
    move v1, v8

    .line 453
    :goto_7
    if-ge v1, v6, :cond_7

    .line 454
    .line 455
    aget-object v2, v9, v1

    .line 456
    .line 457
    check-cast v2, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;

    .line 458
    .line 459
    iget-object v2, v2, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->maximum:Landroidx/compose/ui/layout/RectRulersImpl;

    .line 460
    .line 461
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    add-int/lit8 v1, v1, 0x1

    .line 465
    .line 466
    goto :goto_7

    .line 467
    :cond_7
    new-array v1, v8, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 468
    .line 469
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    check-cast v0, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 474
    .line 475
    array-length v1, v0

    .line 476
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    check-cast v0, [Landroidx/compose/ui/layout/RectRulersImpl;

    .line 481
    .line 482
    new-instance v1, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 483
    .line 484
    invoke-direct {v1, v0}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>([Landroidx/compose/ui/layout/RectRulersImpl;)V

    .line 485
    .line 486
    .line 487
    return-void
.end method
