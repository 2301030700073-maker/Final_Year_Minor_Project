.class public abstract Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final EFFECTS_NAMES:Lcoil3/svg/internal/AndroidSvg;

.field public static final NAMES:Lcoil3/svg/internal/AndroidSvg;

.field public static final TEXT_NAMES:Lcoil3/svg/internal/AndroidSvg;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    const-string v24, "ao"

    .line 2
    .line 3
    const-string v25, "bm"

    .line 4
    .line 5
    const-string v1, "nm"

    .line 6
    .line 7
    const-string v2, "ind"

    .line 8
    .line 9
    const-string v3, "refId"

    .line 10
    .line 11
    const-string/jumbo v4, "ty"

    .line 12
    .line 13
    .line 14
    const-string v5, "parent"

    .line 15
    .line 16
    const-string v6, "sw"

    .line 17
    .line 18
    const-string v7, "sh"

    .line 19
    .line 20
    const-string v8, "sc"

    .line 21
    .line 22
    const-string v9, "ks"

    .line 23
    .line 24
    const-string/jumbo v10, "tt"

    .line 25
    .line 26
    .line 27
    const-string v11, "masksProperties"

    .line 28
    .line 29
    const-string v12, "shapes"

    .line 30
    .line 31
    const-string v13, "t"

    .line 32
    .line 33
    const-string v14, "ef"

    .line 34
    .line 35
    const-string v15, "sr"

    .line 36
    .line 37
    const-string v16, "st"

    .line 38
    .line 39
    const-string/jumbo v17, "w"

    .line 40
    .line 41
    .line 42
    const-string v18, "h"

    .line 43
    .line 44
    const-string v19, "ip"

    .line 45
    .line 46
    const-string v20, "op"

    .line 47
    .line 48
    const-string v21, "tm"

    .line 49
    .line 50
    const-string v22, "cl"

    .line 51
    .line 52
    const-string v23, "hd"

    .line 53
    .line 54
    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcoil3/svg/internal/AndroidSvg;->of([Ljava/lang/String;)Lcoil3/svg/internal/AndroidSvg;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 63
    .line 64
    const-string v0, "d"

    .line 65
    .line 66
    const-string v1, "a"

    .line 67
    .line 68
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lcoil3/svg/internal/AndroidSvg;->of([Ljava/lang/String;)Lcoil3/svg/internal/AndroidSvg;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 77
    .line 78
    const-string/jumbo v0, "ty"

    .line 79
    .line 80
    .line 81
    const-string v1, "nm"

    .line 82
    .line 83
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lcoil3/svg/internal/AndroidSvg;->of([Ljava/lang/String;)Lcoil3/svg/internal/AndroidSvg;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 92
    .line 93
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 52

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object v8

    .line 16
    sget-object v4, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 17
    .line 18
    sget-object v5, Lcom/airbnb/lottie/model/content/LBlendMode;->NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 19
    .line 20
    new-instance v10, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v9, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 31
    .line 32
    .line 33
    const-string v6, "UNSET"

    .line 34
    .line 35
    const-wide/16 v12, 0x0

    .line 36
    .line 37
    const/4 v14, 0x0

    .line 38
    const-wide/16 v15, -0x1

    .line 39
    .line 40
    move-object/from16 v22, v4

    .line 41
    .line 42
    move-object/from16 v27, v5

    .line 43
    .line 44
    move/from16 v18, v7

    .line 45
    .line 46
    move/from16 v19, v18

    .line 47
    .line 48
    move/from16 v28, v19

    .line 49
    .line 50
    move/from16 v29, v28

    .line 51
    .line 52
    move/from16 v30, v29

    .line 53
    .line 54
    move/from16 v37, v30

    .line 55
    .line 56
    move v4, v14

    .line 57
    move/from16 v24, v4

    .line 58
    .line 59
    move/from16 v25, v24

    .line 60
    .line 61
    move/from16 v26, v25

    .line 62
    .line 63
    move/from16 v31, v26

    .line 64
    .line 65
    const/16 v20, 0x0

    .line 66
    .line 67
    const/16 v21, 0x0

    .line 68
    .line 69
    const/16 v23, 0x0

    .line 70
    .line 71
    const/16 v32, 0x0

    .line 72
    .line 73
    const/16 v33, 0x0

    .line 74
    .line 75
    const/16 v34, 0x0

    .line 76
    .line 77
    const/16 v35, 0x0

    .line 78
    .line 79
    const/16 v36, 0x0

    .line 80
    .line 81
    move-wide/from16 v50, v15

    .line 82
    .line 83
    move v15, v3

    .line 84
    move-wide/from16 v16, v12

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    move-object v12, v6

    .line 88
    move-object v13, v8

    .line 89
    move-wide/from16 v7, v50

    .line 90
    .line 91
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_45

    .line 96
    .line 97
    sget-object v5, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 98
    .line 99
    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    const/16 v38, -0x1

    .line 104
    .line 105
    const/4 v11, 0x1

    .line 106
    packed-switch v5, :pswitch_data_0

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 113
    .line 114
    .line 115
    move-object/from16 v49, v2

    .line 116
    .line 117
    move-object/from16 v39, v3

    .line 118
    .line 119
    move v3, v14

    .line 120
    move/from16 v41, v15

    .line 121
    .line 122
    goto/16 :goto_25

    .line 123
    .line 124
    :pswitch_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    invoke-static {}, Lcom/airbnb/lottie/model/content/LBlendMode;->values()[Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    array-length v6, v6

    .line 133
    if-lt v5, v6, :cond_0

    .line 134
    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v11, "Unsupported Blend Mode: "

    .line 138
    .line 139
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    sget-object v27, Lcom/airbnb/lottie/model/content/LBlendMode;->NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/content/LBlendMode;->values()[Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    aget-object v27, v6, v5

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :pswitch_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-ne v4, v11, :cond_1

    .line 167
    .line 168
    move v4, v11

    .line 169
    goto :goto_0

    .line 170
    :cond_1
    move v4, v14

    .line 171
    goto :goto_0

    .line 172
    :pswitch_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 173
    .line 174
    .line 175
    move-result v31

    .line 176
    goto :goto_0

    .line 177
    :pswitch_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    goto :goto_0

    .line 182
    :pswitch_4
    invoke-static {v0, v1, v14}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 183
    .line 184
    .line 185
    move-result-object v36

    .line 186
    goto :goto_0

    .line 187
    :pswitch_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 188
    .line 189
    .line 190
    move-result-wide v5

    .line 191
    double-to-float v5, v5

    .line 192
    move/from16 v19, v5

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :pswitch_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 196
    .line 197
    .line 198
    move-result-wide v5

    .line 199
    double-to-float v5, v5

    .line 200
    move/from16 v18, v5

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :pswitch_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 204
    .line 205
    .line 206
    move-result-wide v5

    .line 207
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    move/from16 v41, v15

    .line 212
    .line 213
    float-to-double v14, v11

    .line 214
    mul-double/2addr v5, v14

    .line 215
    double-to-float v5, v5

    .line 216
    move/from16 v29, v5

    .line 217
    .line 218
    :goto_1
    move/from16 v15, v41

    .line 219
    .line 220
    :goto_2
    const/4 v14, 0x0

    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :pswitch_8
    move/from16 v41, v15

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 226
    .line 227
    .line 228
    move-result-wide v5

    .line 229
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    float-to-double v14, v11

    .line 234
    mul-double/2addr v5, v14

    .line 235
    double-to-float v5, v5

    .line 236
    move/from16 v28, v5

    .line 237
    .line 238
    goto :goto_1

    .line 239
    :pswitch_9
    move/from16 v41, v15

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 242
    .line 243
    .line 244
    move-result-wide v5

    .line 245
    double-to-float v5, v5

    .line 246
    move/from16 v30, v5

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :pswitch_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 250
    .line 251
    .line 252
    move-result-wide v5

    .line 253
    double-to-float v15, v5

    .line 254
    goto :goto_2

    .line 255
    :pswitch_b
    move/from16 v41, v15

    .line 256
    .line 257
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 258
    .line 259
    .line 260
    new-instance v5, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .line 264
    .line 265
    :goto_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v14

    .line 269
    if-eqz v14, :cond_1d

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 272
    .line 273
    .line 274
    :cond_2
    :goto_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result v14

    .line 278
    if-eqz v14, :cond_1c

    .line 279
    .line 280
    sget-object v14, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 281
    .line 282
    invoke-virtual {v0, v14}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 283
    .line 284
    .line 285
    move-result v14

    .line 286
    if-eqz v14, :cond_5

    .line 287
    .line 288
    if-eq v14, v11, :cond_4

    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 294
    .line 295
    .line 296
    :cond_3
    :goto_5
    move-object/from16 v49, v2

    .line 297
    .line 298
    goto/16 :goto_f

    .line 299
    .line 300
    :cond_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v14

    .line 304
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 309
    .line 310
    .line 311
    move-result v14

    .line 312
    const/16 v15, 0x1d

    .line 313
    .line 314
    if-ne v14, v15, :cond_e

    .line 315
    .line 316
    sget-object v14, Lcom/airbnb/lottie/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 317
    .line 318
    const/16 v32, 0x0

    .line 319
    .line 320
    :goto_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 321
    .line 322
    .line 323
    move-result v14

    .line 324
    if-eqz v14, :cond_2

    .line 325
    .line 326
    sget-object v14, Lcom/airbnb/lottie/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 327
    .line 328
    invoke-virtual {v0, v14}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 329
    .line 330
    .line 331
    move-result v14

    .line 332
    if-eqz v14, :cond_6

    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 338
    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 342
    .line 343
    .line 344
    :goto_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 345
    .line 346
    .line 347
    move-result v14

    .line 348
    if-eqz v14, :cond_d

    .line 349
    .line 350
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 351
    .line 352
    .line 353
    const/4 v14, 0x0

    .line 354
    const/4 v15, 0x0

    .line 355
    :goto_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v42

    .line 359
    if-eqz v42, :cond_b

    .line 360
    .line 361
    sget-object v6, Lcom/airbnb/lottie/parser/BlurEffectParser;->INNER_BLUR_EFFECT_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 362
    .line 363
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    if-eqz v6, :cond_9

    .line 368
    .line 369
    if-eq v6, v11, :cond_7

    .line 370
    .line 371
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 375
    .line 376
    .line 377
    goto :goto_9

    .line 378
    :cond_7
    if-eqz v14, :cond_8

    .line 379
    .line 380
    new-instance v15, Lcoil3/memory/MemoryCacheService;

    .line 381
    .line 382
    invoke-static {v0, v1, v11}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    const/16 v11, 0xe

    .line 387
    .line 388
    invoke-direct {v15, v11, v6}, Lcoil3/memory/MemoryCacheService;-><init>(ILjava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    :goto_9
    const/4 v11, 0x1

    .line 392
    goto :goto_8

    .line 393
    :cond_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 394
    .line 395
    .line 396
    goto :goto_9

    .line 397
    :cond_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    if-nez v6, :cond_a

    .line 402
    .line 403
    const/4 v14, 0x1

    .line 404
    goto :goto_9

    .line 405
    :cond_a
    const/4 v14, 0x0

    .line 406
    goto :goto_9

    .line 407
    :cond_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 408
    .line 409
    .line 410
    if-eqz v15, :cond_c

    .line 411
    .line 412
    move-object/from16 v32, v15

    .line 413
    .line 414
    :cond_c
    const/4 v11, 0x1

    .line 415
    goto :goto_7

    .line 416
    :cond_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 417
    .line 418
    .line 419
    const/4 v11, 0x1

    .line 420
    goto :goto_6

    .line 421
    :cond_e
    const/16 v6, 0x19

    .line 422
    .line 423
    if-ne v14, v6, :cond_3

    .line 424
    .line 425
    new-instance v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;

    .line 426
    .line 427
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 428
    .line 429
    .line 430
    :goto_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 431
    .line 432
    .line 433
    move-result v11

    .line 434
    if-eqz v11, :cond_19

    .line 435
    .line 436
    sget-object v11, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->DROP_SHADOW_EFFECT_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 437
    .line 438
    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 439
    .line 440
    .line 441
    move-result v11

    .line 442
    if-eqz v11, :cond_f

    .line 443
    .line 444
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 448
    .line 449
    .line 450
    goto :goto_a

    .line 451
    :cond_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 452
    .line 453
    .line 454
    :goto_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 455
    .line 456
    .line 457
    move-result v11

    .line 458
    if-eqz v11, :cond_18

    .line 459
    .line 460
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 461
    .line 462
    .line 463
    const-string v11, ""

    .line 464
    .line 465
    :goto_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 466
    .line 467
    .line 468
    move-result v14

    .line 469
    if-eqz v14, :cond_17

    .line 470
    .line 471
    sget-object v14, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->INNER_EFFECT_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 472
    .line 473
    invoke-virtual {v0, v14}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 474
    .line 475
    .line 476
    move-result v14

    .line 477
    if-eqz v14, :cond_16

    .line 478
    .line 479
    const/4 v15, 0x1

    .line 480
    if-eq v14, v15, :cond_10

    .line 481
    .line 482
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 486
    .line 487
    .line 488
    goto :goto_c

    .line 489
    :cond_10
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 493
    .line 494
    .line 495
    move-result v14

    .line 496
    sparse-switch v14, :sswitch_data_0

    .line 497
    .line 498
    .line 499
    :goto_d
    move/from16 v14, v38

    .line 500
    .line 501
    goto :goto_e

    .line 502
    :sswitch_0
    const-string v14, "Softness"

    .line 503
    .line 504
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v14

    .line 508
    if-nez v14, :cond_11

    .line 509
    .line 510
    goto :goto_d

    .line 511
    :cond_11
    const/4 v14, 0x4

    .line 512
    goto :goto_e

    .line 513
    :sswitch_1
    const-string v14, "Shadow Color"

    .line 514
    .line 515
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result v14

    .line 519
    if-nez v14, :cond_12

    .line 520
    .line 521
    goto :goto_d

    .line 522
    :cond_12
    const/4 v14, 0x3

    .line 523
    goto :goto_e

    .line 524
    :sswitch_2
    const-string v14, "Direction"

    .line 525
    .line 526
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v14

    .line 530
    if-nez v14, :cond_13

    .line 531
    .line 532
    goto :goto_d

    .line 533
    :cond_13
    const/4 v14, 0x2

    .line 534
    goto :goto_e

    .line 535
    :sswitch_3
    const-string v14, "Opacity"

    .line 536
    .line 537
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v14

    .line 541
    if-nez v14, :cond_14

    .line 542
    .line 543
    goto :goto_d

    .line 544
    :cond_14
    const/4 v14, 0x1

    .line 545
    goto :goto_e

    .line 546
    :sswitch_4
    const-string v14, "Distance"

    .line 547
    .line 548
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    move-result v14

    .line 552
    if-nez v14, :cond_15

    .line 553
    .line 554
    goto :goto_d

    .line 555
    :cond_15
    const/4 v14, 0x0

    .line 556
    :goto_e
    packed-switch v14, :pswitch_data_1

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 560
    .line 561
    .line 562
    goto :goto_c

    .line 563
    :pswitch_c
    const/4 v15, 0x1

    .line 564
    invoke-static {v0, v1, v15}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 565
    .line 566
    .line 567
    move-result-object v14

    .line 568
    iput-object v14, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 569
    .line 570
    goto :goto_c

    .line 571
    :pswitch_d
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 572
    .line 573
    .line 574
    move-result-object v14

    .line 575
    iput-object v14, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 576
    .line 577
    goto :goto_c

    .line 578
    :pswitch_e
    const/4 v14, 0x0

    .line 579
    invoke-static {v0, v1, v14}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 580
    .line 581
    .line 582
    move-result-object v15

    .line 583
    iput-object v15, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 584
    .line 585
    goto :goto_c

    .line 586
    :pswitch_f
    const/4 v14, 0x0

    .line 587
    invoke-static {v0, v1, v14}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 588
    .line 589
    .line 590
    move-result-object v15

    .line 591
    iput-object v15, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 592
    .line 593
    goto/16 :goto_c

    .line 594
    .line 595
    :pswitch_10
    const/4 v15, 0x1

    .line 596
    invoke-static {v0, v1, v15}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 597
    .line 598
    .line 599
    move-result-object v14

    .line 600
    iput-object v14, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 601
    .line 602
    goto/16 :goto_c

    .line 603
    .line 604
    :cond_16
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v11

    .line 608
    goto/16 :goto_c

    .line 609
    .line 610
    :cond_17
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 611
    .line 612
    .line 613
    goto/16 :goto_b

    .line 614
    .line 615
    :cond_18
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 616
    .line 617
    .line 618
    goto/16 :goto_a

    .line 619
    .line 620
    :cond_19
    iget-object v11, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 621
    .line 622
    if-eqz v11, :cond_1a

    .line 623
    .line 624
    iget-object v14, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 625
    .line 626
    if-eqz v14, :cond_1a

    .line 627
    .line 628
    iget-object v15, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 629
    .line 630
    if-eqz v15, :cond_1a

    .line 631
    .line 632
    move-object/from16 v49, v2

    .line 633
    .line 634
    iget-object v2, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 635
    .line 636
    if-eqz v2, :cond_1b

    .line 637
    .line 638
    iget-object v6, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 639
    .line 640
    if-eqz v6, :cond_1b

    .line 641
    .line 642
    new-instance v43, Lokhttp3/Request$Builder;

    .line 643
    .line 644
    move-object/from16 v47, v2

    .line 645
    .line 646
    move-object/from16 v48, v6

    .line 647
    .line 648
    move-object/from16 v44, v11

    .line 649
    .line 650
    move-object/from16 v45, v14

    .line 651
    .line 652
    move-object/from16 v46, v15

    .line 653
    .line 654
    invoke-direct/range {v43 .. v48}, Lokhttp3/Request$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 655
    .line 656
    .line 657
    move-object/from16 v33, v43

    .line 658
    .line 659
    goto :goto_f

    .line 660
    :cond_1a
    move-object/from16 v49, v2

    .line 661
    .line 662
    :cond_1b
    const/16 v33, 0x0

    .line 663
    .line 664
    :goto_f
    move-object/from16 v2, v49

    .line 665
    .line 666
    const/4 v11, 0x1

    .line 667
    goto/16 :goto_4

    .line 668
    .line 669
    :cond_1c
    move-object/from16 v49, v2

    .line 670
    .line 671
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 672
    .line 673
    .line 674
    const/4 v11, 0x1

    .line 675
    goto/16 :goto_3

    .line 676
    .line 677
    :cond_1d
    move-object/from16 v49, v2

    .line 678
    .line 679
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 680
    .line 681
    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    const-string v6, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    .line 685
    .line 686
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    :goto_10
    move/from16 v15, v41

    .line 700
    .line 701
    move-object/from16 v2, v49

    .line 702
    .line 703
    goto/16 :goto_2

    .line 704
    .line 705
    :pswitch_11
    move-object/from16 v49, v2

    .line 706
    .line 707
    move/from16 v41, v15

    .line 708
    .line 709
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 710
    .line 711
    .line 712
    :goto_11
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    if-eqz v2, :cond_34

    .line 717
    .line 718
    sget-object v2, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 719
    .line 720
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 721
    .line 722
    .line 723
    move-result v2

    .line 724
    if-eqz v2, :cond_33

    .line 725
    .line 726
    const/4 v15, 0x1

    .line 727
    if-eq v2, v15, :cond_1e

    .line 728
    .line 729
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 733
    .line 734
    .line 735
    goto :goto_11

    .line 736
    :cond_1e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    if-eqz v2, :cond_31

    .line 744
    .line 745
    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 746
    .line 747
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 748
    .line 749
    .line 750
    const/4 v2, 0x0

    .line 751
    const/4 v5, 0x0

    .line 752
    :goto_12
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 753
    .line 754
    .line 755
    move-result v6

    .line 756
    if-eqz v6, :cond_30

    .line 757
    .line 758
    sget-object v6, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 759
    .line 760
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 761
    .line 762
    .line 763
    move-result v6

    .line 764
    if-eqz v6, :cond_26

    .line 765
    .line 766
    const/4 v15, 0x1

    .line 767
    if-eq v6, v15, :cond_1f

    .line 768
    .line 769
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 773
    .line 774
    .line 775
    goto :goto_12

    .line 776
    :cond_1f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 777
    .line 778
    .line 779
    const/16 v44, 0x0

    .line 780
    .line 781
    const/16 v45, 0x0

    .line 782
    .line 783
    const/16 v46, 0x0

    .line 784
    .line 785
    const/16 v47, 0x0

    .line 786
    .line 787
    const/16 v48, 0x0

    .line 788
    .line 789
    :goto_13
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 790
    .line 791
    .line 792
    move-result v2

    .line 793
    if-eqz v2, :cond_25

    .line 794
    .line 795
    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_PROPERTIES_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 796
    .line 797
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 798
    .line 799
    .line 800
    move-result v2

    .line 801
    if-eqz v2, :cond_24

    .line 802
    .line 803
    if-eq v2, v15, :cond_23

    .line 804
    .line 805
    const/4 v6, 0x2

    .line 806
    if-eq v2, v6, :cond_22

    .line 807
    .line 808
    const/4 v6, 0x3

    .line 809
    if-eq v2, v6, :cond_21

    .line 810
    .line 811
    const/4 v6, 0x4

    .line 812
    if-eq v2, v6, :cond_20

    .line 813
    .line 814
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 818
    .line 819
    .line 820
    goto :goto_13

    .line 821
    :cond_20
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 822
    .line 823
    .line 824
    move-result-object v48

    .line 825
    goto :goto_13

    .line 826
    :cond_21
    const/4 v6, 0x4

    .line 827
    invoke-static {v0, v1, v15}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 828
    .line 829
    .line 830
    move-result-object v47

    .line 831
    goto :goto_13

    .line 832
    :cond_22
    const/4 v6, 0x4

    .line 833
    invoke-static {v0, v1, v15}, Lkotlin/text/UStringsKt;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 834
    .line 835
    .line 836
    move-result-object v46

    .line 837
    goto :goto_13

    .line 838
    :cond_23
    const/4 v6, 0x4

    .line 839
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 840
    .line 841
    .line 842
    move-result-object v45

    .line 843
    :goto_14
    const/4 v15, 0x1

    .line 844
    goto :goto_13

    .line 845
    :cond_24
    const/4 v6, 0x4

    .line 846
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 847
    .line 848
    .line 849
    move-result-object v44

    .line 850
    goto :goto_14

    .line 851
    :cond_25
    const/4 v6, 0x4

    .line 852
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 853
    .line 854
    .line 855
    new-instance v43, Lokhttp3/Request$Builder;

    .line 856
    .line 857
    invoke-direct/range {v43 .. v48}, Lokhttp3/Request$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 858
    .line 859
    .line 860
    move-object/from16 v2, v43

    .line 861
    .line 862
    goto :goto_12

    .line 863
    :cond_26
    const/4 v6, 0x4

    .line 864
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 865
    .line 866
    .line 867
    const/4 v5, 0x0

    .line 868
    const/16 v45, 0x0

    .line 869
    .line 870
    const/16 v46, 0x0

    .line 871
    .line 872
    const/16 v47, 0x0

    .line 873
    .line 874
    :goto_15
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 875
    .line 876
    .line 877
    move-result v11

    .line 878
    if-eqz v11, :cond_2e

    .line 879
    .line 880
    sget-object v11, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_RANGE_PROPERTIES_NAMES:Lcoil3/svg/internal/AndroidSvg;

    .line 881
    .line 882
    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcoil3/svg/internal/AndroidSvg;)I

    .line 883
    .line 884
    .line 885
    move-result v11

    .line 886
    if-eqz v11, :cond_2d

    .line 887
    .line 888
    const/4 v15, 0x1

    .line 889
    if-eq v11, v15, :cond_2c

    .line 890
    .line 891
    const/4 v14, 0x2

    .line 892
    if-eq v11, v14, :cond_2b

    .line 893
    .line 894
    const/4 v6, 0x3

    .line 895
    if-eq v11, v6, :cond_27

    .line 896
    .line 897
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 901
    .line 902
    .line 903
    :goto_16
    const/4 v6, 0x4

    .line 904
    goto :goto_15

    .line 905
    :cond_27
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 906
    .line 907
    .line 908
    move-result v6

    .line 909
    if-eq v6, v15, :cond_29

    .line 910
    .line 911
    if-eq v6, v14, :cond_28

    .line 912
    .line 913
    new-instance v11, Ljava/lang/StringBuilder;

    .line 914
    .line 915
    const-string v14, "Unsupported text range units: "

    .line 916
    .line 917
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v6

    .line 927
    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    sget-object v47, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 931
    .line 932
    goto :goto_16

    .line 933
    :cond_28
    const/4 v15, 0x1

    .line 934
    :cond_29
    if-ne v6, v15, :cond_2a

    .line 935
    .line 936
    sget-object v6, Lcom/airbnb/lottie/model/content/TextRangeUnits;->PERCENT:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 937
    .line 938
    :goto_17
    move-object/from16 v47, v6

    .line 939
    .line 940
    goto :goto_16

    .line 941
    :cond_2a
    sget-object v6, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 942
    .line 943
    goto :goto_17

    .line 944
    :cond_2b
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 945
    .line 946
    .line 947
    move-result-object v46

    .line 948
    goto :goto_16

    .line 949
    :cond_2c
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 950
    .line 951
    .line 952
    move-result-object v45

    .line 953
    goto :goto_16

    .line 954
    :cond_2d
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 955
    .line 956
    .line 957
    move-result-object v5

    .line 958
    goto :goto_16

    .line 959
    :cond_2e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 960
    .line 961
    .line 962
    if-nez v5, :cond_2f

    .line 963
    .line 964
    if-eqz v45, :cond_2f

    .line 965
    .line 966
    new-instance v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 967
    .line 968
    new-instance v6, Lcom/airbnb/lottie/value/Keyframe;

    .line 969
    .line 970
    const/16 v40, 0x0

    .line 971
    .line 972
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 973
    .line 974
    .line 975
    move-result-object v11

    .line 976
    invoke-direct {v6, v11}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 977
    .line 978
    .line 979
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 980
    .line 981
    .line 982
    move-result-object v6

    .line 983
    const/4 v15, 0x3

    .line 984
    invoke-direct {v5, v6, v15}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;I)V

    .line 985
    .line 986
    .line 987
    :goto_18
    move-object/from16 v44, v5

    .line 988
    .line 989
    goto :goto_19

    .line 990
    :cond_2f
    const/4 v15, 0x3

    .line 991
    goto :goto_18

    .line 992
    :goto_19
    new-instance v43, Lcoil3/ImageLoader$Builder;

    .line 993
    .line 994
    const/16 v48, 0x13

    .line 995
    .line 996
    invoke-direct/range {v43 .. v48}, Lcoil3/ImageLoader$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 997
    .line 998
    .line 999
    move-object/from16 v5, v43

    .line 1000
    .line 1001
    goto/16 :goto_12

    .line 1002
    .line 1003
    :cond_30
    const/4 v15, 0x3

    .line 1004
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1005
    .line 1006
    .line 1007
    new-instance v6, Lcoil3/svg/internal/AndroidSvg;

    .line 1008
    .line 1009
    invoke-direct {v6, v2, v5}, Lcoil3/svg/internal/AndroidSvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1010
    .line 1011
    .line 1012
    move-object/from16 v35, v6

    .line 1013
    .line 1014
    goto :goto_1a

    .line 1015
    :cond_31
    const/4 v15, 0x3

    .line 1016
    :goto_1a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1017
    .line 1018
    .line 1019
    move-result v2

    .line 1020
    if-eqz v2, :cond_32

    .line 1021
    .line 1022
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1023
    .line 1024
    .line 1025
    goto :goto_1a

    .line 1026
    :cond_32
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1027
    .line 1028
    .line 1029
    goto/16 :goto_11

    .line 1030
    .line 1031
    :cond_33
    const/4 v15, 0x3

    .line 1032
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1033
    .line 1034
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1035
    .line 1036
    .line 1037
    move-result v5

    .line 1038
    sget-object v6, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    .line 1039
    .line 1040
    const/4 v14, 0x0

    .line 1041
    invoke-static {v0, v1, v5, v6, v14}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v5

    .line 1045
    invoke-direct {v2, v5, v14}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;I)V

    .line 1046
    .line 1047
    .line 1048
    move-object/from16 v34, v2

    .line 1049
    .line 1050
    goto/16 :goto_11

    .line 1051
    .line 1052
    :cond_34
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1053
    .line 1054
    .line 1055
    goto/16 :goto_10

    .line 1056
    .line 1057
    :pswitch_12
    move-object/from16 v49, v2

    .line 1058
    .line 1059
    move/from16 v41, v15

    .line 1060
    .line 1061
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 1062
    .line 1063
    .line 1064
    :cond_35
    :goto_1b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1065
    .line 1066
    .line 1067
    move-result v2

    .line 1068
    if-eqz v2, :cond_36

    .line 1069
    .line 1070
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v2

    .line 1074
    if-eqz v2, :cond_35

    .line 1075
    .line 1076
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    .line 1078
    .line 1079
    goto :goto_1b

    .line 1080
    :cond_36
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1081
    .line 1082
    .line 1083
    move-object/from16 v39, v3

    .line 1084
    .line 1085
    const/4 v3, 0x0

    .line 1086
    goto/16 :goto_25

    .line 1087
    .line 1088
    :pswitch_13
    move-object/from16 v49, v2

    .line 1089
    .line 1090
    move/from16 v41, v15

    .line 1091
    .line 1092
    const/4 v15, 0x3

    .line 1093
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 1094
    .line 1095
    .line 1096
    :goto_1c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1097
    .line 1098
    .line 1099
    move-result v2

    .line 1100
    if-eqz v2, :cond_40

    .line 1101
    .line 1102
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 1103
    .line 1104
    .line 1105
    const/4 v2, 0x0

    .line 1106
    const/4 v5, 0x0

    .line 1107
    const/4 v6, 0x0

    .line 1108
    const/4 v14, 0x0

    .line 1109
    :goto_1d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 1110
    .line 1111
    .line 1112
    move-result v11

    .line 1113
    if-eqz v11, :cond_3f

    .line 1114
    .line 1115
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v11

    .line 1119
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 1123
    .line 1124
    .line 1125
    move-result v39

    .line 1126
    sparse-switch v39, :sswitch_data_1

    .line 1127
    .line 1128
    .line 1129
    :goto_1e
    move/from16 v15, v38

    .line 1130
    .line 1131
    goto :goto_1f

    .line 1132
    :sswitch_5
    const-string v15, "mode"

    .line 1133
    .line 1134
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1135
    .line 1136
    .line 1137
    move-result v15

    .line 1138
    if-nez v15, :cond_37

    .line 1139
    .line 1140
    goto :goto_1e

    .line 1141
    :cond_37
    const/4 v15, 0x3

    .line 1142
    goto :goto_1f

    .line 1143
    :sswitch_6
    const-string v15, "inv"

    .line 1144
    .line 1145
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1146
    .line 1147
    .line 1148
    move-result v15

    .line 1149
    if-nez v15, :cond_38

    .line 1150
    .line 1151
    goto :goto_1e

    .line 1152
    :cond_38
    const/4 v15, 0x2

    .line 1153
    goto :goto_1f

    .line 1154
    :sswitch_7
    const-string v15, "pt"

    .line 1155
    .line 1156
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1157
    .line 1158
    .line 1159
    move-result v15

    .line 1160
    if-nez v15, :cond_39

    .line 1161
    .line 1162
    goto :goto_1e

    .line 1163
    :cond_39
    const/4 v15, 0x1

    .line 1164
    goto :goto_1f

    .line 1165
    :sswitch_8
    const-string v15, "o"

    .line 1166
    .line 1167
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v15

    .line 1171
    if-nez v15, :cond_3a

    .line 1172
    .line 1173
    goto :goto_1e

    .line 1174
    :cond_3a
    const/4 v15, 0x0

    .line 1175
    :goto_1f
    packed-switch v15, :pswitch_data_2

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 1179
    .line 1180
    .line 1181
    :goto_20
    move-object/from16 v39, v3

    .line 1182
    .line 1183
    :goto_21
    const/4 v3, 0x0

    .line 1184
    goto/16 :goto_24

    .line 1185
    .line 1186
    :pswitch_14
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v2

    .line 1190
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 1194
    .line 1195
    .line 1196
    move-result v15

    .line 1197
    sparse-switch v15, :sswitch_data_2

    .line 1198
    .line 1199
    .line 1200
    :goto_22
    move/from16 v15, v38

    .line 1201
    .line 1202
    goto :goto_23

    .line 1203
    :sswitch_9
    const-string v15, "s"

    .line 1204
    .line 1205
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v2

    .line 1209
    if-nez v2, :cond_3b

    .line 1210
    .line 1211
    goto :goto_22

    .line 1212
    :cond_3b
    const/4 v15, 0x3

    .line 1213
    goto :goto_23

    .line 1214
    :sswitch_a
    const-string v15, "n"

    .line 1215
    .line 1216
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1217
    .line 1218
    .line 1219
    move-result v2

    .line 1220
    if-nez v2, :cond_3c

    .line 1221
    .line 1222
    goto :goto_22

    .line 1223
    :cond_3c
    const/4 v15, 0x2

    .line 1224
    goto :goto_23

    .line 1225
    :sswitch_b
    const-string v15, "i"

    .line 1226
    .line 1227
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v2

    .line 1231
    if-nez v2, :cond_3d

    .line 1232
    .line 1233
    goto :goto_22

    .line 1234
    :cond_3d
    const/4 v15, 0x1

    .line 1235
    goto :goto_23

    .line 1236
    :sswitch_c
    const-string v15, "a"

    .line 1237
    .line 1238
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1239
    .line 1240
    .line 1241
    move-result v2

    .line 1242
    if-nez v2, :cond_3e

    .line 1243
    .line 1244
    goto :goto_22

    .line 1245
    :cond_3e
    const/4 v15, 0x0

    .line 1246
    :goto_23
    packed-switch v15, :pswitch_data_3

    .line 1247
    .line 1248
    .line 1249
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1250
    .line 1251
    const-string v15, "Unknown mask mode "

    .line 1252
    .line 1253
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    .line 1258
    .line 1259
    const-string v11, ". Defaulting to Add."

    .line 1260
    .line 1261
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v2

    .line 1268
    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1272
    .line 1273
    goto :goto_20

    .line 1274
    :pswitch_15
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1275
    .line 1276
    goto :goto_20

    .line 1277
    :pswitch_16
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1278
    .line 1279
    goto :goto_20

    .line 1280
    :pswitch_17
    const-string v2, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 1281
    .line 1282
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1286
    .line 1287
    goto :goto_20

    .line 1288
    :pswitch_18
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1289
    .line 1290
    goto :goto_20

    .line 1291
    :pswitch_19
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1292
    .line 1293
    .line 1294
    move-result v11

    .line 1295
    move-object/from16 v39, v3

    .line 1296
    .line 1297
    move v14, v11

    .line 1298
    goto :goto_21

    .line 1299
    :pswitch_1a
    new-instance v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1300
    .line 1301
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1302
    .line 1303
    .line 1304
    move-result v11

    .line 1305
    sget-object v15, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    .line 1306
    .line 1307
    move-object/from16 v39, v3

    .line 1308
    .line 1309
    const/4 v3, 0x0

    .line 1310
    invoke-static {v0, v1, v11, v15, v3}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v11

    .line 1314
    const/4 v15, 0x6

    .line 1315
    invoke-direct {v5, v11, v15}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;I)V

    .line 1316
    .line 1317
    .line 1318
    goto :goto_24

    .line 1319
    :pswitch_1b
    move-object/from16 v39, v3

    .line 1320
    .line 1321
    const/4 v3, 0x0

    .line 1322
    invoke-static/range {p0 .. p1}, Lkotlin/text/UStringsKt;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v6

    .line 1326
    :goto_24
    move-object/from16 v3, v39

    .line 1327
    .line 1328
    const/4 v15, 0x3

    .line 1329
    goto/16 :goto_1d

    .line 1330
    .line 1331
    :cond_3f
    move-object/from16 v39, v3

    .line 1332
    .line 1333
    const/4 v3, 0x0

    .line 1334
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1335
    .line 1336
    .line 1337
    new-instance v11, Lcom/airbnb/lottie/model/content/Mask;

    .line 1338
    .line 1339
    invoke-direct {v11, v2, v5, v6, v14}, Lcom/airbnb/lottie/model/content/Mask;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Z)V

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    .line 1344
    .line 1345
    move-object/from16 v3, v39

    .line 1346
    .line 1347
    const/4 v15, 0x3

    .line 1348
    goto/16 :goto_1c

    .line 1349
    .line 1350
    :cond_40
    move-object/from16 v39, v3

    .line 1351
    .line 1352
    const/4 v3, 0x0

    .line 1353
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1354
    .line 1355
    .line 1356
    move-result v2

    .line 1357
    iget v5, v1, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1358
    .line 1359
    add-int/2addr v5, v2

    .line 1360
    iput v5, v1, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1361
    .line 1362
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1363
    .line 1364
    .line 1365
    goto :goto_25

    .line 1366
    :pswitch_1c
    move-object/from16 v49, v2

    .line 1367
    .line 1368
    move-object/from16 v39, v3

    .line 1369
    .line 1370
    move v3, v14

    .line 1371
    move/from16 v41, v15

    .line 1372
    .line 1373
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1374
    .line 1375
    .line 1376
    move-result v2

    .line 1377
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v5

    .line 1381
    array-length v5, v5

    .line 1382
    if-lt v2, v5, :cond_42

    .line 1383
    .line 1384
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    const-string v6, "Unsupported matte type: "

    .line 1387
    .line 1388
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v2

    .line 1398
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1399
    .line 1400
    .line 1401
    :cond_41
    :goto_25
    move v14, v3

    .line 1402
    move-object/from16 v3, v39

    .line 1403
    .line 1404
    move/from16 v15, v41

    .line 1405
    .line 1406
    :goto_26
    move-object/from16 v2, v49

    .line 1407
    .line 1408
    goto/16 :goto_0

    .line 1409
    .line 1410
    :cond_42
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v5

    .line 1414
    aget-object v22, v5, v2

    .line 1415
    .line 1416
    sget-object v2, Lcom/airbnb/lottie/parser/LayerParser$1;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType:[I

    .line 1417
    .line 1418
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    .line 1419
    .line 1420
    .line 1421
    move-result v5

    .line 1422
    aget v2, v2, v5

    .line 1423
    .line 1424
    const/4 v15, 0x1

    .line 1425
    if-eq v2, v15, :cond_44

    .line 1426
    .line 1427
    const/4 v14, 0x2

    .line 1428
    if-eq v2, v14, :cond_43

    .line 1429
    .line 1430
    goto :goto_27

    .line 1431
    :cond_43
    const-string v2, "Unsupported matte type: Luma Inverted"

    .line 1432
    .line 1433
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1434
    .line 1435
    .line 1436
    goto :goto_27

    .line 1437
    :cond_44
    const-string v2, "Unsupported matte type: Luma"

    .line 1438
    .line 1439
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1440
    .line 1441
    .line 1442
    :goto_27
    iget v2, v1, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1443
    .line 1444
    add-int/2addr v2, v15

    .line 1445
    iput v2, v1, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1446
    .line 1447
    goto :goto_25

    .line 1448
    :pswitch_1d
    move-object/from16 v49, v2

    .line 1449
    .line 1450
    move-object/from16 v39, v3

    .line 1451
    .line 1452
    move v3, v14

    .line 1453
    move/from16 v41, v15

    .line 1454
    .line 1455
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v20

    .line 1459
    :goto_28
    move-object/from16 v3, v39

    .line 1460
    .line 1461
    goto/16 :goto_0

    .line 1462
    .line 1463
    :pswitch_1e
    move-object/from16 v49, v2

    .line 1464
    .line 1465
    move-object/from16 v39, v3

    .line 1466
    .line 1467
    move v3, v14

    .line 1468
    move/from16 v41, v15

    .line 1469
    .line 1470
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v2

    .line 1474
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1475
    .line 1476
    .line 1477
    move-result v26

    .line 1478
    :goto_29
    move-object/from16 v3, v39

    .line 1479
    .line 1480
    goto :goto_26

    .line 1481
    :pswitch_1f
    move-object/from16 v49, v2

    .line 1482
    .line 1483
    move-object/from16 v39, v3

    .line 1484
    .line 1485
    move v3, v14

    .line 1486
    move/from16 v41, v15

    .line 1487
    .line 1488
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1489
    .line 1490
    .line 1491
    move-result v2

    .line 1492
    int-to-float v2, v2

    .line 1493
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1494
    .line 1495
    .line 1496
    move-result v5

    .line 1497
    mul-float/2addr v5, v2

    .line 1498
    float-to-int v2, v5

    .line 1499
    move/from16 v25, v2

    .line 1500
    .line 1501
    goto :goto_29

    .line 1502
    :pswitch_20
    move-object/from16 v49, v2

    .line 1503
    .line 1504
    move-object/from16 v39, v3

    .line 1505
    .line 1506
    move v3, v14

    .line 1507
    move/from16 v41, v15

    .line 1508
    .line 1509
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1510
    .line 1511
    .line 1512
    move-result v2

    .line 1513
    int-to-float v2, v2

    .line 1514
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1515
    .line 1516
    .line 1517
    move-result v5

    .line 1518
    mul-float/2addr v5, v2

    .line 1519
    float-to-int v2, v5

    .line 1520
    move/from16 v24, v2

    .line 1521
    .line 1522
    goto :goto_29

    .line 1523
    :pswitch_21
    move-object/from16 v49, v2

    .line 1524
    .line 1525
    move-object/from16 v39, v3

    .line 1526
    .line 1527
    move v3, v14

    .line 1528
    move/from16 v41, v15

    .line 1529
    .line 1530
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1531
    .line 1532
    .line 1533
    move-result v2

    .line 1534
    int-to-long v7, v2

    .line 1535
    goto :goto_29

    .line 1536
    :pswitch_22
    move-object/from16 v49, v2

    .line 1537
    .line 1538
    move-object/from16 v39, v3

    .line 1539
    .line 1540
    move v3, v14

    .line 1541
    move/from16 v41, v15

    .line 1542
    .line 1543
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1544
    .line 1545
    .line 1546
    move-result v2

    .line 1547
    sget-object v21, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 1548
    .line 1549
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    .line 1550
    .line 1551
    .line 1552
    move-result v5

    .line 1553
    if-ge v2, v5, :cond_41

    .line 1554
    .line 1555
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v5

    .line 1559
    aget-object v21, v5, v2

    .line 1560
    .line 1561
    goto/16 :goto_25

    .line 1562
    .line 1563
    :pswitch_23
    move-object/from16 v49, v2

    .line 1564
    .line 1565
    move-object/from16 v39, v3

    .line 1566
    .line 1567
    move v3, v14

    .line 1568
    move/from16 v41, v15

    .line 1569
    .line 1570
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v23

    .line 1574
    goto :goto_28

    .line 1575
    :pswitch_24
    move-object/from16 v49, v2

    .line 1576
    .line 1577
    move-object/from16 v39, v3

    .line 1578
    .line 1579
    move v3, v14

    .line 1580
    move/from16 v41, v15

    .line 1581
    .line 1582
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1583
    .line 1584
    .line 1585
    move-result v2

    .line 1586
    int-to-long v5, v2

    .line 1587
    move-wide/from16 v16, v5

    .line 1588
    .line 1589
    goto :goto_29

    .line 1590
    :pswitch_25
    move-object/from16 v49, v2

    .line 1591
    .line 1592
    move-object/from16 v39, v3

    .line 1593
    .line 1594
    move v3, v14

    .line 1595
    move/from16 v41, v15

    .line 1596
    .line 1597
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v12

    .line 1601
    goto/16 :goto_28

    .line 1602
    .line 1603
    :cond_45
    move-object/from16 v49, v2

    .line 1604
    .line 1605
    move-object/from16 v39, v3

    .line 1606
    .line 1607
    move/from16 v41, v15

    .line 1608
    .line 1609
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1610
    .line 1611
    .line 1612
    new-instance v11, Ljava/util/ArrayList;

    .line 1613
    .line 1614
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1615
    .line 1616
    .line 1617
    cmpl-float v0, v18, v37

    .line 1618
    .line 1619
    if-lez v0, :cond_46

    .line 1620
    .line 1621
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 1622
    .line 1623
    const/4 v5, 0x0

    .line 1624
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v6

    .line 1628
    move v14, v4

    .line 1629
    const/4 v4, 0x0

    .line 1630
    move-object/from16 v3, v49

    .line 1631
    .line 1632
    move v15, v14

    .line 1633
    move-object/from16 v14, v39

    .line 1634
    .line 1635
    move-object/from16 v2, v49

    .line 1636
    .line 1637
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1638
    .line 1639
    .line 1640
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1641
    .line 1642
    .line 1643
    goto :goto_2a

    .line 1644
    :cond_46
    move v15, v4

    .line 1645
    move-object/from16 v14, v39

    .line 1646
    .line 1647
    :goto_2a
    cmpl-float v0, v19, v37

    .line 1648
    .line 1649
    if-lez v0, :cond_47

    .line 1650
    .line 1651
    goto :goto_2b

    .line 1652
    :cond_47
    iget v0, v1, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 1653
    .line 1654
    move/from16 v19, v0

    .line 1655
    .line 1656
    :goto_2b
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 1657
    .line 1658
    const/4 v4, 0x0

    .line 1659
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v6

    .line 1663
    move-object v3, v13

    .line 1664
    move-object v2, v13

    .line 1665
    move/from16 v5, v18

    .line 1666
    .line 1667
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1668
    .line 1669
    .line 1670
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    .line 1672
    .line 1673
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 1674
    .line 1675
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1676
    .line 1677
    .line 1678
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v6

    .line 1682
    move-object/from16 v3, v49

    .line 1683
    .line 1684
    move-object/from16 v1, p1

    .line 1685
    .line 1686
    move/from16 v5, v19

    .line 1687
    .line 1688
    move-object/from16 v2, v49

    .line 1689
    .line 1690
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1691
    .line 1692
    .line 1693
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    .line 1695
    .line 1696
    const-string v0, ".ai"

    .line 1697
    .line 1698
    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1699
    .line 1700
    .line 1701
    move-result v0

    .line 1702
    if-nez v0, :cond_48

    .line 1703
    .line 1704
    const-string v0, "ai"

    .line 1705
    .line 1706
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1707
    .line 1708
    .line 1709
    move-result v0

    .line 1710
    if-eqz v0, :cond_49

    .line 1711
    .line 1712
    :cond_48
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 1713
    .line 1714
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1715
    .line 1716
    .line 1717
    :cond_49
    if-eqz v15, :cond_4b

    .line 1718
    .line 1719
    if-nez v20, :cond_4a

    .line 1720
    .line 1721
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 1722
    .line 1723
    invoke-direct {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>()V

    .line 1724
    .line 1725
    .line 1726
    goto :goto_2c

    .line 1727
    :cond_4a
    move-object/from16 v0, v20

    .line 1728
    .line 1729
    :goto_2c
    iput-boolean v15, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->autoOrient:Z

    .line 1730
    .line 1731
    move-object/from16 v20, v0

    .line 1732
    .line 1733
    :cond_4b
    new-instance v0, Lcom/airbnb/lottie/model/layer/Layer;

    .line 1734
    .line 1735
    move-object v2, v1

    .line 1736
    move-object v1, v9

    .line 1737
    move-object v3, v12

    .line 1738
    move-wide/from16 v4, v16

    .line 1739
    .line 1740
    move-object/from16 v6, v21

    .line 1741
    .line 1742
    move-object/from16 v9, v23

    .line 1743
    .line 1744
    move/from16 v12, v24

    .line 1745
    .line 1746
    move/from16 v13, v25

    .line 1747
    .line 1748
    move/from16 v14, v26

    .line 1749
    .line 1750
    move/from16 v17, v28

    .line 1751
    .line 1752
    move/from16 v18, v29

    .line 1753
    .line 1754
    move/from16 v16, v30

    .line 1755
    .line 1756
    move/from16 v24, v31

    .line 1757
    .line 1758
    move-object/from16 v25, v32

    .line 1759
    .line 1760
    move-object/from16 v26, v33

    .line 1761
    .line 1762
    move-object/from16 v19, v34

    .line 1763
    .line 1764
    move-object/from16 v23, v36

    .line 1765
    .line 1766
    move/from16 v15, v41

    .line 1767
    .line 1768
    move-object/from16 v21, v11

    .line 1769
    .line 1770
    move-object/from16 v11, v20

    .line 1771
    .line 1772
    move-object/from16 v20, v35

    .line 1773
    .line 1774
    invoke-direct/range {v0 .. v27}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFFFLcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcoil3/svg/internal/AndroidSvg;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZLcoil3/memory/MemoryCacheService;Lokhttp3/Request$Builder;Lcom/airbnb/lottie/model/content/LBlendMode;)V

    .line 1775
    .line 1776
    .line 1777
    return-object v0

    .line 1778
    nop

    .line 1779
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch

    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    :sswitch_data_1
    .sparse-switch
        0x6f -> :sswitch_8
        0xe04 -> :sswitch_7
        0x197f1 -> :sswitch_6
        0x3339a3 -> :sswitch_5
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
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
    .end packed-switch

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
    :sswitch_data_2
    .sparse-switch
        0x61 -> :sswitch_c
        0x69 -> :sswitch_b
        0x6e -> :sswitch_a
        0x73 -> :sswitch_9
    .end sparse-switch

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
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method
