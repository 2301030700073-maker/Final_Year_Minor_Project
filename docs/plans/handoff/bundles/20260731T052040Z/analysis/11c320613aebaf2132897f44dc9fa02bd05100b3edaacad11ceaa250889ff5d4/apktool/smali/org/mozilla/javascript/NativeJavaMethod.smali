.class public Lorg/mozilla/javascript/NativeJavaMethod;
.super Lorg/mozilla/javascript/BaseFunction;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field private static final PREFERENCE_AMBIGUOUS:I = 0x3

.field private static final PREFERENCE_EQUAL:I = 0x0

.field private static final PREFERENCE_FIRST_ARG:I = 0x1

.field private static final PREFERENCE_SECOND_ARG:I = 0x2

.field private static final debug:Z = false

.field private static final serialVersionUID:J = -0x2fbeb1018d019700L


# instance fields
.field private functionName:Ljava/lang/String;

.field methods:[Lorg/mozilla/javascript/MemberBox;

.field private final transient overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/mozilla/javascript/ResolvedOverload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 1

    .line 31
    new-instance v0, Lorg/mozilla/javascript/MemberBox;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    invoke-direct {p0, v0, p2}, Lorg/mozilla/javascript/NativeJavaMethod;-><init>(Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    const/4 p2, 0x1

    .line 30
    new-array p2, p2, [Lorg/mozilla/javascript/MemberBox;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    return-void
.end method

.method public constructor <init>([Lorg/mozilla/javascript/MemberBox;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    aget-object v0, p1, v0

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>([Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    return-void
.end method

.method public static findFunction(Lorg/mozilla/javascript/Context;[Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)I
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/4 v3, -0x1

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return v3

    .line 10
    :cond_0
    array-length v2, v0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-ne v2, v5, :cond_5

    .line 14
    .line 15
    aget-object v0, v0, v4

    .line 16
    .line 17
    iget-object v2, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 18
    .line 19
    array-length v5, v2

    .line 20
    iget-boolean v0, v0, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    add-int/lit8 v5, v5, -0x1

    .line 25
    .line 26
    array-length v0, v1

    .line 27
    if-le v5, v0, :cond_2

    .line 28
    .line 29
    return v3

    .line 30
    :cond_1
    array-length v0, v1

    .line 31
    if-eq v5, v0, :cond_2

    .line 32
    .line 33
    return v3

    .line 34
    :cond_2
    move v0, v4

    .line 35
    :goto_0
    if-eq v0, v5, :cond_4

    .line 36
    .line 37
    aget-object v6, v1, v0

    .line 38
    .line 39
    aget-object v7, v2, v0

    .line 40
    .line 41
    invoke-static {v6, v7}, Lorg/mozilla/javascript/NativeJavaObject;->canConvert(Ljava/lang/Object;Ljava/lang/Class;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-nez v6, :cond_3

    .line 46
    .line 47
    return v3

    .line 48
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    return v4

    .line 52
    :cond_5
    const/4 v2, 0x0

    .line 53
    move v7, v3

    .line 54
    move v6, v4

    .line 55
    move v8, v6

    .line 56
    :goto_1
    array-length v9, v0

    .line 57
    const/4 v11, 0x3

    .line 58
    if-ge v6, v9, :cond_18

    .line 59
    .line 60
    aget-object v9, v0, v6

    .line 61
    .line 62
    iget-object v12, v9, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 63
    .line 64
    array-length v13, v12

    .line 65
    iget-boolean v14, v9, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    .line 66
    .line 67
    if-eqz v14, :cond_6

    .line 68
    .line 69
    add-int/lit8 v13, v13, -0x1

    .line 70
    .line 71
    array-length v14, v1

    .line 72
    if-le v13, v14, :cond_7

    .line 73
    .line 74
    :goto_2
    move-object/from16 v10, p0

    .line 75
    .line 76
    move-object/from16 v19, v2

    .line 77
    .line 78
    move/from16 v16, v4

    .line 79
    .line 80
    goto/16 :goto_b

    .line 81
    .line 82
    :cond_6
    array-length v14, v1

    .line 83
    if-eq v13, v14, :cond_7

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_7
    move v14, v4

    .line 87
    :goto_3
    if-ge v14, v13, :cond_9

    .line 88
    .line 89
    aget-object v15, v1, v14

    .line 90
    .line 91
    move/from16 v16, v4

    .line 92
    .line 93
    aget-object v4, v12, v14

    .line 94
    .line 95
    invoke-static {v15, v4}, Lorg/mozilla/javascript/NativeJavaObject;->canConvert(Ljava/lang/Object;Ljava/lang/Class;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-nez v4, :cond_8

    .line 100
    .line 101
    move-object/from16 v10, p0

    .line 102
    .line 103
    move-object/from16 v19, v2

    .line 104
    .line 105
    goto/16 :goto_b

    .line 106
    .line 107
    :cond_8
    add-int/lit8 v14, v14, 0x1

    .line 108
    .line 109
    move/from16 v4, v16

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_9
    move/from16 v16, v4

    .line 113
    .line 114
    if-gez v7, :cond_a

    .line 115
    .line 116
    move-object/from16 v10, p0

    .line 117
    .line 118
    move-object/from16 v19, v2

    .line 119
    .line 120
    goto/16 :goto_8

    .line 121
    .line 122
    :cond_a
    move v4, v3

    .line 123
    move/from16 v13, v16

    .line 124
    .line 125
    move v14, v13

    .line 126
    :goto_4
    if-eq v4, v8, :cond_14

    .line 127
    .line 128
    if-ne v4, v3, :cond_b

    .line 129
    .line 130
    move v15, v7

    .line 131
    goto :goto_5

    .line 132
    :cond_b
    aget v15, v2, v4

    .line 133
    .line 134
    :goto_5
    aget-object v15, v0, v15

    .line 135
    .line 136
    const/16 v3, 0xd

    .line 137
    .line 138
    move-object/from16 v10, p0

    .line 139
    .line 140
    invoke-virtual {v10, v3}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_d

    .line 145
    .line 146
    invoke-virtual {v15}, Lorg/mozilla/javascript/MemberBox;->isPublic()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v9}, Lorg/mozilla/javascript/MemberBox;->isPublic()Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eq v3, v5, :cond_d

    .line 155
    .line 156
    invoke-virtual {v15}, Lorg/mozilla/javascript/MemberBox;->isPublic()Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-nez v3, :cond_c

    .line 161
    .line 162
    add-int/lit8 v13, v13, 0x1

    .line 163
    .line 164
    :goto_6
    move-object/from16 v19, v2

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_c
    add-int/lit8 v14, v14, 0x1

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_d
    iget-boolean v3, v9, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    .line 171
    .line 172
    iget-object v5, v15, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 173
    .line 174
    move-object/from16 v19, v2

    .line 175
    .line 176
    iget-boolean v2, v15, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    .line 177
    .line 178
    invoke-static {v1, v12, v3, v5, v2}, Lorg/mozilla/javascript/NativeJavaMethod;->preferSignature([Ljava/lang/Object;[Ljava/lang/Class;Z[Ljava/lang/Class;Z)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-ne v2, v11, :cond_e

    .line 183
    .line 184
    goto :goto_a

    .line 185
    :cond_e
    const/4 v3, 0x1

    .line 186
    if-ne v2, v3, :cond_f

    .line 187
    .line 188
    add-int/lit8 v13, v13, 0x1

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_f
    const/4 v3, 0x2

    .line 192
    if-ne v2, v3, :cond_10

    .line 193
    .line 194
    add-int/lit8 v14, v14, 0x1

    .line 195
    .line 196
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 197
    .line 198
    move-object/from16 v2, v19

    .line 199
    .line 200
    const/4 v3, -0x1

    .line 201
    const/4 v5, 0x1

    .line 202
    goto :goto_4

    .line 203
    :cond_10
    if-eqz v2, :cond_11

    .line 204
    .line 205
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 206
    .line 207
    .line 208
    :cond_11
    invoke-virtual {v15}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_12

    .line 213
    .line 214
    invoke-virtual {v15}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v9}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_12

    .line 227
    .line 228
    const/4 v2, -0x1

    .line 229
    if-ne v4, v2, :cond_13

    .line 230
    .line 231
    :goto_8
    move v7, v6

    .line 232
    :cond_12
    :goto_9
    move-object/from16 v2, v19

    .line 233
    .line 234
    goto :goto_d

    .line 235
    :cond_13
    aput v6, v19, v4

    .line 236
    .line 237
    goto :goto_b

    .line 238
    :cond_14
    move-object/from16 v10, p0

    .line 239
    .line 240
    move-object/from16 v19, v2

    .line 241
    .line 242
    :goto_a
    add-int/lit8 v2, v8, 0x1

    .line 243
    .line 244
    if-ne v13, v2, :cond_15

    .line 245
    .line 246
    move v7, v6

    .line 247
    move/from16 v8, v16

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :cond_15
    if-ne v14, v2, :cond_16

    .line 251
    .line 252
    :goto_b
    goto :goto_9

    .line 253
    :cond_16
    if-nez v19, :cond_17

    .line 254
    .line 255
    array-length v3, v0

    .line 256
    const/16 v18, 0x1

    .line 257
    .line 258
    add-int/lit8 v3, v3, -0x1

    .line 259
    .line 260
    new-array v3, v3, [I

    .line 261
    .line 262
    goto :goto_c

    .line 263
    :cond_17
    move-object/from16 v3, v19

    .line 264
    .line 265
    :goto_c
    aput v6, v3, v8

    .line 266
    .line 267
    move v8, v2

    .line 268
    move-object v2, v3

    .line 269
    :goto_d
    add-int/lit8 v6, v6, 0x1

    .line 270
    .line 271
    move/from16 v4, v16

    .line 272
    .line 273
    const/4 v3, -0x1

    .line 274
    const/4 v5, 0x1

    .line 275
    goto/16 :goto_1

    .line 276
    .line 277
    :cond_18
    move-object/from16 v19, v2

    .line 278
    .line 279
    move/from16 v16, v4

    .line 280
    .line 281
    if-gez v7, :cond_19

    .line 282
    .line 283
    const/4 v2, -0x1

    .line 284
    return v2

    .line 285
    :cond_19
    const/4 v2, -0x1

    .line 286
    if-nez v8, :cond_1a

    .line 287
    .line 288
    return v7

    .line 289
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    move v4, v2

    .line 295
    :goto_e
    if-eq v4, v8, :cond_1c

    .line 296
    .line 297
    if-ne v4, v2, :cond_1b

    .line 298
    .line 299
    move v5, v7

    .line 300
    goto :goto_f

    .line 301
    :cond_1b
    aget v5, v19, v4

    .line 302
    .line 303
    :goto_f
    const-string v6, "\n    "

    .line 304
    .line 305
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    aget-object v5, v0, v5

    .line 309
    .line 310
    invoke-virtual {v5}, Lorg/mozilla/javascript/MemberBox;->toJavaDeclaration()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    add-int/lit8 v4, v4, 0x1

    .line 318
    .line 319
    goto :goto_e

    .line 320
    :cond_1c
    aget-object v2, v0, v7

    .line 321
    .line 322
    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    aget-object v0, v0, v16

    .line 335
    .line 336
    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->isCtor()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_1d

    .line 341
    .line 342
    invoke-static {v1}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    new-array v2, v11, [Ljava/lang/Object;

    .line 351
    .line 352
    aput-object v4, v2, v16

    .line 353
    .line 354
    const/16 v18, 0x1

    .line 355
    .line 356
    aput-object v0, v2, v18

    .line 357
    .line 358
    const/16 v17, 0x2

    .line 359
    .line 360
    aput-object v1, v2, v17

    .line 361
    .line 362
    const-string v0, "msg.constructor.ambiguous"

    .line 363
    .line 364
    invoke-static {v0, v2}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    throw v0

    .line 369
    :cond_1d
    const/16 v17, 0x2

    .line 370
    .line 371
    const/16 v18, 0x1

    .line 372
    .line 373
    invoke-static {v1}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    const/4 v3, 0x4

    .line 382
    new-array v3, v3, [Ljava/lang/Object;

    .line 383
    .line 384
    aput-object v2, v3, v16

    .line 385
    .line 386
    aput-object v4, v3, v18

    .line 387
    .line 388
    aput-object v0, v3, v17

    .line 389
    .line 390
    aput-object v1, v3, v11

    .line 391
    .line 392
    const-string v0, "msg.method.ambiguous"

    .line 393
    .line 394
    invoke-static {v0, v3}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    throw v0
.end method

.method private static preferSignature([Ljava/lang/Object;[Ljava/lang/Class;Z[Ljava/lang/Class;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Ljava/lang/Class<",
            "*>;Z)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p0

    .line 4
    if-ge v0, v2, :cond_8

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    array-length v3, p1

    .line 10
    if-lt v0, v3, :cond_0

    .line 11
    .line 12
    array-length v3, p1

    .line 13
    sub-int/2addr v3, v2

    .line 14
    aget-object v3, p1, v3

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    aget-object v3, p1, v0

    .line 18
    .line 19
    :goto_1
    if-eqz p4, :cond_1

    .line 20
    .line 21
    array-length v4, p3

    .line 22
    if-lt v0, v4, :cond_1

    .line 23
    .line 24
    array-length v4, p3

    .line 25
    sub-int/2addr v4, v2

    .line 26
    aget-object v4, p3, v4

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    aget-object v4, p3, v0

    .line 30
    .line 31
    :goto_2
    if-ne v3, v4, :cond_2

    .line 32
    .line 33
    goto :goto_5

    .line 34
    :cond_2
    aget-object v5, p0, v0

    .line 35
    .line 36
    invoke-static {v5, v3}, Lorg/mozilla/javascript/NativeJavaObject;->getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-static {v5, v4}, Lorg/mozilla/javascript/NativeJavaObject;->getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/4 v7, 0x3

    .line 45
    if-ge v6, v5, :cond_3

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_3
    const/4 v8, 0x2

    .line 49
    if-le v6, v5, :cond_4

    .line 50
    .line 51
    :goto_3
    move v2, v8

    .line 52
    goto :goto_4

    .line 53
    :cond_4
    if-nez v6, :cond_6

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_5

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_6

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_6
    move v2, v7

    .line 70
    :goto_4
    or-int/2addr v1, v2

    .line 71
    if-ne v1, v7, :cond_7

    .line 72
    .line 73
    return v1

    .line 74
    :cond_7
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_8
    return v1
.end method

.method private static printDebug(Ljava/lang/String;Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static scriptSignature([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    .line 8
    if-eq v1, v2, :cond_9

    .line 9
    .line 10
    aget-object v2, p0, v1

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-string v2, "null"

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    instance-of v3, v2, Ljava/lang/Boolean;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    const-string v2, "boolean"

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    const-string/jumbo v2, "string"

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    instance-of v3, v2, Ljava/lang/Number;

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    const-string v2, "number"

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    instance-of v3, v2, Lorg/mozilla/javascript/Scriptable;

    .line 40
    .line 41
    if-eqz v3, :cond_7

    .line 42
    .line 43
    instance-of v3, v2, Lorg/mozilla/javascript/Undefined;

    .line 44
    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    const-string/jumbo v2, "undefined"

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    instance-of v3, v2, Lorg/mozilla/javascript/Wrapper;

    .line 52
    .line 53
    if-eqz v3, :cond_5

    .line 54
    .line 55
    check-cast v2, Lorg/mozilla/javascript/Wrapper;

    .line 56
    .line 57
    invoke-interface {v2}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    instance-of v2, v2, Lorg/mozilla/javascript/Function;

    .line 71
    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    const-string v2, "function"

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_6
    const-string v2, "object"

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    :goto_1
    if-eqz v1, :cond_8

    .line 89
    .line 90
    const/16 v3, 0x2c

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    invoke-virtual {p0, p1, p4}, Lorg/mozilla/javascript/NativeJavaMethod;->findCachedFunction(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-ltz v0, :cond_c

    .line 16
    .line 17
    aget-object v0, v2, v0

    .line 18
    .line 19
    iget-object v2, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 20
    .line 21
    iget-boolean v5, v0, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    .line 22
    .line 23
    if-eqz v5, :cond_4

    .line 24
    .line 25
    array-length v5, v2

    .line 26
    new-array v5, v5, [Ljava/lang/Object;

    .line 27
    .line 28
    move v6, v3

    .line 29
    :goto_0
    array-length v7, v2

    .line 30
    sub-int/2addr v7, v4

    .line 31
    if-ge v6, v7, :cond_0

    .line 32
    .line 33
    aget-object v7, p4, v6

    .line 34
    .line 35
    aget-object v8, v2, v6

    .line 36
    .line 37
    invoke-static {v7, v8}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    aput-object v7, v5, v6

    .line 42
    .line 43
    add-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    array-length v6, p4

    .line 47
    array-length v7, v2

    .line 48
    if-ne v6, v7, :cond_2

    .line 49
    .line 50
    array-length v6, p4

    .line 51
    sub-int/2addr v6, v4

    .line 52
    aget-object v6, p4, v6

    .line 53
    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    array-length v6, p4

    .line 57
    sub-int/2addr v6, v4

    .line 58
    aget-object v6, p4, v6

    .line 59
    .line 60
    instance-of v6, v6, Lorg/mozilla/javascript/NativeArray;

    .line 61
    .line 62
    if-nez v6, :cond_1

    .line 63
    .line 64
    array-length v6, p4

    .line 65
    sub-int/2addr v6, v4

    .line 66
    aget-object v6, p4, v6

    .line 67
    .line 68
    instance-of v6, v6, Lorg/mozilla/javascript/NativeJavaArray;

    .line 69
    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    :cond_1
    array-length v6, p4

    .line 73
    sub-int/2addr v6, v4

    .line 74
    aget-object p4, p4, v6

    .line 75
    .line 76
    array-length v6, v2

    .line 77
    sub-int/2addr v6, v4

    .line 78
    aget-object v6, v2, v6

    .line 79
    .line 80
    invoke-static {p4, v6}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    array-length v6, v2

    .line 86
    sub-int/2addr v6, v4

    .line 87
    aget-object v6, v2, v6

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    array-length v7, p4

    .line 94
    array-length v8, v2

    .line 95
    sub-int/2addr v7, v8

    .line 96
    add-int/2addr v7, v4

    .line 97
    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    move v8, v3

    .line 102
    :goto_1
    invoke-static {v7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-ge v8, v9, :cond_3

    .line 107
    .line 108
    array-length v9, v2

    .line 109
    sub-int/2addr v9, v4

    .line 110
    add-int/2addr v9, v8

    .line 111
    aget-object v9, p4, v9

    .line 112
    .line 113
    invoke-static {v9, v6}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    invoke-static {v7, v8, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v8, v8, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    move-object p4, v7

    .line 124
    :goto_2
    array-length v2, v2

    .line 125
    sub-int/2addr v2, v4

    .line 126
    aput-object p4, v5, v2

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_4
    move-object v5, p4

    .line 130
    move v6, v3

    .line 131
    :goto_3
    array-length v7, v5

    .line 132
    if-ge v6, v7, :cond_7

    .line 133
    .line 134
    aget-object v7, v5, v6

    .line 135
    .line 136
    aget-object v8, v2, v6

    .line 137
    .line 138
    invoke-static {v7, v8}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    if-eq v8, v7, :cond_6

    .line 143
    .line 144
    if-ne p4, v5, :cond_5

    .line 145
    .line 146
    invoke-virtual {v5}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    check-cast v5, [Ljava/lang/Object;

    .line 151
    .line 152
    :cond_5
    aput-object v8, v5, v6

    .line 153
    .line 154
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_7
    :goto_4
    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    .line 158
    .line 159
    .line 160
    move-result p4

    .line 161
    if-eqz p4, :cond_8

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_8
    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    move-result-object p4

    .line 168
    move-object v1, p3

    .line 169
    :goto_5
    if-eqz v1, :cond_b

    .line 170
    .line 171
    instance-of v2, v1, Lorg/mozilla/javascript/Wrapper;

    .line 172
    .line 173
    if-eqz v2, :cond_a

    .line 174
    .line 175
    move-object v2, v1

    .line 176
    check-cast v2, Lorg/mozilla/javascript/Wrapper;

    .line 177
    .line 178
    invoke-interface {v2}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {p4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-eqz v6, :cond_a

    .line 187
    .line 188
    move-object v1, v2

    .line 189
    :goto_6
    invoke-virtual {v0, v1, v5}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    .line 202
    .line 203
    .line 204
    move-result-object p4

    .line 205
    invoke-virtual {p4, p1, p2, p0, p3}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    if-nez p0, :cond_9

    .line 210
    .line 211
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 212
    .line 213
    if-ne p3, p1, :cond_9

    .line 214
    .line 215
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 216
    .line 217
    :cond_9
    return-object p0

    .line 218
    :cond_a
    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    goto :goto_5

    .line 223
    :cond_b
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->getFunctionName()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    const/4 p3, 0x3

    .line 236
    new-array p3, p3, [Ljava/lang/Object;

    .line 237
    .line 238
    aput-object p0, p3, v3

    .line 239
    .line 240
    aput-object p1, p3, v4

    .line 241
    .line 242
    const/4 p0, 0x2

    .line 243
    aput-object p2, p3, p0

    .line 244
    .line 245
    const-string p0, "msg.nonjava.method"

    .line 246
    .line 247
    invoke-static {p0, p3}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    throw p0

    .line 252
    :cond_c
    aget-object p1, v2, v3

    .line 253
    .line 254
    invoke-virtual {p1}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->getFunctionName()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-static {p4}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    new-instance p3, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string p1, "."

    .line 283
    .line 284
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string p0, "("

    .line 291
    .line 292
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string p0, ")"

    .line 299
    .line 300
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    new-array p1, v4, [Ljava/lang/Object;

    .line 308
    .line 309
    aput-object p0, p1, v3

    .line 310
    .line 311
    const-string p0, "msg.java.no_such_method"

    .line 312
    .line 313
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    throw p0

    .line 318
    :cond_d
    const-string p0, "No methods defined for call"

    .line 319
    .line 320
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    return-object v1
.end method

.method public decompile(ILjava/util/EnumSet;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Lorg/mozilla/javascript/DecompilerFlag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/mozilla/javascript/DecompilerFlag;->ONLY_BODY:Lorg/mozilla/javascript/DecompilerFlag;

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const-string v0, "function "

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->getFunctionName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, "() {"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
    const-string v0, "/*\n"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    const-string p0, "*/\n"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string p0, "*/}\n"

    .line 49
    .line 50
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public findCachedFunction(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-le v1, v2, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lorg/mozilla/javascript/ResolvedOverload;

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Lorg/mozilla/javascript/ResolvedOverload;->matches([Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget p0, v1, Lorg/mozilla/javascript/ResolvedOverload;->index:I

    .line 32
    .line 33
    return p0

    .line 34
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 35
    .line 36
    invoke-static {p1, v0, p2}, Lorg/mozilla/javascript/NativeJavaMethod;->findFunction(Lorg/mozilla/javascript/Context;[Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 47
    .line 48
    array-length v1, v1

    .line 49
    mul-int/lit8 v1, v1, 0x2

    .line 50
    .line 51
    if-ge v0, v1, :cond_2

    .line 52
    .line 53
    new-instance v0, Lorg/mozilla/javascript/ResolvedOverload;

    .line 54
    .line 55
    invoke-direct {v0, p2, p1}, Lorg/mozilla/javascript/ResolvedOverload;-><init>([Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_2
    return p1

    .line 64
    :cond_3
    invoke-static {p1, v0, p2}, Lorg/mozilla/javascript/NativeJavaMethod;->findFunction(Lorg/mozilla/javascript/Context;[Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    return p0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-eq v2, v1, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 13
    .line 14
    aget-object v3, v3, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget-object v4, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    aget-object v3, v4, v2

    .line 25
    .line 26
    invoke-virtual {v3}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 v4, 0x20

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    aget-object v3, v4, v2

    .line 55
    .line 56
    invoke-virtual {v3}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :goto_1
    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 64
    .line 65
    aget-object v3, v3, v2

    .line 66
    .line 67
    iget-object v3, v3, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 68
    .line 69
    invoke-static {v3}, Lorg/mozilla/javascript/JavaMembers;->liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/16 v3, 0xa

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method
