.class public final synthetic Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v1, v1, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 8
    .line 9
    const/16 v3, 0x9

    .line 10
    .line 11
    const/4 v7, 0x5

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x3

    .line 14
    const/4 v10, 0x4

    .line 15
    const/4 v11, 0x2

    .line 16
    const/4 v12, 0x0

    .line 17
    const/4 v13, 0x1

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v0, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 22
    .line 23
    move-object v1, v2

    .line 24
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    move-object v8, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    instance-of v0, v1, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    move-object v8, v1

    .line 35
    check-cast v8, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 36
    .line 37
    :cond_1
    :goto_0
    return-object v8

    .line 38
    :pswitch_0
    move-object v1, v2

    .line 39
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 40
    .line 41
    instance-of v2, v1, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 42
    .line 43
    if-eqz v2, :cond_5

    .line 44
    .line 45
    instance-of v2, v0, Ljava/lang/Integer;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    move-object v8, v0

    .line 50
    check-cast v8, Ljava/lang/Integer;

    .line 51
    .line 52
    :cond_2
    if-eqz v8, :cond_3

    .line 53
    .line 54
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move v0, v13

    .line 60
    :goto_1
    if-nez v0, :cond_4

    .line 61
    .line 62
    move-object v0, v1

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    add-int/2addr v0, v13

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_5
    :goto_2
    return-object v0

    .line 70
    :pswitch_1
    check-cast v0, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    move-object v1, v2

    .line 77
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 78
    .line 79
    add-int/2addr v0, v13

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0

    .line 85
    :pswitch_2
    check-cast v0, Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-object v1, v2

    .line 91
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 92
    .line 93
    return-object v0

    .line 94
    :pswitch_3
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 95
    .line 96
    move-object v1, v2

    .line 97
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 98
    .line 99
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    return-object v0

    .line 104
    :pswitch_4
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 105
    .line 106
    move-object v1, v2

    .line 107
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 108
    .line 109
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    :pswitch_5
    new-instance v1, Lkotlin/Pair;

    .line 115
    .line 116
    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-object v1

    .line 120
    :pswitch_6
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 121
    .line 122
    move-object v1, v2

    .line 123
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-interface {v1}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 140
    .line 141
    if-ne v0, v2, :cond_6

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_6
    sget-object v3, Lkotlin/coroutines/ContinuationInterceptor$Key;->$$INSTANCE:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 145
    .line 146
    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 151
    .line 152
    if-nez v4, :cond_7

    .line 153
    .line 154
    new-instance v2, Lkotlin/coroutines/CombinedContext;

    .line 155
    .line 156
    invoke-direct {v2, v1, v0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 157
    .line 158
    .line 159
    :goto_3
    move-object v1, v2

    .line 160
    goto :goto_4

    .line 161
    :cond_7
    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-ne v0, v2, :cond_8

    .line 166
    .line 167
    new-instance v0, Lkotlin/coroutines/CombinedContext;

    .line 168
    .line 169
    invoke-direct {v0, v4, v1}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 170
    .line 171
    .line 172
    move-object v1, v0

    .line 173
    goto :goto_4

    .line 174
    :cond_8
    new-instance v2, Lkotlin/coroutines/CombinedContext;

    .line 175
    .line 176
    new-instance v3, Lkotlin/coroutines/CombinedContext;

    .line 177
    .line 178
    invoke-direct {v3, v1, v0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {v2, v4, v3}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :goto_4
    return-object v1

    .line 186
    :pswitch_7
    check-cast v0, Ljava/lang/String;

    .line 187
    .line 188
    move-object v1, v2

    .line 189
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-nez v2, :cond_9

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    goto :goto_5

    .line 208
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v0, ", "

    .line 217
    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    :goto_5
    return-object v0

    .line 229
    :pswitch_8
    check-cast v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 230
    .line 231
    move-object v0, v2

    .line 232
    check-cast v0, Ljava/lang/Integer;

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    new-instance v0, Landroidx/compose/animation/ContentTransform;

    .line 238
    .line 239
    const/high16 v1, 0x3f800000    # 1.0f

    .line 240
    .line 241
    const/high16 v2, 0x44c80000    # 1600.0f

    .line 242
    .line 243
    invoke-static {v1, v2, v8, v10}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-static {v1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    const/high16 v2, 0x43c80000    # 400.0f

    .line 252
    .line 253
    const/4 v3, 0x0

    .line 254
    invoke-static {v3, v2, v8, v7}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    sget-wide v3, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    .line 259
    .line 260
    new-instance v5, Landroidx/compose/animation/ExitTransitionImpl;

    .line 261
    .line 262
    new-instance v6, Landroidx/compose/animation/TransitionData;

    .line 263
    .line 264
    new-instance v7, Landroidx/compose/animation/Scale;

    .line 265
    .line 266
    const v9, 0x3f333333    # 0.7f

    .line 267
    .line 268
    .line 269
    invoke-direct {v7, v9, v3, v4, v2}, Landroidx/compose/animation/Scale;-><init>(FJLandroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 270
    .line 271
    .line 272
    const/16 v2, 0x77

    .line 273
    .line 274
    invoke-direct {v6, v8, v7, v8, v2}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    .line 275
    .line 276
    .line 277
    invoke-direct {v5, v6}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 278
    .line 279
    .line 280
    invoke-direct {v0, v1, v5}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)V

    .line 281
    .line 282
    .line 283
    return-object v0

    .line 284
    :pswitch_9
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 285
    .line 286
    move-object v0, v2

    .line 287
    check-cast v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 288
    .line 289
    iget v0, v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->value:I

    .line 290
    .line 291
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    return-object v0

    .line 296
    :pswitch_a
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 297
    .line 298
    move-object v1, v2

    .line 299
    check-cast v1, Landroidx/compose/ui/text/style/TextMotion;

    .line 300
    .line 301
    iget v2, v1, Landroidx/compose/ui/text/style/TextMotion;->linearity:I

    .line 302
    .line 303
    new-instance v3, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 304
    .line 305
    invoke-direct {v3, v2}, Landroidx/compose/ui/text/style/TextMotion$Linearity;-><init>(I)V

    .line 306
    .line 307
    .line 308
    sget-object v2, Landroidx/compose/ui/text/ParagraphKt;->TextMotionLinearitySaver:Landroidx/cardview/widget/CardView$1;

    .line 309
    .line 310
    invoke-static {v3, v2, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    iget-boolean v1, v1, Landroidx/compose/ui/text/style/TextMotion;->subpixelTextPositioning:Z

    .line 315
    .line 316
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    new-array v2, v11, [Ljava/lang/Object;

    .line 321
    .line 322
    aput-object v0, v2, v12

    .line 323
    .line 324
    aput-object v1, v2, v13

    .line 325
    .line 326
    invoke-static {v2}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    return-object v0

    .line 331
    :pswitch_b
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 332
    .line 333
    move-object v0, v2

    .line 334
    check-cast v0, Landroidx/compose/ui/text/style/LineBreak;

    .line 335
    .line 336
    iget v0, v0, Landroidx/compose/ui/text/style/LineBreak;->mask:I

    .line 337
    .line 338
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    return-object v0

    .line 343
    :pswitch_c
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 344
    .line 345
    move-object v0, v2

    .line 346
    check-cast v0, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 347
    .line 348
    iget v0, v0, Landroidx/compose/ui/text/EmojiSupportMatch;->value:I

    .line 349
    .line 350
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    return-object v0

    .line 355
    :pswitch_d
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 356
    .line 357
    move-object v1, v2

    .line 358
    check-cast v1, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 359
    .line 360
    iget-boolean v2, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    .line 361
    .line 362
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/cardview/widget/CardView$1;

    .line 367
    .line 368
    iget v1, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    .line 369
    .line 370
    new-instance v3, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 371
    .line 372
    invoke-direct {v3, v1}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    .line 373
    .line 374
    .line 375
    sget-object v1, Landroidx/compose/ui/text/ParagraphKt;->emojiSupportMatchSaver:Landroidx/cardview/widget/CardView$1;

    .line 376
    .line 377
    invoke-static {v3, v1, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    new-array v1, v11, [Ljava/lang/Object;

    .line 382
    .line 383
    aput-object v2, v1, v12

    .line 384
    .line 385
    aput-object v0, v1, v13

    .line 386
    .line 387
    invoke-static {v1}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    return-object v0

    .line 392
    :pswitch_e
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 393
    .line 394
    move-object v1, v2

    .line 395
    check-cast v1, Landroidx/compose/ui/text/TextLinkStyles;

    .line 396
    .line 397
    iget-object v2, v1, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    .line 398
    .line 399
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 400
    .line 401
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    iget-object v4, v1, Landroidx/compose/ui/text/TextLinkStyles;->focusedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 406
    .line 407
    invoke-static {v4, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    iget-object v5, v1, Landroidx/compose/ui/text/TextLinkStyles;->hoveredStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 412
    .line 413
    invoke-static {v5, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    iget-object v1, v1, Landroidx/compose/ui/text/TextLinkStyles;->pressedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 418
    .line 419
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    new-array v1, v10, [Ljava/lang/Object;

    .line 424
    .line 425
    aput-object v2, v1, v12

    .line 426
    .line 427
    aput-object v4, v1, v13

    .line 428
    .line 429
    aput-object v5, v1, v11

    .line 430
    .line 431
    aput-object v0, v1, v9

    .line 432
    .line 433
    invoke-static {v1}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    return-object v0

    .line 438
    :pswitch_f
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 439
    .line 440
    move-object v1, v2

    .line 441
    check-cast v1, Landroidx/compose/ui/text/SpanStyle;

    .line 442
    .line 443
    iget-object v2, v1, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 444
    .line 445
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 446
    .line 447
    .line 448
    move-result-wide v14

    .line 449
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 450
    .line 451
    invoke-direct {v2, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 452
    .line 453
    .line 454
    sget-object v8, Landroidx/compose/ui/text/SaversKt;->ColorSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 455
    .line 456
    invoke-static {v2, v8, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    iget-wide v14, v1, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    .line 461
    .line 462
    const/16 p0, 0x8

    .line 463
    .line 464
    new-instance v4, Landroidx/compose/ui/unit/TextUnit;

    .line 465
    .line 466
    invoke-direct {v4, v14, v15}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 467
    .line 468
    .line 469
    sget-object v14, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 470
    .line 471
    invoke-static {v4, v14, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    iget-object v15, v1, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 476
    .line 477
    sget-object v16, Landroidx/compose/ui/text/font/FontWeight;->W600:Landroidx/compose/ui/text/font/FontWeight;

    .line 478
    .line 479
    const/16 v16, 0x7

    .line 480
    .line 481
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->FontWeightSaver:Landroidx/cardview/widget/CardView$1;

    .line 482
    .line 483
    invoke-static {v15, v5, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    iget-object v15, v1, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 488
    .line 489
    const/16 v17, 0x6

    .line 490
    .line 491
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->FontStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 492
    .line 493
    invoke-static {v15, v6, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    iget-object v15, v1, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 498
    .line 499
    move/from16 v18, v10

    .line 500
    .line 501
    sget-object v10, Landroidx/compose/ui/text/SaversKt;->FontSynthesisSaver:Landroidx/cardview/widget/CardView$1;

    .line 502
    .line 503
    invoke-static {v15, v10, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v10

    .line 507
    const/4 v15, -0x1

    .line 508
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    .line 510
    .line 511
    move-result-object v15

    .line 512
    move/from16 v19, v12

    .line 513
    .line 514
    iget-object v12, v1, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    .line 515
    .line 516
    move/from16 v20, v11

    .line 517
    .line 518
    move-object/from16 p1, v12

    .line 519
    .line 520
    iget-wide v11, v1, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 521
    .line 522
    move/from16 v21, v13

    .line 523
    .line 524
    new-instance v13, Landroidx/compose/ui/unit/TextUnit;

    .line 525
    .line 526
    invoke-direct {v13, v11, v12}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 527
    .line 528
    .line 529
    invoke-static {v13, v14, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v11

    .line 533
    iget-object v12, v1, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    .line 534
    .line 535
    sget-object v13, Landroidx/compose/ui/text/SaversKt;->BaselineShiftSaver:Landroidx/cardview/widget/CardView$1;

    .line 536
    .line 537
    invoke-static {v12, v13, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v12

    .line 541
    iget-object v13, v1, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 542
    .line 543
    sget-object v14, Landroidx/compose/ui/text/SaversKt;->TextGeometricTransformSaver:Landroidx/cardview/widget/CardView$1;

    .line 544
    .line 545
    invoke-static {v13, v14, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v13

    .line 549
    iget-object v14, v1, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 550
    .line 551
    sget-object v22, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    .line 552
    .line 553
    move/from16 v22, v7

    .line 554
    .line 555
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->LocaleListSaver:Landroidx/cardview/widget/CardView$1;

    .line 556
    .line 557
    invoke-static {v14, v7, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v7

    .line 561
    move v14, v9

    .line 562
    move-object/from16 p2, v10

    .line 563
    .line 564
    iget-wide v9, v1, Landroidx/compose/ui/text/SpanStyle;->background:J

    .line 565
    .line 566
    move/from16 v23, v14

    .line 567
    .line 568
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    .line 569
    .line 570
    invoke-direct {v14, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 571
    .line 572
    .line 573
    invoke-static {v14, v8, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v8

    .line 577
    iget-object v9, v1, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 578
    .line 579
    sget-object v10, Landroidx/compose/ui/text/SaversKt;->TextDecorationSaver:Landroidx/cardview/widget/CardView$1;

    .line 580
    .line 581
    invoke-static {v9, v10, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v9

    .line 585
    iget-object v1, v1, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 586
    .line 587
    sget-object v10, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    .line 588
    .line 589
    sget-object v10, Landroidx/compose/ui/text/SaversKt;->ShadowSaver:Landroidx/cardview/widget/CardView$1;

    .line 590
    .line 591
    invoke-static {v1, v10, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    const/16 v1, 0xe

    .line 596
    .line 597
    new-array v1, v1, [Ljava/lang/Object;

    .line 598
    .line 599
    aput-object v2, v1, v19

    .line 600
    .line 601
    aput-object v4, v1, v21

    .line 602
    .line 603
    aput-object v5, v1, v20

    .line 604
    .line 605
    aput-object v6, v1, v23

    .line 606
    .line 607
    aput-object p2, v1, v18

    .line 608
    .line 609
    aput-object v15, v1, v22

    .line 610
    .line 611
    aput-object p1, v1, v17

    .line 612
    .line 613
    aput-object v11, v1, v16

    .line 614
    .line 615
    aput-object v12, v1, p0

    .line 616
    .line 617
    aput-object v13, v1, v3

    .line 618
    .line 619
    const/16 v2, 0xa

    .line 620
    .line 621
    aput-object v7, v1, v2

    .line 622
    .line 623
    const/16 v2, 0xb

    .line 624
    .line 625
    aput-object v8, v1, v2

    .line 626
    .line 627
    const/16 v2, 0xc

    .line 628
    .line 629
    aput-object v9, v1, v2

    .line 630
    .line 631
    const/16 v2, 0xd

    .line 632
    .line 633
    aput-object v0, v1, v2

    .line 634
    .line 635
    invoke-static {v1}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    return-object v0

    .line 640
    :pswitch_10
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 641
    .line 642
    move-object v0, v2

    .line 643
    check-cast v0, Landroidx/compose/ui/text/UrlAnnotation;

    .line 644
    .line 645
    iget-object v0, v0, Landroidx/compose/ui/text/UrlAnnotation;->url:Ljava/lang/String;

    .line 646
    .line 647
    return-object v0

    .line 648
    :pswitch_11
    move/from16 v22, v7

    .line 649
    .line 650
    move/from16 v23, v9

    .line 651
    .line 652
    move/from16 v18, v10

    .line 653
    .line 654
    move/from16 v20, v11

    .line 655
    .line 656
    move/from16 v19, v12

    .line 657
    .line 658
    move/from16 v21, v13

    .line 659
    .line 660
    const/16 p0, 0x8

    .line 661
    .line 662
    const/16 v16, 0x7

    .line 663
    .line 664
    const/16 v17, 0x6

    .line 665
    .line 666
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 667
    .line 668
    move-object v1, v2

    .line 669
    check-cast v1, Landroidx/compose/ui/text/ParagraphStyle;

    .line 670
    .line 671
    iget v2, v1, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 672
    .line 673
    new-instance v4, Landroidx/compose/ui/text/style/TextAlign;

    .line 674
    .line 675
    invoke-direct {v4, v2}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 676
    .line 677
    .line 678
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->TextAlignSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 679
    .line 680
    invoke-static {v4, v2, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    iget v4, v1, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 685
    .line 686
    new-instance v5, Landroidx/compose/ui/text/style/TextDirection;

    .line 687
    .line 688
    invoke-direct {v5, v4}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    .line 689
    .line 690
    .line 691
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->TextDirectionSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 692
    .line 693
    invoke-static {v5, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v4

    .line 697
    iget-wide v5, v1, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 698
    .line 699
    new-instance v7, Landroidx/compose/ui/unit/TextUnit;

    .line 700
    .line 701
    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 702
    .line 703
    .line 704
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 705
    .line 706
    invoke-static {v7, v5, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v5

    .line 710
    iget-object v6, v1, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 711
    .line 712
    sget-object v7, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    .line 713
    .line 714
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->TextIndentSaver:Landroidx/cardview/widget/CardView$1;

    .line 715
    .line 716
    invoke-static {v6, v7, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v6

    .line 720
    iget-object v7, v1, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 721
    .line 722
    sget-object v8, Landroidx/compose/ui/text/ParagraphKt;->PlatformParagraphStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 723
    .line 724
    invoke-static {v7, v8, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v7

    .line 728
    iget-object v8, v1, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 729
    .line 730
    sget-object v9, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 731
    .line 732
    sget-object v9, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 733
    .line 734
    invoke-static {v8, v9, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v8

    .line 738
    iget v9, v1, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    .line 739
    .line 740
    new-instance v10, Landroidx/compose/ui/text/style/LineBreak;

    .line 741
    .line 742
    invoke-direct {v10, v9}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    .line 743
    .line 744
    .line 745
    sget-object v9, Landroidx/compose/ui/text/ParagraphKt;->LineBreakSaver:Landroidx/cardview/widget/CardView$1;

    .line 746
    .line 747
    invoke-static {v10, v9, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v9

    .line 751
    iget v10, v1, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 752
    .line 753
    new-instance v11, Landroidx/compose/ui/text/style/Hyphens;

    .line 754
    .line 755
    invoke-direct {v11, v10}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    .line 756
    .line 757
    .line 758
    sget-object v10, Landroidx/compose/ui/text/SaversKt;->HyphensSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 759
    .line 760
    invoke-static {v11, v10, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v10

    .line 764
    iget-object v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    .line 765
    .line 766
    sget-object v11, Landroidx/compose/ui/text/ParagraphKt;->TextMotionSaver:Landroidx/cardview/widget/CardView$1;

    .line 767
    .line 768
    invoke-static {v1, v11, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    new-array v1, v3, [Ljava/lang/Object;

    .line 773
    .line 774
    aput-object v2, v1, v19

    .line 775
    .line 776
    aput-object v4, v1, v21

    .line 777
    .line 778
    aput-object v5, v1, v20

    .line 779
    .line 780
    aput-object v6, v1, v23

    .line 781
    .line 782
    aput-object v7, v1, v18

    .line 783
    .line 784
    aput-object v8, v1, v22

    .line 785
    .line 786
    aput-object v9, v1, v17

    .line 787
    .line 788
    aput-object v10, v1, v16

    .line 789
    .line 790
    aput-object v0, v1, p0

    .line 791
    .line 792
    invoke-static {v1}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    return-object v0

    .line 797
    :pswitch_12
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 798
    .line 799
    move-object v0, v2

    .line 800
    check-cast v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 801
    .line 802
    iget-object v0, v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;->verbatim:Ljava/lang/String;

    .line 803
    .line 804
    return-object v0

    .line 805
    :pswitch_13
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 806
    .line 807
    move-object v0, v2

    .line 808
    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 809
    .line 810
    iget v0, v0, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->value:I

    .line 811
    .line 812
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    return-object v0

    .line 817
    :pswitch_14
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 818
    .line 819
    move-object v0, v2

    .line 820
    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 821
    .line 822
    iget v0, v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->value:I

    .line 823
    .line 824
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    return-object v0

    .line 829
    :pswitch_15
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 830
    .line 831
    move-object v0, v2

    .line 832
    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 833
    .line 834
    iget v0, v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topRatio:F

    .line 835
    .line 836
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    return-object v0

    .line 841
    :pswitch_16
    move/from16 v23, v9

    .line 842
    .line 843
    move/from16 v20, v11

    .line 844
    .line 845
    move/from16 v19, v12

    .line 846
    .line 847
    move/from16 v21, v13

    .line 848
    .line 849
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 850
    .line 851
    move-object v1, v2

    .line 852
    check-cast v1, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 853
    .line 854
    iget v2, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    .line 855
    .line 856
    new-instance v3, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 857
    .line 858
    invoke-direct {v3, v2}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;-><init>(F)V

    .line 859
    .line 860
    .line 861
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleAlignmentSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 862
    .line 863
    invoke-static {v3, v2, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v2

    .line 867
    iget v3, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    .line 868
    .line 869
    new-instance v4, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 870
    .line 871
    invoke-direct {v4, v3}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;-><init>(I)V

    .line 872
    .line 873
    .line 874
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleTrimSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 875
    .line 876
    invoke-static {v4, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    iget v1, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->mode:I

    .line 881
    .line 882
    new-instance v4, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 883
    .line 884
    invoke-direct {v4, v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;-><init>(I)V

    .line 885
    .line 886
    .line 887
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleModeSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 888
    .line 889
    invoke-static {v4, v1, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    move/from16 v14, v23

    .line 894
    .line 895
    new-array v1, v14, [Ljava/lang/Object;

    .line 896
    .line 897
    aput-object v2, v1, v19

    .line 898
    .line 899
    aput-object v3, v1, v21

    .line 900
    .line 901
    aput-object v0, v1, v20

    .line 902
    .line 903
    invoke-static {v1}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    return-object v0

    .line 908
    :pswitch_17
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 909
    .line 910
    move-object v0, v2

    .line 911
    check-cast v0, Landroidx/compose/ui/text/intl/Locale;

    .line 912
    .line 913
    iget-object v0, v0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 914
    .line 915
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v0

    .line 919
    return-object v0

    .line 920
    :pswitch_18
    move/from16 v19, v12

    .line 921
    .line 922
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 923
    .line 924
    move-object v1, v2

    .line 925
    check-cast v1, Landroidx/compose/ui/text/intl/LocaleList;

    .line 926
    .line 927
    iget-object v1, v1, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    .line 928
    .line 929
    new-instance v2, Ljava/util/ArrayList;

    .line 930
    .line 931
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 932
    .line 933
    .line 934
    move-result v3

    .line 935
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 936
    .line 937
    .line 938
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 939
    .line 940
    .line 941
    move-result v3

    .line 942
    :goto_6
    if-ge v12, v3, :cond_a

    .line 943
    .line 944
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object v4

    .line 948
    check-cast v4, Landroidx/compose/ui/text/intl/Locale;

    .line 949
    .line 950
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->LocaleSaver:Landroidx/cardview/widget/CardView$1;

    .line 951
    .line 952
    invoke-static {v4, v5, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object v4

    .line 956
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    .line 958
    .line 959
    add-int/lit8 v12, v12, 0x1

    .line 960
    .line 961
    goto :goto_6

    .line 962
    :cond_a
    return-object v2

    .line 963
    :pswitch_19
    move/from16 v22, v7

    .line 964
    .line 965
    move/from16 v18, v10

    .line 966
    .line 967
    move/from16 v20, v11

    .line 968
    .line 969
    move/from16 v19, v12

    .line 970
    .line 971
    move/from16 v21, v13

    .line 972
    .line 973
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 974
    .line 975
    move-object v1, v2

    .line 976
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 977
    .line 978
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 979
    .line 980
    instance-of v3, v2, Landroidx/compose/ui/text/ParagraphStyle;

    .line 981
    .line 982
    if-eqz v3, :cond_b

    .line 983
    .line 984
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Paragraph:Landroidx/compose/ui/text/AnnotationType;

    .line 985
    .line 986
    goto :goto_7

    .line 987
    :cond_b
    instance-of v3, v2, Landroidx/compose/ui/text/SpanStyle;

    .line 988
    .line 989
    if-eqz v3, :cond_c

    .line 990
    .line 991
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Span:Landroidx/compose/ui/text/AnnotationType;

    .line 992
    .line 993
    goto :goto_7

    .line 994
    :cond_c
    instance-of v3, v2, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 995
    .line 996
    if-eqz v3, :cond_d

    .line 997
    .line 998
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->VerbatimTts:Landroidx/compose/ui/text/AnnotationType;

    .line 999
    .line 1000
    goto :goto_7

    .line 1001
    :cond_d
    instance-of v3, v2, Landroidx/compose/ui/text/UrlAnnotation;

    .line 1002
    .line 1003
    if-eqz v3, :cond_e

    .line 1004
    .line 1005
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Url:Landroidx/compose/ui/text/AnnotationType;

    .line 1006
    .line 1007
    goto :goto_7

    .line 1008
    :cond_e
    instance-of v3, v2, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1009
    .line 1010
    if-eqz v3, :cond_f

    .line 1011
    .line 1012
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Link:Landroidx/compose/ui/text/AnnotationType;

    .line 1013
    .line 1014
    goto :goto_7

    .line 1015
    :cond_f
    instance-of v3, v2, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1016
    .line 1017
    if-eqz v3, :cond_10

    .line 1018
    .line 1019
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Clickable:Landroidx/compose/ui/text/AnnotationType;

    .line 1020
    .line 1021
    goto :goto_7

    .line 1022
    :cond_10
    instance-of v3, v2, Landroidx/compose/ui/text/StringAnnotation;

    .line 1023
    .line 1024
    if-eqz v3, :cond_11

    .line 1025
    .line 1026
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->String:Landroidx/compose/ui/text/AnnotationType;

    .line 1027
    .line 1028
    :goto_7
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 1029
    .line 1030
    .line 1031
    move-result v4

    .line 1032
    packed-switch v4, :pswitch_data_1

    .line 1033
    .line 1034
    .line 1035
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 1036
    .line 1037
    .line 1038
    goto/16 :goto_9

    .line 1039
    .line 1040
    :pswitch_1a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1041
    .line 1042
    .line 1043
    check-cast v2, Landroidx/compose/ui/text/StringAnnotation;

    .line 1044
    .line 1045
    iget-object v0, v2, Landroidx/compose/ui/text/StringAnnotation;->value:Ljava/lang/String;

    .line 1046
    .line 1047
    goto :goto_8

    .line 1048
    :pswitch_1b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1049
    .line 1050
    .line 1051
    check-cast v2, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1052
    .line 1053
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->ClickableSaver:Landroidx/cardview/widget/CardView$1;

    .line 1054
    .line 1055
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    goto :goto_8

    .line 1060
    :pswitch_1c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1061
    .line 1062
    .line 1063
    check-cast v2, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1064
    .line 1065
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->LinkSaver:Landroidx/cardview/widget/CardView$1;

    .line 1066
    .line 1067
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v0

    .line 1071
    goto :goto_8

    .line 1072
    :pswitch_1d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1073
    .line 1074
    .line 1075
    check-cast v2, Landroidx/compose/ui/text/UrlAnnotation;

    .line 1076
    .line 1077
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->UrlAnnotationSaver:Landroidx/cardview/widget/CardView$1;

    .line 1078
    .line 1079
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v0

    .line 1083
    goto :goto_8

    .line 1084
    :pswitch_1e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1085
    .line 1086
    .line 1087
    check-cast v2, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 1088
    .line 1089
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->VerbatimTtsAnnotationSaver:Landroidx/cardview/widget/CardView$1;

    .line 1090
    .line 1091
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    goto :goto_8

    .line 1096
    :pswitch_1f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1097
    .line 1098
    .line 1099
    check-cast v2, Landroidx/compose/ui/text/SpanStyle;

    .line 1100
    .line 1101
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1102
    .line 1103
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v0

    .line 1107
    goto :goto_8

    .line 1108
    :pswitch_20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1109
    .line 1110
    .line 1111
    check-cast v2, Landroidx/compose/ui/text/ParagraphStyle;

    .line 1112
    .line 1113
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->ParagraphStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1114
    .line 1115
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    :goto_8
    iget v2, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1120
    .line 1121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v2

    .line 1125
    iget v4, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1126
    .line 1127
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v4

    .line 1131
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    .line 1132
    .line 1133
    move/from16 v5, v22

    .line 1134
    .line 1135
    new-array v5, v5, [Ljava/lang/Object;

    .line 1136
    .line 1137
    aput-object v3, v5, v19

    .line 1138
    .line 1139
    aput-object v0, v5, v21

    .line 1140
    .line 1141
    aput-object v2, v5, v20

    .line 1142
    .line 1143
    const/4 v14, 0x3

    .line 1144
    aput-object v4, v5, v14

    .line 1145
    .line 1146
    aput-object v1, v5, v18

    .line 1147
    .line 1148
    invoke-static {v5}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v8

    .line 1152
    :goto_9
    return-object v8

    .line 1153
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1154
    .line 1155
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 1156
    .line 1157
    .line 1158
    throw v0

    .line 1159
    :pswitch_21
    move/from16 v20, v11

    .line 1160
    .line 1161
    move/from16 v19, v12

    .line 1162
    .line 1163
    move/from16 v21, v13

    .line 1164
    .line 1165
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1166
    .line 1167
    move-object v0, v2

    .line 1168
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 1169
    .line 1170
    if-nez v0, :cond_12

    .line 1171
    .line 1172
    move/from16 v1, v19

    .line 1173
    .line 1174
    goto :goto_a

    .line 1175
    :cond_12
    iget-wide v1, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1176
    .line 1177
    const-wide v3, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 1183
    .line 1184
    .line 1185
    move-result v1

    .line 1186
    :goto_a
    if-eqz v1, :cond_13

    .line 1187
    .line 1188
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1189
    .line 1190
    goto :goto_b

    .line 1191
    :cond_13
    iget-wide v1, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1192
    .line 1193
    const/16 v3, 0x20

    .line 1194
    .line 1195
    shr-long/2addr v1, v3

    .line 1196
    long-to-int v1, v1

    .line 1197
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1198
    .line 1199
    .line 1200
    move-result v1

    .line 1201
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v1

    .line 1205
    iget-wide v2, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1206
    .line 1207
    const-wide v4, 0xffffffffL

    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    and-long/2addr v2, v4

    .line 1213
    long-to-int v0, v2

    .line 1214
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1215
    .line 1216
    .line 1217
    move-result v0

    .line 1218
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v0

    .line 1222
    move/from16 v2, v20

    .line 1223
    .line 1224
    new-array v2, v2, [Ljava/lang/Float;

    .line 1225
    .line 1226
    aput-object v1, v2, v19

    .line 1227
    .line 1228
    aput-object v0, v2, v21

    .line 1229
    .line 1230
    invoke-static {v2}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v0

    .line 1234
    :goto_b
    return-object v0

    .line 1235
    :pswitch_22
    move/from16 v19, v12

    .line 1236
    .line 1237
    move/from16 v21, v13

    .line 1238
    .line 1239
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1240
    .line 1241
    move-object v0, v2

    .line 1242
    check-cast v0, Landroidx/compose/ui/unit/TextUnitType;

    .line 1243
    .line 1244
    iget-wide v0, v0, Landroidx/compose/ui/unit/TextUnitType;->type:J

    .line 1245
    .line 1246
    const-wide v2, 0x200000000L

    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 1252
    .line 1253
    .line 1254
    move-result v2

    .line 1255
    if-eqz v2, :cond_14

    .line 1256
    .line 1257
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v0

    .line 1261
    goto :goto_c

    .line 1262
    :cond_14
    const-wide v2, 0x100000000L

    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v0

    .line 1271
    if-eqz v0, :cond_15

    .line 1272
    .line 1273
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v0

    .line 1277
    goto :goto_c

    .line 1278
    :cond_15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1279
    .line 1280
    :goto_c
    return-object v0

    .line 1281
    :pswitch_23
    move/from16 v19, v12

    .line 1282
    .line 1283
    move/from16 v21, v13

    .line 1284
    .line 1285
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1286
    .line 1287
    move-object v1, v2

    .line 1288
    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1289
    .line 1290
    iget-object v2, v1, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->tag:Ljava/lang/String;

    .line 1291
    .line 1292
    iget-object v1, v1, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    .line 1293
    .line 1294
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/cardview/widget/CardView$1;

    .line 1295
    .line 1296
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v0

    .line 1300
    const/4 v1, 0x2

    .line 1301
    new-array v1, v1, [Ljava/lang/Object;

    .line 1302
    .line 1303
    aput-object v2, v1, v19

    .line 1304
    .line 1305
    aput-object v0, v1, v21

    .line 1306
    .line 1307
    invoke-static {v1}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v0

    .line 1311
    return-object v0

    .line 1312
    nop

    .line 1313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
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

    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method
