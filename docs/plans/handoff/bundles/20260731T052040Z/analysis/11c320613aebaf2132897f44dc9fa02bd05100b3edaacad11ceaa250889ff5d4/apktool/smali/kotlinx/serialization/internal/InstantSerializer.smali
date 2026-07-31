.class public final Lkotlinx/serialization/internal/InstantSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/InstantSerializer;

.field public static final descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/serialization/internal/InstantSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/serialization/internal/InstantSerializer;->INSTANCE:Lkotlinx/serialization/internal/InstantSerializer;

    .line 7
    .line 8
    new-instance v0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 9
    .line 10
    const-string v1, "kotlin.time.Instant"

    .line 11
    .line 12
    sget-object v2, Lkotlinx/serialization/descriptors/PrimitiveKind$INT;->INSTANCE$8:Lkotlinx/serialization/descriptors/PrimitiveKind$INT;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind$INT;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lkotlinx/serialization/internal/InstantSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 25

    .line 1
    sget-object v0, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Lkotlinx/serialization/encoding/Decoder;->decodeString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lorg/jsoup/parser/ParseError;

    .line 17
    .line 18
    const-string v2, "An empty string is not a valid Instant"

    .line 19
    .line 20
    invoke-direct {v1, v2, v0}, Lorg/jsoup/parser/ParseError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_16

    .line 24
    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/16 v3, 0x20

    .line 31
    .line 32
    const/16 v4, 0x2b

    .line 33
    .line 34
    const/16 v5, 0x2d

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    if-eq v2, v4, :cond_1

    .line 38
    .line 39
    if-eq v2, v5, :cond_1

    .line 40
    .line 41
    move v7, v1

    .line 42
    move v2, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v7, v6

    .line 45
    :goto_0
    move v9, v1

    .line 46
    move v8, v7

    .line 47
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    const/16 v11, 0x3a

    .line 52
    .line 53
    const/16 v12, 0x30

    .line 54
    .line 55
    if-ge v8, v10, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-gt v12, v10, :cond_2

    .line 62
    .line 63
    if-ge v10, v11, :cond_2

    .line 64
    .line 65
    mul-int/lit8 v9, v9, 0xa

    .line 66
    .line 67
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    sub-int/2addr v10, v12

    .line 72
    add-int/2addr v9, v10

    .line 73
    add-int/lit8 v8, v8, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    sub-int v10, v8, v7

    .line 77
    .line 78
    const-string v13, " digits"

    .line 79
    .line 80
    const/16 v14, 0xa

    .line 81
    .line 82
    if-le v10, v14, :cond_3

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "Expected at most 10 digits for the year number, got "

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    goto/16 :goto_16

    .line 106
    .line 107
    :cond_3
    if-ne v10, v14, :cond_4

    .line 108
    .line 109
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    const/16 v15, 0x32

    .line 114
    .line 115
    if-lt v7, v15, :cond_4

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, "Expected at most 9 digits for the year number or year 1000000000, got "

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    goto/16 :goto_16

    .line 139
    .line 140
    :cond_4
    const/4 v7, 0x4

    .line 141
    if-ge v10, v7, :cond_5

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v2, "The year number must be padded to 4 digits, got "

    .line 146
    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    goto/16 :goto_16

    .line 165
    .line 166
    :cond_5
    if-ne v2, v4, :cond_6

    .line 167
    .line 168
    if-ne v10, v7, :cond_6

    .line 169
    .line 170
    const-string v1, "The \'+\' sign at the start is only valid for year numbers longer than 4 digits"

    .line 171
    .line 172
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    goto/16 :goto_16

    .line 177
    .line 178
    :cond_6
    if-ne v2, v3, :cond_7

    .line 179
    .line 180
    if-eq v10, v7, :cond_7

    .line 181
    .line 182
    const-string v1, "A \'+\' or \'-\' sign is required for year numbers longer than 4 digits"

    .line 183
    .line 184
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    goto/16 :goto_16

    .line 189
    .line 190
    :cond_7
    if-ne v2, v5, :cond_8

    .line 191
    .line 192
    neg-int v9, v9

    .line 193
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    add-int/lit8 v3, v8, 0x10

    .line 198
    .line 199
    if-ge v2, v3, :cond_9

    .line 200
    .line 201
    const-string v1, "The input string is too short"

    .line 202
    .line 203
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    goto/16 :goto_16

    .line 208
    .line 209
    :cond_9
    new-instance v2, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 210
    .line 211
    const/16 v10, 0x13

    .line 212
    .line 213
    invoke-direct {v2, v10}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 214
    .line 215
    .line 216
    const-string v10, "\'-\'"

    .line 217
    .line 218
    invoke-static {v0, v10, v8, v2}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    if-eqz v2, :cond_a

    .line 223
    .line 224
    :goto_2
    move-object v1, v2

    .line 225
    goto/16 :goto_16

    .line 226
    .line 227
    :cond_a
    add-int/lit8 v2, v8, 0x3

    .line 228
    .line 229
    new-instance v15, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 230
    .line 231
    const/16 v1, 0x14

    .line 232
    .line 233
    invoke-direct {v15, v1}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 234
    .line 235
    .line 236
    invoke-static {v0, v10, v2, v15}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    if-eqz v1, :cond_b

    .line 241
    .line 242
    goto/16 :goto_16

    .line 243
    .line 244
    :cond_b
    add-int/lit8 v1, v8, 0x6

    .line 245
    .line 246
    new-instance v2, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 247
    .line 248
    const/16 v10, 0x15

    .line 249
    .line 250
    invoke-direct {v2, v10}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 251
    .line 252
    .line 253
    const-string v10, "\'T\' or \'t\'"

    .line 254
    .line 255
    invoke-static {v0, v10, v1, v2}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    if-eqz v1, :cond_c

    .line 260
    .line 261
    goto/16 :goto_16

    .line 262
    .line 263
    :cond_c
    add-int/lit8 v1, v8, 0x9

    .line 264
    .line 265
    new-instance v2, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 266
    .line 267
    const/16 v10, 0x16

    .line 268
    .line 269
    invoke-direct {v2, v10}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 270
    .line 271
    .line 272
    const-string v10, "\':\'"

    .line 273
    .line 274
    invoke-static {v0, v10, v1, v2}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    if-eqz v1, :cond_d

    .line 279
    .line 280
    goto/16 :goto_16

    .line 281
    .line 282
    :cond_d
    add-int/lit8 v1, v8, 0xc

    .line 283
    .line 284
    new-instance v2, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 285
    .line 286
    const/16 v15, 0x17

    .line 287
    .line 288
    invoke-direct {v2, v15}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 289
    .line 290
    .line 291
    invoke-static {v0, v10, v1, v2}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    if-eqz v1, :cond_e

    .line 296
    .line 297
    goto/16 :goto_16

    .line 298
    .line 299
    :cond_e
    const/4 v1, 0x0

    .line 300
    :goto_3
    if-ge v1, v14, :cond_10

    .line 301
    .line 302
    sget-object v2, Lkotlin/time/InstantKt;->asciiDigitPositionsInIsoStringAfterYear:[I

    .line 303
    .line 304
    aget v2, v2, v1

    .line 305
    .line 306
    add-int/2addr v2, v8

    .line 307
    new-instance v10, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 308
    .line 309
    const/16 v15, 0x18

    .line 310
    .line 311
    invoke-direct {v10, v15}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 312
    .line 313
    .line 314
    const-string v15, "an ASCII digit"

    .line 315
    .line 316
    invoke-static {v0, v15, v2, v10}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    if-eqz v2, :cond_f

    .line 321
    .line 322
    goto :goto_2

    .line 323
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 324
    .line 325
    const/16 v15, 0x17

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_10
    add-int/lit8 v1, v8, 0x1

    .line 329
    .line 330
    invoke-static {v1, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    add-int/lit8 v2, v8, 0x4

    .line 335
    .line 336
    invoke-static {v2, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    add-int/lit8 v10, v8, 0x7

    .line 341
    .line 342
    invoke-static {v10, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 343
    .line 344
    .line 345
    move-result v10

    .line 346
    add-int/lit8 v15, v8, 0xa

    .line 347
    .line 348
    invoke-static {v15, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 349
    .line 350
    .line 351
    move-result v15

    .line 352
    add-int/lit8 v7, v8, 0xd

    .line 353
    .line 354
    invoke-static {v7, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    add-int/lit8 v8, v8, 0xf

    .line 359
    .line 360
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    const/16 v4, 0x2e

    .line 365
    .line 366
    const/16 v14, 0x9

    .line 367
    .line 368
    if-ne v5, v4, :cond_13

    .line 369
    .line 370
    move v8, v3

    .line 371
    const/4 v4, 0x0

    .line 372
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    if-ge v8, v5, :cond_11

    .line 377
    .line 378
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-gt v12, v5, :cond_11

    .line 383
    .line 384
    if-ge v5, v11, :cond_11

    .line 385
    .line 386
    mul-int/lit8 v4, v4, 0xa

    .line 387
    .line 388
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    sub-int/2addr v5, v12

    .line 393
    add-int/2addr v4, v5

    .line 394
    add-int/lit8 v8, v8, 0x1

    .line 395
    .line 396
    goto :goto_4

    .line 397
    :cond_11
    sub-int v3, v8, v3

    .line 398
    .line 399
    if-gt v6, v3, :cond_12

    .line 400
    .line 401
    const/16 v5, 0xa

    .line 402
    .line 403
    if-ge v3, v5, :cond_12

    .line 404
    .line 405
    sget-object v5, Lkotlin/time/InstantKt;->POWERS_OF_TEN:[I

    .line 406
    .line 407
    rsub-int/lit8 v3, v3, 0x9

    .line 408
    .line 409
    aget v3, v5, v3

    .line 410
    .line 411
    mul-int/2addr v4, v3

    .line 412
    goto :goto_5

    .line 413
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    const-string v2, "1..9 digits are supported for the fraction of the second, got "

    .line 416
    .line 417
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    goto/16 :goto_16

    .line 435
    .line 436
    :cond_13
    const/4 v4, 0x0

    .line 437
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-lt v8, v3, :cond_14

    .line 442
    .line 443
    const-string v1, "The UTC offset at the end of the string is missing"

    .line 444
    .line 445
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    goto/16 :goto_16

    .line 450
    .line 451
    :cond_14
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    const/4 v5, 0x2

    .line 456
    const/16 v13, 0x27

    .line 457
    .line 458
    move/from16 v19, v6

    .line 459
    .line 460
    const-string v6, ", got \'"

    .line 461
    .line 462
    const/16 v12, 0x2b

    .line 463
    .line 464
    if-eq v3, v12, :cond_17

    .line 465
    .line 466
    const/16 v12, 0x2d

    .line 467
    .line 468
    if-eq v3, v12, :cond_17

    .line 469
    .line 470
    const/16 v11, 0x5a

    .line 471
    .line 472
    if-eq v3, v11, :cond_15

    .line 473
    .line 474
    const/16 v11, 0x7a

    .line 475
    .line 476
    if-eq v3, v11, :cond_15

    .line 477
    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    const-string v2, "Expected the UTC offset at position "

    .line 481
    .line 482
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    goto/16 :goto_16

    .line 506
    .line 507
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 508
    .line 509
    .line 510
    move-result v3

    .line 511
    add-int/lit8 v8, v8, 0x1

    .line 512
    .line 513
    if-ne v3, v8, :cond_16

    .line 514
    .line 515
    const/4 v6, 0x0

    .line 516
    :goto_6
    move/from16 v3, v19

    .line 517
    .line 518
    goto/16 :goto_10

    .line 519
    .line 520
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    const-string v2, "Extra text after the instant at position "

    .line 523
    .line 524
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    goto/16 :goto_16

    .line 539
    .line 540
    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 541
    .line 542
    .line 543
    move-result v12

    .line 544
    sub-int/2addr v12, v8

    .line 545
    if-le v12, v14, :cond_18

    .line 546
    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    const-string v2, "The UTC offset string \""

    .line 550
    .line 551
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    const/16 v3, 0x10

    .line 567
    .line 568
    invoke-static {v3, v2}, Lkotlin/time/InstantKt;->truncateForErrorMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const-string v2, "\" is too long"

    .line 576
    .line 577
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    goto/16 :goto_16

    .line 589
    .line 590
    :cond_18
    rem-int/lit8 v18, v12, 0x3

    .line 591
    .line 592
    if-eqz v18, :cond_19

    .line 593
    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    const-string v2, "Invalid UTC offset string \""

    .line 597
    .line 598
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 602
    .line 603
    .line 604
    move-result v2

    .line 605
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    const/16 v2, 0x22

    .line 617
    .line 618
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    goto/16 :goto_16

    .line 630
    .line 631
    :cond_19
    const/4 v14, 0x0

    .line 632
    :goto_7
    if-ge v14, v5, :cond_1c

    .line 633
    .line 634
    sget-object v23, Lkotlin/time/InstantKt;->colonsInIsoOffsetString:[I

    .line 635
    .line 636
    aget v23, v23, v14

    .line 637
    .line 638
    add-int v5, v8, v23

    .line 639
    .line 640
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 641
    .line 642
    .line 643
    move-result v13

    .line 644
    if-lt v5, v13, :cond_1a

    .line 645
    .line 646
    goto :goto_8

    .line 647
    :cond_1a
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 648
    .line 649
    .line 650
    move-result v13

    .line 651
    if-eq v13, v11, :cond_1b

    .line 652
    .line 653
    const-string v1, "Expected \':\' at index "

    .line 654
    .line 655
    invoke-static {v1, v5, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    const/16 v2, 0x27

    .line 667
    .line 668
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    goto/16 :goto_16

    .line 680
    .line 681
    :cond_1b
    add-int/lit8 v14, v14, 0x1

    .line 682
    .line 683
    const/4 v5, 0x2

    .line 684
    const/16 v13, 0x27

    .line 685
    .line 686
    goto :goto_7

    .line 687
    :cond_1c
    :goto_8
    const/4 v5, 0x0

    .line 688
    :goto_9
    const/4 v13, 0x6

    .line 689
    if-ge v5, v13, :cond_1f

    .line 690
    .line 691
    sget-object v13, Lkotlin/time/InstantKt;->asciiDigitsInIsoOffsetString:[I

    .line 692
    .line 693
    aget v13, v13, v5

    .line 694
    .line 695
    add-int/2addr v13, v8

    .line 696
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 697
    .line 698
    .line 699
    move-result v14

    .line 700
    if-lt v13, v14, :cond_1d

    .line 701
    .line 702
    goto :goto_a

    .line 703
    :cond_1d
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 704
    .line 705
    .line 706
    move-result v14

    .line 707
    move/from16 v24, v5

    .line 708
    .line 709
    const/16 v5, 0x30

    .line 710
    .line 711
    if-gt v5, v14, :cond_1e

    .line 712
    .line 713
    if-ge v14, v11, :cond_1e

    .line 714
    .line 715
    add-int/lit8 v13, v24, 0x1

    .line 716
    .line 717
    move v5, v13

    .line 718
    goto :goto_9

    .line 719
    :cond_1e
    const-string v1, "Expected an ASCII digit at index "

    .line 720
    .line 721
    invoke-static {v1, v13, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 726
    .line 727
    .line 728
    move-result v2

    .line 729
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    const/16 v2, 0x27

    .line 733
    .line 734
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    goto/16 :goto_16

    .line 746
    .line 747
    :cond_1f
    :goto_a
    add-int/lit8 v5, v8, 0x1

    .line 748
    .line 749
    invoke-static {v5, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 750
    .line 751
    .line 752
    move-result v5

    .line 753
    const/4 v6, 0x3

    .line 754
    if-le v12, v6, :cond_20

    .line 755
    .line 756
    add-int/lit8 v6, v8, 0x4

    .line 757
    .line 758
    invoke-static {v6, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 759
    .line 760
    .line 761
    move-result v6

    .line 762
    :goto_b
    const/4 v13, 0x6

    .line 763
    goto :goto_c

    .line 764
    :cond_20
    const/4 v6, 0x0

    .line 765
    goto :goto_b

    .line 766
    :goto_c
    if-le v12, v13, :cond_21

    .line 767
    .line 768
    add-int/lit8 v11, v8, 0x7

    .line 769
    .line 770
    invoke-static {v11, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 771
    .line 772
    .line 773
    move-result v11

    .line 774
    :goto_d
    const/16 v12, 0x3b

    .line 775
    .line 776
    goto :goto_e

    .line 777
    :cond_21
    const/4 v11, 0x0

    .line 778
    goto :goto_d

    .line 779
    :goto_e
    if-le v6, v12, :cond_22

    .line 780
    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    .line 782
    .line 783
    const-string v2, "Expected offset-minute-of-hour in 0..59, got "

    .line 784
    .line 785
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    goto/16 :goto_16

    .line 800
    .line 801
    :cond_22
    if-le v11, v12, :cond_23

    .line 802
    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    .line 804
    .line 805
    const-string v2, "Expected offset-second-of-minute in 0..59, got "

    .line 806
    .line 807
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    goto/16 :goto_16

    .line 822
    .line 823
    :cond_23
    const/16 v12, 0x11

    .line 824
    .line 825
    if-le v5, v12, :cond_25

    .line 826
    .line 827
    const/16 v12, 0x12

    .line 828
    .line 829
    if-ne v5, v12, :cond_24

    .line 830
    .line 831
    if-nez v6, :cond_24

    .line 832
    .line 833
    if-eqz v11, :cond_25

    .line 834
    .line 835
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 836
    .line 837
    const-string v2, "Expected an offset in -18:00..+18:00, got "

    .line 838
    .line 839
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 843
    .line 844
    .line 845
    move-result v2

    .line 846
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 847
    .line 848
    .line 849
    move-result-object v2

    .line 850
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v2

    .line 854
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 862
    .line 863
    .line 864
    move-result-object v1

    .line 865
    goto/16 :goto_16

    .line 866
    .line 867
    :cond_25
    mul-int/lit16 v5, v5, 0xe10

    .line 868
    .line 869
    mul-int/lit8 v6, v6, 0x3c

    .line 870
    .line 871
    add-int/2addr v6, v5

    .line 872
    add-int/2addr v6, v11

    .line 873
    const/16 v12, 0x2d

    .line 874
    .line 875
    if-ne v3, v12, :cond_26

    .line 876
    .line 877
    const/4 v3, -0x1

    .line 878
    goto :goto_f

    .line 879
    :cond_26
    move/from16 v3, v19

    .line 880
    .line 881
    :goto_f
    mul-int/2addr v6, v3

    .line 882
    goto/16 :goto_6

    .line 883
    .line 884
    :goto_10
    if-gt v3, v1, :cond_34

    .line 885
    .line 886
    const/16 v5, 0xd

    .line 887
    .line 888
    if-ge v1, v5, :cond_34

    .line 889
    .line 890
    if-gt v3, v2, :cond_33

    .line 891
    .line 892
    and-int/lit8 v3, v9, 0x3

    .line 893
    .line 894
    if-nez v3, :cond_28

    .line 895
    .line 896
    rem-int/lit8 v5, v9, 0x64

    .line 897
    .line 898
    if-nez v5, :cond_27

    .line 899
    .line 900
    rem-int/lit16 v5, v9, 0x190

    .line 901
    .line 902
    if-nez v5, :cond_28

    .line 903
    .line 904
    :cond_27
    const/4 v5, 0x1

    .line 905
    :goto_11
    const/4 v8, 0x2

    .line 906
    goto :goto_12

    .line 907
    :cond_28
    const/4 v5, 0x0

    .line 908
    goto :goto_11

    .line 909
    :goto_12
    if-eq v1, v8, :cond_2a

    .line 910
    .line 911
    const/4 v8, 0x4

    .line 912
    if-eq v1, v8, :cond_29

    .line 913
    .line 914
    const/4 v13, 0x6

    .line 915
    if-eq v1, v13, :cond_29

    .line 916
    .line 917
    const/16 v5, 0x9

    .line 918
    .line 919
    if-eq v1, v5, :cond_29

    .line 920
    .line 921
    const/16 v5, 0xb

    .line 922
    .line 923
    if-eq v1, v5, :cond_29

    .line 924
    .line 925
    const/16 v5, 0x1f

    .line 926
    .line 927
    goto :goto_13

    .line 928
    :cond_29
    const/16 v5, 0x1e

    .line 929
    .line 930
    goto :goto_13

    .line 931
    :cond_2a
    if-eqz v5, :cond_2b

    .line 932
    .line 933
    const/16 v5, 0x1d

    .line 934
    .line 935
    goto :goto_13

    .line 936
    :cond_2b
    const/16 v5, 0x1c

    .line 937
    .line 938
    :goto_13
    if-gt v2, v5, :cond_33

    .line 939
    .line 940
    const/16 v5, 0x17

    .line 941
    .line 942
    if-le v10, v5, :cond_2c

    .line 943
    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    .line 945
    .line 946
    const-string v2, "Expected hour in 0..23, got "

    .line 947
    .line 948
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 959
    .line 960
    .line 961
    move-result-object v1

    .line 962
    goto/16 :goto_16

    .line 963
    .line 964
    :cond_2c
    const/16 v12, 0x3b

    .line 965
    .line 966
    if-le v15, v12, :cond_2d

    .line 967
    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    .line 969
    .line 970
    const-string v2, "Expected minute-of-hour in 0..59, got "

    .line 971
    .line 972
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v1

    .line 982
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 983
    .line 984
    .line 985
    move-result-object v1

    .line 986
    goto/16 :goto_16

    .line 987
    .line 988
    :cond_2d
    if-le v7, v12, :cond_2e

    .line 989
    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    .line 991
    .line 992
    const-string v2, "Expected second-of-minute in 0..59, got "

    .line 993
    .line 994
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v1

    .line 1008
    goto/16 :goto_16

    .line 1009
    .line 1010
    :cond_2e
    int-to-long v11, v9

    .line 1011
    const-wide/16 v13, 0x16d

    .line 1012
    .line 1013
    mul-long/2addr v13, v11

    .line 1014
    const-wide/16 v16, 0x0

    .line 1015
    .line 1016
    cmp-long v0, v11, v16

    .line 1017
    .line 1018
    if-ltz v0, :cond_2f

    .line 1019
    .line 1020
    const-wide/16 v16, 0x3

    .line 1021
    .line 1022
    add-long v16, v11, v16

    .line 1023
    .line 1024
    const-wide/16 v20, 0x4

    .line 1025
    .line 1026
    div-long v16, v16, v20

    .line 1027
    .line 1028
    const-wide/16 v20, 0x63

    .line 1029
    .line 1030
    add-long v20, v11, v20

    .line 1031
    .line 1032
    const-wide/16 v22, 0x64

    .line 1033
    .line 1034
    div-long v20, v20, v22

    .line 1035
    .line 1036
    sub-long v16, v16, v20

    .line 1037
    .line 1038
    const-wide/16 v20, 0x18f

    .line 1039
    .line 1040
    add-long v11, v11, v20

    .line 1041
    .line 1042
    const-wide/16 v20, 0x190

    .line 1043
    .line 1044
    div-long v11, v11, v20

    .line 1045
    .line 1046
    add-long v11, v11, v16

    .line 1047
    .line 1048
    add-long/2addr v11, v13

    .line 1049
    goto :goto_14

    .line 1050
    :cond_2f
    const-wide/16 v16, -0x4

    .line 1051
    .line 1052
    div-long v16, v11, v16

    .line 1053
    .line 1054
    const-wide/16 v20, -0x64

    .line 1055
    .line 1056
    div-long v20, v11, v20

    .line 1057
    .line 1058
    sub-long v16, v16, v20

    .line 1059
    .line 1060
    const-wide/16 v20, -0x190

    .line 1061
    .line 1062
    div-long v11, v11, v20

    .line 1063
    .line 1064
    add-long v11, v11, v16

    .line 1065
    .line 1066
    sub-long v11, v13, v11

    .line 1067
    .line 1068
    :goto_14
    mul-int/lit16 v0, v1, 0x16f

    .line 1069
    .line 1070
    add-int/lit16 v0, v0, -0x16a

    .line 1071
    .line 1072
    div-int/lit8 v0, v0, 0xc

    .line 1073
    .line 1074
    int-to-long v13, v0

    .line 1075
    add-long/2addr v11, v13

    .line 1076
    const/16 v19, 0x1

    .line 1077
    .line 1078
    add-int/lit8 v2, v2, -0x1

    .line 1079
    .line 1080
    int-to-long v13, v2

    .line 1081
    add-long/2addr v11, v13

    .line 1082
    const/4 v8, 0x2

    .line 1083
    if-le v1, v8, :cond_32

    .line 1084
    .line 1085
    const-wide/16 v0, -0x1

    .line 1086
    .line 1087
    add-long/2addr v0, v11

    .line 1088
    if-nez v3, :cond_31

    .line 1089
    .line 1090
    rem-int/lit8 v2, v9, 0x64

    .line 1091
    .line 1092
    if-nez v2, :cond_30

    .line 1093
    .line 1094
    rem-int/lit16 v9, v9, 0x190

    .line 1095
    .line 1096
    if-nez v9, :cond_31

    .line 1097
    .line 1098
    :cond_30
    move-wide v11, v0

    .line 1099
    goto :goto_15

    .line 1100
    :cond_31
    const-wide/16 v0, -0x2

    .line 1101
    .line 1102
    add-long/2addr v11, v0

    .line 1103
    :cond_32
    :goto_15
    const-wide/32 v0, 0xafaa8

    .line 1104
    .line 1105
    .line 1106
    sub-long/2addr v11, v0

    .line 1107
    mul-int/lit16 v10, v10, 0xe10

    .line 1108
    .line 1109
    mul-int/lit8 v15, v15, 0x3c

    .line 1110
    .line 1111
    add-int/2addr v15, v10

    .line 1112
    add-int/2addr v15, v7

    .line 1113
    const-wide/32 v0, 0x15180

    .line 1114
    .line 1115
    .line 1116
    mul-long/2addr v11, v0

    .line 1117
    int-to-long v0, v15

    .line 1118
    add-long/2addr v11, v0

    .line 1119
    int-to-long v0, v6

    .line 1120
    sub-long/2addr v11, v0

    .line 1121
    new-instance v1, Lkotlin/time/InstantParseResult$Success;

    .line 1122
    .line 1123
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1124
    .line 1125
    .line 1126
    iput-wide v11, v1, Lkotlin/time/InstantParseResult$Success;->epochSeconds:J

    .line 1127
    .line 1128
    iput v4, v1, Lkotlin/time/InstantParseResult$Success;->nanosecondsOfSecond:I

    .line 1129
    .line 1130
    goto :goto_16

    .line 1131
    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    const-string v4, "Expected a valid day-of-month for month "

    .line 1134
    .line 1135
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1139
    .line 1140
    .line 1141
    const-string v1, " of year "

    .line 1142
    .line 1143
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    .line 1149
    const-string v1, ", got "

    .line 1150
    .line 1151
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    goto :goto_16

    .line 1166
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1167
    .line 1168
    const-string v3, "Expected a month number in 1..12, got "

    .line 1169
    .line 1170
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v1

    .line 1180
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v1

    .line 1184
    :goto_16
    invoke-interface {v1}, Lkotlin/time/InstantParseResult;->toInstant()Lkotlin/time/Instant;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v0

    .line 1188
    return-object v0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/serialization/internal/InstantSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lkotlin/time/Instant;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lkotlin/time/Instant;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->encodeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
