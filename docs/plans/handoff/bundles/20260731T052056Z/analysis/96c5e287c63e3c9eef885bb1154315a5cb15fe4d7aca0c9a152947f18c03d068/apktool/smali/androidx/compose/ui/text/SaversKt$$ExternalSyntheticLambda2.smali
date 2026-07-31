.class public final synthetic Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget p0, p0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Landroidx/compose/ui/text/intl/Locale;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string/jumbo v2, "und"

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "The language tag "

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " is not well-formed. Locale is resolved to Undetermined. Note that underscore \'_\' is not a valid subtag delimiter and must be replaced with \'-\'."

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-direct {p0, v0}, Landroidx/compose/ui/text/intl/Locale;-><init>(Ljava/util/Locale;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    check-cast p1, Ljava/util/List;

    .line 66
    .line 67
    new-instance p0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    :goto_0
    if-ge v2, v0, :cond_3

    .line 81
    .line 82
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->LocaleSaver:Landroidx/cardview/widget/CardView$1;

    .line 87
    .line 88
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_2

    .line 95
    .line 96
    :cond_1
    move-object v3, v1

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    if-eqz v3, :cond_1

    .line 99
    .line 100
    iget-object v4, v4, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 103
    .line 104
    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Landroidx/compose/ui/text/intl/Locale;

    .line 109
    .line 110
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    new-instance p1, Landroidx/compose/ui/text/intl/LocaleList;

    .line 120
    .line 121
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/intl/LocaleList;-><init>(Ljava/util/List;)V

    .line 122
    .line 123
    .line 124
    return-object p1

    .line 125
    :pswitch_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-eqz p0, :cond_4

    .line 132
    .line 133
    new-instance p0, Landroidx/compose/ui/geometry/Offset;

    .line 134
    .line 135
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    check-cast p1, Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    if-eqz p0, :cond_5

    .line 154
    .line 155
    check-cast p0, Ljava/lang/Float;

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    move-object p0, v1

    .line 159
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_6

    .line 171
    .line 172
    move-object v1, p1

    .line 173
    check-cast v1, Ljava/lang/Float;

    .line 174
    .line 175
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    int-to-long v0, p0

    .line 187
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    int-to-long p0, p0

    .line 192
    const/16 v2, 0x20

    .line 193
    .line 194
    shl-long/2addr v0, v2

    .line 195
    const-wide v2, 0xffffffffL

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    and-long/2addr p0, v2

    .line 201
    or-long/2addr p0, v0

    .line 202
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 203
    .line 204
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 205
    .line 206
    .line 207
    move-object p0, v0

    .line 208
    :goto_3
    return-object p0

    .line 209
    :pswitch_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-eqz p0, :cond_7

    .line 218
    .line 219
    new-instance p0, Landroidx/compose/ui/unit/TextUnitType;

    .line 220
    .line 221
    const-wide v0, 0x200000000L

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    if-eqz p0, :cond_8

    .line 239
    .line 240
    new-instance p0, Landroidx/compose/ui/unit/TextUnitType;

    .line 241
    .line 242
    const-wide v0, 0x100000000L

    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_8
    new-instance p0, Landroidx/compose/ui/unit/TextUnitType;

    .line 252
    .line 253
    const-wide/16 v0, 0x0

    .line 254
    .line 255
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 256
    .line 257
    .line 258
    :goto_4
    return-object p0

    .line 259
    :pswitch_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 260
    .line 261
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_9

    .line 266
    .line 267
    sget-wide p0, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    .line 268
    .line 269
    new-instance v0, Landroidx/compose/ui/unit/TextUnit;

    .line 270
    .line 271
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    check-cast p1, Ljava/util/List;

    .line 279
    .line 280
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    if-eqz v0, :cond_a

    .line 285
    .line 286
    check-cast v0, Ljava/lang/Float;

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_a
    move-object v0, v1

    .line 290
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->TextUnitTypeSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 302
    .line 303
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    if-eqz p1, :cond_b

    .line 307
    .line 308
    iget-object p0, v2, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 309
    .line 310
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    move-object v1, p0

    .line 315
    check-cast v1, Landroidx/compose/ui/unit/TextUnitType;

    .line 316
    .line 317
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    iget-wide p0, v1, Landroidx/compose/ui/unit/TextUnitType;->type:J

    .line 321
    .line 322
    invoke-static {v0, p0, p1}, Lcoil3/util/ContextsKt;->pack(FJ)J

    .line 323
    .line 324
    .line 325
    move-result-wide p0

    .line 326
    new-instance v0, Landroidx/compose/ui/unit/TextUnit;

    .line 327
    .line 328
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 329
    .line 330
    .line 331
    :goto_6
    return-object v0

    .line 332
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    check-cast p1, Ljava/lang/Integer;

    .line 336
    .line 337
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 338
    .line 339
    .line 340
    move-result p0

    .line 341
    new-instance p1, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 342
    .line 343
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    .line 344
    .line 345
    .line 346
    return-object p1

    .line 347
    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    check-cast p1, Ljava/lang/Integer;

    .line 351
    .line 352
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 353
    .line 354
    .line 355
    move-result p0

    .line 356
    new-instance p1, Landroidx/compose/ui/text/font/FontStyle;

    .line 357
    .line 358
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 359
    .line 360
    .line 361
    return-object p1

    .line 362
    :pswitch_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    check-cast p1, Ljava/util/List;

    .line 366
    .line 367
    new-instance p0, Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    .line 375
    .line 376
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    :goto_7
    if-ge v2, v0, :cond_e

    .line 381
    .line 382
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeSaver:Landroidx/cardview/widget/CardView$1;

    .line 387
    .line 388
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 389
    .line 390
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    if-eqz v5, :cond_d

    .line 395
    .line 396
    :cond_c
    move-object v3, v1

    .line 397
    goto :goto_8

    .line 398
    :cond_d
    if-eqz v3, :cond_c

    .line 399
    .line 400
    iget-object v4, v4, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 403
    .line 404
    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 409
    .line 410
    :goto_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    add-int/lit8 v2, v2, 0x1

    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_e
    return-object p0

    .line 420
    :pswitch_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    check-cast p1, Ljava/lang/Integer;

    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 426
    .line 427
    .line 428
    move-result p0

    .line 429
    new-instance p1, Landroidx/compose/ui/text/style/Hyphens;

    .line 430
    .line 431
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    .line 432
    .line 433
    .line 434
    return-object p1

    .line 435
    :pswitch_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    check-cast p1, Ljava/lang/Integer;

    .line 439
    .line 440
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 441
    .line 442
    .line 443
    move-result p0

    .line 444
    new-instance p1, Landroidx/compose/ui/text/style/TextDirection;

    .line 445
    .line 446
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    .line 447
    .line 448
    .line 449
    return-object p1

    .line 450
    :pswitch_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    .line 452
    .line 453
    check-cast p1, Ljava/lang/Integer;

    .line 454
    .line 455
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 456
    .line 457
    .line 458
    move-result p0

    .line 459
    new-instance p1, Landroidx/compose/ui/text/style/TextAlign;

    .line 460
    .line 461
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 462
    .line 463
    .line 464
    return-object p1

    .line 465
    :pswitch_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    check-cast p1, Ljava/util/List;

    .line 469
    .line 470
    new-instance v4, Landroidx/compose/ui/graphics/Shadow;

    .line 471
    .line 472
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object p0

    .line 476
    sget v2, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 477
    .line 478
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 479
    .line 480
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    if-eqz p0, :cond_10

    .line 484
    .line 485
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 486
    .line 487
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v5

    .line 491
    if-eqz v5, :cond_f

    .line 492
    .line 493
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 494
    .line 495
    new-instance p0, Landroidx/compose/ui/graphics/Color;

    .line 496
    .line 497
    invoke-direct {p0, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 498
    .line 499
    .line 500
    goto :goto_9

    .line 501
    :cond_f
    check-cast p0, Ljava/lang/Integer;

    .line 502
    .line 503
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 504
    .line 505
    .line 506
    move-result p0

    .line 507
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 508
    .line 509
    .line 510
    move-result-wide v5

    .line 511
    new-instance p0, Landroidx/compose/ui/graphics/Color;

    .line 512
    .line 513
    invoke-direct {p0, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 514
    .line 515
    .line 516
    goto :goto_9

    .line 517
    :cond_10
    move-object p0, v1

    .line 518
    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    iget-wide v5, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 522
    .line 523
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object p0

    .line 527
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->OffsetSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 528
    .line 529
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    if-eqz p0, :cond_11

    .line 533
    .line 534
    iget-object v2, v3, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 535
    .line 536
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 541
    .line 542
    goto :goto_a

    .line 543
    :cond_11
    move-object p0, v1

    .line 544
    :goto_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    iget-wide v7, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 548
    .line 549
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object p0

    .line 553
    if-eqz p0, :cond_12

    .line 554
    .line 555
    move-object v1, p0

    .line 556
    check-cast v1, Ljava/lang/Float;

    .line 557
    .line 558
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 562
    .line 563
    .line 564
    move-result v9

    .line 565
    invoke-direct/range {v4 .. v9}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJF)V

    .line 566
    .line 567
    .line 568
    return-object v4

    .line 569
    :pswitch_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    .line 571
    .line 572
    check-cast p1, Ljava/util/List;

    .line 573
    .line 574
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object p0

    .line 578
    if-eqz p0, :cond_13

    .line 579
    .line 580
    check-cast p0, Ljava/lang/Integer;

    .line 581
    .line 582
    goto :goto_b

    .line 583
    :cond_13
    move-object p0, v1

    .line 584
    :goto_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 588
    .line 589
    .line 590
    move-result p0

    .line 591
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    if-eqz p1, :cond_14

    .line 596
    .line 597
    move-object v1, p1

    .line 598
    check-cast v1, Ljava/lang/Integer;

    .line 599
    .line 600
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 604
    .line 605
    .line 606
    move-result p1

    .line 607
    invoke-static {p0, p1}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 608
    .line 609
    .line 610
    move-result-wide p0

    .line 611
    new-instance v0, Landroidx/compose/ui/text/TextRange;

    .line 612
    .line 613
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 614
    .line 615
    .line 616
    return-object v0

    .line 617
    :pswitch_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    check-cast p1, Ljava/lang/Float;

    .line 621
    .line 622
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 623
    .line 624
    .line 625
    move-result p0

    .line 626
    new-instance p1, Landroidx/compose/ui/text/style/BaselineShift;

    .line 627
    .line 628
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    .line 629
    .line 630
    .line 631
    return-object p1

    .line 632
    :pswitch_d
    new-instance p0, Landroidx/compose/ui/text/font/FontWeight;

    .line 633
    .line 634
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    .line 636
    .line 637
    check-cast p1, Ljava/lang/Integer;

    .line 638
    .line 639
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 640
    .line 641
    .line 642
    move-result p1

    .line 643
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    .line 644
    .line 645
    .line 646
    return-object p0

    .line 647
    :pswitch_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    .line 649
    .line 650
    check-cast p1, Ljava/util/List;

    .line 651
    .line 652
    new-instance p0, Landroidx/compose/ui/text/style/TextIndent;

    .line 653
    .line 654
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    sget-object v2, Landroidx/compose/ui/unit/TextUnit;->TextUnitTypes:[Landroidx/compose/ui/unit/TextUnitType;

    .line 659
    .line 660
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 661
    .line 662
    iget-object v2, v2, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 663
    .line 664
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 665
    .line 666
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    if-eqz v0, :cond_15

    .line 670
    .line 671
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    check-cast v0, Landroidx/compose/ui/unit/TextUnit;

    .line 676
    .line 677
    goto :goto_c

    .line 678
    :cond_15
    move-object v0, v1

    .line 679
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    iget-wide v5, v0, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 683
    .line 684
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object p1

    .line 688
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    if-eqz p1, :cond_16

    .line 692
    .line 693
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object p1

    .line 697
    move-object v1, p1

    .line 698
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 699
    .line 700
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    .line 702
    .line 703
    iget-wide v0, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 704
    .line 705
    invoke-direct {p0, v5, v6, v0, v1}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJ)V

    .line 706
    .line 707
    .line 708
    return-object p0

    .line 709
    :pswitch_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    check-cast p1, Ljava/util/List;

    .line 713
    .line 714
    new-instance p0, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 715
    .line 716
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    check-cast v0, Ljava/lang/Number;

    .line 721
    .line 722
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 723
    .line 724
    .line 725
    move-result v0

    .line 726
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object p1

    .line 730
    check-cast p1, Ljava/lang/Number;

    .line 731
    .line 732
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 733
    .line 734
    .line 735
    move-result p1

    .line 736
    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    .line 737
    .line 738
    .line 739
    return-object p0

    .line 740
    :pswitch_10
    new-instance p0, Landroidx/compose/ui/text/style/TextDecoration;

    .line 741
    .line 742
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    check-cast p1, Ljava/lang/Integer;

    .line 746
    .line 747
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 748
    .line 749
    .line 750
    move-result p1

    .line 751
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    .line 752
    .line 753
    .line 754
    return-object p0

    .line 755
    :pswitch_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 756
    .line 757
    .line 758
    check-cast p1, Ljava/util/List;

    .line 759
    .line 760
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object p0

    .line 764
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/cardview/widget/CardView$1;

    .line 765
    .line 766
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 767
    .line 768
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v3

    .line 772
    if-eqz v3, :cond_18

    .line 773
    .line 774
    :cond_17
    move-object p0, v1

    .line 775
    goto :goto_d

    .line 776
    :cond_18
    if-eqz p0, :cond_17

    .line 777
    .line 778
    iget-object v0, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 779
    .line 780
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 781
    .line 782
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object p0

    .line 786
    check-cast p0, Ljava/util/List;

    .line 787
    .line 788
    :goto_d
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object p1

    .line 792
    if-eqz p1, :cond_19

    .line 793
    .line 794
    move-object v1, p1

    .line 795
    check-cast v1, Ljava/lang/String;

    .line 796
    .line 797
    :cond_19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 798
    .line 799
    .line 800
    new-instance p1, Landroidx/compose/ui/text/AnnotatedString;

    .line 801
    .line 802
    invoke-direct {p1, p0, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    return-object p1

    .line 806
    :pswitch_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    .line 808
    .line 809
    check-cast p1, Ljava/util/List;

    .line 810
    .line 811
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object p0

    .line 815
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 816
    .line 817
    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 818
    .line 819
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 820
    .line 821
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 822
    .line 823
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v5

    .line 827
    if-eqz v5, :cond_1b

    .line 828
    .line 829
    :cond_1a
    move-object p0, v1

    .line 830
    goto :goto_e

    .line 831
    :cond_1b
    if-eqz p0, :cond_1a

    .line 832
    .line 833
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object p0

    .line 837
    check-cast p0, Landroidx/compose/ui/text/SpanStyle;

    .line 838
    .line 839
    :goto_e
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v3

    .line 843
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v5

    .line 847
    if-eqz v5, :cond_1d

    .line 848
    .line 849
    :cond_1c
    move-object v3, v1

    .line 850
    goto :goto_f

    .line 851
    :cond_1d
    if-eqz v3, :cond_1c

    .line 852
    .line 853
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v3

    .line 857
    check-cast v3, Landroidx/compose/ui/text/SpanStyle;

    .line 858
    .line 859
    :goto_f
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 864
    .line 865
    .line 866
    move-result v5

    .line 867
    if-eqz v5, :cond_1f

    .line 868
    .line 869
    :cond_1e
    move-object v0, v1

    .line 870
    goto :goto_10

    .line 871
    :cond_1f
    if-eqz v0, :cond_1e

    .line 872
    .line 873
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    check-cast v0, Landroidx/compose/ui/text/SpanStyle;

    .line 878
    .line 879
    :goto_10
    const/4 v5, 0x3

    .line 880
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object p1

    .line 884
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    move-result v4

    .line 888
    if-eqz v4, :cond_20

    .line 889
    .line 890
    goto :goto_11

    .line 891
    :cond_20
    if-eqz p1, :cond_21

    .line 892
    .line 893
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object p1

    .line 897
    move-object v1, p1

    .line 898
    check-cast v1, Landroidx/compose/ui/text/SpanStyle;

    .line 899
    .line 900
    :cond_21
    :goto_11
    new-instance p1, Landroidx/compose/ui/text/TextLinkStyles;

    .line 901
    .line 902
    invoke-direct {p1, p0, v3, v0, v1}, Landroidx/compose/ui/text/TextLinkStyles;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)V

    .line 903
    .line 904
    .line 905
    return-object p1

    .line 906
    :pswitch_13
    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    .line 907
    .line 908
    new-instance p0, Ljava/lang/StringBuilder;

    .line 909
    .line 910
    const-string v0, "["

    .line 911
    .line 912
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    iget v0, p1, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    .line 916
    .line 917
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    const-string v0, ", "

    .line 921
    .line 922
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    iget p1, p1, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    .line 926
    .line 927
    const/16 v0, 0x29

    .line 928
    .line 929
    invoke-static {p0, p1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object p0

    .line 933
    return-object p0

    .line 934
    :pswitch_14
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    .line 935
    .line 936
    instance-of p0, p1, Landroidx/compose/ui/text/ParagraphStyle;

    .line 937
    .line 938
    xor-int/2addr p0, v3

    .line 939
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 940
    .line 941
    .line 942
    move-result-object p0

    .line 943
    return-object p0

    .line 944
    :pswitch_15
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 945
    .line 946
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 947
    .line 948
    return-object p0

    .line 949
    :pswitch_16
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 950
    .line 951
    monitor-enter p0

    .line 952
    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalWriteObservers:Ljava/util/List;

    .line 953
    .line 954
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 955
    .line 956
    .line 957
    move-result v1

    .line 958
    :goto_12
    if-ge v2, v1, :cond_22

    .line 959
    .line 960
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    move-result-object v3

    .line 964
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 965
    .line 966
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    .line 968
    .line 969
    add-int/lit8 v2, v2, 0x1

    .line 970
    .line 971
    goto :goto_12

    .line 972
    :catchall_0
    move-exception v0

    .line 973
    move-object p1, v0

    .line 974
    goto :goto_13

    .line 975
    :cond_22
    monitor-exit p0

    .line 976
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 977
    .line 978
    return-object p0

    .line 979
    :goto_13
    monitor-exit p0

    .line 980
    throw p1

    .line 981
    :pswitch_17
    return-object p1

    .line 982
    :pswitch_18
    check-cast p1, Ljava/util/Map;

    .line 983
    .line 984
    new-instance p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 985
    .line 986
    invoke-direct {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;-><init>(Ljava/util/Map;)V

    .line 987
    .line 988
    .line 989
    return-object p0

    .line 990
    :pswitch_19
    check-cast p1, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;

    .line 991
    .line 992
    iget-object p0, p1, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;->onNextFrameEnd:Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 993
    .line 994
    if-eqz p0, :cond_23

    .line 995
    .line 996
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;->invoke()Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    :cond_23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1000
    .line 1001
    return-object p0

    .line 1002
    :pswitch_1a
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 1003
    .line 1004
    sget-object p0, Landroidx/compose/runtime/HostDefaultProviderKt;->LocalHostDefaultProvider:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1005
    .line 1006
    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1007
    .line 1008
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1009
    .line 1010
    .line 1011
    invoke-static {p1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object p0

    .line 1015
    check-cast p0, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;

    .line 1016
    .line 1017
    iget-object p0, p0, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;->view:Landroid/view/View;

    .line 1018
    .line 1019
    :goto_14
    if-eqz p0, :cond_26

    .line 1020
    .line 1021
    const p1, 0x7f090748

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    move-result-object p1

    .line 1028
    if-eqz p1, :cond_24

    .line 1029
    .line 1030
    move-object v1, p1

    .line 1031
    goto :goto_15

    .line 1032
    :cond_24
    invoke-static {p0}, Landroidx/room/Room;->getParentOrViewTreeDisjointParent(Landroid/view/View;)Landroid/view/ViewParent;

    .line 1033
    .line 1034
    .line 1035
    move-result-object p0

    .line 1036
    instance-of p1, p0, Landroid/view/View;

    .line 1037
    .line 1038
    if-eqz p1, :cond_25

    .line 1039
    .line 1040
    check-cast p0, Landroid/view/View;

    .line 1041
    .line 1042
    goto :goto_14

    .line 1043
    :cond_25
    move-object p0, v1

    .line 1044
    goto :goto_14

    .line 1045
    :cond_26
    :goto_15
    return-object v1

    .line 1046
    :pswitch_1b
    check-cast p1, Ljava/lang/Float;

    .line 1047
    .line 1048
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1049
    .line 1050
    .line 1051
    new-instance p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 1052
    .line 1053
    new-instance v0, Landroidx/compose/animation/core/Animatable;

    .line 1054
    .line 1055
    sget-object v2, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 1056
    .line 1057
    const/16 v3, 0xc

    .line 1058
    .line 1059
    invoke-direct {v0, p1, v2, v1, v3}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    .line 1060
    .line 1061
    .line 1062
    invoke-direct {p0, v0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;-><init>(Landroidx/compose/animation/core/Animatable;)V

    .line 1063
    .line 1064
    .line 1065
    return-object p0

    .line 1066
    :pswitch_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1067
    .line 1068
    .line 1069
    check-cast p1, Ljava/util/List;

    .line 1070
    .line 1071
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object p0

    .line 1075
    if-eqz p0, :cond_27

    .line 1076
    .line 1077
    check-cast p0, Ljava/lang/String;

    .line 1078
    .line 1079
    goto :goto_16

    .line 1080
    :cond_27
    move-object p0, v1

    .line 1081
    :goto_16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1082
    .line 1083
    .line 1084
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    move-result-object p1

    .line 1088
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/cardview/widget/CardView$1;

    .line 1089
    .line 1090
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1091
    .line 1092
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1093
    .line 1094
    .line 1095
    move-result v2

    .line 1096
    if-eqz v2, :cond_29

    .line 1097
    .line 1098
    :cond_28
    move-object p1, v1

    .line 1099
    goto :goto_17

    .line 1100
    :cond_29
    if-eqz p1, :cond_28

    .line 1101
    .line 1102
    iget-object v0, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1103
    .line 1104
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1105
    .line 1106
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object p1

    .line 1110
    check-cast p1, Landroidx/compose/ui/text/TextLinkStyles;

    .line 1111
    .line 1112
    :goto_17
    new-instance v0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1113
    .line 1114
    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/ui/text/LinkAnnotation$Url;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V

    .line 1115
    .line 1116
    .line 1117
    return-object v0

    .line 1118
    nop

    .line 1119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
