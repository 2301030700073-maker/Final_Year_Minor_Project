.class public final Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;
.super Lorg/apache/james/mime4j/io/LineReaderInputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public atBoundary:Z

.field public final boundary:[B

.field public boundaryLen:I

.field public final buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

.field public completed:Z

.field public eof:Z

.field public initialLength:I

.field public lastPart:Z

.field public limit:I


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    mul-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    const/16 v1, 0x1000

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    move v0, v1

    .line 15
    :cond_0
    iget-object v1, p1, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    .line 16
    .line 17
    array-length v1, v1

    .line 18
    if-le v0, v1, :cond_2

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufferLen()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-lez v1, :cond_1

    .line 27
    .line 28
    iget-object v2, p1, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    .line 29
    .line 30
    iget v3, p1, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 31
    .line 32
    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iput-object v0, p1, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    .line 36
    .line 37
    :cond_2
    iput-object p1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    .line 41
    .line 42
    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 44
    .line 45
    iput-boolean p1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->atBoundary:Z

    .line 46
    .line 47
    iput p1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 48
    .line 49
    iput-boolean p1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->lastPart:Z

    .line 50
    .line 51
    iput v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->initialLength:I

    .line 52
    .line 53
    iput-boolean p1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    add-int/lit8 v0, v0, 0x2

    .line 60
    .line 61
    new-array v0, v0, [B

    .line 62
    .line 63
    iput-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    .line 64
    .line 65
    const/16 v1, 0x2d

    .line 66
    .line 67
    aput-byte v1, v0, p1

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    aput-byte v1, v0, v2

    .line 71
    .line 72
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-ge p1, v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    int-to-byte v0, v0

    .line 83
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    .line 84
    .line 85
    add-int/lit8 v2, p1, 0x2

    .line 86
    .line 87
    aput-byte v0, v1, v2

    .line 88
    .line 89
    add-int/lit8 p1, p1, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer$1()I

    .line 93
    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final fillBuffer$1()I
    .locals 15

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    iget-object v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->fillBuffer()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    iput-boolean v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v2

    .line 27
    :cond_2
    :goto_0
    iget v5, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 28
    .line 29
    :goto_1
    iget v6, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 30
    .line 31
    sub-int v7, v6, v5

    .line 32
    .line 33
    iget-object v8, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->shiftTable:[I

    .line 34
    .line 35
    iget-object v9, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    .line 36
    .line 37
    if-eqz v9, :cond_17

    .line 38
    .line 39
    iget v10, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 40
    .line 41
    if-lt v5, v10, :cond_16

    .line 42
    .line 43
    if-ltz v7, :cond_16

    .line 44
    .line 45
    add-int v10, v5, v7

    .line 46
    .line 47
    if-gt v10, v6, :cond_16

    .line 48
    .line 49
    array-length v6, v9

    .line 50
    if-ge v7, v6, :cond_4

    .line 51
    .line 52
    :cond_3
    :goto_2
    move v10, v1

    .line 53
    goto :goto_7

    .line 54
    :cond_4
    iget-object v6, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->cachedShiftPattern:[B

    .line 55
    .line 56
    if-eq v9, v6, :cond_7

    .line 57
    .line 58
    move v6, v2

    .line 59
    :goto_3
    array-length v10, v8

    .line 60
    if-ge v6, v10, :cond_5

    .line 61
    .line 62
    array-length v10, v9

    .line 63
    add-int/2addr v10, v3

    .line 64
    aput v10, v8, v6

    .line 65
    .line 66
    add-int/lit8 v6, v6, 0x1

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_5
    move v6, v2

    .line 70
    :goto_4
    array-length v10, v9

    .line 71
    if-ge v6, v10, :cond_6

    .line 72
    .line 73
    aget-byte v10, v9, v6

    .line 74
    .line 75
    and-int/lit16 v10, v10, 0xff

    .line 76
    .line 77
    array-length v11, v9

    .line 78
    sub-int/2addr v11, v6

    .line 79
    aput v11, v8, v10

    .line 80
    .line 81
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_6
    iput-object v9, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->cachedShiftPattern:[B

    .line 85
    .line 86
    :cond_7
    move v6, v2

    .line 87
    :goto_5
    array-length v10, v9

    .line 88
    sub-int v10, v7, v10

    .line 89
    .line 90
    if-gt v6, v10, :cond_3

    .line 91
    .line 92
    add-int v10, v5, v6

    .line 93
    .line 94
    move v11, v2

    .line 95
    :goto_6
    array-length v12, v9

    .line 96
    if-ge v11, v12, :cond_a

    .line 97
    .line 98
    iget-object v12, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    .line 99
    .line 100
    add-int v13, v10, v11

    .line 101
    .line 102
    aget-byte v13, v12, v13

    .line 103
    .line 104
    aget-byte v14, v9, v11

    .line 105
    .line 106
    if-eq v13, v14, :cond_9

    .line 107
    .line 108
    array-length v11, v9

    .line 109
    add-int/2addr v10, v11

    .line 110
    array-length v11, v12

    .line 111
    if-lt v10, v11, :cond_8

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_8
    aget-byte v10, v12, v10

    .line 115
    .line 116
    and-int/lit16 v10, v10, 0xff

    .line 117
    .line 118
    aget v10, v8, v10

    .line 119
    .line 120
    add-int/2addr v6, v10

    .line 121
    goto :goto_5

    .line 122
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_a
    :goto_7
    const/16 v5, 0xa

    .line 126
    .line 127
    if-ne v10, v1, :cond_b

    .line 128
    .line 129
    goto :goto_8

    .line 130
    :cond_b
    iget v6, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 131
    .line 132
    if-eq v10, v6, :cond_c

    .line 133
    .line 134
    add-int/lit8 v6, v10, -0x1

    .line 135
    .line 136
    invoke-virtual {v4, v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->byteAt(I)I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-ne v6, v5, :cond_15

    .line 141
    .line 142
    :cond_c
    array-length v6, v9

    .line 143
    add-int/2addr v6, v10

    .line 144
    iget v7, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 145
    .line 146
    sub-int/2addr v7, v6

    .line 147
    if-gtz v7, :cond_d

    .line 148
    .line 149
    goto :goto_8

    .line 150
    :cond_d
    invoke-virtual {v4, v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->byteAt(I)I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    int-to-char v8, v8

    .line 155
    invoke-static {v8}, Lokhttp3/Cookie$Companion;->isWhitespace(C)Z

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    if-eqz v11, :cond_e

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_e
    const/16 v11, 0x2d

    .line 163
    .line 164
    if-ne v8, v11, :cond_15

    .line 165
    .line 166
    if-le v7, v3, :cond_15

    .line 167
    .line 168
    add-int/lit8 v6, v6, 0x1

    .line 169
    .line 170
    invoke-virtual {v4, v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->byteAt(I)I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    int-to-char v6, v6

    .line 175
    if-ne v6, v11, :cond_15

    .line 176
    .line 177
    :goto_8
    const/16 v2, 0xd

    .line 178
    .line 179
    if-eq v10, v1, :cond_12

    .line 180
    .line 181
    iput v10, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 182
    .line 183
    iput-boolean v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->atBoundary:Z

    .line 184
    .line 185
    array-length v6, v9

    .line 186
    iput v6, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 187
    .line 188
    iget v6, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 189
    .line 190
    sub-int v6, v10, v6

    .line 191
    .line 192
    if-ltz v6, :cond_f

    .line 193
    .line 194
    iget v7, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->initialLength:I

    .line 195
    .line 196
    if-ne v7, v1, :cond_f

    .line 197
    .line 198
    iput v6, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->initialLength:I

    .line 199
    .line 200
    :cond_f
    if-lez v6, :cond_10

    .line 201
    .line 202
    sub-int/2addr v10, v3

    .line 203
    invoke-virtual {v4, v10}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->byteAt(I)I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-ne v1, v5, :cond_10

    .line 208
    .line 209
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 210
    .line 211
    add-int/2addr v1, v3

    .line 212
    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 213
    .line 214
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 215
    .line 216
    sub-int/2addr v1, v3

    .line 217
    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 218
    .line 219
    :cond_10
    if-le v6, v3, :cond_11

    .line 220
    .line 221
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 222
    .line 223
    sub-int/2addr v1, v3

    .line 224
    invoke-virtual {v4, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->byteAt(I)I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-ne v1, v2, :cond_11

    .line 229
    .line 230
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 231
    .line 232
    add-int/2addr v1, v3

    .line 233
    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 234
    .line 235
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 236
    .line 237
    sub-int/2addr v1, v3

    .line 238
    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 239
    .line 240
    :cond_11
    return v0

    .line 241
    :cond_12
    iget-boolean v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    .line 242
    .line 243
    iget v3, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 244
    .line 245
    if-eqz v1, :cond_13

    .line 246
    .line 247
    iput v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 248
    .line 249
    return v0

    .line 250
    :cond_13
    array-length v1, v9

    .line 251
    add-int/lit8 v1, v1, 0x3

    .line 252
    .line 253
    sub-int/2addr v3, v1

    .line 254
    if-ltz v3, :cond_14

    .line 255
    .line 256
    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->byteAt(I)I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    int-to-char v1, v1

    .line 261
    if-ne v1, v2, :cond_14

    .line 262
    .line 263
    iget v1, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 264
    .line 265
    array-length v2, v9

    .line 266
    add-int/lit8 v2, v2, 0x3

    .line 267
    .line 268
    sub-int/2addr v1, v2

    .line 269
    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 270
    .line 271
    return v0

    .line 272
    :cond_14
    iget v1, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 273
    .line 274
    array-length v2, v9

    .line 275
    add-int/lit8 v2, v2, 0x2

    .line 276
    .line 277
    sub-int/2addr v1, v2

    .line 278
    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 279
    .line 280
    return v0

    .line 281
    :cond_15
    array-length v5, v9

    .line 282
    add-int/2addr v5, v10

    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :cond_16
    const-string p0, "("

    .line 286
    .line 287
    const-string v0, ") in "

    .line 288
    .line 289
    const-string v1, "looking for "

    .line 290
    .line 291
    invoke-static {v1, v5, p0, v7, v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    iget v0, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 296
    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v0, "/"

    .line 301
    .line 302
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iget v0, v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 306
    .line 307
    invoke-static {v0, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(ILjava/lang/StringBuilder;)V

    .line 308
    .line 309
    .line 310
    return v2

    .line 311
    :cond_17
    const-string p0, "Pattern may not be null"

    .line 312
    .line 313
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    return v2
.end method

.method public final hasData()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    iget p0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buflen:I

    .line 10
    .line 11
    if-gt v0, p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final markSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final read()I
    .locals 1

    .line 35
    :goto_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->readAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object p0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read()I

    move-result p0

    return p0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer$1()I

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->readAllowed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 16
    .line 17
    iget-object p0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 18
    .line 19
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 20
    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer$1()I

    .line 32
    .line 33
    .line 34
    goto :goto_0
.end method

.method public final readAllowed()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->atBoundary:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    .line 22
    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method public final readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->readAllowed()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, -0x1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    move v1, v0

    .line 13
    move v3, v1

    .line 14
    :cond_1
    :goto_0
    if-nez v0, :cond_5

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer$1()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-boolean v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    .line 27
    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    iget-boolean v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->atBoundary:Z

    .line 31
    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    .line 41
    .line 42
    .line 43
    move v3, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 46
    .line 47
    iget-object v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 48
    .line 49
    iget v6, v5, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 50
    .line 51
    sub-int/2addr v4, v6

    .line 52
    invoke-virtual {v5, v6, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf(II)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eq v6, v2, :cond_4

    .line 57
    .line 58
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    iget v0, v5, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 61
    .line 62
    sub-int v4, v6, v0

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    :cond_4
    if-lez v4, :cond_1

    .line 66
    .line 67
    iget-object v6, v5, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buffer:[B

    .line 68
    .line 69
    iget v7, v5, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 70
    .line 71
    invoke-virtual {p1, v6, v7, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)V

    .line 75
    .line 76
    .line 77
    add-int/2addr v1, v4

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 80
    .line 81
    if-ne v3, v2, :cond_6

    .line 82
    .line 83
    :goto_2
    return v2

    .line 84
    :cond_6
    return v1

    .line 85
    :cond_7
    const-string p0, "Destination buffer may not be null"

    .line 86
    .line 87
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return v0
.end method

.method public final skipBoundary()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    .line 7
    .line 8
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 9
    .line 10
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)V

    .line 13
    .line 14
    .line 15
    move v1, v0

    .line 16
    :goto_0
    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufferLen()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-le v3, v0, :cond_3

    .line 21
    .line 22
    iget v3, v2, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->byteAt(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget v4, v2, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufpos:I

    .line 29
    .line 30
    add-int/2addr v4, v0

    .line 31
    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->byteAt(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x2

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const/16 v6, 0x2d

    .line 39
    .line 40
    if-ne v3, v6, :cond_0

    .line 41
    .line 42
    if-ne v4, v6, :cond_0

    .line 43
    .line 44
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->lastPart:Z

    .line 45
    .line 46
    invoke-virtual {v2, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/16 v6, 0xd

    .line 52
    .line 53
    const/16 v7, 0xa

    .line 54
    .line 55
    if-ne v3, v6, :cond_1

    .line 56
    .line 57
    if-ne v4, v7, :cond_1

    .line 58
    .line 59
    invoke-virtual {v2, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    if-ne v3, v7, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-boolean v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    .line 74
    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer$1()I

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MimeBoundaryInputStream, boundary "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    .line 9
    .line 10
    array-length v1, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    aget-byte v3, p0, v2

    .line 15
    .line 16
    int-to-char v3, v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
