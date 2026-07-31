.class public final Lcom/google/protobuf/Utf8$SafeProcessor;
.super Landroidx/work/OperationKt;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/Utf8$SafeProcessor;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final decodeUtf8([BII)Ljava/lang/String;
    .locals 9

    .line 1
    iget p0, p0, Lcom/google/protobuf/Utf8$SafeProcessor;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 11
    .line 12
    .line 13
    const v1, 0xfffd

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-gez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    add-int/2addr p3, p2

    .line 28
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    :goto_0
    return-object p0

    .line 39
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    throw p0

    .line 44
    :pswitch_0
    or-int p0, p2, p3

    .line 45
    .line 46
    array-length v0, p1

    .line 47
    sub-int/2addr v0, p2

    .line 48
    sub-int/2addr v0, p3

    .line 49
    or-int/2addr p0, v0

    .line 50
    const/4 v0, 0x0

    .line 51
    if-ltz p0, :cond_10

    .line 52
    .line 53
    add-int p0, p2, p3

    .line 54
    .line 55
    new-array p3, p3, [C

    .line 56
    .line 57
    move v1, v0

    .line 58
    :goto_1
    if-ge p2, p0, :cond_2

    .line 59
    .line 60
    aget-byte v2, p1, p2

    .line 61
    .line 62
    if-ltz v2, :cond_2

    .line 63
    .line 64
    add-int/lit8 p2, p2, 0x1

    .line 65
    .line 66
    add-int/lit8 v3, v1, 0x1

    .line 67
    .line 68
    int-to-char v2, v2

    .line 69
    aput-char v2, p3, v1

    .line 70
    .line 71
    move v1, v3

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_2
    if-ge p2, p0, :cond_f

    .line 74
    .line 75
    add-int/lit8 v2, p2, 0x1

    .line 76
    .line 77
    aget-byte v3, p1, p2

    .line 78
    .line 79
    if-ltz v3, :cond_4

    .line 80
    .line 81
    add-int/lit8 p2, v1, 0x1

    .line 82
    .line 83
    int-to-char v3, v3

    .line 84
    aput-char v3, p3, v1

    .line 85
    .line 86
    :goto_3
    if-ge v2, p0, :cond_3

    .line 87
    .line 88
    aget-byte v1, p1, v2

    .line 89
    .line 90
    if-ltz v1, :cond_3

    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    add-int/lit8 v3, p2, 0x1

    .line 95
    .line 96
    int-to-char v1, v1

    .line 97
    aput-char v1, p3, p2

    .line 98
    .line 99
    move p2, v3

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    move v1, p2

    .line 102
    move p2, v2

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    const/16 v4, -0x20

    .line 105
    .line 106
    if-ge v3, v4, :cond_7

    .line 107
    .line 108
    if-ge v2, p0, :cond_6

    .line 109
    .line 110
    add-int/lit8 p2, p2, 0x2

    .line 111
    .line 112
    aget-byte v2, p1, v2

    .line 113
    .line 114
    add-int/lit8 v4, v1, 0x1

    .line 115
    .line 116
    const/16 v5, -0x3e

    .line 117
    .line 118
    if-lt v3, v5, :cond_5

    .line 119
    .line 120
    invoke-static {v2}, Landroidx/core/os/BundleKt;->isNotTrailingByte(B)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-nez v5, :cond_5

    .line 125
    .line 126
    and-int/lit8 v3, v3, 0x1f

    .line 127
    .line 128
    shl-int/lit8 v3, v3, 0x6

    .line 129
    .line 130
    and-int/lit8 v2, v2, 0x3f

    .line 131
    .line 132
    or-int/2addr v2, v3

    .line 133
    int-to-char v2, v2

    .line 134
    aput-char v2, p3, v1

    .line 135
    .line 136
    move v1, v4

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    throw p0

    .line 143
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    throw p0

    .line 148
    :cond_7
    const/16 v5, -0x10

    .line 149
    .line 150
    if-ge v3, v5, :cond_c

    .line 151
    .line 152
    add-int/lit8 v5, p0, -0x1

    .line 153
    .line 154
    if-ge v2, v5, :cond_b

    .line 155
    .line 156
    add-int/lit8 v5, p2, 0x2

    .line 157
    .line 158
    aget-byte v2, p1, v2

    .line 159
    .line 160
    add-int/lit8 p2, p2, 0x3

    .line 161
    .line 162
    aget-byte v5, p1, v5

    .line 163
    .line 164
    add-int/lit8 v6, v1, 0x1

    .line 165
    .line 166
    invoke-static {v2}, Landroidx/core/os/BundleKt;->isNotTrailingByte(B)Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-nez v7, :cond_a

    .line 171
    .line 172
    const/16 v7, -0x60

    .line 173
    .line 174
    if-ne v3, v4, :cond_8

    .line 175
    .line 176
    if-lt v2, v7, :cond_a

    .line 177
    .line 178
    :cond_8
    const/16 v4, -0x13

    .line 179
    .line 180
    if-ne v3, v4, :cond_9

    .line 181
    .line 182
    if-ge v2, v7, :cond_a

    .line 183
    .line 184
    :cond_9
    invoke-static {v5}, Landroidx/core/os/BundleKt;->isNotTrailingByte(B)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-nez v4, :cond_a

    .line 189
    .line 190
    and-int/lit8 v3, v3, 0xf

    .line 191
    .line 192
    shl-int/lit8 v3, v3, 0xc

    .line 193
    .line 194
    and-int/lit8 v2, v2, 0x3f

    .line 195
    .line 196
    shl-int/lit8 v2, v2, 0x6

    .line 197
    .line 198
    or-int/2addr v2, v3

    .line 199
    and-int/lit8 v3, v5, 0x3f

    .line 200
    .line 201
    or-int/2addr v2, v3

    .line 202
    int-to-char v2, v2

    .line 203
    aput-char v2, p3, v1

    .line 204
    .line 205
    move v1, v6

    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    throw p0

    .line 213
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    throw p0

    .line 218
    :cond_c
    add-int/lit8 v4, p0, -0x2

    .line 219
    .line 220
    if-ge v2, v4, :cond_e

    .line 221
    .line 222
    add-int/lit8 v4, p2, 0x2

    .line 223
    .line 224
    aget-byte v2, p1, v2

    .line 225
    .line 226
    add-int/lit8 v5, p2, 0x3

    .line 227
    .line 228
    aget-byte v4, p1, v4

    .line 229
    .line 230
    add-int/lit8 p2, p2, 0x4

    .line 231
    .line 232
    aget-byte v5, p1, v5

    .line 233
    .line 234
    add-int/lit8 v6, v1, 0x1

    .line 235
    .line 236
    invoke-static {v2}, Landroidx/core/os/BundleKt;->isNotTrailingByte(B)Z

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    if-nez v7, :cond_d

    .line 241
    .line 242
    shl-int/lit8 v7, v3, 0x1c

    .line 243
    .line 244
    add-int/lit8 v8, v2, 0x70

    .line 245
    .line 246
    add-int/2addr v8, v7

    .line 247
    shr-int/lit8 v7, v8, 0x1e

    .line 248
    .line 249
    if-nez v7, :cond_d

    .line 250
    .line 251
    invoke-static {v4}, Landroidx/core/os/BundleKt;->isNotTrailingByte(B)Z

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-nez v7, :cond_d

    .line 256
    .line 257
    invoke-static {v5}, Landroidx/core/os/BundleKt;->isNotTrailingByte(B)Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-nez v7, :cond_d

    .line 262
    .line 263
    and-int/lit8 v3, v3, 0x7

    .line 264
    .line 265
    shl-int/lit8 v3, v3, 0x12

    .line 266
    .line 267
    and-int/lit8 v2, v2, 0x3f

    .line 268
    .line 269
    shl-int/lit8 v2, v2, 0xc

    .line 270
    .line 271
    or-int/2addr v2, v3

    .line 272
    and-int/lit8 v3, v4, 0x3f

    .line 273
    .line 274
    shl-int/lit8 v3, v3, 0x6

    .line 275
    .line 276
    or-int/2addr v2, v3

    .line 277
    and-int/lit8 v3, v5, 0x3f

    .line 278
    .line 279
    or-int/2addr v2, v3

    .line 280
    ushr-int/lit8 v3, v2, 0xa

    .line 281
    .line 282
    const v4, 0xd7c0

    .line 283
    .line 284
    .line 285
    add-int/2addr v3, v4

    .line 286
    int-to-char v3, v3

    .line 287
    aput-char v3, p3, v1

    .line 288
    .line 289
    and-int/lit16 v2, v2, 0x3ff

    .line 290
    .line 291
    const v3, 0xdc00

    .line 292
    .line 293
    .line 294
    add-int/2addr v2, v3

    .line 295
    int-to-char v2, v2

    .line 296
    aput-char v2, p3, v6

    .line 297
    .line 298
    add-int/lit8 v1, v1, 0x2

    .line 299
    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :cond_d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    throw p0

    .line 307
    :cond_e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    throw p0

    .line 312
    :cond_f
    new-instance p0, Ljava/lang/String;

    .line 313
    .line 314
    invoke-direct {p0, p3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 315
    .line 316
    .line 317
    return-object p0

    .line 318
    :cond_10
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 319
    .line 320
    array-length p1, p1

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object p3

    .line 333
    const/4 v1, 0x3

    .line 334
    new-array v1, v1, [Ljava/lang/Object;

    .line 335
    .line 336
    aput-object p1, v1, v0

    .line 337
    .line 338
    const/4 p1, 0x1

    .line 339
    aput-object p2, v1, p1

    .line 340
    .line 341
    const/4 p1, 0x2

    .line 342
    aput-object p3, v1, p1

    .line 343
    .line 344
    const-string p1, "buffer length=%d, index=%d, size=%d"

    .line 345
    .line 346
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw p0

    .line 354
    nop

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final encodeUtf8(Ljava/lang/String;[BII)I
    .locals 8

    .line 1
    iget p0, p0, Lcom/google/protobuf/Utf8$SafeProcessor;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p3, p4}, Landroidx/work/OperationKt;->encodeUtf8Naive(Ljava/lang/String;[BII)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int v0, p3, p4

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    const/16 v2, 0x80

    .line 19
    .line 20
    if-ge v1, p0, :cond_0

    .line 21
    .line 22
    add-int v3, v1, p3

    .line 23
    .line 24
    if-ge v3, v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ge v4, v2, :cond_0

    .line 31
    .line 32
    int-to-byte v2, v4

    .line 33
    aput-byte v2, p2, v3

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-ne v1, p0, :cond_1

    .line 39
    .line 40
    add-int/2addr p3, p0

    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :cond_1
    add-int v3, p3, v1

    .line 44
    .line 45
    :goto_1
    if-ge v1, p0, :cond_b

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-ge v4, v2, :cond_2

    .line 52
    .line 53
    if-ge v3, v0, :cond_2

    .line 54
    .line 55
    add-int/lit8 v5, v3, 0x1

    .line 56
    .line 57
    int-to-byte v4, v4

    .line 58
    aput-byte v4, p2, v3

    .line 59
    .line 60
    move v3, v5

    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_2
    const/16 v5, 0x800

    .line 64
    .line 65
    if-ge v4, v5, :cond_3

    .line 66
    .line 67
    add-int/lit8 v5, v0, -0x2

    .line 68
    .line 69
    if-gt v3, v5, :cond_3

    .line 70
    .line 71
    add-int/lit8 v5, v3, 0x1

    .line 72
    .line 73
    ushr-int/lit8 v6, v4, 0x6

    .line 74
    .line 75
    or-int/lit16 v6, v6, 0x3c0

    .line 76
    .line 77
    int-to-byte v6, v6

    .line 78
    aput-byte v6, p2, v3

    .line 79
    .line 80
    add-int/lit8 v3, v3, 0x2

    .line 81
    .line 82
    and-int/lit8 v4, v4, 0x3f

    .line 83
    .line 84
    or-int/2addr v4, v2

    .line 85
    int-to-byte v4, v4

    .line 86
    aput-byte v4, p2, v5

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const v5, 0xdfff

    .line 90
    .line 91
    .line 92
    const v6, 0xd800

    .line 93
    .line 94
    .line 95
    if-lt v4, v6, :cond_4

    .line 96
    .line 97
    if-ge v5, v4, :cond_5

    .line 98
    .line 99
    :cond_4
    add-int/lit8 v7, v0, -0x3

    .line 100
    .line 101
    if-gt v3, v7, :cond_5

    .line 102
    .line 103
    add-int/lit8 v5, v3, 0x1

    .line 104
    .line 105
    ushr-int/lit8 v6, v4, 0xc

    .line 106
    .line 107
    or-int/lit16 v6, v6, 0x1e0

    .line 108
    .line 109
    int-to-byte v6, v6

    .line 110
    aput-byte v6, p2, v3

    .line 111
    .line 112
    add-int/lit8 v6, v3, 0x2

    .line 113
    .line 114
    ushr-int/lit8 v7, v4, 0x6

    .line 115
    .line 116
    and-int/lit8 v7, v7, 0x3f

    .line 117
    .line 118
    or-int/2addr v7, v2

    .line 119
    int-to-byte v7, v7

    .line 120
    aput-byte v7, p2, v5

    .line 121
    .line 122
    add-int/lit8 v3, v3, 0x3

    .line 123
    .line 124
    and-int/lit8 v4, v4, 0x3f

    .line 125
    .line 126
    or-int/2addr v4, v2

    .line 127
    int-to-byte v4, v4

    .line 128
    aput-byte v4, p2, v6

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    add-int/lit8 v7, v0, -0x4

    .line 132
    .line 133
    if-gt v3, v7, :cond_8

    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eq v1, v5, :cond_7

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    invoke-static {v4, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-nez v6, :cond_6

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    add-int/lit8 v5, v3, 0x1

    .line 159
    .line 160
    ushr-int/lit8 v6, v4, 0x12

    .line 161
    .line 162
    or-int/lit16 v6, v6, 0xf0

    .line 163
    .line 164
    int-to-byte v6, v6

    .line 165
    aput-byte v6, p2, v3

    .line 166
    .line 167
    add-int/lit8 v6, v3, 0x2

    .line 168
    .line 169
    ushr-int/lit8 v7, v4, 0xc

    .line 170
    .line 171
    and-int/lit8 v7, v7, 0x3f

    .line 172
    .line 173
    or-int/2addr v7, v2

    .line 174
    int-to-byte v7, v7

    .line 175
    aput-byte v7, p2, v5

    .line 176
    .line 177
    add-int/lit8 v5, v3, 0x3

    .line 178
    .line 179
    ushr-int/lit8 v7, v4, 0x6

    .line 180
    .line 181
    and-int/lit8 v7, v7, 0x3f

    .line 182
    .line 183
    or-int/2addr v7, v2

    .line 184
    int-to-byte v7, v7

    .line 185
    aput-byte v7, p2, v6

    .line 186
    .line 187
    add-int/lit8 v3, v3, 0x4

    .line 188
    .line 189
    and-int/lit8 v4, v4, 0x3f

    .line 190
    .line 191
    or-int/2addr v4, v2

    .line 192
    int-to-byte v4, v4

    .line 193
    aput-byte v4, p2, v5

    .line 194
    .line 195
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :cond_7
    :goto_3
    invoke-static {p1, p2, p3, p4}, Landroidx/work/OperationKt;->encodeUtf8Naive(Ljava/lang/String;[BII)I

    .line 200
    .line 201
    .line 202
    move-result p3

    .line 203
    goto :goto_4

    .line 204
    :cond_8
    if-gt v6, v4, :cond_a

    .line 205
    .line 206
    if-gt v4, v5, :cond_a

    .line 207
    .line 208
    add-int/lit8 v1, v1, 0x1

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    if-eq v1, p0, :cond_9

    .line 215
    .line 216
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    invoke-static {v4, p0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-nez p0, :cond_a

    .line 225
    .line 226
    :cond_9
    invoke-static {p1, p2, p3, p4}, Landroidx/work/OperationKt;->encodeUtf8Naive(Ljava/lang/String;[BII)I

    .line 227
    .line 228
    .line 229
    move-result p3

    .line 230
    goto :goto_4

    .line 231
    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 232
    .line 233
    const-string p1, "Not enough space in output buffer to encode UTF-8 string"

    .line 234
    .line 235
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p0

    .line 239
    :cond_b
    move p3, v3

    .line 240
    :goto_4
    return p3

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isValidUtf8([BII)Z
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget v2, v2, Lcom/google/protobuf/Utf8$SafeProcessor;->$r8$classId:I

    .line 10
    .line 11
    const/16 v5, -0x10

    .line 12
    .line 13
    const/16 v6, -0x3e

    .line 14
    .line 15
    const/16 v7, -0x41

    .line 16
    .line 17
    const/16 v8, -0x20

    .line 18
    .line 19
    const/16 v9, -0x60

    .line 20
    .line 21
    packed-switch v2, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    or-int v2, v1, v3

    .line 25
    .line 26
    array-length v12, v0

    .line 27
    sub-int/2addr v12, v3

    .line 28
    or-int/2addr v2, v12

    .line 29
    if-ltz v2, :cond_14

    .line 30
    .line 31
    int-to-long v14, v1

    .line 32
    sub-int v1, v3, v1

    .line 33
    .line 34
    const/16 v2, 0x10

    .line 35
    .line 36
    const-wide/16 v16, 0x1

    .line 37
    .line 38
    if-ge v1, v2, :cond_0

    .line 39
    .line 40
    const/16 p0, 0x0

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    const/16 v18, 0x1

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_0
    long-to-int v2, v14

    .line 47
    and-int/lit8 v2, v2, 0x7

    .line 48
    .line 49
    rsub-int/lit8 v2, v2, 0x8

    .line 50
    .line 51
    move-wide v10, v14

    .line 52
    const/16 p0, 0x0

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    const/16 v18, 0x1

    .line 56
    .line 57
    :goto_0
    if-ge v3, v2, :cond_2

    .line 58
    .line 59
    add-long v19, v10, v16

    .line 60
    .line 61
    invoke-static {v0, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-gez v10, :cond_1

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    move-wide/from16 v10, v19

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    :goto_1
    add-int/lit8 v2, v3, 0x8

    .line 74
    .line 75
    if-gt v2, v1, :cond_4

    .line 76
    .line 77
    sget-wide v19, Lcom/google/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    .line 78
    .line 79
    add-long v12, v19, v10

    .line 80
    .line 81
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 82
    .line 83
    invoke-virtual {v4, v12, v13, v0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(JLjava/lang/Object;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v12

    .line 87
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    and-long v12, v12, v22

    .line 93
    .line 94
    const-wide/16 v22, 0x0

    .line 95
    .line 96
    cmp-long v4, v12, v22

    .line 97
    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const-wide/16 v3, 0x8

    .line 102
    .line 103
    add-long/2addr v10, v3

    .line 104
    move v3, v2

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    :goto_2
    if-ge v3, v1, :cond_6

    .line 107
    .line 108
    add-long v12, v10, v16

    .line 109
    .line 110
    invoke-static {v0, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-gez v2, :cond_5

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    move-wide v10, v12

    .line 120
    goto :goto_2

    .line 121
    :cond_6
    move v3, v1

    .line 122
    :goto_3
    sub-int/2addr v1, v3

    .line 123
    int-to-long v2, v3

    .line 124
    add-long/2addr v14, v2

    .line 125
    :cond_7
    :goto_4
    move/from16 v2, p0

    .line 126
    .line 127
    :goto_5
    if-lez v1, :cond_9

    .line 128
    .line 129
    add-long v2, v14, v16

    .line 130
    .line 131
    invoke-static {v0, v14, v15}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-ltz v4, :cond_8

    .line 136
    .line 137
    add-int/lit8 v1, v1, -0x1

    .line 138
    .line 139
    move-wide v14, v2

    .line 140
    move v2, v4

    .line 141
    goto :goto_5

    .line 142
    :cond_8
    move-wide v14, v2

    .line 143
    move v2, v4

    .line 144
    :cond_9
    if-nez v1, :cond_a

    .line 145
    .line 146
    move/from16 v10, v18

    .line 147
    .line 148
    goto/16 :goto_7

    .line 149
    .line 150
    :cond_a
    add-int/lit8 v3, v1, -0x1

    .line 151
    .line 152
    if-ge v2, v8, :cond_e

    .line 153
    .line 154
    if-nez v3, :cond_c

    .line 155
    .line 156
    :cond_b
    :goto_6
    move/from16 v10, p0

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_c
    add-int/lit8 v1, v1, -0x2

    .line 160
    .line 161
    if-lt v2, v6, :cond_b

    .line 162
    .line 163
    add-long v2, v14, v16

    .line 164
    .line 165
    invoke-static {v0, v14, v15}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-le v4, v7, :cond_d

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_d
    move-wide v14, v2

    .line 173
    goto :goto_4

    .line 174
    :cond_e
    const-wide/16 v10, 0x2

    .line 175
    .line 176
    if-ge v2, v5, :cond_12

    .line 177
    .line 178
    const/4 v4, 0x2

    .line 179
    if-ge v3, v4, :cond_f

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_f
    add-int/lit8 v1, v1, -0x3

    .line 183
    .line 184
    add-long v3, v14, v16

    .line 185
    .line 186
    invoke-static {v0, v14, v15}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    if-gt v12, v7, :cond_b

    .line 191
    .line 192
    if-ne v2, v8, :cond_10

    .line 193
    .line 194
    if-lt v12, v9, :cond_b

    .line 195
    .line 196
    :cond_10
    const/16 v13, -0x13

    .line 197
    .line 198
    if-ne v2, v13, :cond_11

    .line 199
    .line 200
    if-ge v12, v9, :cond_b

    .line 201
    .line 202
    :cond_11
    add-long/2addr v14, v10

    .line 203
    invoke-static {v0, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-le v2, v7, :cond_7

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_12
    const/4 v4, 0x3

    .line 211
    if-ge v3, v4, :cond_13

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_13
    add-int/lit8 v1, v1, -0x4

    .line 215
    .line 216
    add-long v3, v14, v16

    .line 217
    .line 218
    invoke-static {v0, v14, v15}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    if-gt v12, v7, :cond_b

    .line 223
    .line 224
    shl-int/lit8 v2, v2, 0x1c

    .line 225
    .line 226
    add-int/lit8 v12, v12, 0x70

    .line 227
    .line 228
    add-int/2addr v12, v2

    .line 229
    shr-int/lit8 v2, v12, 0x1e

    .line 230
    .line 231
    if-nez v2, :cond_b

    .line 232
    .line 233
    add-long/2addr v10, v14

    .line 234
    invoke-static {v0, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-gt v2, v7, :cond_b

    .line 239
    .line 240
    const-wide/16 v2, 0x3

    .line 241
    .line 242
    add-long/2addr v14, v2

    .line 243
    invoke-static {v0, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-le v2, v7, :cond_7

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :goto_7
    return v10

    .line 251
    :cond_14
    const/16 p0, 0x0

    .line 252
    .line 253
    const/16 v18, 0x1

    .line 254
    .line 255
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 256
    .line 257
    array-length v0, v0

    .line 258
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    const/4 v4, 0x3

    .line 271
    new-array v4, v4, [Ljava/lang/Object;

    .line 272
    .line 273
    aput-object v0, v4, p0

    .line 274
    .line 275
    aput-object v1, v4, v18

    .line 276
    .line 277
    const/16 v21, 0x2

    .line 278
    .line 279
    aput-object v3, v4, v21

    .line 280
    .line 281
    const-string v0, "Array length=%d, index=%d, limit=%d"

    .line 282
    .line 283
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw v2

    .line 291
    :pswitch_0
    const/16 p0, 0x0

    .line 292
    .line 293
    const/16 v18, 0x1

    .line 294
    .line 295
    :goto_8
    if-ge v1, v3, :cond_15

    .line 296
    .line 297
    aget-byte v2, v0, v1

    .line 298
    .line 299
    if-ltz v2, :cond_15

    .line 300
    .line 301
    add-int/lit8 v1, v1, 0x1

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_15
    if-lt v1, v3, :cond_16

    .line 305
    .line 306
    :goto_9
    move/from16 v10, v18

    .line 307
    .line 308
    goto/16 :goto_c

    .line 309
    .line 310
    :cond_16
    :goto_a
    if-lt v1, v3, :cond_17

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_17
    add-int/lit8 v2, v1, 0x1

    .line 314
    .line 315
    aget-byte v4, v0, v1

    .line 316
    .line 317
    if-gez v4, :cond_21

    .line 318
    .line 319
    if-ge v4, v8, :cond_1a

    .line 320
    .line 321
    if-lt v2, v3, :cond_18

    .line 322
    .line 323
    goto :goto_b

    .line 324
    :cond_18
    if-lt v4, v6, :cond_20

    .line 325
    .line 326
    add-int/lit8 v1, v1, 0x2

    .line 327
    .line 328
    aget-byte v2, v0, v2

    .line 329
    .line 330
    if-le v2, v7, :cond_19

    .line 331
    .line 332
    goto :goto_b

    .line 333
    :cond_19
    const/16 v13, -0x13

    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_1a
    if-ge v4, v5, :cond_1e

    .line 337
    .line 338
    add-int/lit8 v10, v3, -0x1

    .line 339
    .line 340
    if-lt v2, v10, :cond_1b

    .line 341
    .line 342
    goto :goto_b

    .line 343
    :cond_1b
    add-int/lit8 v10, v1, 0x2

    .line 344
    .line 345
    aget-byte v2, v0, v2

    .line 346
    .line 347
    if-gt v2, v7, :cond_20

    .line 348
    .line 349
    if-ne v4, v8, :cond_1c

    .line 350
    .line 351
    if-lt v2, v9, :cond_20

    .line 352
    .line 353
    :cond_1c
    const/16 v13, -0x13

    .line 354
    .line 355
    if-ne v4, v13, :cond_1d

    .line 356
    .line 357
    if-ge v2, v9, :cond_20

    .line 358
    .line 359
    :cond_1d
    add-int/lit8 v1, v1, 0x3

    .line 360
    .line 361
    aget-byte v2, v0, v10

    .line 362
    .line 363
    if-le v2, v7, :cond_16

    .line 364
    .line 365
    goto :goto_b

    .line 366
    :cond_1e
    const/16 v13, -0x13

    .line 367
    .line 368
    add-int/lit8 v10, v3, -0x2

    .line 369
    .line 370
    if-lt v2, v10, :cond_1f

    .line 371
    .line 372
    goto :goto_b

    .line 373
    :cond_1f
    add-int/lit8 v10, v1, 0x2

    .line 374
    .line 375
    aget-byte v2, v0, v2

    .line 376
    .line 377
    if-gt v2, v7, :cond_20

    .line 378
    .line 379
    shl-int/lit8 v4, v4, 0x1c

    .line 380
    .line 381
    add-int/lit8 v2, v2, 0x70

    .line 382
    .line 383
    add-int/2addr v2, v4

    .line 384
    shr-int/lit8 v2, v2, 0x1e

    .line 385
    .line 386
    if-nez v2, :cond_20

    .line 387
    .line 388
    add-int/lit8 v2, v1, 0x3

    .line 389
    .line 390
    aget-byte v4, v0, v10

    .line 391
    .line 392
    if-gt v4, v7, :cond_20

    .line 393
    .line 394
    add-int/lit8 v1, v1, 0x4

    .line 395
    .line 396
    aget-byte v2, v0, v2

    .line 397
    .line 398
    if-le v2, v7, :cond_16

    .line 399
    .line 400
    :cond_20
    :goto_b
    move/from16 v10, p0

    .line 401
    .line 402
    :goto_c
    return v10

    .line 403
    :cond_21
    move v1, v2

    .line 404
    goto :goto_a

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
