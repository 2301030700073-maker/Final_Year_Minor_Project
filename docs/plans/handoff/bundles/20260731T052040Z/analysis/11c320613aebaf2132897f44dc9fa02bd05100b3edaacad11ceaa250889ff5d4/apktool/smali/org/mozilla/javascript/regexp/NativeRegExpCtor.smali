.class Lorg/mozilla/javascript/regexp/NativeRegExpCtor;
.super Lorg/mozilla/javascript/BaseFunction;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final DOLLAR_ID_BASE:I = 0xc

.field private static final Id_AMPERSAND:I = 0x6

.field private static final Id_BACK_QUOTE:I = 0xa

.field private static final Id_DOLLAR_1:I = 0xd

.field private static final Id_DOLLAR_2:I = 0xe

.field private static final Id_DOLLAR_3:I = 0xf

.field private static final Id_DOLLAR_4:I = 0x10

.field private static final Id_DOLLAR_5:I = 0x11

.field private static final Id_DOLLAR_6:I = 0x12

.field private static final Id_DOLLAR_7:I = 0x13

.field private static final Id_DOLLAR_8:I = 0x14

.field private static final Id_DOLLAR_9:I = 0x15

.field private static final Id_PLUS:I = 0x8

.field private static final Id_QUOTE:I = 0xc

.field private static final Id_STAR:I = 0x2

.field private static final Id_UNDERSCORE:I = 0x4

.field private static final Id_input:I = 0x3

.field private static final Id_lastMatch:I = 0x5

.field private static final Id_lastParen:I = 0x7

.field private static final Id_leftContext:I = 0x9

.field private static final Id_multiline:I = 0x1

.field private static final Id_rightContext:I = 0xb

.field private static final MAX_INSTANCE_ID:I = 0x15

.field private static final serialVersionUID:J = -0x4f90e148c40815ceL


# instance fields
.field private inputAttr:I

.field private multilineAttr:I

.field private starAttr:I

.field private underscoreAttr:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->multilineAttr:I

    .line 6
    .line 7
    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->starAttr:I

    .line 8
    .line 9
    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->inputAttr:I

    .line 10
    .line 11
    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->underscoreAttr:I

    .line 12
    .line 13
    return-void
.end method

.method private static getImpl()Lorg/mozilla/javascript/regexp/RegExpImpl;
    .locals 1

    .line 1
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    array-length p3, p4

    .line 2
    if-lez p3, :cond_1

    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    aget-object p3, p4, p3

    .line 6
    .line 7
    instance-of v0, p3, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    array-length v0, p4

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    aget-object v0, p4, v1

    .line 16
    .line 17
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    :cond_0
    return-object p3

    .line 22
    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExpInstantiator;->withLanguageVersion(I)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 10
    .line 11
    .line 12
    sget-object p1, Lorg/mozilla/javascript/TopLevel$Builtins;->RegExp:Lorg/mozilla/javascript/TopLevel$Builtins;

    .line 13
    .line 14
    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public findInstanceIdInfo(Ljava/lang/String;)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v7, 0x10

    .line 13
    .line 14
    const/16 v8, 0xf

    .line 15
    .line 16
    const/16 v9, 0xe

    .line 17
    .line 18
    const/16 v10, 0xd

    .line 19
    .line 20
    const/16 v11, 0xc

    .line 21
    .line 22
    const/16 v12, 0xb

    .line 23
    .line 24
    const/16 v13, 0xa

    .line 25
    .line 26
    const/16 v14, 0x9

    .line 27
    .line 28
    const/16 v15, 0x8

    .line 29
    .line 30
    const/16 v16, 0x7

    .line 31
    .line 32
    const/16 v17, 0x6

    .line 33
    .line 34
    const/16 v18, 0x0

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    const/4 v4, 0x2

    .line 38
    const/4 v5, 0x4

    .line 39
    const/4 v6, 0x3

    .line 40
    const/16 v19, 0x5

    .line 41
    .line 42
    const/16 v20, -0x1

    .line 43
    .line 44
    sparse-switch v2, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :sswitch_0
    const-string v2, "lastParen"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_0
    const/16 v20, 0x14

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :sswitch_1
    const-string v2, "lastMatch"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_1

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_1
    const/16 v20, 0x13

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :sswitch_2
    const-string v2, "input"

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_2

    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :cond_2
    const/16 v20, 0x12

    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :sswitch_3
    const-string v2, "$`"

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_3

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_3
    const/16 v20, 0x11

    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :sswitch_4
    const-string v2, "$_"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_4

    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_4
    move/from16 v20, v7

    .line 116
    .line 117
    goto/16 :goto_0

    .line 118
    .line 119
    :sswitch_5
    const-string v2, "$9"

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_5

    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_5
    move/from16 v20, v8

    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :sswitch_6
    const-string v2, "$8"

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_6

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_6
    move/from16 v20, v9

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :sswitch_7
    const-string v2, "$7"

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_7

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_7
    move/from16 v20, v10

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :sswitch_8
    const-string v2, "$6"

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-nez v2, :cond_8

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_8
    move/from16 v20, v11

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :sswitch_9
    const-string v2, "$5"

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-nez v2, :cond_9

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_9
    move/from16 v20, v12

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :sswitch_a
    const-string v2, "$4"

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-nez v2, :cond_a

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_a
    move/from16 v20, v13

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :sswitch_b
    const-string v2, "$3"

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-nez v2, :cond_b

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_b
    move/from16 v20, v14

    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :sswitch_c
    const-string v2, "$2"

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-nez v2, :cond_c

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_c
    move/from16 v20, v15

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :sswitch_d
    const-string v2, "$1"

    .line 232
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-nez v2, :cond_d

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_d
    move/from16 v20, v16

    .line 242
    .line 243
    goto :goto_0

    .line 244
    :sswitch_e
    const-string v2, "$+"

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-nez v2, :cond_e

    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_e
    move/from16 v20, v17

    .line 254
    .line 255
    goto :goto_0

    .line 256
    :sswitch_f
    const-string v2, "$*"

    .line 257
    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-nez v2, :cond_f

    .line 263
    .line 264
    goto :goto_0

    .line 265
    :cond_f
    move/from16 v20, v19

    .line 266
    .line 267
    goto :goto_0

    .line 268
    :sswitch_10
    const-string v2, "$\'"

    .line 269
    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_10

    .line 275
    .line 276
    goto :goto_0

    .line 277
    :cond_10
    move/from16 v20, v5

    .line 278
    .line 279
    goto :goto_0

    .line 280
    :sswitch_11
    const-string v2, "$&"

    .line 281
    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-nez v2, :cond_11

    .line 287
    .line 288
    goto :goto_0

    .line 289
    :cond_11
    move/from16 v20, v6

    .line 290
    .line 291
    goto :goto_0

    .line 292
    :sswitch_12
    const-string v2, "leftContext"

    .line 293
    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-nez v2, :cond_12

    .line 299
    .line 300
    goto :goto_0

    .line 301
    :cond_12
    move/from16 v20, v4

    .line 302
    .line 303
    goto :goto_0

    .line 304
    :sswitch_13
    const-string v2, "multiline"

    .line 305
    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-nez v2, :cond_13

    .line 311
    .line 312
    goto :goto_0

    .line 313
    :cond_13
    move/from16 v20, v3

    .line 314
    .line 315
    goto :goto_0

    .line 316
    :sswitch_14
    const-string v2, "rightContext"

    .line 317
    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-nez v2, :cond_14

    .line 323
    .line 324
    goto :goto_0

    .line 325
    :cond_14
    move/from16 v20, v18

    .line 326
    .line 327
    :goto_0
    packed-switch v20, :pswitch_data_0

    .line 328
    .line 329
    .line 330
    move/from16 v2, v18

    .line 331
    .line 332
    goto :goto_1

    .line 333
    :pswitch_0
    move/from16 v2, v16

    .line 334
    .line 335
    goto :goto_1

    .line 336
    :pswitch_1
    move/from16 v2, v19

    .line 337
    .line 338
    goto :goto_1

    .line 339
    :pswitch_2
    move v2, v6

    .line 340
    goto :goto_1

    .line 341
    :pswitch_3
    move v2, v13

    .line 342
    goto :goto_1

    .line 343
    :pswitch_4
    move v2, v5

    .line 344
    goto :goto_1

    .line 345
    :pswitch_5
    const/16 v2, 0x15

    .line 346
    .line 347
    goto :goto_1

    .line 348
    :pswitch_6
    const/16 v2, 0x14

    .line 349
    .line 350
    goto :goto_1

    .line 351
    :pswitch_7
    const/16 v2, 0x13

    .line 352
    .line 353
    goto :goto_1

    .line 354
    :pswitch_8
    const/16 v2, 0x12

    .line 355
    .line 356
    goto :goto_1

    .line 357
    :pswitch_9
    const/16 v2, 0x11

    .line 358
    .line 359
    goto :goto_1

    .line 360
    :pswitch_a
    move v2, v7

    .line 361
    goto :goto_1

    .line 362
    :pswitch_b
    move v2, v8

    .line 363
    goto :goto_1

    .line 364
    :pswitch_c
    move v2, v9

    .line 365
    goto :goto_1

    .line 366
    :pswitch_d
    move v2, v10

    .line 367
    goto :goto_1

    .line 368
    :pswitch_e
    move v2, v15

    .line 369
    goto :goto_1

    .line 370
    :pswitch_f
    move v2, v4

    .line 371
    goto :goto_1

    .line 372
    :pswitch_10
    move v2, v11

    .line 373
    goto :goto_1

    .line 374
    :pswitch_11
    move/from16 v2, v17

    .line 375
    .line 376
    goto :goto_1

    .line 377
    :pswitch_12
    move v2, v14

    .line 378
    goto :goto_1

    .line 379
    :pswitch_13
    move v2, v3

    .line 380
    goto :goto_1

    .line 381
    :pswitch_14
    move v2, v12

    .line 382
    :goto_1
    if-nez v2, :cond_15

    .line 383
    .line 384
    invoke-super/range {p0 .. p1}, Lorg/mozilla/javascript/BaseFunction;->findInstanceIdInfo(Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    return v0

    .line 389
    :cond_15
    if-eq v2, v3, :cond_19

    .line 390
    .line 391
    if-eq v2, v4, :cond_18

    .line 392
    .line 393
    if-eq v2, v6, :cond_17

    .line 394
    .line 395
    if-eq v2, v5, :cond_16

    .line 396
    .line 397
    move/from16 v1, v19

    .line 398
    .line 399
    goto :goto_2

    .line 400
    :cond_16
    iget v1, v0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->underscoreAttr:I

    .line 401
    .line 402
    goto :goto_2

    .line 403
    :cond_17
    iget v1, v0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->inputAttr:I

    .line 404
    .line 405
    goto :goto_2

    .line 406
    :cond_18
    iget v1, v0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->starAttr:I

    .line 407
    .line 408
    goto :goto_2

    .line 409
    :cond_19
    iget v1, v0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->multilineAttr:I

    .line 410
    .line 411
    :goto_2
    invoke-super {v0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    add-int/2addr v0, v2

    .line 416
    invoke-static {v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    return v0

    .line 421
    :sswitch_data_0
    .sparse-switch
        -0x4dc54c0d -> :sswitch_14
        -0x47e5bf53 -> :sswitch_13
        -0xd4e9858 -> :sswitch_12
        0x482 -> :sswitch_11
        0x483 -> :sswitch_10
        0x486 -> :sswitch_f
        0x487 -> :sswitch_e
        0x48d -> :sswitch_d
        0x48e -> :sswitch_c
        0x48f -> :sswitch_b
        0x490 -> :sswitch_a
        0x491 -> :sswitch_9
        0x492 -> :sswitch_8
        0x493 -> :sswitch_7
        0x494 -> :sswitch_6
        0x495 -> :sswitch_5
        0x4bb -> :sswitch_4
        0x4bc -> :sswitch_3
        0x5fb57ca -> :sswitch_2
        0x76fa84cf -> :sswitch_1
        0x7724c414 -> :sswitch_0
    .end sparse-switch

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method public getArity()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "RegExp"

    .line 2
    .line 3
    return-object p0
.end method

.method public getInstanceIdName(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int v0, p1, v0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-gt v1, v0, :cond_0

    .line 9
    .line 10
    const/16 v2, 0x15

    .line 11
    .line 12
    if-gt v0, v2, :cond_0

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x24

    .line 18
    .line 19
    int-to-char p0, v0

    .line 20
    const/4 p1, 0x2

    .line 21
    new-array p1, p1, [C

    .line 22
    .line 23
    const/16 v0, 0x24

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-char v0, p1, v2

    .line 27
    .line 28
    aput-char p0, p1, v1

    .line 29
    .line 30
    new-instance p0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_0
    const-string p0, "$\'"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_1
    const-string p0, "rightContext"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_2
    const-string p0, "$`"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_3
    const-string p0, "leftContext"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_4
    const-string p0, "$+"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_5
    const-string p0, "lastParen"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_6
    const-string p0, "$&"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_7
    const-string p0, "lastMatch"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_8
    const-string p0, "$_"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_9
    const-string p0, "input"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_a
    const-string p0, "$*"

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_b
    const-string p0, "multiline"

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->getInstanceIdName(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
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

.method public getInstanceIdValue(I)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int v0, p1, v0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-gt v1, v0, :cond_1

    .line 9
    .line 10
    const/16 v1, 0x15

    .line 11
    .line 12
    if-gt v0, v1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->getImpl()Lorg/mozilla/javascript/regexp/RegExpImpl;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, -0xd

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :pswitch_0
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_1
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_2
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_3
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_4
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    .line 41
    .line 42
    :goto_0
    if-nez p0, :cond_0

    .line 43
    .line 44
    const-string p0, ""

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :pswitch_5
    iget-boolean p0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    .line 53
    .line 54
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_1
    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->getInstanceIdValue(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getLength()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public getMaxInstanceId()I
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/lit8 p0, p0, 0x15

    .line 6
    .line 7
    return p0
.end method

.method public setInstanceIdAttributes(II)V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int v0, p1, v0

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    add-int/lit8 v0, v0, -0xd

    .line 11
    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->setInstanceIdAttributes(II)V

    .line 20
    .line 21
    .line 22
    :goto_0
    :pswitch_0
    return-void

    .line 23
    :pswitch_1
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->underscoreAttr:I

    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->inputAttr:I

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_3
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->starAttr:I

    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_4
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->multilineAttr:I

    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
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

.method public setInstanceIdValue(ILjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int v0, p1, v0

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    add-int/lit8 v0, v0, -0xd

    .line 11
    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->setInstanceIdValue(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    :pswitch_0
    return-void

    .line 23
    :pswitch_1
    invoke-static {}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->getImpl()Lorg/mozilla/javascript/regexp/RegExpImpl;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_2
    invoke-static {}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->getImpl()Lorg/mozilla/javascript/regexp/RegExpImpl;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput-boolean p1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
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
