.class public Lorg/mozilla/javascript/NativeGlobal;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mozilla/javascript/IdFunctionCall;


# static fields
.field private static final FTAG:Ljava/lang/Object;

.field private static final INVALID_UTF8:I = 0x7fffffff

.field private static final Id_decodeURI:I = 0x1

.field private static final Id_decodeURIComponent:I = 0x2

.field private static final Id_encodeURI:I = 0x3

.field private static final Id_encodeURIComponent:I = 0x4

.field private static final Id_escape:I = 0x5

.field private static final Id_eval:I = 0x6

.field private static final Id_isFinite:I = 0x7

.field private static final Id_isNaN:I = 0x8

.field private static final Id_isXMLName:I = 0x9

.field private static final Id_new_AggregateError:I = 0xf

.field private static final Id_new_CommonError:I = 0xe

.field private static final Id_parseFloat:I = 0xa

.field private static final Id_parseInt:I = 0xb

.field private static final Id_unescape:I = 0xc

.field private static final Id_uneval:I = 0xd

.field private static final LAST_SCOPE_FUNCTION_ID:I = 0xd

.field private static final URI_DECODE_RESERVED:Ljava/lang/String; = ";/?:@&=+$,#"

.field static final serialVersionUID:J = 0x546211ef26c230caL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "Global"

    .line 2
    .line 3
    sput-object v0, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static constructError(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/EcmaError;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    return-object p0
.end method

.method public static constructError(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILjava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    move-object p0, p1

    .line 2
    move-object p1, p2

    .line 3
    move-object p2, p4

    .line 4
    move p3, p5

    .line 5
    move p5, p6

    .line 6
    move-object p4, p7

    .line 7
    invoke-static/range {p0 .. p5}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EcmaError;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static decode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, v3

    .line 10
    move v5, v4

    .line 11
    :goto_0
    if-eq v4, v1, :cond_18

    .line 12
    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    const/16 v7, 0x25

    .line 18
    .line 19
    if-eq v6, v7, :cond_1

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    add-int/lit8 v7, v5, 0x1

    .line 24
    .line 25
    aput-char v6, v2, v5

    .line 26
    .line 27
    move v5, v7

    .line 28
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-nez v2, :cond_2

    .line 32
    .line 33
    new-array v2, v1, [C

    .line 34
    .line 35
    invoke-virtual {v0, v3, v4, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 36
    .line 37
    .line 38
    move v5, v4

    .line 39
    :cond_2
    add-int/lit8 v6, v4, 0x3

    .line 40
    .line 41
    if-gt v6, v1, :cond_17

    .line 42
    .line 43
    add-int/lit8 v8, v4, 0x1

    .line 44
    .line 45
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    add-int/lit8 v9, v4, 0x2

    .line 50
    .line 51
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    invoke-static {v8, v9}, Lorg/mozilla/javascript/NativeGlobal;->unHex(CC)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-ltz v8, :cond_16

    .line 60
    .line 61
    and-int/lit16 v9, v8, 0x80

    .line 62
    .line 63
    if-nez v9, :cond_4

    .line 64
    .line 65
    :cond_3
    int-to-char v7, v8

    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_4
    and-int/lit16 v9, v8, 0xc0

    .line 69
    .line 70
    const/16 v10, 0x80

    .line 71
    .line 72
    if-eq v9, v10, :cond_15

    .line 73
    .line 74
    and-int/lit8 v9, v8, 0x20

    .line 75
    .line 76
    const/high16 v11, 0x10000

    .line 77
    .line 78
    if-nez v9, :cond_5

    .line 79
    .line 80
    and-int/lit8 v8, v8, 0x1f

    .line 81
    .line 82
    const/4 v9, 0x1

    .line 83
    move v12, v10

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    and-int/lit8 v9, v8, 0x10

    .line 86
    .line 87
    if-nez v9, :cond_6

    .line 88
    .line 89
    and-int/lit8 v8, v8, 0xf

    .line 90
    .line 91
    const/4 v9, 0x2

    .line 92
    const/16 v12, 0x800

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    and-int/lit8 v9, v8, 0x8

    .line 96
    .line 97
    if-nez v9, :cond_7

    .line 98
    .line 99
    and-int/lit8 v8, v8, 0x7

    .line 100
    .line 101
    const/4 v9, 0x3

    .line 102
    move v12, v11

    .line 103
    goto :goto_1

    .line 104
    :cond_7
    and-int/lit8 v9, v8, 0x4

    .line 105
    .line 106
    if-nez v9, :cond_8

    .line 107
    .line 108
    and-int/lit8 v8, v8, 0x3

    .line 109
    .line 110
    const/4 v9, 0x4

    .line 111
    const/high16 v12, 0x200000

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_8
    and-int/lit8 v9, v8, 0x2

    .line 115
    .line 116
    if-nez v9, :cond_14

    .line 117
    .line 118
    and-int/lit8 v8, v8, 0x1

    .line 119
    .line 120
    const/4 v9, 0x5

    .line 121
    const/high16 v12, 0x4000000

    .line 122
    .line 123
    :goto_1
    mul-int/lit8 v13, v9, 0x3

    .line 124
    .line 125
    add-int/2addr v13, v6

    .line 126
    if-gt v13, v1, :cond_13

    .line 127
    .line 128
    move v13, v3

    .line 129
    :goto_2
    if-eq v13, v9, :cond_b

    .line 130
    .line 131
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    if-ne v14, v7, :cond_a

    .line 136
    .line 137
    add-int/lit8 v14, v6, 0x1

    .line 138
    .line 139
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    add-int/lit8 v15, v6, 0x2

    .line 144
    .line 145
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    .line 146
    .line 147
    .line 148
    move-result v15

    .line 149
    invoke-static {v14, v15}, Lorg/mozilla/javascript/NativeGlobal;->unHex(CC)I

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    if-ltz v14, :cond_9

    .line 154
    .line 155
    and-int/lit16 v15, v14, 0xc0

    .line 156
    .line 157
    if-ne v15, v10, :cond_9

    .line 158
    .line 159
    shl-int/lit8 v8, v8, 0x6

    .line 160
    .line 161
    and-int/lit8 v14, v14, 0x3f

    .line 162
    .line 163
    or-int/2addr v8, v14

    .line 164
    add-int/lit8 v6, v6, 0x3

    .line 165
    .line 166
    add-int/lit8 v13, v13, 0x1

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_9
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    throw v0

    .line 174
    :cond_a
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    throw v0

    .line 179
    :cond_b
    const v7, 0xd800

    .line 180
    .line 181
    .line 182
    if-lt v8, v12, :cond_e

    .line 183
    .line 184
    if-lt v8, v7, :cond_c

    .line 185
    .line 186
    const v9, 0xdfff

    .line 187
    .line 188
    .line 189
    if-gt v8, v9, :cond_c

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_c
    const v9, 0xfffe

    .line 193
    .line 194
    .line 195
    if-eq v8, v9, :cond_d

    .line 196
    .line 197
    const v9, 0xffff

    .line 198
    .line 199
    .line 200
    if-ne v8, v9, :cond_f

    .line 201
    .line 202
    :cond_d
    const v8, 0xfffd

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_e
    :goto_3
    const v8, 0x7fffffff

    .line 207
    .line 208
    .line 209
    :cond_f
    :goto_4
    if-lt v8, v11, :cond_3

    .line 210
    .line 211
    sub-int/2addr v8, v11

    .line 212
    const v9, 0xfffff

    .line 213
    .line 214
    .line 215
    if-gt v8, v9, :cond_10

    .line 216
    .line 217
    ushr-int/lit8 v9, v8, 0xa

    .line 218
    .line 219
    add-int/2addr v9, v7

    .line 220
    int-to-char v7, v9

    .line 221
    and-int/lit16 v8, v8, 0x3ff

    .line 222
    .line 223
    const v9, 0xdc00

    .line 224
    .line 225
    .line 226
    add-int/2addr v8, v9

    .line 227
    int-to-char v8, v8

    .line 228
    add-int/lit8 v9, v5, 0x1

    .line 229
    .line 230
    aput-char v7, v2, v5

    .line 231
    .line 232
    move v7, v8

    .line 233
    move v5, v9

    .line 234
    goto :goto_5

    .line 235
    :cond_10
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    throw v0

    .line 240
    :goto_5
    if-eqz p1, :cond_12

    .line 241
    .line 242
    const-string v8, ";/?:@&=+$,#"

    .line 243
    .line 244
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    .line 245
    .line 246
    .line 247
    move-result v8

    .line 248
    if-ltz v8, :cond_12

    .line 249
    .line 250
    :goto_6
    if-eq v4, v6, :cond_11

    .line 251
    .line 252
    add-int/lit8 v7, v5, 0x1

    .line 253
    .line 254
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    aput-char v8, v2, v5

    .line 259
    .line 260
    add-int/lit8 v4, v4, 0x1

    .line 261
    .line 262
    move v5, v7

    .line 263
    goto :goto_6

    .line 264
    :cond_11
    :goto_7
    move v4, v6

    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_12
    add-int/lit8 v4, v5, 0x1

    .line 268
    .line 269
    aput-char v7, v2, v5

    .line 270
    .line 271
    move v5, v4

    .line 272
    goto :goto_7

    .line 273
    :cond_13
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    throw v0

    .line 278
    :cond_14
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    throw v0

    .line 283
    :cond_15
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    throw v0

    .line 288
    :cond_16
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    throw v0

    .line 293
    :cond_17
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    throw v0

    .line 298
    :cond_18
    if-nez v2, :cond_19

    .line 299
    .line 300
    return-object v0

    .line 301
    :cond_19
    new-instance v0, Ljava/lang/String;

    .line 302
    .line 303
    invoke-direct {v0, v2, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 304
    .line 305
    .line 306
    return-object v0
.end method

.method private static encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v3, v1

    .line 8
    move v4, v2

    .line 9
    :goto_0
    if-eq v4, v0, :cond_9

    .line 10
    .line 11
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    invoke-static {v5, p1}, Lorg/mozilla/javascript/NativeGlobal;->encodeUnescaped(CZ)Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-eqz v6, :cond_0

    .line 20
    .line 21
    if-eqz v1, :cond_8

    .line 22
    .line 23
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_0
    if-nez v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    add-int/lit8 v3, v0, 0x3

    .line 33
    .line 34
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x6

    .line 44
    new-array v3, v3, [B

    .line 45
    .line 46
    :cond_1
    const v6, 0xdfff

    .line 47
    .line 48
    .line 49
    const v7, 0xdc00

    .line 50
    .line 51
    .line 52
    if-gt v7, v5, :cond_3

    .line 53
    .line 54
    if-le v5, v6, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    throw p0

    .line 62
    :cond_3
    :goto_1
    const v8, 0xd800

    .line 63
    .line 64
    .line 65
    if-lt v5, v8, :cond_7

    .line 66
    .line 67
    const v9, 0xdbff

    .line 68
    .line 69
    .line 70
    if-ge v9, v5, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    if-eq v4, v0, :cond_6

    .line 76
    .line 77
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-gt v7, v9, :cond_5

    .line 82
    .line 83
    if-gt v9, v6, :cond_5

    .line 84
    .line 85
    sub-int/2addr v5, v8

    .line 86
    shl-int/lit8 v5, v5, 0xa

    .line 87
    .line 88
    sub-int/2addr v9, v7

    .line 89
    add-int/2addr v9, v5

    .line 90
    const/high16 v5, 0x10000

    .line 91
    .line 92
    add-int/2addr v5, v9

    .line 93
    goto :goto_2

    .line 94
    :cond_5
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    throw p0

    .line 99
    :cond_6
    invoke-static {}, Lorg/mozilla/javascript/NativeGlobal;->uriError()Lorg/mozilla/javascript/EcmaError;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    throw p0

    .line 104
    :cond_7
    :goto_2
    invoke-static {v3, v5}, Lorg/mozilla/javascript/NativeGlobal;->oneUcs4ToUtf8Char([BI)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    move v6, v2

    .line 109
    :goto_3
    if-ge v6, v5, :cond_8

    .line 110
    .line 111
    aget-byte v7, v3, v6

    .line 112
    .line 113
    and-int/lit16 v8, v7, 0xff

    .line 114
    .line 115
    const/16 v9, 0x25

    .line 116
    .line 117
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    ushr-int/lit8 v8, v8, 0x4

    .line 121
    .line 122
    invoke-static {v8}, Lorg/mozilla/javascript/NativeGlobal;->toHexChar(I)C

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    and-int/lit8 v7, v7, 0xf

    .line 130
    .line 131
    invoke-static {v7}, Lorg/mozilla/javascript/NativeGlobal;->toHexChar(I)C

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    add-int/lit8 v6, v6, 0x1

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_9
    if-nez v1, :cond_a

    .line 146
    .line 147
    return-object p0

    .line 148
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0
.end method

.method private static encodeUnescaped(CZ)Z
    .locals 2

    .line 1
    const/16 v0, 0x41

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt v0, p0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x5a

    .line 7
    .line 8
    if-le p0, v0, :cond_2

    .line 9
    .line 10
    :cond_0
    const/16 v0, 0x61

    .line 11
    .line 12
    if-gt v0, p0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x7a

    .line 15
    .line 16
    if-le p0, v0, :cond_2

    .line 17
    .line 18
    :cond_1
    const/16 v0, 0x30

    .line 19
    .line 20
    if-gt v0, p0, :cond_3

    .line 21
    .line 22
    const/16 v0, 0x39

    .line 23
    .line 24
    if-gt p0, v0, :cond_3

    .line 25
    .line 26
    :cond_2
    return v1

    .line 27
    :cond_3
    const-string v0, "-_.!~*\'()"

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ltz v0, :cond_4

    .line 34
    .line 35
    return v1

    .line 36
    :cond_4
    const/4 v0, 0x0

    .line 37
    if-eqz p1, :cond_5

    .line 38
    .line 39
    const-string p1, ";/?:@&=+$,#"

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-ltz p0, :cond_5

    .line 46
    .line 47
    return v1

    .line 48
    :cond_5
    return v0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 16

    .line 1
    new-instance v1, Lorg/mozilla/javascript/NativeGlobal;

    .line 2
    .line 3
    invoke-direct {v1}, Lorg/mozilla/javascript/NativeGlobal;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v7, 0x1

    .line 7
    move v3, v7

    .line 8
    :goto_0
    const/16 v0, 0xd

    .line 9
    .line 10
    const/4 v8, 0x2

    .line 11
    if-gt v3, v0, :cond_1

    .line 12
    .line 13
    packed-switch v3, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    throw v0

    .line 21
    :pswitch_0
    const-string/jumbo v0, "uneval"

    .line 22
    .line 23
    .line 24
    :goto_1
    move-object v4, v0

    .line 25
    move v5, v7

    .line 26
    goto :goto_2

    .line 27
    :pswitch_1
    const-string/jumbo v0, "unescape"

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :pswitch_2
    const-string v0, "parseInt"

    .line 32
    .line 33
    move-object v4, v0

    .line 34
    move v5, v8

    .line 35
    goto :goto_2

    .line 36
    :pswitch_3
    const-string v0, "parseFloat"

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :pswitch_4
    const-string v0, "isXMLName"

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :pswitch_5
    const-string v0, "isNaN"

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :pswitch_6
    const-string v0, "isFinite"

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :pswitch_7
    const-string v0, "eval"

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :pswitch_8
    const-string v0, "escape"

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :pswitch_9
    const-string v0, "encodeURIComponent"

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :pswitch_a
    const-string v0, "encodeURI"

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_b
    const-string v0, "decodeURIComponent"

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_c
    const-string v0, "decodeURI"

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :goto_2
    new-instance v0, Lorg/mozilla/javascript/IdFunctionObject;

    .line 67
    .line 68
    sget-object v2, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    .line 69
    .line 70
    move-object/from16 v6, p1

    .line 71
    .line 72
    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    .line 73
    .line 74
    .line 75
    if-eqz p2, :cond_0

    .line 76
    .line 77
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move-object/from16 v6, p1

    .line 87
    .line 88
    const-string v0, "NaN"

    .line 89
    .line 90
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 91
    .line 92
    const/4 v3, 0x7

    .line 93
    invoke-static {v6, v0, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 94
    .line 95
    .line 96
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 97
    .line 98
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v2, "Infinity"

    .line 103
    .line 104
    invoke-static {v6, v2, v0, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    const-string/jumbo v0, "undefined"

    .line 108
    .line 109
    .line 110
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-static {v6, v0, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 113
    .line 114
    .line 115
    const-string v0, "globalThis"

    .line 116
    .line 117
    invoke-static {v6, v0, v6, v8}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 118
    .line 119
    .line 120
    const-string v0, "Error"

    .line 121
    .line 122
    invoke-static {v6, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    const-string v0, "prototype"

    .line 131
    .line 132
    invoke-static {v7, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-static {}, Lorg/mozilla/javascript/TopLevel$NativeErrors;->values()[Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    array-length v11, v10

    .line 145
    const/4 v0, 0x0

    .line 146
    move v12, v0

    .line 147
    :goto_3
    if-ge v12, v11, :cond_5

    .line 148
    .line 149
    aget-object v0, v10, v12

    .line 150
    .line 151
    sget-object v2, Lorg/mozilla/javascript/TopLevel$NativeErrors;->Error:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 152
    .line 153
    if-ne v0, v2, :cond_2

    .line 154
    .line 155
    move-object/from16 v13, p0

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-static {v6}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    sget-object v3, Lorg/mozilla/javascript/TopLevel$Builtins;->Error:Lorg/mozilla/javascript/TopLevel$Builtins;

    .line 167
    .line 168
    move-object/from16 v13, p0

    .line 169
    .line 170
    invoke-static {v13, v2, v3}, Lorg/mozilla/javascript/TopLevel;->getBuiltinCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Function;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Lorg/mozilla/javascript/IdFunctionObject;

    .line 175
    .line 176
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeError;->makeProto(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeError;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    const-string v15, "name"

    .line 181
    .line 182
    invoke-virtual {v14, v15, v4, v8}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 183
    .line 184
    .line 185
    const-string v2, "message"

    .line 186
    .line 187
    const-string v3, ""

    .line 188
    .line 189
    invoke-virtual {v14, v2, v3, v8}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 190
    .line 191
    .line 192
    sget-object v2, Lorg/mozilla/javascript/TopLevel$NativeErrors;->AggregateError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    .line 193
    .line 194
    if-ne v0, v2, :cond_3

    .line 195
    .line 196
    new-instance v0, Lorg/mozilla/javascript/IdFunctionObject;

    .line 197
    .line 198
    sget-object v2, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    .line 199
    .line 200
    const/16 v3, 0xf

    .line 201
    .line 202
    const/4 v5, 0x2

    .line 203
    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_3
    new-instance v0, Lorg/mozilla/javascript/IdFunctionObject;

    .line 208
    .line 209
    sget-object v2, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    .line 210
    .line 211
    const/16 v3, 0xe

    .line 212
    .line 213
    const/4 v5, 0x1

    .line 214
    move-object/from16 v6, p1

    .line 215
    .line 216
    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    .line 217
    .line 218
    .line 219
    :goto_4
    invoke-virtual {v0, v14}, Lorg/mozilla/javascript/IdFunctionObject;->markAsConstructor(Lorg/mozilla/javascript/Scriptable;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 223
    .line 224
    .line 225
    const-string v2, "constructor"

    .line 226
    .line 227
    invoke-virtual {v14, v2, v14, v0}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v14, v2, v8}, Lorg/mozilla/javascript/IdScriptableObject;->setAttributes(Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v14, v9}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 234
    .line 235
    .line 236
    if-eqz p2, :cond_4

    .line 237
    .line 238
    invoke-virtual {v14}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    .line 242
    .line 243
    .line 244
    :cond_4
    const/4 v2, 0x3

    .line 245
    invoke-virtual {v0, v15, v2}, Lorg/mozilla/javascript/IdScriptableObject;->setAttributes(Ljava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    const-string v3, "length"

    .line 249
    .line 250
    invoke-virtual {v0, v3, v2}, Lorg/mozilla/javascript/IdScriptableObject;->setAttributes(Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    .line 254
    .line 255
    .line 256
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 257
    .line 258
    move-object/from16 v6, p1

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_5
    return-void

    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isEvalFunction(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/mozilla/javascript/IdFunctionObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/mozilla/javascript/IdFunctionObject;

    .line 6
    .line 7
    sget-object v0, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v0, 0x6

    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method private static js_escape([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    array-length v2, p0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-le v2, v3, :cond_1

    .line 9
    .line 10
    aget-object p0, p0, v3

    .line 11
    .line 12
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    double-to-int p0, v4

    .line 23
    int-to-double v6, p0

    .line 24
    cmpl-double v2, v6, v4

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    and-int/lit8 v2, p0, -0x8

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p0, "msg.bad.esc.mask"

    .line 34
    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {p0, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    throw p0

    .line 42
    :cond_1
    const/4 p0, 0x7

    .line 43
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v4, 0x0

    .line 48
    :goto_1
    if-eq v0, v2, :cond_c

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/16 v6, 0x2b

    .line 55
    .line 56
    if-eqz p0, :cond_6

    .line 57
    .line 58
    const/16 v7, 0x30

    .line 59
    .line 60
    if-lt v5, v7, :cond_2

    .line 61
    .line 62
    const/16 v7, 0x39

    .line 63
    .line 64
    if-le v5, v7, :cond_5

    .line 65
    .line 66
    :cond_2
    const/16 v7, 0x41

    .line 67
    .line 68
    if-lt v5, v7, :cond_3

    .line 69
    .line 70
    const/16 v7, 0x5a

    .line 71
    .line 72
    if-le v5, v7, :cond_5

    .line 73
    .line 74
    :cond_3
    const/16 v7, 0x61

    .line 75
    .line 76
    if-lt v5, v7, :cond_4

    .line 77
    .line 78
    const/16 v7, 0x7a

    .line 79
    .line 80
    if-le v5, v7, :cond_5

    .line 81
    .line 82
    :cond_4
    const/16 v7, 0x40

    .line 83
    .line 84
    if-eq v5, v7, :cond_5

    .line 85
    .line 86
    const/16 v7, 0x2a

    .line 87
    .line 88
    if-eq v5, v7, :cond_5

    .line 89
    .line 90
    const/16 v7, 0x5f

    .line 91
    .line 92
    if-eq v5, v7, :cond_5

    .line 93
    .line 94
    const/16 v7, 0x2d

    .line 95
    .line 96
    if-eq v5, v7, :cond_5

    .line 97
    .line 98
    const/16 v7, 0x2e

    .line 99
    .line 100
    if-eq v5, v7, :cond_5

    .line 101
    .line 102
    and-int/lit8 v7, p0, 0x4

    .line 103
    .line 104
    if-eqz v7, :cond_6

    .line 105
    .line 106
    const/16 v7, 0x2f

    .line 107
    .line 108
    if-eq v5, v7, :cond_5

    .line 109
    .line 110
    if-ne v5, v6, :cond_6

    .line 111
    .line 112
    :cond_5
    if-eqz v4, :cond_b

    .line 113
    .line 114
    int-to-char v5, v5

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_6
    if-nez v4, :cond_7

    .line 120
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    add-int/lit8 v7, v2, 0x3

    .line 124
    .line 125
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 132
    .line 133
    .line 134
    :cond_7
    const/16 v7, 0x100

    .line 135
    .line 136
    const/16 v8, 0x25

    .line 137
    .line 138
    const/4 v9, 0x4

    .line 139
    if-ge v5, v7, :cond_9

    .line 140
    .line 141
    const/16 v7, 0x20

    .line 142
    .line 143
    const/4 v10, 0x2

    .line 144
    if-ne v5, v7, :cond_8

    .line 145
    .line 146
    if-ne p0, v10, :cond_8

    .line 147
    .line 148
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_8
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_9
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const/16 v6, 0x75

    .line 160
    .line 161
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    move v10, v9

    .line 165
    :goto_2
    sub-int/2addr v10, v3

    .line 166
    mul-int/2addr v10, v9

    .line 167
    :goto_3
    if-ltz v10, :cond_b

    .line 168
    .line 169
    shr-int v6, v5, v10

    .line 170
    .line 171
    and-int/lit8 v6, v6, 0xf

    .line 172
    .line 173
    const/16 v7, 0xa

    .line 174
    .line 175
    if-ge v6, v7, :cond_a

    .line 176
    .line 177
    add-int/lit8 v6, v6, 0x30

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_a
    add-int/lit8 v6, v6, 0x37

    .line 181
    .line 182
    :goto_4
    int-to-char v6, v6

    .line 183
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    add-int/lit8 v10, v10, -0x4

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_b
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 190
    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :cond_c
    if-nez v4, :cond_d

    .line 194
    .line 195
    return-object v1

    .line 196
    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0
.end method

.method private static js_eval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    const-string v4, "eval code"

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    move-object v2, v1

    .line 9
    move-object v0, p0

    .line 10
    move-object v3, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->evalSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static js_parseFloat([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    aget-object p0, p0, v0

    .line 10
    .line 11
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    move v3, v0

    .line 20
    :goto_0
    if-ne v3, v2, :cond_1

    .line 21
    .line 22
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_12

    .line 34
    .line 35
    const/16 v5, 0x2b

    .line 36
    .line 37
    const/16 v6, 0x2d

    .line 38
    .line 39
    if-eq v4, v5, :cond_3

    .line 40
    .line 41
    if-ne v4, v6, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v7, v3

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .line 47
    .line 48
    if-ne v4, v2, :cond_4

    .line 49
    .line 50
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    move v12, v7

    .line 58
    move v7, v4

    .line 59
    move v4, v12

    .line 60
    :goto_2
    const/16 v8, 0x49

    .line 61
    .line 62
    if-ne v4, v8, :cond_7

    .line 63
    .line 64
    add-int/lit8 v1, v7, 0x8

    .line 65
    .line 66
    if-gt v1, v2, :cond_6

    .line 67
    .line 68
    const-string v1, "Infinity"

    .line 69
    .line 70
    const/16 v2, 0x8

    .line 71
    .line 72
    invoke-virtual {p0, v7, v1, v0, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-ne p0, v6, :cond_5

    .line 83
    .line 84
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 88
    .line 89
    :goto_3
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_6
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_7
    const/4 v4, -0x1

    .line 98
    move v8, v4

    .line 99
    move v9, v8

    .line 100
    :goto_4
    if-ge v7, v2, :cond_10

    .line 101
    .line 102
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-eq v10, v5, :cond_d

    .line 107
    .line 108
    const/16 v11, 0x45

    .line 109
    .line 110
    if-eq v10, v11, :cond_a

    .line 111
    .line 112
    const/16 v11, 0x65

    .line 113
    .line 114
    if-eq v10, v11, :cond_a

    .line 115
    .line 116
    if-eq v10, v6, :cond_d

    .line 117
    .line 118
    const/16 v11, 0x2e

    .line 119
    .line 120
    if-eq v10, v11, :cond_8

    .line 121
    .line 122
    packed-switch v10, :pswitch_data_0

    .line 123
    .line 124
    .line 125
    goto :goto_6

    .line 126
    :pswitch_0
    if-eq v8, v4, :cond_f

    .line 127
    .line 128
    move v0, v1

    .line 129
    goto :goto_5

    .line 130
    :cond_8
    if-eq v9, v4, :cond_9

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_9
    move v9, v7

    .line 134
    goto :goto_5

    .line 135
    :cond_a
    if-eq v8, v4, :cond_b

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_b
    add-int/lit8 v10, v2, -0x1

    .line 139
    .line 140
    if-ne v7, v10, :cond_c

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_c
    move v8, v7

    .line 144
    goto :goto_5

    .line 145
    :cond_d
    add-int/lit8 v10, v7, -0x1

    .line 146
    .line 147
    if-eq v8, v10, :cond_e

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_e
    add-int/lit8 v10, v2, -0x1

    .line 151
    .line 152
    if-ne v7, v10, :cond_f

    .line 153
    .line 154
    add-int/lit8 v7, v7, -0x1

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_f
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_10
    :goto_6
    if-eq v8, v4, :cond_11

    .line 161
    .line 162
    if-nez v0, :cond_11

    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_11
    move v8, v7

    .line 166
    :goto_7
    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 171
    .line 172
    .line 173
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-object p0

    .line 175
    :catch_0
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 176
    .line 177
    return-object p0

    .line 178
    :cond_12
    add-int/lit8 v3, v3, 0x1

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static js_parseInt(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {p1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32([Ljava/lang/Object;I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    move v4, v0

    .line 21
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    if-lt v4, v3, :cond_1

    .line 35
    .line 36
    :goto_0
    const/16 v6, 0x2b

    .line 37
    .line 38
    if-eq v5, v6, :cond_4

    .line 39
    .line 40
    const/16 v6, 0x2d

    .line 41
    .line 42
    if-ne v5, v6, :cond_3

    .line 43
    .line 44
    move v0, v2

    .line 45
    :cond_3
    if-eqz v0, :cond_5

    .line 46
    .line 47
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    :cond_5
    const/16 v5, 0x58

    .line 50
    .line 51
    const/16 v6, 0x78

    .line 52
    .line 53
    const/16 v7, 0x10

    .line 54
    .line 55
    const/4 v8, -0x1

    .line 56
    const/16 v9, 0x30

    .line 57
    .line 58
    if-nez p1, :cond_6

    .line 59
    .line 60
    move p1, v8

    .line 61
    goto :goto_1

    .line 62
    :cond_6
    const/4 v10, 0x2

    .line 63
    if-lt p1, v10, :cond_10

    .line 64
    .line 65
    const/16 v10, 0x24

    .line 66
    .line 67
    if-le p1, v10, :cond_7

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_7
    if-ne p1, v7, :cond_9

    .line 71
    .line 72
    sub-int v10, v3, v4

    .line 73
    .line 74
    if-le v10, v2, :cond_9

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    if-ne v10, v9, :cond_9

    .line 81
    .line 82
    add-int/lit8 v10, v4, 0x1

    .line 83
    .line 84
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-eq v10, v6, :cond_8

    .line 89
    .line 90
    if-ne v10, v5, :cond_9

    .line 91
    .line 92
    :cond_8
    add-int/lit8 v4, v4, 0x2

    .line 93
    .line 94
    :cond_9
    :goto_1
    if-ne p1, v8, :cond_e

    .line 95
    .line 96
    sub-int/2addr v3, v4

    .line 97
    if-le v3, v2, :cond_d

    .line 98
    .line 99
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-ne p1, v9, :cond_d

    .line 104
    .line 105
    add-int/lit8 p1, v4, 0x1

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eq v2, v6, :cond_c

    .line 112
    .line 113
    if-ne v2, v5, :cond_a

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_a
    if-gt v9, v2, :cond_d

    .line 117
    .line 118
    const/16 v3, 0x39

    .line 119
    .line 120
    if-gt v2, v3, :cond_d

    .line 121
    .line 122
    if-eqz p0, :cond_b

    .line 123
    .line 124
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    const/16 v2, 0x96

    .line 129
    .line 130
    if-ge p0, v2, :cond_d

    .line 131
    .line 132
    :cond_b
    const/16 v7, 0x8

    .line 133
    .line 134
    move v4, p1

    .line 135
    goto :goto_3

    .line 136
    :cond_c
    :goto_2
    add-int/lit8 v4, v4, 0x2

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_d
    const/16 v7, 0xa

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_e
    move v7, p1

    .line 143
    :goto_3
    invoke-static {v1, v4, v7}, Lorg/mozilla/javascript/ScriptRuntime;->stringPrefixToNumber(Ljava/lang/String;II)D

    .line 144
    .line 145
    .line 146
    move-result-wide p0

    .line 147
    if-eqz v0, :cond_f

    .line 148
    .line 149
    neg-double p0, p0

    .line 150
    :cond_f
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :cond_10
    :goto_4
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 156
    .line 157
    return-object p0
.end method

.method private static js_unescape([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const/16 v1, 0x25

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ltz v2, :cond_4

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    move v4, v2

    .line 23
    :goto_0
    if-eq v2, v3, :cond_3

    .line 24
    .line 25
    aget-char v5, p0, v2

    .line 26
    .line 27
    add-int/lit8 v6, v2, 0x1

    .line 28
    .line 29
    if-ne v5, v1, :cond_2

    .line 30
    .line 31
    if-eq v6, v3, :cond_2

    .line 32
    .line 33
    aget-char v7, p0, v6

    .line 34
    .line 35
    const/16 v8, 0x75

    .line 36
    .line 37
    if-ne v7, v8, :cond_0

    .line 38
    .line 39
    add-int/lit8 v7, v2, 0x2

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x6

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x3

    .line 45
    .line 46
    move v7, v6

    .line 47
    :goto_1
    if-gt v2, v3, :cond_2

    .line 48
    .line 49
    move v8, v0

    .line 50
    :goto_2
    if-eq v7, v2, :cond_1

    .line 51
    .line 52
    aget-char v9, p0, v7

    .line 53
    .line 54
    invoke-static {v9, v8}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    add-int/lit8 v7, v7, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    if-ltz v8, :cond_2

    .line 62
    .line 63
    int-to-char v5, v8

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    move v2, v6

    .line 66
    :goto_3
    aput-char v5, p0, v4

    .line 67
    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    new-instance v1, Ljava/lang/String;

    .line 72
    .line 73
    invoke-direct {v1, p0, v0, v4}, Ljava/lang/String;-><init>([CII)V

    .line 74
    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_4
    return-object p0
.end method

.method private static oneUcs4ToUtf8Char([BI)I
    .locals 5

    .line 1
    and-int/lit8 v0, p1, -0x80

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    aput-byte p1, p0, v1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    ushr-int/lit8 v0, p1, 0xb

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    ushr-int/lit8 v0, v0, 0x5

    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v3

    .line 22
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    if-lez v0, :cond_2

    .line 25
    .line 26
    and-int/lit8 v4, p1, 0x3f

    .line 27
    .line 28
    or-int/lit16 v4, v4, 0x80

    .line 29
    .line 30
    int-to-byte v4, v4

    .line 31
    aput-byte v4, p0, v0

    .line 32
    .line 33
    ushr-int/lit8 p1, p1, 0x6

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    rsub-int/lit8 v0, v3, 0x8

    .line 37
    .line 38
    shl-int v0, v2, v0

    .line 39
    .line 40
    rsub-int v0, v0, 0x100

    .line 41
    .line 42
    add-int/2addr v0, p1

    .line 43
    int-to-byte p1, v0

    .line 44
    aput-byte p1, p0, v1

    .line 45
    .line 46
    return v3
.end method

.method private static toHexChar(I)C
    .locals 1

    .line 1
    shr-int/lit8 v0, p0, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 6
    .line 7
    .line 8
    :cond_0
    const/16 v0, 0xa

    .line 9
    .line 10
    if-ge p0, v0, :cond_1

    .line 11
    .line 12
    add-int/lit8 p0, p0, 0x30

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    add-int/lit8 p0, p0, 0x37

    .line 16
    .line 17
    :goto_0
    int-to-char p0, p0

    .line 18
    return p0
.end method

.method private static unHex(C)I
    .locals 2

    .line 1
    const/16 v0, 0x41

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x46

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 p0, p0, -0x37

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const/16 v0, 0x61

    .line 13
    .line 14
    if-gt v0, p0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x66

    .line 17
    .line 18
    if-gt p0, v0, :cond_1

    .line 19
    .line 20
    add-int/lit8 p0, p0, -0x57

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    const/16 v0, 0x30

    .line 24
    .line 25
    if-gt v0, p0, :cond_2

    .line 26
    .line 27
    const/16 v1, 0x39

    .line 28
    .line 29
    if-gt p0, v1, :cond_2

    .line 30
    .line 31
    sub-int/2addr p0, v0

    .line 32
    return p0

    .line 33
    :cond_2
    const/4 p0, -0x1

    .line 34
    return p0
.end method

.method private static unHex(CC)I
    .locals 0

    .line 35
    invoke-static {p0}, Lorg/mozilla/javascript/NativeGlobal;->unHex(C)I

    move-result p0

    .line 36
    invoke-static {p1}, Lorg/mozilla/javascript/NativeGlobal;->unHex(C)I

    move-result p1

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static uriError()Lorg/mozilla/javascript/EcmaError;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "msg.bad.uri"

    .line 5
    .line 6
    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "URIError"

    .line 11
    .line 12
    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p0, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_6

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 p4, 0x1

    .line 14
    const/4 v0, 0x0

    .line 15
    packed-switch p0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :pswitch_0
    invoke-static {p2, p3, p1, p5}, Lorg/mozilla/javascript/NativeError;->makeAggregate(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeError;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_1
    invoke-static {p2, p3, p1, p5}, Lorg/mozilla/javascript/NativeError;->make(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeError;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_2
    array-length p0, p5

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    aget-object p0, p5, v0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 37
    .line 38
    :goto_0
    invoke-static {p2, p3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_3
    invoke-static {p5}, Lorg/mozilla/javascript/NativeGlobal;->js_unescape([Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :pswitch_4
    invoke-static {p2, p5}, Lorg/mozilla/javascript/NativeGlobal;->js_parseInt(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_5
    invoke-static {p5}, Lorg/mozilla/javascript/NativeGlobal;->js_parseFloat([Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_6
    array-length p0, p5

    .line 59
    if-nez p0, :cond_1

    .line 60
    .line 61
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    aget-object p0, p5, v0

    .line 65
    .line 66
    :goto_1
    invoke-static {p3}, Lorg/mozilla/javascript/xml/XMLLib;->extractFromScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/xml/XMLLib;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, p2, p0}, Lorg/mozilla/javascript/xml/XMLLib;->isXMLName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :pswitch_7
    array-length p0, p5

    .line 80
    if-ge p0, p4, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    aget-object p0, p5, v0

    .line 84
    .line 85
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    .line 86
    .line 87
    .line 88
    move-result-wide p0

    .line 89
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    :goto_2
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_8
    array-length p0, p5

    .line 99
    if-ge p0, p4, :cond_3

    .line 100
    .line 101
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_3
    aget-object p0, p5, v0

    .line 105
    .line 106
    invoke-static {p0}, Lorg/mozilla/javascript/NativeNumber;->isFinite(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :pswitch_9
    invoke-static {p2, p3, p5}, Lorg/mozilla/javascript/NativeGlobal;->js_eval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :pswitch_a
    invoke-static {p5}, Lorg/mozilla/javascript/NativeGlobal;->js_escape([Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :pswitch_b
    invoke-static {p5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const/4 p2, 0x3

    .line 126
    if-ne p0, p2, :cond_4

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_4
    move p4, v0

    .line 130
    :goto_3
    invoke-static {p1, p4}, Lorg/mozilla/javascript/NativeGlobal;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :pswitch_c
    invoke-static {p5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-ne p0, p4, :cond_5

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_5
    move p4, v0

    .line 143
    :goto_4
    invoke-static {p1, p4}, Lorg/mozilla/javascript/NativeGlobal;->decode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :cond_6
    :goto_5
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    throw p0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
