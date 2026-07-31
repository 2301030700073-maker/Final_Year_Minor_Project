.class public abstract Lcom/airbnb/lottie/parser/ContentModelParser;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final NAMES:Lcoil3/svg/internal/AndroidSvg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ty"

    .line 2
    .line 3
    .line 4
    const-string v1, "d"

    .line 5
    .line 6
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcoil3/svg/internal/AndroidSvg;->of([Ljava/lang/String;)Lcoil3/svg/internal/AndroidSvg;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 15
    .line 16
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/16 v2, 0x64

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    move v4, v3

    .line 16
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x1

    .line 21
    const/4 v7, 0x0

    .line 22
    if-eqz v5, :cond_2

    .line 23
    .line 24
    sget-object v5, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    if-eq v5, v6, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v5, v7

    .line 52
    :goto_1
    if-nez v5, :cond_3

    .line 53
    .line 54
    return-object v7

    .line 55
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    const/4 v9, 0x6

    .line 60
    const/4 v11, 0x5

    .line 61
    const/4 v12, 0x4

    .line 62
    const/4 v13, 0x3

    .line 63
    const/4 v14, 0x0

    .line 64
    sparse-switch v8, :sswitch_data_0

    .line 65
    .line 66
    .line 67
    :goto_2
    const/4 v8, -0x1

    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :sswitch_0
    const-string/jumbo v8, "tr"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-nez v8, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    const/16 v8, 0xd

    .line 81
    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :sswitch_1
    const-string v8, "tm"

    .line 85
    .line 86
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-nez v8, :cond_5

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    const/16 v8, 0xc

    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :sswitch_2
    const-string v8, "st"

    .line 98
    .line 99
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-nez v8, :cond_6

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    const/16 v8, 0xb

    .line 107
    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :sswitch_3
    const-string v8, "sr"

    .line 111
    .line 112
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-nez v8, :cond_7

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_7
    const/16 v8, 0xa

    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :sswitch_4
    const-string v8, "sh"

    .line 124
    .line 125
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-nez v8, :cond_8

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_8
    const/16 v8, 0x9

    .line 133
    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    :sswitch_5
    const-string v8, "rp"

    .line 137
    .line 138
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-nez v8, :cond_9

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_9
    const/16 v8, 0x8

    .line 146
    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :sswitch_6
    const-string v8, "rd"

    .line 150
    .line 151
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-nez v8, :cond_a

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_a
    const/4 v8, 0x7

    .line 159
    goto :goto_3

    .line 160
    :sswitch_7
    const-string v8, "rc"

    .line 161
    .line 162
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-nez v8, :cond_b

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_b
    move v8, v9

    .line 170
    goto :goto_3

    .line 171
    :sswitch_8
    const-string v8, "mm"

    .line 172
    .line 173
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    if-nez v8, :cond_c

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_c
    move v8, v11

    .line 181
    goto :goto_3

    .line 182
    :sswitch_9
    const-string v8, "gs"

    .line 183
    .line 184
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-nez v8, :cond_d

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_d
    move v8, v12

    .line 192
    goto :goto_3

    .line 193
    :sswitch_a
    const-string v8, "gr"

    .line 194
    .line 195
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-nez v8, :cond_e

    .line 200
    .line 201
    goto/16 :goto_2

    .line 202
    .line 203
    :cond_e
    move v8, v13

    .line 204
    goto :goto_3

    .line 205
    :sswitch_b
    const-string v8, "gf"

    .line 206
    .line 207
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-nez v8, :cond_f

    .line 212
    .line 213
    goto/16 :goto_2

    .line 214
    .line 215
    :cond_f
    move v8, v3

    .line 216
    goto :goto_3

    .line 217
    :sswitch_c
    const-string v8, "fl"

    .line 218
    .line 219
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    if-nez v8, :cond_10

    .line 224
    .line 225
    goto/16 :goto_2

    .line 226
    .line 227
    :cond_10
    move v8, v6

    .line 228
    goto :goto_3

    .line 229
    :sswitch_d
    const-string v8, "el"

    .line 230
    .line 231
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    if-nez v8, :cond_11

    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :cond_11
    move v8, v14

    .line 240
    :goto_3
    const-string v15, "o"

    .line 241
    .line 242
    move-object/from16 v16, v7

    .line 243
    .line 244
    const-string v7, "g"

    .line 245
    .line 246
    const-string v10, "d"

    .line 247
    .line 248
    const/16 v18, 0x0

    .line 249
    .line 250
    packed-switch v8, :pswitch_data_0

    .line 251
    .line 252
    .line 253
    const-string v1, "Unknown shape type "

    .line 254
    .line 255
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :goto_4
    move-object/from16 v7, v16

    .line 263
    .line 264
    goto/16 :goto_2a

    .line 265
    .line 266
    :pswitch_0
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    goto/16 :goto_2a

    .line 271
    .line 272
    :pswitch_1
    sget-object v2, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 273
    .line 274
    move/from16 v23, v14

    .line 275
    .line 276
    move-object/from16 v18, v16

    .line 277
    .line 278
    move-object/from16 v19, v18

    .line 279
    .line 280
    move-object/from16 v20, v19

    .line 281
    .line 282
    move-object/from16 v21, v20

    .line 283
    .line 284
    move-object/from16 v22, v21

    .line 285
    .line 286
    :goto_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_1a

    .line 291
    .line 292
    sget-object v2, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 293
    .line 294
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_19

    .line 299
    .line 300
    if-eq v2, v6, :cond_18

    .line 301
    .line 302
    if-eq v2, v3, :cond_17

    .line 303
    .line 304
    if-eq v2, v13, :cond_16

    .line 305
    .line 306
    if-eq v2, v12, :cond_13

    .line 307
    .line 308
    if-eq v2, v11, :cond_12

    .line 309
    .line 310
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_12
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 315
    .line 316
    .line 317
    move-result v23

    .line 318
    goto :goto_5

    .line 319
    :cond_13
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-eq v2, v6, :cond_15

    .line 324
    .line 325
    if-ne v2, v3, :cond_14

    .line 326
    .line 327
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 328
    .line 329
    :goto_6
    move-object/from16 v19, v2

    .line 330
    .line 331
    goto :goto_5

    .line 332
    :cond_14
    const-string v0, "Unknown trim path type "

    .line 333
    .line 334
    invoke-static {v2, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    return-object v16

    .line 342
    :cond_15
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_16
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v18

    .line 349
    goto :goto_5

    .line 350
    :cond_17
    invoke-static {v0, v1, v14}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 351
    .line 352
    .line 353
    move-result-object v22

    .line 354
    goto :goto_5

    .line 355
    :cond_18
    invoke-static {v0, v1, v14}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 356
    .line 357
    .line 358
    move-result-object v21

    .line 359
    goto :goto_5

    .line 360
    :cond_19
    invoke-static {v0, v1, v14}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 361
    .line 362
    .line 363
    move-result-object v20

    .line 364
    goto :goto_5

    .line 365
    :cond_1a
    new-instance v17, Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    .line 366
    .line 367
    invoke-direct/range {v17 .. v23}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 368
    .line 369
    .line 370
    :goto_7
    move-object/from16 v7, v17

    .line 371
    .line 372
    goto/16 :goto_2a

    .line 373
    .line 374
    :pswitch_2
    sget-object v4, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 375
    .line 376
    new-instance v4, Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .line 380
    .line 381
    move/from16 v29, v14

    .line 382
    .line 383
    move-object/from16 v5, v16

    .line 384
    .line 385
    move-object v8, v5

    .line 386
    move-object v9, v8

    .line 387
    move-object/from16 v20, v9

    .line 388
    .line 389
    move-object/from16 v21, v20

    .line 390
    .line 391
    move-object/from16 v23, v21

    .line 392
    .line 393
    move-object/from16 v25, v23

    .line 394
    .line 395
    move/from16 v28, v18

    .line 396
    .line 397
    :goto_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v11

    .line 401
    if-eqz v11, :cond_23

    .line 402
    .line 403
    sget-object v11, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 404
    .line 405
    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 406
    .line 407
    .line 408
    move-result v11

    .line 409
    packed-switch v11, :pswitch_data_1

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 413
    .line 414
    .line 415
    goto :goto_8

    .line 416
    :pswitch_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 417
    .line 418
    .line 419
    :goto_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v11

    .line 423
    if-eqz v11, :cond_21

    .line 424
    .line 425
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 426
    .line 427
    .line 428
    move-object/from16 v11, v16

    .line 429
    .line 430
    move-object v12, v11

    .line 431
    :goto_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 432
    .line 433
    .line 434
    move-result v18

    .line 435
    if-eqz v18, :cond_1d

    .line 436
    .line 437
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 438
    .line 439
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    if-eqz v3, :cond_1c

    .line 444
    .line 445
    if-eq v3, v6, :cond_1b

    .line 446
    .line 447
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 451
    .line 452
    .line 453
    :goto_b
    const/4 v3, 0x2

    .line 454
    goto :goto_a

    .line 455
    :cond_1b
    invoke-static {v0, v1, v6}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 456
    .line 457
    .line 458
    move-result-object v12

    .line 459
    goto :goto_b

    .line 460
    :cond_1c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v11

    .line 464
    goto :goto_b

    .line 465
    :cond_1d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 472
    .line 473
    .line 474
    move-result v3

    .line 475
    sparse-switch v3, :sswitch_data_1

    .line 476
    .line 477
    .line 478
    :goto_c
    const/4 v3, -0x1

    .line 479
    goto :goto_d

    .line 480
    :sswitch_e
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v3

    .line 484
    if-nez v3, :cond_1e

    .line 485
    .line 486
    goto :goto_c

    .line 487
    :cond_1e
    const/4 v3, 0x2

    .line 488
    goto :goto_d

    .line 489
    :sswitch_f
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    if-nez v3, :cond_1f

    .line 494
    .line 495
    goto :goto_c

    .line 496
    :cond_1f
    move v3, v6

    .line 497
    goto :goto_d

    .line 498
    :sswitch_10
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v3

    .line 502
    if-nez v3, :cond_20

    .line 503
    .line 504
    goto :goto_c

    .line 505
    :cond_20
    move v3, v14

    .line 506
    :goto_d
    packed-switch v3, :pswitch_data_2

    .line 507
    .line 508
    .line 509
    goto :goto_e

    .line 510
    :pswitch_4
    move-object/from16 v21, v12

    .line 511
    .line 512
    goto :goto_e

    .line 513
    :pswitch_5
    iput-boolean v6, v1, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    .line 514
    .line 515
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    :goto_e
    const/4 v3, 0x2

    .line 519
    goto :goto_9

    .line 520
    :cond_21
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 524
    .line 525
    .line 526
    move-result v3

    .line 527
    if-ne v3, v6, :cond_22

    .line 528
    .line 529
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    check-cast v3, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 534
    .line 535
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    :cond_22
    :goto_f
    const/4 v3, 0x2

    .line 539
    goto/16 :goto_8

    .line 540
    .line 541
    :pswitch_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 542
    .line 543
    .line 544
    move-result v29

    .line 545
    goto :goto_f

    .line 546
    :pswitch_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 547
    .line 548
    .line 549
    move-result-wide v11

    .line 550
    double-to-float v3, v11

    .line 551
    move/from16 v28, v3

    .line 552
    .line 553
    goto :goto_f

    .line 554
    :pswitch_8
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 559
    .line 560
    .line 561
    move-result v9

    .line 562
    sub-int/2addr v9, v6

    .line 563
    aget-object v9, v3, v9

    .line 564
    .line 565
    goto :goto_f

    .line 566
    :pswitch_9
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 571
    .line 572
    .line 573
    move-result v8

    .line 574
    sub-int/2addr v8, v6

    .line 575
    aget-object v8, v3, v8

    .line 576
    .line 577
    goto :goto_f

    .line 578
    :pswitch_a
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    goto :goto_f

    .line 583
    :pswitch_b
    invoke-static {v0, v1, v6}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 584
    .line 585
    .line 586
    move-result-object v25

    .line 587
    goto :goto_f

    .line 588
    :pswitch_c
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 589
    .line 590
    .line 591
    move-result-object v23

    .line 592
    goto :goto_f

    .line 593
    :pswitch_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v20

    .line 597
    goto :goto_f

    .line 598
    :cond_23
    if-nez v5, :cond_24

    .line 599
    .line 600
    new-instance v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 601
    .line 602
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 603
    .line 604
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 605
    .line 606
    .line 607
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    invoke-direct {v5, v1, v13}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;I)V

    .line 612
    .line 613
    .line 614
    :cond_24
    move-object/from16 v24, v5

    .line 615
    .line 616
    if-nez v8, :cond_25

    .line 617
    .line 618
    sget-object v8, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->BUTT:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 619
    .line 620
    :cond_25
    move-object/from16 v26, v8

    .line 621
    .line 622
    if-nez v9, :cond_26

    .line 623
    .line 624
    sget-object v9, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->MITER:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 625
    .line 626
    :cond_26
    move-object/from16 v27, v9

    .line 627
    .line 628
    new-instance v19, Lcom/airbnb/lottie/model/content/ShapeStroke;

    .line 629
    .line 630
    move-object/from16 v22, v4

    .line 631
    .line 632
    invoke-direct/range {v19 .. v29}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/ArrayList;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V

    .line 633
    .line 634
    .line 635
    :goto_10
    move-object/from16 v7, v19

    .line 636
    .line 637
    goto/16 :goto_2a

    .line 638
    .line 639
    :pswitch_e
    sget-object v2, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 640
    .line 641
    if-ne v4, v13, :cond_27

    .line 642
    .line 643
    move v2, v6

    .line 644
    goto :goto_11

    .line 645
    :cond_27
    move v2, v14

    .line 646
    :goto_11
    move/from16 v28, v2

    .line 647
    .line 648
    move/from16 v27, v14

    .line 649
    .line 650
    move-object/from16 v18, v16

    .line 651
    .line 652
    move-object/from16 v19, v18

    .line 653
    .line 654
    move-object/from16 v20, v19

    .line 655
    .line 656
    move-object/from16 v21, v20

    .line 657
    .line 658
    move-object/from16 v22, v21

    .line 659
    .line 660
    move-object/from16 v23, v22

    .line 661
    .line 662
    move-object/from16 v24, v23

    .line 663
    .line 664
    move-object/from16 v25, v24

    .line 665
    .line 666
    move-object/from16 v26, v25

    .line 667
    .line 668
    :goto_12
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    if-eqz v2, :cond_29

    .line 673
    .line 674
    sget-object v2, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 675
    .line 676
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 677
    .line 678
    .line 679
    move-result v2

    .line 680
    packed-switch v2, :pswitch_data_3

    .line 681
    .line 682
    .line 683
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 687
    .line 688
    .line 689
    goto :goto_12

    .line 690
    :pswitch_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 691
    .line 692
    .line 693
    move-result v2

    .line 694
    if-ne v2, v13, :cond_28

    .line 695
    .line 696
    move/from16 v28, v6

    .line 697
    .line 698
    goto :goto_12

    .line 699
    :cond_28
    move/from16 v28, v14

    .line 700
    .line 701
    goto :goto_12

    .line 702
    :pswitch_10
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 703
    .line 704
    .line 705
    move-result v27

    .line 706
    goto :goto_12

    .line 707
    :pswitch_11
    invoke-static {v0, v1, v14}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 708
    .line 709
    .line 710
    move-result-object v25

    .line 711
    goto :goto_12

    .line 712
    :pswitch_12
    invoke-static {v0, v1, v6}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 713
    .line 714
    .line 715
    move-result-object v23

    .line 716
    goto :goto_12

    .line 717
    :pswitch_13
    invoke-static {v0, v1, v14}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 718
    .line 719
    .line 720
    move-result-object v26

    .line 721
    goto :goto_12

    .line 722
    :pswitch_14
    invoke-static {v0, v1, v6}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 723
    .line 724
    .line 725
    move-result-object v24

    .line 726
    goto :goto_12

    .line 727
    :pswitch_15
    invoke-static {v0, v1, v14}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 728
    .line 729
    .line 730
    move-result-object v22

    .line 731
    goto :goto_12

    .line 732
    :pswitch_16
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 733
    .line 734
    .line 735
    move-result-object v21

    .line 736
    goto :goto_12

    .line 737
    :pswitch_17
    invoke-static {v0, v1, v14}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 738
    .line 739
    .line 740
    move-result-object v20

    .line 741
    goto :goto_12

    .line 742
    :pswitch_18
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 743
    .line 744
    .line 745
    move-result v2

    .line 746
    invoke-static {v2}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 747
    .line 748
    .line 749
    move-result-object v19

    .line 750
    goto :goto_12

    .line 751
    :pswitch_19
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v18

    .line 755
    goto :goto_12

    .line 756
    :cond_29
    new-instance v17, Lcom/airbnb/lottie/model/content/PolystarShape;

    .line 757
    .line 758
    invoke-direct/range {v17 .. v28}, Lcom/airbnb/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZZ)V

    .line 759
    .line 760
    .line 761
    goto/16 :goto_7

    .line 762
    .line 763
    :pswitch_1a
    sget-object v2, Lcom/airbnb/lottie/parser/ShapePathParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 764
    .line 765
    move v3, v14

    .line 766
    move v4, v3

    .line 767
    move-object/from16 v2, v16

    .line 768
    .line 769
    move-object v7, v2

    .line 770
    :goto_13
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 771
    .line 772
    .line 773
    move-result v5

    .line 774
    if-eqz v5, :cond_2e

    .line 775
    .line 776
    sget-object v5, Lcom/airbnb/lottie/parser/ShapePathParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 777
    .line 778
    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 779
    .line 780
    .line 781
    move-result v5

    .line 782
    if-eqz v5, :cond_2d

    .line 783
    .line 784
    if-eq v5, v6, :cond_2c

    .line 785
    .line 786
    const/4 v8, 0x2

    .line 787
    if-eq v5, v8, :cond_2b

    .line 788
    .line 789
    if-eq v5, v13, :cond_2a

    .line 790
    .line 791
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 792
    .line 793
    .line 794
    goto :goto_13

    .line 795
    :cond_2a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 796
    .line 797
    .line 798
    move-result v4

    .line 799
    goto :goto_13

    .line 800
    :cond_2b
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 801
    .line 802
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 803
    .line 804
    .line 805
    move-result v5

    .line 806
    sget-object v8, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    .line 807
    .line 808
    invoke-static {v0, v1, v5, v8, v14}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    .line 809
    .line 810
    .line 811
    move-result-object v5

    .line 812
    invoke-direct {v2, v5, v9}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;I)V

    .line 813
    .line 814
    .line 815
    goto :goto_13

    .line 816
    :cond_2c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 817
    .line 818
    .line 819
    move-result v3

    .line 820
    goto :goto_13

    .line 821
    :cond_2d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v7

    .line 825
    goto :goto_13

    .line 826
    :cond_2e
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapePath;

    .line 827
    .line 828
    invoke-direct {v1, v7, v3, v2, v4}, Lcom/airbnb/lottie/model/content/ShapePath;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Z)V

    .line 829
    .line 830
    .line 831
    :goto_14
    move-object v7, v1

    .line 832
    goto/16 :goto_2a

    .line 833
    .line 834
    :pswitch_1b
    sget-object v2, Lcom/airbnb/lottie/parser/RepeaterParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 835
    .line 836
    move/from16 v25, v14

    .line 837
    .line 838
    move-object/from16 v21, v16

    .line 839
    .line 840
    move-object/from16 v22, v21

    .line 841
    .line 842
    move-object/from16 v23, v22

    .line 843
    .line 844
    move-object/from16 v24, v23

    .line 845
    .line 846
    :goto_15
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 847
    .line 848
    .line 849
    move-result v2

    .line 850
    if-eqz v2, :cond_34

    .line 851
    .line 852
    sget-object v2, Lcom/airbnb/lottie/parser/RepeaterParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 853
    .line 854
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 855
    .line 856
    .line 857
    move-result v2

    .line 858
    if-eqz v2, :cond_33

    .line 859
    .line 860
    if-eq v2, v6, :cond_32

    .line 861
    .line 862
    const/4 v8, 0x2

    .line 863
    if-eq v2, v8, :cond_31

    .line 864
    .line 865
    if-eq v2, v13, :cond_30

    .line 866
    .line 867
    if-eq v2, v12, :cond_2f

    .line 868
    .line 869
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 870
    .line 871
    .line 872
    goto :goto_15

    .line 873
    :cond_2f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 874
    .line 875
    .line 876
    move-result v25

    .line 877
    goto :goto_15

    .line 878
    :cond_30
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 879
    .line 880
    .line 881
    move-result-object v24

    .line 882
    goto :goto_15

    .line 883
    :cond_31
    invoke-static {v0, v1, v14}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 884
    .line 885
    .line 886
    move-result-object v23

    .line 887
    goto :goto_15

    .line 888
    :cond_32
    invoke-static {v0, v1, v14}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 889
    .line 890
    .line 891
    move-result-object v22

    .line 892
    goto :goto_15

    .line 893
    :cond_33
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v21

    .line 897
    goto :goto_15

    .line 898
    :cond_34
    new-instance v20, Lcom/airbnb/lottie/model/content/Repeater;

    .line 899
    .line 900
    invoke-direct/range {v20 .. v25}, Lcom/airbnb/lottie/model/content/Repeater;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;Z)V

    .line 901
    .line 902
    .line 903
    :goto_16
    move-object/from16 v7, v20

    .line 904
    .line 905
    goto/16 :goto_2a

    .line 906
    .line 907
    :pswitch_1c
    sget-object v2, Lcom/airbnb/lottie/parser/RoundedCornersParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 908
    .line 909
    move-object/from16 v2, v16

    .line 910
    .line 911
    move-object v3, v2

    .line 912
    :goto_17
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 913
    .line 914
    .line 915
    move-result v4

    .line 916
    if-eqz v4, :cond_38

    .line 917
    .line 918
    sget-object v4, Lcom/airbnb/lottie/parser/RoundedCornersParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 919
    .line 920
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 921
    .line 922
    .line 923
    move-result v4

    .line 924
    if-eqz v4, :cond_37

    .line 925
    .line 926
    if-eq v4, v6, :cond_36

    .line 927
    .line 928
    const/4 v8, 0x2

    .line 929
    if-eq v4, v8, :cond_35

    .line 930
    .line 931
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 932
    .line 933
    .line 934
    goto :goto_17

    .line 935
    :cond_35
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 936
    .line 937
    .line 938
    move-result v14

    .line 939
    goto :goto_17

    .line 940
    :cond_36
    invoke-static {v0, v1, v6}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 941
    .line 942
    .line 943
    move-result-object v3

    .line 944
    goto :goto_17

    .line 945
    :cond_37
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v2

    .line 949
    goto :goto_17

    .line 950
    :cond_38
    if-eqz v14, :cond_39

    .line 951
    .line 952
    goto/16 :goto_4

    .line 953
    .line 954
    :cond_39
    new-instance v7, Lcom/airbnb/lottie/model/content/RoundedCorners;

    .line 955
    .line 956
    invoke-direct {v7, v2, v3}, Lcom/airbnb/lottie/model/content/RoundedCorners;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 957
    .line 958
    .line 959
    goto/16 :goto_2a

    .line 960
    .line 961
    :pswitch_1d
    sget-object v2, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 962
    .line 963
    move/from16 v25, v14

    .line 964
    .line 965
    move-object/from16 v21, v16

    .line 966
    .line 967
    move-object/from16 v22, v21

    .line 968
    .line 969
    move-object/from16 v23, v22

    .line 970
    .line 971
    move-object/from16 v24, v23

    .line 972
    .line 973
    :goto_18
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 974
    .line 975
    .line 976
    move-result v2

    .line 977
    if-eqz v2, :cond_3f

    .line 978
    .line 979
    sget-object v2, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 980
    .line 981
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 982
    .line 983
    .line 984
    move-result v2

    .line 985
    if-eqz v2, :cond_3e

    .line 986
    .line 987
    if-eq v2, v6, :cond_3d

    .line 988
    .line 989
    const/4 v8, 0x2

    .line 990
    if-eq v2, v8, :cond_3c

    .line 991
    .line 992
    if-eq v2, v13, :cond_3b

    .line 993
    .line 994
    if-eq v2, v12, :cond_3a

    .line 995
    .line 996
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 997
    .line 998
    .line 999
    goto :goto_18

    .line 1000
    :cond_3a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1001
    .line 1002
    .line 1003
    move-result v25

    .line 1004
    goto :goto_18

    .line 1005
    :cond_3b
    invoke-static {v0, v1, v6}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v24

    .line 1009
    goto :goto_18

    .line 1010
    :cond_3c
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v23

    .line 1014
    goto :goto_18

    .line 1015
    :cond_3d
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v22

    .line 1019
    goto :goto_18

    .line 1020
    :cond_3e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v21

    .line 1024
    goto :goto_18

    .line 1025
    :cond_3f
    new-instance v20, Lcom/airbnb/lottie/model/content/Repeater;

    .line 1026
    .line 1027
    invoke-direct/range {v20 .. v25}, Lcom/airbnb/lottie/model/content/Repeater;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 1028
    .line 1029
    .line 1030
    goto :goto_16

    .line 1031
    :pswitch_1e
    sget-object v2, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1032
    .line 1033
    move-object/from16 v2, v16

    .line 1034
    .line 1035
    move-object v7, v2

    .line 1036
    :goto_19
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1037
    .line 1038
    .line 1039
    move-result v3

    .line 1040
    if-eqz v3, :cond_48

    .line 1041
    .line 1042
    sget-object v3, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1043
    .line 1044
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 1045
    .line 1046
    .line 1047
    move-result v3

    .line 1048
    if-eqz v3, :cond_47

    .line 1049
    .line 1050
    if-eq v3, v6, :cond_41

    .line 1051
    .line 1052
    const/4 v8, 0x2

    .line 1053
    if-eq v3, v8, :cond_40

    .line 1054
    .line 1055
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1059
    .line 1060
    .line 1061
    goto :goto_19

    .line 1062
    :cond_40
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1063
    .line 1064
    .line 1065
    move-result v14

    .line 1066
    goto :goto_19

    .line 1067
    :cond_41
    const/4 v8, 0x2

    .line 1068
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1069
    .line 1070
    .line 1071
    move-result v2

    .line 1072
    if-eq v2, v6, :cond_46

    .line 1073
    .line 1074
    if-eq v2, v8, :cond_45

    .line 1075
    .line 1076
    if-eq v2, v13, :cond_44

    .line 1077
    .line 1078
    if-eq v2, v12, :cond_43

    .line 1079
    .line 1080
    if-eq v2, v11, :cond_42

    .line 1081
    .line 1082
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1083
    .line 1084
    goto :goto_19

    .line 1085
    :cond_42
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->EXCLUDE_INTERSECTIONS:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1086
    .line 1087
    goto :goto_19

    .line 1088
    :cond_43
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->INTERSECT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1089
    .line 1090
    goto :goto_19

    .line 1091
    :cond_44
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->SUBTRACT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1092
    .line 1093
    goto :goto_19

    .line 1094
    :cond_45
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->ADD:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1095
    .line 1096
    goto :goto_19

    .line 1097
    :cond_46
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 1098
    .line 1099
    goto :goto_19

    .line 1100
    :cond_47
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v7

    .line 1104
    goto :goto_19

    .line 1105
    :cond_48
    new-instance v3, Lcom/airbnb/lottie/model/content/MergePaths;

    .line 1106
    .line 1107
    invoke-direct {v3, v7, v2, v14}, Lcom/airbnb/lottie/model/content/MergePaths;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Z)V

    .line 1108
    .line 1109
    .line 1110
    const-string v2, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 1111
    .line 1112
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    move-object v7, v3

    .line 1116
    goto/16 :goto_2a

    .line 1117
    .line 1118
    :pswitch_1f
    sget-object v3, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1119
    .line 1120
    new-instance v3, Ljava/util/ArrayList;

    .line 1121
    .line 1122
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    .line 1124
    .line 1125
    move/from16 v32, v14

    .line 1126
    .line 1127
    move-object/from16 v4, v16

    .line 1128
    .line 1129
    move-object/from16 v20, v4

    .line 1130
    .line 1131
    move-object/from16 v21, v20

    .line 1132
    .line 1133
    move-object/from16 v22, v21

    .line 1134
    .line 1135
    move-object/from16 v24, v22

    .line 1136
    .line 1137
    move-object/from16 v25, v24

    .line 1138
    .line 1139
    move-object/from16 v26, v25

    .line 1140
    .line 1141
    move-object/from16 v27, v26

    .line 1142
    .line 1143
    move-object/from16 v28, v27

    .line 1144
    .line 1145
    move-object/from16 v31, v28

    .line 1146
    .line 1147
    move/from16 v29, v18

    .line 1148
    .line 1149
    :cond_49
    :goto_1a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1150
    .line 1151
    .line 1152
    move-result v5

    .line 1153
    if-eqz v5, :cond_55

    .line 1154
    .line 1155
    sget-object v5, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1156
    .line 1157
    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 1158
    .line 1159
    .line 1160
    move-result v5

    .line 1161
    packed-switch v5, :pswitch_data_4

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1168
    .line 1169
    .line 1170
    goto :goto_1a

    .line 1171
    :pswitch_20
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 1172
    .line 1173
    .line 1174
    :cond_4a
    :goto_1b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1175
    .line 1176
    .line 1177
    move-result v5

    .line 1178
    if-eqz v5, :cond_50

    .line 1179
    .line 1180
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 1181
    .line 1182
    .line 1183
    move-object/from16 v5, v16

    .line 1184
    .line 1185
    move-object v8, v5

    .line 1186
    :goto_1c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1187
    .line 1188
    .line 1189
    move-result v9

    .line 1190
    if-eqz v9, :cond_4d

    .line 1191
    .line 1192
    sget-object v9, Lcom/airbnb/lottie/parser/GradientStrokeParser;->DASH_PATTERN_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1193
    .line 1194
    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 1195
    .line 1196
    .line 1197
    move-result v9

    .line 1198
    if-eqz v9, :cond_4c

    .line 1199
    .line 1200
    if-eq v9, v6, :cond_4b

    .line 1201
    .line 1202
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1206
    .line 1207
    .line 1208
    goto :goto_1c

    .line 1209
    :cond_4b
    invoke-static {v0, v1, v6}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v8

    .line 1213
    goto :goto_1c

    .line 1214
    :cond_4c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v5

    .line 1218
    goto :goto_1c

    .line 1219
    :cond_4d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v9

    .line 1226
    if-eqz v9, :cond_4e

    .line 1227
    .line 1228
    move-object/from16 v31, v8

    .line 1229
    .line 1230
    goto :goto_1b

    .line 1231
    :cond_4e
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1232
    .line 1233
    .line 1234
    move-result v9

    .line 1235
    if-nez v9, :cond_4f

    .line 1236
    .line 1237
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1238
    .line 1239
    .line 1240
    move-result v5

    .line 1241
    if-eqz v5, :cond_4a

    .line 1242
    .line 1243
    :cond_4f
    iput-boolean v6, v1, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    .line 1244
    .line 1245
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    goto :goto_1b

    .line 1249
    :cond_50
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1253
    .line 1254
    .line 1255
    move-result v5

    .line 1256
    if-ne v5, v6, :cond_49

    .line 1257
    .line 1258
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v5

    .line 1262
    check-cast v5, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1263
    .line 1264
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    .line 1266
    .line 1267
    goto :goto_1a

    .line 1268
    :pswitch_21
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1269
    .line 1270
    .line 1271
    move-result v32

    .line 1272
    goto :goto_1a

    .line 1273
    :pswitch_22
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 1274
    .line 1275
    .line 1276
    move-result-wide v8

    .line 1277
    double-to-float v5, v8

    .line 1278
    move/from16 v29, v5

    .line 1279
    .line 1280
    goto/16 :goto_1a

    .line 1281
    .line 1282
    :pswitch_23
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v5

    .line 1286
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1287
    .line 1288
    .line 1289
    move-result v8

    .line 1290
    sub-int/2addr v8, v6

    .line 1291
    aget-object v28, v5, v8

    .line 1292
    .line 1293
    goto/16 :goto_1a

    .line 1294
    .line 1295
    :pswitch_24
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v5

    .line 1299
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1300
    .line 1301
    .line 1302
    move-result v8

    .line 1303
    sub-int/2addr v8, v6

    .line 1304
    aget-object v27, v5, v8

    .line 1305
    .line 1306
    goto/16 :goto_1a

    .line 1307
    .line 1308
    :pswitch_25
    invoke-static {v0, v1, v6}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v26

    .line 1312
    goto/16 :goto_1a

    .line 1313
    .line 1314
    :pswitch_26
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v25

    .line 1318
    goto/16 :goto_1a

    .line 1319
    .line 1320
    :pswitch_27
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v24

    .line 1324
    goto/16 :goto_1a

    .line 1325
    .line 1326
    :pswitch_28
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1327
    .line 1328
    .line 1329
    move-result v5

    .line 1330
    if-ne v5, v6, :cond_51

    .line 1331
    .line 1332
    sget-object v5, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    .line 1333
    .line 1334
    :goto_1d
    move-object/from16 v21, v5

    .line 1335
    .line 1336
    goto/16 :goto_1a

    .line 1337
    .line 1338
    :cond_51
    sget-object v5, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    .line 1339
    .line 1340
    goto :goto_1d

    .line 1341
    :pswitch_29
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v4

    .line 1345
    goto/16 :goto_1a

    .line 1346
    .line 1347
    :pswitch_2a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 1348
    .line 1349
    .line 1350
    const/4 v5, -0x1

    .line 1351
    :goto_1e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1352
    .line 1353
    .line 1354
    move-result v8

    .line 1355
    if-eqz v8, :cond_54

    .line 1356
    .line 1357
    sget-object v8, Lcom/airbnb/lottie/parser/GradientStrokeParser;->GRADIENT_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1358
    .line 1359
    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 1360
    .line 1361
    .line 1362
    move-result v8

    .line 1363
    if-eqz v8, :cond_53

    .line 1364
    .line 1365
    if-eq v8, v6, :cond_52

    .line 1366
    .line 1367
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1371
    .line 1372
    .line 1373
    goto :goto_1e

    .line 1374
    :cond_52
    invoke-static {v0, v1, v5}, Lkotlin/text/UStringsKt;->parseGradientColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v22

    .line 1378
    goto :goto_1e

    .line 1379
    :cond_53
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1380
    .line 1381
    .line 1382
    move-result v5

    .line 1383
    goto :goto_1e

    .line 1384
    :cond_54
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1385
    .line 1386
    .line 1387
    goto/16 :goto_1a

    .line 1388
    .line 1389
    :pswitch_2b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v20

    .line 1393
    goto/16 :goto_1a

    .line 1394
    .line 1395
    :cond_55
    if-nez v4, :cond_56

    .line 1396
    .line 1397
    new-instance v4, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1398
    .line 1399
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 1400
    .line 1401
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 1402
    .line 1403
    .line 1404
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v1

    .line 1408
    invoke-direct {v4, v1, v13}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;I)V

    .line 1409
    .line 1410
    .line 1411
    :cond_56
    move-object/from16 v23, v4

    .line 1412
    .line 1413
    new-instance v19, Lcom/airbnb/lottie/model/content/GradientStroke;

    .line 1414
    .line 1415
    move-object/from16 v30, v3

    .line 1416
    .line 1417
    invoke-direct/range {v19 .. v32}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/ArrayList;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 1418
    .line 1419
    .line 1420
    goto/16 :goto_10

    .line 1421
    .line 1422
    :pswitch_2c
    sget-object v2, Lcom/airbnb/lottie/parser/ShapeGroupParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1423
    .line 1424
    new-instance v2, Ljava/util/ArrayList;

    .line 1425
    .line 1426
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    .line 1428
    .line 1429
    move-object/from16 v7, v16

    .line 1430
    .line 1431
    :goto_1f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1432
    .line 1433
    .line 1434
    move-result v3

    .line 1435
    if-eqz v3, :cond_5c

    .line 1436
    .line 1437
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeGroupParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1438
    .line 1439
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 1440
    .line 1441
    .line 1442
    move-result v3

    .line 1443
    if-eqz v3, :cond_5b

    .line 1444
    .line 1445
    if-eq v3, v6, :cond_5a

    .line 1446
    .line 1447
    const/4 v8, 0x2

    .line 1448
    if-eq v3, v8, :cond_57

    .line 1449
    .line 1450
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1451
    .line 1452
    .line 1453
    goto :goto_1f

    .line 1454
    :cond_57
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 1455
    .line 1456
    .line 1457
    :cond_58
    :goto_20
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1458
    .line 1459
    .line 1460
    move-result v3

    .line 1461
    if-eqz v3, :cond_59

    .line 1462
    .line 1463
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v3

    .line 1467
    if-eqz v3, :cond_58

    .line 1468
    .line 1469
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1470
    .line 1471
    .line 1472
    goto :goto_20

    .line 1473
    :cond_59
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1474
    .line 1475
    .line 1476
    goto :goto_1f

    .line 1477
    :cond_5a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1478
    .line 1479
    .line 1480
    move-result v14

    .line 1481
    goto :goto_1f

    .line 1482
    :cond_5b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v7

    .line 1486
    goto :goto_1f

    .line 1487
    :cond_5c
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 1488
    .line 1489
    invoke-direct {v1, v7, v2, v14}, Lcom/airbnb/lottie/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1490
    .line 1491
    .line 1492
    goto/16 :goto_14

    .line 1493
    .line 1494
    :pswitch_2d
    sget-object v3, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1495
    .line 1496
    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1497
    .line 1498
    move-object/from16 v21, v3

    .line 1499
    .line 1500
    move/from16 v26, v14

    .line 1501
    .line 1502
    move-object/from16 v7, v16

    .line 1503
    .line 1504
    move-object/from16 v19, v7

    .line 1505
    .line 1506
    move-object/from16 v20, v19

    .line 1507
    .line 1508
    move-object/from16 v22, v20

    .line 1509
    .line 1510
    move-object/from16 v24, v22

    .line 1511
    .line 1512
    move-object/from16 v25, v24

    .line 1513
    .line 1514
    :goto_21
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1515
    .line 1516
    .line 1517
    move-result v3

    .line 1518
    if-eqz v3, :cond_62

    .line 1519
    .line 1520
    sget-object v3, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1521
    .line 1522
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 1523
    .line 1524
    .line 1525
    move-result v3

    .line 1526
    packed-switch v3, :pswitch_data_5

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1533
    .line 1534
    .line 1535
    goto :goto_21

    .line 1536
    :pswitch_2e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1537
    .line 1538
    .line 1539
    move-result v26

    .line 1540
    goto :goto_21

    .line 1541
    :pswitch_2f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1542
    .line 1543
    .line 1544
    move-result v3

    .line 1545
    if-ne v3, v6, :cond_5d

    .line 1546
    .line 1547
    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1548
    .line 1549
    :goto_22
    move-object/from16 v21, v3

    .line 1550
    .line 1551
    goto :goto_21

    .line 1552
    :cond_5d
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1553
    .line 1554
    goto :goto_22

    .line 1555
    :pswitch_30
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v25

    .line 1559
    goto :goto_21

    .line 1560
    :pswitch_31
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v24

    .line 1564
    goto :goto_21

    .line 1565
    :pswitch_32
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1566
    .line 1567
    .line 1568
    move-result v3

    .line 1569
    if-ne v3, v6, :cond_5e

    .line 1570
    .line 1571
    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    .line 1572
    .line 1573
    :goto_23
    move-object/from16 v20, v3

    .line 1574
    .line 1575
    goto :goto_21

    .line 1576
    :cond_5e
    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    .line 1577
    .line 1578
    goto :goto_23

    .line 1579
    :pswitch_33
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v7

    .line 1583
    goto :goto_21

    .line 1584
    :pswitch_34
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 1585
    .line 1586
    .line 1587
    const/4 v3, -0x1

    .line 1588
    :goto_24
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1589
    .line 1590
    .line 1591
    move-result v4

    .line 1592
    if-eqz v4, :cond_61

    .line 1593
    .line 1594
    sget-object v4, Lcom/airbnb/lottie/parser/GradientFillParser;->GRADIENT_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1595
    .line 1596
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 1597
    .line 1598
    .line 1599
    move-result v4

    .line 1600
    if-eqz v4, :cond_60

    .line 1601
    .line 1602
    if-eq v4, v6, :cond_5f

    .line 1603
    .line 1604
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1605
    .line 1606
    .line 1607
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1608
    .line 1609
    .line 1610
    goto :goto_24

    .line 1611
    :cond_5f
    invoke-static {v0, v1, v3}, Lkotlin/text/UStringsKt;->parseGradientColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v22

    .line 1615
    goto :goto_24

    .line 1616
    :cond_60
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1617
    .line 1618
    .line 1619
    move-result v3

    .line 1620
    goto :goto_24

    .line 1621
    :cond_61
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1622
    .line 1623
    .line 1624
    goto :goto_21

    .line 1625
    :pswitch_35
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v19

    .line 1629
    goto :goto_21

    .line 1630
    :cond_62
    if-nez v7, :cond_63

    .line 1631
    .line 1632
    new-instance v7, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1633
    .line 1634
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 1635
    .line 1636
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 1637
    .line 1638
    .line 1639
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v1

    .line 1643
    invoke-direct {v7, v1, v13}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;I)V

    .line 1644
    .line 1645
    .line 1646
    :cond_63
    move-object/from16 v23, v7

    .line 1647
    .line 1648
    new-instance v18, Lcom/airbnb/lottie/model/content/GradientFill;

    .line 1649
    .line 1650
    invoke-direct/range {v18 .. v26}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Z)V

    .line 1651
    .line 1652
    .line 1653
    move-object/from16 v7, v18

    .line 1654
    .line 1655
    goto/16 :goto_2a

    .line 1656
    .line 1657
    :pswitch_36
    sget-object v3, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1658
    .line 1659
    move v3, v6

    .line 1660
    move/from16 v22, v14

    .line 1661
    .line 1662
    move/from16 v26, v22

    .line 1663
    .line 1664
    move-object/from16 v7, v16

    .line 1665
    .line 1666
    move-object/from16 v21, v7

    .line 1667
    .line 1668
    move-object/from16 v24, v21

    .line 1669
    .line 1670
    :goto_25
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1671
    .line 1672
    .line 1673
    move-result v4

    .line 1674
    if-eqz v4, :cond_6a

    .line 1675
    .line 1676
    sget-object v4, Lcom/airbnb/lottie/parser/ShapeFillParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1677
    .line 1678
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 1679
    .line 1680
    .line 1681
    move-result v4

    .line 1682
    if-eqz v4, :cond_69

    .line 1683
    .line 1684
    if-eq v4, v6, :cond_68

    .line 1685
    .line 1686
    const/4 v8, 0x2

    .line 1687
    if-eq v4, v8, :cond_67

    .line 1688
    .line 1689
    if-eq v4, v13, :cond_66

    .line 1690
    .line 1691
    if-eq v4, v12, :cond_65

    .line 1692
    .line 1693
    if-eq v4, v11, :cond_64

    .line 1694
    .line 1695
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1696
    .line 1697
    .line 1698
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1699
    .line 1700
    .line 1701
    goto :goto_25

    .line 1702
    :cond_64
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1703
    .line 1704
    .line 1705
    move-result v26

    .line 1706
    goto :goto_25

    .line 1707
    :cond_65
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1708
    .line 1709
    .line 1710
    move-result v3

    .line 1711
    goto :goto_25

    .line 1712
    :cond_66
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1713
    .line 1714
    .line 1715
    move-result v22

    .line 1716
    goto :goto_25

    .line 1717
    :cond_67
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v7

    .line 1721
    goto :goto_25

    .line 1722
    :cond_68
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v24

    .line 1726
    goto :goto_25

    .line 1727
    :cond_69
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v21

    .line 1731
    goto :goto_25

    .line 1732
    :cond_6a
    if-nez v7, :cond_6b

    .line 1733
    .line 1734
    new-instance v7, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1735
    .line 1736
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 1737
    .line 1738
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 1739
    .line 1740
    .line 1741
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v1

    .line 1745
    invoke-direct {v7, v1, v13}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;I)V

    .line 1746
    .line 1747
    .line 1748
    :cond_6b
    move-object/from16 v25, v7

    .line 1749
    .line 1750
    if-ne v3, v6, :cond_6c

    .line 1751
    .line 1752
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1753
    .line 1754
    :goto_26
    move-object/from16 v23, v1

    .line 1755
    .line 1756
    goto :goto_27

    .line 1757
    :cond_6c
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1758
    .line 1759
    goto :goto_26

    .line 1760
    :goto_27
    new-instance v20, Lcom/airbnb/lottie/model/content/ShapeFill;

    .line 1761
    .line 1762
    invoke-direct/range {v20 .. v26}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Z)V

    .line 1763
    .line 1764
    .line 1765
    goto/16 :goto_16

    .line 1766
    .line 1767
    :pswitch_37
    sget-object v2, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1768
    .line 1769
    if-ne v4, v13, :cond_6d

    .line 1770
    .line 1771
    move v2, v6

    .line 1772
    goto :goto_28

    .line 1773
    :cond_6d
    move v2, v14

    .line 1774
    :goto_28
    move/from16 v24, v2

    .line 1775
    .line 1776
    move/from16 v25, v14

    .line 1777
    .line 1778
    move-object/from16 v21, v16

    .line 1779
    .line 1780
    move-object/from16 v22, v21

    .line 1781
    .line 1782
    move-object/from16 v23, v22

    .line 1783
    .line 1784
    :goto_29
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1785
    .line 1786
    .line 1787
    move-result v2

    .line 1788
    if-eqz v2, :cond_74

    .line 1789
    .line 1790
    sget-object v2, Lcom/airbnb/lottie/parser/CircleShapeParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 1791
    .line 1792
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 1793
    .line 1794
    .line 1795
    move-result v2

    .line 1796
    if-eqz v2, :cond_73

    .line 1797
    .line 1798
    if-eq v2, v6, :cond_72

    .line 1799
    .line 1800
    const/4 v8, 0x2

    .line 1801
    if-eq v2, v8, :cond_71

    .line 1802
    .line 1803
    if-eq v2, v13, :cond_70

    .line 1804
    .line 1805
    if-eq v2, v12, :cond_6e

    .line 1806
    .line 1807
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 1808
    .line 1809
    .line 1810
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1811
    .line 1812
    .line 1813
    goto :goto_29

    .line 1814
    :cond_6e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1815
    .line 1816
    .line 1817
    move-result v2

    .line 1818
    if-ne v2, v13, :cond_6f

    .line 1819
    .line 1820
    move/from16 v24, v6

    .line 1821
    .line 1822
    goto :goto_29

    .line 1823
    :cond_6f
    move/from16 v24, v14

    .line 1824
    .line 1825
    goto :goto_29

    .line 1826
    :cond_70
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1827
    .line 1828
    .line 1829
    move-result v25

    .line 1830
    goto :goto_29

    .line 1831
    :cond_71
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v23

    .line 1835
    goto :goto_29

    .line 1836
    :cond_72
    const/4 v8, 0x2

    .line 1837
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 1838
    .line 1839
    .line 1840
    move-result-object v22

    .line 1841
    goto :goto_29

    .line 1842
    :cond_73
    const/4 v8, 0x2

    .line 1843
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v21

    .line 1847
    goto :goto_29

    .line 1848
    :cond_74
    new-instance v20, Lcom/airbnb/lottie/model/content/CircleShape;

    .line 1849
    .line 1850
    invoke-direct/range {v20 .. v25}, Lcom/airbnb/lottie/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;ZZ)V

    .line 1851
    .line 1852
    .line 1853
    goto/16 :goto_16

    .line 1854
    .line 1855
    :goto_2a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1856
    .line 1857
    .line 1858
    move-result v1

    .line 1859
    if-eqz v1, :cond_75

    .line 1860
    .line 1861
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1862
    .line 1863
    .line 1864
    goto :goto_2a

    .line 1865
    :cond_75
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1866
    .line 1867
    .line 1868
    return-object v7

    .line 1869
    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_d
        0xcc6 -> :sswitch_c
        0xcdf -> :sswitch_b
        0xceb -> :sswitch_a
        0xcec -> :sswitch_9
        0xda0 -> :sswitch_8
        0xe31 -> :sswitch_7
        0xe32 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_2d
        :pswitch_2c
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_10
        0x67 -> :sswitch_f
        0x6f -> :sswitch_e
    .end sparse-switch

    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    :pswitch_data_3
    .packed-switch 0x0
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
    .end packed-switch

    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch
.end method
