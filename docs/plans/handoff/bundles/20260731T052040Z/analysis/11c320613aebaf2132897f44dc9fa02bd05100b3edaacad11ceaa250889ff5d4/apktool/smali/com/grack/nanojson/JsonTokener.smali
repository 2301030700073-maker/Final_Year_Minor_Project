.class public final Lcom/grack/nanojson/JsonTokener;
.super Ljava/lang/Object;


# static fields
.field public static final FALSE:[C

.field public static final NULL:[C

.field public static final TRUE:[C


# instance fields
.field public final buffer:[C

.field public bufferLength:I

.field public charOffset:I

.field public eof:Z

.field public index:I

.field public isDouble:Z

.field public linePos:I

.field public final reader:Ljava/io/Reader;

.field public final reusableBuffer:Ljava/lang/StringBuilder;

.field public rowPos:I

.field public tokenCharOffset:I

.field public tokenCharPos:I

.field public final utf8:Z

.field public utf8adjust:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/grack/nanojson/JsonTokener;->TRUE:[C

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    new-array v1, v1, [C

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/grack/nanojson/JsonTokener;->FALSE:[C

    .line 16
    .line 17
    new-array v0, v0, [C

    .line 18
    .line 19
    fill-array-data v0, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/grack/nanojson/JsonTokener;->NULL:[C

    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 2
        0x72s
        0x75s
        0x65s
    .end array-data

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    nop

    .line 33
    :array_1
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    :array_2
    .array-data 2
        0x75s
        0x6cs
        0x6cs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    .line 6
    .line 7
    const v1, 0x8000

    .line 8
    .line 9
    .line 10
    new-array v1, v1, [C

    .line 11
    .line 12
    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    .line 20
    .line 21
    instance-of v1, p1, Ljava/io/BufferedInputStream;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    instance-of v1, p1, Ljava/io/ByteArrayInputStream;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    .line 34
    .line 35
    move-object p1, v1

    .line 36
    :cond_1
    :goto_0
    const/4 v1, 0x4

    .line 37
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    filled-new-array {v1, v2, v3, v4}, [I

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v2, 0x0

    .line 61
    aget v3, v1, v2

    .line 62
    .line 63
    const/16 v4, 0xef

    .line 64
    .line 65
    const/4 v5, 0x2

    .line 66
    if-ne v3, v4, :cond_2

    .line 67
    .line 68
    aget v4, v1, v0

    .line 69
    .line 70
    const/16 v6, 0xbb

    .line 71
    .line 72
    if-ne v4, v6, :cond_2

    .line 73
    .line 74
    aget v4, v1, v5

    .line 75
    .line 76
    const/16 v6, 0xbf

    .line 77
    .line 78
    if-ne v4, v6, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;

    .line 93
    .line 94
    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;-><init>(Ljava/io/InputStream;)V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :cond_2
    const-string v4, "UTF-32BE"

    .line 102
    .line 103
    const/16 v6, 0xff

    .line 104
    .line 105
    const/16 v7, 0xfe

    .line 106
    .line 107
    const/4 v8, 0x3

    .line 108
    if-nez v3, :cond_3

    .line 109
    .line 110
    :try_start_1
    aget v9, v1, v0

    .line 111
    .line 112
    if-nez v9, :cond_3

    .line 113
    .line 114
    aget v9, v1, v5

    .line 115
    .line 116
    if-ne v9, v7, :cond_3

    .line 117
    .line 118
    aget v9, v1, v8

    .line 119
    .line 120
    if-ne v9, v6, :cond_3

    .line 121
    .line 122
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 123
    .line 124
    .line 125
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    goto/16 :goto_3

    .line 127
    .line 128
    :cond_3
    const-string v9, "UTF-32LE"

    .line 129
    .line 130
    if-ne v3, v6, :cond_4

    .line 131
    .line 132
    :try_start_2
    aget v10, v1, v0

    .line 133
    .line 134
    if-ne v10, v7, :cond_4

    .line 135
    .line 136
    aget v10, v1, v5

    .line 137
    .line 138
    if-nez v10, :cond_4

    .line 139
    .line 140
    aget v10, v1, v8

    .line 141
    .line 142
    if-nez v10, :cond_4

    .line 143
    .line 144
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    goto/16 :goto_3

    .line 149
    .line 150
    :cond_4
    if-ne v3, v7, :cond_5

    .line 151
    .line 152
    aget v10, v1, v0

    .line 153
    .line 154
    if-ne v10, v6, :cond_5

    .line 155
    .line 156
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 159
    .line 160
    .line 161
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    if-ne v3, v6, :cond_6

    .line 169
    .line 170
    aget v6, v1, v0

    .line 171
    .line 172
    if-ne v6, v7, :cond_6

    .line 173
    .line 174
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_6
    if-nez v3, :cond_7

    .line 181
    .line 182
    aget v6, v1, v0

    .line 183
    .line 184
    if-nez v6, :cond_7

    .line 185
    .line 186
    aget v6, v1, v5

    .line 187
    .line 188
    if-nez v6, :cond_7

    .line 189
    .line 190
    aget v6, v1, v8

    .line 191
    .line 192
    if-eqz v6, :cond_7

    .line 193
    .line 194
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    goto :goto_2

    .line 199
    :cond_7
    if-eqz v3, :cond_8

    .line 200
    .line 201
    aget v4, v1, v0

    .line 202
    .line 203
    if-nez v4, :cond_8

    .line 204
    .line 205
    aget v4, v1, v5

    .line 206
    .line 207
    if-nez v4, :cond_8

    .line 208
    .line 209
    aget v4, v1, v8

    .line 210
    .line 211
    if-nez v4, :cond_8

    .line 212
    .line 213
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    goto :goto_2

    .line 218
    :cond_8
    if-nez v3, :cond_9

    .line 219
    .line 220
    aget v4, v1, v0

    .line 221
    .line 222
    if-eqz v4, :cond_9

    .line 223
    .line 224
    aget v4, v1, v5

    .line 225
    .line 226
    if-nez v4, :cond_9

    .line 227
    .line 228
    aget v4, v1, v8

    .line 229
    .line 230
    if-eqz v4, :cond_9

    .line 231
    .line 232
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_9
    if-eqz v3, :cond_a

    .line 236
    .line 237
    aget v3, v1, v0

    .line 238
    .line 239
    if-nez v3, :cond_a

    .line 240
    .line 241
    aget v3, v1, v5

    .line 242
    .line 243
    if-eqz v3, :cond_a

    .line 244
    .line 245
    aget v1, v1, v8

    .line 246
    .line 247
    if-nez v1, :cond_a

    .line 248
    .line 249
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 250
    .line 251
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 252
    .line 253
    .line 254
    :goto_3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 255
    .line 256
    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 257
    .line 258
    .line 259
    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    .line 260
    .line 261
    iput-boolean v2, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_a
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 265
    .line 266
    .line 267
    new-instance v1, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;

    .line 268
    .line 269
    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;-><init>(Ljava/io/InputStream;)V

    .line 270
    .line 271
    .line 272
    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    .line 273
    .line 274
    :goto_4
    iput-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    .line 275
    .line 276
    :goto_5
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->init()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    move-object p0, v0

    .line 282
    move-object v1, p0

    .line 283
    new-instance v0, Lcom/grack/nanojson/JsonParserException;

    .line 284
    .line 285
    const/4 v4, 0x1

    .line 286
    const/4 v5, 0x0

    .line 287
    const-string v2, "IOException while detecting charset"

    .line 288
    .line 289
    const/4 v3, 0x1

    .line 290
    invoke-direct/range {v0 .. v5}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    .line 291
    .line 292
    .line 293
    throw v0
.end method

.method public constructor <init>(Ljava/io/StringReader;)V
    .locals 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    const v0, 0x8000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->init()V

    return-void
.end method

.method public static isWhitespace(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xd

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x9

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method


# virtual methods
.method public final advanceChar()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    .line 10
    .line 11
    aget-char v1, v1, v0

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    .line 22
    .line 23
    add-int/lit8 v2, v0, 0x1

    .line 24
    .line 25
    iget v3, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    .line 26
    .line 27
    add-int/2addr v2, v3

    .line 28
    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 36
    .line 37
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    .line 38
    .line 39
    if-lt v0, v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->refillBuffer()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    .line 46
    .line 47
    :cond_2
    return v1
.end method

.method public final consumeKeyword(C[C)V
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    array-length v1, p2

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lt v0, v1, :cond_5

    .line 9
    .line 10
    :goto_0
    array-length v0, p2

    .line 11
    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    .line 12
    .line 13
    if-ge v2, v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 16
    .line 17
    add-int/lit8 v3, v0, 0x1

    .line 18
    .line 19
    iput v3, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 20
    .line 21
    aget-char v0, v1, v0

    .line 22
    .line 23
    aget-char v1, p2, v2

    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/grack/nanojson/JsonTokener;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    throw p0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    .line 36
    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const/4 v0, -0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 45
    .line 46
    aget-char v0, v1, v0

    .line 47
    .line 48
    :goto_1
    const/16 v1, 0x9

    .line 49
    .line 50
    if-eq v0, v1, :cond_4

    .line 51
    .line 52
    const/16 v1, 0xa

    .line 53
    .line 54
    if-eq v0, v1, :cond_4

    .line 55
    .line 56
    const/16 v1, 0xd

    .line 57
    .line 58
    if-eq v0, v1, :cond_4

    .line 59
    .line 60
    const/16 v1, 0x20

    .line 61
    .line 62
    if-eq v0, v1, :cond_4

    .line 63
    .line 64
    const/16 v1, 0x2c

    .line 65
    .line 66
    if-eq v0, v1, :cond_4

    .line 67
    .line 68
    const/16 v1, 0x3a

    .line 69
    .line 70
    if-eq v0, v1, :cond_4

    .line 71
    .line 72
    const/16 v1, 0x5b

    .line 73
    .line 74
    if-eq v0, v1, :cond_4

    .line 75
    .line 76
    const/16 v1, 0x5d

    .line 77
    .line 78
    if-eq v0, v1, :cond_4

    .line 79
    .line 80
    const/16 v1, 0x7b

    .line 81
    .line 82
    if-eq v0, v1, :cond_4

    .line 83
    .line 84
    const/16 v1, 0x7d

    .line 85
    .line 86
    if-ne v0, v1, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    array-length v0, p2

    .line 90
    invoke-virtual {p0, p1, p2, v0}, Lcom/grack/nanojson/JsonTokener;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    throw p0

    .line 95
    :cond_4
    :goto_2
    return-void

    .line 96
    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/grack/nanojson/JsonTokener;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    throw p0
.end method

.method public final consumeTokenSemiString()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7
    .line 8
    .line 9
    :goto_0
    const/16 v3, 0x100

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const-string v5, "String was not terminated before end of input"

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v4, :cond_1a

    .line 19
    .line 20
    move v8, v2

    .line 21
    :goto_1
    iget-object v9, v0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    .line 22
    .line 23
    if-ge v8, v4, :cond_19

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonTokener;->stringChar()C

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    invoke-static {v10}, Lcom/grack/nanojson/JsonTokener;->isWhitespace(I)Z

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    if-nez v11, :cond_0

    .line 34
    .line 35
    const/16 v11, 0x3a

    .line 36
    .line 37
    if-ne v10, v11, :cond_1

    .line 38
    .line 39
    :cond_0
    const/4 v3, 0x1

    .line 40
    goto/16 :goto_b

    .line 41
    .line 42
    :cond_1
    const-string v12, "Invalid character in semi-string: "

    .line 43
    .line 44
    const/16 v13, 0x2c

    .line 45
    .line 46
    const/16 v14, 0x7d

    .line 47
    .line 48
    const/16 v15, 0x7b

    .line 49
    .line 50
    const/16 v16, 0x1

    .line 51
    .line 52
    iget-boolean v7, v0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    .line 53
    .line 54
    const/16 v11, 0x5c

    .line 55
    .line 56
    if-eq v10, v11, :cond_4

    .line 57
    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    and-int/lit16 v11, v10, 0x80

    .line 61
    .line 62
    if-eqz v11, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/16 v7, 0x5b

    .line 66
    .line 67
    if-eq v10, v7, :cond_3

    .line 68
    .line 69
    const/16 v7, 0x5d

    .line 70
    .line 71
    if-eq v10, v7, :cond_3

    .line 72
    .line 73
    if-eq v10, v15, :cond_3

    .line 74
    .line 75
    if-eq v10, v14, :cond_3

    .line 76
    .line 77
    if-eq v10, v13, :cond_3

    .line 78
    .line 79
    add-int/lit8 v8, v8, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v6, v1, v2}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    throw v0

    .line 99
    :cond_4
    :goto_2
    iget v4, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 100
    .line 101
    sub-int/2addr v4, v8

    .line 102
    add-int/lit8 v4, v4, -0x1

    .line 103
    .line 104
    invoke-virtual {v1, v9, v4, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget v4, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 108
    .line 109
    add-int/lit8 v4, v4, -0x1

    .line 110
    .line 111
    iput v4, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 112
    .line 113
    :goto_3
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_18

    .line 118
    .line 119
    iget v8, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 120
    .line 121
    add-int/2addr v8, v4

    .line 122
    :goto_4
    iget v4, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 123
    .line 124
    const-string v10, "EOF encountered in the middle of a string escape"

    .line 125
    .line 126
    if-ge v4, v8, :cond_16

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonTokener;->stringChar()C

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v7, :cond_5

    .line 133
    .line 134
    and-int/lit16 v11, v4, 0x80

    .line 135
    .line 136
    if-eqz v11, :cond_5

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonTokener;->consumeTokenStringUtf8Char(C)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_5
    const/16 v11, 0x9

    .line 143
    .line 144
    if-eq v4, v11, :cond_15

    .line 145
    .line 146
    const/16 v3, 0xa

    .line 147
    .line 148
    if-eq v4, v3, :cond_15

    .line 149
    .line 150
    const/16 v3, 0xd

    .line 151
    .line 152
    if-eq v4, v3, :cond_15

    .line 153
    .line 154
    const/16 v3, 0x20

    .line 155
    .line 156
    if-eq v4, v3, :cond_15

    .line 157
    .line 158
    if-eq v4, v13, :cond_14

    .line 159
    .line 160
    const/16 v3, 0x3a

    .line 161
    .line 162
    if-eq v4, v3, :cond_15

    .line 163
    .line 164
    if-eq v4, v15, :cond_14

    .line 165
    .line 166
    if-eq v4, v14, :cond_14

    .line 167
    .line 168
    packed-switch v4, :pswitch_data_0

    .line 169
    .line 170
    .line 171
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    goto/16 :goto_a

    .line 175
    .line 176
    :pswitch_0
    iget v4, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 177
    .line 178
    sub-int v4, v8, v4

    .line 179
    .line 180
    const/16 v3, 0x75

    .line 181
    .line 182
    const/4 v13, 0x5

    .line 183
    if-ge v4, v13, :cond_9

    .line 184
    .line 185
    invoke-virtual {v0, v13}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    iget v8, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 190
    .line 191
    add-int v17, v8, v4

    .line 192
    .line 193
    aget-char v8, v9, v8

    .line 194
    .line 195
    if-ne v8, v3, :cond_8

    .line 196
    .line 197
    if-lt v4, v13, :cond_7

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_7
    iget v1, v0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    .line 201
    .line 202
    iput v1, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 203
    .line 204
    invoke-virtual {v0, v6, v10, v2}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    throw v0

    .line 209
    :cond_8
    :goto_5
    move/from16 v8, v17

    .line 210
    .line 211
    :cond_9
    iget v4, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 212
    .line 213
    add-int/lit8 v10, v4, 0x1

    .line 214
    .line 215
    iput v10, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 216
    .line 217
    aget-char v4, v9, v4

    .line 218
    .line 219
    const/16 v10, 0x22

    .line 220
    .line 221
    if-eq v4, v10, :cond_6

    .line 222
    .line 223
    const/16 v10, 0x2f

    .line 224
    .line 225
    if-eq v4, v10, :cond_6

    .line 226
    .line 227
    const/16 v13, 0x5c

    .line 228
    .line 229
    if-eq v4, v13, :cond_6

    .line 230
    .line 231
    const/16 v10, 0x62

    .line 232
    .line 233
    if-eq v4, v10, :cond_13

    .line 234
    .line 235
    const/16 v10, 0x66

    .line 236
    .line 237
    if-eq v4, v10, :cond_12

    .line 238
    .line 239
    const/16 v13, 0x6e

    .line 240
    .line 241
    if-eq v4, v13, :cond_11

    .line 242
    .line 243
    const/16 v13, 0x72

    .line 244
    .line 245
    if-eq v4, v13, :cond_10

    .line 246
    .line 247
    const/16 v13, 0x74

    .line 248
    .line 249
    if-eq v4, v13, :cond_f

    .line 250
    .line 251
    if-ne v4, v3, :cond_e

    .line 252
    .line 253
    move v3, v2

    .line 254
    move v4, v3

    .line 255
    :goto_6
    const/4 v11, 0x4

    .line 256
    if-ge v3, v11, :cond_d

    .line 257
    .line 258
    shl-int/lit8 v4, v4, 0x4

    .line 259
    .line 260
    iget v11, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 261
    .line 262
    add-int/lit8 v13, v11, 0x1

    .line 263
    .line 264
    iput v13, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 265
    .line 266
    aget-char v11, v9, v11

    .line 267
    .line 268
    const/16 v13, 0x30

    .line 269
    .line 270
    if-lt v11, v13, :cond_a

    .line 271
    .line 272
    const/16 v13, 0x39

    .line 273
    .line 274
    if-gt v11, v13, :cond_a

    .line 275
    .line 276
    add-int/lit8 v11, v11, -0x30

    .line 277
    .line 278
    :goto_7
    or-int/2addr v4, v11

    .line 279
    goto :goto_8

    .line 280
    :cond_a
    const/16 v13, 0x41

    .line 281
    .line 282
    if-lt v11, v13, :cond_b

    .line 283
    .line 284
    const/16 v13, 0x46

    .line 285
    .line 286
    if-gt v11, v13, :cond_b

    .line 287
    .line 288
    add-int/lit8 v11, v11, -0x37

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_b
    const/16 v13, 0x61

    .line 292
    .line 293
    if-lt v11, v13, :cond_c

    .line 294
    .line 295
    if-gt v11, v10, :cond_c

    .line 296
    .line 297
    add-int/lit8 v11, v11, -0x57

    .line 298
    .line 299
    goto :goto_7

    .line 300
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    const-string v3, "Expected unicode hex escape character: "

    .line 306
    .line 307
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    int-to-char v3, v11

    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v3, " ("

    .line 315
    .line 316
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v3, ")"

    .line 323
    .line 324
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v0, v6, v1, v2}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    throw v0

    .line 336
    :cond_d
    int-to-char v3, v4

    .line 337
    :goto_9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v3, "Invalid escape: \\"

    .line 344
    .line 345
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {v0, v6, v1, v2}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    throw v0

    .line 360
    :cond_f
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    goto :goto_a

    .line 364
    :cond_10
    const/16 v3, 0xd

    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_11
    const/16 v3, 0xa

    .line 368
    .line 369
    goto :goto_9

    .line 370
    :cond_12
    const/16 v3, 0xc

    .line 371
    .line 372
    goto :goto_9

    .line 373
    :cond_13
    const/16 v3, 0x8

    .line 374
    .line 375
    goto :goto_9

    .line 376
    :goto_a
    const/16 v3, 0x100

    .line 377
    .line 378
    const/16 v13, 0x2c

    .line 379
    .line 380
    goto/16 :goto_4

    .line 381
    .line 382
    :cond_14
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v0, v6, v1, v2}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    throw v0

    .line 399
    :cond_15
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :cond_16
    iget v3, v0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    .line 404
    .line 405
    if-gt v4, v3, :cond_17

    .line 406
    .line 407
    const/16 v3, 0x100

    .line 408
    .line 409
    const/16 v13, 0x2c

    .line 410
    .line 411
    goto/16 :goto_3

    .line 412
    .line 413
    :cond_17
    iput v3, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 414
    .line 415
    invoke-virtual {v0, v6, v10, v2}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    throw v0

    .line 420
    :cond_18
    move/from16 v3, v16

    .line 421
    .line 422
    invoke-virtual {v0, v6, v5, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    throw v0

    .line 427
    :goto_b
    iget v2, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 428
    .line 429
    sub-int/2addr v2, v8

    .line 430
    sub-int/2addr v2, v3

    .line 431
    invoke-virtual {v1, v9, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :cond_19
    iget v3, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 439
    .line 440
    sub-int/2addr v3, v4

    .line 441
    invoke-virtual {v1, v9, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    goto/16 :goto_0

    .line 445
    .line 446
    :cond_1a
    const/4 v3, 0x1

    .line 447
    invoke-virtual {v0, v6, v5, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    throw v0

    .line 452
    nop

    .line 453
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final consumeTokenStringUtf8Char(C)V
    .locals 10

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    .line 3
    .line 4
    .line 5
    and-int/lit16 v1, p1, 0xf0

    .line 6
    .line 7
    const/16 v2, 0x80

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eq v1, v2, :cond_d

    .line 12
    .line 13
    const/16 v2, 0x90

    .line 14
    .line 15
    if-eq v1, v2, :cond_d

    .line 16
    .line 17
    const/16 v2, 0xa0

    .line 18
    .line 19
    if-eq v1, v2, :cond_d

    .line 20
    .line 21
    const/16 v2, 0xb0

    .line 22
    .line 23
    if-eq v1, v2, :cond_d

    .line 24
    .line 25
    const/16 v2, 0xc0

    .line 26
    .line 27
    const-string v5, "Illegal UTF-8 byte: 0x"

    .line 28
    .line 29
    iget-object v6, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    .line 30
    .line 31
    iget-object v7, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    if-eq v1, v2, :cond_9

    .line 35
    .line 36
    const/16 v2, 0xd0

    .line 37
    .line 38
    if-eq v1, v2, :cond_a

    .line 39
    .line 40
    const/16 v2, 0xe0

    .line 41
    .line 42
    const/4 v9, 0x2

    .line 43
    if-eq v1, v2, :cond_5

    .line 44
    .line 45
    const/16 v2, 0xf0

    .line 46
    .line 47
    if-eq v1, v2, :cond_0

    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_0
    and-int/lit8 v1, p1, 0xf

    .line 52
    .line 53
    if-ge v1, v0, :cond_4

    .line 54
    .line 55
    and-int/lit8 v1, p1, 0xc

    .line 56
    .line 57
    shr-int/2addr v1, v9

    .line 58
    const/4 v2, 0x3

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    if-eq v1, v8, :cond_3

    .line 62
    .line 63
    const-string v5, " in a Java string"

    .line 64
    .line 65
    const-string v6, "Unable to represent codepoint 0x"

    .line 66
    .line 67
    if-eq v1, v9, :cond_2

    .line 68
    .line 69
    if-eq v1, v2, :cond_1

    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :cond_1
    and-int/2addr p1, v8

    .line 74
    shl-int/lit8 p1, p1, 0x1e

    .line 75
    .line 76
    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 77
    .line 78
    add-int/lit8 v2, v1, 0x1

    .line 79
    .line 80
    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 81
    .line 82
    aget-char v8, v7, v1

    .line 83
    .line 84
    and-int/lit8 v8, v8, 0x3f

    .line 85
    .line 86
    shl-int/lit8 v8, v8, 0x18

    .line 87
    .line 88
    or-int/2addr p1, v8

    .line 89
    add-int/lit8 v8, v1, 0x2

    .line 90
    .line 91
    iput v8, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 92
    .line 93
    aget-char v2, v7, v2

    .line 94
    .line 95
    and-int/lit8 v2, v2, 0x3f

    .line 96
    .line 97
    shl-int/lit8 v2, v2, 0x12

    .line 98
    .line 99
    or-int/2addr p1, v2

    .line 100
    add-int/lit8 v2, v1, 0x3

    .line 101
    .line 102
    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 103
    .line 104
    aget-char v8, v7, v8

    .line 105
    .line 106
    and-int/lit8 v8, v8, 0x3f

    .line 107
    .line 108
    shl-int/lit8 v8, v8, 0xc

    .line 109
    .line 110
    or-int/2addr p1, v8

    .line 111
    add-int/lit8 v8, v1, 0x4

    .line 112
    .line 113
    iput v8, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 114
    .line 115
    aget-char v2, v7, v2

    .line 116
    .line 117
    and-int/lit8 v2, v2, 0x3f

    .line 118
    .line 119
    shl-int/lit8 v2, v2, 0x6

    .line 120
    .line 121
    or-int/2addr p1, v2

    .line 122
    add-int/2addr v1, v0

    .line 123
    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 124
    .line 125
    aget-char v0, v7, v8

    .line 126
    .line 127
    and-int/lit8 v0, v0, 0x3f

    .line 128
    .line 129
    or-int/2addr p1, v0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    throw p0

    .line 154
    :cond_2
    and-int/2addr p1, v2

    .line 155
    shl-int/lit8 p1, p1, 0x18

    .line 156
    .line 157
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 158
    .line 159
    add-int/lit8 v1, v0, 0x1

    .line 160
    .line 161
    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 162
    .line 163
    aget-char v2, v7, v0

    .line 164
    .line 165
    and-int/lit8 v2, v2, 0x3f

    .line 166
    .line 167
    shl-int/lit8 v2, v2, 0x12

    .line 168
    .line 169
    or-int/2addr p1, v2

    .line 170
    add-int/lit8 v2, v0, 0x2

    .line 171
    .line 172
    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 173
    .line 174
    aget-char v1, v7, v1

    .line 175
    .line 176
    and-int/lit8 v1, v1, 0x3f

    .line 177
    .line 178
    shl-int/lit8 v1, v1, 0xc

    .line 179
    .line 180
    or-int/2addr p1, v1

    .line 181
    add-int/lit8 v1, v0, 0x3

    .line 182
    .line 183
    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 184
    .line 185
    aget-char v2, v7, v2

    .line 186
    .line 187
    and-int/lit8 v2, v2, 0x3f

    .line 188
    .line 189
    shl-int/lit8 v2, v2, 0x6

    .line 190
    .line 191
    or-int/2addr p1, v2

    .line 192
    add-int/lit8 v0, v0, 0x4

    .line 193
    .line 194
    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 195
    .line 196
    aget-char v0, v7, v1

    .line 197
    .line 198
    and-int/lit8 v0, v0, 0x3f

    .line 199
    .line 200
    or-int/2addr p1, v0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    throw p0

    .line 225
    :cond_3
    and-int/lit8 p1, p1, 0x7

    .line 226
    .line 227
    shl-int/lit8 p1, p1, 0x12

    .line 228
    .line 229
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 230
    .line 231
    add-int/lit8 v1, v0, 0x1

    .line 232
    .line 233
    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 234
    .line 235
    aget-char v5, v7, v0

    .line 236
    .line 237
    and-int/lit8 v5, v5, 0x3f

    .line 238
    .line 239
    shl-int/lit8 v5, v5, 0xc

    .line 240
    .line 241
    or-int/2addr p1, v5

    .line 242
    add-int/lit8 v5, v0, 0x2

    .line 243
    .line 244
    iput v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 245
    .line 246
    aget-char v1, v7, v1

    .line 247
    .line 248
    and-int/lit8 v1, v1, 0x3f

    .line 249
    .line 250
    shl-int/lit8 v1, v1, 0x6

    .line 251
    .line 252
    or-int/2addr p1, v1

    .line 253
    add-int/2addr v0, v2

    .line 254
    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 255
    .line 256
    aget-char v0, v7, v5

    .line 257
    .line 258
    and-int/lit8 v0, v0, 0x3f

    .line 259
    .line 260
    or-int/2addr p1, v0

    .line 261
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    .line 265
    .line 266
    add-int/2addr p1, v2

    .line 267
    :goto_0
    iput p1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    .line 268
    .line 269
    goto/16 :goto_2

    .line 270
    .line 271
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    and-int/lit16 p1, p1, 0xff

    .line 277
    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    throw p0

    .line 294
    :cond_5
    and-int/lit8 p1, p1, 0xf

    .line 295
    .line 296
    shl-int/lit8 p1, p1, 0xc

    .line 297
    .line 298
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 299
    .line 300
    add-int/lit8 v1, v0, 0x1

    .line 301
    .line 302
    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 303
    .line 304
    aget-char v2, v7, v0

    .line 305
    .line 306
    and-int/lit8 v2, v2, 0x3f

    .line 307
    .line 308
    shl-int/lit8 v2, v2, 0x6

    .line 309
    .line 310
    or-int/2addr p1, v2

    .line 311
    add-int/2addr v0, v9

    .line 312
    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 313
    .line 314
    aget-char v0, v7, v1

    .line 315
    .line 316
    and-int/lit8 v0, v0, 0x3f

    .line 317
    .line 318
    or-int/2addr p1, v0

    .line 319
    int-to-char p1, p1

    .line 320
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    .line 321
    .line 322
    add-int/2addr v0, v9

    .line 323
    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    .line 324
    .line 325
    const v0, 0xd800

    .line 326
    .line 327
    .line 328
    if-lt p1, v0, :cond_6

    .line 329
    .line 330
    const v0, 0xdbff

    .line 331
    .line 332
    .line 333
    if-le p1, v0, :cond_7

    .line 334
    .line 335
    :cond_6
    const v0, 0xdc00

    .line 336
    .line 337
    .line 338
    if-lt p1, v0, :cond_8

    .line 339
    .line 340
    const v0, 0xdfff

    .line 341
    .line 342
    .line 343
    if-le p1, v0, :cond_7

    .line 344
    .line 345
    goto :goto_1

    .line 346
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v1, "Illegal UTF-8 codepoint: 0x"

    .line 349
    .line 350
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 365
    .line 366
    .line 367
    move-result-object p0

    .line 368
    throw p0

    .line 369
    :cond_8
    :goto_1
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    goto :goto_2

    .line 373
    :cond_9
    and-int/lit8 v0, p1, 0xe

    .line 374
    .line 375
    if-eqz v0, :cond_c

    .line 376
    .line 377
    :cond_a
    and-int/lit8 p1, p1, 0x1f

    .line 378
    .line 379
    shl-int/lit8 p1, p1, 0x6

    .line 380
    .line 381
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 382
    .line 383
    add-int/lit8 v1, v0, 0x1

    .line 384
    .line 385
    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 386
    .line 387
    aget-char v0, v7, v0

    .line 388
    .line 389
    and-int/lit8 v0, v0, 0x3f

    .line 390
    .line 391
    or-int/2addr p1, v0

    .line 392
    int-to-char p1, p1

    .line 393
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    .line 397
    .line 398
    add-int/2addr p1, v8

    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :goto_2
    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 402
    .line 403
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    .line 404
    .line 405
    if-gt p1, v0, :cond_b

    .line 406
    .line 407
    return-void

    .line 408
    :cond_b
    const-string p1, "UTF-8 codepoint was truncated"

    .line 409
    .line 410
    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    throw p0

    .line 415
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    and-int/lit16 p1, p1, 0xff

    .line 421
    .line 422
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    throw p0

    .line 438
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    const-string v1, "Illegal UTF-8 continuation byte: 0x"

    .line 441
    .line 442
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    and-int/lit16 p1, p1, 0xff

    .line 446
    .line 447
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 459
    .line 460
    .line 461
    move-result-object p0

    .line 462
    throw p0
.end method

.method public final createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    move-object v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v3, Ljava/lang/String;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, p2, v4, p3}, Ljava/lang/String;-><init>([CII)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_1
    iget-boolean p3, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    .line 34
    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    const/4 p3, -0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget-object p3, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    .line 40
    .line 41
    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 42
    .line 43
    aget-char p3, p3, v1

    .line 44
    .line 45
    :goto_2
    const/16 v1, 0x41

    .line 46
    .line 47
    if-lt p3, v1, :cond_2

    .line 48
    .line 49
    const/16 v1, 0x5a

    .line 50
    .line 51
    if-le p3, v1, :cond_3

    .line 52
    .line 53
    :cond_2
    const/16 v1, 0x61

    .line 54
    .line 55
    if-lt p3, v1, :cond_4

    .line 56
    .line 57
    const/16 v1, 0x7a

    .line 58
    .line 59
    if-gt p3, v1, :cond_4

    .line 60
    .line 61
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    const/16 v1, 0xf

    .line 66
    .line 67
    if-ge p3, v1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->advanceChar()I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    int-to-char p3, p3

    .line 74
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v1, "Unexpected token \'"

    .line 81
    .line 82
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, "\'"

    .line 89
    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    if-nez p2, :cond_5

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v1, ". Did you mean \'"

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    new-instance p1, Ljava/lang/String;

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p1, "\'?"

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :goto_3
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const/4 p2, 0x1

    .line 131
    const/4 p3, 0x0

    .line 132
    invoke-virtual {p0, p3, p1, p2}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0
.end method

.method public final createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;
    .locals 9

    .line 1
    const-string v0, ", char "

    .line 2
    .line 3
    const-string v1, " on line "

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    new-instance v2, Lcom/grack/nanojson/JsonParserException;

    .line 8
    .line 9
    invoke-static {p2, v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget p3, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    .line 14
    .line 15
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget p3, p0, Lcom/grack/nanojson/JsonTokener;->tokenCharPos:I

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    .line 31
    .line 32
    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->tokenCharPos:I

    .line 33
    .line 34
    iget v7, p0, Lcom/grack/nanojson/JsonTokener;->tokenCharOffset:I

    .line 35
    .line 36
    move-object v3, p1

    .line 37
    invoke-direct/range {v2 .. v7}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    .line 38
    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_0
    move-object v3, p1

    .line 42
    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 43
    .line 44
    iget p3, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    .line 45
    .line 46
    add-int/2addr p1, p3

    .line 47
    iget p3, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    .line 48
    .line 49
    sub-int/2addr p1, p3

    .line 50
    iget p3, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    .line 51
    .line 52
    sub-int/2addr p1, p3

    .line 53
    const/4 p3, 0x1

    .line 54
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    move-object v4, v3

    .line 59
    new-instance v3, Lcom/grack/nanojson/JsonParserException;

    .line 60
    .line 61
    invoke-static {p2, v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget p2, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    .line 81
    .line 82
    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 83
    .line 84
    iget p0, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    .line 85
    .line 86
    add-int v8, p1, p0

    .line 87
    .line 88
    invoke-direct/range {v3 .. v8}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    .line 89
    .line 90
    .line 91
    return-object v3
.end method

.method public final ensureBuffer(I)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    .line 2
    .line 3
    sub-int v1, v0, p1

    .line 4
    .line 5
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 6
    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    .line 11
    .line 12
    if-lez v2, :cond_1

    .line 13
    .line 14
    iget v3, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    .line 15
    .line 16
    add-int/2addr v3, v2

    .line 17
    iput v3, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    .line 18
    .line 19
    sub-int/2addr v0, v2

    .line 20
    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iput v3, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 27
    .line 28
    :cond_1
    :try_start_0
    array-length v0, v1

    .line 29
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    .line 30
    .line 31
    if-le v0, v2, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    .line 34
    .line 35
    array-length v3, v1

    .line 36
    sub-int/2addr v3, v2

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    .line 38
    .line 39
    .line 40
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    .line 42
    .line 43
    if-gtz v0, :cond_2

    .line 44
    .line 45
    :try_start_1
    iget p0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 46
    .line 47
    sub-int/2addr v2, p0

    .line 48
    return v2

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    add-int/2addr v2, v0

    .line 52
    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    .line 53
    .line 54
    if-le v2, p1, :cond_1

    .line 55
    .line 56
    iget p0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 57
    .line 58
    sub-int/2addr v2, p0

    .line 59
    return v2

    .line 60
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 61
    .line 62
    const-string v0, "Unexpected internal error"

    .line 63
    .line 64
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    :goto_0
    const-string v0, "IOException"

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-virtual {p0, p1, v0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    throw p0
.end method

.method public final fixupAfterRawBufferRead()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 2
    .line 3
    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->refillBuffer()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final init()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->refillBuffer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    .line 6
    .line 7
    :cond_0
    const/16 v0, 0x100

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    const/4 v3, 0x1

    .line 16
    if-ge v2, v0, :cond_3

    .line 17
    .line 18
    iget-object v4, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    .line 19
    .line 20
    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 21
    .line 22
    aget-char v4, v4, v5

    .line 23
    .line 24
    invoke-static {v4}, Lcom/grack/nanojson/JsonTokener;->isWhitespace(I)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/16 v5, 0xa

    .line 35
    .line 36
    if-ne v4, v5, :cond_2

    .line 37
    .line 38
    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    .line 39
    .line 40
    add-int/2addr v4, v3

    .line 41
    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    .line 42
    .line 43
    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 44
    .line 45
    add-int/2addr v4, v3

    .line 46
    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    .line 47
    .line 48
    add-int/2addr v4, v5

    .line 49
    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    .line 50
    .line 51
    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    .line 52
    .line 53
    :cond_2
    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 54
    .line 55
    add-int/2addr v4, v3

    .line 56
    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    if-gtz v0, :cond_0

    .line 62
    .line 63
    iput-boolean v3, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    .line 64
    .line 65
    return-void
.end method

.method public final refillBuffer()Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    .line 5
    .line 6
    array-length v3, v2

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Reader;->read([CII)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-gtz v1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    .line 16
    .line 17
    iget v3, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    .line 21
    .line 22
    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 23
    .line 24
    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    return v4

    .line 27
    :catch_0
    move-exception v1

    .line 28
    const-string v2, "IOException"

    .line 29
    .line 30
    invoke-virtual {p0, v1, v2, v0}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    throw p0
.end method

.method public final stringChar()C
    .locals 4

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    .line 8
    .line 9
    aget-char v1, v1, v0

    .line 10
    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    .line 29
    .line 30
    add-int/2addr v0, v2

    .line 31
    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    .line 32
    .line 33
    iput v3, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    .line 34
    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "Strings may not contain control characters: 0x"

    .line 38
    .line 39
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/16 v2, 0x10

    .line 43
    .line 44
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, v1, v0, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    throw p0

    .line 61
    :cond_1
    return v1
.end method
