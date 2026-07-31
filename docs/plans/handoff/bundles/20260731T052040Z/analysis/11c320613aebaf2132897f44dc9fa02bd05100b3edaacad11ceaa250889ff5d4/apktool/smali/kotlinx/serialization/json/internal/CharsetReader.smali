.class public final Lkotlinx/serialization/json/internal/CharsetReader;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final byteBuffer:Ljava/nio/ByteBuffer;

.field public final decoder:Ljava/nio/charset/CharsetDecoder;

.field public hasLeftoverPotentiallySurrogateChar:Z

.field public final inputStream:Ljava/io/InputStream;

.field public leftoverChar:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lkotlinx/serialization/json/internal/CharsetReader;->inputStream:Ljava/io/InputStream;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lkotlinx/serialization/json/internal/CharsetReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 27
    .line 28
    sget-object p1, Lkotlinx/serialization/json/internal/ByteArrayPool8k;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool8k;

    .line 29
    .line 30
    const/16 p2, 0x2004

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->take(I)[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final read([CII)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-ltz p2, :cond_15

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    if-ge p2, v1, :cond_15

    .line 9
    .line 10
    if-ltz p3, :cond_15

    .line 11
    .line 12
    add-int v1, p2, p3

    .line 13
    .line 14
    array-length v2, p1

    .line 15
    if-gt v1, v2, :cond_15

    .line 16
    .line 17
    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/CharsetReader;->hasLeftoverPotentiallySurrogateChar:Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-char v1, p0, Lkotlinx/serialization/json/internal/CharsetReader;->leftoverChar:C

    .line 23
    .line 24
    aput-char v1, p1, p2

    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    add-int/lit8 p3, p3, -0x1

    .line 29
    .line 30
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->hasLeftoverPotentiallySurrogateChar:Z

    .line 31
    .line 32
    if-nez p3, :cond_1

    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    move v1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    move v1, v0

    .line 38
    :goto_0
    const/4 v3, -0x1

    .line 39
    if-ne p3, v2, :cond_9

    .line 40
    .line 41
    iget-boolean p3, p0, Lkotlinx/serialization/json/internal/CharsetReader;->hasLeftoverPotentiallySurrogateChar:Z

    .line 42
    .line 43
    if-eqz p3, :cond_3

    .line 44
    .line 45
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->hasLeftoverPotentiallySurrogateChar:Z

    .line 46
    .line 47
    iget-char p0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->leftoverChar:C

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 p3, 0x2

    .line 51
    new-array v4, p3, [C

    .line 52
    .line 53
    invoke-virtual {p0, v4, v0, p3}, Lkotlinx/serialization/json/internal/CharsetReader;->read([CII)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eq v5, v3, :cond_6

    .line 58
    .line 59
    if-eq v5, v2, :cond_5

    .line 60
    .line 61
    if-ne v5, p3, :cond_4

    .line 62
    .line 63
    aget-char p3, v4, v2

    .line 64
    .line 65
    iput-char p3, p0, Lkotlinx/serialization/json/internal/CharsetReader;->leftoverChar:C

    .line 66
    .line 67
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/CharsetReader;->hasLeftoverPotentiallySurrogateChar:Z

    .line 68
    .line 69
    aget-char p0, v4, v0

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const-string p0, "Unreachable state: "

    .line 73
    .line 74
    invoke-static {v5, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return v0

    .line 78
    :cond_5
    aget-char p0, v4, v0

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_6
    move p0, v3

    .line 82
    :goto_1
    if-ne p0, v3, :cond_8

    .line 83
    .line 84
    if-nez v1, :cond_7

    .line 85
    .line 86
    return v3

    .line 87
    :cond_7
    return v1

    .line 88
    :cond_8
    int-to-char p0, p0

    .line 89
    aput-char p0, p1, p2

    .line 90
    .line 91
    add-int/2addr v1, v2

    .line 92
    return v1

    .line 93
    :cond_9
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_a

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    :cond_a
    move-object v4, p1

    .line 108
    move p1, v0

    .line 109
    :cond_b
    :goto_2
    iget-object p2, p0, Lkotlinx/serialization/json/internal/CharsetReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 110
    .line 111
    iget-object p3, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    invoke-virtual {p2, p3, v4, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_f

    .line 122
    .line 123
    if-nez p1, :cond_10

    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_10

    .line 130
    .line 131
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 132
    .line 133
    .line 134
    :try_start_0
    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-gt v6, v5, :cond_c

    .line 143
    .line 144
    sub-int/2addr v5, v6

    .line 145
    goto :goto_3

    .line 146
    :cond_c
    move v5, v0

    .line 147
    :goto_3
    iget-object v7, p0, Lkotlinx/serialization/json/internal/CharsetReader;->inputStream:Ljava/io/InputStream;

    .line 148
    .line 149
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    add-int/2addr v9, v6

    .line 158
    invoke-virtual {v7, v8, v9, v5}, Ljava/io/InputStream;->read([BII)I

    .line 159
    .line 160
    .line 161
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-gez v5, :cond_d

    .line 163
    .line 164
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_d
    add-int/2addr v6, v5

    .line 169
    :try_start_1
    invoke-virtual {p3, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    :goto_4
    if-gez v5, :cond_b

    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_e

    .line 186
    .line 187
    invoke-virtual {p3}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_11

    .line 192
    .line 193
    :cond_e
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 194
    .line 195
    .line 196
    move p1, v2

    .line 197
    goto :goto_2

    .line 198
    :catchall_0
    move-exception p0

    .line 199
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 200
    .line 201
    .line 202
    throw p0

    .line 203
    :cond_f
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    .line 204
    .line 205
    .line 206
    move-result p3

    .line 207
    if-eqz p3, :cond_14

    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 210
    .line 211
    .line 212
    :cond_10
    move v2, p1

    .line 213
    :cond_11
    if-eqz v2, :cond_12

    .line 214
    .line 215
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 216
    .line 217
    .line 218
    :cond_12
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    if-nez p0, :cond_13

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_13
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    :goto_5
    add-int/2addr v3, v1

    .line 230
    return v3

    .line 231
    :cond_14
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_15
    array-length p0, p1

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v0, "Unexpected arguments: "

    .line 239
    .line 240
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string p2, ", "

    .line 247
    .line 248
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 265
    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p1
.end method
