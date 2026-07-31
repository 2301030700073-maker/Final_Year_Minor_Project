.class public final Lorg/commonmark/internal/ParagraphParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final block:Lorg/commonmark/node/Paragraph;

.field public final linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/commonmark/node/Paragraph;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/commonmark/node/Node;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->block:Lorg/commonmark/node/Paragraph;

    .line 10
    .line 11
    new-instance v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final addLine(Ljava/lang/CharSequence;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    move v3, v1

    .line 21
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ge v3, v4, :cond_1a

    .line 26
    .line 27
    iget v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:I

    .line 28
    .line 29
    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, -0x1

    .line 35
    if-eqz v4, :cond_17

    .line 36
    .line 37
    const/4 v7, 0x3

    .line 38
    const/4 v8, 0x1

    .line 39
    if-eq v4, v8, :cond_11

    .line 40
    .line 41
    const/4 v9, 0x4

    .line 42
    if-eq v4, v5, :cond_c

    .line 43
    .line 44
    const/4 v5, 0x5

    .line 45
    if-eq v4, v7, :cond_7

    .line 46
    .line 47
    if-eq v4, v9, :cond_2

    .line 48
    .line 49
    if-eq v4, v5, :cond_1a

    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_2
    iget-char v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    .line 54
    .line 55
    invoke-static {p1, v3, v4}, Lokhttp3/Cookie$Companion;->scanLinkTitleContent(Ljava/lang/CharSequence;IC)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-ne v4, v6, :cond_4

    .line 60
    .line 61
    :cond_3
    :goto_0
    move v3, v6

    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_4
    iget-object v5, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-interface {p1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-lt v4, v3, :cond_5

    .line 78
    .line 79
    iget-object v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :goto_1
    move v3, v4

    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-static {p1, v4, v3}, Lkotlin/math/MathKt;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eq v3, v4, :cond_6

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    iput-boolean v8, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    .line 105
    .line 106
    invoke-virtual {p0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->finishReference()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 110
    .line 111
    .line 112
    iput v8, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:I

    .line 113
    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    invoke-static {p1, v3, v4}, Lkotlin/math/MathKt;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-lt v3, v4, :cond_8

    .line 129
    .line 130
    iput v8, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:I

    .line 131
    .line 132
    goto/16 :goto_5

    .line 133
    .line 134
    :cond_8
    iput-char v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    .line 135
    .line 136
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    const/16 v7, 0x22

    .line 141
    .line 142
    if-eq v4, v7, :cond_a

    .line 143
    .line 144
    const/16 v7, 0x27

    .line 145
    .line 146
    if-eq v4, v7, :cond_a

    .line 147
    .line 148
    const/16 v7, 0x28

    .line 149
    .line 150
    if-eq v4, v7, :cond_9

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_9
    const/16 v4, 0x29

    .line 154
    .line 155
    iput-char v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_a
    iput-char v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    .line 159
    .line 160
    :goto_2
    iget-char v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    .line 161
    .line 162
    if-eqz v4, :cond_b

    .line 163
    .line 164
    iput v5, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:I

    .line 165
    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-object v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    .line 172
    .line 173
    add-int/lit8 v3, v3, 0x1

    .line 174
    .line 175
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-ne v3, v4, :cond_19

    .line 180
    .line 181
    iget-object v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    goto/16 :goto_5

    .line 187
    .line 188
    :cond_b
    invoke-virtual {p0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->finishReference()V

    .line 189
    .line 190
    .line 191
    iput v8, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:I

    .line 192
    .line 193
    goto/16 :goto_5

    .line 194
    .line 195
    :cond_c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    invoke-static {p1, v3, v4}, Lkotlin/math/MathKt;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-static {v3, p1}, Lokhttp3/Cookie$Companion;->scanLinkDestination(ILjava/lang/CharSequence;)I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-ne v4, v6, :cond_d

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_d
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    const/16 v7, 0x3c

    .line 216
    .line 217
    if-ne v5, v7, :cond_e

    .line 218
    .line 219
    add-int/lit8 v3, v3, 0x1

    .line 220
    .line 221
    add-int/lit8 v5, v4, -0x1

    .line 222
    .line 223
    invoke-interface {p1, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    goto :goto_3

    .line 232
    :cond_e
    invoke-interface {p1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    :goto_3
    iput-object v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->destination:Ljava/lang/String;

    .line 241
    .line 242
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    invoke-static {p1, v4, v3}, Lkotlin/math/MathKt;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-lt v3, v5, :cond_f

    .line 255
    .line 256
    iput-boolean v8, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_f
    if-ne v3, v4, :cond_10

    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_10
    :goto_4
    iput v9, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:I

    .line 267
    .line 268
    goto/16 :goto_5

    .line 269
    .line 270
    :cond_11
    invoke-static {v3, p1}, Lokhttp3/Cookie$Companion;->scanLinkLabelContent(ILjava/lang/CharSequence;)I

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-ne v4, v6, :cond_12

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_12
    iget-object v5, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-virtual {v5, p1, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    if-lt v4, v3, :cond_13

    .line 288
    .line 289
    iget-object v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    goto/16 :goto_1

    .line 295
    .line 296
    :cond_13
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    const/16 v5, 0x5d

    .line 301
    .line 302
    if-ne v3, v5, :cond_3

    .line 303
    .line 304
    add-int/lit8 v3, v4, 0x1

    .line 305
    .line 306
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    if-ge v3, v5, :cond_3

    .line 311
    .line 312
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    const/16 v5, 0x3a

    .line 317
    .line 318
    if-eq v3, v5, :cond_14

    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_14
    iget-object v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    const/16 v5, 0x3e7

    .line 329
    .line 330
    if-le v3, v5, :cond_15

    .line 331
    .line 332
    goto/16 :goto_0

    .line 333
    .line 334
    :cond_15
    iget-object v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    sget-object v5, Lorg/commonmark/internal/util/Escaping;->BACKSLASH_OR_AMP:Ljava/util/regex/Pattern;

    .line 341
    .line 342
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 347
    .line 348
    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    sget-object v5, Lorg/commonmark/internal/util/Escaping;->WHITESPACE:Ljava/util/regex/Pattern;

    .line 353
    .line 354
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    const-string v5, " "

    .line 359
    .line 360
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    if-eqz v5, :cond_16

    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :cond_16
    iput-object v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->normalizedLabel:Ljava/lang/String;

    .line 373
    .line 374
    iput v7, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:I

    .line 375
    .line 376
    add-int/lit8 v4, v4, 0x2

    .line 377
    .line 378
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    invoke-static {p1, v4, v3}, Lkotlin/math/MathKt;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    goto :goto_5

    .line 387
    :cond_17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    invoke-static {p1, v3, v4}, Lkotlin/math/MathKt;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    if-ge v3, v4, :cond_3

    .line 400
    .line 401
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    const/16 v7, 0x5b

    .line 406
    .line 407
    if-eq v4, v7, :cond_18

    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :cond_18
    iput v5, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:I

    .line 412
    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    iput-object v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    .line 419
    .line 420
    add-int/lit8 v3, v3, 0x1

    .line 421
    .line 422
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    if-lt v3, v4, :cond_19

    .line 427
    .line 428
    iget-object v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    :cond_19
    :goto_5
    if-ne v3, v6, :cond_1

    .line 434
    .line 435
    const/4 p1, 0x6

    .line 436
    iput p1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:I

    .line 437
    .line 438
    :cond_1a
    return-void
.end method

.method public final closeBlock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lorg/commonmark/internal/ParagraphParser;->block:Lorg/commonmark/node/Paragraph;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/commonmark/node/Node;->unlink()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final getBlock()Lorg/commonmark/node/Block;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/commonmark/internal/ParagraphParser;->block:Lorg/commonmark/node/Paragraph;

    .line 2
    .line 3
    return-object p0
.end method

.method public final parseInlines(Lorg/commonmark/internal/InlineParserImpl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lorg/commonmark/internal/ParagraphParser;->block:Lorg/commonmark/node/Paragraph;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p0}, Lorg/commonmark/internal/InlineParserImpl;->parse(Ljava/lang/String;Lorg/commonmark/node/Node;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final tryContinue(Lorg/commonmark/internal/DocumentParser;)Lorg/commonmark/internal/BlockContinueImpl;
    .locals 0

    .line 1
    iget-boolean p0, p1, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    iget p0, p1, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 6
    .line 7
    invoke-static {p0}, Lorg/commonmark/internal/BlockContinueImpl;->atIndex(I)Lorg/commonmark/internal/BlockContinueImpl;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method
