.class public final Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final base64:Lcom/beetstra/jutf7/Base64Util;

.field public base64mode:Z

.field public bitsRead:I

.field public justShifted:Z

.field public justUnshifted:Z

.field public final shift:B

.field public final strict:Z

.field public tempChar:I

.field public final unshift:B


# direct methods
.method public constructor <init>(Lcom/beetstra/jutf7/UTF7StyleCharset;Lcom/beetstra/jutf7/Base64Util;Z)V
    .locals 2

    .line 1
    const v0, 0x3f19999a    # 0.6f

    .line 2
    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    .line 10
    .line 11
    iput-boolean p3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/beetstra/jutf7/UTF7StyleCharset;->shift()B

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput-byte p1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->shift:B

    .line 18
    .line 19
    const/16 p1, 0x2d

    .line 20
    .line 21
    iput-byte p1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->unshift:B

    .line 22
    .line 23
    return-void
.end method

.method public static malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method


# virtual methods
.method public final decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 7

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iget-boolean v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z

    .line 15
    .line 16
    iget-byte v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->shift:B

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-eqz v1, :cond_d

    .line 20
    .line 21
    iget-byte v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->unshift:B

    .line 22
    .line 23
    const/4 v6, 0x6

    .line 24
    if-ne v0, v1, :cond_4

    .line 25
    .line 26
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 31
    .line 32
    if-lt v0, v6, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justShifted:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    sub-int/2addr p0, v5

    .line 50
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    .line 52
    .line 53
    sget-object p0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_1
    int-to-char v0, v4

    .line 57
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iput-boolean v5, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z

    .line 62
    .line 63
    :goto_1
    iput-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    .line 64
    .line 65
    iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 66
    .line 67
    iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 68
    .line 69
    goto/16 :goto_5

    .line 70
    .line 71
    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_4
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    sub-int/2addr p0, v5

    .line 87
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    .line 89
    .line 90
    sget-object p0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_5
    const/16 v1, 0x80

    .line 94
    .line 95
    iget-object v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    .line 96
    .line 97
    if-lt v0, v1, :cond_6

    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    const/4 v1, -0x1

    .line 103
    goto :goto_3

    .line 104
    :cond_6
    iget-object v1, v4, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, [I

    .line 107
    .line 108
    aget v1, v1, v0

    .line 109
    .line 110
    :goto_3
    const/4 v4, 0x0

    .line 111
    if-ltz v1, :cond_8

    .line 112
    .line 113
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 114
    .line 115
    add-int/lit8 v3, v0, 0x6

    .line 116
    .line 117
    iput v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 118
    .line 119
    const/16 v5, 0x10

    .line 120
    .line 121
    if-ge v3, v5, :cond_7

    .line 122
    .line 123
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 124
    .line 125
    rsub-int/lit8 v3, v3, 0x10

    .line 126
    .line 127
    shl-int/2addr v1, v3

    .line 128
    add-int/2addr v0, v1

    .line 129
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_7
    add-int/lit8 v0, v0, -0xa

    .line 133
    .line 134
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 135
    .line 136
    iget v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 137
    .line 138
    shr-int v0, v1, v0

    .line 139
    .line 140
    add-int/2addr v3, v0

    .line 141
    iput v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 142
    .line 143
    int-to-char v0, v3

    .line 144
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 145
    .line 146
    .line 147
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 148
    .line 149
    sub-int/2addr v5, v0

    .line 150
    shl-int v0, v1, v5

    .line 151
    .line 152
    const v1, 0xffff

    .line 153
    .line 154
    .line 155
    and-int/2addr v0, v1

    .line 156
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_8
    if-eqz v3, :cond_9

    .line 160
    .line 161
    invoke-static {p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    goto :goto_4

    .line 166
    :cond_9
    int-to-char v0, v0

    .line 167
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 168
    .line 169
    .line 170
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 171
    .line 172
    if-nez v0, :cond_a

    .line 173
    .line 174
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 175
    .line 176
    if-lt v0, v6, :cond_b

    .line 177
    .line 178
    :cond_a
    invoke-static {p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    :cond_b
    iput-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    .line 183
    .line 184
    iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 185
    .line 186
    iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 187
    .line 188
    :goto_4
    if-eqz v4, :cond_c

    .line 189
    .line 190
    return-object v4

    .line 191
    :cond_c
    :goto_5
    iput-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justShifted:Z

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_d
    if-ne v0, v4, :cond_f

    .line 196
    .line 197
    iput-boolean v5, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    .line 198
    .line 199
    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z

    .line 200
    .line 201
    if-eqz v0, :cond_e

    .line 202
    .line 203
    if-eqz v3, :cond_e

    .line 204
    .line 205
    invoke-static {p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    return-object p0

    .line 210
    :cond_e
    iput-boolean v5, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justShifted:Z

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_f
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-nez v1, :cond_10

    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    sub-int/2addr p0, v5

    .line 225
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 226
    .line 227
    .line 228
    sget-object p0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 229
    .line 230
    return-object p0

    .line 231
    :cond_10
    int-to-char v0, v0

    .line 232
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 233
    .line 234
    .line 235
    iput-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_11
    sget-object p0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 240
    .line 241
    return-object p0
.end method

.method public final implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z

    .line 6
    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    :cond_0
    iget p1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 10
    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    iget p0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 14
    .line 15
    const/4 p1, 0x6

    .line 16
    if-lt p0, p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object p0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 23
    invoke-static {p0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final implReset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I

    .line 5
    .line 6
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z

    .line 9
    .line 10
    return-void
.end method
