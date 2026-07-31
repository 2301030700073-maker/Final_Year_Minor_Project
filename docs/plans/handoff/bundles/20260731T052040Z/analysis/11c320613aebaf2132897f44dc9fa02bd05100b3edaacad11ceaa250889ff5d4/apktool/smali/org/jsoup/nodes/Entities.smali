.class public abstract Lorg/jsoup/nodes/Entities;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


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

.method public static canEncode(ICLjava/nio/charset/CharsetEncoder;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

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

.method public static doEscape(Ljava/lang/String;Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/nio/charset/Charset;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "US-ASCII"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v3, "UTF-"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, 0x3

    .line 30
    :goto_0
    sget-object v3, Lorg/jsoup/nodes/Entities;->LocalEncoder:Ljava/lang/ThreadLocal;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Ljava/nio/charset/CharsetEncoder;

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    move-object/from16 v7, p3

    .line 45
    .line 46
    invoke-virtual {v6, v7}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-nez v6, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object/from16 v7, p3

    .line 54
    .line 55
    :goto_1
    invoke-virtual {v7}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v10, 0x0

    .line 70
    :goto_2
    if-ge v7, v3, :cond_1d

    .line 71
    .line 72
    move-object/from16 v11, p0

    .line 73
    .line 74
    invoke-virtual {v11, v7}, Ljava/lang/String;->codePointAt(I)I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    and-int/lit8 v13, p4, 0x4

    .line 79
    .line 80
    const/16 v14, 0x20

    .line 81
    .line 82
    if-eqz v13, :cond_a

    .line 83
    .line 84
    invoke-static {v12}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    if-eqz v13, :cond_8

    .line 89
    .line 90
    and-int/lit8 v13, p4, 0x8

    .line 91
    .line 92
    if-eqz v13, :cond_4

    .line 93
    .line 94
    if-nez v9, :cond_4

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    if-eqz v10, :cond_6

    .line 98
    .line 99
    :cond_5
    :goto_3
    const/4 v6, 0x0

    .line 100
    goto/16 :goto_5

    .line 101
    .line 102
    :cond_6
    and-int/lit8 v13, p4, 0x10

    .line 103
    .line 104
    if-eqz v13, :cond_7

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    const/4 v8, 0x1

    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_7
    invoke-virtual {v0, v14}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 111
    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    const/4 v10, 0x1

    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :cond_8
    if-eqz v8, :cond_9

    .line 118
    .line 119
    invoke-virtual {v0, v14}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 120
    .line 121
    .line 122
    const/4 v8, 0x0

    .line 123
    :cond_9
    const/4 v9, 0x1

    .line 124
    const/4 v10, 0x0

    .line 125
    :cond_a
    sget-object v13, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 126
    .line 127
    const/16 v4, 0xd

    .line 128
    .line 129
    const/16 v6, 0xa

    .line 130
    .line 131
    const/16 v15, 0x9

    .line 132
    .line 133
    if-ne v13, v1, :cond_d

    .line 134
    .line 135
    if-eq v12, v15, :cond_d

    .line 136
    .line 137
    if-eq v12, v6, :cond_d

    .line 138
    .line 139
    if-eq v12, v4, :cond_d

    .line 140
    .line 141
    if-lt v12, v14, :cond_b

    .line 142
    .line 143
    const v14, 0xd7ff

    .line 144
    .line 145
    .line 146
    if-le v12, v14, :cond_d

    .line 147
    .line 148
    :cond_b
    const v14, 0xe000

    .line 149
    .line 150
    .line 151
    if-lt v12, v14, :cond_c

    .line 152
    .line 153
    const v14, 0xfffd

    .line 154
    .line 155
    .line 156
    if-le v12, v14, :cond_d

    .line 157
    .line 158
    :cond_c
    const/high16 v14, 0x10000

    .line 159
    .line 160
    if-lt v12, v14, :cond_5

    .line 161
    .line 162
    const v14, 0x10ffff

    .line 163
    .line 164
    .line 165
    if-gt v12, v14, :cond_5

    .line 166
    .line 167
    :cond_d
    int-to-char v14, v12

    .line 168
    const/high16 v4, 0x10000

    .line 169
    .line 170
    if-ge v12, v4, :cond_1b

    .line 171
    .line 172
    if-eq v14, v15, :cond_1a

    .line 173
    .line 174
    if-eq v14, v6, :cond_1a

    .line 175
    .line 176
    const/16 v4, 0xd

    .line 177
    .line 178
    if-eq v14, v4, :cond_1a

    .line 179
    .line 180
    const/16 v4, 0x22

    .line 181
    .line 182
    if-eq v14, v4, :cond_18

    .line 183
    .line 184
    const/16 v4, 0x3c

    .line 185
    .line 186
    if-eq v14, v4, :cond_17

    .line 187
    .line 188
    const/16 v4, 0x3e

    .line 189
    .line 190
    if-eq v14, v4, :cond_16

    .line 191
    .line 192
    const/16 v4, 0xa0

    .line 193
    .line 194
    if-eq v14, v4, :cond_14

    .line 195
    .line 196
    const/16 v4, 0x26

    .line 197
    .line 198
    if-eq v14, v4, :cond_13

    .line 199
    .line 200
    const/16 v4, 0x27

    .line 201
    .line 202
    if-eq v14, v4, :cond_10

    .line 203
    .line 204
    const/16 v6, 0x20

    .line 205
    .line 206
    if-lt v14, v6, :cond_f

    .line 207
    .line 208
    invoke-static {v2, v14, v5}, Lorg/jsoup/nodes/Entities;->canEncode(ICLjava/nio/charset/CharsetEncoder;)Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-nez v4, :cond_e

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_e
    invoke-virtual {v0, v14}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_f
    :goto_4
    invoke-static {v0, v1, v12}, Lorg/jsoup/nodes/Entities;->appendEncoded(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_10
    and-int/lit8 v6, p4, 0x2

    .line 224
    .line 225
    if-eqz v6, :cond_12

    .line 226
    .line 227
    and-int/lit8 v6, p4, 0x1

    .line 228
    .line 229
    if-eqz v6, :cond_12

    .line 230
    .line 231
    if-ne v1, v13, :cond_11

    .line 232
    .line 233
    const-string v4, "&#x27;"

    .line 234
    .line 235
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 236
    .line 237
    .line 238
    goto/16 :goto_3

    .line 239
    .line 240
    :cond_11
    const-string v4, "&apos;"

    .line 241
    .line 242
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 243
    .line 244
    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :cond_12
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 248
    .line 249
    .line 250
    goto/16 :goto_3

    .line 251
    .line 252
    :cond_13
    const-string v4, "&amp;"

    .line 253
    .line 254
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 255
    .line 256
    .line 257
    goto/16 :goto_3

    .line 258
    .line 259
    :cond_14
    if-eq v1, v13, :cond_15

    .line 260
    .line 261
    const-string v4, "&nbsp;"

    .line 262
    .line 263
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 264
    .line 265
    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    :cond_15
    const-string v4, "&#xa0;"

    .line 269
    .line 270
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 271
    .line 272
    .line 273
    goto/16 :goto_3

    .line 274
    .line 275
    :cond_16
    const-string v4, "&gt;"

    .line 276
    .line 277
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 278
    .line 279
    .line 280
    goto/16 :goto_3

    .line 281
    .line 282
    :cond_17
    const-string v4, "&lt;"

    .line 283
    .line 284
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 285
    .line 286
    .line 287
    goto/16 :goto_3

    .line 288
    .line 289
    :cond_18
    and-int/lit8 v4, p4, 0x2

    .line 290
    .line 291
    if-eqz v4, :cond_19

    .line 292
    .line 293
    const-string v4, "&quot;"

    .line 294
    .line 295
    invoke-virtual {v0, v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 296
    .line 297
    .line 298
    goto/16 :goto_3

    .line 299
    .line 300
    :cond_19
    invoke-virtual {v0, v14}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 301
    .line 302
    .line 303
    goto/16 :goto_3

    .line 304
    .line 305
    :cond_1a
    invoke-virtual {v0, v14}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 306
    .line 307
    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :cond_1b
    invoke-static {v2, v14, v5}, Lorg/jsoup/nodes/Entities;->canEncode(ICLjava/nio/charset/CharsetEncoder;)Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-eqz v4, :cond_1c

    .line 315
    .line 316
    sget-object v4, Lorg/jsoup/nodes/Entities;->charBuf:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 317
    .line 318
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    check-cast v4, [C

    .line 323
    .line 324
    const/4 v6, 0x0

    .line 325
    invoke-static {v12, v4, v6}, Ljava/lang/Character;->toChars(I[CI)I

    .line 326
    .line 327
    .line 328
    move-result v13

    .line 329
    iget v14, v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->$r8$classId:I

    .line 330
    .line 331
    packed-switch v14, :pswitch_data_0

    .line 332
    .line 333
    .line 334
    iget-object v14, v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->a:Ljava/lang/Appendable;

    .line 335
    .line 336
    check-cast v14, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-virtual {v14, v4, v6, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    goto :goto_5

    .line 342
    :pswitch_0
    :try_start_0
    iget-object v14, v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->a:Ljava/lang/Appendable;

    .line 343
    .line 344
    new-instance v15, Ljava/lang/String;

    .line 345
    .line 346
    invoke-direct {v15, v4, v6, v13}, Ljava/lang/String;-><init>([CII)V

    .line 347
    .line 348
    .line 349
    invoke-interface {v14, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :catch_0
    move-exception v0

    .line 354
    new-instance v1, Lorg/jsoup/SerializationException;

    .line 355
    .line 356
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 357
    .line 358
    .line 359
    throw v1

    .line 360
    :cond_1c
    const/4 v6, 0x0

    .line 361
    invoke-static {v0, v1, v12}, Lorg/jsoup/nodes/Entities;->appendEncoded(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 362
    .line 363
    .line 364
    :goto_5
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    add-int/2addr v7, v4

    .line 369
    goto/16 :goto_2

    .line 370
    .line 371
    :cond_1d
    return-void

    .line 372
    nop

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 2
    .line 3
    sget-object v1, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->wrap(Ljava/lang/StringBuilder;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x3

    .line 19
    invoke-static {p0, v3, v0, v1, v4}, Lorg/jsoup/nodes/Entities;->doEscape(Ljava/lang/String;Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/nio/charset/Charset;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
