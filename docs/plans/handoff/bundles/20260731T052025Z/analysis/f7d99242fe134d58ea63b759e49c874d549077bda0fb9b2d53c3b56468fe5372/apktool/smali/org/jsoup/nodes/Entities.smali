.class public abstract Lorg/jsoup/nodes/Entities;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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

.method public static appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V
    .locals 4

    .line 1
    iget-object v0, p1, Lorg/jsoup/nodes/Entities$EscapeMode;->codeKeys:[I

    .line 2
    .line 3
    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p1, Lorg/jsoup/nodes/Entities$EscapeMode;->nameVals:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    add-int/lit8 v3, v3, -0x1

    .line 15
    .line 16
    if-ge v0, v3, :cond_0

    .line 17
    .line 18
    iget-object p1, p1, Lorg/jsoup/nodes/Entities$EscapeMode;->codeKeys:[I

    .line 19
    .line 20
    add-int/lit8 v3, v0, 0x1

    .line 21
    .line 22
    aget p1, p1, v3

    .line 23
    .line 24
    if-ne p1, p2, :cond_0

    .line 25
    .line 26
    aget-object p1, v2, v3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    aget-object p1, v2, v0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object p1, v1

    .line 33
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v1, 0x3b

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const/16 p2, 0x26

    .line 42
    .line 43
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const-string p1, "&#x"

    .line 56
    .line 57
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static canEncode(ICLjava/nio/charset/CharsetEncoder;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    const p0, 0xd800

    .line 16
    .line 17
    .line 18
    if-lt p1, p0, :cond_2

    .line 19
    .line 20
    const p0, 0xe000

    .line 21
    .line 22
    .line 23
    if-lt p1, p0, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 p0, 0x80

    .line 27
    .line 28
    if-ge p1, p0, :cond_3

    .line 29
    .line 30
    :cond_2
    :goto_0
    return v0

    .line 31
    :cond_3
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public static escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;I)V
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
    iget v3, v1, Lorg/jsoup/nodes/Document$OutputSettings;->syntax:I

    .line 8
    .line 9
    iget-object v1, v1, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-string v5, "US-ASCII"

    .line 16
    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v6, 0x2

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v5, "UTF-"

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    move v4, v6

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v4, 0x3

    .line 37
    :goto_0
    sget-object v5, Lorg/jsoup/nodes/Entities;->LocalEncoder:Ljava/lang/ThreadLocal;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    check-cast v8, Ljava/nio/charset/CharsetEncoder;

    .line 44
    .line 45
    if-eqz v8, :cond_2

    .line 46
    .line 47
    invoke-virtual {v8}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    invoke-virtual {v9, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-nez v9, :cond_3

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v5, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

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
    const/4 v9, 0x0

    .line 69
    const/4 v10, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v12, 0x0

    .line 72
    :goto_1
    if-ge v9, v1, :cond_1d

    .line 73
    .line 74
    move-object/from16 v13, p1

    .line 75
    .line 76
    invoke-virtual {v13, v9}, Ljava/lang/String;->codePointAt(I)I

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    and-int/lit8 v15, p3, 0x4

    .line 81
    .line 82
    const/16 v7, 0x20

    .line 83
    .line 84
    if-eqz v15, :cond_9

    .line 85
    .line 86
    invoke-static {v14}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    if-eqz v15, :cond_7

    .line 91
    .line 92
    and-int/lit8 v15, p3, 0x8

    .line 93
    .line 94
    if-eqz v15, :cond_4

    .line 95
    .line 96
    if-nez v11, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    if-eqz v12, :cond_5

    .line 100
    .line 101
    :goto_2
    const/4 v7, 0x0

    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :cond_5
    and-int/lit8 v15, p3, 0x10

    .line 105
    .line 106
    if-eqz v15, :cond_6

    .line 107
    .line 108
    const/4 v7, 0x0

    .line 109
    const/4 v10, 0x1

    .line 110
    goto/16 :goto_5

    .line 111
    .line 112
    :cond_6
    invoke-interface {v0, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 113
    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    const/4 v12, 0x1

    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    :cond_7
    if-eqz v10, :cond_8

    .line 120
    .line 121
    invoke-interface {v0, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 122
    .line 123
    .line 124
    const/4 v10, 0x0

    .line 125
    :cond_8
    const/4 v11, 0x1

    .line 126
    const/4 v12, 0x0

    .line 127
    :cond_9
    int-to-char v15, v14

    .line 128
    const/high16 v5, 0x10000

    .line 129
    .line 130
    if-ge v14, v5, :cond_1a

    .line 131
    .line 132
    const/16 v5, 0x9

    .line 133
    .line 134
    if-eq v15, v5, :cond_19

    .line 135
    .line 136
    const/16 v5, 0xa

    .line 137
    .line 138
    if-eq v15, v5, :cond_19

    .line 139
    .line 140
    const/16 v5, 0xd

    .line 141
    .line 142
    if-eq v15, v5, :cond_19

    .line 143
    .line 144
    const/16 v5, 0x22

    .line 145
    .line 146
    if-eq v15, v5, :cond_17

    .line 147
    .line 148
    const/16 v5, 0x3c

    .line 149
    .line 150
    if-eq v15, v5, :cond_14

    .line 151
    .line 152
    const/16 v5, 0x3e

    .line 153
    .line 154
    if-eq v15, v5, :cond_12

    .line 155
    .line 156
    const/16 v5, 0xa0

    .line 157
    .line 158
    if-eq v15, v5, :cond_10

    .line 159
    .line 160
    const/16 v5, 0x26

    .line 161
    .line 162
    if-eq v15, v5, :cond_f

    .line 163
    .line 164
    const/16 v5, 0x27

    .line 165
    .line 166
    if-eq v15, v5, :cond_c

    .line 167
    .line 168
    if-lt v15, v7, :cond_b

    .line 169
    .line 170
    invoke-static {v4, v15, v8}, Lorg/jsoup/nodes/Entities;->canEncode(ICLjava/nio/charset/CharsetEncoder;)Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-nez v5, :cond_a

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_a
    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_b
    :goto_3
    invoke-static {v0, v2, v14}, Lorg/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_c
    and-int/lit8 v7, p3, 0x2

    .line 186
    .line 187
    if-eqz v7, :cond_e

    .line 188
    .line 189
    and-int/lit8 v7, p3, 0x1

    .line 190
    .line 191
    if-eqz v7, :cond_e

    .line 192
    .line 193
    sget-object v5, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 194
    .line 195
    if-ne v2, v5, :cond_d

    .line 196
    .line 197
    const-string v5, "&#x27;"

    .line 198
    .line 199
    invoke-interface {v0, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_d
    const-string v5, "&apos;"

    .line 204
    .line 205
    invoke-interface {v0, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_e
    invoke-interface {v0, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_f
    const-string v5, "&amp;"

    .line 214
    .line 215
    invoke-interface {v0, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_10
    sget-object v5, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 220
    .line 221
    if-eq v2, v5, :cond_11

    .line 222
    .line 223
    const-string v5, "&nbsp;"

    .line 224
    .line 225
    invoke-interface {v0, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_11
    const-string v5, "&#xa0;"

    .line 230
    .line 231
    invoke-interface {v0, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 232
    .line 233
    .line 234
    goto/16 :goto_2

    .line 235
    .line 236
    :cond_12
    and-int/lit8 v5, p3, 0x1

    .line 237
    .line 238
    if-eqz v5, :cond_13

    .line 239
    .line 240
    const-string v5, "&gt;"

    .line 241
    .line 242
    invoke-interface {v0, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 243
    .line 244
    .line 245
    goto/16 :goto_2

    .line 246
    .line 247
    :cond_13
    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 248
    .line 249
    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :cond_14
    and-int/lit8 v7, p3, 0x1

    .line 253
    .line 254
    if-nez v7, :cond_16

    .line 255
    .line 256
    sget-object v7, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 257
    .line 258
    if-eq v2, v7, :cond_16

    .line 259
    .line 260
    if-ne v3, v6, :cond_15

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_15
    invoke-interface {v0, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 264
    .line 265
    .line 266
    goto/16 :goto_2

    .line 267
    .line 268
    :cond_16
    :goto_4
    const-string v5, "&lt;"

    .line 269
    .line 270
    invoke-interface {v0, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 271
    .line 272
    .line 273
    goto/16 :goto_2

    .line 274
    .line 275
    :cond_17
    and-int/lit8 v5, p3, 0x2

    .line 276
    .line 277
    if-eqz v5, :cond_18

    .line 278
    .line 279
    const-string v5, "&quot;"

    .line 280
    .line 281
    invoke-interface {v0, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 282
    .line 283
    .line 284
    goto/16 :goto_2

    .line 285
    .line 286
    :cond_18
    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 287
    .line 288
    .line 289
    goto/16 :goto_2

    .line 290
    .line 291
    :cond_19
    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 292
    .line 293
    .line 294
    goto/16 :goto_2

    .line 295
    .line 296
    :cond_1a
    invoke-static {v4, v15, v8}, Lorg/jsoup/nodes/Entities;->canEncode(ICLjava/nio/charset/CharsetEncoder;)Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    if-eqz v5, :cond_1c

    .line 301
    .line 302
    sget-object v5, Lorg/jsoup/nodes/Entities;->charBuf:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 303
    .line 304
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    check-cast v5, [C

    .line 309
    .line 310
    const/4 v7, 0x0

    .line 311
    invoke-static {v14, v5, v7}, Ljava/lang/Character;->toChars(I[CI)I

    .line 312
    .line 313
    .line 314
    move-result v15

    .line 315
    instance-of v6, v0, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    if-eqz v6, :cond_1b

    .line 318
    .line 319
    move-object v6, v0

    .line 320
    check-cast v6, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-virtual {v6, v5, v7, v15}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    goto :goto_5

    .line 326
    :cond_1b
    new-instance v6, Ljava/lang/String;

    .line 327
    .line 328
    invoke-direct {v6, v5, v7, v15}, Ljava/lang/String;-><init>([CII)V

    .line 329
    .line 330
    .line 331
    invoke-interface {v0, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 332
    .line 333
    .line 334
    goto :goto_5

    .line 335
    :cond_1c
    const/4 v7, 0x0

    .line 336
    invoke-static {v0, v2, v14}, Lorg/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 337
    .line 338
    .line 339
    :goto_5
    invoke-static {v14}, Ljava/lang/Character;->charCount(I)I

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    add-int/2addr v9, v5

    .line 344
    const/4 v6, 0x2

    .line 345
    goto/16 :goto_1

    .line 346
    .line 347
    :cond_1d
    return-void
.end method
