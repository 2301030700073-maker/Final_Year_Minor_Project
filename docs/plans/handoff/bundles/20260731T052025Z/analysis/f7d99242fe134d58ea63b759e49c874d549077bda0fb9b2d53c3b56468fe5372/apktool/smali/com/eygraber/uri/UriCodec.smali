.class public final Lcom/eygraber/uri/UriCodec;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final defaultAllowedSet:Ljava/util/Set;

.field public static final digitAsciiRange:Lkotlin/ranges/CharRange;

.field public static final hexDigits:[C

.field public static final lowercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

.field public static final lowercaseHexRange:Lkotlin/ranges/CharRange;

.field public static final uppercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

.field public static final uppercaseHexRange:Lkotlin/ranges/CharRange;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lkotlin/ranges/CharRange;

    .line 2
    .line 3
    const/16 v1, 0x7a

    .line 4
    .line 5
    const/16 v2, 0x61

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Lkotlin/ranges/CharRange;-><init>(CC)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/eygraber/uri/UriCodec;->lowercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

    .line 11
    .line 12
    new-instance v0, Lkotlin/ranges/CharRange;

    .line 13
    .line 14
    const/16 v1, 0x66

    .line 15
    .line 16
    invoke-direct {v0, v2, v1}, Lkotlin/ranges/CharRange;-><init>(CC)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/eygraber/uri/UriCodec;->lowercaseHexRange:Lkotlin/ranges/CharRange;

    .line 20
    .line 21
    new-instance v0, Lkotlin/ranges/CharRange;

    .line 22
    .line 23
    const/16 v1, 0x5a

    .line 24
    .line 25
    const/16 v2, 0x41

    .line 26
    .line 27
    invoke-direct {v0, v2, v1}, Lkotlin/ranges/CharRange;-><init>(CC)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/eygraber/uri/UriCodec;->uppercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

    .line 31
    .line 32
    new-instance v0, Lkotlin/ranges/CharRange;

    .line 33
    .line 34
    const/16 v1, 0x46

    .line 35
    .line 36
    invoke-direct {v0, v2, v1}, Lkotlin/ranges/CharRange;-><init>(CC)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/eygraber/uri/UriCodec;->uppercaseHexRange:Lkotlin/ranges/CharRange;

    .line 40
    .line 41
    new-instance v0, Lkotlin/ranges/CharRange;

    .line 42
    .line 43
    const/16 v1, 0x30

    .line 44
    .line 45
    const/16 v2, 0x39

    .line 46
    .line 47
    invoke-direct {v0, v1, v2}, Lkotlin/ranges/CharRange;-><init>(CC)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/eygraber/uri/UriCodec;->digitAsciiRange:Lkotlin/ranges/CharRange;

    .line 51
    .line 52
    const/16 v0, 0x5f

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/16 v1, 0x2d

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/16 v2, 0x21

    .line 65
    .line 66
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const/16 v3, 0x2e

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const/16 v4, 0x7e

    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/16 v5, 0x27

    .line 83
    .line 84
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/16 v6, 0x28

    .line 89
    .line 90
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const/16 v7, 0x29

    .line 95
    .line 96
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    const/16 v8, 0x2a

    .line 101
    .line 102
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    const/16 v9, 0x9

    .line 107
    .line 108
    new-array v9, v9, [Ljava/lang/Character;

    .line 109
    .line 110
    const/4 v10, 0x0

    .line 111
    aput-object v0, v9, v10

    .line 112
    .line 113
    const/4 v0, 0x1

    .line 114
    aput-object v1, v9, v0

    .line 115
    .line 116
    const/4 v0, 0x2

    .line 117
    aput-object v2, v9, v0

    .line 118
    .line 119
    const/4 v0, 0x3

    .line 120
    aput-object v3, v9, v0

    .line 121
    .line 122
    const/4 v0, 0x4

    .line 123
    aput-object v4, v9, v0

    .line 124
    .line 125
    const/4 v0, 0x5

    .line 126
    aput-object v5, v9, v0

    .line 127
    .line 128
    const/4 v0, 0x6

    .line 129
    aput-object v6, v9, v0

    .line 130
    .line 131
    const/4 v0, 0x7

    .line 132
    aput-object v7, v9, v0

    .line 133
    .line 134
    const/16 v0, 0x8

    .line 135
    .line 136
    aput-object v8, v9, v0

    .line 137
    .line 138
    invoke-static {v9}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sput-object v0, Lcom/eygraber/uri/UriCodec;->defaultAllowedSet:Ljava/util/Set;

    .line 143
    .line 144
    const/16 v0, 0x10

    .line 145
    .line 146
    new-array v0, v0, [C

    .line 147
    .line 148
    fill-array-data v0, :array_0

    .line 149
    .line 150
    .line 151
    sput-object v0, Lcom/eygraber/uri/UriCodec;->hexDigits:[C

    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lokhttp3/internal/http2/Huffman$Node;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-direct {v2, v3}, Lokhttp3/internal/http2/Huffman$Node;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const v6, 0xfffd

    .line 31
    .line 32
    .line 33
    if-ge v4, v5, :cond_c

    .line 34
    .line 35
    add-int/lit8 v5, v4, 0x1

    .line 36
    .line 37
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/16 v7, 0x25

    .line 42
    .line 43
    if-eq v4, v7, :cond_3

    .line 44
    .line 45
    iget v7, v2, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 46
    .line 47
    const/16 v8, 0x2b

    .line 48
    .line 49
    if-eq v4, v8, :cond_1

    .line 50
    .line 51
    if-eqz v7, :cond_0

    .line 52
    .line 53
    :try_start_0
    invoke-virtual {v2}, Lokhttp3/internal/http2/Huffman$Node;->decodeToStringAndReset()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_0
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_1
    if-eqz v7, :cond_2

    .line 69
    .line 70
    :try_start_1
    invoke-virtual {v2}, Lokhttp3/internal/http2/Huffman$Node;->decodeToStringAndReset()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catch_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_2
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :goto_3
    move v4, v5

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    move v4, v3

    .line 87
    move v7, v4

    .line 88
    :goto_4
    const/4 v8, 0x2

    .line 89
    if-ge v4, v8, :cond_b

    .line 90
    .line 91
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-ge v5, v8, :cond_9

    .line 96
    .line 97
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 98
    .line 99
    .line 100
    move-result v8
    :try_end_2
    .catch Lcom/eygraber/uri/UriSyntaxException; {:try_start_2 .. :try_end_2} :catch_3

    .line 101
    add-int/lit8 v5, v5, 0x1

    .line 102
    .line 103
    sget-object v9, Lcom/eygraber/uri/UriCodec;->digitAsciiRange:Lkotlin/ranges/CharRange;

    .line 104
    .line 105
    iget-char v10, v9, Lkotlin/ranges/CharRange;->first:C

    .line 106
    .line 107
    iget-char v9, v9, Lkotlin/ranges/CharRange;->last:C

    .line 108
    .line 109
    if-gt v8, v9, :cond_4

    .line 110
    .line 111
    if-gt v10, v8, :cond_4

    .line 112
    .line 113
    add-int/lit8 v8, v8, -0x30

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_4
    sget-object v9, Lcom/eygraber/uri/UriCodec;->lowercaseHexRange:Lkotlin/ranges/CharRange;

    .line 117
    .line 118
    iget-char v10, v9, Lkotlin/ranges/CharRange;->first:C

    .line 119
    .line 120
    iget-char v9, v9, Lkotlin/ranges/CharRange;->last:C

    .line 121
    .line 122
    if-gt v8, v9, :cond_5

    .line 123
    .line 124
    if-gt v10, v8, :cond_5

    .line 125
    .line 126
    add-int/lit8 v8, v8, -0x57

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_5
    sget-object v9, Lcom/eygraber/uri/UriCodec;->uppercaseHexRange:Lkotlin/ranges/CharRange;

    .line 130
    .line 131
    iget-char v10, v9, Lkotlin/ranges/CharRange;->first:C

    .line 132
    .line 133
    iget-char v9, v9, Lkotlin/ranges/CharRange;->last:C

    .line 134
    .line 135
    if-gt v8, v9, :cond_6

    .line 136
    .line 137
    if-gt v10, v8, :cond_6

    .line 138
    .line 139
    add-int/lit8 v8, v8, -0x37

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_6
    const/4 v8, -0x1

    .line 143
    :goto_5
    if-gez v8, :cond_8

    .line 144
    .line 145
    iget v4, v2, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 146
    .line 147
    if-eqz v4, :cond_7

    .line 148
    .line 149
    :try_start_3
    invoke-virtual {v2}, Lokhttp3/internal/http2/Huffman$Node;->decodeToStringAndReset()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 154
    .line 155
    .line 156
    goto :goto_6

    .line 157
    :catch_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    :cond_7
    :goto_6
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    goto :goto_8

    .line 164
    :cond_8
    mul-int/lit8 v7, v7, 0x10

    .line 165
    .line 166
    add-int/2addr v7, v8

    .line 167
    int-to-byte v7, v7

    .line 168
    add-int/lit8 v4, v4, 0x1

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_9
    :try_start_4
    new-instance v3, Lcom/eygraber/uri/UriSyntaxException;

    .line 172
    .line 173
    const-string v4, "Unexpected end of string "

    .line 174
    .line 175
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-direct {v3, v5, p0, v0}, Lcom/eygraber/uri/UriSyntaxException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v3
    :try_end_4
    .catch Lcom/eygraber/uri/UriSyntaxException; {:try_start_4 .. :try_end_4} :catch_3

    .line 183
    :catch_3
    iget p0, v2, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 184
    .line 185
    if-eqz p0, :cond_a

    .line 186
    .line 187
    :try_start_5
    invoke-virtual {v2}, Lokhttp3/internal/http2/Huffman$Node;->decodeToStringAndReset()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 192
    .line 193
    .line 194
    goto :goto_7

    .line 195
    :catch_4
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    :cond_a
    :goto_7
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    return-object p0

    .line 206
    :cond_b
    :goto_8
    iget-object v4, v2, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v4, Lkotlin/SynchronizedLazyImpl;

    .line 209
    .line 210
    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    check-cast v4, [B

    .line 215
    .line 216
    iget v6, v2, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 217
    .line 218
    add-int/lit8 v8, v6, 0x1

    .line 219
    .line 220
    iput v8, v2, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 221
    .line 222
    aput-byte v7, v4, v6

    .line 223
    .line 224
    goto/16 :goto_3

    .line 225
    .line 226
    :cond_c
    iget p0, v2, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 227
    .line 228
    if-eqz p0, :cond_d

    .line 229
    .line 230
    :try_start_6
    invoke-virtual {v2}, Lokhttp3/internal/http2/Huffman$Node;->decodeToStringAndReset()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 235
    .line 236
    .line 237
    goto :goto_9

    .line 238
    :catch_5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    :cond_d
    :goto_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v4, v1

    .line 11
    move v3, v2

    .line 12
    :cond_0
    if-ge v3, v0, :cond_8

    .line 13
    .line 14
    move v5, v3

    .line 15
    :goto_0
    if-ge v5, v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-static {v6, p1}, Lcom/eygraber/uri/UriCodec;->isAllowed(CLjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_1

    .line 26
    .line 27
    add-int/lit8 v5, v5, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-ne v5, v0, :cond_4

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_2
    if-eqz v4, :cond_3

    .line 36
    .line 37
    invoke-virtual {v4, p0, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_3
    const-string p0, "Required value was null."

    .line 46
    .line 47
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_4
    if-nez v4, :cond_5

    .line 52
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    :cond_5
    if-le v5, v3, :cond_6

    .line 59
    .line 60
    invoke-virtual {v4, p0, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_6
    add-int/lit8 v3, v5, 0x1

    .line 64
    .line 65
    :goto_1
    if-ge v3, v0, :cond_7

    .line 66
    .line 67
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-static {v6, p1}, Lcom/eygraber/uri/UriCodec;->isAllowed(CLjava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_7

    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_7
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    :try_start_0
    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    array-length v6, v5

    .line 94
    move v7, v2

    .line 95
    :goto_2
    if-ge v7, v6, :cond_0

    .line 96
    .line 97
    const/16 v8, 0x25

    .line 98
    .line 99
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    sget-object v8, Lcom/eygraber/uri/UriCodec;->hexDigits:[C

    .line 103
    .line 104
    aget-byte v9, v5, v7

    .line 105
    .line 106
    and-int/lit16 v9, v9, 0xf0

    .line 107
    .line 108
    shr-int/lit8 v9, v9, 0x4

    .line 109
    .line 110
    aget-char v9, v8, v9

    .line 111
    .line 112
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    aget-byte v9, v5, v7

    .line 116
    .line 117
    and-int/lit8 v9, v9, 0xf

    .line 118
    .line 119
    aget-char v8, v8, v9

    .line 120
    .line 121
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    add-int/lit8 v7, v7, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_0
    move-exception p0

    .line 128
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-object v1

    .line 132
    :cond_8
    new-array p1, v2, [B

    .line 133
    .line 134
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->decodeToString([B)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    if-eqz v4, :cond_9

    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    :cond_9
    :goto_3
    return-object p0
.end method

.method public static isAllowed(CLjava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/eygraber/uri/UriCodec;->lowercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

    .line 2
    .line 3
    iget-char v1, v0, Lkotlin/ranges/CharRange;->first:C

    .line 4
    .line 5
    iget-char v0, v0, Lkotlin/ranges/CharRange;->last:C

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    if-gt v1, p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/eygraber/uri/UriCodec;->uppercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

    .line 13
    .line 14
    iget-char v1, v0, Lkotlin/ranges/CharRange;->first:C

    .line 15
    .line 16
    iget-char v0, v0, Lkotlin/ranges/CharRange;->last:C

    .line 17
    .line 18
    if-gt p0, v0, :cond_1

    .line 19
    .line 20
    if-gt v1, p0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Lcom/eygraber/uri/UriCodec;->digitAsciiRange:Lkotlin/ranges/CharRange;

    .line 24
    .line 25
    iget-char v1, v0, Lkotlin/ranges/CharRange;->first:C

    .line 26
    .line 27
    iget-char v0, v0, Lkotlin/ranges/CharRange;->last:C

    .line 28
    .line 29
    if-gt p0, v0, :cond_2

    .line 30
    .line 31
    if-gt v1, p0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-object v0, Lcom/eygraber/uri/UriCodec;->defaultAllowedSet:Ljava/util/Set;

    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    const/4 v1, 0x6

    .line 50
    invoke-static {p1, p0, v0, v1}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    const/4 p1, -0x1

    .line 55
    if-eq p0, p1, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    return v0

    .line 59
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 60
    return p0
.end method
