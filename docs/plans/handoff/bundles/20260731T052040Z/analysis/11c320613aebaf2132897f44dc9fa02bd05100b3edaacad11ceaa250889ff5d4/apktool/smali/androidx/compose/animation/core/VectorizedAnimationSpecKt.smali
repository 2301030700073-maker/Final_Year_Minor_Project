.class public abstract Landroidx/compose/animation/core/VectorizedAnimationSpecKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    new-array v2, v0, [F

    .line 5
    .line 6
    new-array v3, v0, [F

    .line 7
    .line 8
    new-array v4, v0, [[F

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v2, v4, v5

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    aput-object v3, v4, v2

    .line 15
    .line 16
    aget v1, v1, v5

    .line 17
    .line 18
    const/4 v3, 0x5

    .line 19
    const/4 v6, 0x4

    .line 20
    const/4 v7, 0x3

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    if-eq v1, v2, :cond_0

    .line 24
    .line 25
    if-eq v1, v0, :cond_3

    .line 26
    .line 27
    if-eq v1, v7, :cond_3

    .line 28
    .line 29
    if-eq v1, v6, :cond_2

    .line 30
    .line 31
    if-eq v1, v3, :cond_1

    .line 32
    .line 33
    :cond_0
    move v1, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v1, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    move v1, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    move v1, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_4
    move v1, v7

    .line 42
    :goto_0
    aget-object v8, v4, v5

    .line 43
    .line 44
    aget-object v4, v4, v2

    .line 45
    .line 46
    array-length v9, v8

    .line 47
    div-int/2addr v9, v0

    .line 48
    array-length v10, v8

    .line 49
    rem-int/2addr v10, v0

    .line 50
    add-int/2addr v10, v9

    .line 51
    new-array v0, v10, [Lio/noties/markwon/BlockHandlerDef;

    .line 52
    .line 53
    move v9, v5

    .line 54
    :goto_1
    if-ge v9, v10, :cond_d

    .line 55
    .line 56
    mul-int/lit8 v11, v9, 0x2

    .line 57
    .line 58
    new-instance v12, Lio/noties/markwon/BlockHandlerDef;

    .line 59
    .line 60
    aget v13, v8, v11

    .line 61
    .line 62
    add-int/lit8 v14, v11, 0x1

    .line 63
    .line 64
    aget v15, v8, v14

    .line 65
    .line 66
    aget v11, v4, v11

    .line 67
    .line 68
    aget v14, v4, v14

    .line 69
    .line 70
    invoke-direct {v12, v7}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 71
    .line 72
    .line 73
    sub-float/2addr v11, v13

    .line 74
    sub-float v13, v14, v15

    .line 75
    .line 76
    move/from16 v16, v2

    .line 77
    .line 78
    const/16 v2, 0x65

    .line 79
    .line 80
    new-array v3, v2, [F

    .line 81
    .line 82
    if-ne v1, v7, :cond_6

    .line 83
    .line 84
    :cond_5
    :goto_2
    move v7, v5

    .line 85
    move-object/from16 v21, v8

    .line 86
    .line 87
    goto/16 :goto_7

    .line 88
    .line 89
    :cond_6
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result v17

    .line 93
    const v18, 0x3a83126f    # 0.001f

    .line 94
    .line 95
    .line 96
    cmpg-float v17, v17, v18

    .line 97
    .line 98
    if-ltz v17, :cond_5

    .line 99
    .line 100
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 101
    .line 102
    .line 103
    move-result v17

    .line 104
    cmpg-float v17, v17, v18

    .line 105
    .line 106
    if-gez v17, :cond_7

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_7
    sub-float/2addr v15, v14

    .line 110
    sget-object v13, Landroidx/compose/animation/core/ArcSplineKt;->OurPercentCache:[F

    .line 111
    .line 112
    move-object/from16 v21, v8

    .line 113
    .line 114
    move/from16 v20, v15

    .line 115
    .line 116
    move/from16 v6, v16

    .line 117
    .line 118
    const/16 v18, 0x0

    .line 119
    .line 120
    const/16 v19, 0x0

    .line 121
    .line 122
    :goto_3
    int-to-double v7, v6

    .line 123
    const-wide v22, 0x4056800000000000L    # 90.0

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    mul-double v7, v7, v22

    .line 129
    .line 130
    div-double v7, v7, v22

    .line 131
    .line 132
    const-wide v22, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    mul-double v7, v7, v22

    .line 138
    .line 139
    double-to-float v7, v7

    .line 140
    float-to-double v7, v7

    .line 141
    move/from16 v22, v15

    .line 142
    .line 143
    const/16 v23, 0x0

    .line 144
    .line 145
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 146
    .line 147
    .line 148
    move-result-wide v14

    .line 149
    double-to-float v14, v14

    .line 150
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 151
    .line 152
    .line 153
    move-result-wide v7

    .line 154
    double-to-float v7, v7

    .line 155
    mul-float/2addr v14, v11

    .line 156
    mul-float v15, v22, v7

    .line 157
    .line 158
    sub-float v7, v14, v19

    .line 159
    .line 160
    float-to-double v7, v7

    .line 161
    sub-float v5, v15, v20

    .line 162
    .line 163
    move-object/from16 v24, v3

    .line 164
    .line 165
    float-to-double v2, v5

    .line 166
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 167
    .line 168
    .line 169
    move-result-wide v2

    .line 170
    double-to-float v2, v2

    .line 171
    add-float v18, v18, v2

    .line 172
    .line 173
    aput v18, v13, v6

    .line 174
    .line 175
    const/16 v2, 0x5a

    .line 176
    .line 177
    if-eq v6, v2, :cond_8

    .line 178
    .line 179
    add-int/lit8 v6, v6, 0x1

    .line 180
    .line 181
    move/from16 v19, v14

    .line 182
    .line 183
    move/from16 v20, v15

    .line 184
    .line 185
    move/from16 v15, v22

    .line 186
    .line 187
    move-object/from16 v3, v24

    .line 188
    .line 189
    const/16 v2, 0x65

    .line 190
    .line 191
    const/4 v5, 0x0

    .line 192
    goto :goto_3

    .line 193
    :cond_8
    move/from16 v3, v16

    .line 194
    .line 195
    :goto_4
    aget v5, v13, v3

    .line 196
    .line 197
    div-float v5, v5, v18

    .line 198
    .line 199
    aput v5, v13, v3

    .line 200
    .line 201
    if-eq v3, v2, :cond_9

    .line 202
    .line 203
    add-int/lit8 v3, v3, 0x1

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_9
    const/4 v2, 0x0

    .line 207
    const/16 v3, 0x65

    .line 208
    .line 209
    :goto_5
    if-ge v2, v3, :cond_c

    .line 210
    .line 211
    int-to-float v5, v2

    .line 212
    const/high16 v6, 0x42c80000    # 100.0f

    .line 213
    .line 214
    div-float/2addr v5, v6

    .line 215
    const/16 v6, 0x5b

    .line 216
    .line 217
    const/4 v7, 0x0

    .line 218
    invoke-static {v13, v7, v6, v5}, Ljava/util/Arrays;->binarySearch([FIIF)I

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    const/high16 v8, 0x42b40000    # 90.0f

    .line 223
    .line 224
    if-ltz v6, :cond_a

    .line 225
    .line 226
    int-to-float v5, v6

    .line 227
    div-float/2addr v5, v8

    .line 228
    aput v5, v24, v2

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_a
    const/4 v11, -0x1

    .line 232
    if-ne v6, v11, :cond_b

    .line 233
    .line 234
    aput v23, v24, v2

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_b
    neg-int v6, v6

    .line 238
    add-int/lit8 v11, v6, -0x2

    .line 239
    .line 240
    add-int/lit8 v6, v6, -0x1

    .line 241
    .line 242
    int-to-float v14, v11

    .line 243
    aget v11, v13, v11

    .line 244
    .line 245
    sub-float/2addr v5, v11

    .line 246
    aget v6, v13, v6

    .line 247
    .line 248
    sub-float/2addr v6, v11

    .line 249
    div-float/2addr v5, v6

    .line 250
    add-float/2addr v5, v14

    .line 251
    div-float/2addr v5, v8

    .line 252
    aput v5, v24, v2

    .line 253
    .line 254
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_c
    const/4 v7, 0x0

    .line 258
    goto :goto_8

    .line 259
    :goto_7
    float-to-double v2, v13

    .line 260
    float-to-double v5, v11

    .line 261
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 262
    .line 263
    .line 264
    :goto_8
    aput-object v12, v0, v9

    .line 265
    .line 266
    add-int/lit8 v9, v9, 0x1

    .line 267
    .line 268
    move v5, v7

    .line 269
    move/from16 v2, v16

    .line 270
    .line 271
    move-object/from16 v8, v21

    .line 272
    .line 273
    const/4 v3, 0x5

    .line 274
    const/4 v6, 0x4

    .line 275
    const/4 v7, 0x3

    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :cond_d
    return-void
.end method
