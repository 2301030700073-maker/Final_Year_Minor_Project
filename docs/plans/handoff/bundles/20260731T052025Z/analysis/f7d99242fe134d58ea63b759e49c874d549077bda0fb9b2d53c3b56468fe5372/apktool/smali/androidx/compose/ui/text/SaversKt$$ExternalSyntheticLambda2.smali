.class public final synthetic Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    const/4 v3, 0x7

    .line 10
    const/4 v4, 0x6

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x4

    .line 13
    const/4 v7, 0x2

    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-object v0, v1

    .line 24
    check-cast v0, Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    check-cast v1, Ljava/lang/Boolean;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v1, v10

    .line 36
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    sget-object v3, Landroidx/compose/ui/text/ParagraphKt;->emojiSupportMatchSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v2, v3, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 63
    .line 64
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    move-object v10, v0

    .line 69
    check-cast v10, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 70
    .line 71
    :cond_2
    :goto_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget v0, v10, Landroidx/compose/ui/text/EmojiSupportMatch;->value:I

    .line 75
    .line 76
    new-instance v2, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 77
    .line 78
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>(IZ)V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-object v0, v1

    .line 86
    check-cast v0, Ljava/util/List;

    .line 87
    .line 88
    new-instance v11, Landroidx/compose/ui/text/SpanStyle;

    .line 89
    .line 90
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sget v9, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 95
    .line 96
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-eqz v12, :cond_3

    .line 108
    .line 109
    sget-wide v12, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 110
    .line 111
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 112
    .line 113
    invoke-direct {v1, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    check-cast v1, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 124
    .line 125
    .line 126
    move-result-wide v12

    .line 127
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 128
    .line 129
    invoke-direct {v1, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    move-object v1, v10

    .line 134
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-wide v12, v1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 138
    .line 139
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    sget-object v8, Landroidx/compose/ui/unit/TextUnit;->TextUnitTypes:[Landroidx/compose/ui/unit/TextUnitType;

    .line 144
    .line 145
    sget-object v8, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 146
    .line 147
    iget-object v8, v8, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 148
    .line 149
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    if-eqz v1, :cond_5

    .line 153
    .line 154
    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    move-object v1, v10

    .line 162
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    iget-wide v14, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 166
    .line 167
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    sget-object v7, Landroidx/compose/ui/text/font/FontWeight;->W600:Landroidx/compose/ui/text/font/FontWeight;

    .line 172
    .line 173
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->FontWeightSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 174
    .line 175
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v16

    .line 179
    if-eqz v16, :cond_7

    .line 180
    .line 181
    :cond_6
    move-object/from16 v16, v10

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_7
    if-eqz v1, :cond_6

    .line 185
    .line 186
    iget-object v7, v7, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 189
    .line 190
    invoke-interface {v7, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Landroidx/compose/ui/text/font/FontWeight;

    .line 195
    .line 196
    move-object/from16 v16, v1

    .line 197
    .line 198
    :goto_4
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->FontStyleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 203
    .line 204
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    if-eqz v7, :cond_9

    .line 209
    .line 210
    :cond_8
    move-object/from16 v17, v10

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_9
    if-eqz v1, :cond_8

    .line 214
    .line 215
    iget-object v5, v5, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 218
    .line 219
    invoke-interface {v5, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Landroidx/compose/ui/text/font/FontStyle;

    .line 224
    .line 225
    move-object/from16 v17, v1

    .line 226
    .line 227
    :goto_5
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->FontSynthesisSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 232
    .line 233
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-eqz v6, :cond_b

    .line 238
    .line 239
    :cond_a
    move-object/from16 v18, v10

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_b
    if-eqz v1, :cond_a

    .line 243
    .line 244
    iget-object v5, v5, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 247
    .line 248
    invoke-interface {v5, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    check-cast v1, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 253
    .line 254
    move-object/from16 v18, v1

    .line 255
    .line 256
    :goto_6
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    if-eqz v1, :cond_c

    .line 261
    .line 262
    check-cast v1, Ljava/lang/String;

    .line 263
    .line 264
    move-object/from16 v20, v1

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_c
    move-object/from16 v20, v10

    .line 268
    .line 269
    :goto_7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    if-eqz v1, :cond_d

    .line 277
    .line 278
    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_d
    move-object v1, v10

    .line 286
    :goto_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    iget-wide v3, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 290
    .line 291
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->BaselineShiftSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 296
    .line 297
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    if-eqz v5, :cond_f

    .line 302
    .line 303
    :cond_e
    move-object/from16 v23, v10

    .line 304
    .line 305
    goto :goto_9

    .line 306
    :cond_f
    if-eqz v1, :cond_e

    .line 307
    .line 308
    iget-object v2, v2, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 311
    .line 312
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    check-cast v1, Landroidx/compose/ui/text/style/BaselineShift;

    .line 317
    .line 318
    move-object/from16 v23, v1

    .line 319
    .line 320
    :goto_9
    const/16 v1, 0x9

    .line 321
    .line 322
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->TextGeometricTransformSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 327
    .line 328
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    if-eqz v5, :cond_11

    .line 333
    .line 334
    :cond_10
    move-object/from16 v24, v10

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_11
    if-eqz v1, :cond_10

    .line 338
    .line 339
    iget-object v2, v2, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 342
    .line 343
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    check-cast v1, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 348
    .line 349
    move-object/from16 v24, v1

    .line 350
    .line 351
    :goto_a
    const/16 v1, 0xa

    .line 352
    .line 353
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    sget-object v2, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    .line 358
    .line 359
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->LocaleListSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 360
    .line 361
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    if-eqz v5, :cond_13

    .line 366
    .line 367
    :cond_12
    move-object/from16 v25, v10

    .line 368
    .line 369
    goto :goto_b

    .line 370
    :cond_13
    if-eqz v1, :cond_12

    .line 371
    .line 372
    iget-object v2, v2, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 375
    .line 376
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    check-cast v1, Landroidx/compose/ui/text/intl/LocaleList;

    .line 381
    .line 382
    move-object/from16 v25, v1

    .line 383
    .line 384
    :goto_b
    const/16 v1, 0xb

    .line 385
    .line 386
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    if-eqz v1, :cond_15

    .line 394
    .line 395
    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    if-eqz v2, :cond_14

    .line 400
    .line 401
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 402
    .line 403
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 404
    .line 405
    invoke-direct {v5, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 406
    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_14
    check-cast v1, Ljava/lang/Integer;

    .line 410
    .line 411
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 416
    .line 417
    .line 418
    move-result-wide v1

    .line 419
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 420
    .line 421
    invoke-direct {v5, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 422
    .line 423
    .line 424
    goto :goto_c

    .line 425
    :cond_15
    move-object v5, v10

    .line 426
    :goto_c
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    iget-wide v1, v5, Landroidx/compose/ui/graphics/Color;->value:J

    .line 430
    .line 431
    const/16 v5, 0xc

    .line 432
    .line 433
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->TextDecorationSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 438
    .line 439
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v7

    .line 443
    if-eqz v7, :cond_17

    .line 444
    .line 445
    :cond_16
    move-object/from16 v28, v10

    .line 446
    .line 447
    goto :goto_d

    .line 448
    :cond_17
    if-eqz v5, :cond_16

    .line 449
    .line 450
    iget-object v6, v6, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 453
    .line 454
    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    check-cast v5, Landroidx/compose/ui/text/style/TextDecoration;

    .line 459
    .line 460
    move-object/from16 v28, v5

    .line 461
    .line 462
    :goto_d
    const/16 v5, 0xd

    .line 463
    .line 464
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    sget-object v5, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    .line 469
    .line 470
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->ShadowSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 471
    .line 472
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v6

    .line 476
    if-eqz v6, :cond_19

    .line 477
    .line 478
    :cond_18
    :goto_e
    move-object/from16 v29, v10

    .line 479
    .line 480
    goto :goto_f

    .line 481
    :cond_19
    if-eqz v0, :cond_18

    .line 482
    .line 483
    iget-object v5, v5, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 486
    .line 487
    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    move-object v10, v0

    .line 492
    check-cast v10, Landroidx/compose/ui/graphics/Shadow;

    .line 493
    .line 494
    goto :goto_e

    .line 495
    :goto_f
    const v30, 0xc020

    .line 496
    .line 497
    .line 498
    const/16 v19, 0x0

    .line 499
    .line 500
    move-wide/from16 v26, v1

    .line 501
    .line 502
    move-wide/from16 v21, v3

    .line 503
    .line 504
    invoke-direct/range {v11 .. v30}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 505
    .line 506
    .line 507
    return-object v11

    .line 508
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    move-object v0, v1

    .line 512
    check-cast v0, Ljava/util/List;

    .line 513
    .line 514
    new-instance v11, Landroidx/compose/ui/text/ParagraphStyle;

    .line 515
    .line 516
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    sget-object v9, Landroidx/compose/ui/text/SaversKt;->TextAlignSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 521
    .line 522
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 523
    .line 524
    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    if-eqz v1, :cond_1a

    .line 528
    .line 529
    iget-object v9, v9, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 530
    .line 531
    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    check-cast v1, Landroidx/compose/ui/text/style/TextAlign;

    .line 536
    .line 537
    goto :goto_10

    .line 538
    :cond_1a
    move-object v1, v10

    .line 539
    :goto_10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    iget v1, v1, Landroidx/compose/ui/text/style/TextAlign;->value:I

    .line 543
    .line 544
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v8

    .line 548
    sget-object v9, Landroidx/compose/ui/text/SaversKt;->TextDirectionSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 549
    .line 550
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    if-eqz v8, :cond_1b

    .line 554
    .line 555
    iget-object v9, v9, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 556
    .line 557
    invoke-interface {v9, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v8

    .line 561
    check-cast v8, Landroidx/compose/ui/text/style/TextDirection;

    .line 562
    .line 563
    goto :goto_11

    .line 564
    :cond_1b
    move-object v8, v10

    .line 565
    :goto_11
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    iget v13, v8, Landroidx/compose/ui/text/style/TextDirection;->value:I

    .line 569
    .line 570
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v7

    .line 574
    sget-object v8, Landroidx/compose/ui/unit/TextUnit;->TextUnitTypes:[Landroidx/compose/ui/unit/TextUnitType;

    .line 575
    .line 576
    sget-object v8, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 577
    .line 578
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    if-eqz v7, :cond_1c

    .line 582
    .line 583
    iget-object v8, v8, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 584
    .line 585
    invoke-interface {v8, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v7

    .line 589
    check-cast v7, Landroidx/compose/ui/unit/TextUnit;

    .line 590
    .line 591
    goto :goto_12

    .line 592
    :cond_1c
    move-object v7, v10

    .line 593
    :goto_12
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    iget-wide v14, v7, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 597
    .line 598
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    sget-object v7, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    .line 603
    .line 604
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->TextIndentSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 605
    .line 606
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    move-result v8

    .line 610
    if-eqz v8, :cond_1e

    .line 611
    .line 612
    :cond_1d
    move-object/from16 v16, v10

    .line 613
    .line 614
    goto :goto_13

    .line 615
    :cond_1e
    if-eqz v5, :cond_1d

    .line 616
    .line 617
    iget-object v7, v7, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 618
    .line 619
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 620
    .line 621
    invoke-interface {v7, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v5

    .line 625
    check-cast v5, Landroidx/compose/ui/text/style/TextIndent;

    .line 626
    .line 627
    move-object/from16 v16, v5

    .line 628
    .line 629
    :goto_13
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v5

    .line 633
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v6

    .line 637
    sget-object v7, Landroidx/compose/ui/text/ParagraphKt;->PlatformParagraphStyleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 638
    .line 639
    if-eqz v6, :cond_20

    .line 640
    .line 641
    :cond_1f
    move-object/from16 v17, v10

    .line 642
    .line 643
    goto :goto_14

    .line 644
    :cond_20
    if-eqz v5, :cond_1f

    .line 645
    .line 646
    iget-object v6, v7, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 649
    .line 650
    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    check-cast v5, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 655
    .line 656
    move-object/from16 v17, v5

    .line 657
    .line 658
    :goto_14
    const/4 v5, 0x5

    .line 659
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    sget-object v6, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 664
    .line 665
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 666
    .line 667
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    move-result v7

    .line 671
    if-eqz v7, :cond_22

    .line 672
    .line 673
    :cond_21
    move-object/from16 v18, v10

    .line 674
    .line 675
    goto :goto_15

    .line 676
    :cond_22
    if-eqz v5, :cond_21

    .line 677
    .line 678
    iget-object v6, v6, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 679
    .line 680
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 681
    .line 682
    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v5

    .line 686
    check-cast v5, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 687
    .line 688
    move-object/from16 v18, v5

    .line 689
    .line 690
    :goto_15
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move-result v5

    .line 698
    sget-object v6, Landroidx/compose/ui/text/ParagraphKt;->LineBreakSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 699
    .line 700
    if-eqz v5, :cond_24

    .line 701
    .line 702
    :cond_23
    move-object v4, v10

    .line 703
    goto :goto_16

    .line 704
    :cond_24
    if-eqz v4, :cond_23

    .line 705
    .line 706
    iget-object v5, v6, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 707
    .line 708
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 709
    .line 710
    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v4

    .line 714
    check-cast v4, Landroidx/compose/ui/text/style/LineBreak;

    .line 715
    .line 716
    :goto_16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    .line 718
    .line 719
    iget v4, v4, Landroidx/compose/ui/text/style/LineBreak;->mask:I

    .line 720
    .line 721
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v3

    .line 725
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->HyphensSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 726
    .line 727
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    if-eqz v3, :cond_25

    .line 731
    .line 732
    iget-object v5, v5, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 733
    .line 734
    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v3

    .line 738
    check-cast v3, Landroidx/compose/ui/text/style/Hyphens;

    .line 739
    .line 740
    goto :goto_17

    .line 741
    :cond_25
    move-object v3, v10

    .line 742
    :goto_17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    iget v3, v3, Landroidx/compose/ui/text/style/Hyphens;->value:I

    .line 746
    .line 747
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    move-result v2

    .line 755
    sget-object v5, Landroidx/compose/ui/text/ParagraphKt;->TextMotionSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 756
    .line 757
    if-eqz v2, :cond_27

    .line 758
    .line 759
    :cond_26
    :goto_18
    move v12, v1

    .line 760
    move/from16 v20, v3

    .line 761
    .line 762
    move/from16 v19, v4

    .line 763
    .line 764
    move-object/from16 v21, v10

    .line 765
    .line 766
    goto :goto_19

    .line 767
    :cond_27
    if-eqz v0, :cond_26

    .line 768
    .line 769
    iget-object v2, v5, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 770
    .line 771
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 772
    .line 773
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    move-object v10, v0

    .line 778
    check-cast v10, Landroidx/compose/ui/text/style/TextMotion;

    .line 779
    .line 780
    goto :goto_18

    .line 781
    :goto_19
    invoke-direct/range {v11 .. v21}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    .line 782
    .line 783
    .line 784
    return-object v11

    .line 785
    :pswitch_2
    new-instance v0, Landroidx/compose/ui/text/UrlAnnotation;

    .line 786
    .line 787
    if-eqz v1, :cond_28

    .line 788
    .line 789
    move-object v10, v1

    .line 790
    check-cast v10, Ljava/lang/String;

    .line 791
    .line 792
    :cond_28
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    invoke-direct {v0, v10}, Landroidx/compose/ui/text/UrlAnnotation;-><init>(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    return-object v0

    .line 799
    :pswitch_3
    new-instance v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 800
    .line 801
    if-eqz v1, :cond_29

    .line 802
    .line 803
    move-object v10, v1

    .line 804
    check-cast v10, Ljava/lang/String;

    .line 805
    .line 806
    :cond_29
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    .line 808
    .line 809
    invoke-direct {v0, v10}, Landroidx/compose/ui/text/VerbatimTtsAnnotation;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    return-object v0

    .line 813
    :pswitch_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    .line 815
    .line 816
    move-object v0, v1

    .line 817
    check-cast v0, Ljava/lang/Integer;

    .line 818
    .line 819
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 820
    .line 821
    .line 822
    move-result v0

    .line 823
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 824
    .line 825
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;-><init>(I)V

    .line 826
    .line 827
    .line 828
    return-object v1

    .line 829
    :pswitch_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    .line 831
    .line 832
    move-object v0, v1

    .line 833
    check-cast v0, Ljava/util/List;

    .line 834
    .line 835
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v1

    .line 839
    if-eqz v1, :cond_2a

    .line 840
    .line 841
    check-cast v1, Landroidx/compose/ui/text/AnnotationType;

    .line 842
    .line 843
    goto :goto_1a

    .line 844
    :cond_2a
    move-object v1, v10

    .line 845
    :goto_1a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 846
    .line 847
    .line 848
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    if-eqz v2, :cond_2b

    .line 853
    .line 854
    check-cast v2, Ljava/lang/Integer;

    .line 855
    .line 856
    goto :goto_1b

    .line 857
    :cond_2b
    move-object v2, v10

    .line 858
    :goto_1b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 859
    .line 860
    .line 861
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 862
    .line 863
    .line 864
    move-result v2

    .line 865
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v3

    .line 869
    if-eqz v3, :cond_2c

    .line 870
    .line 871
    check-cast v3, Ljava/lang/Integer;

    .line 872
    .line 873
    goto :goto_1c

    .line 874
    :cond_2c
    move-object v3, v10

    .line 875
    :goto_1c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 879
    .line 880
    .line 881
    move-result v3

    .line 882
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v4

    .line 886
    if-eqz v4, :cond_2d

    .line 887
    .line 888
    check-cast v4, Ljava/lang/String;

    .line 889
    .line 890
    goto :goto_1d

    .line 891
    :cond_2d
    move-object v4, v10

    .line 892
    :goto_1d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 896
    .line 897
    .line 898
    move-result v1

    .line 899
    packed-switch v1, :pswitch_data_1

    .line 900
    .line 901
    .line 902
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 903
    .line 904
    .line 905
    goto/16 :goto_25

    .line 906
    .line 907
    :pswitch_6
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    if-eqz v0, :cond_2e

    .line 912
    .line 913
    move-object v10, v0

    .line 914
    check-cast v10, Ljava/lang/String;

    .line 915
    .line 916
    :cond_2e
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 917
    .line 918
    .line 919
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 920
    .line 921
    new-instance v1, Landroidx/compose/ui/text/StringAnnotation;

    .line 922
    .line 923
    invoke-direct {v1, v10}, Landroidx/compose/ui/text/StringAnnotation;-><init>(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    invoke-direct {v0, v2, v3, v1, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    :goto_1e
    move-object v10, v0

    .line 930
    goto/16 :goto_25

    .line 931
    .line 932
    :pswitch_7
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->ClickableSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 937
    .line 938
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 939
    .line 940
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 941
    .line 942
    .line 943
    move-result v5

    .line 944
    if-eqz v5, :cond_2f

    .line 945
    .line 946
    goto :goto_1f

    .line 947
    :cond_2f
    if-eqz v0, :cond_30

    .line 948
    .line 949
    iget-object v1, v1, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 950
    .line 951
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 952
    .line 953
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    move-object v10, v0

    .line 958
    check-cast v10, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 959
    .line 960
    :cond_30
    :goto_1f
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 961
    .line 962
    .line 963
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 964
    .line 965
    invoke-direct {v0, v2, v3, v10, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    goto :goto_1e

    .line 969
    :pswitch_8
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->LinkSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 974
    .line 975
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 976
    .line 977
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 978
    .line 979
    .line 980
    move-result v5

    .line 981
    if-eqz v5, :cond_31

    .line 982
    .line 983
    goto :goto_20

    .line 984
    :cond_31
    if-eqz v0, :cond_32

    .line 985
    .line 986
    iget-object v1, v1, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 987
    .line 988
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 989
    .line 990
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    move-object v10, v0

    .line 995
    check-cast v10, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 996
    .line 997
    :cond_32
    :goto_20
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 998
    .line 999
    .line 1000
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1001
    .line 1002
    invoke-direct {v0, v2, v3, v10, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    goto :goto_1e

    .line 1006
    :pswitch_9
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->UrlAnnotationSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1011
    .line 1012
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1013
    .line 1014
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v5

    .line 1018
    if-eqz v5, :cond_33

    .line 1019
    .line 1020
    goto :goto_21

    .line 1021
    :cond_33
    if-eqz v0, :cond_34

    .line 1022
    .line 1023
    iget-object v1, v1, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 1024
    .line 1025
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1026
    .line 1027
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    move-object v10, v0

    .line 1032
    check-cast v10, Landroidx/compose/ui/text/UrlAnnotation;

    .line 1033
    .line 1034
    :cond_34
    :goto_21
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    .line 1036
    .line 1037
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1038
    .line 1039
    invoke-direct {v0, v2, v3, v10, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    goto :goto_1e

    .line 1043
    :pswitch_a
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->VerbatimTtsAnnotationSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1048
    .line 1049
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1050
    .line 1051
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v5

    .line 1055
    if-eqz v5, :cond_35

    .line 1056
    .line 1057
    goto :goto_22

    .line 1058
    :cond_35
    if-eqz v0, :cond_36

    .line 1059
    .line 1060
    iget-object v1, v1, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 1061
    .line 1062
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1063
    .line 1064
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v0

    .line 1068
    move-object v10, v0

    .line 1069
    check-cast v10, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 1070
    .line 1071
    :cond_36
    :goto_22
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1072
    .line 1073
    .line 1074
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1075
    .line 1076
    invoke-direct {v0, v2, v3, v10, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    goto/16 :goto_1e

    .line 1080
    .line 1081
    :pswitch_b
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1086
    .line 1087
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1088
    .line 1089
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v5

    .line 1093
    if-eqz v5, :cond_37

    .line 1094
    .line 1095
    goto :goto_23

    .line 1096
    :cond_37
    if-eqz v0, :cond_38

    .line 1097
    .line 1098
    iget-object v1, v1, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 1099
    .line 1100
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1101
    .line 1102
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v0

    .line 1106
    move-object v10, v0

    .line 1107
    check-cast v10, Landroidx/compose/ui/text/SpanStyle;

    .line 1108
    .line 1109
    :cond_38
    :goto_23
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1110
    .line 1111
    .line 1112
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1113
    .line 1114
    invoke-direct {v0, v2, v3, v10, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    goto/16 :goto_1e

    .line 1118
    .line 1119
    :pswitch_c
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->ParagraphStyleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1124
    .line 1125
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1126
    .line 1127
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1128
    .line 1129
    .line 1130
    move-result v5

    .line 1131
    if-eqz v5, :cond_39

    .line 1132
    .line 1133
    goto :goto_24

    .line 1134
    :cond_39
    if-eqz v0, :cond_3a

    .line 1135
    .line 1136
    iget-object v1, v1, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 1137
    .line 1138
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1139
    .line 1140
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    move-object v10, v0

    .line 1145
    check-cast v10, Landroidx/compose/ui/text/ParagraphStyle;

    .line 1146
    .line 1147
    :cond_3a
    :goto_24
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1148
    .line 1149
    .line 1150
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1151
    .line 1152
    invoke-direct {v0, v2, v3, v10, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 1153
    .line 1154
    .line 1155
    goto/16 :goto_1e

    .line 1156
    .line 1157
    :goto_25
    return-object v10

    .line 1158
    :pswitch_d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1159
    .line 1160
    .line 1161
    move-object v0, v1

    .line 1162
    check-cast v0, Ljava/lang/Integer;

    .line 1163
    .line 1164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1165
    .line 1166
    .line 1167
    move-result v0

    .line 1168
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 1169
    .line 1170
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;-><init>(I)V

    .line 1171
    .line 1172
    .line 1173
    return-object v1

    .line 1174
    :pswitch_e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1175
    .line 1176
    .line 1177
    move-object v0, v1

    .line 1178
    check-cast v0, Ljava/lang/Float;

    .line 1179
    .line 1180
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 1181
    .line 1182
    .line 1183
    move-result v0

    .line 1184
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->constructor-impl(F)V

    .line 1185
    .line 1186
    .line 1187
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 1188
    .line 1189
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;-><init>(F)V

    .line 1190
    .line 1191
    .line 1192
    return-object v1

    .line 1193
    :pswitch_f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1194
    .line 1195
    .line 1196
    move-object v0, v1

    .line 1197
    check-cast v0, Ljava/util/List;

    .line 1198
    .line 1199
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 1200
    .line 1201
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v2

    .line 1205
    sget v3, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:F

    .line 1206
    .line 1207
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleAlignmentSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1208
    .line 1209
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1210
    .line 1211
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1212
    .line 1213
    .line 1214
    if-eqz v2, :cond_3b

    .line 1215
    .line 1216
    iget-object v3, v3, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 1217
    .line 1218
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v2

    .line 1222
    check-cast v2, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 1223
    .line 1224
    goto :goto_26

    .line 1225
    :cond_3b
    move-object v2, v10

    .line 1226
    :goto_26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1227
    .line 1228
    .line 1229
    iget v2, v2, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topRatio:F

    .line 1230
    .line 1231
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v3

    .line 1235
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleTrimSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1236
    .line 1237
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1238
    .line 1239
    .line 1240
    if-eqz v3, :cond_3c

    .line 1241
    .line 1242
    iget-object v5, v5, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 1243
    .line 1244
    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v3

    .line 1248
    check-cast v3, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 1249
    .line 1250
    goto :goto_27

    .line 1251
    :cond_3c
    move-object v3, v10

    .line 1252
    :goto_27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1253
    .line 1254
    .line 1255
    iget v3, v3, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->value:I

    .line 1256
    .line 1257
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v0

    .line 1261
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleModeSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1262
    .line 1263
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1264
    .line 1265
    .line 1266
    if-eqz v0, :cond_3d

    .line 1267
    .line 1268
    iget-object v4, v5, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 1269
    .line 1270
    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v0

    .line 1274
    move-object v10, v0

    .line 1275
    check-cast v10, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 1276
    .line 1277
    :cond_3d
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1278
    .line 1279
    .line 1280
    iget v0, v10, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->value:I

    .line 1281
    .line 1282
    invoke-direct {v1, v3, v2, v0}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(IFI)V

    .line 1283
    .line 1284
    .line 1285
    return-object v1

    .line 1286
    :pswitch_10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1287
    .line 1288
    .line 1289
    move-object v0, v1

    .line 1290
    check-cast v0, Ljava/util/List;

    .line 1291
    .line 1292
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v1

    .line 1296
    if-eqz v1, :cond_3e

    .line 1297
    .line 1298
    check-cast v1, Ljava/lang/String;

    .line 1299
    .line 1300
    goto :goto_28

    .line 1301
    :cond_3e
    move-object v1, v10

    .line 1302
    :goto_28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1303
    .line 1304
    .line 1305
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v0

    .line 1309
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1310
    .line 1311
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1312
    .line 1313
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1314
    .line 1315
    .line 1316
    move-result v3

    .line 1317
    if-eqz v3, :cond_3f

    .line 1318
    .line 1319
    goto :goto_29

    .line 1320
    :cond_3f
    if-eqz v0, :cond_40

    .line 1321
    .line 1322
    iget-object v2, v2, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 1323
    .line 1324
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1325
    .line 1326
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    move-object v10, v0

    .line 1331
    check-cast v10, Landroidx/compose/ui/text/TextLinkStyles;

    .line 1332
    .line 1333
    :cond_40
    :goto_29
    new-instance v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1334
    .line 1335
    invoke-direct {v0, v1, v10}, Landroidx/compose/ui/text/LinkAnnotation$Clickable;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;)V

    .line 1336
    .line 1337
    .line 1338
    return-object v0

    .line 1339
    :pswitch_11
    new-instance v0, Landroidx/compose/ui/text/intl/Locale;

    .line 1340
    .line 1341
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1342
    .line 1343
    .line 1344
    check-cast v1, Ljava/lang/String;

    .line 1345
    .line 1346
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v2

    .line 1350
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v3

    .line 1354
    const-string v4, "und"

    .line 1355
    .line 1356
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1357
    .line 1358
    .line 1359
    move-result v3

    .line 1360
    if-eqz v3, :cond_41

    .line 1361
    .line 1362
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 1363
    .line 1364
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    const-string v5, "The language tag "

    .line 1367
    .line 1368
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    .line 1373
    .line 1374
    const-string v1, " is not well-formed. Locale is resolved to Undetermined. Note that underscore \'_\' is not a valid subtag delimiter and must be replaced with \'-\'."

    .line 1375
    .line 1376
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v1

    .line 1383
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1384
    .line 1385
    .line 1386
    :cond_41
    invoke-direct {v0, v2}, Landroidx/compose/ui/text/intl/Locale;-><init>(Ljava/util/Locale;)V

    .line 1387
    .line 1388
    .line 1389
    return-object v0

    .line 1390
    :pswitch_12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1391
    .line 1392
    .line 1393
    move-object v0, v1

    .line 1394
    check-cast v0, Ljava/util/List;

    .line 1395
    .line 1396
    new-instance v1, Ljava/util/ArrayList;

    .line 1397
    .line 1398
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1399
    .line 1400
    .line 1401
    move-result v2

    .line 1402
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1403
    .line 1404
    .line 1405
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 1406
    .line 1407
    .line 1408
    move-result v2

    .line 1409
    :goto_2a
    if-ge v9, v2, :cond_44

    .line 1410
    .line 1411
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v3

    .line 1415
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->LocaleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1416
    .line 1417
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1418
    .line 1419
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1420
    .line 1421
    .line 1422
    move-result v5

    .line 1423
    if-eqz v5, :cond_43

    .line 1424
    .line 1425
    :cond_42
    move-object v3, v10

    .line 1426
    goto :goto_2b

    .line 1427
    :cond_43
    if-eqz v3, :cond_42

    .line 1428
    .line 1429
    iget-object v4, v4, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 1430
    .line 1431
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1432
    .line 1433
    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v3

    .line 1437
    check-cast v3, Landroidx/compose/ui/text/intl/Locale;

    .line 1438
    .line 1439
    :goto_2b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    .line 1444
    .line 1445
    add-int/lit8 v9, v9, 0x1

    .line 1446
    .line 1447
    goto :goto_2a

    .line 1448
    :cond_44
    new-instance v0, Landroidx/compose/ui/text/intl/LocaleList;

    .line 1449
    .line 1450
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/intl/LocaleList;-><init>(Ljava/util/List;)V

    .line 1451
    .line 1452
    .line 1453
    return-object v0

    .line 1454
    :pswitch_13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1455
    .line 1456
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1457
    .line 1458
    .line 1459
    move-result v0

    .line 1460
    if-eqz v0, :cond_45

    .line 1461
    .line 1462
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 1463
    .line 1464
    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1470
    .line 1471
    .line 1472
    goto :goto_2d

    .line 1473
    :cond_45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1474
    .line 1475
    .line 1476
    move-object v0, v1

    .line 1477
    check-cast v0, Ljava/util/List;

    .line 1478
    .line 1479
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v1

    .line 1483
    if-eqz v1, :cond_46

    .line 1484
    .line 1485
    check-cast v1, Ljava/lang/Float;

    .line 1486
    .line 1487
    goto :goto_2c

    .line 1488
    :cond_46
    move-object v1, v10

    .line 1489
    :goto_2c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1490
    .line 1491
    .line 1492
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 1493
    .line 1494
    .line 1495
    move-result v1

    .line 1496
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v0

    .line 1500
    if-eqz v0, :cond_47

    .line 1501
    .line 1502
    move-object v10, v0

    .line 1503
    check-cast v10, Ljava/lang/Float;

    .line 1504
    .line 1505
    :cond_47
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1506
    .line 1507
    .line 1508
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 1509
    .line 1510
    .line 1511
    move-result v0

    .line 1512
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1513
    .line 1514
    .line 1515
    move-result v1

    .line 1516
    int-to-long v1, v1

    .line 1517
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1518
    .line 1519
    .line 1520
    move-result v0

    .line 1521
    int-to-long v3, v0

    .line 1522
    const/16 v0, 0x20

    .line 1523
    .line 1524
    shl-long v0, v1, v0

    .line 1525
    .line 1526
    const-wide v5, 0xffffffffL

    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    and-long/2addr v3, v5

    .line 1532
    or-long/2addr v0, v3

    .line 1533
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    .line 1534
    .line 1535
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1536
    .line 1537
    .line 1538
    move-object v0, v2

    .line 1539
    :goto_2d
    return-object v0

    .line 1540
    :pswitch_14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v0

    .line 1544
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1545
    .line 1546
    .line 1547
    move-result v0

    .line 1548
    if-eqz v0, :cond_48

    .line 1549
    .line 1550
    new-instance v0, Landroidx/compose/ui/unit/TextUnitType;

    .line 1551
    .line 1552
    const-wide v1, 0x200000000L

    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 1558
    .line 1559
    .line 1560
    goto :goto_2e

    .line 1561
    :cond_48
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v0

    .line 1565
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1566
    .line 1567
    .line 1568
    move-result v0

    .line 1569
    if-eqz v0, :cond_49

    .line 1570
    .line 1571
    new-instance v0, Landroidx/compose/ui/unit/TextUnitType;

    .line 1572
    .line 1573
    const-wide v1, 0x100000000L

    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 1579
    .line 1580
    .line 1581
    goto :goto_2e

    .line 1582
    :cond_49
    new-instance v0, Landroidx/compose/ui/unit/TextUnitType;

    .line 1583
    .line 1584
    const-wide/16 v1, 0x0

    .line 1585
    .line 1586
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 1587
    .line 1588
    .line 1589
    :goto_2e
    return-object v0

    .line 1590
    :pswitch_15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1591
    .line 1592
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1593
    .line 1594
    .line 1595
    move-result v2

    .line 1596
    if-eqz v2, :cond_4a

    .line 1597
    .line 1598
    sget-wide v0, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    .line 1599
    .line 1600
    new-instance v2, Landroidx/compose/ui/unit/TextUnit;

    .line 1601
    .line 1602
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 1603
    .line 1604
    .line 1605
    goto :goto_30

    .line 1606
    :cond_4a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1607
    .line 1608
    .line 1609
    check-cast v1, Ljava/util/List;

    .line 1610
    .line 1611
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v2

    .line 1615
    if-eqz v2, :cond_4b

    .line 1616
    .line 1617
    check-cast v2, Ljava/lang/Float;

    .line 1618
    .line 1619
    goto :goto_2f

    .line 1620
    :cond_4b
    move-object v2, v10

    .line 1621
    :goto_2f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 1625
    .line 1626
    .line 1627
    move-result v2

    .line 1628
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v1

    .line 1632
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->TextUnitTypeSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1633
    .line 1634
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1635
    .line 1636
    .line 1637
    if-eqz v1, :cond_4c

    .line 1638
    .line 1639
    iget-object v0, v3, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 1640
    .line 1641
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v0

    .line 1645
    move-object v10, v0

    .line 1646
    check-cast v10, Landroidx/compose/ui/unit/TextUnitType;

    .line 1647
    .line 1648
    :cond_4c
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1649
    .line 1650
    .line 1651
    iget-wide v0, v10, Landroidx/compose/ui/unit/TextUnitType;->type:J

    .line 1652
    .line 1653
    invoke-static {v2, v0, v1}, Landroidx/sqlite/SQLite;->pack(FJ)J

    .line 1654
    .line 1655
    .line 1656
    move-result-wide v0

    .line 1657
    new-instance v2, Landroidx/compose/ui/unit/TextUnit;

    .line 1658
    .line 1659
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 1660
    .line 1661
    .line 1662
    :goto_30
    return-object v2

    .line 1663
    :pswitch_16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1664
    .line 1665
    .line 1666
    move-object v0, v1

    .line 1667
    check-cast v0, Ljava/lang/Integer;

    .line 1668
    .line 1669
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1670
    .line 1671
    .line 1672
    move-result v0

    .line 1673
    new-instance v1, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 1674
    .line 1675
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    .line 1676
    .line 1677
    .line 1678
    return-object v1

    .line 1679
    :pswitch_17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1680
    .line 1681
    .line 1682
    move-object v0, v1

    .line 1683
    check-cast v0, Ljava/lang/Integer;

    .line 1684
    .line 1685
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1686
    .line 1687
    .line 1688
    move-result v0

    .line 1689
    new-instance v1, Landroidx/compose/ui/text/font/FontStyle;

    .line 1690
    .line 1691
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 1692
    .line 1693
    .line 1694
    return-object v1

    .line 1695
    :pswitch_18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1696
    .line 1697
    .line 1698
    move-object v0, v1

    .line 1699
    check-cast v0, Ljava/util/List;

    .line 1700
    .line 1701
    new-instance v1, Ljava/util/ArrayList;

    .line 1702
    .line 1703
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1704
    .line 1705
    .line 1706
    move-result v2

    .line 1707
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1708
    .line 1709
    .line 1710
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 1711
    .line 1712
    .line 1713
    move-result v2

    .line 1714
    :goto_31
    if-ge v9, v2, :cond_4f

    .line 1715
    .line 1716
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v3

    .line 1720
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1721
    .line 1722
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1723
    .line 1724
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1725
    .line 1726
    .line 1727
    move-result v5

    .line 1728
    if-eqz v5, :cond_4e

    .line 1729
    .line 1730
    :cond_4d
    move-object v3, v10

    .line 1731
    goto :goto_32

    .line 1732
    :cond_4e
    if-eqz v3, :cond_4d

    .line 1733
    .line 1734
    iget-object v4, v4, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 1735
    .line 1736
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1737
    .line 1738
    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v3

    .line 1742
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1743
    .line 1744
    :goto_32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1745
    .line 1746
    .line 1747
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1748
    .line 1749
    .line 1750
    add-int/lit8 v9, v9, 0x1

    .line 1751
    .line 1752
    goto :goto_31

    .line 1753
    :cond_4f
    return-object v1

    .line 1754
    :pswitch_19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1755
    .line 1756
    .line 1757
    move-object v0, v1

    .line 1758
    check-cast v0, Ljava/lang/Integer;

    .line 1759
    .line 1760
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1761
    .line 1762
    .line 1763
    move-result v0

    .line 1764
    new-instance v1, Landroidx/compose/ui/text/style/Hyphens;

    .line 1765
    .line 1766
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    .line 1767
    .line 1768
    .line 1769
    return-object v1

    .line 1770
    :pswitch_1a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1771
    .line 1772
    .line 1773
    move-object v0, v1

    .line 1774
    check-cast v0, Ljava/lang/Integer;

    .line 1775
    .line 1776
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1777
    .line 1778
    .line 1779
    move-result v0

    .line 1780
    new-instance v1, Landroidx/compose/ui/text/style/TextDirection;

    .line 1781
    .line 1782
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    .line 1783
    .line 1784
    .line 1785
    return-object v1

    .line 1786
    :pswitch_1b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1787
    .line 1788
    .line 1789
    move-object v0, v1

    .line 1790
    check-cast v0, Ljava/lang/Integer;

    .line 1791
    .line 1792
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1793
    .line 1794
    .line 1795
    move-result v0

    .line 1796
    new-instance v1, Landroidx/compose/ui/text/style/TextAlign;

    .line 1797
    .line 1798
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 1799
    .line 1800
    .line 1801
    return-object v1

    .line 1802
    :pswitch_1c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1803
    .line 1804
    .line 1805
    move-object v0, v1

    .line 1806
    check-cast v0, Ljava/util/List;

    .line 1807
    .line 1808
    new-instance v1, Landroidx/compose/ui/graphics/Shadow;

    .line 1809
    .line 1810
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v2

    .line 1814
    sget v3, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 1815
    .line 1816
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1817
    .line 1818
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1819
    .line 1820
    .line 1821
    if-eqz v2, :cond_51

    .line 1822
    .line 1823
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1824
    .line 1825
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1826
    .line 1827
    .line 1828
    move-result v4

    .line 1829
    if-eqz v4, :cond_50

    .line 1830
    .line 1831
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 1832
    .line 1833
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 1834
    .line 1835
    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 1836
    .line 1837
    .line 1838
    goto :goto_33

    .line 1839
    :cond_50
    check-cast v2, Ljava/lang/Integer;

    .line 1840
    .line 1841
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1842
    .line 1843
    .line 1844
    move-result v2

    .line 1845
    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 1846
    .line 1847
    .line 1848
    move-result-wide v4

    .line 1849
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 1850
    .line 1851
    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 1852
    .line 1853
    .line 1854
    goto :goto_33

    .line 1855
    :cond_51
    move-object v2, v10

    .line 1856
    :goto_33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1857
    .line 1858
    .line 1859
    iget-wide v4, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 1860
    .line 1861
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v2

    .line 1865
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->OffsetSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1866
    .line 1867
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1868
    .line 1869
    .line 1870
    if-eqz v2, :cond_52

    .line 1871
    .line 1872
    iget-object v3, v6, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 1873
    .line 1874
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v2

    .line 1878
    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 1879
    .line 1880
    goto :goto_34

    .line 1881
    :cond_52
    move-object v2, v10

    .line 1882
    :goto_34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1883
    .line 1884
    .line 1885
    iget-wide v2, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1886
    .line 1887
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v0

    .line 1891
    if-eqz v0, :cond_53

    .line 1892
    .line 1893
    move-object v10, v0

    .line 1894
    check-cast v10, Ljava/lang/Float;

    .line 1895
    .line 1896
    :cond_53
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1897
    .line 1898
    .line 1899
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 1900
    .line 1901
    .line 1902
    move-result v6

    .line 1903
    move-wide/from16 v31, v4

    .line 1904
    .line 1905
    move-wide v4, v2

    .line 1906
    move-wide/from16 v2, v31

    .line 1907
    .line 1908
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJF)V

    .line 1909
    .line 1910
    .line 1911
    return-object v1

    .line 1912
    :pswitch_1d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1913
    .line 1914
    .line 1915
    move-object v0, v1

    .line 1916
    check-cast v0, Ljava/util/List;

    .line 1917
    .line 1918
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v1

    .line 1922
    if-eqz v1, :cond_54

    .line 1923
    .line 1924
    check-cast v1, Ljava/lang/Integer;

    .line 1925
    .line 1926
    goto :goto_35

    .line 1927
    :cond_54
    move-object v1, v10

    .line 1928
    :goto_35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1929
    .line 1930
    .line 1931
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1932
    .line 1933
    .line 1934
    move-result v1

    .line 1935
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v0

    .line 1939
    if-eqz v0, :cond_55

    .line 1940
    .line 1941
    move-object v10, v0

    .line 1942
    check-cast v10, Ljava/lang/Integer;

    .line 1943
    .line 1944
    :cond_55
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1945
    .line 1946
    .line 1947
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 1948
    .line 1949
    .line 1950
    move-result v0

    .line 1951
    invoke-static {v1, v0}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 1952
    .line 1953
    .line 1954
    move-result-wide v0

    .line 1955
    new-instance v2, Landroidx/compose/ui/text/TextRange;

    .line 1956
    .line 1957
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 1958
    .line 1959
    .line 1960
    return-object v2

    .line 1961
    :pswitch_1e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1962
    .line 1963
    .line 1964
    move-object v0, v1

    .line 1965
    check-cast v0, Ljava/lang/Float;

    .line 1966
    .line 1967
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 1968
    .line 1969
    .line 1970
    move-result v0

    .line 1971
    new-instance v1, Landroidx/compose/ui/text/style/BaselineShift;

    .line 1972
    .line 1973
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    .line 1974
    .line 1975
    .line 1976
    return-object v1

    .line 1977
    :pswitch_1f
    new-instance v0, Landroidx/compose/ui/text/font/FontWeight;

    .line 1978
    .line 1979
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1980
    .line 1981
    .line 1982
    check-cast v1, Ljava/lang/Integer;

    .line 1983
    .line 1984
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1985
    .line 1986
    .line 1987
    move-result v1

    .line 1988
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    .line 1989
    .line 1990
    .line 1991
    return-object v0

    .line 1992
    :pswitch_20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1993
    .line 1994
    .line 1995
    move-object v0, v1

    .line 1996
    check-cast v0, Ljava/util/List;

    .line 1997
    .line 1998
    new-instance v1, Landroidx/compose/ui/text/style/TextIndent;

    .line 1999
    .line 2000
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v2

    .line 2004
    sget-object v3, Landroidx/compose/ui/unit/TextUnit;->TextUnitTypes:[Landroidx/compose/ui/unit/TextUnitType;

    .line 2005
    .line 2006
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 2007
    .line 2008
    iget-object v3, v3, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 2009
    .line 2010
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2011
    .line 2012
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2013
    .line 2014
    .line 2015
    if-eqz v2, :cond_56

    .line 2016
    .line 2017
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v2

    .line 2021
    check-cast v2, Landroidx/compose/ui/unit/TextUnit;

    .line 2022
    .line 2023
    goto :goto_36

    .line 2024
    :cond_56
    move-object v2, v10

    .line 2025
    :goto_36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2026
    .line 2027
    .line 2028
    iget-wide v5, v2, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 2029
    .line 2030
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2031
    .line 2032
    .line 2033
    move-result-object v0

    .line 2034
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2035
    .line 2036
    .line 2037
    if-eqz v0, :cond_57

    .line 2038
    .line 2039
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    .line 2041
    .line 2042
    move-result-object v0

    .line 2043
    move-object v10, v0

    .line 2044
    check-cast v10, Landroidx/compose/ui/unit/TextUnit;

    .line 2045
    .line 2046
    :cond_57
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2047
    .line 2048
    .line 2049
    iget-wide v2, v10, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 2050
    .line 2051
    invoke-direct {v1, v5, v6, v2, v3}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJ)V

    .line 2052
    .line 2053
    .line 2054
    return-object v1

    .line 2055
    :pswitch_21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2056
    .line 2057
    .line 2058
    move-object v0, v1

    .line 2059
    check-cast v0, Ljava/util/List;

    .line 2060
    .line 2061
    new-instance v1, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 2062
    .line 2063
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2064
    .line 2065
    .line 2066
    move-result-object v2

    .line 2067
    check-cast v2, Ljava/lang/Number;

    .line 2068
    .line 2069
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 2070
    .line 2071
    .line 2072
    move-result v2

    .line 2073
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2074
    .line 2075
    .line 2076
    move-result-object v0

    .line 2077
    check-cast v0, Ljava/lang/Number;

    .line 2078
    .line 2079
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 2080
    .line 2081
    .line 2082
    move-result v0

    .line 2083
    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    .line 2084
    .line 2085
    .line 2086
    return-object v1

    .line 2087
    :pswitch_22
    new-instance v0, Landroidx/compose/ui/text/style/TextDecoration;

    .line 2088
    .line 2089
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2090
    .line 2091
    .line 2092
    check-cast v1, Ljava/lang/Integer;

    .line 2093
    .line 2094
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2095
    .line 2096
    .line 2097
    move-result v1

    .line 2098
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    .line 2099
    .line 2100
    .line 2101
    return-object v0

    .line 2102
    :pswitch_23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2103
    .line 2104
    .line 2105
    move-object v0, v1

    .line 2106
    check-cast v0, Ljava/util/List;

    .line 2107
    .line 2108
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2109
    .line 2110
    .line 2111
    move-result-object v1

    .line 2112
    if-eqz v1, :cond_58

    .line 2113
    .line 2114
    check-cast v1, Ljava/lang/String;

    .line 2115
    .line 2116
    goto :goto_37

    .line 2117
    :cond_58
    move-object v1, v10

    .line 2118
    :goto_37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2119
    .line 2120
    .line 2121
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2122
    .line 2123
    .line 2124
    move-result-object v0

    .line 2125
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 2126
    .line 2127
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2128
    .line 2129
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2130
    .line 2131
    .line 2132
    move-result v3

    .line 2133
    if-eqz v3, :cond_59

    .line 2134
    .line 2135
    goto :goto_38

    .line 2136
    :cond_59
    if-eqz v0, :cond_5a

    .line 2137
    .line 2138
    iget-object v2, v2, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    .line 2139
    .line 2140
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 2141
    .line 2142
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    .line 2144
    .line 2145
    move-result-object v0

    .line 2146
    move-object v10, v0

    .line 2147
    check-cast v10, Landroidx/compose/ui/text/TextLinkStyles;

    .line 2148
    .line 2149
    :cond_5a
    :goto_38
    new-instance v0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 2150
    .line 2151
    invoke-direct {v0, v1, v10, v6}, Landroidx/compose/ui/text/LinkAnnotation$Url;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;I)V

    .line 2152
    .line 2153
    .line 2154
    return-object v0

    .line 2155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2156
    .line 2157
    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    .line 2166
    .line 2167
    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    .line 2183
    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
