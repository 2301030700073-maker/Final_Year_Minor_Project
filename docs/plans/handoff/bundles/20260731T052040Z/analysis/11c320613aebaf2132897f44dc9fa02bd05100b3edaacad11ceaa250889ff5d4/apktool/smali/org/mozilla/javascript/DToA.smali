.class Lorg/mozilla/javascript/DToA;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final Bias:I = 0x3ff

.field private static final Bletch:I = 0x10

.field private static final Bndry_mask:I = 0xfffff

.field private static final Exp_11:I = 0x3ff00000

.field private static final Exp_mask:I = 0x7ff00000

.field private static final Exp_mask_shifted:I = 0x7ff

.field private static final Exp_msk1:I = 0x100000

.field private static final Exp_msk1L:J = 0x10000000000000L

.field private static final Exp_shift:I = 0x14

.field private static final Exp_shift1:I = 0x14

.field private static final Exp_shiftL:I = 0x34

.field private static final Frac_mask:I = 0xfffff

.field private static final Frac_mask1:I = 0xfffff

.field private static final Frac_maskL:J = 0xfffffffffffffL

.field private static final Int_max:I = 0xe

.field private static final Log2P:I = 0x1

.field private static final P:I = 0x35

.field private static final Quick_max:I = 0xe

.field private static final Sign_bit:I = -0x80000000

.field private static final Ten_pmax:I = 0x16

.field private static final bigtens:[D

.field private static final n_bigtens:I = 0x5

.field private static final tens:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    new-array v0, v0, [D

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/mozilla/javascript/DToA;->tens:[D

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    new-array v0, v0, [D

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/mozilla/javascript/DToA;->bigtens:[D

    .line 17
    .line 18
    return-void

    .line 19
    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    .line 20
    .line 21
    :array_1
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static BASEDIGIT(I)C
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p0, p0, 0x57

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    add-int/lit8 p0, p0, 0x30

    .line 9
    .line 10
    :goto_0
    int-to-char p0, p0

    .line 11
    return p0
.end method

.method public static JS_dtobasestr(ID)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    if-gt v0, p0, :cond_16

    .line 3
    .line 4
    const/16 v0, 0x24

    .line 5
    .line 6
    if-gt p0, v0, :cond_16

    .line 7
    .line 8
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p0, "NaN"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    cmpl-double p0, p1, v1

    .line 26
    .line 27
    if-lez p0, :cond_1

    .line 28
    .line 29
    const-string p0, "Infinity"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    const-string p0, "-Infinity"

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    cmpl-double v0, p1, v1

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    const-string p0, "0"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_3
    const/4 v1, 0x0

    .line 43
    const/4 v2, 0x1

    .line 44
    if-ltz v0, :cond_4

    .line 45
    .line 46
    move v0, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_4
    neg-double p1, p1

    .line 49
    move v0, v2

    .line 50
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    double-to-long v5, v3

    .line 55
    long-to-double v7, v5

    .line 56
    cmpl-double v7, v7, v3

    .line 57
    .line 58
    if-nez v7, :cond_6

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    neg-long v5, v5

    .line 63
    :cond_5
    invoke-static {v5, v6, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_3

    .line 68
    :cond_6
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 69
    .line 70
    .line 71
    move-result-wide v5

    .line 72
    const/16 v7, 0x34

    .line 73
    .line 74
    shr-long v7, v5, v7

    .line 75
    .line 76
    long-to-int v7, v7

    .line 77
    and-int/lit16 v7, v7, 0x7ff

    .line 78
    .line 79
    const-wide v8, 0xfffffffffffffL

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    if-nez v7, :cond_7

    .line 85
    .line 86
    and-long/2addr v5, v8

    .line 87
    shl-long/2addr v5, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_7
    and-long/2addr v5, v8

    .line 90
    const-wide/high16 v8, 0x10000000000000L

    .line 91
    .line 92
    or-long/2addr v5, v8

    .line 93
    :goto_1
    if-eqz v0, :cond_8

    .line 94
    .line 95
    neg-long v5, v5

    .line 96
    :cond_8
    add-int/lit16 v7, v7, -0x433

    .line 97
    .line 98
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-lez v7, :cond_9

    .line 103
    .line 104
    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto :goto_2

    .line 109
    :cond_9
    if-gez v7, :cond_a

    .line 110
    .line 111
    neg-int v5, v7

    .line 112
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :cond_a
    :goto_2
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :goto_3
    cmpl-double v5, p1, v3

    .line 121
    .line 122
    if-nez v5, :cond_b

    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const/16 v0, 0x2e

    .line 134
    .line 135
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    sub-double v3, p1, v3

    .line 139
    .line 140
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 141
    .line 142
    .line 143
    move-result-wide p1

    .line 144
    const/16 v0, 0x20

    .line 145
    .line 146
    shr-long v6, p1, v0

    .line 147
    .line 148
    long-to-int v0, v6

    .line 149
    long-to-int p1, p1

    .line 150
    new-array p2, v2, [I

    .line 151
    .line 152
    new-array v6, v2, [I

    .line 153
    .line 154
    invoke-static {v3, v4, p2, v6}, Lorg/mozilla/javascript/DToA;->d2b(D[I[I)Ljava/math/BigInteger;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    ushr-int/lit8 v4, v0, 0x14

    .line 159
    .line 160
    and-int/lit16 v4, v4, 0x7ff

    .line 161
    .line 162
    neg-int v4, v4

    .line 163
    if-nez v4, :cond_c

    .line 164
    .line 165
    const/4 v4, -0x1

    .line 166
    :cond_c
    add-int/lit16 v6, v4, 0x434

    .line 167
    .line 168
    const-wide/16 v7, 0x1

    .line 169
    .line 170
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    if-nez p1, :cond_d

    .line 175
    .line 176
    const v10, 0xfffff

    .line 177
    .line 178
    .line 179
    and-int/2addr v10, v0

    .line 180
    if-nez v10, :cond_d

    .line 181
    .line 182
    const/high16 v10, 0x7fe00000

    .line 183
    .line 184
    and-int/2addr v0, v10

    .line 185
    if-eqz v0, :cond_d

    .line 186
    .line 187
    add-int/lit16 v6, v4, 0x435

    .line 188
    .line 189
    const-wide/16 v10, 0x2

    .line 190
    .line 191
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    goto :goto_4

    .line 196
    :cond_d
    move-object v0, v9

    .line 197
    :goto_4
    aget p2, p2, v1

    .line 198
    .line 199
    add-int/2addr p2, v6

    .line 200
    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    int-to-long v6, p0

    .line 213
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    move p0, v1

    .line 218
    :goto_5
    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    aget-object v6, p2, v2

    .line 227
    .line 228
    aget-object p2, p2, v1

    .line 229
    .line 230
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    int-to-char p2, p2

    .line 235
    invoke-static {v9, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    if-eqz v7, :cond_e

    .line 240
    .line 241
    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    move-object v9, v0

    .line 246
    goto :goto_6

    .line 247
    :cond_e
    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    move-object v9, v7

    .line 256
    :goto_6
    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    if-gtz v10, :cond_f

    .line 269
    .line 270
    move v8, v2

    .line 271
    goto :goto_7

    .line 272
    :cond_f
    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 273
    .line 274
    .line 275
    move-result v8

    .line 276
    :goto_7
    if-nez v8, :cond_11

    .line 277
    .line 278
    and-int/lit8 v10, p1, 0x1

    .line 279
    .line 280
    if-nez v10, :cond_11

    .line 281
    .line 282
    if-lez v7, :cond_10

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_10
    :goto_8
    move p0, v2

    .line 286
    goto :goto_b

    .line 287
    :cond_11
    if-ltz v7, :cond_13

    .line 288
    .line 289
    if-nez v7, :cond_12

    .line 290
    .line 291
    and-int/lit8 v7, p1, 0x1

    .line 292
    .line 293
    if-nez v7, :cond_12

    .line 294
    .line 295
    goto :goto_a

    .line 296
    :cond_12
    if-lez v8, :cond_14

    .line 297
    .line 298
    :goto_9
    add-int/lit8 p2, p2, 0x1

    .line 299
    .line 300
    goto :goto_8

    .line 301
    :cond_13
    :goto_a
    if-lez v8, :cond_10

    .line 302
    .line 303
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    if-lez p0, :cond_10

    .line 312
    .line 313
    goto :goto_9

    .line 314
    :cond_14
    :goto_b
    invoke-static {p2}, Lorg/mozilla/javascript/DToA;->BASEDIGIT(I)C

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    if-eqz p0, :cond_15

    .line 322
    .line 323
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    return-object p0

    .line 328
    :cond_15
    move-object p2, v6

    .line 329
    goto :goto_5

    .line 330
    :cond_16
    const-string p1, "Bad base: "

    .line 331
    .line 332
    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    const/4 p0, 0x0

    .line 340
    return-object p0
.end method

.method private static d2b(D[I[I)Ljava/math/BigInteger;
    .locals 8

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    ushr-long v1, p0, v0

    .line 8
    .line 9
    long-to-int v1, v1

    .line 10
    long-to-int p0, p0

    .line 11
    const p1, 0xfffff

    .line 12
    .line 13
    .line 14
    and-int/2addr p1, v1

    .line 15
    const v2, 0x7fffffff

    .line 16
    .line 17
    .line 18
    and-int/2addr v1, v2

    .line 19
    ushr-int/lit8 v1, v1, 0x14

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/high16 v2, 0x100000

    .line 24
    .line 25
    or-int/2addr p1, v2

    .line 26
    :cond_0
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x4

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    const/16 v5, 0x8

    .line 32
    .line 33
    new-array v5, v5, [B

    .line 34
    .line 35
    invoke-static {p0}, Lorg/mozilla/javascript/DToA;->lo0bits(I)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    ushr-int/2addr p0, v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    rsub-int/lit8 v7, v6, 0x20

    .line 43
    .line 44
    shl-int v7, p1, v7

    .line 45
    .line 46
    or-int/2addr p0, v7

    .line 47
    invoke-static {v5, v3, p0}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    .line 48
    .line 49
    .line 50
    shr-int/2addr p1, v6

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v5, v3, p0}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-static {v5, v4, p1}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    .line 56
    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    new-array v5, v3, [B

    .line 63
    .line 64
    invoke-static {p1}, Lorg/mozilla/javascript/DToA;->lo0bits(I)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    ushr-int/2addr p1, p0

    .line 69
    invoke-static {v5, v4, p1}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v6, p0, 0x20

    .line 73
    .line 74
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 75
    .line 76
    add-int/lit16 v1, v1, -0x433

    .line 77
    .line 78
    add-int/2addr v1, v6

    .line 79
    aput v1, p2, v4

    .line 80
    .line 81
    rsub-int/lit8 p0, v6, 0x35

    .line 82
    .line 83
    aput p0, p3, v4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    add-int/lit16 v1, v1, -0x432

    .line 87
    .line 88
    add-int/2addr v1, v6

    .line 89
    aput v1, p2, v4

    .line 90
    .line 91
    mul-int/2addr v2, v0

    .line 92
    invoke-static {p1}, Lorg/mozilla/javascript/DToA;->hi0bits(I)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    sub-int/2addr v2, p0

    .line 97
    aput v2, p3, v4

    .line 98
    .line 99
    :goto_2
    new-instance p0, Ljava/math/BigInteger;

    .line 100
    .line 101
    invoke-direct {p0, v5}, Ljava/math/BigInteger;-><init>([B)V

    .line 102
    .line 103
    .line 104
    return-object p0
.end method

.method private static hi0bits(I)I
    .locals 2

    .line 1
    const/high16 v0, -0x10000

    .line 2
    .line 3
    and-int/2addr v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    shl-int/lit8 p0, p0, 0x10

    .line 7
    .line 8
    const/16 v0, 0x10

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    const/high16 v1, -0x1000000

    .line 13
    .line 14
    and-int/2addr v1, p0

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x8

    .line 18
    .line 19
    shl-int/lit8 p0, p0, 0x8

    .line 20
    .line 21
    :cond_1
    const/high16 v1, -0x10000000

    .line 22
    .line 23
    and-int/2addr v1, p0

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x4

    .line 27
    .line 28
    shl-int/lit8 p0, p0, 0x4

    .line 29
    .line 30
    :cond_2
    const/high16 v1, -0x40000000    # -2.0f

    .line 31
    .line 32
    and-int/2addr v1, p0

    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x2

    .line 36
    .line 37
    shl-int/lit8 p0, p0, 0x2

    .line 38
    .line 39
    :cond_3
    const/high16 v1, -0x80000000

    .line 40
    .line 41
    and-int/2addr v1, p0

    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    const/high16 v1, 0x40000000    # 2.0f

    .line 47
    .line 48
    and-int/2addr p0, v1

    .line 49
    if-nez p0, :cond_4

    .line 50
    .line 51
    const/16 p0, 0x20

    .line 52
    .line 53
    return p0

    .line 54
    :cond_4
    return v0
.end method

.method private static lo0bits(I)I
    .locals 3

    .line 1
    and-int/lit8 v0, p0, 0x7

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    and-int/lit8 v0, p0, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    and-int/2addr p0, v0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    return v0

    .line 18
    :cond_2
    const v0, 0xffff

    .line 19
    .line 20
    .line 21
    and-int/2addr v0, p0

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    ushr-int/lit8 p0, p0, 0x10

    .line 25
    .line 26
    const/16 v1, 0x10

    .line 27
    .line 28
    :cond_3
    and-int/lit16 v0, p0, 0xff

    .line 29
    .line 30
    if-nez v0, :cond_4

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x8

    .line 33
    .line 34
    ushr-int/lit8 p0, p0, 0x8

    .line 35
    .line 36
    :cond_4
    and-int/lit8 v0, p0, 0xf

    .line 37
    .line 38
    if-nez v0, :cond_5

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x4

    .line 41
    .line 42
    ushr-int/lit8 p0, p0, 0x4

    .line 43
    .line 44
    :cond_5
    and-int/lit8 v0, p0, 0x3

    .line 45
    .line 46
    if-nez v0, :cond_6

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x2

    .line 49
    .line 50
    ushr-int/lit8 p0, p0, 0x2

    .line 51
    .line 52
    :cond_6
    and-int/lit8 v0, p0, 0x1

    .line 53
    .line 54
    if-nez v0, :cond_7

    .line 55
    .line 56
    add-int/2addr v1, v2

    .line 57
    ushr-int/2addr p0, v2

    .line 58
    and-int/2addr p0, v2

    .line 59
    if-nez p0, :cond_7

    .line 60
    .line 61
    const/16 p0, 0x20

    .line 62
    .line 63
    return p0

    .line 64
    :cond_7
    return v1
.end method

.method private static stuffBits([BII)V
    .locals 2

    .line 1
    shr-int/lit8 v0, p2, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p0, p1

    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x1

    .line 7
    .line 8
    shr-int/lit8 v1, p2, 0x10

    .line 9
    .line 10
    int-to-byte v1, v1

    .line 11
    aput-byte v1, p0, v0

    .line 12
    .line 13
    add-int/lit8 v0, p1, 0x2

    .line 14
    .line 15
    shr-int/lit8 v1, p2, 0x8

    .line 16
    .line 17
    int-to-byte v1, v1

    .line 18
    aput-byte v1, p0, v0

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x3

    .line 21
    .line 22
    int-to-byte p2, p2

    .line 23
    aput-byte p2, p0, p1

    .line 24
    .line 25
    return-void
.end method
