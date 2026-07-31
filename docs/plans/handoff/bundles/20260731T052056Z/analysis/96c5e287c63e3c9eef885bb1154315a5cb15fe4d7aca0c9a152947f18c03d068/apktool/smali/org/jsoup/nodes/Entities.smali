.class public abstract Lorg/jsoup/nodes/Entities;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final LocalEncoder:Ljava/lang/ThreadLocal;

.field public static final baseSorted:Ljava/util/ArrayList;

.field public static final charBuf:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

.field public static final codeDelims:[C

.field public static final multipoints:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/jsoup/nodes/Entities;->codeDelims:[C

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 v1, 0x6a

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lorg/jsoup/nodes/Entities;->baseSorted:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 32
    .line 33
    invoke-direct {v2, v0, v1}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;-><init>(Ljava/util/function/Supplier;I)V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lorg/jsoup/nodes/Entities;->charBuf:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lorg/jsoup/nodes/Entities;->LocalEncoder:Ljava/lang/ThreadLocal;

    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method public static appendEncoded(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Entities$EscapeMode;->nameForCodepoint(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, ""

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x3b

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/16 p2, 0x26

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, v1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p1, "&#x"

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, v1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/jsoup/nodes/Entities$1;->$SwitchMap$org$jsoup$nodes$Entities$CoreCharset:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p0, v1, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq p0, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    const p0, 0xd800

    .line 22
    .line 23
    .line 24
    if-lt p1, p0, :cond_2

    .line 25
    .line 26
    const p0, 0xe000

    .line 27
    .line 28
    .line 29
    if-lt p1, p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v0

    .line 33
    :cond_2
    :goto_0
    return v1

    .line 34
    :cond_3
    const/16 p0, 0x80

    .line 35
    .line 36
    if-ge p1, p0, :cond_4

    .line 37
    .line 38
    return v1

    .line 39
    :cond_4
    return v0
.end method

.method public static escape(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v1, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 6
    .line 7
    iget-object v1, v1, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v4, "US-ASCII"

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    sget-object v3, Lorg/jsoup/nodes/Entities$CoreCharset;->ascii:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v4, "UTF-"

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    sget-object v3, Lorg/jsoup/nodes/Entities$CoreCharset;->utf:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object v3, Lorg/jsoup/nodes/Entities$CoreCharset;->fallback:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 36
    .line 37
    :goto_0
    sget-object v4, Lorg/jsoup/nodes/Entities;->LocalEncoder:Ljava/lang/ThreadLocal;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Ljava/nio/charset/CharsetEncoder;

    .line 44
    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v6, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_3

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v9, 0x0

    .line 72
    :goto_1
    if-ge v6, v1, :cond_1d

    .line 73
    .line 74
    move-object/from16 v10, p1

    .line 75
    .line 76
    invoke-virtual {v10, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    and-int/lit8 v12, p3, 0x4

    .line 81
    .line 82
    const/16 v13, 0x20

    .line 83
    .line 84
    if-eqz v12, :cond_a

    .line 85
    .line 86
    invoke-static {v11}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    const/4 v14, 0x1

    .line 91
    if-eqz v12, :cond_8

    .line 92
    .line 93
    and-int/lit8 v12, p3, 0x8

    .line 94
    .line 95
    if-eqz v12, :cond_4

    .line 96
    .line 97
    if-nez v8, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    if-eqz v9, :cond_6

    .line 101
    .line 102
    :cond_5
    :goto_2
    const/4 v12, 0x0

    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :cond_6
    and-int/lit8 v12, p3, 0x10

    .line 106
    .line 107
    if-eqz v12, :cond_7

    .line 108
    .line 109
    move v7, v14

    .line 110
    goto :goto_2

    .line 111
    :cond_7
    invoke-virtual {v0, v13}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 112
    .line 113
    .line 114
    move v9, v14

    .line 115
    goto :goto_2

    .line 116
    :cond_8
    if-eqz v7, :cond_9

    .line 117
    .line 118
    invoke-virtual {v0, v13}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 119
    .line 120
    .line 121
    move v8, v14

    .line 122
    const/4 v7, 0x0

    .line 123
    :goto_3
    const/4 v9, 0x0

    .line 124
    goto :goto_4

    .line 125
    :cond_9
    move v8, v14

    .line 126
    goto :goto_3

    .line 127
    :cond_a
    :goto_4
    sget-object v12, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 128
    .line 129
    const/16 v15, 0xd

    .line 130
    .line 131
    const/16 v4, 0xa

    .line 132
    .line 133
    const/16 v14, 0x9

    .line 134
    .line 135
    if-ne v12, v2, :cond_d

    .line 136
    .line 137
    if-eq v11, v14, :cond_d

    .line 138
    .line 139
    if-eq v11, v4, :cond_d

    .line 140
    .line 141
    if-eq v11, v15, :cond_d

    .line 142
    .line 143
    if-lt v11, v13, :cond_b

    .line 144
    .line 145
    const v13, 0xd7ff

    .line 146
    .line 147
    .line 148
    if-le v11, v13, :cond_d

    .line 149
    .line 150
    :cond_b
    const v13, 0xe000

    .line 151
    .line 152
    .line 153
    if-lt v11, v13, :cond_c

    .line 154
    .line 155
    const v13, 0xfffd

    .line 156
    .line 157
    .line 158
    if-le v11, v13, :cond_d

    .line 159
    .line 160
    :cond_c
    const/high16 v13, 0x10000

    .line 161
    .line 162
    if-lt v11, v13, :cond_5

    .line 163
    .line 164
    const v13, 0x10ffff

    .line 165
    .line 166
    .line 167
    if-gt v11, v13, :cond_5

    .line 168
    .line 169
    :cond_d
    int-to-char v13, v11

    .line 170
    const/high16 v15, 0x10000

    .line 171
    .line 172
    if-ge v11, v15, :cond_1b

    .line 173
    .line 174
    if-eq v13, v14, :cond_1a

    .line 175
    .line 176
    if-eq v13, v4, :cond_1a

    .line 177
    .line 178
    const/16 v4, 0xd

    .line 179
    .line 180
    if-eq v13, v4, :cond_1a

    .line 181
    .line 182
    const/16 v4, 0x22

    .line 183
    .line 184
    if-eq v13, v4, :cond_18

    .line 185
    .line 186
    const/16 v4, 0x3c

    .line 187
    .line 188
    if-eq v13, v4, :cond_17

    .line 189
    .line 190
    const/16 v4, 0x3e

    .line 191
    .line 192
    if-eq v13, v4, :cond_16

    .line 193
    .line 194
    const/16 v4, 0xa0

    .line 195
    .line 196
    if-eq v13, v4, :cond_14

    .line 197
    .line 198
    const/16 v4, 0x26

    .line 199
    .line 200
    if-eq v13, v4, :cond_13

    .line 201
    .line 202
    const/16 v4, 0x27

    .line 203
    .line 204
    if-eq v13, v4, :cond_10

    .line 205
    .line 206
    const/16 v14, 0x20

    .line 207
    .line 208
    if-lt v13, v14, :cond_f

    .line 209
    .line 210
    invoke-static {v3, v13, v5}, Lorg/jsoup/nodes/Entities;->canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-nez v4, :cond_e

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_e
    invoke-virtual {v0, v13}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_f
    :goto_5
    invoke-static {v0, v2, v11}, Lorg/jsoup/nodes/Entities;->appendEncoded(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_10
    and-int/lit8 v13, p3, 0x2

    .line 226
    .line 227
    if-eqz v13, :cond_12

    .line 228
    .line 229
    and-int/lit8 v13, p3, 0x1

    .line 230
    .line 231
    if-eqz v13, :cond_12

    .line 232
    .line 233
    if-ne v2, v12, :cond_11

    .line 234
    .line 235
    const-string v4, "&#x27;"

    .line 236
    .line 237
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 238
    .line 239
    .line 240
    goto/16 :goto_2

    .line 241
    .line 242
    :cond_11
    const-string v4, "&apos;"

    .line 243
    .line 244
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 245
    .line 246
    .line 247
    goto/16 :goto_2

    .line 248
    .line 249
    :cond_12
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 250
    .line 251
    .line 252
    goto/16 :goto_2

    .line 253
    .line 254
    :cond_13
    const-string v4, "&amp;"

    .line 255
    .line 256
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 257
    .line 258
    .line 259
    goto/16 :goto_2

    .line 260
    .line 261
    :cond_14
    if-eq v2, v12, :cond_15

    .line 262
    .line 263
    const-string v4, "&nbsp;"

    .line 264
    .line 265
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 266
    .line 267
    .line 268
    goto/16 :goto_2

    .line 269
    .line 270
    :cond_15
    const-string v4, "&#xa0;"

    .line 271
    .line 272
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 273
    .line 274
    .line 275
    goto/16 :goto_2

    .line 276
    .line 277
    :cond_16
    const-string v4, "&gt;"

    .line 278
    .line 279
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 280
    .line 281
    .line 282
    goto/16 :goto_2

    .line 283
    .line 284
    :cond_17
    const-string v4, "&lt;"

    .line 285
    .line 286
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 287
    .line 288
    .line 289
    goto/16 :goto_2

    .line 290
    .line 291
    :cond_18
    and-int/lit8 v4, p3, 0x2

    .line 292
    .line 293
    if-eqz v4, :cond_19

    .line 294
    .line 295
    const-string v4, "&quot;"

    .line 296
    .line 297
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 298
    .line 299
    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :cond_19
    invoke-virtual {v0, v13}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 303
    .line 304
    .line 305
    goto/16 :goto_2

    .line 306
    .line 307
    :cond_1a
    invoke-virtual {v0, v13}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 308
    .line 309
    .line 310
    goto/16 :goto_2

    .line 311
    .line 312
    :cond_1b
    invoke-static {v3, v13, v5}, Lorg/jsoup/nodes/Entities;->canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    if-eqz v4, :cond_1c

    .line 317
    .line 318
    sget-object v4, Lorg/jsoup/nodes/Entities;->charBuf:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 319
    .line 320
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    check-cast v4, [C

    .line 325
    .line 326
    const/4 v12, 0x0

    .line 327
    invoke-static {v11, v4, v12}, Ljava/lang/Character;->toChars(I[CI)I

    .line 328
    .line 329
    .line 330
    move-result v13

    .line 331
    iget v14, v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->$r8$classId:I

    .line 332
    .line 333
    packed-switch v14, :pswitch_data_0

    .line 334
    .line 335
    .line 336
    iget-object v14, v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->a:Ljava/lang/Appendable;

    .line 337
    .line 338
    check-cast v14, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-virtual {v14, v4, v12, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    goto :goto_6

    .line 344
    :pswitch_0
    :try_start_0
    iget-object v14, v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->a:Ljava/lang/Appendable;

    .line 345
    .line 346
    new-instance v15, Ljava/lang/String;

    .line 347
    .line 348
    invoke-direct {v15, v4, v12, v13}, Ljava/lang/String;-><init>([CII)V

    .line 349
    .line 350
    .line 351
    invoke-interface {v14, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .line 353
    .line 354
    goto :goto_6

    .line 355
    :catch_0
    move-exception v0

    .line 356
    new-instance v1, Lcoil3/network/HttpException;

    .line 357
    .line 358
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 359
    .line 360
    .line 361
    throw v1

    .line 362
    :cond_1c
    const/4 v12, 0x0

    .line 363
    invoke-static {v0, v2, v11}, Lorg/jsoup/nodes/Entities;->appendEncoded(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 364
    .line 365
    .line 366
    :goto_6
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    add-int/2addr v6, v4

    .line 371
    goto/16 :goto_1

    .line 372
    .line 373
    :cond_1d
    return-void

    .line 374
    nop

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
