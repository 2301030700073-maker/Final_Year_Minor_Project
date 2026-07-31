.class public Lj$/util/Base64$Decoder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:Lj$/util/Base64$Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    sput-object v1, Lj$/util/Base64$Decoder;->a:[I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    move v3, v1

    .line 13
    :goto_0
    const/16 v4, 0x40

    .line 14
    .line 15
    if-ge v3, v4, :cond_0

    .line 16
    .line 17
    sget-object v4, Lj$/util/Base64$Decoder;->a:[I

    .line 18
    .line 19
    sget-object v5, Lj$/util/Base64$Encoder;->a:[C

    .line 20
    .line 21
    aget-char v5, v5, v3

    .line 22
    .line 23
    aput v3, v4, v5

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v3, Lj$/util/Base64$Decoder;->a:[I

    .line 29
    .line 30
    const/16 v5, 0x3d

    .line 31
    .line 32
    const/4 v6, -0x2

    .line 33
    aput v6, v3, v5

    .line 34
    .line 35
    new-array v0, v0, [I

    .line 36
    .line 37
    sput-object v0, Lj$/util/Base64$Decoder;->b:[I

    .line 38
    .line 39
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 40
    .line 41
    .line 42
    :goto_1
    if-ge v1, v4, :cond_1

    .line 43
    .line 44
    sget-object v0, Lj$/util/Base64$Decoder;->b:[I

    .line 45
    .line 46
    sget-object v2, Lj$/util/Base64$Encoder;->b:[C

    .line 47
    .line 48
    aget-char v2, v2, v1

    .line 49
    .line 50
    aput v1, v0, v2

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sget-object v0, Lj$/util/Base64$Decoder;->b:[I

    .line 56
    .line 57
    aput v6, v0, v5

    .line 58
    .line 59
    new-instance v0, Lj$/util/Base64$Decoder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lj$/util/Base64$Decoder;->c:Lj$/util/Base64$Decoder;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 20

    .line 1
    sget-object v0, Lj$/sun/nio/cs/c;->a:Lj$/sun/nio/cs/c;

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/16 v4, 0x3d

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    if-lt v1, v5, :cond_14

    .line 18
    .line 19
    add-int/lit8 v6, v1, -0x1

    .line 20
    .line 21
    aget-byte v6, v0, v6

    .line 22
    .line 23
    if-ne v6, v4, :cond_2

    .line 24
    .line 25
    add-int/lit8 v6, v1, -0x2

    .line 26
    .line 27
    aget-byte v6, v0, v6

    .line 28
    .line 29
    if-ne v6, v4, :cond_1

    .line 30
    .line 31
    move v6, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v6, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v6, 0x0

    .line 36
    :goto_0
    if-nez v6, :cond_3

    .line 37
    .line 38
    and-int/lit8 v7, v1, 0x3

    .line 39
    .line 40
    if-eqz v7, :cond_3

    .line 41
    .line 42
    rsub-int/lit8 v6, v7, 0x4

    .line 43
    .line 44
    :cond_3
    add-int/lit8 v1, v1, 0x3

    .line 45
    .line 46
    div-int/lit8 v1, v1, 0x4

    .line 47
    .line 48
    mul-int/lit8 v1, v1, 0x3

    .line 49
    .line 50
    sub-int/2addr v1, v6

    .line 51
    :goto_1
    new-array v6, v1, [B

    .line 52
    .line 53
    array-length v7, v0

    .line 54
    const/16 v8, 0x12

    .line 55
    .line 56
    move v10, v8

    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v12, 0x0

    .line 60
    :goto_2
    const/4 v13, 0x6

    .line 61
    if-ge v9, v7, :cond_e

    .line 62
    .line 63
    sget-object v15, Lj$/util/Base64$Decoder;->b:[I

    .line 64
    .line 65
    if-ne v10, v8, :cond_7

    .line 66
    .line 67
    const/16 p0, 0x0

    .line 68
    .line 69
    add-int/lit8 v2, v9, 0x4

    .line 70
    .line 71
    if-ge v2, v7, :cond_6

    .line 72
    .line 73
    sub-int v2, v7, v9

    .line 74
    .line 75
    and-int/lit8 v2, v2, -0x4

    .line 76
    .line 77
    add-int/2addr v2, v9

    .line 78
    :goto_3
    if-ge v9, v2, :cond_5

    .line 79
    .line 80
    add-int/lit8 v16, v9, 0x1

    .line 81
    .line 82
    aget-byte v3, v0, v9

    .line 83
    .line 84
    and-int/lit16 v3, v3, 0xff

    .line 85
    .line 86
    aget v3, v15, v3

    .line 87
    .line 88
    add-int/lit8 v17, v9, 0x2

    .line 89
    .line 90
    move/from16 v18, v5

    .line 91
    .line 92
    aget-byte v5, v0, v16

    .line 93
    .line 94
    and-int/lit16 v5, v5, 0xff

    .line 95
    .line 96
    aget v5, v15, v5

    .line 97
    .line 98
    add-int/lit8 v16, v9, 0x3

    .line 99
    .line 100
    aget-byte v14, v0, v17

    .line 101
    .line 102
    and-int/lit16 v14, v14, 0xff

    .line 103
    .line 104
    aget v14, v15, v14

    .line 105
    .line 106
    add-int/lit8 v17, v9, 0x4

    .line 107
    .line 108
    aget-byte v8, v0, v16

    .line 109
    .line 110
    and-int/lit16 v8, v8, 0xff

    .line 111
    .line 112
    aget v8, v15, v8

    .line 113
    .line 114
    or-int v16, v3, v5

    .line 115
    .line 116
    or-int v16, v16, v14

    .line 117
    .line 118
    or-int v16, v16, v8

    .line 119
    .line 120
    if-gez v16, :cond_4

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_4
    shl-int/lit8 v3, v3, 0x12

    .line 124
    .line 125
    shl-int/lit8 v5, v5, 0xc

    .line 126
    .line 127
    or-int/2addr v3, v5

    .line 128
    shl-int/lit8 v5, v14, 0x6

    .line 129
    .line 130
    or-int/2addr v3, v5

    .line 131
    or-int/2addr v3, v8

    .line 132
    add-int/lit8 v5, v11, 0x1

    .line 133
    .line 134
    shr-int/lit8 v8, v3, 0x10

    .line 135
    .line 136
    int-to-byte v8, v8

    .line 137
    aput-byte v8, v6, v11

    .line 138
    .line 139
    add-int/lit8 v8, v11, 0x2

    .line 140
    .line 141
    shr-int/lit8 v9, v3, 0x8

    .line 142
    .line 143
    int-to-byte v9, v9

    .line 144
    aput-byte v9, v6, v5

    .line 145
    .line 146
    add-int/lit8 v11, v11, 0x3

    .line 147
    .line 148
    int-to-byte v3, v3

    .line 149
    aput-byte v3, v6, v8

    .line 150
    .line 151
    move/from16 v9, v17

    .line 152
    .line 153
    move/from16 v5, v18

    .line 154
    .line 155
    const/16 v8, 0x12

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_5
    move/from16 v18, v5

    .line 159
    .line 160
    :goto_4
    if-lt v9, v7, :cond_8

    .line 161
    .line 162
    goto/16 :goto_a

    .line 163
    .line 164
    :cond_6
    :goto_5
    move/from16 v18, v5

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_7
    const/16 p0, 0x0

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_8
    :goto_6
    add-int/lit8 v2, v9, 0x1

    .line 171
    .line 172
    aget-byte v3, v0, v9

    .line 173
    .line 174
    and-int/lit16 v5, v3, 0xff

    .line 175
    .line 176
    aget v5, v15, v5

    .line 177
    .line 178
    if-gez v5, :cond_c

    .line 179
    .line 180
    const/4 v8, -0x2

    .line 181
    if-ne v5, v8, :cond_b

    .line 182
    .line 183
    if-ne v10, v13, :cond_9

    .line 184
    .line 185
    if-eq v2, v7, :cond_a

    .line 186
    .line 187
    add-int/lit8 v9, v9, 0x2

    .line 188
    .line 189
    aget-byte v0, v0, v2

    .line 190
    .line 191
    if-ne v0, v4, :cond_a

    .line 192
    .line 193
    :goto_7
    const/16 v3, 0x12

    .line 194
    .line 195
    goto :goto_8

    .line 196
    :cond_9
    move v9, v2

    .line 197
    goto :goto_7

    .line 198
    :goto_8
    if-eq v10, v3, :cond_a

    .line 199
    .line 200
    goto :goto_a

    .line 201
    :cond_a
    const-string v0, "Input byte array has wrong 4-byte ending unit"

    .line 202
    .line 203
    invoke-static {v0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return-object p0

    .line 207
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 208
    .line 209
    const/16 v1, 0x10

    .line 210
    .line 211
    invoke-static {v3, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v3, "Illegal base64 character "

    .line 218
    .line 219
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v0

    .line 233
    :cond_c
    const/16 v3, 0x12

    .line 234
    .line 235
    shl-int/2addr v5, v10

    .line 236
    or-int/2addr v5, v12

    .line 237
    add-int/lit8 v10, v10, -0x6

    .line 238
    .line 239
    if-gez v10, :cond_d

    .line 240
    .line 241
    add-int/lit8 v8, v11, 0x1

    .line 242
    .line 243
    shr-int/lit8 v9, v5, 0x10

    .line 244
    .line 245
    int-to-byte v9, v9

    .line 246
    aput-byte v9, v6, v11

    .line 247
    .line 248
    add-int/lit8 v9, v11, 0x2

    .line 249
    .line 250
    shr-int/lit8 v10, v5, 0x8

    .line 251
    .line 252
    int-to-byte v10, v10

    .line 253
    aput-byte v10, v6, v8

    .line 254
    .line 255
    add-int/lit8 v11, v11, 0x3

    .line 256
    .line 257
    int-to-byte v5, v5

    .line 258
    aput-byte v5, v6, v9

    .line 259
    .line 260
    move v10, v3

    .line 261
    const/4 v12, 0x0

    .line 262
    goto :goto_9

    .line 263
    :cond_d
    move v12, v5

    .line 264
    :goto_9
    move v9, v2

    .line 265
    move v8, v3

    .line 266
    move/from16 v5, v18

    .line 267
    .line 268
    goto/16 :goto_2

    .line 269
    .line 270
    :cond_e
    const/16 p0, 0x0

    .line 271
    .line 272
    :goto_a
    if-ne v10, v13, :cond_f

    .line 273
    .line 274
    add-int/lit8 v0, v11, 0x1

    .line 275
    .line 276
    const/16 v19, 0x10

    .line 277
    .line 278
    shr-int/lit8 v2, v12, 0x10

    .line 279
    .line 280
    int-to-byte v2, v2

    .line 281
    aput-byte v2, v6, v11

    .line 282
    .line 283
    move v11, v0

    .line 284
    goto :goto_b

    .line 285
    :cond_f
    if-nez v10, :cond_10

    .line 286
    .line 287
    add-int/lit8 v0, v11, 0x1

    .line 288
    .line 289
    shr-int/lit8 v2, v12, 0x10

    .line 290
    .line 291
    int-to-byte v2, v2

    .line 292
    aput-byte v2, v6, v11

    .line 293
    .line 294
    add-int/lit8 v11, v11, 0x2

    .line 295
    .line 296
    shr-int/lit8 v2, v12, 0x8

    .line 297
    .line 298
    int-to-byte v2, v2

    .line 299
    aput-byte v2, v6, v0

    .line 300
    .line 301
    goto :goto_b

    .line 302
    :cond_10
    const/16 v0, 0xc

    .line 303
    .line 304
    if-eq v10, v0, :cond_13

    .line 305
    .line 306
    :goto_b
    if-lt v9, v7, :cond_12

    .line 307
    .line 308
    if-eq v11, v1, :cond_11

    .line 309
    .line 310
    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    return-object v0

    .line 315
    :cond_11
    return-object v6

    .line 316
    :cond_12
    const-string v0, "Input byte array has incorrect ending byte at "

    .line 317
    .line 318
    invoke-static {v0, v9}, Lj$/nio/file/m;->n(Ljava/lang/String;I)V

    .line 319
    .line 320
    .line 321
    return-object p0

    .line 322
    :cond_13
    const-string v0, "Last unit does not have enough valid bits"

    .line 323
    .line 324
    invoke-static {v0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    return-object p0

    .line 328
    :cond_14
    const/16 p0, 0x0

    .line 329
    .line 330
    const-string v0, "Input byte[] should at least have 2 bytes for base64 bytes"

    .line 331
    .line 332
    invoke-static {v0}, Lj$/nio/file/m;->c(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    return-object p0
.end method
