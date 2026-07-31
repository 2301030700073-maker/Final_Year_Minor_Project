.class public final synthetic Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/foundation/lazy/LazyListMeasureResult;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
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
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast p1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    new-instance p1, Landroidx/compose/ui/text/style/TextAlign;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    check-cast p1, Ljava/util/List;

    .line 29
    .line 30
    new-instance v4, Landroidx/compose/ui/graphics/Shadow;

    .line 31
    .line 32
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget v3, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 37
    .line 38
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 54
    .line 55
    new-instance p0, Landroidx/compose/ui/graphics/Color;

    .line 56
    .line 57
    invoke-direct {p0, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    check-cast p0, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-static {p0}, Landroidx/compose/ui/graphics/Brush;->Color(I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    new-instance p0, Landroidx/compose/ui/graphics/Color;

    .line 72
    .line 73
    invoke-direct {p0, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move-object p0, v1

    .line 78
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-wide v5, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 82
    .line 83
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->OffsetSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 88
    .line 89
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    if-eqz p0, :cond_2

    .line 93
    .line 94
    iget-object v2, v2, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 95
    .line 96
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    move-object p0, v1

    .line 104
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-wide v7, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 108
    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    if-eqz p0, :cond_3

    .line 114
    .line 115
    move-object v1, p0

    .line 116
    check-cast v1, Ljava/lang/Float;

    .line 117
    .line 118
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    invoke-direct/range {v4 .. v9}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJF)V

    .line 126
    .line 127
    .line 128
    return-object v4

    .line 129
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    check-cast p1, Ljava/util/List;

    .line 133
    .line 134
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    if-eqz p0, :cond_4

    .line 139
    .line 140
    check-cast p0, Ljava/lang/Integer;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    move-object p0, v1

    .line 144
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_5

    .line 156
    .line 157
    move-object v1, p1

    .line 158
    check-cast v1, Ljava/lang/Integer;

    .line 159
    .line 160
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-static {p0, p1}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 168
    .line 169
    .line 170
    move-result-wide p0

    .line 171
    new-instance v0, Landroidx/compose/ui/text/TextRange;

    .line 172
    .line 173
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 174
    .line 175
    .line 176
    return-object v0

    .line 177
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    check-cast p1, Ljava/lang/Float;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    new-instance p1, Landroidx/compose/ui/text/style/BaselineShift;

    .line 187
    .line 188
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    .line 189
    .line 190
    .line 191
    return-object p1

    .line 192
    :pswitch_3
    new-instance p0, Landroidx/compose/ui/text/font/FontWeight;

    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    check-cast p1, Ljava/lang/Integer;

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    .line 204
    .line 205
    .line 206
    return-object p0

    .line 207
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    check-cast p1, Ljava/util/List;

    .line 211
    .line 212
    new-instance p0, Landroidx/compose/ui/text/style/TextIndent;

    .line 213
    .line 214
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    sget-object v3, Landroidx/compose/ui/unit/TextUnit;->TextUnitTypes:[Landroidx/compose/ui/unit/TextUnitType;

    .line 219
    .line 220
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 221
    .line 222
    iget-object v3, v3, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 223
    .line 224
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 225
    .line 226
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    if-eqz v0, :cond_6

    .line 230
    .line 231
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Landroidx/compose/ui/unit/TextUnit;

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_6
    move-object v0, v1

    .line 239
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    iget-wide v5, v0, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 243
    .line 244
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    if-eqz p1, :cond_7

    .line 252
    .line 253
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    move-object v1, p1

    .line 258
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 259
    .line 260
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    iget-wide v0, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 264
    .line 265
    invoke-direct {p0, v5, v6, v0, v1}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJ)V

    .line 266
    .line 267
    .line 268
    return-object p0

    .line 269
    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    check-cast p1, Ljava/util/List;

    .line 273
    .line 274
    new-instance p0, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 275
    .line 276
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Ljava/lang/Number;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    check-cast p1, Ljava/lang/Number;

    .line 291
    .line 292
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    .line 297
    .line 298
    .line 299
    return-object p0

    .line 300
    :pswitch_6
    new-instance p0, Landroidx/compose/ui/text/style/TextDecoration;

    .line 301
    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    check-cast p1, Ljava/lang/Integer;

    .line 306
    .line 307
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    .line 312
    .line 313
    .line 314
    return-object p0

    .line 315
    :pswitch_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    check-cast p1, Ljava/util/List;

    .line 319
    .line 320
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/cardview/widget/CardView$1;

    .line 325
    .line 326
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 327
    .line 328
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-eqz v2, :cond_9

    .line 333
    .line 334
    :cond_8
    move-object p0, v1

    .line 335
    goto :goto_4

    .line 336
    :cond_9
    if-eqz p0, :cond_8

    .line 337
    .line 338
    iget-object v0, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 341
    .line 342
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    check-cast p0, Ljava/util/List;

    .line 347
    .line 348
    :goto_4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    if-eqz p1, :cond_a

    .line 353
    .line 354
    move-object v1, p1

    .line 355
    check-cast v1, Ljava/lang/String;

    .line 356
    .line 357
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    new-instance p1, Landroidx/compose/ui/text/AnnotatedString;

    .line 361
    .line 362
    invoke-direct {p1, p0, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    return-object p1

    .line 366
    :pswitch_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    check-cast p1, Ljava/util/List;

    .line 370
    .line 371
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 376
    .line 377
    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 380
    .line 381
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 382
    .line 383
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    if-eqz v5, :cond_c

    .line 388
    .line 389
    :cond_b
    move-object p0, v1

    .line 390
    goto :goto_5

    .line 391
    :cond_c
    if-eqz p0, :cond_b

    .line 392
    .line 393
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    check-cast p0, Landroidx/compose/ui/text/SpanStyle;

    .line 398
    .line 399
    :goto_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    if-eqz v5, :cond_e

    .line 408
    .line 409
    :cond_d
    move-object v2, v1

    .line 410
    goto :goto_6

    .line 411
    :cond_e
    if-eqz v2, :cond_d

    .line 412
    .line 413
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    check-cast v2, Landroidx/compose/ui/text/SpanStyle;

    .line 418
    .line 419
    :goto_6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v5

    .line 427
    if-eqz v5, :cond_10

    .line 428
    .line 429
    :cond_f
    move-object v0, v1

    .line 430
    goto :goto_7

    .line 431
    :cond_10
    if-eqz v0, :cond_f

    .line 432
    .line 433
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    check-cast v0, Landroidx/compose/ui/text/SpanStyle;

    .line 438
    .line 439
    :goto_7
    const/4 v5, 0x3

    .line 440
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    if-eqz v4, :cond_11

    .line 449
    .line 450
    goto :goto_8

    .line 451
    :cond_11
    if-eqz p1, :cond_12

    .line 452
    .line 453
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    move-object v1, p1

    .line 458
    check-cast v1, Landroidx/compose/ui/text/SpanStyle;

    .line 459
    .line 460
    :cond_12
    :goto_8
    new-instance p1, Landroidx/compose/ui/text/TextLinkStyles;

    .line 461
    .line 462
    invoke-direct {p1, p0, v2, v0, v1}, Landroidx/compose/ui/text/TextLinkStyles;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)V

    .line 463
    .line 464
    .line 465
    return-object p1

    .line 466
    :pswitch_9
    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    .line 467
    .line 468
    new-instance p0, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    const-string v0, "["

    .line 471
    .line 472
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget v0, p1, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    .line 476
    .line 477
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v0, ", "

    .line 481
    .line 482
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    iget p1, p1, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    .line 486
    .line 487
    const/16 v0, 0x29

    .line 488
    .line 489
    invoke-static {p0, p1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p0

    .line 493
    return-object p0

    .line 494
    :pswitch_a
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 495
    .line 496
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->emptyLambda:Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;

    .line 497
    .line 498
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 499
    .line 500
    return-object p0

    .line 501
    :pswitch_b
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 502
    .line 503
    monitor-enter p0

    .line 504
    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalWriteObservers:Ljava/util/List;

    .line 505
    .line 506
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    :goto_9
    if-ge v3, v1, :cond_13

    .line 511
    .line 512
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 517
    .line 518
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    .line 520
    .line 521
    add-int/lit8 v3, v3, 0x1

    .line 522
    .line 523
    goto :goto_9

    .line 524
    :catchall_0
    move-exception v0

    .line 525
    move-object p1, v0

    .line 526
    goto :goto_a

    .line 527
    :cond_13
    monitor-exit p0

    .line 528
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 529
    .line 530
    return-object p0

    .line 531
    :goto_a
    monitor-exit p0

    .line 532
    throw p1

    .line 533
    :pswitch_c
    return-object p1

    .line 534
    :pswitch_d
    check-cast p1, Ljava/util/Map;

    .line 535
    .line 536
    new-instance p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 537
    .line 538
    invoke-direct {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;-><init>(Ljava/util/Map;)V

    .line 539
    .line 540
    .line 541
    return-object p0

    .line 542
    :pswitch_e
    check-cast p1, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;

    .line 543
    .line 544
    iget-object p0, p1, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;->onNextFrameEnd:Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1;

    .line 545
    .line 546
    if-eqz p0, :cond_14

    .line 547
    .line 548
    invoke-virtual {p0}, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1;->invoke()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    :cond_14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 552
    .line 553
    return-object p0

    .line 554
    :pswitch_f
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 555
    .line 556
    sget-object p0, Landroidx/compose/runtime/HostDefaultProviderKt;->LocalHostDefaultProvider:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 557
    .line 558
    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 559
    .line 560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    .line 562
    .line 563
    invoke-static {p1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object p0

    .line 567
    check-cast p0, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;

    .line 568
    .line 569
    iget-object p0, p0, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;->view:Landroid/view/View;

    .line 570
    .line 571
    :goto_b
    if-eqz p0, :cond_17

    .line 572
    .line 573
    const p1, 0x7f0a042f

    .line 574
    .line 575
    .line 576
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    if-eqz p1, :cond_15

    .line 581
    .line 582
    move-object v1, p1

    .line 583
    goto :goto_c

    .line 584
    :cond_15
    invoke-static {p0}, Lkotlin/io/CloseableKt;->getParentOrViewTreeDisjointParent(Landroid/view/View;)Landroid/view/ViewParent;

    .line 585
    .line 586
    .line 587
    move-result-object p0

    .line 588
    instance-of p1, p0, Landroid/view/View;

    .line 589
    .line 590
    if-eqz p1, :cond_16

    .line 591
    .line 592
    check-cast p0, Landroid/view/View;

    .line 593
    .line 594
    goto :goto_b

    .line 595
    :cond_16
    move-object p0, v1

    .line 596
    goto :goto_b

    .line 597
    :cond_17
    :goto_c
    return-object v1

    .line 598
    :pswitch_10
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    .line 599
    .line 600
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    new-instance p0, Ljava/lang/ClassCastException;

    .line 604
    .line 605
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 606
    .line 607
    .line 608
    throw p0

    .line 609
    :pswitch_11
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    .line 610
    .line 611
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    new-instance p0, Ljava/lang/ClassCastException;

    .line 615
    .line 616
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 617
    .line 618
    .line 619
    throw p0

    .line 620
    :pswitch_12
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 621
    .line 622
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 623
    .line 624
    return-object p0

    .line 625
    :pswitch_13
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 626
    .line 627
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 628
    .line 629
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsContainer:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 630
    .line 631
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 632
    .line 633
    const/4 v1, 0x5

    .line 634
    aget-object v0, v0, v1

    .line 635
    .line 636
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 637
    .line 638
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 642
    .line 643
    return-object p0

    .line 644
    :pswitch_14
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 645
    .line 646
    sget p0, Landroidx/compose/material3/ListItemKt;->InteractiveListStartPadding:F

    .line 647
    .line 648
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 649
    .line 650
    return-object p0

    .line 651
    :pswitch_15
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 652
    .line 653
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 654
    .line 655
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsTraversalGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 656
    .line 657
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 658
    .line 659
    const/4 v1, 0x6

    .line 660
    aget-object v0, v0, v1

    .line 661
    .line 662
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 663
    .line 664
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 668
    .line 669
    return-object p0

    .line 670
    :pswitch_16
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 671
    .line 672
    invoke-static {p1, v3}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 673
    .line 674
    .line 675
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 676
    .line 677
    return-object p0

    .line 678
    :pswitch_17
    check-cast p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 679
    .line 680
    sget-object p0, Landroidx/compose/material3/BadgeKt;->BadgeEndRuler:Landroidx/compose/ui/layout/VerticalRuler;

    .line 681
    .line 682
    invoke-virtual {p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 687
    .line 688
    .line 689
    move-result-wide v0

    .line 690
    const/16 v2, 0x20

    .line 691
    .line 692
    shr-long/2addr v0, v2

    .line 693
    long-to-int v0, v0

    .line 694
    int-to-float v0, v0

    .line 695
    invoke-virtual {p1, p0, v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->provides(Landroidx/compose/ui/layout/Ruler;F)V

    .line 696
    .line 697
    .line 698
    sget-object p0, Landroidx/compose/material3/BadgeKt;->BadgeTopRuler:Landroidx/compose/ui/layout/HorizontalRuler;

    .line 699
    .line 700
    const/4 v0, 0x0

    .line 701
    invoke-virtual {p1, p0, v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->provides(Landroidx/compose/ui/layout/Ruler;F)V

    .line 702
    .line 703
    .line 704
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 705
    .line 706
    return-object p0

    .line 707
    :pswitch_18
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    .line 708
    .line 709
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 710
    .line 711
    return-object p0

    .line 712
    :pswitch_19
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 713
    .line 714
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 715
    .line 716
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 717
    .line 718
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 719
    .line 720
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 721
    .line 722
    .line 723
    return-object v0

    .line 724
    :pswitch_1a
    check-cast p1, Ljava/util/List;

    .line 725
    .line 726
    new-instance p0, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 727
    .line 728
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    .line 734
    .line 735
    check-cast v0, Ljava/lang/Integer;

    .line 736
    .line 737
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 746
    .line 747
    .line 748
    check-cast v1, Ljava/lang/Float;

    .line 749
    .line 750
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    new-instance v3, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;

    .line 755
    .line 756
    invoke-direct {v3, v2, p1}, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    .line 757
    .line 758
    .line 759
    invoke-direct {p0, v0, v1, v3}, Landroidx/compose/foundation/pager/DefaultPagerState;-><init>(IFLkotlin/jvm/functions/Function0;)V

    .line 760
    .line 761
    .line 762
    return-object p0

    .line 763
    :pswitch_1b
    check-cast p1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 764
    .line 765
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 766
    .line 767
    return-object p0

    .line 768
    :pswitch_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 769
    .line 770
    .line 771
    check-cast p1, Ljava/util/List;

    .line 772
    .line 773
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object p0

    .line 777
    if-eqz p0, :cond_18

    .line 778
    .line 779
    check-cast p0, Ljava/lang/String;

    .line 780
    .line 781
    goto :goto_d

    .line 782
    :cond_18
    move-object p0, v1

    .line 783
    :goto_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 784
    .line 785
    .line 786
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object p1

    .line 790
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/cardview/widget/CardView$1;

    .line 791
    .line 792
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 793
    .line 794
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    if-eqz v2, :cond_19

    .line 799
    .line 800
    goto :goto_e

    .line 801
    :cond_19
    if-eqz p1, :cond_1a

    .line 802
    .line 803
    iget-object v0, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 804
    .line 805
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 806
    .line 807
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object p1

    .line 811
    move-object v1, p1

    .line 812
    check-cast v1, Landroidx/compose/ui/text/TextLinkStyles;

    .line 813
    .line 814
    :cond_1a
    :goto_e
    new-instance p1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 815
    .line 816
    invoke-direct {p1, p0, v1}, Landroidx/compose/ui/text/LinkAnnotation$Url;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;)V

    .line 817
    .line 818
    .line 819
    return-object p1

    .line 820
    nop

    .line 821
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
