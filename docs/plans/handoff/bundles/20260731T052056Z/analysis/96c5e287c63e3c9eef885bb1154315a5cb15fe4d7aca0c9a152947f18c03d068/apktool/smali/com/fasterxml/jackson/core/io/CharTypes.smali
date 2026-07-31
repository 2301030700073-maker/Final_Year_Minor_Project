.class public abstract Lcom/fasterxml/jackson/core/io/CharTypes;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final HB:[B

.field public static final HC:[C

.field public static final sHexValues:[I

.field public static final sInputCodesUTF8:[I

.field public static final sOutputEscapes128:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [C

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    .line 9
    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    sput-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    .line 18
    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    .line 19
    .line 20
    sget-object v4, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    .line 21
    .line 22
    aget-char v4, v4, v2

    .line 23
    .line 24
    int-to-byte v4, v4

    .line 25
    aput-byte v4, v3, v2

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/16 v0, 0x100

    .line 31
    .line 32
    new-array v2, v0, [I

    .line 33
    .line 34
    move v3, v1

    .line 35
    :goto_1
    const/16 v4, 0x20

    .line 36
    .line 37
    const/4 v5, -0x1

    .line 38
    if-ge v3, v4, :cond_1

    .line 39
    .line 40
    aput v5, v2, v3

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v3, 0x22

    .line 46
    .line 47
    const/4 v6, 0x1

    .line 48
    aput v6, v2, v3

    .line 49
    .line 50
    const/16 v7, 0x5c

    .line 51
    .line 52
    aput v6, v2, v7

    .line 53
    .line 54
    new-array v8, v0, [I

    .line 55
    .line 56
    invoke-static {v2, v1, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    const/16 v2, 0x80

    .line 60
    .line 61
    move v9, v2

    .line 62
    :goto_2
    if-ge v9, v0, :cond_5

    .line 63
    .line 64
    and-int/lit16 v10, v9, 0xe0

    .line 65
    .line 66
    const/16 v11, 0xc0

    .line 67
    .line 68
    if-ne v10, v11, :cond_2

    .line 69
    .line 70
    const/4 v10, 0x2

    .line 71
    goto :goto_3

    .line 72
    :cond_2
    and-int/lit16 v10, v9, 0xf0

    .line 73
    .line 74
    const/16 v11, 0xe0

    .line 75
    .line 76
    if-ne v10, v11, :cond_3

    .line 77
    .line 78
    const/4 v10, 0x3

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    and-int/lit16 v10, v9, 0xf8

    .line 81
    .line 82
    const/16 v11, 0xf0

    .line 83
    .line 84
    if-ne v10, v11, :cond_4

    .line 85
    .line 86
    const/4 v10, 0x4

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    move v10, v5

    .line 89
    :goto_3
    aput v10, v8, v9

    .line 90
    .line 91
    add-int/lit8 v9, v9, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    sput-object v8, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    .line 95
    .line 96
    new-array v8, v0, [I

    .line 97
    .line 98
    invoke-static {v8, v5}, Ljava/util/Arrays;->fill([II)V

    .line 99
    .line 100
    .line 101
    const/16 v9, 0x21

    .line 102
    .line 103
    :goto_4
    if-ge v9, v0, :cond_7

    .line 104
    .line 105
    int-to-char v10, v9

    .line 106
    invoke-static {v10}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_6

    .line 111
    .line 112
    aput v1, v8, v9

    .line 113
    .line 114
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_7
    const/16 v9, 0x40

    .line 118
    .line 119
    aput v1, v8, v9

    .line 120
    .line 121
    const/16 v9, 0x23

    .line 122
    .line 123
    aput v1, v8, v9

    .line 124
    .line 125
    const/16 v10, 0x2a

    .line 126
    .line 127
    aput v1, v8, v10

    .line 128
    .line 129
    const/16 v11, 0x2d

    .line 130
    .line 131
    aput v1, v8, v11

    .line 132
    .line 133
    const/16 v11, 0x2b

    .line 134
    .line 135
    aput v1, v8, v11

    .line 136
    .line 137
    new-array v11, v0, [I

    .line 138
    .line 139
    invoke-static {v8, v1, v11, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    .line 141
    .line 142
    invoke-static {v11, v2, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 143
    .line 144
    .line 145
    new-array v8, v0, [I

    .line 146
    .line 147
    sget-object v11, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    .line 148
    .line 149
    invoke-static {v11, v2, v8, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    .line 151
    .line 152
    invoke-static {v8, v1, v4, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 153
    .line 154
    .line 155
    const/16 v12, 0x9

    .line 156
    .line 157
    aput v1, v8, v12

    .line 158
    .line 159
    const/16 v13, 0xa

    .line 160
    .line 161
    aput v13, v8, v13

    .line 162
    .line 163
    const/16 v14, 0xd

    .line 164
    .line 165
    aput v14, v8, v14

    .line 166
    .line 167
    aput v10, v8, v10

    .line 168
    .line 169
    new-array v8, v0, [I

    .line 170
    .line 171
    invoke-static {v11, v2, v8, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    .line 173
    .line 174
    invoke-static {v8, v1, v4, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 175
    .line 176
    .line 177
    aput v6, v8, v4

    .line 178
    .line 179
    aput v6, v8, v12

    .line 180
    .line 181
    aput v13, v8, v13

    .line 182
    .line 183
    aput v14, v8, v14

    .line 184
    .line 185
    const/16 v6, 0x2f

    .line 186
    .line 187
    aput v6, v8, v6

    .line 188
    .line 189
    aput v9, v8, v9

    .line 190
    .line 191
    new-array v2, v2, [I

    .line 192
    .line 193
    move v6, v1

    .line 194
    :goto_5
    if-ge v6, v4, :cond_8

    .line 195
    .line 196
    aput v5, v2, v6

    .line 197
    .line 198
    add-int/lit8 v6, v6, 0x1

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_8
    aput v3, v2, v3

    .line 202
    .line 203
    aput v7, v2, v7

    .line 204
    .line 205
    const/16 v3, 0x8

    .line 206
    .line 207
    const/16 v4, 0x62

    .line 208
    .line 209
    aput v4, v2, v3

    .line 210
    .line 211
    const/16 v3, 0x74

    .line 212
    .line 213
    aput v3, v2, v12

    .line 214
    .line 215
    const/16 v3, 0xc

    .line 216
    .line 217
    const/16 v4, 0x66

    .line 218
    .line 219
    aput v4, v2, v3

    .line 220
    .line 221
    const/16 v3, 0x6e

    .line 222
    .line 223
    aput v3, v2, v13

    .line 224
    .line 225
    const/16 v3, 0x72

    .line 226
    .line 227
    aput v3, v2, v14

    .line 228
    .line 229
    sput-object v2, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 230
    .line 231
    new-array v0, v0, [I

    .line 232
    .line 233
    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    .line 234
    .line 235
    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([II)V

    .line 236
    .line 237
    .line 238
    move v0, v1

    .line 239
    :goto_6
    if-ge v0, v13, :cond_9

    .line 240
    .line 241
    sget-object v2, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    .line 242
    .line 243
    add-int/lit8 v3, v0, 0x30

    .line 244
    .line 245
    aput v0, v2, v3

    .line 246
    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_9
    :goto_7
    const/4 v0, 0x6

    .line 251
    if-ge v1, v0, :cond_a

    .line 252
    .line 253
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    .line 254
    .line 255
    add-int/lit8 v2, v1, 0x61

    .line 256
    .line 257
    add-int/lit8 v3, v1, 0xa

    .line 258
    .line 259
    aput v3, v0, v2

    .line 260
    .line 261
    add-int/lit8 v2, v1, 0x41

    .line 262
    .line 263
    aput v3, v0, v2

    .line 264
    .line 265
    add-int/lit8 v1, v1, 0x1

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_a
    return-void

    .line 269
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
