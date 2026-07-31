.class public final Lkotlinx/serialization/internal/InstantSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

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
    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-ltz v7, :cond_4

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v2, "Expected at most 9 digits for the year number or year 1000000000, got "

    .line 124
    .line 125
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    goto/16 :goto_16

    .line 143
    .line 144
    :cond_4
    const/4 v7, 0x4

    .line 145
    if-ge v10, v7, :cond_5

    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v2, "The year number must be padded to 4 digits, got "

    .line 150
    .line 151
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    goto/16 :goto_16

    .line 169
    .line 170
    :cond_5
    if-ne v2, v4, :cond_6

    .line 171
    .line 172
    if-ne v10, v7, :cond_6

    .line 173
    .line 174
    const-string v1, "The \'+\' sign at the start is only valid for year numbers longer than 4 digits"

    .line 175
    .line 176
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    goto/16 :goto_16

    .line 181
    .line 182
    :cond_6
    if-ne v2, v3, :cond_7

    .line 183
    .line 184
    if-eq v10, v7, :cond_7

    .line 185
    .line 186
    const-string v1, "A \'+\' or \'-\' sign is required for year numbers longer than 4 digits"

    .line 187
    .line 188
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    goto/16 :goto_16

    .line 193
    .line 194
    :cond_7
    if-ne v2, v5, :cond_8

    .line 195
    .line 196
    neg-int v9, v9

    .line 197
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    add-int/lit8 v3, v8, 0x10

    .line 202
    .line 203
    if-ge v2, v3, :cond_9

    .line 204
    .line 205
    const-string v1, "The input string is too short"

    .line 206
    .line 207
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    goto/16 :goto_16

    .line 212
    .line 213
    :cond_9
    new-instance v2, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 214
    .line 215
    const/16 v10, 0x16

    .line 216
    .line 217
    invoke-direct {v2, v10}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 218
    .line 219
    .line 220
    const-string v10, "\'-\'"

    .line 221
    .line 222
    invoke-static {v0, v10, v8, v2}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    if-eqz v2, :cond_a

    .line 227
    .line 228
    :goto_2
    move-object v1, v2

    .line 229
    goto/16 :goto_16

    .line 230
    .line 231
    :cond_a
    add-int/lit8 v2, v8, 0x3

    .line 232
    .line 233
    new-instance v15, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 234
    .line 235
    const/16 v1, 0x17

    .line 236
    .line 237
    invoke-direct {v15, v1}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-static {v0, v10, v2, v15}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    if-eqz v2, :cond_b

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_b
    add-int/lit8 v2, v8, 0x6

    .line 248
    .line 249
    new-instance v10, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 250
    .line 251
    const/16 v15, 0x18

    .line 252
    .line 253
    invoke-direct {v10, v15}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 254
    .line 255
    .line 256
    const-string v15, "\'T\' or \'t\'"

    .line 257
    .line 258
    invoke-static {v0, v15, v2, v10}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    if-eqz v2, :cond_c

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_c
    add-int/lit8 v2, v8, 0x9

    .line 266
    .line 267
    new-instance v10, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 268
    .line 269
    const/16 v15, 0x19

    .line 270
    .line 271
    invoke-direct {v10, v15}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 272
    .line 273
    .line 274
    const-string v15, "\':\'"

    .line 275
    .line 276
    invoke-static {v0, v15, v2, v10}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    if-eqz v2, :cond_d

    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_d
    add-int/lit8 v2, v8, 0xc

    .line 284
    .line 285
    new-instance v10, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 286
    .line 287
    const/16 v1, 0x1a

    .line 288
    .line 289
    invoke-direct {v10, v1}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 290
    .line 291
    .line 292
    invoke-static {v0, v15, v2, v10}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    if-eqz v1, :cond_e

    .line 297
    .line 298
    goto/16 :goto_16

    .line 299
    .line 300
    :cond_e
    const/4 v1, 0x0

    .line 301
    :goto_3
    if-ge v1, v14, :cond_10

    .line 302
    .line 303
    sget-object v2, Lkotlin/time/InstantKt;->asciiDigitPositionsInIsoStringAfterYear:[I

    .line 304
    .line 305
    aget v2, v2, v1

    .line 306
    .line 307
    add-int/2addr v2, v8

    .line 308
    new-instance v10, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 309
    .line 310
    const/16 v15, 0x1b

    .line 311
    .line 312
    invoke-direct {v10, v15}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 313
    .line 314
    .line 315
    const-string v15, "an ASCII digit"

    .line 316
    .line 317
    invoke-static {v0, v15, v2, v10}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    if-eqz v2, :cond_f

    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_10
    add-int/lit8 v1, v8, 0x1

    .line 328
    .line 329
    invoke-static {v1, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    add-int/lit8 v2, v8, 0x4

    .line 334
    .line 335
    invoke-static {v2, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    add-int/lit8 v10, v8, 0x7

    .line 340
    .line 341
    invoke-static {v10, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v10

    .line 345
    add-int/lit8 v15, v8, 0xa

    .line 346
    .line 347
    invoke-static {v15, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 348
    .line 349
    .line 350
    move-result v15

    .line 351
    add-int/lit8 v7, v8, 0xd

    .line 352
    .line 353
    invoke-static {v7, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    add-int/lit8 v8, v8, 0xf

    .line 358
    .line 359
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    const/16 v4, 0x2e

    .line 364
    .line 365
    const/16 v14, 0x9

    .line 366
    .line 367
    if-ne v5, v4, :cond_13

    .line 368
    .line 369
    move v8, v3

    .line 370
    const/4 v4, 0x0

    .line 371
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    if-ge v8, v5, :cond_11

    .line 376
    .line 377
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    if-gt v12, v5, :cond_11

    .line 382
    .line 383
    if-ge v5, v11, :cond_11

    .line 384
    .line 385
    mul-int/lit8 v4, v4, 0xa

    .line 386
    .line 387
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 388
    .line 389
    .line 390
    move-result v5

    .line 391
    sub-int/2addr v5, v12

    .line 392
    add-int/2addr v4, v5

    .line 393
    add-int/lit8 v8, v8, 0x1

    .line 394
    .line 395
    goto :goto_4

    .line 396
    :cond_11
    sub-int v3, v8, v3

    .line 397
    .line 398
    if-gt v6, v3, :cond_12

    .line 399
    .line 400
    const/16 v5, 0xa

    .line 401
    .line 402
    if-ge v3, v5, :cond_12

    .line 403
    .line 404
    sget-object v5, Lkotlin/time/InstantKt;->POWERS_OF_TEN:[I

    .line 405
    .line 406
    rsub-int/lit8 v3, v3, 0x9

    .line 407
    .line 408
    aget v3, v5, v3

    .line 409
    .line 410
    mul-int/2addr v4, v3

    .line 411
    goto :goto_5

    .line 412
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string v2, "1..9 digits are supported for the fraction of the second, got "

    .line 415
    .line 416
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    goto/16 :goto_16

    .line 434
    .line 435
    :cond_13
    const/4 v4, 0x0

    .line 436
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-lt v8, v3, :cond_14

    .line 441
    .line 442
    const-string v1, "The UTC offset at the end of the string is missing"

    .line 443
    .line 444
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    goto/16 :goto_16

    .line 449
    .line 450
    :cond_14
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    const/4 v5, 0x2

    .line 455
    const/16 v13, 0x27

    .line 456
    .line 457
    move/from16 v19, v6

    .line 458
    .line 459
    const-string v6, ", got \'"

    .line 460
    .line 461
    const/16 v12, 0x2b

    .line 462
    .line 463
    if-eq v3, v12, :cond_17

    .line 464
    .line 465
    const/16 v12, 0x2d

    .line 466
    .line 467
    if-eq v3, v12, :cond_17

    .line 468
    .line 469
    const/16 v11, 0x5a

    .line 470
    .line 471
    if-eq v3, v11, :cond_15

    .line 472
    .line 473
    const/16 v11, 0x7a

    .line 474
    .line 475
    if-eq v3, v11, :cond_15

    .line 476
    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    const-string v2, "Expected the UTC offset at position "

    .line 480
    .line 481
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    goto/16 :goto_16

    .line 505
    .line 506
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    add-int/lit8 v8, v8, 0x1

    .line 511
    .line 512
    if-ne v3, v8, :cond_16

    .line 513
    .line 514
    const/4 v6, 0x0

    .line 515
    :goto_6
    move/from16 v3, v19

    .line 516
    .line 517
    goto/16 :goto_10

    .line 518
    .line 519
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    const-string v2, "Extra text after the instant at position "

    .line 522
    .line 523
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    goto/16 :goto_16

    .line 538
    .line 539
    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 540
    .line 541
    .line 542
    move-result v12

    .line 543
    sub-int/2addr v12, v8

    .line 544
    if-le v12, v14, :cond_18

    .line 545
    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    const-string v2, "The UTC offset string \""

    .line 549
    .line 550
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    const/16 v3, 0x10

    .line 566
    .line 567
    invoke-static {v3, v2}, Lkotlin/time/InstantKt;->truncateForErrorMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    const-string v2, "\" is too long"

    .line 575
    .line 576
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    goto/16 :goto_16

    .line 588
    .line 589
    :cond_18
    rem-int/lit8 v18, v12, 0x3

    .line 590
    .line 591
    if-eqz v18, :cond_19

    .line 592
    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    const-string v2, "Invalid UTC offset string \""

    .line 596
    .line 597
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const/16 v2, 0x22

    .line 616
    .line 617
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    goto/16 :goto_16

    .line 629
    .line 630
    :cond_19
    const/4 v14, 0x0

    .line 631
    :goto_7
    if-ge v14, v5, :cond_1c

    .line 632
    .line 633
    sget-object v23, Lkotlin/time/InstantKt;->colonsInIsoOffsetString:[I

    .line 634
    .line 635
    aget v23, v23, v14

    .line 636
    .line 637
    add-int v5, v8, v23

    .line 638
    .line 639
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 640
    .line 641
    .line 642
    move-result v13

    .line 643
    if-lt v5, v13, :cond_1a

    .line 644
    .line 645
    goto :goto_8

    .line 646
    :cond_1a
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 647
    .line 648
    .line 649
    move-result v13

    .line 650
    if-eq v13, v11, :cond_1b

    .line 651
    .line 652
    const-string v1, "Expected \':\' at index "

    .line 653
    .line 654
    invoke-static {v5, v1, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    const/16 v2, 0x27

    .line 666
    .line 667
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    goto/16 :goto_16

    .line 679
    .line 680
    :cond_1b
    add-int/lit8 v14, v14, 0x1

    .line 681
    .line 682
    const/4 v5, 0x2

    .line 683
    const/16 v13, 0x27

    .line 684
    .line 685
    goto :goto_7

    .line 686
    :cond_1c
    :goto_8
    const/4 v5, 0x0

    .line 687
    :goto_9
    const/4 v13, 0x6

    .line 688
    if-ge v5, v13, :cond_1f

    .line 689
    .line 690
    sget-object v13, Lkotlin/time/InstantKt;->asciiDigitsInIsoOffsetString:[I

    .line 691
    .line 692
    aget v13, v13, v5

    .line 693
    .line 694
    add-int/2addr v13, v8

    .line 695
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 696
    .line 697
    .line 698
    move-result v14

    .line 699
    if-lt v13, v14, :cond_1d

    .line 700
    .line 701
    goto :goto_a

    .line 702
    :cond_1d
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 703
    .line 704
    .line 705
    move-result v14

    .line 706
    move/from16 v24, v5

    .line 707
    .line 708
    const/16 v5, 0x30

    .line 709
    .line 710
    if-gt v5, v14, :cond_1e

    .line 711
    .line 712
    if-ge v14, v11, :cond_1e

    .line 713
    .line 714
    add-int/lit8 v13, v24, 0x1

    .line 715
    .line 716
    move v5, v13

    .line 717
    goto :goto_9

    .line 718
    :cond_1e
    const-string v1, "Expected an ASCII digit at index "

    .line 719
    .line 720
    invoke-static {v13, v1, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 725
    .line 726
    .line 727
    move-result v2

    .line 728
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    const/16 v2, 0x27

    .line 732
    .line 733
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    goto/16 :goto_16

    .line 745
    .line 746
    :cond_1f
    :goto_a
    add-int/lit8 v5, v8, 0x1

    .line 747
    .line 748
    invoke-static {v5, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 749
    .line 750
    .line 751
    move-result v5

    .line 752
    const/4 v6, 0x3

    .line 753
    if-le v12, v6, :cond_20

    .line 754
    .line 755
    add-int/lit8 v6, v8, 0x4

    .line 756
    .line 757
    invoke-static {v6, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 758
    .line 759
    .line 760
    move-result v6

    .line 761
    :goto_b
    const/4 v13, 0x6

    .line 762
    goto :goto_c

    .line 763
    :cond_20
    const/4 v6, 0x0

    .line 764
    goto :goto_b

    .line 765
    :goto_c
    if-le v12, v13, :cond_21

    .line 766
    .line 767
    add-int/lit8 v11, v8, 0x7

    .line 768
    .line 769
    invoke-static {v11, v0}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(ILjava/lang/String;)I

    .line 770
    .line 771
    .line 772
    move-result v11

    .line 773
    :goto_d
    const/16 v12, 0x3b

    .line 774
    .line 775
    goto :goto_e

    .line 776
    :cond_21
    const/4 v11, 0x0

    .line 777
    goto :goto_d

    .line 778
    :goto_e
    if-le v6, v12, :cond_22

    .line 779
    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    .line 781
    .line 782
    const-string v2, "Expected offset-minute-of-hour in 0..59, got "

    .line 783
    .line 784
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 795
    .line 796
    .line 797
    move-result-object v1

    .line 798
    goto/16 :goto_16

    .line 799
    .line 800
    :cond_22
    if-le v11, v12, :cond_23

    .line 801
    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    .line 803
    .line 804
    const-string v2, "Expected offset-second-of-minute in 0..59, got "

    .line 805
    .line 806
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    goto/16 :goto_16

    .line 821
    .line 822
    :cond_23
    const/16 v12, 0x11

    .line 823
    .line 824
    if-le v5, v12, :cond_25

    .line 825
    .line 826
    const/16 v12, 0x12

    .line 827
    .line 828
    if-ne v5, v12, :cond_24

    .line 829
    .line 830
    if-nez v6, :cond_24

    .line 831
    .line 832
    if-eqz v11, :cond_25

    .line 833
    .line 834
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 835
    .line 836
    const-string v2, "Expected an offset in -18:00..+18:00, got "

    .line 837
    .line 838
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 842
    .line 843
    .line 844
    move-result v2

    .line 845
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 846
    .line 847
    .line 848
    move-result-object v2

    .line 849
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 861
    .line 862
    .line 863
    move-result-object v1

    .line 864
    goto/16 :goto_16

    .line 865
    .line 866
    :cond_25
    mul-int/lit16 v5, v5, 0xe10

    .line 867
    .line 868
    mul-int/lit8 v6, v6, 0x3c

    .line 869
    .line 870
    add-int/2addr v6, v5

    .line 871
    add-int/2addr v6, v11

    .line 872
    const/16 v12, 0x2d

    .line 873
    .line 874
    if-ne v3, v12, :cond_26

    .line 875
    .line 876
    const/4 v3, -0x1

    .line 877
    goto :goto_f

    .line 878
    :cond_26
    move/from16 v3, v19

    .line 879
    .line 880
    :goto_f
    mul-int/2addr v6, v3

    .line 881
    goto/16 :goto_6

    .line 882
    .line 883
    :goto_10
    if-gt v3, v1, :cond_34

    .line 884
    .line 885
    const/16 v5, 0xd

    .line 886
    .line 887
    if-ge v1, v5, :cond_34

    .line 888
    .line 889
    if-gt v3, v2, :cond_33

    .line 890
    .line 891
    and-int/lit8 v3, v9, 0x3

    .line 892
    .line 893
    if-nez v3, :cond_28

    .line 894
    .line 895
    rem-int/lit8 v5, v9, 0x64

    .line 896
    .line 897
    if-nez v5, :cond_27

    .line 898
    .line 899
    rem-int/lit16 v5, v9, 0x190

    .line 900
    .line 901
    if-nez v5, :cond_28

    .line 902
    .line 903
    :cond_27
    const/4 v5, 0x1

    .line 904
    :goto_11
    const/4 v8, 0x2

    .line 905
    goto :goto_12

    .line 906
    :cond_28
    const/4 v5, 0x0

    .line 907
    goto :goto_11

    .line 908
    :goto_12
    if-eq v1, v8, :cond_2a

    .line 909
    .line 910
    const/4 v8, 0x4

    .line 911
    if-eq v1, v8, :cond_29

    .line 912
    .line 913
    const/4 v13, 0x6

    .line 914
    if-eq v1, v13, :cond_29

    .line 915
    .line 916
    const/16 v5, 0x9

    .line 917
    .line 918
    if-eq v1, v5, :cond_29

    .line 919
    .line 920
    const/16 v5, 0xb

    .line 921
    .line 922
    if-eq v1, v5, :cond_29

    .line 923
    .line 924
    const/16 v5, 0x1f

    .line 925
    .line 926
    goto :goto_13

    .line 927
    :cond_29
    const/16 v5, 0x1e

    .line 928
    .line 929
    goto :goto_13

    .line 930
    :cond_2a
    if-eqz v5, :cond_2b

    .line 931
    .line 932
    const/16 v5, 0x1d

    .line 933
    .line 934
    goto :goto_13

    .line 935
    :cond_2b
    const/16 v5, 0x1c

    .line 936
    .line 937
    :goto_13
    if-gt v2, v5, :cond_33

    .line 938
    .line 939
    const/16 v5, 0x17

    .line 940
    .line 941
    if-le v10, v5, :cond_2c

    .line 942
    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    .line 944
    .line 945
    const-string v2, "Expected hour in 0..23, got "

    .line 946
    .line 947
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    goto/16 :goto_16

    .line 962
    .line 963
    :cond_2c
    const/16 v12, 0x3b

    .line 964
    .line 965
    if-le v15, v12, :cond_2d

    .line 966
    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    .line 968
    .line 969
    const-string v2, "Expected minute-of-hour in 0..59, got "

    .line 970
    .line 971
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v1

    .line 981
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    goto/16 :goto_16

    .line 986
    .line 987
    :cond_2d
    if-le v7, v12, :cond_2e

    .line 988
    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    .line 990
    .line 991
    const-string v2, "Expected second-of-minute in 0..59, got "

    .line 992
    .line 993
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 997
    .line 998
    .line 999
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v1

    .line 1003
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v1

    .line 1007
    goto/16 :goto_16

    .line 1008
    .line 1009
    :cond_2e
    int-to-long v11, v9

    .line 1010
    const-wide/16 v13, 0x16d

    .line 1011
    .line 1012
    mul-long/2addr v13, v11

    .line 1013
    const-wide/16 v16, 0x0

    .line 1014
    .line 1015
    cmp-long v0, v11, v16

    .line 1016
    .line 1017
    if-ltz v0, :cond_2f

    .line 1018
    .line 1019
    const-wide/16 v16, 0x3

    .line 1020
    .line 1021
    add-long v16, v11, v16

    .line 1022
    .line 1023
    const-wide/16 v20, 0x4

    .line 1024
    .line 1025
    div-long v16, v16, v20

    .line 1026
    .line 1027
    const-wide/16 v20, 0x63

    .line 1028
    .line 1029
    add-long v20, v11, v20

    .line 1030
    .line 1031
    const-wide/16 v22, 0x64

    .line 1032
    .line 1033
    div-long v20, v20, v22

    .line 1034
    .line 1035
    sub-long v16, v16, v20

    .line 1036
    .line 1037
    const-wide/16 v20, 0x18f

    .line 1038
    .line 1039
    add-long v11, v11, v20

    .line 1040
    .line 1041
    const-wide/16 v20, 0x190

    .line 1042
    .line 1043
    div-long v11, v11, v20

    .line 1044
    .line 1045
    add-long v11, v11, v16

    .line 1046
    .line 1047
    add-long/2addr v11, v13

    .line 1048
    goto :goto_14

    .line 1049
    :cond_2f
    const-wide/16 v16, -0x4

    .line 1050
    .line 1051
    div-long v16, v11, v16

    .line 1052
    .line 1053
    const-wide/16 v20, -0x64

    .line 1054
    .line 1055
    div-long v20, v11, v20

    .line 1056
    .line 1057
    sub-long v16, v16, v20

    .line 1058
    .line 1059
    const-wide/16 v20, -0x190

    .line 1060
    .line 1061
    div-long v11, v11, v20

    .line 1062
    .line 1063
    add-long v11, v11, v16

    .line 1064
    .line 1065
    sub-long v11, v13, v11

    .line 1066
    .line 1067
    :goto_14
    mul-int/lit16 v0, v1, 0x16f

    .line 1068
    .line 1069
    add-int/lit16 v0, v0, -0x16a

    .line 1070
    .line 1071
    div-int/lit8 v0, v0, 0xc

    .line 1072
    .line 1073
    int-to-long v13, v0

    .line 1074
    add-long/2addr v11, v13

    .line 1075
    const/16 v19, 0x1

    .line 1076
    .line 1077
    add-int/lit8 v2, v2, -0x1

    .line 1078
    .line 1079
    int-to-long v13, v2

    .line 1080
    add-long/2addr v11, v13

    .line 1081
    const/4 v8, 0x2

    .line 1082
    if-le v1, v8, :cond_32

    .line 1083
    .line 1084
    const-wide/16 v0, -0x1

    .line 1085
    .line 1086
    add-long/2addr v0, v11

    .line 1087
    if-nez v3, :cond_31

    .line 1088
    .line 1089
    rem-int/lit8 v2, v9, 0x64

    .line 1090
    .line 1091
    if-nez v2, :cond_30

    .line 1092
    .line 1093
    rem-int/lit16 v9, v9, 0x190

    .line 1094
    .line 1095
    if-nez v9, :cond_31

    .line 1096
    .line 1097
    :cond_30
    move-wide v11, v0

    .line 1098
    goto :goto_15

    .line 1099
    :cond_31
    const-wide/16 v0, -0x2

    .line 1100
    .line 1101
    add-long/2addr v11, v0

    .line 1102
    :cond_32
    :goto_15
    const-wide/32 v0, 0xafaa8

    .line 1103
    .line 1104
    .line 1105
    sub-long/2addr v11, v0

    .line 1106
    mul-int/lit16 v10, v10, 0xe10

    .line 1107
    .line 1108
    mul-int/lit8 v15, v15, 0x3c

    .line 1109
    .line 1110
    add-int/2addr v15, v10

    .line 1111
    add-int/2addr v15, v7

    .line 1112
    const-wide/32 v0, 0x15180

    .line 1113
    .line 1114
    .line 1115
    mul-long/2addr v11, v0

    .line 1116
    int-to-long v0, v15

    .line 1117
    add-long/2addr v11, v0

    .line 1118
    int-to-long v0, v6

    .line 1119
    sub-long/2addr v11, v0

    .line 1120
    new-instance v1, Lcom/caverock/androidsvg/IntegerParser;

    .line 1121
    .line 1122
    invoke-direct {v1, v11, v12, v4}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    .line 1123
    .line 1124
    .line 1125
    goto :goto_16

    .line 1126
    :cond_33
    const-string v3, " of year "

    .line 1127
    .line 1128
    const-string v4, ", got "

    .line 1129
    .line 1130
    const-string v5, "Expected a valid day-of-month for month "

    .line 1131
    .line 1132
    invoke-static {v1, v9, v5, v3, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v1

    .line 1136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v1

    .line 1143
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v1

    .line 1147
    goto :goto_16

    .line 1148
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    const-string v3, "Expected a month number in 1..12, got "

    .line 1151
    .line 1152
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v1

    .line 1162
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v1

    .line 1166
    :goto_16
    invoke-interface {v1}, Lkotlin/time/InstantParseResult;->toInstant()Lkotlin/time/Instant;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
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

.method public final serialize(Lkotlin/uuid/UuidKt;Ljava/lang/Object;)V
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
    invoke-virtual {p1, p0}, Lkotlin/uuid/UuidKt;->encodeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
