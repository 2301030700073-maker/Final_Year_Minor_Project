.class public final Lcom/google/android/material/color/utilities/ViewingConditions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;


# instance fields
.field public final aw:D

.field public final c:D

.field public final fl:D

.field public final flRoot:D

.field public final n:D

.field public final nbb:D

.field public final nc:D

.field public final ncb:D

.field public final rgbD:[D

.field public final z:D


# direct methods
.method static constructor <clinit>()V
    .locals 45

    .line 1
    sget-object v0, Lcom/google/android/material/color/utilities/Cam16;->WHITE_POINT_D65:[D

    .line 2
    .line 3
    const-wide v1, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    .line 9
    .line 10
    invoke-static {v3, v4}, Lcom/google/android/material/color/utilities/Cam16;->yFromLstar(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v5

    .line 14
    mul-double/2addr v5, v1

    .line 15
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 16
    .line 17
    div-double/2addr v5, v1

    .line 18
    const-wide v7, 0x3fb999999999999aL    # 0.1

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    sget-object v9, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    aget-wide v11, v0, v10

    .line 31
    .line 32
    aget-object v13, v9, v10

    .line 33
    .line 34
    aget-wide v14, v13, v10

    .line 35
    .line 36
    mul-double/2addr v14, v11

    .line 37
    const/16 v16, 0x1

    .line 38
    .line 39
    aget-wide v17, v0, v16

    .line 40
    .line 41
    aget-wide v19, v13, v16

    .line 42
    .line 43
    mul-double v19, v19, v17

    .line 44
    .line 45
    add-double v19, v19, v14

    .line 46
    .line 47
    const/4 v14, 0x2

    .line 48
    aget-wide v21, v0, v14

    .line 49
    .line 50
    aget-wide v23, v13, v14

    .line 51
    .line 52
    mul-double v23, v23, v21

    .line 53
    .line 54
    add-double v23, v23, v19

    .line 55
    .line 56
    aget-object v13, v9, v16

    .line 57
    .line 58
    aget-wide v19, v13, v10

    .line 59
    .line 60
    mul-double v19, v19, v11

    .line 61
    .line 62
    aget-wide v25, v13, v16

    .line 63
    .line 64
    mul-double v25, v25, v17

    .line 65
    .line 66
    add-double v25, v25, v19

    .line 67
    .line 68
    aget-wide v19, v13, v14

    .line 69
    .line 70
    mul-double v19, v19, v21

    .line 71
    .line 72
    add-double v19, v19, v25

    .line 73
    .line 74
    aget-object v9, v9, v14

    .line 75
    .line 76
    aget-wide v25, v9, v10

    .line 77
    .line 78
    mul-double v11, v11, v25

    .line 79
    .line 80
    aget-wide v25, v9, v16

    .line 81
    .line 82
    mul-double v17, v17, v25

    .line 83
    .line 84
    add-double v17, v17, v11

    .line 85
    .line 86
    aget-wide v11, v9, v14

    .line 87
    .line 88
    mul-double v21, v21, v11

    .line 89
    .line 90
    add-double v21, v21, v17

    .line 91
    .line 92
    neg-double v11, v5

    .line 93
    const-wide/high16 v17, 0x4045000000000000L    # 42.0

    .line 94
    .line 95
    sub-double v11, v11, v17

    .line 96
    .line 97
    const-wide/high16 v17, 0x4057000000000000L    # 92.0

    .line 98
    .line 99
    div-double v11, v11, v17

    .line 100
    .line 101
    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    .line 102
    .line 103
    .line 104
    move-result-wide v11

    .line 105
    const-wide v17, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    mul-double v11, v11, v17

    .line 111
    .line 112
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 113
    .line 114
    sub-double v11, v17, v11

    .line 115
    .line 116
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    .line 117
    .line 118
    mul-double v11, v11, v36

    .line 119
    .line 120
    const-wide/16 v25, 0x0

    .line 121
    .line 122
    cmpg-double v9, v11, v25

    .line 123
    .line 124
    if-gez v9, :cond_0

    .line 125
    .line 126
    move-wide/from16 v11, v25

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    cmpl-double v9, v11, v17

    .line 130
    .line 131
    if-lez v9, :cond_1

    .line 132
    .line 133
    move-wide/from16 v11, v17

    .line 134
    .line 135
    :cond_1
    :goto_0
    div-double v25, v1, v23

    .line 136
    .line 137
    mul-double v25, v25, v11

    .line 138
    .line 139
    add-double v25, v25, v17

    .line 140
    .line 141
    sub-double v25, v25, v11

    .line 142
    .line 143
    div-double v27, v1, v19

    .line 144
    .line 145
    mul-double v27, v27, v11

    .line 146
    .line 147
    add-double v27, v27, v17

    .line 148
    .line 149
    sub-double v27, v27, v11

    .line 150
    .line 151
    div-double v29, v1, v21

    .line 152
    .line 153
    mul-double v29, v29, v11

    .line 154
    .line 155
    add-double v29, v29, v17

    .line 156
    .line 157
    sub-double v29, v29, v11

    .line 158
    .line 159
    const/4 v9, 0x3

    .line 160
    new-array v11, v9, [D

    .line 161
    .line 162
    aput-wide v25, v11, v10

    .line 163
    .line 164
    aput-wide v27, v11, v16

    .line 165
    .line 166
    aput-wide v29, v11, v14

    .line 167
    .line 168
    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    .line 169
    .line 170
    mul-double/2addr v12, v5

    .line 171
    add-double v25, v12, v17

    .line 172
    .line 173
    div-double v25, v17, v25

    .line 174
    .line 175
    mul-double v27, v25, v25

    .line 176
    .line 177
    mul-double v27, v27, v25

    .line 178
    .line 179
    mul-double v27, v27, v25

    .line 180
    .line 181
    sub-double v17, v17, v27

    .line 182
    .line 183
    mul-double v27, v27, v5

    .line 184
    .line 185
    mul-double v7, v7, v17

    .line 186
    .line 187
    mul-double v7, v7, v17

    .line 188
    .line 189
    invoke-static {v12, v13}, Ljava/lang/Math;->cbrt(D)D

    .line 190
    .line 191
    .line 192
    move-result-wide v5

    .line 193
    mul-double/2addr v5, v7

    .line 194
    add-double v5, v5, v27

    .line 195
    .line 196
    invoke-static {v3, v4}, Lcom/google/android/material/color/utilities/Cam16;->yFromLstar(D)D

    .line 197
    .line 198
    .line 199
    move-result-wide v3

    .line 200
    aget-wide v7, v0, v16

    .line 201
    .line 202
    div-double/2addr v3, v7

    .line 203
    const-wide v7, 0x3ff7ae147ae147aeL    # 1.48

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 209
    .line 210
    .line 211
    move-result-wide v12

    .line 212
    add-double v43, v12, v7

    .line 213
    .line 214
    const-wide v7, 0x3fc999999999999aL    # 0.2

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 220
    .line 221
    .line 222
    move-result-wide v7

    .line 223
    const-wide v12, 0x3fe7333333333333L    # 0.725

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    div-double v30, v12, v7

    .line 229
    .line 230
    aget-wide v7, v11, v10

    .line 231
    .line 232
    mul-double/2addr v7, v5

    .line 233
    mul-double v7, v7, v23

    .line 234
    .line 235
    div-double/2addr v7, v1

    .line 236
    const-wide v12, 0x3fdae147ae147ae1L    # 0.42

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 242
    .line 243
    .line 244
    move-result-wide v7

    .line 245
    aget-wide v17, v11, v16

    .line 246
    .line 247
    mul-double v17, v17, v5

    .line 248
    .line 249
    mul-double v17, v17, v19

    .line 250
    .line 251
    move-wide/from16 v19, v1

    .line 252
    .line 253
    div-double v1, v17, v19

    .line 254
    .line 255
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 256
    .line 257
    .line 258
    move-result-wide v0

    .line 259
    aget-wide v17, v11, v14

    .line 260
    .line 261
    mul-double v17, v17, v5

    .line 262
    .line 263
    mul-double v17, v17, v21

    .line 264
    .line 265
    move v2, v10

    .line 266
    move-object/from16 v38, v11

    .line 267
    .line 268
    div-double v10, v17, v19

    .line 269
    .line 270
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 271
    .line 272
    .line 273
    move-result-wide v10

    .line 274
    new-array v12, v9, [D

    .line 275
    .line 276
    aput-wide v7, v12, v2

    .line 277
    .line 278
    aput-wide v0, v12, v16

    .line 279
    .line 280
    aput-wide v10, v12, v14

    .line 281
    .line 282
    aget-wide v0, v12, v2

    .line 283
    .line 284
    const-wide/high16 v7, 0x4079000000000000L    # 400.0

    .line 285
    .line 286
    mul-double v10, v0, v7

    .line 287
    .line 288
    const-wide v17, 0x403b2147ae147ae1L    # 27.13

    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    add-double v0, v0, v17

    .line 294
    .line 295
    div-double/2addr v10, v0

    .line 296
    aget-wide v0, v12, v16

    .line 297
    .line 298
    mul-double v19, v0, v7

    .line 299
    .line 300
    add-double v0, v0, v17

    .line 301
    .line 302
    div-double v19, v19, v0

    .line 303
    .line 304
    aget-wide v0, v12, v14

    .line 305
    .line 306
    mul-double/2addr v7, v0

    .line 307
    add-double v0, v0, v17

    .line 308
    .line 309
    div-double/2addr v7, v0

    .line 310
    new-array v0, v9, [D

    .line 311
    .line 312
    aput-wide v10, v0, v2

    .line 313
    .line 314
    aput-wide v19, v0, v16

    .line 315
    .line 316
    aput-wide v7, v0, v14

    .line 317
    .line 318
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 319
    .line 320
    aget-wide v1, v0, v2

    .line 321
    .line 322
    mul-double/2addr v1, v7

    .line 323
    aget-wide v7, v0, v16

    .line 324
    .line 325
    add-double/2addr v1, v7

    .line 326
    const-wide v7, 0x3fa999999999999aL    # 0.05

    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    aget-wide v9, v0, v14

    .line 332
    .line 333
    mul-double/2addr v9, v7

    .line 334
    add-double/2addr v9, v1

    .line 335
    mul-double v28, v9, v30

    .line 336
    .line 337
    new-instance v25, Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 338
    .line 339
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    .line 340
    .line 341
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 342
    .line 343
    .line 344
    move-result-wide v41

    .line 345
    const-wide v34, 0x3fe6147ae147ae14L    # 0.69

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    move-wide/from16 v32, v30

    .line 351
    .line 352
    move-wide/from16 v26, v3

    .line 353
    .line 354
    move-wide/from16 v39, v5

    .line 355
    .line 356
    invoke-direct/range {v25 .. v44}, Lcom/google/android/material/color/utilities/ViewingConditions;-><init>(DDDDDD[DDDD)V

    .line 357
    .line 358
    .line 359
    sput-object v25, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 360
    .line 361
    return-void
.end method

.method public constructor <init>(DDDDDD[DDDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    .line 9
    .line 10
    iput-wide p7, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    .line 11
    .line 12
    iput-wide p9, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    .line 13
    .line 14
    iput-wide p11, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    .line 15
    .line 16
    iput-object p13, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    .line 17
    .line 18
    iput-wide p14, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    .line 19
    .line 20
    move-wide/from16 p1, p16

    .line 21
    .line 22
    iput-wide p1, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    .line 23
    .line 24
    move-wide/from16 p1, p18

    .line 25
    .line 26
    iput-wide p1, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    .line 27
    .line 28
    return-void
.end method
