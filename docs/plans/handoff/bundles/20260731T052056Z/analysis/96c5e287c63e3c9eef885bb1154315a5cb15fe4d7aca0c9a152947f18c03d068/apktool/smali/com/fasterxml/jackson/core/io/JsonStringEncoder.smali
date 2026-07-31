.class public final Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final HC:[C

.field public static final instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    .line 2
    .line 3
    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [C

    .line 8
    .line 9
    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    .line 10
    .line 11
    new-instance v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    .line 17
    .line 18
    return-void
.end method

.method public static quoteAsString(Ljava/lang/String;)[C
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shr-int/lit8 v1, v0, 0x3

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    add-int/2addr v1, v2

    .line 9
    const/16 v3, 0x3e8

    .line 10
    .line 11
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    const/16 v3, 0x10

    .line 17
    .line 18
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/16 v3, 0x7d00

    .line 23
    .line 24
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    new-array v1, v1, [C

    .line 29
    .line 30
    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 31
    .line 32
    array-length v4, v3

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    move v8, v5

    .line 36
    move v9, v8

    .line 37
    move-object v7, v6

    .line 38
    :goto_0
    const/4 v10, 0x1

    .line 39
    if-ge v8, v0, :cond_9

    .line 40
    .line 41
    :goto_1
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    if-ge v11, v4, :cond_5

    .line 46
    .line 47
    aget v12, v3, v11

    .line 48
    .line 49
    if-eqz v12, :cond_5

    .line 50
    .line 51
    const/4 v11, 0x2

    .line 52
    if-nez v7, :cond_0

    .line 53
    .line 54
    new-array v7, v2, [C

    .line 55
    .line 56
    const/16 v12, 0x5c

    .line 57
    .line 58
    aput-char v12, v7, v5

    .line 59
    .line 60
    const/16 v12, 0x30

    .line 61
    .line 62
    aput-char v12, v7, v11

    .line 63
    .line 64
    const/4 v13, 0x3

    .line 65
    aput-char v12, v7, v13

    .line 66
    .line 67
    :cond_0
    add-int/lit8 v12, v8, 0x1

    .line 68
    .line 69
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    aget v13, v3, v8

    .line 74
    .line 75
    if-gez v13, :cond_1

    .line 76
    .line 77
    const/16 v11, 0x75

    .line 78
    .line 79
    aput-char v11, v7, v10

    .line 80
    .line 81
    shr-int/lit8 v10, v8, 0x4

    .line 82
    .line 83
    sget-object v11, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    .line 84
    .line 85
    aget-char v10, v11, v10

    .line 86
    .line 87
    const/4 v13, 0x4

    .line 88
    aput-char v10, v7, v13

    .line 89
    .line 90
    and-int/lit8 v8, v8, 0xf

    .line 91
    .line 92
    aget-char v8, v11, v8

    .line 93
    .line 94
    const/4 v10, 0x5

    .line 95
    aput-char v8, v7, v10

    .line 96
    .line 97
    move v11, v2

    .line 98
    goto :goto_2

    .line 99
    :cond_1
    int-to-char v8, v13

    .line 100
    aput-char v8, v7, v10

    .line 101
    .line 102
    :goto_2
    add-int v8, v9, v11

    .line 103
    .line 104
    array-length v10, v1

    .line 105
    if-le v8, v10, :cond_4

    .line 106
    .line 107
    array-length v8, v1

    .line 108
    sub-int/2addr v8, v9

    .line 109
    if-lez v8, :cond_2

    .line 110
    .line 111
    invoke-static {v7, v5, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    :cond_2
    if-nez v6, :cond_3

    .line 115
    .line 116
    new-instance v6, Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 117
    .line 118
    invoke-direct {v6, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>([C)V

    .line 119
    .line 120
    .line 121
    :cond_3
    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    sub-int/2addr v11, v8

    .line 126
    invoke-static {v7, v8, v1, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    .line 128
    .line 129
    move v9, v11

    .line 130
    goto :goto_3

    .line 131
    :cond_4
    invoke-static {v7, v5, v1, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    .line 133
    .line 134
    move v9, v8

    .line 135
    :goto_3
    move v8, v12

    .line 136
    goto :goto_0

    .line 137
    :cond_5
    array-length v12, v1

    .line 138
    if-lt v9, v12, :cond_7

    .line 139
    .line 140
    if-nez v6, :cond_6

    .line 141
    .line 142
    new-instance v6, Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 143
    .line 144
    invoke-direct {v6, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>([C)V

    .line 145
    .line 146
    .line 147
    :cond_6
    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    move v9, v5

    .line 152
    :cond_7
    add-int/lit8 v12, v9, 0x1

    .line 153
    .line 154
    aput-char v11, v1, v9

    .line 155
    .line 156
    add-int/lit8 v8, v8, 0x1

    .line 157
    .line 158
    if-lt v8, v0, :cond_8

    .line 159
    .line 160
    move v9, v12

    .line 161
    goto :goto_4

    .line 162
    :cond_8
    move v9, v12

    .line 163
    goto :goto_1

    .line 164
    :cond_9
    :goto_4
    if-nez v6, :cond_a

    .line 165
    .line 166
    invoke-static {v1, v5, v9}, Ljava/util/Arrays;->copyOfRange([CII)[C

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :cond_a
    iput v9, v6, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 172
    .line 173
    iget-object p0, v6, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 174
    .line 175
    if-nez p0, :cond_13

    .line 176
    .line 177
    iget-object v0, v6, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 178
    .line 179
    if-eqz v0, :cond_b

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    goto :goto_8

    .line 186
    :cond_b
    iget v1, v6, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 187
    .line 188
    sget-object v2, Lcom/fasterxml/jackson/core/util/TextBuffer;->NO_CHARS:[C

    .line 189
    .line 190
    if-ltz v1, :cond_c

    .line 191
    .line 192
    :goto_5
    move-object p0, v2

    .line 193
    goto :goto_8

    .line 194
    :cond_c
    if-ltz v1, :cond_d

    .line 195
    .line 196
    move p0, v5

    .line 197
    goto :goto_6

    .line 198
    :cond_d
    if-eqz p0, :cond_e

    .line 199
    .line 200
    array-length p0, p0

    .line 201
    goto :goto_6

    .line 202
    :cond_e
    if-eqz v0, :cond_f

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    goto :goto_6

    .line 209
    :cond_f
    iget p0, v6, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    .line 210
    .line 211
    add-int/2addr p0, v9

    .line 212
    :goto_6
    if-ge p0, v10, :cond_10

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_10
    new-array p0, p0, [C

    .line 216
    .line 217
    iget-object v0, v6, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 218
    .line 219
    if-eqz v0, :cond_11

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    move v1, v5

    .line 226
    move v2, v1

    .line 227
    :goto_7
    if-ge v1, v0, :cond_12

    .line 228
    .line 229
    iget-object v3, v6, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    check-cast v3, [C

    .line 236
    .line 237
    array-length v4, v3

    .line 238
    invoke-static {v3, v5, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    .line 240
    .line 241
    add-int/2addr v2, v4

    .line 242
    add-int/lit8 v1, v1, 0x1

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_11
    move v2, v5

    .line 246
    :cond_12
    iget-object v0, v6, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 247
    .line 248
    iget v1, v6, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 249
    .line 250
    invoke-static {v0, v5, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    .line 252
    .line 253
    :goto_8
    iput-object p0, v6, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 254
    .line 255
    :cond_13
    return-object p0
.end method
