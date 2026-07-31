.class public abstract Lkotlin/text/HexExtensionsKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final BYTE_TO_LOWER_CASE_HEX_DIGITS:[I

.field public static final HEX_DIGITS_TO_DECIMAL:[I

.field public static final HEX_DIGITS_TO_LONG_DECIMAL:[J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    const-string v4, "0123456789abcdef"

    .line 8
    .line 9
    if-ge v3, v0, :cond_0

    .line 10
    .line 11
    shr-int/lit8 v5, v3, 0x4

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    shl-int/lit8 v5, v5, 0x8

    .line 18
    .line 19
    and-int/lit8 v6, v3, 0xf

    .line 20
    .line 21
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    or-int/2addr v4, v5

    .line 26
    aput v4, v1, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sput-object v1, Lkotlin/text/HexExtensionsKt;->BYTE_TO_LOWER_CASE_HEX_DIGITS:[I

    .line 32
    .line 33
    new-array v1, v0, [I

    .line 34
    .line 35
    move v3, v2

    .line 36
    :goto_1
    const-string v5, "0123456789ABCDEF"

    .line 37
    .line 38
    if-ge v3, v0, :cond_1

    .line 39
    .line 40
    shr-int/lit8 v6, v3, 0x4

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    shl-int/lit8 v6, v6, 0x8

    .line 47
    .line 48
    and-int/lit8 v7, v3, 0xf

    .line 49
    .line 50
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    or-int/2addr v5, v6

    .line 55
    aput v5, v1, v3

    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    new-array v1, v0, [I

    .line 61
    .line 62
    move v3, v2

    .line 63
    :goto_2
    if-ge v3, v0, :cond_2

    .line 64
    .line 65
    const/4 v6, -0x1

    .line 66
    aput v6, v1, v3

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move v3, v2

    .line 72
    move v6, v3

    .line 73
    :goto_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-ge v3, v7, :cond_3

    .line 78
    .line 79
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    add-int/lit8 v8, v6, 0x1

    .line 84
    .line 85
    aput v6, v1, v7

    .line 86
    .line 87
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    move v6, v8

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    move v3, v2

    .line 92
    move v6, v3

    .line 93
    :goto_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-ge v3, v7, :cond_4

    .line 98
    .line 99
    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    add-int/lit8 v8, v6, 0x1

    .line 104
    .line 105
    aput v6, v1, v7

    .line 106
    .line 107
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    move v6, v8

    .line 110
    goto :goto_4

    .line 111
    :cond_4
    sput-object v1, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_DECIMAL:[I

    .line 112
    .line 113
    new-array v1, v0, [J

    .line 114
    .line 115
    move v3, v2

    .line 116
    :goto_5
    if-ge v3, v0, :cond_5

    .line 117
    .line 118
    const-wide/16 v6, -0x1

    .line 119
    .line 120
    aput-wide v6, v1, v3

    .line 121
    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_5
    move v0, v2

    .line 126
    move v3, v0

    .line 127
    :goto_6
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-ge v0, v6, :cond_6

    .line 132
    .line 133
    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    add-int/lit8 v7, v3, 0x1

    .line 138
    .line 139
    int-to-long v8, v3

    .line 140
    aput-wide v8, v1, v6

    .line 141
    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 143
    .line 144
    move v3, v7

    .line 145
    goto :goto_6

    .line 146
    :cond_6
    move v0, v2

    .line 147
    :goto_7
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-ge v2, v3, :cond_7

    .line 152
    .line 153
    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    add-int/lit8 v4, v0, 0x1

    .line 158
    .line 159
    int-to-long v6, v0

    .line 160
    aput-wide v6, v1, v3

    .line 161
    .line 162
    add-int/lit8 v2, v2, 0x1

    .line 163
    .line 164
    move v0, v4

    .line 165
    goto :goto_7

    .line 166
    :cond_7
    sput-object v1, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_LONG_DECIMAL:[J

    .line 167
    .line 168
    return-void
.end method

.method public static hexToByteArray$default()[B
    .locals 15

    .line 1
    sget-object v0, Lkotlin/text/HexFormat;->Default:Lkotlin/text/HexFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0x40

    .line 8
    .line 9
    invoke-static {v1, v2, v2}, Landroidx/core/os/BundleKt;->checkBoundsIndexes$kotlin_stdlib(III)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lkotlin/text/HexFormat;->bytes:Lkotlin/text/HexFormat$BytesHexFormat;

    .line 13
    .line 14
    iget-boolean v3, v0, Lkotlin/text/HexFormat$BytesHexFormat;->noLineAndGroupSeparator:Z

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    if-eqz v3, :cond_3

    .line 18
    .line 19
    iget-boolean v0, v0, Lkotlin/text/HexFormat$BytesHexFormat;->shortByteSeparatorNoPrefixAndSuffix:Z

    .line 20
    .line 21
    const/16 v2, 0x20

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-array v0, v2, [B

    .line 26
    .line 27
    move v3, v1

    .line 28
    :goto_0
    if-ge v1, v2, :cond_2

    .line 29
    .line 30
    invoke-static {v3}, Lkotlin/text/HexExtensionsKt;->parseByteAt(I)B

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    aput-byte v5, v0, v1

    .line 35
    .line 36
    add-int/2addr v3, v4

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-array v0, v2, [B

    .line 41
    .line 42
    move v2, v1

    .line 43
    :goto_1
    const/16 v3, 0x1f

    .line 44
    .line 45
    if-ge v1, v3, :cond_1

    .line 46
    .line 47
    invoke-static {v2}, Lkotlin/text/HexExtensionsKt;->parseByteAt(I)B

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    aput-byte v3, v0, v1

    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x2

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-static {v2}, Lkotlin/text/HexExtensionsKt;->parseByteAt(I)B

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    aput-byte v1, v0, v3

    .line 63
    .line 64
    :cond_2
    return-object v0

    .line 65
    :cond_3
    iget-boolean v0, v0, Lkotlin/text/HexFormat$BytesHexFormat;->ignoreCase:Z

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    const-wide/16 v5, 0x40

    .line 69
    .line 70
    const-wide v7, 0xfffffffeL

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    invoke-static {v3, v5, v6, v7, v8}, Lkotlin/text/HexExtensionsKt;->wholeElementsPerSet(IJJ)J

    .line 76
    .line 77
    .line 78
    move-result-wide v9

    .line 79
    const-wide v11, 0xffffffffL

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    mul-long/2addr v11, v9

    .line 85
    sub-long/2addr v5, v11

    .line 86
    invoke-static {v4, v5, v6, v7, v8}, Lkotlin/text/HexExtensionsKt;->wholeElementsPerSet(IJJ)J

    .line 87
    .line 88
    .line 89
    move-result-wide v7

    .line 90
    const-wide v11, 0x100000000L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    mul-long/2addr v11, v7

    .line 96
    sub-long/2addr v5, v11

    .line 97
    const-wide/16 v11, 0x2

    .line 98
    .line 99
    invoke-static {v1, v5, v6, v11, v12}, Lkotlin/text/HexExtensionsKt;->wholeElementsPerSet(IJJ)J

    .line 100
    .line 101
    .line 102
    move-result-wide v13

    .line 103
    mul-long/2addr v11, v13

    .line 104
    sub-long/2addr v5, v11

    .line 105
    const-wide/16 v11, 0x0

    .line 106
    .line 107
    cmp-long v5, v5, v11

    .line 108
    .line 109
    if-lez v5, :cond_4

    .line 110
    .line 111
    move v5, v3

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    move v5, v1

    .line 114
    :goto_2
    const-wide/32 v11, 0x7fffffff

    .line 115
    .line 116
    .line 117
    mul-long/2addr v9, v11

    .line 118
    mul-long/2addr v7, v11

    .line 119
    add-long/2addr v7, v9

    .line 120
    add-long/2addr v7, v13

    .line 121
    int-to-long v5, v5

    .line 122
    add-long/2addr v7, v5

    .line 123
    long-to-int v5, v7

    .line 124
    new-array v6, v5, [B

    .line 125
    .line 126
    move v7, v1

    .line 127
    move v8, v7

    .line 128
    move v9, v8

    .line 129
    move v10, v9

    .line 130
    :goto_3
    if-ge v7, v2, :cond_e

    .line 131
    .line 132
    const-string v11, ", but was "

    .line 133
    .line 134
    const-string v12, "cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab"

    .line 135
    .line 136
    const v13, 0x7fffffff

    .line 137
    .line 138
    .line 139
    if-ne v9, v13, :cond_8

    .line 140
    .line 141
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    const/16 v10, 0xd

    .line 146
    .line 147
    const/16 v13, 0xa

    .line 148
    .line 149
    if-ne v9, v10, :cond_6

    .line 150
    .line 151
    add-int/lit8 v9, v7, 0x1

    .line 152
    .line 153
    if-ge v9, v2, :cond_5

    .line 154
    .line 155
    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-ne v10, v13, :cond_5

    .line 160
    .line 161
    add-int/lit8 v7, v7, 0x2

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_5
    move v7, v9

    .line 165
    goto :goto_4

    .line 166
    :cond_6
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    if-ne v9, v13, :cond_7

    .line 171
    .line 172
    add-int/lit8 v7, v7, 0x1

    .line 173
    .line 174
    :goto_4
    move v9, v1

    .line 175
    move v10, v9

    .line 176
    goto :goto_7

    .line 177
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 178
    .line 179
    const-string v1, "Expected a new line at index "

    .line 180
    .line 181
    invoke-static {v1, v7, v11}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v0

    .line 200
    :cond_8
    if-ne v10, v13, :cond_c

    .line 201
    .line 202
    move v10, v1

    .line 203
    :goto_5
    if-ge v10, v4, :cond_b

    .line 204
    .line 205
    const-string v13, "  "

    .line 206
    .line 207
    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    add-int v14, v7, v10

    .line 212
    .line 213
    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    .line 214
    .line 215
    .line 216
    move-result v14

    .line 217
    invoke-static {v13, v14, v0}, Lkotlin/text/CharsKt;->equals(CCZ)Z

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    if-eqz v13, :cond_9

    .line 222
    .line 223
    add-int/lit8 v10, v10, 0x1

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_9
    add-int/2addr v4, v7

    .line 227
    if-le v4, v2, :cond_a

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_a
    move v2, v4

    .line 231
    :goto_6
    invoke-virtual {v12, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 236
    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v3, "Expected group separator \"  \" at index "

    .line 240
    .line 241
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw v1

    .line 261
    :cond_b
    add-int/lit8 v7, v7, 0x2

    .line 262
    .line 263
    move v10, v1

    .line 264
    :cond_c
    :goto_7
    add-int/2addr v9, v3

    .line 265
    add-int/2addr v10, v3

    .line 266
    const/16 v11, 0x3e

    .line 267
    .line 268
    if-lt v11, v7, :cond_d

    .line 269
    .line 270
    add-int/lit8 v11, v8, 0x1

    .line 271
    .line 272
    invoke-static {v7}, Lkotlin/text/HexExtensionsKt;->parseByteAt(I)B

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    aput-byte v12, v6, v8

    .line 277
    .line 278
    add-int/lit8 v7, v7, 0x2

    .line 279
    .line 280
    move v8, v11

    .line 281
    goto/16 :goto_3

    .line 282
    .line 283
    :cond_d
    invoke-virtual {v12, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 288
    .line 289
    rsub-int/lit8 v2, v7, 0x40

    .line 290
    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v4, "Expected exactly 2 hexadecimal digits at index "

    .line 294
    .line 295
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v4, ", but was \""

    .line 302
    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v0, "\" of length "

    .line 310
    .line 311
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v1

    .line 325
    :cond_e
    if-ne v8, v5, :cond_f

    .line 326
    .line 327
    return-object v6

    .line 328
    :cond_f
    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    return-object v0
.end method

.method public static final parseByteAt(I)B
    .locals 5

    .line 1
    const-string v0, "cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    ushr-int/lit8 v2, v1, 0x8

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    sget-object v2, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_DECIMAL:[I

    .line 13
    .line 14
    aget v1, v2, v1

    .line 15
    .line 16
    if-ltz v1, :cond_1

    .line 17
    .line 18
    add-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    ushr-int/lit8 v4, v0, 0x8

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    aget v0, v2, v0

    .line 29
    .line 30
    if-ltz v0, :cond_0

    .line 31
    .line 32
    shl-int/lit8 p0, v1, 0x4

    .line 33
    .line 34
    or-int/2addr p0, v0

    .line 35
    int-to-byte p0, p0

    .line 36
    return p0

    .line 37
    :cond_0
    invoke-static {p0}, Lkotlin/text/HexExtensionsKt;->throwInvalidDigitAt(I)V

    .line 38
    .line 39
    .line 40
    throw v3

    .line 41
    :cond_1
    invoke-static {p0}, Lkotlin/text/HexExtensionsKt;->throwInvalidDigitAt(I)V

    .line 42
    .line 43
    .line 44
    throw v3
.end method

.method public static final throwInvalidDigitAt(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 2
    .line 3
    const-string v1, "Expected a hexadecimal digit at index "

    .line 4
    .line 5
    const-string v2, ", but was "

    .line 6
    .line 7
    invoke-static {v1, p0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "cb84069bd68116bafae5ee4ee5b08a567aa6d898404e7cb12f9e756df5cf5cab"

    .line 12
    .line 13
    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public static final wholeElementsPerSet(IJJ)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_1

    .line 6
    .line 7
    cmp-long v2, p3, v0

    .line 8
    .line 9
    if-gtz v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    int-to-long v0, p0

    .line 13
    add-long/2addr p1, v0

    .line 14
    add-long/2addr p3, v0

    .line 15
    div-long/2addr p1, p3

    .line 16
    return-wide p1

    .line 17
    :cond_1
    :goto_0
    return-wide v0
.end method
