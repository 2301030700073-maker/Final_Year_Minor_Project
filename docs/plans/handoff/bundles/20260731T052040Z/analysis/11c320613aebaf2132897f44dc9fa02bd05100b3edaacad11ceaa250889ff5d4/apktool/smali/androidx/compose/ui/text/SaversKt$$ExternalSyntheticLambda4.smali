.class public final synthetic Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;->$r8$classId:I

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
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    const/4 v3, 0x7

    .line 10
    const/16 v4, 0x2bc

    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x3

    .line 14
    const/4 v7, 0x2

    .line 15
    const/4 v8, 0x6

    .line 16
    const/4 v9, 0x1

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    move-object v0, v1

    .line 23
    check-cast v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/animation/ContentTransform;

    .line 26
    .line 27
    invoke-static {v4, v8, v11}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v4, v8, v11}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/TweenSpec;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :pswitch_0
    move-object v0, v1

    .line 48
    check-cast v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 49
    .line 50
    new-instance v0, Landroidx/compose/animation/ContentTransform;

    .line 51
    .line 52
    invoke-static {v4, v8, v11}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v4, v8, v11}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/TweenSpec;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :pswitch_1
    move-object v0, v1

    .line 73
    check-cast v0, Landroidx/navigation3/scene/Scene;

    .line 74
    .line 75
    new-instance v1, Landroidx/navigation3/ui/AnimatedSceneKey;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :pswitch_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    .line 83
    return-object v0

    .line 84
    :pswitch_3
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 85
    .line 86
    return-object v0

    .line 87
    :pswitch_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-object v0, v1

    .line 91
    check-cast v0, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    new-instance v1, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 98
    .line 99
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;-><init>(I)V

    .line 100
    .line 101
    .line 102
    return-object v1

    .line 103
    :pswitch_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    move-object v0, v1

    .line 107
    check-cast v0, Ljava/util/List;

    .line 108
    .line 109
    new-instance v1, Landroidx/compose/ui/text/style/TextMotion;

    .line 110
    .line 111
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    sget-object v4, Landroidx/compose/ui/text/ParagraphKt;->TextMotionLinearitySaver:Landroidx/cardview/widget/CardView$1;

    .line 122
    .line 123
    if-eqz v3, :cond_1

    .line 124
    .line 125
    :cond_0
    move-object v2, v11

    .line 126
    goto :goto_0

    .line 127
    :cond_1
    if-eqz v2, :cond_0

    .line 128
    .line 129
    iget-object v3, v4, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 132
    .line 133
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 138
    .line 139
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget v2, v2, Landroidx/compose/ui/text/style/TextMotion$Linearity;->value:I

    .line 143
    .line 144
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz v0, :cond_2

    .line 149
    .line 150
    move-object v11, v0

    .line 151
    check-cast v11, Ljava/lang/Boolean;

    .line 152
    .line 153
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/text/style/TextMotion;-><init>(IZ)V

    .line 161
    .line 162
    .line 163
    return-object v1

    .line 164
    :pswitch_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    move-object v0, v1

    .line 168
    check-cast v0, Ljava/lang/Integer;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    new-instance v1, Landroidx/compose/ui/text/style/LineBreak;

    .line 175
    .line 176
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    .line 177
    .line 178
    .line 179
    return-object v1

    .line 180
    :pswitch_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    move-object v0, v1

    .line 184
    check-cast v0, Ljava/lang/Integer;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    new-instance v1, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 191
    .line 192
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    .line 193
    .line 194
    .line 195
    return-object v1

    .line 196
    :pswitch_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    move-object v0, v1

    .line 200
    check-cast v0, Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-eqz v1, :cond_3

    .line 207
    .line 208
    check-cast v1, Ljava/lang/Boolean;

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_3
    move-object v1, v11

    .line 212
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 224
    .line 225
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    sget-object v3, Landroidx/compose/ui/text/ParagraphKt;->emojiSupportMatchSaver:Landroidx/cardview/widget/CardView$1;

    .line 230
    .line 231
    if-eqz v2, :cond_4

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_4
    if-eqz v0, :cond_5

    .line 235
    .line 236
    iget-object v2, v3, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 239
    .line 240
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    move-object v11, v0

    .line 245
    check-cast v11, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 246
    .line 247
    :cond_5
    :goto_2
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    iget v0, v11, Landroidx/compose/ui/text/EmojiSupportMatch;->value:I

    .line 251
    .line 252
    new-instance v2, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 253
    .line 254
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>(IZ)V

    .line 255
    .line 256
    .line 257
    return-object v2

    .line 258
    :pswitch_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    move-object v0, v1

    .line 262
    check-cast v0, Ljava/util/List;

    .line 263
    .line 264
    new-instance v12, Landroidx/compose/ui/text/SpanStyle;

    .line 265
    .line 266
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    sget v4, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 271
    .line 272
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 273
    .line 274
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    if-eqz v1, :cond_7

    .line 278
    .line 279
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v10

    .line 283
    if-eqz v10, :cond_6

    .line 284
    .line 285
    sget-wide v13, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 286
    .line 287
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 288
    .line 289
    invoke-direct {v1, v13, v14}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 290
    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_6
    check-cast v1, Ljava/lang/Integer;

    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    invoke-static {v1}, Landroidx/compose/ui/graphics/Brush;->Color(I)J

    .line 300
    .line 301
    .line 302
    move-result-wide v13

    .line 303
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 304
    .line 305
    invoke-direct {v1, v13, v14}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_7
    move-object v1, v11

    .line 310
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    iget-wide v13, v1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 314
    .line 315
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    sget-object v9, Landroidx/compose/ui/unit/TextUnit;->TextUnitTypes:[Landroidx/compose/ui/unit/TextUnitType;

    .line 320
    .line 321
    sget-object v9, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 322
    .line 323
    iget-object v9, v9, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 324
    .line 325
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    if-eqz v1, :cond_8

    .line 329
    .line 330
    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_8
    move-object v1, v11

    .line 338
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    move-object/from16 p1, v12

    .line 342
    .line 343
    iget-wide v11, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 344
    .line 345
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    sget-object v7, Landroidx/compose/ui/text/font/FontWeight;->W600:Landroidx/compose/ui/text/font/FontWeight;

    .line 350
    .line 351
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->FontWeightSaver:Landroidx/cardview/widget/CardView$1;

    .line 352
    .line 353
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    if-eqz v10, :cond_a

    .line 358
    .line 359
    :cond_9
    const/16 v17, 0x0

    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_a
    if-eqz v1, :cond_9

    .line 363
    .line 364
    iget-object v7, v7, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 367
    .line 368
    invoke-interface {v7, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    check-cast v1, Landroidx/compose/ui/text/font/FontWeight;

    .line 373
    .line 374
    move-object/from16 v17, v1

    .line 375
    .line 376
    :goto_5
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->FontStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 381
    .line 382
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    if-eqz v7, :cond_c

    .line 387
    .line 388
    :cond_b
    const/16 v18, 0x0

    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_c
    if-eqz v1, :cond_b

    .line 392
    .line 393
    iget-object v6, v6, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 396
    .line 397
    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    check-cast v1, Landroidx/compose/ui/text/font/FontStyle;

    .line 402
    .line 403
    move-object/from16 v18, v1

    .line 404
    .line 405
    :goto_6
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->FontSynthesisSaver:Landroidx/cardview/widget/CardView$1;

    .line 410
    .line 411
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    if-eqz v6, :cond_e

    .line 416
    .line 417
    :cond_d
    const/16 v19, 0x0

    .line 418
    .line 419
    goto :goto_7

    .line 420
    :cond_e
    if-eqz v1, :cond_d

    .line 421
    .line 422
    iget-object v5, v5, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 425
    .line 426
    invoke-interface {v5, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    check-cast v1, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 431
    .line 432
    move-object/from16 v19, v1

    .line 433
    .line 434
    :goto_7
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    if-eqz v1, :cond_f

    .line 439
    .line 440
    check-cast v1, Ljava/lang/String;

    .line 441
    .line 442
    move-object/from16 v21, v1

    .line 443
    .line 444
    goto :goto_8

    .line 445
    :cond_f
    const/16 v21, 0x0

    .line 446
    .line 447
    :goto_8
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    if-eqz v1, :cond_10

    .line 455
    .line 456
    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 461
    .line 462
    goto :goto_9

    .line 463
    :cond_10
    const/4 v1, 0x0

    .line 464
    :goto_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    iget-wide v5, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 468
    .line 469
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->BaselineShiftSaver:Landroidx/cardview/widget/CardView$1;

    .line 474
    .line 475
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    if-eqz v3, :cond_12

    .line 480
    .line 481
    :cond_11
    const/16 v24, 0x0

    .line 482
    .line 483
    goto :goto_a

    .line 484
    :cond_12
    if-eqz v1, :cond_11

    .line 485
    .line 486
    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 487
    .line 488
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 489
    .line 490
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    check-cast v1, Landroidx/compose/ui/text/style/BaselineShift;

    .line 495
    .line 496
    move-object/from16 v24, v1

    .line 497
    .line 498
    :goto_a
    const/16 v1, 0x9

    .line 499
    .line 500
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->TextGeometricTransformSaver:Landroidx/cardview/widget/CardView$1;

    .line 505
    .line 506
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    if-eqz v3, :cond_14

    .line 511
    .line 512
    :cond_13
    const/16 v25, 0x0

    .line 513
    .line 514
    goto :goto_b

    .line 515
    :cond_14
    if-eqz v1, :cond_13

    .line 516
    .line 517
    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 520
    .line 521
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    check-cast v1, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 526
    .line 527
    move-object/from16 v25, v1

    .line 528
    .line 529
    :goto_b
    const/16 v1, 0xa

    .line 530
    .line 531
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    sget-object v2, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    .line 536
    .line 537
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->LocaleListSaver:Landroidx/cardview/widget/CardView$1;

    .line 538
    .line 539
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    if-eqz v3, :cond_16

    .line 544
    .line 545
    :cond_15
    const/16 v26, 0x0

    .line 546
    .line 547
    goto :goto_c

    .line 548
    :cond_16
    if-eqz v1, :cond_15

    .line 549
    .line 550
    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 553
    .line 554
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    check-cast v1, Landroidx/compose/ui/text/intl/LocaleList;

    .line 559
    .line 560
    move-object/from16 v26, v1

    .line 561
    .line 562
    :goto_c
    const/16 v1, 0xb

    .line 563
    .line 564
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    if-eqz v1, :cond_18

    .line 572
    .line 573
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v2

    .line 577
    if-eqz v2, :cond_17

    .line 578
    .line 579
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 580
    .line 581
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    .line 582
    .line 583
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 584
    .line 585
    .line 586
    goto :goto_d

    .line 587
    :cond_17
    check-cast v1, Ljava/lang/Integer;

    .line 588
    .line 589
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    invoke-static {v1}, Landroidx/compose/ui/graphics/Brush;->Color(I)J

    .line 594
    .line 595
    .line 596
    move-result-wide v1

    .line 597
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    .line 598
    .line 599
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 600
    .line 601
    .line 602
    goto :goto_d

    .line 603
    :cond_18
    const/4 v3, 0x0

    .line 604
    :goto_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    iget-wide v1, v3, Landroidx/compose/ui/graphics/Color;->value:J

    .line 608
    .line 609
    const/16 v3, 0xc

    .line 610
    .line 611
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->TextDecorationSaver:Landroidx/cardview/widget/CardView$1;

    .line 616
    .line 617
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    move-result v8

    .line 621
    if-eqz v8, :cond_1a

    .line 622
    .line 623
    :cond_19
    const/16 v29, 0x0

    .line 624
    .line 625
    goto :goto_e

    .line 626
    :cond_1a
    if-eqz v3, :cond_19

    .line 627
    .line 628
    iget-object v7, v7, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 629
    .line 630
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 631
    .line 632
    invoke-interface {v7, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    check-cast v3, Landroidx/compose/ui/text/style/TextDecoration;

    .line 637
    .line 638
    move-object/from16 v29, v3

    .line 639
    .line 640
    :goto_e
    const/16 v3, 0xd

    .line 641
    .line 642
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    sget-object v3, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    .line 647
    .line 648
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->ShadowSaver:Landroidx/cardview/widget/CardView$1;

    .line 649
    .line 650
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v4

    .line 654
    if-eqz v4, :cond_1c

    .line 655
    .line 656
    :cond_1b
    const/16 v30, 0x0

    .line 657
    .line 658
    goto :goto_f

    .line 659
    :cond_1c
    if-eqz v0, :cond_1b

    .line 660
    .line 661
    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 662
    .line 663
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 664
    .line 665
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    check-cast v0, Landroidx/compose/ui/graphics/Shadow;

    .line 670
    .line 671
    move-object/from16 v30, v0

    .line 672
    .line 673
    :goto_f
    const v31, 0xc020

    .line 674
    .line 675
    .line 676
    const/16 v20, 0x0

    .line 677
    .line 678
    move-wide/from16 v27, v1

    .line 679
    .line 680
    move-wide/from16 v22, v5

    .line 681
    .line 682
    move-wide v15, v11

    .line 683
    move-object/from16 v12, p1

    .line 684
    .line 685
    invoke-direct/range {v12 .. v31}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 686
    .line 687
    .line 688
    return-object v12

    .line 689
    :pswitch_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 690
    .line 691
    .line 692
    move-object v0, v1

    .line 693
    check-cast v0, Ljava/util/List;

    .line 694
    .line 695
    new-instance v11, Landroidx/compose/ui/text/ParagraphStyle;

    .line 696
    .line 697
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->TextAlignSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 702
    .line 703
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 704
    .line 705
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    if-eqz v1, :cond_1d

    .line 709
    .line 710
    iget-object v4, v4, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 711
    .line 712
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    check-cast v1, Landroidx/compose/ui/text/style/TextAlign;

    .line 717
    .line 718
    goto :goto_10

    .line 719
    :cond_1d
    const/4 v1, 0x0

    .line 720
    :goto_10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 721
    .line 722
    .line 723
    iget v12, v1, Landroidx/compose/ui/text/style/TextAlign;->value:I

    .line 724
    .line 725
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->TextDirectionSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 730
    .line 731
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    if-eqz v1, :cond_1e

    .line 735
    .line 736
    iget-object v4, v4, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 737
    .line 738
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    check-cast v1, Landroidx/compose/ui/text/style/TextDirection;

    .line 743
    .line 744
    goto :goto_11

    .line 745
    :cond_1e
    const/4 v1, 0x0

    .line 746
    :goto_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    .line 748
    .line 749
    iget v13, v1, Landroidx/compose/ui/text/style/TextDirection;->value:I

    .line 750
    .line 751
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    sget-object v4, Landroidx/compose/ui/unit/TextUnit;->TextUnitTypes:[Landroidx/compose/ui/unit/TextUnitType;

    .line 756
    .line 757
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 758
    .line 759
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    if-eqz v1, :cond_1f

    .line 763
    .line 764
    iget-object v4, v4, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 765
    .line 766
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 771
    .line 772
    goto :goto_12

    .line 773
    :cond_1f
    const/4 v1, 0x0

    .line 774
    :goto_12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    iget-wide v14, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 778
    .line 779
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    sget-object v4, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    .line 784
    .line 785
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->TextIndentSaver:Landroidx/cardview/widget/CardView$1;

    .line 786
    .line 787
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v6

    .line 791
    if-eqz v6, :cond_21

    .line 792
    .line 793
    :cond_20
    const/16 v16, 0x0

    .line 794
    .line 795
    goto :goto_13

    .line 796
    :cond_21
    if-eqz v1, :cond_20

    .line 797
    .line 798
    iget-object v4, v4, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 799
    .line 800
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 801
    .line 802
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    check-cast v1, Landroidx/compose/ui/text/style/TextIndent;

    .line 807
    .line 808
    move-object/from16 v16, v1

    .line 809
    .line 810
    :goto_13
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v4

    .line 818
    sget-object v5, Landroidx/compose/ui/text/ParagraphKt;->PlatformParagraphStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 819
    .line 820
    if-eqz v4, :cond_23

    .line 821
    .line 822
    :cond_22
    const/16 v17, 0x0

    .line 823
    .line 824
    goto :goto_14

    .line 825
    :cond_23
    if-eqz v1, :cond_22

    .line 826
    .line 827
    iget-object v4, v5, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 828
    .line 829
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 830
    .line 831
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    check-cast v1, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 836
    .line 837
    move-object/from16 v17, v1

    .line 838
    .line 839
    :goto_14
    const/4 v1, 0x5

    .line 840
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    sget-object v4, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 845
    .line 846
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 847
    .line 848
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v5

    .line 852
    if-eqz v5, :cond_25

    .line 853
    .line 854
    :cond_24
    const/16 v18, 0x0

    .line 855
    .line 856
    goto :goto_15

    .line 857
    :cond_25
    if-eqz v1, :cond_24

    .line 858
    .line 859
    iget-object v4, v4, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 860
    .line 861
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 862
    .line 863
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    check-cast v1, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 868
    .line 869
    move-object/from16 v18, v1

    .line 870
    .line 871
    :goto_15
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 876
    .line 877
    .line 878
    move-result v4

    .line 879
    sget-object v5, Landroidx/compose/ui/text/ParagraphKt;->LineBreakSaver:Landroidx/cardview/widget/CardView$1;

    .line 880
    .line 881
    if-eqz v4, :cond_27

    .line 882
    .line 883
    :cond_26
    const/4 v1, 0x0

    .line 884
    goto :goto_16

    .line 885
    :cond_27
    if-eqz v1, :cond_26

    .line 886
    .line 887
    iget-object v4, v5, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 888
    .line 889
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 890
    .line 891
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v1

    .line 895
    check-cast v1, Landroidx/compose/ui/text/style/LineBreak;

    .line 896
    .line 897
    :goto_16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 898
    .line 899
    .line 900
    iget v1, v1, Landroidx/compose/ui/text/style/LineBreak;->mask:I

    .line 901
    .line 902
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v3

    .line 906
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->HyphensSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 907
    .line 908
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    if-eqz v3, :cond_28

    .line 912
    .line 913
    iget-object v4, v4, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 914
    .line 915
    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    check-cast v3, Landroidx/compose/ui/text/style/Hyphens;

    .line 920
    .line 921
    goto :goto_17

    .line 922
    :cond_28
    const/4 v3, 0x0

    .line 923
    :goto_17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 924
    .line 925
    .line 926
    iget v3, v3, Landroidx/compose/ui/text/style/Hyphens;->value:I

    .line 927
    .line 928
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 933
    .line 934
    .line 935
    move-result v2

    .line 936
    sget-object v4, Landroidx/compose/ui/text/ParagraphKt;->TextMotionSaver:Landroidx/cardview/widget/CardView$1;

    .line 937
    .line 938
    if-eqz v2, :cond_2a

    .line 939
    .line 940
    :cond_29
    move/from16 v19, v1

    .line 941
    .line 942
    move/from16 v20, v3

    .line 943
    .line 944
    const/16 v21, 0x0

    .line 945
    .line 946
    goto :goto_18

    .line 947
    :cond_2a
    if-eqz v0, :cond_29

    .line 948
    .line 949
    iget-object v2, v4, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 950
    .line 951
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 952
    .line 953
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    check-cast v0, Landroidx/compose/ui/text/style/TextMotion;

    .line 958
    .line 959
    move-object/from16 v21, v0

    .line 960
    .line 961
    move/from16 v19, v1

    .line 962
    .line 963
    move/from16 v20, v3

    .line 964
    .line 965
    :goto_18
    invoke-direct/range {v11 .. v21}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    .line 966
    .line 967
    .line 968
    return-object v11

    .line 969
    :pswitch_b
    new-instance v0, Landroidx/compose/ui/text/UrlAnnotation;

    .line 970
    .line 971
    if-eqz v1, :cond_2b

    .line 972
    .line 973
    move-object v11, v1

    .line 974
    check-cast v11, Ljava/lang/String;

    .line 975
    .line 976
    goto :goto_19

    .line 977
    :cond_2b
    const/4 v11, 0x0

    .line 978
    :goto_19
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 979
    .line 980
    .line 981
    invoke-direct {v0, v11}, Landroidx/compose/ui/text/UrlAnnotation;-><init>(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    return-object v0

    .line 985
    :pswitch_c
    new-instance v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 986
    .line 987
    if-eqz v1, :cond_2c

    .line 988
    .line 989
    move-object v11, v1

    .line 990
    check-cast v11, Ljava/lang/String;

    .line 991
    .line 992
    goto :goto_1a

    .line 993
    :cond_2c
    const/4 v11, 0x0

    .line 994
    :goto_1a
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 995
    .line 996
    .line 997
    invoke-direct {v0, v11}, Landroidx/compose/ui/text/VerbatimTtsAnnotation;-><init>(Ljava/lang/String;)V

    .line 998
    .line 999
    .line 1000
    return-object v0

    .line 1001
    :pswitch_d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1002
    .line 1003
    .line 1004
    move-object v0, v1

    .line 1005
    check-cast v0, Ljava/lang/Integer;

    .line 1006
    .line 1007
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1008
    .line 1009
    .line 1010
    move-result v0

    .line 1011
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 1012
    .line 1013
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;-><init>(I)V

    .line 1014
    .line 1015
    .line 1016
    return-object v1

    .line 1017
    :pswitch_e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1018
    .line 1019
    .line 1020
    move-object v0, v1

    .line 1021
    check-cast v0, Ljava/util/List;

    .line 1022
    .line 1023
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v1

    .line 1027
    if-eqz v1, :cond_2d

    .line 1028
    .line 1029
    check-cast v1, Landroidx/compose/ui/text/AnnotationType;

    .line 1030
    .line 1031
    goto :goto_1b

    .line 1032
    :cond_2d
    const/4 v1, 0x0

    .line 1033
    :goto_1b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1034
    .line 1035
    .line 1036
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v2

    .line 1040
    if-eqz v2, :cond_2e

    .line 1041
    .line 1042
    check-cast v2, Ljava/lang/Integer;

    .line 1043
    .line 1044
    goto :goto_1c

    .line 1045
    :cond_2e
    const/4 v2, 0x0

    .line 1046
    :goto_1c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1050
    .line 1051
    .line 1052
    move-result v2

    .line 1053
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v3

    .line 1057
    if-eqz v3, :cond_2f

    .line 1058
    .line 1059
    check-cast v3, Ljava/lang/Integer;

    .line 1060
    .line 1061
    goto :goto_1d

    .line 1062
    :cond_2f
    const/4 v3, 0x0

    .line 1063
    :goto_1d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 1067
    .line 1068
    .line 1069
    move-result v3

    .line 1070
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v4

    .line 1074
    if-eqz v4, :cond_30

    .line 1075
    .line 1076
    check-cast v4, Ljava/lang/String;

    .line 1077
    .line 1078
    goto :goto_1e

    .line 1079
    :cond_30
    const/4 v4, 0x0

    .line 1080
    :goto_1e
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 1084
    .line 1085
    .line 1086
    move-result v1

    .line 1087
    packed-switch v1, :pswitch_data_1

    .line 1088
    .line 1089
    .line 1090
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 1091
    .line 1092
    .line 1093
    const/4 v11, 0x0

    .line 1094
    goto/16 :goto_27

    .line 1095
    .line 1096
    :pswitch_f
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    if-eqz v0, :cond_31

    .line 1101
    .line 1102
    move-object v11, v0

    .line 1103
    check-cast v11, Ljava/lang/String;

    .line 1104
    .line 1105
    goto :goto_1f

    .line 1106
    :cond_31
    const/4 v11, 0x0

    .line 1107
    :goto_1f
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1108
    .line 1109
    .line 1110
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1111
    .line 1112
    new-instance v1, Landroidx/compose/ui/text/StringAnnotation;

    .line 1113
    .line 1114
    invoke-direct {v1, v11}, Landroidx/compose/ui/text/StringAnnotation;-><init>(Ljava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    invoke-direct {v0, v2, v4, v1, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 1118
    .line 1119
    .line 1120
    :goto_20
    move-object v11, v0

    .line 1121
    goto/16 :goto_27

    .line 1122
    .line 1123
    :pswitch_10
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->ClickableSaver:Landroidx/cardview/widget/CardView$1;

    .line 1128
    .line 1129
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1130
    .line 1131
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1132
    .line 1133
    .line 1134
    move-result v5

    .line 1135
    if-eqz v5, :cond_33

    .line 1136
    .line 1137
    :cond_32
    const/4 v11, 0x0

    .line 1138
    goto :goto_21

    .line 1139
    :cond_33
    if-eqz v0, :cond_32

    .line 1140
    .line 1141
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1142
    .line 1143
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1144
    .line 1145
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    move-object v11, v0

    .line 1150
    check-cast v11, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1151
    .line 1152
    :goto_21
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1153
    .line 1154
    .line 1155
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1156
    .line 1157
    invoke-direct {v0, v2, v4, v11, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 1158
    .line 1159
    .line 1160
    goto :goto_20

    .line 1161
    :pswitch_11
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v0

    .line 1165
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->LinkSaver:Landroidx/cardview/widget/CardView$1;

    .line 1166
    .line 1167
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1168
    .line 1169
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result v5

    .line 1173
    if-eqz v5, :cond_35

    .line 1174
    .line 1175
    :cond_34
    const/4 v11, 0x0

    .line 1176
    goto :goto_22

    .line 1177
    :cond_35
    if-eqz v0, :cond_34

    .line 1178
    .line 1179
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1180
    .line 1181
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1182
    .line 1183
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v0

    .line 1187
    move-object v11, v0

    .line 1188
    check-cast v11, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1189
    .line 1190
    :goto_22
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1191
    .line 1192
    .line 1193
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1194
    .line 1195
    invoke-direct {v0, v2, v4, v11, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 1196
    .line 1197
    .line 1198
    goto :goto_20

    .line 1199
    :pswitch_12
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->UrlAnnotationSaver:Landroidx/cardview/widget/CardView$1;

    .line 1204
    .line 1205
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1206
    .line 1207
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1208
    .line 1209
    .line 1210
    move-result v5

    .line 1211
    if-eqz v5, :cond_37

    .line 1212
    .line 1213
    :cond_36
    const/4 v11, 0x0

    .line 1214
    goto :goto_23

    .line 1215
    :cond_37
    if-eqz v0, :cond_36

    .line 1216
    .line 1217
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1218
    .line 1219
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1220
    .line 1221
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v0

    .line 1225
    move-object v11, v0

    .line 1226
    check-cast v11, Landroidx/compose/ui/text/UrlAnnotation;

    .line 1227
    .line 1228
    :goto_23
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1229
    .line 1230
    .line 1231
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1232
    .line 1233
    invoke-direct {v0, v2, v4, v11, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 1234
    .line 1235
    .line 1236
    goto :goto_20

    .line 1237
    :pswitch_13
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->VerbatimTtsAnnotationSaver:Landroidx/cardview/widget/CardView$1;

    .line 1242
    .line 1243
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1244
    .line 1245
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    move-result v5

    .line 1249
    if-eqz v5, :cond_39

    .line 1250
    .line 1251
    :cond_38
    const/4 v11, 0x0

    .line 1252
    goto :goto_24

    .line 1253
    :cond_39
    if-eqz v0, :cond_38

    .line 1254
    .line 1255
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1256
    .line 1257
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1258
    .line 1259
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v0

    .line 1263
    move-object v11, v0

    .line 1264
    check-cast v11, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 1265
    .line 1266
    :goto_24
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1267
    .line 1268
    .line 1269
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1270
    .line 1271
    invoke-direct {v0, v2, v4, v11, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 1272
    .line 1273
    .line 1274
    goto/16 :goto_20

    .line 1275
    .line 1276
    :pswitch_14
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v0

    .line 1280
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1281
    .line 1282
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1283
    .line 1284
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1285
    .line 1286
    .line 1287
    move-result v5

    .line 1288
    if-eqz v5, :cond_3b

    .line 1289
    .line 1290
    :cond_3a
    const/4 v11, 0x0

    .line 1291
    goto :goto_25

    .line 1292
    :cond_3b
    if-eqz v0, :cond_3a

    .line 1293
    .line 1294
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1295
    .line 1296
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1297
    .line 1298
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v0

    .line 1302
    move-object v11, v0

    .line 1303
    check-cast v11, Landroidx/compose/ui/text/SpanStyle;

    .line 1304
    .line 1305
    :goto_25
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1306
    .line 1307
    .line 1308
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1309
    .line 1310
    invoke-direct {v0, v2, v4, v11, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 1311
    .line 1312
    .line 1313
    goto/16 :goto_20

    .line 1314
    .line 1315
    :pswitch_15
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v0

    .line 1319
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->ParagraphStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1320
    .line 1321
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1322
    .line 1323
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1324
    .line 1325
    .line 1326
    move-result v5

    .line 1327
    if-eqz v5, :cond_3d

    .line 1328
    .line 1329
    :cond_3c
    const/4 v11, 0x0

    .line 1330
    goto :goto_26

    .line 1331
    :cond_3d
    if-eqz v0, :cond_3c

    .line 1332
    .line 1333
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1334
    .line 1335
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1336
    .line 1337
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v0

    .line 1341
    move-object v11, v0

    .line 1342
    check-cast v11, Landroidx/compose/ui/text/ParagraphStyle;

    .line 1343
    .line 1344
    :goto_26
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1345
    .line 1346
    .line 1347
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1348
    .line 1349
    invoke-direct {v0, v2, v4, v11, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 1350
    .line 1351
    .line 1352
    goto/16 :goto_20

    .line 1353
    .line 1354
    :goto_27
    return-object v11

    .line 1355
    :pswitch_16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1356
    .line 1357
    .line 1358
    move-object v0, v1

    .line 1359
    check-cast v0, Ljava/lang/Integer;

    .line 1360
    .line 1361
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1362
    .line 1363
    .line 1364
    move-result v0

    .line 1365
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 1366
    .line 1367
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;-><init>(I)V

    .line 1368
    .line 1369
    .line 1370
    return-object v1

    .line 1371
    :pswitch_17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1372
    .line 1373
    .line 1374
    move-object v0, v1

    .line 1375
    check-cast v0, Ljava/lang/Float;

    .line 1376
    .line 1377
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 1378
    .line 1379
    .line 1380
    move-result v0

    .line 1381
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->constructor-impl(F)V

    .line 1382
    .line 1383
    .line 1384
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 1385
    .line 1386
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;-><init>(F)V

    .line 1387
    .line 1388
    .line 1389
    return-object v1

    .line 1390
    :pswitch_18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1391
    .line 1392
    .line 1393
    move-object v0, v1

    .line 1394
    check-cast v0, Ljava/util/List;

    .line 1395
    .line 1396
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 1397
    .line 1398
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v2

    .line 1402
    sget v3, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:F

    .line 1403
    .line 1404
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleAlignmentSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1405
    .line 1406
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1407
    .line 1408
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1409
    .line 1410
    .line 1411
    if-eqz v2, :cond_3e

    .line 1412
    .line 1413
    iget-object v3, v3, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 1414
    .line 1415
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v2

    .line 1419
    check-cast v2, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 1420
    .line 1421
    goto :goto_28

    .line 1422
    :cond_3e
    const/4 v2, 0x0

    .line 1423
    :goto_28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1424
    .line 1425
    .line 1426
    iget v2, v2, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topRatio:F

    .line 1427
    .line 1428
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v3

    .line 1432
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleTrimSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1433
    .line 1434
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1435
    .line 1436
    .line 1437
    if-eqz v3, :cond_3f

    .line 1438
    .line 1439
    iget-object v5, v5, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 1440
    .line 1441
    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v3

    .line 1445
    check-cast v3, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 1446
    .line 1447
    goto :goto_29

    .line 1448
    :cond_3f
    const/4 v3, 0x0

    .line 1449
    :goto_29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1450
    .line 1451
    .line 1452
    iget v3, v3, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->value:I

    .line 1453
    .line 1454
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v0

    .line 1458
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleModeSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1459
    .line 1460
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1461
    .line 1462
    .line 1463
    if-eqz v0, :cond_40

    .line 1464
    .line 1465
    iget-object v4, v5, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 1466
    .line 1467
    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v0

    .line 1471
    move-object v11, v0

    .line 1472
    check-cast v11, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 1473
    .line 1474
    goto :goto_2a

    .line 1475
    :cond_40
    const/4 v11, 0x0

    .line 1476
    :goto_2a
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1477
    .line 1478
    .line 1479
    iget v0, v11, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->value:I

    .line 1480
    .line 1481
    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(FII)V

    .line 1482
    .line 1483
    .line 1484
    return-object v1

    .line 1485
    :pswitch_19
    new-instance v0, Landroidx/compose/ui/text/intl/Locale;

    .line 1486
    .line 1487
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1488
    .line 1489
    .line 1490
    check-cast v1, Ljava/lang/String;

    .line 1491
    .line 1492
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v2

    .line 1496
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v3

    .line 1500
    const-string/jumbo v4, "und"

    .line 1501
    .line 1502
    .line 1503
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1504
    .line 1505
    .line 1506
    move-result v3

    .line 1507
    if-eqz v3, :cond_41

    .line 1508
    .line 1509
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 1510
    .line 1511
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1512
    .line 1513
    const-string v5, "The language tag "

    .line 1514
    .line 1515
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    .line 1520
    .line 1521
    const-string v1, " is not well-formed. Locale is resolved to Undetermined. Note that underscore \'_\' is not a valid subtag delimiter and must be replaced with \'-\'."

    .line 1522
    .line 1523
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    .line 1525
    .line 1526
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v1

    .line 1530
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1531
    .line 1532
    .line 1533
    :cond_41
    invoke-direct {v0, v2}, Landroidx/compose/ui/text/intl/Locale;-><init>(Ljava/util/Locale;)V

    .line 1534
    .line 1535
    .line 1536
    return-object v0

    .line 1537
    :pswitch_1a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1538
    .line 1539
    .line 1540
    move-object v0, v1

    .line 1541
    check-cast v0, Ljava/util/List;

    .line 1542
    .line 1543
    new-instance v1, Ljava/util/ArrayList;

    .line 1544
    .line 1545
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1546
    .line 1547
    .line 1548
    move-result v2

    .line 1549
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1550
    .line 1551
    .line 1552
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 1553
    .line 1554
    .line 1555
    move-result v2

    .line 1556
    :goto_2b
    if-ge v10, v2, :cond_44

    .line 1557
    .line 1558
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v3

    .line 1562
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->LocaleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1563
    .line 1564
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1565
    .line 1566
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v5

    .line 1570
    if-eqz v5, :cond_43

    .line 1571
    .line 1572
    :cond_42
    const/4 v3, 0x0

    .line 1573
    goto :goto_2c

    .line 1574
    :cond_43
    if-eqz v3, :cond_42

    .line 1575
    .line 1576
    iget-object v4, v4, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1577
    .line 1578
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1579
    .line 1580
    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v3

    .line 1584
    check-cast v3, Landroidx/compose/ui/text/intl/Locale;

    .line 1585
    .line 1586
    :goto_2c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    .line 1591
    .line 1592
    add-int/lit8 v10, v10, 0x1

    .line 1593
    .line 1594
    goto :goto_2b

    .line 1595
    :cond_44
    new-instance v0, Landroidx/compose/ui/text/intl/LocaleList;

    .line 1596
    .line 1597
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/intl/LocaleList;-><init>(Ljava/util/List;)V

    .line 1598
    .line 1599
    .line 1600
    return-object v0

    .line 1601
    :pswitch_1b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1602
    .line 1603
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1604
    .line 1605
    .line 1606
    move-result v0

    .line 1607
    if-eqz v0, :cond_45

    .line 1608
    .line 1609
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 1610
    .line 1611
    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1617
    .line 1618
    .line 1619
    goto :goto_2f

    .line 1620
    :cond_45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1621
    .line 1622
    .line 1623
    move-object v0, v1

    .line 1624
    check-cast v0, Ljava/util/List;

    .line 1625
    .line 1626
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v1

    .line 1630
    if-eqz v1, :cond_46

    .line 1631
    .line 1632
    check-cast v1, Ljava/lang/Float;

    .line 1633
    .line 1634
    goto :goto_2d

    .line 1635
    :cond_46
    const/4 v1, 0x0

    .line 1636
    :goto_2d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 1640
    .line 1641
    .line 1642
    move-result v1

    .line 1643
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v0

    .line 1647
    if-eqz v0, :cond_47

    .line 1648
    .line 1649
    move-object v11, v0

    .line 1650
    check-cast v11, Ljava/lang/Float;

    .line 1651
    .line 1652
    goto :goto_2e

    .line 1653
    :cond_47
    const/4 v11, 0x0

    .line 1654
    :goto_2e
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1655
    .line 1656
    .line 1657
    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    .line 1658
    .line 1659
    .line 1660
    move-result v0

    .line 1661
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1662
    .line 1663
    .line 1664
    move-result v1

    .line 1665
    int-to-long v1, v1

    .line 1666
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1667
    .line 1668
    .line 1669
    move-result v0

    .line 1670
    int-to-long v3, v0

    .line 1671
    const/16 v0, 0x20

    .line 1672
    .line 1673
    shl-long v0, v1, v0

    .line 1674
    .line 1675
    const-wide v5, 0xffffffffL

    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    and-long/2addr v3, v5

    .line 1681
    or-long/2addr v0, v3

    .line 1682
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    .line 1683
    .line 1684
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1685
    .line 1686
    .line 1687
    move-object v0, v2

    .line 1688
    :goto_2f
    return-object v0

    .line 1689
    :pswitch_1c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v0

    .line 1693
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1694
    .line 1695
    .line 1696
    move-result v0

    .line 1697
    if-eqz v0, :cond_48

    .line 1698
    .line 1699
    new-instance v0, Landroidx/compose/ui/unit/TextUnitType;

    .line 1700
    .line 1701
    const-wide v1, 0x200000000L

    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 1707
    .line 1708
    .line 1709
    goto :goto_30

    .line 1710
    :cond_48
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v0

    .line 1714
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1715
    .line 1716
    .line 1717
    move-result v0

    .line 1718
    if-eqz v0, :cond_49

    .line 1719
    .line 1720
    new-instance v0, Landroidx/compose/ui/unit/TextUnitType;

    .line 1721
    .line 1722
    const-wide v1, 0x100000000L

    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 1728
    .line 1729
    .line 1730
    goto :goto_30

    .line 1731
    :cond_49
    new-instance v0, Landroidx/compose/ui/unit/TextUnitType;

    .line 1732
    .line 1733
    const-wide/16 v1, 0x0

    .line 1734
    .line 1735
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 1736
    .line 1737
    .line 1738
    :goto_30
    return-object v0

    .line 1739
    :pswitch_1d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1740
    .line 1741
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1742
    .line 1743
    .line 1744
    move-result v2

    .line 1745
    if-eqz v2, :cond_4a

    .line 1746
    .line 1747
    sget-wide v0, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    .line 1748
    .line 1749
    new-instance v2, Landroidx/compose/ui/unit/TextUnit;

    .line 1750
    .line 1751
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 1752
    .line 1753
    .line 1754
    goto :goto_33

    .line 1755
    :cond_4a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1756
    .line 1757
    .line 1758
    check-cast v1, Ljava/util/List;

    .line 1759
    .line 1760
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v2

    .line 1764
    if-eqz v2, :cond_4b

    .line 1765
    .line 1766
    check-cast v2, Ljava/lang/Float;

    .line 1767
    .line 1768
    goto :goto_31

    .line 1769
    :cond_4b
    const/4 v2, 0x0

    .line 1770
    :goto_31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1771
    .line 1772
    .line 1773
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 1774
    .line 1775
    .line 1776
    move-result v2

    .line 1777
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v1

    .line 1781
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->TextUnitTypeSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1782
    .line 1783
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1784
    .line 1785
    .line 1786
    if-eqz v1, :cond_4c

    .line 1787
    .line 1788
    iget-object v0, v3, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 1789
    .line 1790
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v0

    .line 1794
    move-object v11, v0

    .line 1795
    check-cast v11, Landroidx/compose/ui/unit/TextUnitType;

    .line 1796
    .line 1797
    goto :goto_32

    .line 1798
    :cond_4c
    const/4 v11, 0x0

    .line 1799
    :goto_32
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1800
    .line 1801
    .line 1802
    iget-wide v0, v11, Landroidx/compose/ui/unit/TextUnitType;->type:J

    .line 1803
    .line 1804
    invoke-static {v0, v1, v2}, Lkotlin/math/MathKt;->pack(JF)J

    .line 1805
    .line 1806
    .line 1807
    move-result-wide v0

    .line 1808
    new-instance v2, Landroidx/compose/ui/unit/TextUnit;

    .line 1809
    .line 1810
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 1811
    .line 1812
    .line 1813
    :goto_33
    return-object v2

    .line 1814
    :pswitch_1e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1815
    .line 1816
    .line 1817
    move-object v0, v1

    .line 1818
    check-cast v0, Ljava/lang/Integer;

    .line 1819
    .line 1820
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1821
    .line 1822
    .line 1823
    move-result v0

    .line 1824
    new-instance v1, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 1825
    .line 1826
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    .line 1827
    .line 1828
    .line 1829
    return-object v1

    .line 1830
    :pswitch_1f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1831
    .line 1832
    .line 1833
    move-object v0, v1

    .line 1834
    check-cast v0, Ljava/lang/Integer;

    .line 1835
    .line 1836
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1837
    .line 1838
    .line 1839
    move-result v0

    .line 1840
    new-instance v1, Landroidx/compose/ui/text/font/FontStyle;

    .line 1841
    .line 1842
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 1843
    .line 1844
    .line 1845
    return-object v1

    .line 1846
    :pswitch_20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1847
    .line 1848
    .line 1849
    move-object v0, v1

    .line 1850
    check-cast v0, Ljava/util/List;

    .line 1851
    .line 1852
    new-instance v1, Ljava/util/ArrayList;

    .line 1853
    .line 1854
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1855
    .line 1856
    .line 1857
    move-result v2

    .line 1858
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1859
    .line 1860
    .line 1861
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 1862
    .line 1863
    .line 1864
    move-result v2

    .line 1865
    :goto_34
    if-ge v10, v2, :cond_4f

    .line 1866
    .line 1867
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v3

    .line 1871
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeSaver:Landroidx/cardview/widget/CardView$1;

    .line 1872
    .line 1873
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1874
    .line 1875
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1876
    .line 1877
    .line 1878
    move-result v5

    .line 1879
    if-eqz v5, :cond_4e

    .line 1880
    .line 1881
    :cond_4d
    const/4 v3, 0x0

    .line 1882
    goto :goto_35

    .line 1883
    :cond_4e
    if-eqz v3, :cond_4d

    .line 1884
    .line 1885
    iget-object v4, v4, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1886
    .line 1887
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1888
    .line 1889
    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v3

    .line 1893
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1894
    .line 1895
    :goto_35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1896
    .line 1897
    .line 1898
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1899
    .line 1900
    .line 1901
    add-int/lit8 v10, v10, 0x1

    .line 1902
    .line 1903
    goto :goto_34

    .line 1904
    :cond_4f
    return-object v1

    .line 1905
    :pswitch_21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1906
    .line 1907
    .line 1908
    move-object v0, v1

    .line 1909
    check-cast v0, Ljava/lang/Integer;

    .line 1910
    .line 1911
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1912
    .line 1913
    .line 1914
    move-result v0

    .line 1915
    new-instance v1, Landroidx/compose/ui/text/style/Hyphens;

    .line 1916
    .line 1917
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    .line 1918
    .line 1919
    .line 1920
    return-object v1

    .line 1921
    :pswitch_22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1922
    .line 1923
    .line 1924
    move-object v0, v1

    .line 1925
    check-cast v0, Ljava/lang/Integer;

    .line 1926
    .line 1927
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1928
    .line 1929
    .line 1930
    move-result v0

    .line 1931
    new-instance v1, Landroidx/compose/ui/text/style/TextDirection;

    .line 1932
    .line 1933
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    .line 1934
    .line 1935
    .line 1936
    return-object v1

    .line 1937
    :pswitch_23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1938
    .line 1939
    .line 1940
    move-object v0, v1

    .line 1941
    check-cast v0, Ljava/util/List;

    .line 1942
    .line 1943
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v1

    .line 1947
    if-eqz v1, :cond_50

    .line 1948
    .line 1949
    check-cast v1, Ljava/lang/String;

    .line 1950
    .line 1951
    goto :goto_36

    .line 1952
    :cond_50
    const/4 v1, 0x0

    .line 1953
    :goto_36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1954
    .line 1955
    .line 1956
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v0

    .line 1960
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/cardview/widget/CardView$1;

    .line 1961
    .line 1962
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1963
    .line 1964
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1965
    .line 1966
    .line 1967
    move-result v3

    .line 1968
    if-eqz v3, :cond_52

    .line 1969
    .line 1970
    :cond_51
    const/4 v11, 0x0

    .line 1971
    goto :goto_37

    .line 1972
    :cond_52
    if-eqz v0, :cond_51

    .line 1973
    .line 1974
    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1975
    .line 1976
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1977
    .line 1978
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    .line 1980
    .line 1981
    move-result-object v0

    .line 1982
    move-object v11, v0

    .line 1983
    check-cast v11, Landroidx/compose/ui/text/TextLinkStyles;

    .line 1984
    .line 1985
    :goto_37
    new-instance v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1986
    .line 1987
    invoke-direct {v0, v1, v11}, Landroidx/compose/ui/text/LinkAnnotation$Clickable;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;)V

    .line 1988
    .line 1989
    .line 1990
    return-object v0

    .line 1991
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

    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method
