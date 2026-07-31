.class public final Lkotlinx/serialization/internal/InstantSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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
    .locals 26

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
    const/4 v2, 0x3

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lorg/jsoup/parser/ParseError;

    .line 18
    .line 19
    const-string v3, "An empty string is not a valid Instant"

    .line 20
    .line 21
    invoke-direct {v1, v2, v3, v0}, Lorg/jsoup/parser/ParseError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_18

    .line 25
    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/16 v4, 0x20

    .line 32
    .line 33
    const/16 v5, 0x2b

    .line 34
    .line 35
    const/16 v6, 0x2d

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    if-eq v3, v5, :cond_1

    .line 39
    .line 40
    if-eq v3, v6, :cond_1

    .line 41
    .line 42
    move v8, v1

    .line 43
    move v3, v4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v8, v7

    .line 46
    :goto_0
    move v10, v1

    .line 47
    move v9, v8

    .line 48
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    const/16 v12, 0x3a

    .line 53
    .line 54
    const/16 v13, 0x30

    .line 55
    .line 56
    if-ge v9, v11, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-gt v13, v11, :cond_2

    .line 63
    .line 64
    if-ge v11, v12, :cond_2

    .line 65
    .line 66
    mul-int/lit8 v10, v10, 0xa

    .line 67
    .line 68
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    sub-int/2addr v11, v13

    .line 73
    add-int/2addr v10, v11

    .line 74
    add-int/lit8 v9, v9, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    sub-int v11, v9, v8

    .line 78
    .line 79
    const-string v14, " digits"

    .line 80
    .line 81
    const/16 v15, 0xa

    .line 82
    .line 83
    if-le v11, v15, :cond_3

    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v2, "Expected at most 10 digits for the year number, got "

    .line 88
    .line 89
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    goto/16 :goto_18

    .line 107
    .line 108
    :cond_3
    if-ne v11, v15, :cond_4

    .line 109
    .line 110
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    const/16 v2, 0x32

    .line 115
    .line 116
    if-lt v8, v2, :cond_4

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v2, "Expected at most 9 digits for the year number or year 1000000000, got "

    .line 121
    .line 122
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    goto/16 :goto_18

    .line 140
    .line 141
    :cond_4
    const/4 v2, 0x4

    .line 142
    if-ge v11, v2, :cond_5

    .line 143
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v2, "The year number must be padded to 4 digits, got "

    .line 147
    .line 148
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    goto/16 :goto_18

    .line 166
    .line 167
    :cond_5
    if-ne v3, v5, :cond_6

    .line 168
    .line 169
    if-ne v11, v2, :cond_6

    .line 170
    .line 171
    const-string v1, "The \'+\' sign at the start is only valid for year numbers longer than 4 digits"

    .line 172
    .line 173
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    goto/16 :goto_18

    .line 178
    .line 179
    :cond_6
    if-ne v3, v4, :cond_7

    .line 180
    .line 181
    if-eq v11, v2, :cond_7

    .line 182
    .line 183
    const-string v1, "A \'+\' or \'-\' sign is required for year numbers longer than 4 digits"

    .line 184
    .line 185
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    goto/16 :goto_18

    .line 190
    .line 191
    :cond_7
    if-ne v3, v6, :cond_8

    .line 192
    .line 193
    neg-int v10, v10

    .line 194
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    add-int/lit8 v4, v9, 0x10

    .line 199
    .line 200
    if-ge v3, v4, :cond_9

    .line 201
    .line 202
    const-string v1, "The input string is too short"

    .line 203
    .line 204
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    goto/16 :goto_18

    .line 209
    .line 210
    :cond_9
    new-instance v3, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 211
    .line 212
    invoke-direct {v3, v1}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 213
    .line 214
    .line 215
    const-string v8, "\'-\'"

    .line 216
    .line 217
    invoke-static {v0, v8, v9, v3}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    if-eqz v3, :cond_a

    .line 222
    .line 223
    :goto_2
    move-object v1, v3

    .line 224
    goto/16 :goto_18

    .line 225
    .line 226
    :cond_a
    add-int/lit8 v3, v9, 0x3

    .line 227
    .line 228
    new-instance v11, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 229
    .line 230
    const/16 v1, 0x11

    .line 231
    .line 232
    invoke-direct {v11, v1}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 233
    .line 234
    .line 235
    invoke-static {v0, v8, v3, v11}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    if-eqz v3, :cond_b

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_b
    add-int/lit8 v3, v9, 0x6

    .line 243
    .line 244
    new-instance v8, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 245
    .line 246
    const/16 v11, 0x12

    .line 247
    .line 248
    invoke-direct {v8, v11}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 249
    .line 250
    .line 251
    const-string v2, "\'T\' or \'t\'"

    .line 252
    .line 253
    invoke-static {v0, v2, v3, v8}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    if-eqz v2, :cond_c

    .line 258
    .line 259
    :goto_3
    move-object v1, v2

    .line 260
    goto/16 :goto_18

    .line 261
    .line 262
    :cond_c
    add-int/lit8 v2, v9, 0x9

    .line 263
    .line 264
    new-instance v3, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 265
    .line 266
    const/16 v8, 0x13

    .line 267
    .line 268
    invoke-direct {v3, v8}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 269
    .line 270
    .line 271
    const-string v8, "\':\'"

    .line 272
    .line 273
    invoke-static {v0, v8, v2, v3}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    if-eqz v2, :cond_d

    .line 278
    .line 279
    :goto_4
    goto :goto_3

    .line 280
    :cond_d
    add-int/lit8 v2, v9, 0xc

    .line 281
    .line 282
    new-instance v3, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 283
    .line 284
    const/16 v11, 0x14

    .line 285
    .line 286
    invoke-direct {v3, v11}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 287
    .line 288
    .line 289
    invoke-static {v0, v8, v2, v3}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    if-eqz v2, :cond_e

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_e
    const/4 v2, 0x0

    .line 297
    :goto_5
    if-ge v2, v15, :cond_10

    .line 298
    .line 299
    sget-object v3, Lkotlin/time/InstantKt;->asciiDigitPositionsInIsoStringAfterYear:[I

    .line 300
    .line 301
    aget v3, v3, v2

    .line 302
    .line 303
    add-int/2addr v3, v9

    .line 304
    new-instance v8, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 305
    .line 306
    const/16 v11, 0x15

    .line 307
    .line 308
    invoke-direct {v8, v11}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 309
    .line 310
    .line 311
    const-string v11, "an ASCII digit"

    .line 312
    .line 313
    invoke-static {v0, v11, v3, v8}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lorg/jsoup/parser/ParseError;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    if-eqz v3, :cond_f

    .line 318
    .line 319
    goto :goto_2

    .line 320
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_10
    add-int/lit8 v2, v9, 0x1

    .line 324
    .line 325
    invoke-static {v0, v2}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/String;I)I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    add-int/lit8 v3, v9, 0x4

    .line 330
    .line 331
    invoke-static {v0, v3}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/String;I)I

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    add-int/lit8 v8, v9, 0x7

    .line 336
    .line 337
    invoke-static {v0, v8}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/String;I)I

    .line 338
    .line 339
    .line 340
    move-result v8

    .line 341
    add-int/lit8 v11, v9, 0xa

    .line 342
    .line 343
    invoke-static {v0, v11}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/String;I)I

    .line 344
    .line 345
    .line 346
    move-result v11

    .line 347
    add-int/lit8 v1, v9, 0xd

    .line 348
    .line 349
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/String;I)I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    add-int/lit8 v9, v9, 0xf

    .line 354
    .line 355
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    const/16 v5, 0x2e

    .line 360
    .line 361
    const/16 v15, 0x9

    .line 362
    .line 363
    if-ne v6, v5, :cond_13

    .line 364
    .line 365
    move v9, v4

    .line 366
    const/4 v5, 0x0

    .line 367
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 368
    .line 369
    .line 370
    move-result v6

    .line 371
    if-ge v9, v6, :cond_11

    .line 372
    .line 373
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    if-gt v13, v6, :cond_11

    .line 378
    .line 379
    if-ge v6, v12, :cond_11

    .line 380
    .line 381
    mul-int/lit8 v5, v5, 0xa

    .line 382
    .line 383
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    sub-int/2addr v6, v13

    .line 388
    add-int/2addr v5, v6

    .line 389
    add-int/lit8 v9, v9, 0x1

    .line 390
    .line 391
    goto :goto_6

    .line 392
    :cond_11
    sub-int v4, v9, v4

    .line 393
    .line 394
    if-gt v7, v4, :cond_12

    .line 395
    .line 396
    const/16 v6, 0xa

    .line 397
    .line 398
    if-ge v4, v6, :cond_12

    .line 399
    .line 400
    sget-object v6, Lkotlin/time/InstantKt;->POWERS_OF_TEN:[I

    .line 401
    .line 402
    rsub-int/lit8 v4, v4, 0x9

    .line 403
    .line 404
    aget v4, v6, v4

    .line 405
    .line 406
    mul-int/2addr v5, v4

    .line 407
    goto :goto_7

    .line 408
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    const-string v2, "1..9 digits are supported for the fraction of the second, got "

    .line 411
    .line 412
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    goto/16 :goto_18

    .line 430
    .line 431
    :cond_13
    const/4 v5, 0x0

    .line 432
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-lt v9, v4, :cond_14

    .line 437
    .line 438
    const-string v1, "The UTC offset at the end of the string is missing"

    .line 439
    .line 440
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    goto/16 :goto_18

    .line 445
    .line 446
    :cond_14
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    const/4 v6, 0x2

    .line 451
    const/16 v14, 0x27

    .line 452
    .line 453
    move/from16 v21, v7

    .line 454
    .line 455
    const-string v7, ", got \'"

    .line 456
    .line 457
    const/16 v13, 0x2b

    .line 458
    .line 459
    if-eq v4, v13, :cond_17

    .line 460
    .line 461
    const/16 v13, 0x2d

    .line 462
    .line 463
    if-eq v4, v13, :cond_17

    .line 464
    .line 465
    const/16 v12, 0x5a

    .line 466
    .line 467
    if-eq v4, v12, :cond_15

    .line 468
    .line 469
    const/16 v12, 0x7a

    .line 470
    .line 471
    if-eq v4, v12, :cond_15

    .line 472
    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string v2, "Expected the UTC offset at position "

    .line 476
    .line 477
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    goto/16 :goto_18

    .line 501
    .line 502
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 503
    .line 504
    .line 505
    move-result v4

    .line 506
    add-int/lit8 v9, v9, 0x1

    .line 507
    .line 508
    if-ne v4, v9, :cond_16

    .line 509
    .line 510
    const/4 v7, 0x0

    .line 511
    :goto_8
    move/from16 v4, v21

    .line 512
    .line 513
    goto/16 :goto_12

    .line 514
    .line 515
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    const-string v2, "Extra text after the instant at position "

    .line 518
    .line 519
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    goto/16 :goto_18

    .line 534
    .line 535
    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 536
    .line 537
    .line 538
    move-result v13

    .line 539
    sub-int/2addr v13, v9

    .line 540
    if-le v13, v15, :cond_18

    .line 541
    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    .line 543
    .line 544
    const-string v2, "The UTC offset string \""

    .line 545
    .line 546
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    const/16 v3, 0x10

    .line 562
    .line 563
    invoke-static {v2, v3}, Lkotlin/time/InstantKt;->truncateForErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v2, "\" is too long"

    .line 571
    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    goto/16 :goto_18

    .line 584
    .line 585
    :cond_18
    rem-int/lit8 v20, v13, 0x3

    .line 586
    .line 587
    if-eqz v20, :cond_19

    .line 588
    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    const-string v2, "Invalid UTC offset string \""

    .line 592
    .line 593
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 597
    .line 598
    .line 599
    move-result v2

    .line 600
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    const/16 v2, 0x22

    .line 612
    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    goto/16 :goto_18

    .line 625
    .line 626
    :cond_19
    const/4 v15, 0x0

    .line 627
    :goto_9
    if-ge v15, v6, :cond_1c

    .line 628
    .line 629
    sget-object v24, Lkotlin/time/InstantKt;->colonsInIsoOffsetString:[I

    .line 630
    .line 631
    aget v24, v24, v15

    .line 632
    .line 633
    add-int v6, v9, v24

    .line 634
    .line 635
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 636
    .line 637
    .line 638
    move-result v14

    .line 639
    if-lt v6, v14, :cond_1a

    .line 640
    .line 641
    goto :goto_a

    .line 642
    :cond_1a
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 643
    .line 644
    .line 645
    move-result v14

    .line 646
    if-eq v14, v12, :cond_1b

    .line 647
    .line 648
    const-string v1, "Expected \':\' at index "

    .line 649
    .line 650
    invoke-static {v6, v1, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    const/16 v2, 0x27

    .line 662
    .line 663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    goto/16 :goto_18

    .line 675
    .line 676
    :cond_1b
    add-int/lit8 v15, v15, 0x1

    .line 677
    .line 678
    const/4 v6, 0x2

    .line 679
    const/16 v14, 0x27

    .line 680
    .line 681
    goto :goto_9

    .line 682
    :cond_1c
    :goto_a
    const/4 v6, 0x0

    .line 683
    :goto_b
    const/4 v14, 0x6

    .line 684
    if-ge v6, v14, :cond_1f

    .line 685
    .line 686
    sget-object v14, Lkotlin/time/InstantKt;->asciiDigitsInIsoOffsetString:[I

    .line 687
    .line 688
    aget v14, v14, v6

    .line 689
    .line 690
    add-int/2addr v14, v9

    .line 691
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 692
    .line 693
    .line 694
    move-result v15

    .line 695
    if-lt v14, v15, :cond_1d

    .line 696
    .line 697
    goto :goto_c

    .line 698
    :cond_1d
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    .line 699
    .line 700
    .line 701
    move-result v15

    .line 702
    move/from16 v25, v6

    .line 703
    .line 704
    const/16 v6, 0x30

    .line 705
    .line 706
    if-gt v6, v15, :cond_1e

    .line 707
    .line 708
    if-ge v15, v12, :cond_1e

    .line 709
    .line 710
    add-int/lit8 v14, v25, 0x1

    .line 711
    .line 712
    move v6, v14

    .line 713
    goto :goto_b

    .line 714
    :cond_1e
    const-string v1, "Expected an ASCII digit at index "

    .line 715
    .line 716
    invoke-static {v14, v1, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    .line 721
    .line 722
    .line 723
    move-result v2

    .line 724
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    const/16 v2, 0x27

    .line 728
    .line 729
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    goto/16 :goto_18

    .line 741
    .line 742
    :cond_1f
    :goto_c
    add-int/lit8 v6, v9, 0x1

    .line 743
    .line 744
    invoke-static {v0, v6}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/String;I)I

    .line 745
    .line 746
    .line 747
    move-result v6

    .line 748
    const/4 v7, 0x3

    .line 749
    if-le v13, v7, :cond_20

    .line 750
    .line 751
    add-int/lit8 v7, v9, 0x4

    .line 752
    .line 753
    invoke-static {v0, v7}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/String;I)I

    .line 754
    .line 755
    .line 756
    move-result v7

    .line 757
    :goto_d
    const/4 v14, 0x6

    .line 758
    goto :goto_e

    .line 759
    :cond_20
    const/4 v7, 0x0

    .line 760
    goto :goto_d

    .line 761
    :goto_e
    if-le v13, v14, :cond_21

    .line 762
    .line 763
    add-int/lit8 v12, v9, 0x7

    .line 764
    .line 765
    invoke-static {v0, v12}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/String;I)I

    .line 766
    .line 767
    .line 768
    move-result v12

    .line 769
    :goto_f
    const/16 v13, 0x3b

    .line 770
    .line 771
    goto :goto_10

    .line 772
    :cond_21
    const/4 v12, 0x0

    .line 773
    goto :goto_f

    .line 774
    :goto_10
    if-le v7, v13, :cond_22

    .line 775
    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    .line 777
    .line 778
    const-string v2, "Expected offset-minute-of-hour in 0..59, got "

    .line 779
    .line 780
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    goto/16 :goto_18

    .line 795
    .line 796
    :cond_22
    if-le v12, v13, :cond_23

    .line 797
    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    .line 799
    .line 800
    const-string v2, "Expected offset-second-of-minute in 0..59, got "

    .line 801
    .line 802
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    goto/16 :goto_18

    .line 817
    .line 818
    :cond_23
    const/16 v13, 0x11

    .line 819
    .line 820
    if-le v6, v13, :cond_25

    .line 821
    .line 822
    const/16 v13, 0x12

    .line 823
    .line 824
    if-ne v6, v13, :cond_24

    .line 825
    .line 826
    if-nez v7, :cond_24

    .line 827
    .line 828
    if-eqz v12, :cond_25

    .line 829
    .line 830
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 831
    .line 832
    const-string v2, "Expected an offset in -18:00..+18:00, got "

    .line 833
    .line 834
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 838
    .line 839
    .line 840
    move-result v2

    .line 841
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v2

    .line 849
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v1

    .line 856
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    goto/16 :goto_18

    .line 861
    .line 862
    :cond_25
    mul-int/lit16 v6, v6, 0xe10

    .line 863
    .line 864
    mul-int/lit8 v7, v7, 0x3c

    .line 865
    .line 866
    add-int/2addr v7, v6

    .line 867
    add-int/2addr v7, v12

    .line 868
    const/16 v13, 0x2d

    .line 869
    .line 870
    if-ne v4, v13, :cond_26

    .line 871
    .line 872
    const/4 v4, -0x1

    .line 873
    goto :goto_11

    .line 874
    :cond_26
    move/from16 v4, v21

    .line 875
    .line 876
    :goto_11
    mul-int/2addr v7, v4

    .line 877
    goto/16 :goto_8

    .line 878
    .line 879
    :goto_12
    if-gt v4, v2, :cond_34

    .line 880
    .line 881
    const/16 v6, 0xd

    .line 882
    .line 883
    if-ge v2, v6, :cond_34

    .line 884
    .line 885
    if-gt v4, v3, :cond_33

    .line 886
    .line 887
    and-int/lit8 v4, v10, 0x3

    .line 888
    .line 889
    if-nez v4, :cond_28

    .line 890
    .line 891
    rem-int/lit8 v6, v10, 0x64

    .line 892
    .line 893
    if-nez v6, :cond_27

    .line 894
    .line 895
    rem-int/lit16 v6, v10, 0x190

    .line 896
    .line 897
    if-nez v6, :cond_28

    .line 898
    .line 899
    :cond_27
    const/4 v6, 0x1

    .line 900
    :goto_13
    const/4 v9, 0x2

    .line 901
    goto :goto_14

    .line 902
    :cond_28
    const/4 v6, 0x0

    .line 903
    goto :goto_13

    .line 904
    :goto_14
    if-eq v2, v9, :cond_2a

    .line 905
    .line 906
    const/4 v9, 0x4

    .line 907
    if-eq v2, v9, :cond_29

    .line 908
    .line 909
    const/4 v14, 0x6

    .line 910
    if-eq v2, v14, :cond_29

    .line 911
    .line 912
    const/16 v6, 0x9

    .line 913
    .line 914
    if-eq v2, v6, :cond_29

    .line 915
    .line 916
    const/16 v6, 0xb

    .line 917
    .line 918
    if-eq v2, v6, :cond_29

    .line 919
    .line 920
    const/16 v6, 0x1f

    .line 921
    .line 922
    goto :goto_15

    .line 923
    :cond_29
    const/16 v6, 0x1e

    .line 924
    .line 925
    goto :goto_15

    .line 926
    :cond_2a
    if-eqz v6, :cond_2b

    .line 927
    .line 928
    const/16 v6, 0x1d

    .line 929
    .line 930
    goto :goto_15

    .line 931
    :cond_2b
    const/16 v6, 0x1c

    .line 932
    .line 933
    :goto_15
    if-gt v3, v6, :cond_33

    .line 934
    .line 935
    const/16 v6, 0x17

    .line 936
    .line 937
    if-le v8, v6, :cond_2c

    .line 938
    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    .line 940
    .line 941
    const-string v2, "Expected hour in 0..23, got "

    .line 942
    .line 943
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    goto/16 :goto_18

    .line 958
    .line 959
    :cond_2c
    const/16 v13, 0x3b

    .line 960
    .line 961
    if-le v11, v13, :cond_2d

    .line 962
    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    .line 964
    .line 965
    const-string v2, "Expected minute-of-hour in 0..59, got "

    .line 966
    .line 967
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v1

    .line 977
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 978
    .line 979
    .line 980
    move-result-object v1

    .line 981
    goto/16 :goto_18

    .line 982
    .line 983
    :cond_2d
    if-le v1, v13, :cond_2e

    .line 984
    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    .line 986
    .line 987
    const-string v3, "Expected second-of-minute in 0..59, got "

    .line 988
    .line 989
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v1

    .line 1003
    goto/16 :goto_18

    .line 1004
    .line 1005
    :cond_2e
    int-to-long v12, v10

    .line 1006
    const-wide/16 v14, 0x16d

    .line 1007
    .line 1008
    mul-long/2addr v14, v12

    .line 1009
    const-wide/16 v16, 0x0

    .line 1010
    .line 1011
    cmp-long v0, v12, v16

    .line 1012
    .line 1013
    if-ltz v0, :cond_2f

    .line 1014
    .line 1015
    const-wide/16 v16, 0x3

    .line 1016
    .line 1017
    add-long v16, v12, v16

    .line 1018
    .line 1019
    const-wide/16 v18, 0x4

    .line 1020
    .line 1021
    div-long v16, v16, v18

    .line 1022
    .line 1023
    const-wide/16 v18, 0x63

    .line 1024
    .line 1025
    add-long v18, v12, v18

    .line 1026
    .line 1027
    const-wide/16 v22, 0x64

    .line 1028
    .line 1029
    div-long v18, v18, v22

    .line 1030
    .line 1031
    sub-long v16, v16, v18

    .line 1032
    .line 1033
    const-wide/16 v18, 0x18f

    .line 1034
    .line 1035
    add-long v12, v12, v18

    .line 1036
    .line 1037
    const-wide/16 v18, 0x190

    .line 1038
    .line 1039
    div-long v12, v12, v18

    .line 1040
    .line 1041
    add-long v12, v12, v16

    .line 1042
    .line 1043
    add-long/2addr v12, v14

    .line 1044
    goto :goto_16

    .line 1045
    :cond_2f
    const-wide/16 v16, -0x4

    .line 1046
    .line 1047
    div-long v16, v12, v16

    .line 1048
    .line 1049
    const-wide/16 v18, -0x64

    .line 1050
    .line 1051
    div-long v18, v12, v18

    .line 1052
    .line 1053
    sub-long v16, v16, v18

    .line 1054
    .line 1055
    const-wide/16 v18, -0x190

    .line 1056
    .line 1057
    div-long v12, v12, v18

    .line 1058
    .line 1059
    add-long v12, v12, v16

    .line 1060
    .line 1061
    sub-long v12, v14, v12

    .line 1062
    .line 1063
    :goto_16
    mul-int/lit16 v0, v2, 0x16f

    .line 1064
    .line 1065
    add-int/lit16 v0, v0, -0x16a

    .line 1066
    .line 1067
    div-int/lit8 v0, v0, 0xc

    .line 1068
    .line 1069
    int-to-long v14, v0

    .line 1070
    add-long/2addr v12, v14

    .line 1071
    const/16 v21, 0x1

    .line 1072
    .line 1073
    add-int/lit8 v3, v3, -0x1

    .line 1074
    .line 1075
    int-to-long v14, v3

    .line 1076
    add-long/2addr v12, v14

    .line 1077
    const/4 v9, 0x2

    .line 1078
    if-le v2, v9, :cond_32

    .line 1079
    .line 1080
    const-wide/16 v2, -0x1

    .line 1081
    .line 1082
    add-long/2addr v2, v12

    .line 1083
    if-nez v4, :cond_31

    .line 1084
    .line 1085
    rem-int/lit8 v0, v10, 0x64

    .line 1086
    .line 1087
    if-nez v0, :cond_30

    .line 1088
    .line 1089
    rem-int/lit16 v10, v10, 0x190

    .line 1090
    .line 1091
    if-nez v10, :cond_31

    .line 1092
    .line 1093
    :cond_30
    move-wide v12, v2

    .line 1094
    goto :goto_17

    .line 1095
    :cond_31
    const-wide/16 v2, -0x2

    .line 1096
    .line 1097
    add-long/2addr v12, v2

    .line 1098
    :cond_32
    :goto_17
    const-wide/32 v2, 0xafaa8

    .line 1099
    .line 1100
    .line 1101
    sub-long/2addr v12, v2

    .line 1102
    mul-int/lit16 v8, v8, 0xe10

    .line 1103
    .line 1104
    mul-int/lit8 v11, v11, 0x3c

    .line 1105
    .line 1106
    add-int/2addr v11, v8

    .line 1107
    add-int/2addr v11, v1

    .line 1108
    const-wide/32 v0, 0x15180

    .line 1109
    .line 1110
    .line 1111
    mul-long/2addr v12, v0

    .line 1112
    int-to-long v0, v11

    .line 1113
    add-long/2addr v12, v0

    .line 1114
    int-to-long v0, v7

    .line 1115
    sub-long/2addr v12, v0

    .line 1116
    new-instance v1, Lkotlin/time/InstantParseResult$Success;

    .line 1117
    .line 1118
    invoke-direct {v1, v5, v12, v13}, Lkotlin/time/InstantParseResult$Success;-><init>(IJ)V

    .line 1119
    .line 1120
    .line 1121
    goto :goto_18

    .line 1122
    :cond_33
    const-string v1, " of year "

    .line 1123
    .line 1124
    const-string v4, ", got "

    .line 1125
    .line 1126
    const-string v5, "Expected a valid day-of-month for month "

    .line 1127
    .line 1128
    invoke-static {v5, v2, v1, v10, v4}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v1

    .line 1132
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v1

    .line 1143
    goto :goto_18

    .line 1144
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    const-string v3, "Expected a month number in 1..12, got "

    .line 1147
    .line 1148
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v1

    .line 1158
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/ParseError;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v1

    .line 1162
    :goto_18
    invoke-interface {v1}, Lkotlin/time/InstantParseResult;->toInstant()Lkotlin/time/Instant;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v0

    .line 1166
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

.method public final serialize(Lkotlin/text/CharsKt__CharKt;Ljava/lang/Object;)V
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
    invoke-virtual {p1, p0}, Lkotlin/text/CharsKt__CharKt;->encodeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
