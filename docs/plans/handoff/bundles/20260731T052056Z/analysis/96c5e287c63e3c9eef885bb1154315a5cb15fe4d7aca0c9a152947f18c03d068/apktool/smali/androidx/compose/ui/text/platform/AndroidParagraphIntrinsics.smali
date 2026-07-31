.class public final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/ui/text/ParagraphIntrinsics;


# instance fields
.field public final annotations:Ljava/util/List;

.field public final charSequence:Ljava/lang/CharSequence;

.field public final density:Landroidx/compose/ui/unit/Density;

.field public final emojiCompatProcessed:Z

.field public final fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

.field public final placeholders:Ljava/util/List;

.field public resolvedTypefaces:Lcom/caverock/androidsvg/SVG;

.field public final style:Landroidx/compose/ui/text/TextStyle;

.field public final text:Ljava/lang/String;

.field public final textDirectionHeuristic:I

.field public final textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    move-object/from16 v4, p1

    .line 13
    .line 14
    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    .line 17
    .line 18
    iput-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->annotations:Ljava/util/List;

    .line 19
    .line 20
    move-object/from16 v4, p4

    .line 21
    .line 22
    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->placeholders:Ljava/util/List;

    .line 23
    .line 24
    move-object/from16 v4, p5

    .line 25
    .line 26
    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 27
    .line 28
    iput-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->density:Landroidx/compose/ui/unit/Density;

    .line 29
    .line 30
    new-instance v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 31
    .line 32
    invoke-interface {v3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x1

    .line 37
    invoke-direct {v4, v6}, Landroid/text/TextPaint;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 41
    .line 42
    sget-object v5, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    .line 43
    .line 44
    iput-object v5, v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 45
    .line 46
    const/4 v5, 0x3

    .line 47
    iput v5, v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    .line 48
    .line 49
    sget-object v7, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    .line 50
    .line 51
    iput-object v7, v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 52
    .line 53
    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 54
    .line 55
    invoke-static {v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint_androidKt;->getHasEmojiCompat(Landroidx/compose/ui/text/TextStyle;)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    iget-object v8, v1, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 60
    .line 61
    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    if-nez v7, :cond_0

    .line 65
    .line 66
    move v7, v9

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    sget-object v7, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->delegate:Landroidx/paging/HintHandler;

    .line 69
    .line 70
    sget-object v7, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->delegate:Landroidx/paging/HintHandler;

    .line 71
    .line 72
    iget-object v10, v7, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v10, Landroidx/compose/runtime/State;

    .line 75
    .line 76
    if-eqz v10, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eqz v10, :cond_2

    .line 84
    .line 85
    invoke-virtual {v7}, Landroidx/paging/HintHandler;->getFontLoadState()Landroidx/compose/runtime/State;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    iput-object v10, v7, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    sget-object v10, Landroidx/compose/ui/text/platform/AndroidTextPaint_androidKt;->Falsey:Landroidx/compose/ui/text/platform/ImmutableBool;

    .line 93
    .line 94
    :goto_0
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    :goto_1
    iput-boolean v7, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->emojiCompatProcessed:Z

    .line 105
    .line 106
    iget v7, v1, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 107
    .line 108
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 109
    .line 110
    const/4 v11, 0x5

    .line 111
    const/4 v12, 0x4

    .line 112
    const/4 v14, 0x2

    .line 113
    if-ne v7, v12, :cond_4

    .line 114
    .line 115
    :cond_3
    :goto_2
    move v7, v14

    .line 116
    goto :goto_4

    .line 117
    :cond_4
    if-ne v7, v11, :cond_6

    .line 118
    .line 119
    :cond_5
    move v7, v5

    .line 120
    goto :goto_4

    .line 121
    :cond_6
    if-ne v7, v6, :cond_7

    .line 122
    .line 123
    move v7, v9

    .line 124
    goto :goto_4

    .line 125
    :cond_7
    if-ne v7, v14, :cond_8

    .line 126
    .line 127
    move v7, v6

    .line 128
    goto :goto_4

    .line 129
    :cond_8
    if-ne v7, v5, :cond_9

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_9
    if-nez v7, :cond_7e

    .line 133
    .line 134
    :goto_3
    if-eqz v10, :cond_a

    .line 135
    .line 136
    invoke-virtual {v10}, Landroidx/compose/ui/text/intl/LocaleList;->get()Landroidx/compose/ui/text/intl/Locale;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    iget-object v7, v7, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 141
    .line 142
    if-nez v7, :cond_b

    .line 143
    .line 144
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    :cond_b
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_3

    .line 153
    .line 154
    if-eq v7, v6, :cond_5

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :goto_4
    iput v7, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    .line 158
    .line 159
    new-instance v7, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;

    .line 160
    .line 161
    invoke-direct {v7, v14, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    .line 165
    .line 166
    if-nez v1, :cond_c

    .line 167
    .line 168
    sget-object v1, Landroidx/compose/ui/text/style/TextMotion;->Static:Landroidx/compose/ui/text/style/TextMotion;

    .line 169
    .line 170
    :cond_c
    iget-boolean v10, v1, Landroidx/compose/ui/text/style/TextMotion;->subpixelTextPositioning:Z

    .line 171
    .line 172
    if-eqz v10, :cond_d

    .line 173
    .line 174
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    or-int/lit16 v10, v10, 0x80

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_d
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    and-int/lit16 v10, v10, -0x81

    .line 186
    .line 187
    :goto_5
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 188
    .line 189
    .line 190
    iget v1, v1, Landroidx/compose/ui/text/style/TextMotion;->linearity:I

    .line 191
    .line 192
    if-ne v1, v6, :cond_e

    .line 193
    .line 194
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    or-int/lit8 v1, v1, 0x40

    .line 199
    .line 200
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setHinting(I)V

    .line 204
    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_e
    if-ne v1, v14, :cond_f

    .line 208
    .line 209
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setHinting(I)V

    .line 213
    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_f
    if-ne v1, v5, :cond_10

    .line 217
    .line 218
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setHinting(I)V

    .line 222
    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_10
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 226
    .line 227
    .line 228
    :goto_6
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    move v5, v9

    .line 233
    :goto_7
    if-ge v5, v1, :cond_12

    .line 234
    .line 235
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    move-object v12, v10

    .line 240
    check-cast v12, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 241
    .line 242
    iget-object v12, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 243
    .line 244
    instance-of v12, v12, Landroidx/compose/ui/text/SpanStyle;

    .line 245
    .line 246
    if-eqz v12, :cond_11

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_11
    add-int/lit8 v5, v5, 0x1

    .line 250
    .line 251
    goto :goto_7

    .line 252
    :cond_12
    const/4 v10, 0x0

    .line 253
    :goto_8
    if-eqz v10, :cond_13

    .line 254
    .line 255
    move v1, v6

    .line 256
    goto :goto_9

    .line 257
    :cond_13
    move v1, v9

    .line 258
    :goto_9
    iget-wide v11, v8, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    .line 259
    .line 260
    iget-object v2, v8, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 261
    .line 262
    iget-object v5, v8, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 263
    .line 264
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    .line 265
    .line 266
    iget-object v15, v8, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 267
    .line 268
    const/16 p2, 0x0

    .line 269
    .line 270
    iget-object v13, v8, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 271
    .line 272
    move/from16 p4, v6

    .line 273
    .line 274
    iget-object v6, v8, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 275
    .line 276
    move-object/from16 p3, v15

    .line 277
    .line 278
    iget-wide v14, v8, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 279
    .line 280
    move-object/from16 v17, v10

    .line 281
    .line 282
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 283
    .line 284
    .line 285
    move-result-wide v9

    .line 286
    move/from16 v18, v1

    .line 287
    .line 288
    move-object/from16 v19, v2

    .line 289
    .line 290
    const-wide v1, 0x100000000L

    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    invoke-static {v9, v10, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 296
    .line 297
    .line 298
    move-result v20

    .line 299
    const-wide v1, 0x200000000L

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    if-eqz v20, :cond_14

    .line 305
    .line 306
    invoke-interface {v3, v11, v12}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 307
    .line 308
    .line 309
    move-result v9

    .line 310
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 311
    .line 312
    .line 313
    goto :goto_a

    .line 314
    :cond_14
    invoke-static {v9, v10, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 315
    .line 316
    .line 317
    move-result v9

    .line 318
    if-eqz v9, :cond_15

    .line 319
    .line 320
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    .line 321
    .line 322
    .line 323
    move-result v9

    .line 324
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 325
    .line 326
    .line 327
    move-result v10

    .line 328
    mul-float/2addr v10, v9

    .line 329
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 330
    .line 331
    .line 332
    :cond_15
    :goto_a
    iget-object v9, v8, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 333
    .line 334
    if-nez v9, :cond_16

    .line 335
    .line 336
    if-nez v5, :cond_16

    .line 337
    .line 338
    if-eqz v19, :cond_1b

    .line 339
    .line 340
    :cond_16
    if-nez v19, :cond_17

    .line 341
    .line 342
    sget-object v10, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 343
    .line 344
    goto :goto_b

    .line 345
    :cond_17
    move-object/from16 v10, v19

    .line 346
    .line 347
    :goto_b
    if-eqz v5, :cond_18

    .line 348
    .line 349
    iget v5, v5, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_18
    const/4 v5, 0x0

    .line 353
    :goto_c
    iget-object v11, v8, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 354
    .line 355
    if-eqz v11, :cond_19

    .line 356
    .line 357
    iget v11, v11, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    .line 358
    .line 359
    goto :goto_d

    .line 360
    :cond_19
    const v11, 0xffff

    .line 361
    .line 362
    .line 363
    :goto_d
    iget-object v12, v7, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v12, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 366
    .line 367
    iget-object v1, v12, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 368
    .line 369
    check-cast v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 370
    .line 371
    invoke-virtual {v1, v9, v10, v5, v11}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    instance-of v2, v1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 376
    .line 377
    if-nez v2, :cond_1a

    .line 378
    .line 379
    new-instance v2, Lcom/caverock/androidsvg/SVG;

    .line 380
    .line 381
    iget-object v5, v12, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lcom/caverock/androidsvg/SVG;

    .line 382
    .line 383
    invoke-direct {v2, v1, v5}, Lcom/caverock/androidsvg/SVG;-><init>(Landroidx/compose/ui/text/font/TypefaceResult$Immutable;Lcom/caverock/androidsvg/SVG;)V

    .line 384
    .line 385
    .line 386
    iput-object v2, v12, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lcom/caverock/androidsvg/SVG;

    .line 387
    .line 388
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 389
    .line 390
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    check-cast v1, Landroid/graphics/Typeface;

    .line 394
    .line 395
    goto :goto_e

    .line 396
    :cond_1a
    iget-object v1, v1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    check-cast v1, Landroid/graphics/Typeface;

    .line 402
    .line 403
    :goto_e
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 404
    .line 405
    .line 406
    :cond_1b
    if-eqz v6, :cond_1e

    .line 407
    .line 408
    sget-object v1, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    .line 409
    .line 410
    sget-object v1, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    .line 411
    .line 412
    invoke-interface {v1}, Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-virtual {v6, v2}, Landroidx/compose/ui/text/intl/LocaleList;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-nez v2, :cond_1e

    .line 421
    .line 422
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 423
    .line 424
    const/16 v5, 0x18

    .line 425
    .line 426
    if-lt v2, v5, :cond_1c

    .line 427
    .line 428
    invoke-static {v4, v6}, Lorg/wikipedia/language/LanguageUtil;->setTextLocales(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/intl/LocaleList;)V

    .line 429
    .line 430
    .line 431
    goto :goto_10

    .line 432
    :cond_1c
    iget-object v2, v6, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    .line 433
    .line 434
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-eqz v2, :cond_1d

    .line 439
    .line 440
    invoke-interface {v1}, Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v1}, Landroidx/compose/ui/text/intl/LocaleList;->get()Landroidx/compose/ui/text/intl/Locale;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    goto :goto_f

    .line 449
    :cond_1d
    invoke-virtual {v6}, Landroidx/compose/ui/text/intl/LocaleList;->get()Landroidx/compose/ui/text/intl/Locale;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    :goto_f
    iget-object v1, v1, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 454
    .line 455
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    .line 456
    .line 457
    .line 458
    :cond_1e
    :goto_10
    if-eqz v17, :cond_1f

    .line 459
    .line 460
    const-string v1, ""

    .line 461
    .line 462
    move-object/from16 v2, v17

    .line 463
    .line 464
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    if-nez v1, :cond_1f

    .line 469
    .line 470
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    :cond_1f
    if-eqz v13, :cond_20

    .line 474
    .line 475
    sget-object v1, Landroidx/compose/ui/text/style/TextGeometricTransform;->None:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 476
    .line 477
    invoke-virtual {v13, v1}, Landroidx/compose/ui/text/style/TextGeometricTransform;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    if-nez v1, :cond_20

    .line 482
    .line 483
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    iget v2, v13, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    .line 488
    .line 489
    mul-float/2addr v1, v2

    .line 490
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    iget v2, v13, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    .line 498
    .line 499
    add-float/2addr v1, v2

    .line 500
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 501
    .line 502
    .line 503
    :cond_20
    invoke-interface/range {p3 .. p3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 504
    .line 505
    .line 506
    move-result-wide v1

    .line 507
    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    .line 508
    .line 509
    .line 510
    invoke-interface/range {p3 .. p3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    invoke-interface/range {p3 .. p3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    invoke-virtual {v4, v1, v5, v6, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    .line 524
    .line 525
    .line 526
    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 527
    .line 528
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    .line 529
    .line 530
    .line 531
    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 532
    .line 533
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 534
    .line 535
    .line 536
    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 537
    .line 538
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 539
    .line 540
    .line 541
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 542
    .line 543
    .line 544
    move-result-wide v1

    .line 545
    const-wide v5, 0x100000000L

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    const/4 v2, 0x0

    .line 555
    if-eqz v1, :cond_23

    .line 556
    .line 557
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    cmpg-float v1, v1, v2

    .line 562
    .line 563
    if-nez v1, :cond_21

    .line 564
    .line 565
    goto :goto_11

    .line 566
    :cond_21
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 571
    .line 572
    .line 573
    move-result v5

    .line 574
    mul-float/2addr v5, v1

    .line 575
    invoke-interface {v3, v14, v15}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    cmpg-float v3, v5, v2

    .line 580
    .line 581
    if-nez v3, :cond_22

    .line 582
    .line 583
    goto :goto_12

    .line 584
    :cond_22
    div-float/2addr v1, v5

    .line 585
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 586
    .line 587
    .line 588
    goto :goto_12

    .line 589
    :cond_23
    :goto_11
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 590
    .line 591
    .line 592
    move-result-wide v5

    .line 593
    const-wide v9, 0x200000000L

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    invoke-static {v5, v6, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    if-eqz v1, :cond_24

    .line 603
    .line 604
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 609
    .line 610
    .line 611
    :cond_24
    :goto_12
    iget-wide v3, v8, Landroidx/compose/ui/text/SpanStyle;->background:J

    .line 612
    .line 613
    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    .line 614
    .line 615
    if-eqz v18, :cond_26

    .line 616
    .line 617
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 618
    .line 619
    .line 620
    move-result-wide v5

    .line 621
    const-wide v8, 0x100000000L

    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    invoke-static {v5, v6, v8, v9}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 627
    .line 628
    .line 629
    move-result v5

    .line 630
    if-eqz v5, :cond_26

    .line 631
    .line 632
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 633
    .line 634
    .line 635
    move-result v5

    .line 636
    cmpg-float v5, v5, v2

    .line 637
    .line 638
    if-nez v5, :cond_25

    .line 639
    .line 640
    goto :goto_13

    .line 641
    :cond_25
    move/from16 v5, p4

    .line 642
    .line 643
    goto :goto_14

    .line 644
    :cond_26
    :goto_13
    const/4 v5, 0x0

    .line 645
    :goto_14
    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 646
    .line 647
    invoke-static {v3, v4, v8, v9}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 648
    .line 649
    .line 650
    move-result v6

    .line 651
    if-nez v6, :cond_27

    .line 652
    .line 653
    sget-wide v10, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 654
    .line 655
    invoke-static {v3, v4, v10, v11}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 656
    .line 657
    .line 658
    move-result v6

    .line 659
    if-nez v6, :cond_27

    .line 660
    .line 661
    move/from16 v6, p4

    .line 662
    .line 663
    goto :goto_15

    .line 664
    :cond_27
    const/4 v6, 0x0

    .line 665
    :goto_15
    if-eqz v1, :cond_29

    .line 666
    .line 667
    iget v10, v1, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    .line 668
    .line 669
    invoke-static {v10, v2}, Ljava/lang/Float;->compare(FF)I

    .line 670
    .line 671
    .line 672
    move-result v10

    .line 673
    if-nez v10, :cond_28

    .line 674
    .line 675
    goto :goto_16

    .line 676
    :cond_28
    move/from16 v10, p4

    .line 677
    .line 678
    goto :goto_17

    .line 679
    :cond_29
    :goto_16
    const/4 v10, 0x0

    .line 680
    :goto_17
    if-nez v5, :cond_2a

    .line 681
    .line 682
    if-nez v6, :cond_2a

    .line 683
    .line 684
    if-nez v10, :cond_2a

    .line 685
    .line 686
    move-object/from16 v1, p2

    .line 687
    .line 688
    goto :goto_1c

    .line 689
    :cond_2a
    if-eqz v5, :cond_2b

    .line 690
    .line 691
    :goto_18
    move-wide/from16 v33, v14

    .line 692
    .line 693
    goto :goto_19

    .line 694
    :cond_2b
    sget-wide v14, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    .line 695
    .line 696
    goto :goto_18

    .line 697
    :goto_19
    if-eqz v6, :cond_2c

    .line 698
    .line 699
    move-wide/from16 v38, v3

    .line 700
    .line 701
    goto :goto_1a

    .line 702
    :cond_2c
    move-wide/from16 v38, v8

    .line 703
    .line 704
    :goto_1a
    if-eqz v10, :cond_2d

    .line 705
    .line 706
    move-object/from16 v35, v1

    .line 707
    .line 708
    goto :goto_1b

    .line 709
    :cond_2d
    move-object/from16 v35, p2

    .line 710
    .line 711
    :goto_1b
    new-instance v23, Landroidx/compose/ui/text/SpanStyle;

    .line 712
    .line 713
    const/16 v41, 0x0

    .line 714
    .line 715
    const v42, 0xf67f

    .line 716
    .line 717
    .line 718
    const-wide/16 v24, 0x0

    .line 719
    .line 720
    const-wide/16 v26, 0x0

    .line 721
    .line 722
    const/16 v28, 0x0

    .line 723
    .line 724
    const/16 v29, 0x0

    .line 725
    .line 726
    const/16 v30, 0x0

    .line 727
    .line 728
    const/16 v31, 0x0

    .line 729
    .line 730
    const/16 v32, 0x0

    .line 731
    .line 732
    const/16 v36, 0x0

    .line 733
    .line 734
    const/16 v37, 0x0

    .line 735
    .line 736
    const/16 v40, 0x0

    .line 737
    .line 738
    invoke-direct/range {v23 .. v42}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 739
    .line 740
    .line 741
    move-object/from16 v1, v23

    .line 742
    .line 743
    :goto_1c
    iget-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->annotations:Ljava/util/List;

    .line 744
    .line 745
    if-eqz v1, :cond_30

    .line 746
    .line 747
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 748
    .line 749
    .line 750
    move-result v3

    .line 751
    add-int/lit8 v3, v3, 0x1

    .line 752
    .line 753
    new-instance v4, Ljava/util/ArrayList;

    .line 754
    .line 755
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 756
    .line 757
    .line 758
    const/4 v5, 0x0

    .line 759
    :goto_1d
    if-ge v5, v3, :cond_2f

    .line 760
    .line 761
    if-nez v5, :cond_2e

    .line 762
    .line 763
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 764
    .line 765
    iget-object v8, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    .line 766
    .line 767
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 768
    .line 769
    .line 770
    move-result v8

    .line 771
    const/4 v9, 0x0

    .line 772
    invoke-direct {v6, v9, v8, v1}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 773
    .line 774
    .line 775
    goto :goto_1e

    .line 776
    :cond_2e
    iget-object v6, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->annotations:Ljava/util/List;

    .line 777
    .line 778
    add-int/lit8 v8, v5, -0x1

    .line 779
    .line 780
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v6

    .line 784
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 785
    .line 786
    :goto_1e
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    add-int/lit8 v5, v5, 0x1

    .line 790
    .line 791
    goto :goto_1d

    .line 792
    :cond_2f
    move-object v3, v4

    .line 793
    :cond_30
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    .line 794
    .line 795
    iget-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 796
    .line 797
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    .line 798
    .line 799
    .line 800
    move-result v4

    .line 801
    iget-object v5, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    .line 802
    .line 803
    iget-object v6, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->placeholders:Ljava/util/List;

    .line 804
    .line 805
    iget-object v11, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->density:Landroidx/compose/ui/unit/Density;

    .line 806
    .line 807
    iget-boolean v8, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->emojiCompatProcessed:Z

    .line 808
    .line 809
    sget-object v9, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    .line 810
    .line 811
    if-eqz v8, :cond_34

    .line 812
    .line 813
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    .line 814
    .line 815
    .line 816
    move-result v8

    .line 817
    if-eqz v8, :cond_34

    .line 818
    .line 819
    iget-object v8, v5, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    .line 820
    .line 821
    if-eqz v8, :cond_31

    .line 822
    .line 823
    iget-object v8, v8, Landroidx/compose/ui/text/PlatformTextStyle;->paragraphStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 824
    .line 825
    if-eqz v8, :cond_31

    .line 826
    .line 827
    iget v8, v8, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    .line 828
    .line 829
    new-instance v9, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 830
    .line 831
    invoke-direct {v9, v8}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    .line 832
    .line 833
    .line 834
    goto :goto_1f

    .line 835
    :cond_31
    move-object/from16 v9, p2

    .line 836
    .line 837
    :goto_1f
    if-nez v9, :cond_32

    .line 838
    .line 839
    const/4 v8, 0x0

    .line 840
    const/4 v15, 0x2

    .line 841
    goto :goto_20

    .line 842
    :cond_32
    iget v8, v9, Landroidx/compose/ui/text/EmojiSupportMatch;->value:I

    .line 843
    .line 844
    const/4 v15, 0x2

    .line 845
    if-ne v8, v15, :cond_33

    .line 846
    .line 847
    move/from16 v8, p4

    .line 848
    .line 849
    goto :goto_20

    .line 850
    :cond_33
    const/4 v8, 0x0

    .line 851
    :goto_20
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 852
    .line 853
    .line 854
    move-result-object v9

    .line 855
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 856
    .line 857
    .line 858
    move-result v10

    .line 859
    const/4 v12, 0x0

    .line 860
    invoke-virtual {v9, v12, v10, v8, v1}, Landroidx/emoji2/text/EmojiCompat;->process(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 861
    .line 862
    .line 863
    move-result-object v8

    .line 864
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 865
    .line 866
    .line 867
    goto :goto_21

    .line 868
    :cond_34
    const/4 v15, 0x2

    .line 869
    move-object v8, v1

    .line 870
    :goto_21
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 871
    .line 872
    .line 873
    move-result v9

    .line 874
    const-wide/16 v12, 0x0

    .line 875
    .line 876
    const-wide v17, 0xff00000000L

    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    if-eqz v9, :cond_35

    .line 882
    .line 883
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 884
    .line 885
    .line 886
    move-result v9

    .line 887
    if-eqz v9, :cond_35

    .line 888
    .line 889
    iget-object v9, v5, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 890
    .line 891
    iget-object v9, v9, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 892
    .line 893
    sget-object v10, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    .line 894
    .line 895
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 896
    .line 897
    .line 898
    move-result v9

    .line 899
    if-eqz v9, :cond_35

    .line 900
    .line 901
    iget-object v9, v5, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 902
    .line 903
    iget-wide v9, v9, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 904
    .line 905
    and-long v9, v9, v17

    .line 906
    .line 907
    cmp-long v9, v9, v12

    .line 908
    .line 909
    if-nez v9, :cond_35

    .line 910
    .line 911
    goto/16 :goto_52

    .line 912
    .line 913
    :cond_35
    instance-of v9, v8, Landroid/text/Spannable;

    .line 914
    .line 915
    if-eqz v9, :cond_36

    .line 916
    .line 917
    check-cast v8, Landroid/text/Spannable;

    .line 918
    .line 919
    goto :goto_22

    .line 920
    :cond_36
    new-instance v9, Landroid/text/SpannableString;

    .line 921
    .line 922
    invoke-direct {v9, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 923
    .line 924
    .line 925
    move-object v8, v9

    .line 926
    :goto_22
    iget-object v9, v5, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 927
    .line 928
    iget-object v14, v5, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 929
    .line 930
    iget-object v9, v9, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 931
    .line 932
    sget-object v10, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    .line 933
    .line 934
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v9

    .line 938
    const/16 v10, 0x21

    .line 939
    .line 940
    if-eqz v9, :cond_37

    .line 941
    .line 942
    sget-object v9, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    .line 943
    .line 944
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 945
    .line 946
    .line 947
    move-result v1

    .line 948
    move/from16 p3, v2

    .line 949
    .line 950
    const/4 v2, 0x0

    .line 951
    invoke-interface {v8, v9, v2, v1, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 952
    .line 953
    .line 954
    goto :goto_23

    .line 955
    :cond_37
    move/from16 p3, v2

    .line 956
    .line 957
    :goto_23
    iget-object v1, v5, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    .line 958
    .line 959
    if-eqz v1, :cond_38

    .line 960
    .line 961
    iget-object v1, v1, Landroidx/compose/ui/text/PlatformTextStyle;->paragraphStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 962
    .line 963
    if-eqz v1, :cond_38

    .line 964
    .line 965
    iget-boolean v1, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    .line 966
    .line 967
    goto :goto_24

    .line 968
    :cond_38
    const/4 v1, 0x0

    .line 969
    :goto_24
    if-eqz v1, :cond_3b

    .line 970
    .line 971
    iget-object v1, v14, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 972
    .line 973
    if-nez v1, :cond_3b

    .line 974
    .line 975
    iget-wide v1, v14, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 976
    .line 977
    invoke-static {v1, v2, v4, v11}, Lkotlin/UnsignedKt;->resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    .line 978
    .line 979
    .line 980
    move-result v1

    .line 981
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 982
    .line 983
    .line 984
    move-result v2

    .line 985
    if-nez v2, :cond_39

    .line 986
    .line 987
    new-instance v2, Landroidx/compose/ui/text/android/style/LineHeightSpan;

    .line 988
    .line 989
    invoke-direct {v2, v1}, Landroidx/compose/ui/text/android/style/LineHeightSpan;-><init>(F)V

    .line 990
    .line 991
    .line 992
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 993
    .line 994
    .line 995
    move-result v1

    .line 996
    const/4 v9, 0x0

    .line 997
    invoke-interface {v8, v2, v9, v1, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 998
    .line 999
    .line 1000
    :cond_39
    move-wide/from16 p5, v12

    .line 1001
    .line 1002
    :cond_3a
    const/4 v9, 0x0

    .line 1003
    goto :goto_2a

    .line 1004
    :cond_3b
    iget-object v1, v14, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 1005
    .line 1006
    if-nez v1, :cond_3c

    .line 1007
    .line 1008
    sget-object v1, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 1009
    .line 1010
    :cond_3c
    move-wide/from16 p5, v12

    .line 1011
    .line 1012
    iget-wide v12, v14, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 1013
    .line 1014
    invoke-static {v12, v13, v4, v11}, Lkotlin/UnsignedKt;->resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    .line 1015
    .line 1016
    .line 1017
    move-result v24

    .line 1018
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->isNaN(F)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v2

    .line 1022
    if-nez v2, :cond_3a

    .line 1023
    .line 1024
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 1025
    .line 1026
    .line 1027
    move-result v2

    .line 1028
    if-nez v2, :cond_3d

    .line 1029
    .line 1030
    goto :goto_25

    .line 1031
    :cond_3d
    invoke-static {v8}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    .line 1032
    .line 1033
    .line 1034
    move-result v2

    .line 1035
    const/16 v9, 0xa

    .line 1036
    .line 1037
    if-ne v2, v9, :cond_3e

    .line 1038
    .line 1039
    :goto_25
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 1040
    .line 1041
    .line 1042
    move-result v2

    .line 1043
    add-int/lit8 v2, v2, 0x1

    .line 1044
    .line 1045
    :goto_26
    move/from16 v25, v2

    .line 1046
    .line 1047
    goto :goto_27

    .line 1048
    :cond_3e
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 1049
    .line 1050
    .line 1051
    move-result v2

    .line 1052
    goto :goto_26

    .line 1053
    :goto_27
    new-instance v23, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1054
    .line 1055
    iget v2, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    .line 1056
    .line 1057
    and-int/lit8 v9, v2, 0x1

    .line 1058
    .line 1059
    if-lez v9, :cond_3f

    .line 1060
    .line 1061
    move/from16 v26, p4

    .line 1062
    .line 1063
    goto :goto_28

    .line 1064
    :cond_3f
    const/16 v26, 0x0

    .line 1065
    .line 1066
    :goto_28
    and-int/lit8 v2, v2, 0x10

    .line 1067
    .line 1068
    if-lez v2, :cond_40

    .line 1069
    .line 1070
    move/from16 v27, p4

    .line 1071
    .line 1072
    goto :goto_29

    .line 1073
    :cond_40
    const/16 v27, 0x0

    .line 1074
    .line 1075
    :goto_29
    iget v2, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    .line 1076
    .line 1077
    iget v1, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->mode:I

    .line 1078
    .line 1079
    move/from16 v29, v1

    .line 1080
    .line 1081
    move/from16 v28, v2

    .line 1082
    .line 1083
    invoke-direct/range {v23 .. v29}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIZZFI)V

    .line 1084
    .line 1085
    .line 1086
    move-object/from16 v1, v23

    .line 1087
    .line 1088
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 1089
    .line 1090
    .line 1091
    move-result v2

    .line 1092
    const/4 v9, 0x0

    .line 1093
    invoke-interface {v8, v1, v9, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1094
    .line 1095
    .line 1096
    :goto_2a
    iget-object v1, v14, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 1097
    .line 1098
    if-eqz v1, :cond_42

    .line 1099
    .line 1100
    iget-wide v12, v1, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    .line 1101
    .line 1102
    iget-wide v1, v1, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    .line 1103
    .line 1104
    move/from16 v16, v9

    .line 1105
    .line 1106
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 1107
    .line 1108
    .line 1109
    move-result-wide v9

    .line 1110
    invoke-static {v12, v13, v9, v10}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    .line 1111
    .line 1112
    .line 1113
    move-result v9

    .line 1114
    if-eqz v9, :cond_41

    .line 1115
    .line 1116
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 1117
    .line 1118
    .line 1119
    move-result-wide v9

    .line 1120
    invoke-static {v1, v2, v9, v10}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    .line 1121
    .line 1122
    .line 1123
    move-result v9

    .line 1124
    if-nez v9, :cond_42

    .line 1125
    .line 1126
    :cond_41
    and-long v9, v12, v17

    .line 1127
    .line 1128
    cmp-long v9, v9, p5

    .line 1129
    .line 1130
    if-nez v9, :cond_43

    .line 1131
    .line 1132
    :cond_42
    :goto_2b
    move-object/from16 v17, v14

    .line 1133
    .line 1134
    goto/16 :goto_2e

    .line 1135
    .line 1136
    :cond_43
    and-long v9, v1, v17

    .line 1137
    .line 1138
    cmp-long v9, v9, p5

    .line 1139
    .line 1140
    if-nez v9, :cond_44

    .line 1141
    .line 1142
    goto :goto_2b

    .line 1143
    :cond_44
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 1144
    .line 1145
    .line 1146
    move-result-wide v9

    .line 1147
    move-object/from16 v17, v14

    .line 1148
    .line 1149
    const-wide v14, 0x100000000L

    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    invoke-static {v9, v10, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 1155
    .line 1156
    .line 1157
    move-result v18

    .line 1158
    if-eqz v18, :cond_45

    .line 1159
    .line 1160
    invoke-interface {v11, v12, v13}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 1161
    .line 1162
    .line 1163
    move-result v9

    .line 1164
    const-wide v14, 0x200000000L

    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    goto :goto_2c

    .line 1170
    :cond_45
    const-wide v14, 0x200000000L

    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    invoke-static {v9, v10, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v9

    .line 1179
    if-eqz v9, :cond_46

    .line 1180
    .line 1181
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 1182
    .line 1183
    .line 1184
    move-result v9

    .line 1185
    mul-float/2addr v9, v4

    .line 1186
    goto :goto_2c

    .line 1187
    :cond_46
    move/from16 v9, p3

    .line 1188
    .line 1189
    :goto_2c
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 1190
    .line 1191
    .line 1192
    move-result-wide v12

    .line 1193
    const-wide v14, 0x100000000L

    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 1199
    .line 1200
    .line 1201
    move-result v10

    .line 1202
    if-eqz v10, :cond_47

    .line 1203
    .line 1204
    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 1205
    .line 1206
    .line 1207
    move-result v1

    .line 1208
    goto :goto_2d

    .line 1209
    :cond_47
    const-wide v14, 0x200000000L

    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 1215
    .line 1216
    .line 1217
    move-result v10

    .line 1218
    if-eqz v10, :cond_48

    .line 1219
    .line 1220
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 1221
    .line 1222
    .line 1223
    move-result v1

    .line 1224
    mul-float/2addr v1, v4

    .line 1225
    goto :goto_2d

    .line 1226
    :cond_48
    move/from16 v1, p3

    .line 1227
    .line 1228
    :goto_2d
    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    .line 1229
    .line 1230
    float-to-double v9, v9

    .line 1231
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 1232
    .line 1233
    .line 1234
    move-result-wide v9

    .line 1235
    double-to-float v9, v9

    .line 1236
    float-to-int v9, v9

    .line 1237
    float-to-double v12, v1

    .line 1238
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    .line 1239
    .line 1240
    .line 1241
    move-result-wide v12

    .line 1242
    double-to-float v1, v12

    .line 1243
    float-to-int v1, v1

    .line 1244
    invoke-direct {v2, v9, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 1245
    .line 1246
    .line 1247
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 1248
    .line 1249
    .line 1250
    move-result v1

    .line 1251
    const/16 v9, 0x21

    .line 1252
    .line 1253
    const/4 v12, 0x0

    .line 1254
    invoke-interface {v8, v2, v12, v1, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1255
    .line 1256
    .line 1257
    :goto_2e
    new-instance v1, Ljava/util/ArrayList;

    .line 1258
    .line 1259
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1260
    .line 1261
    .line 1262
    move-result v2

    .line 1263
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1264
    .line 1265
    .line 1266
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 1267
    .line 1268
    .line 1269
    move-result v2

    .line 1270
    const/4 v9, 0x0

    .line 1271
    :goto_2f
    if-ge v9, v2, :cond_4c

    .line 1272
    .line 1273
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v10

    .line 1277
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1278
    .line 1279
    iget-object v12, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1280
    .line 1281
    instance-of v13, v12, Landroidx/compose/ui/text/SpanStyle;

    .line 1282
    .line 1283
    if-eqz v13, :cond_4b

    .line 1284
    .line 1285
    move-object v13, v12

    .line 1286
    check-cast v13, Landroidx/compose/ui/text/SpanStyle;

    .line 1287
    .line 1288
    iget-object v14, v13, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 1289
    .line 1290
    if-nez v14, :cond_4a

    .line 1291
    .line 1292
    iget-object v14, v13, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 1293
    .line 1294
    if-nez v14, :cond_4a

    .line 1295
    .line 1296
    iget-object v13, v13, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 1297
    .line 1298
    if-eqz v13, :cond_49

    .line 1299
    .line 1300
    goto :goto_30

    .line 1301
    :cond_49
    check-cast v12, Landroidx/compose/ui/text/SpanStyle;

    .line 1302
    .line 1303
    iget-object v12, v12, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 1304
    .line 1305
    if-eqz v12, :cond_4b

    .line 1306
    .line 1307
    :cond_4a
    :goto_30
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    .line 1309
    .line 1310
    :cond_4b
    add-int/lit8 v9, v9, 0x1

    .line 1311
    .line 1312
    goto :goto_2f

    .line 1313
    :cond_4c
    iget-object v2, v5, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 1314
    .line 1315
    iget-object v5, v2, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 1316
    .line 1317
    if-nez v5, :cond_4f

    .line 1318
    .line 1319
    iget-object v9, v2, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 1320
    .line 1321
    if-nez v9, :cond_4f

    .line 1322
    .line 1323
    iget-object v9, v2, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 1324
    .line 1325
    if-eqz v9, :cond_4d

    .line 1326
    .line 1327
    goto :goto_31

    .line 1328
    :cond_4d
    iget-object v9, v2, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 1329
    .line 1330
    if-eqz v9, :cond_4e

    .line 1331
    .line 1332
    goto :goto_31

    .line 1333
    :cond_4e
    move-object/from16 v2, p2

    .line 1334
    .line 1335
    goto :goto_32

    .line 1336
    :cond_4f
    :goto_31
    iget-object v9, v2, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 1337
    .line 1338
    iget-object v10, v2, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 1339
    .line 1340
    iget-object v2, v2, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 1341
    .line 1342
    new-instance v24, Landroidx/compose/ui/text/SpanStyle;

    .line 1343
    .line 1344
    const/16 v42, 0x0

    .line 1345
    .line 1346
    const v43, 0xffc3

    .line 1347
    .line 1348
    .line 1349
    const-wide/16 v25, 0x0

    .line 1350
    .line 1351
    const-wide/16 v27, 0x0

    .line 1352
    .line 1353
    const/16 v33, 0x0

    .line 1354
    .line 1355
    const-wide/16 v34, 0x0

    .line 1356
    .line 1357
    const/16 v36, 0x0

    .line 1358
    .line 1359
    const/16 v37, 0x0

    .line 1360
    .line 1361
    const/16 v38, 0x0

    .line 1362
    .line 1363
    const-wide/16 v39, 0x0

    .line 1364
    .line 1365
    const/16 v41, 0x0

    .line 1366
    .line 1367
    move-object/from16 v31, v2

    .line 1368
    .line 1369
    move-object/from16 v32, v5

    .line 1370
    .line 1371
    move-object/from16 v29, v9

    .line 1372
    .line 1373
    move-object/from16 v30, v10

    .line 1374
    .line 1375
    invoke-direct/range {v24 .. v43}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 1376
    .line 1377
    .line 1378
    move-object/from16 v2, v24

    .line 1379
    .line 1380
    :goto_32
    new-instance v5, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    .line 1381
    .line 1382
    const/4 v9, 0x5

    .line 1383
    invoke-direct {v5, v9, v8, v7}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1387
    .line 1388
    .line 1389
    move-result v7

    .line 1390
    move/from16 v9, p4

    .line 1391
    .line 1392
    if-gt v7, v9, :cond_51

    .line 1393
    .line 1394
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1395
    .line 1396
    .line 1397
    move-result v7

    .line 1398
    if-nez v7, :cond_59

    .line 1399
    .line 1400
    const/4 v9, 0x0

    .line 1401
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v7

    .line 1405
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1406
    .line 1407
    iget-object v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1408
    .line 1409
    check-cast v7, Landroidx/compose/ui/text/SpanStyle;

    .line 1410
    .line 1411
    if-nez v2, :cond_50

    .line 1412
    .line 1413
    goto :goto_33

    .line 1414
    :cond_50
    invoke-virtual {v2, v7}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v7

    .line 1418
    :goto_33
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v2

    .line 1422
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1423
    .line 1424
    iget v2, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1425
    .line 1426
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v2

    .line 1430
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v1

    .line 1434
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1435
    .line 1436
    iget v1, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1437
    .line 1438
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v1

    .line 1442
    invoke-virtual {v5, v7, v2, v1}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    goto/16 :goto_3a

    .line 1446
    .line 1447
    :cond_51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1448
    .line 1449
    .line 1450
    move-result v7

    .line 1451
    mul-int/lit8 v9, v7, 0x2

    .line 1452
    .line 1453
    new-array v10, v9, [I

    .line 1454
    .line 1455
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1456
    .line 1457
    .line 1458
    move-result v12

    .line 1459
    const/4 v13, 0x0

    .line 1460
    :goto_34
    if-ge v13, v12, :cond_52

    .line 1461
    .line 1462
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v14

    .line 1466
    check-cast v14, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1467
    .line 1468
    iget v15, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1469
    .line 1470
    aput v15, v10, v13

    .line 1471
    .line 1472
    add-int v15, v13, v7

    .line 1473
    .line 1474
    iget v14, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1475
    .line 1476
    aput v14, v10, v15

    .line 1477
    .line 1478
    add-int/lit8 v13, v13, 0x1

    .line 1479
    .line 1480
    goto :goto_34

    .line 1481
    :cond_52
    const/4 v13, 0x1

    .line 1482
    if-le v9, v13, :cond_53

    .line 1483
    .line 1484
    invoke-static {v10}, Ljava/util/Arrays;->sort([I)V

    .line 1485
    .line 1486
    .line 1487
    :cond_53
    if-eqz v9, :cond_7d

    .line 1488
    .line 1489
    const/16 v16, 0x0

    .line 1490
    .line 1491
    aget v7, v10, v16

    .line 1492
    .line 1493
    const/4 v12, 0x0

    .line 1494
    :goto_35
    if-ge v12, v9, :cond_59

    .line 1495
    .line 1496
    aget v13, v10, v12

    .line 1497
    .line 1498
    if-ne v13, v7, :cond_54

    .line 1499
    .line 1500
    move-object/from16 p6, v1

    .line 1501
    .line 1502
    move-object/from16 p1, v2

    .line 1503
    .line 1504
    move/from16 v18, v9

    .line 1505
    .line 1506
    move-object/from16 v24, v10

    .line 1507
    .line 1508
    goto :goto_39

    .line 1509
    :cond_54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1510
    .line 1511
    .line 1512
    move-result v14

    .line 1513
    move-object/from16 p1, v2

    .line 1514
    .line 1515
    const/4 v15, 0x0

    .line 1516
    :goto_36
    if-ge v15, v14, :cond_57

    .line 1517
    .line 1518
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v18

    .line 1522
    move-object/from16 p6, v1

    .line 1523
    .line 1524
    move-object/from16 v1, v18

    .line 1525
    .line 1526
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1527
    .line 1528
    move/from16 v18, v9

    .line 1529
    .line 1530
    iget v9, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1531
    .line 1532
    move-object/from16 v24, v10

    .line 1533
    .line 1534
    iget v10, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1535
    .line 1536
    if-eq v9, v10, :cond_56

    .line 1537
    .line 1538
    invoke-static {v7, v13, v9, v10}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v9

    .line 1542
    if-eqz v9, :cond_56

    .line 1543
    .line 1544
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1545
    .line 1546
    check-cast v1, Landroidx/compose/ui/text/SpanStyle;

    .line 1547
    .line 1548
    if-nez v2, :cond_55

    .line 1549
    .line 1550
    :goto_37
    move-object v2, v1

    .line 1551
    goto :goto_38

    .line 1552
    :cond_55
    invoke-virtual {v2, v1}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v1

    .line 1556
    goto :goto_37

    .line 1557
    :cond_56
    :goto_38
    add-int/lit8 v15, v15, 0x1

    .line 1558
    .line 1559
    move-object/from16 v1, p6

    .line 1560
    .line 1561
    move/from16 v9, v18

    .line 1562
    .line 1563
    move-object/from16 v10, v24

    .line 1564
    .line 1565
    goto :goto_36

    .line 1566
    :cond_57
    move-object/from16 p6, v1

    .line 1567
    .line 1568
    move/from16 v18, v9

    .line 1569
    .line 1570
    move-object/from16 v24, v10

    .line 1571
    .line 1572
    if-eqz v2, :cond_58

    .line 1573
    .line 1574
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v1

    .line 1578
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v7

    .line 1582
    invoke-virtual {v5, v2, v1, v7}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    .line 1584
    .line 1585
    :cond_58
    move v7, v13

    .line 1586
    :goto_39
    add-int/lit8 v12, v12, 0x1

    .line 1587
    .line 1588
    move-object/from16 v2, p1

    .line 1589
    .line 1590
    move-object/from16 v1, p6

    .line 1591
    .line 1592
    move/from16 v9, v18

    .line 1593
    .line 1594
    move-object/from16 v10, v24

    .line 1595
    .line 1596
    goto :goto_35

    .line 1597
    :cond_59
    :goto_3a
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 1598
    .line 1599
    .line 1600
    move-result v1

    .line 1601
    const/4 v2, 0x0

    .line 1602
    const/4 v5, 0x0

    .line 1603
    :goto_3b
    if-ge v2, v1, :cond_6a

    .line 1604
    .line 1605
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v7

    .line 1609
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1610
    .line 1611
    iget-object v9, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1612
    .line 1613
    instance-of v10, v9, Landroidx/compose/ui/text/SpanStyle;

    .line 1614
    .line 1615
    if-eqz v10, :cond_5a

    .line 1616
    .line 1617
    iget v12, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1618
    .line 1619
    iget v13, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1620
    .line 1621
    if-ltz v12, :cond_5a

    .line 1622
    .line 1623
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 1624
    .line 1625
    .line 1626
    move-result v7

    .line 1627
    if-ge v12, v7, :cond_5a

    .line 1628
    .line 1629
    if-le v13, v12, :cond_5a

    .line 1630
    .line 1631
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 1632
    .line 1633
    .line 1634
    move-result v7

    .line 1635
    if-le v13, v7, :cond_5b

    .line 1636
    .line 1637
    :cond_5a
    move/from16 p1, v1

    .line 1638
    .line 1639
    move/from16 v18, v2

    .line 1640
    .line 1641
    move-object v2, v8

    .line 1642
    goto/16 :goto_44

    .line 1643
    .line 1644
    :cond_5b
    move-object v7, v9

    .line 1645
    check-cast v7, Landroidx/compose/ui/text/SpanStyle;

    .line 1646
    .line 1647
    iget-wide v14, v7, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 1648
    .line 1649
    iget-object v9, v7, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    .line 1650
    .line 1651
    iget-object v10, v7, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 1652
    .line 1653
    if-eqz v9, :cond_5c

    .line 1654
    .line 1655
    iget v9, v9, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    .line 1656
    .line 1657
    move/from16 p1, v1

    .line 1658
    .line 1659
    new-instance v1, Landroidx/compose/ui/text/android/style/SkewXSpan;

    .line 1660
    .line 1661
    move/from16 v18, v2

    .line 1662
    .line 1663
    const/4 v2, 0x1

    .line 1664
    invoke-direct {v1, v2, v9}, Landroidx/compose/ui/text/android/style/SkewXSpan;-><init>(IF)V

    .line 1665
    .line 1666
    .line 1667
    const/16 v9, 0x21

    .line 1668
    .line 1669
    invoke-interface {v8, v1, v12, v13, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1670
    .line 1671
    .line 1672
    goto :goto_3c

    .line 1673
    :cond_5c
    move/from16 p1, v1

    .line 1674
    .line 1675
    move/from16 v18, v2

    .line 1676
    .line 1677
    :goto_3c
    invoke-interface {v10}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 1678
    .line 1679
    .line 1680
    move-result-wide v1

    .line 1681
    invoke-static {v8, v1, v2, v12, v13}, Lkotlin/UnsignedKt;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    .line 1682
    .line 1683
    .line 1684
    invoke-interface {v10}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v1

    .line 1688
    invoke-interface {v10}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    .line 1689
    .line 1690
    .line 1691
    move-result v2

    .line 1692
    if-eqz v1, :cond_5e

    .line 1693
    .line 1694
    instance-of v9, v1, Landroidx/compose/ui/graphics/SolidColor;

    .line 1695
    .line 1696
    if-eqz v9, :cond_5d

    .line 1697
    .line 1698
    check-cast v1, Landroidx/compose/ui/graphics/SolidColor;

    .line 1699
    .line 1700
    iget-wide v1, v1, Landroidx/compose/ui/graphics/SolidColor;->value:J

    .line 1701
    .line 1702
    invoke-static {v8, v1, v2, v12, v13}, Lkotlin/UnsignedKt;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    .line 1703
    .line 1704
    .line 1705
    goto :goto_3d

    .line 1706
    :cond_5d
    new-instance v9, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 1707
    .line 1708
    check-cast v1, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 1709
    .line 1710
    invoke-direct {v9, v1, v2}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;-><init>(Landroidx/compose/ui/graphics/ShaderBrush;F)V

    .line 1711
    .line 1712
    .line 1713
    const/16 v1, 0x21

    .line 1714
    .line 1715
    invoke-interface {v8, v9, v12, v13, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1716
    .line 1717
    .line 1718
    :cond_5e
    :goto_3d
    iget-object v1, v7, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 1719
    .line 1720
    if-eqz v1, :cond_61

    .line 1721
    .line 1722
    iget v1, v1, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 1723
    .line 1724
    new-instance v2, Landroidx/compose/ui/text/android/style/TextDecorationSpan;

    .line 1725
    .line 1726
    or-int/lit8 v9, v1, 0x1

    .line 1727
    .line 1728
    if-ne v9, v1, :cond_5f

    .line 1729
    .line 1730
    const/4 v9, 0x1

    .line 1731
    goto :goto_3e

    .line 1732
    :cond_5f
    const/4 v9, 0x0

    .line 1733
    :goto_3e
    or-int/lit8 v10, v1, 0x2

    .line 1734
    .line 1735
    if-ne v10, v1, :cond_60

    .line 1736
    .line 1737
    const/4 v1, 0x1

    .line 1738
    goto :goto_3f

    .line 1739
    :cond_60
    const/4 v1, 0x0

    .line 1740
    :goto_3f
    invoke-direct {v2, v9, v1}, Landroidx/compose/ui/text/android/style/TextDecorationSpan;-><init>(ZZ)V

    .line 1741
    .line 1742
    .line 1743
    const/16 v9, 0x21

    .line 1744
    .line 1745
    invoke-interface {v8, v2, v12, v13, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1746
    .line 1747
    .line 1748
    move/from16 v23, v9

    .line 1749
    .line 1750
    goto :goto_40

    .line 1751
    :cond_61
    const/16 v23, 0x21

    .line 1752
    .line 1753
    :goto_40
    iget-wide v9, v7, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    .line 1754
    .line 1755
    move/from16 v1, v23

    .line 1756
    .line 1757
    invoke-static/range {v8 .. v13}, Lkotlin/UnsignedKt;->setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    .line 1758
    .line 1759
    .line 1760
    move-object v2, v8

    .line 1761
    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    .line 1762
    .line 1763
    if-eqz v8, :cond_62

    .line 1764
    .line 1765
    new-instance v9, Landroidx/compose/ui/text/android/style/TypefaceSpan;

    .line 1766
    .line 1767
    const/4 v10, 0x1

    .line 1768
    invoke-direct {v9, v10, v8}, Landroidx/compose/ui/text/android/style/TypefaceSpan;-><init>(ILjava/lang/Object;)V

    .line 1769
    .line 1770
    .line 1771
    invoke-interface {v2, v9, v12, v13, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1772
    .line 1773
    .line 1774
    goto :goto_41

    .line 1775
    :cond_62
    const/4 v10, 0x1

    .line 1776
    :goto_41
    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 1777
    .line 1778
    if-eqz v8, :cond_63

    .line 1779
    .line 1780
    new-instance v9, Landroid/text/style/ScaleXSpan;

    .line 1781
    .line 1782
    iget v10, v8, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    .line 1783
    .line 1784
    invoke-direct {v9, v10}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 1785
    .line 1786
    .line 1787
    invoke-interface {v2, v9, v12, v13, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1788
    .line 1789
    .line 1790
    new-instance v9, Landroidx/compose/ui/text/android/style/SkewXSpan;

    .line 1791
    .line 1792
    iget v8, v8, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    .line 1793
    .line 1794
    const/4 v10, 0x0

    .line 1795
    invoke-direct {v9, v10, v8}, Landroidx/compose/ui/text/android/style/SkewXSpan;-><init>(IF)V

    .line 1796
    .line 1797
    .line 1798
    invoke-interface {v2, v9, v12, v13, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1799
    .line 1800
    .line 1801
    goto :goto_42

    .line 1802
    :cond_63
    const/4 v10, 0x0

    .line 1803
    :goto_42
    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 1804
    .line 1805
    invoke-static {v2, v8, v12, v13}, Lkotlin/UnsignedKt;->setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    .line 1806
    .line 1807
    .line 1808
    iget-wide v8, v7, Landroidx/compose/ui/text/SpanStyle;->background:J

    .line 1809
    .line 1810
    const-wide/16 v23, 0x10

    .line 1811
    .line 1812
    cmp-long v16, v8, v23

    .line 1813
    .line 1814
    if-eqz v16, :cond_64

    .line 1815
    .line 1816
    new-instance v10, Landroid/text/style/BackgroundColorSpan;

    .line 1817
    .line 1818
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 1819
    .line 1820
    .line 1821
    move-result v8

    .line 1822
    invoke-direct {v10, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 1823
    .line 1824
    .line 1825
    invoke-interface {v2, v10, v12, v13, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1826
    .line 1827
    .line 1828
    :cond_64
    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 1829
    .line 1830
    if-eqz v8, :cond_66

    .line 1831
    .line 1832
    iget-wide v9, v8, Landroidx/compose/ui/graphics/Shadow;->offset:J

    .line 1833
    .line 1834
    new-instance v1, Landroidx/compose/ui/text/android/style/ShadowSpan;

    .line 1835
    .line 1836
    move-wide/from16 v24, v9

    .line 1837
    .line 1838
    iget-wide v9, v8, Landroidx/compose/ui/graphics/Shadow;->color:J

    .line 1839
    .line 1840
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 1841
    .line 1842
    .line 1843
    move-result v9

    .line 1844
    const/16 v10, 0x20

    .line 1845
    .line 1846
    move-wide/from16 v26, v14

    .line 1847
    .line 1848
    shr-long v14, v24, v10

    .line 1849
    .line 1850
    long-to-int v10, v14

    .line 1851
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1852
    .line 1853
    .line 1854
    move-result v10

    .line 1855
    const-wide v14, 0xffffffffL

    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    and-long v14, v24, v14

    .line 1861
    .line 1862
    long-to-int v14, v14

    .line 1863
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1864
    .line 1865
    .line 1866
    move-result v14

    .line 1867
    iget v8, v8, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    .line 1868
    .line 1869
    cmpg-float v15, v8, p3

    .line 1870
    .line 1871
    if-nez v15, :cond_65

    .line 1872
    .line 1873
    const/4 v8, 0x1

    .line 1874
    :cond_65
    invoke-direct {v1, v9, v10, v14, v8}, Landroidx/compose/ui/text/android/style/ShadowSpan;-><init>(IFFF)V

    .line 1875
    .line 1876
    .line 1877
    const/16 v9, 0x21

    .line 1878
    .line 1879
    invoke-interface {v2, v1, v12, v13, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1880
    .line 1881
    .line 1882
    goto :goto_43

    .line 1883
    :cond_66
    move v9, v1

    .line 1884
    move-wide/from16 v26, v14

    .line 1885
    .line 1886
    :goto_43
    iget-object v1, v7, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 1887
    .line 1888
    if-eqz v1, :cond_67

    .line 1889
    .line 1890
    new-instance v7, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;

    .line 1891
    .line 1892
    invoke-direct {v7, v1}, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;-><init>(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 1893
    .line 1894
    .line 1895
    invoke-interface {v2, v7, v12, v13, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1896
    .line 1897
    .line 1898
    :cond_67
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 1899
    .line 1900
    .line 1901
    move-result-wide v7

    .line 1902
    const-wide v14, 0x100000000L

    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    invoke-static {v7, v8, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 1908
    .line 1909
    .line 1910
    move-result v1

    .line 1911
    if-nez v1, :cond_68

    .line 1912
    .line 1913
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 1914
    .line 1915
    .line 1916
    move-result-wide v7

    .line 1917
    const-wide v14, 0x200000000L

    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    invoke-static {v7, v8, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 1923
    .line 1924
    .line 1925
    move-result v1

    .line 1926
    if-eqz v1, :cond_69

    .line 1927
    .line 1928
    :cond_68
    const/4 v5, 0x1

    .line 1929
    :cond_69
    :goto_44
    add-int/lit8 v1, v18, 0x1

    .line 1930
    .line 1931
    move-object v8, v2

    .line 1932
    move v2, v1

    .line 1933
    move/from16 v1, p1

    .line 1934
    .line 1935
    goto/16 :goto_3b

    .line 1936
    .line 1937
    :cond_6a
    move-object v2, v8

    .line 1938
    if-eqz v5, :cond_70

    .line 1939
    .line 1940
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 1941
    .line 1942
    .line 1943
    move-result v1

    .line 1944
    const/4 v9, 0x0

    .line 1945
    :goto_45
    if-ge v9, v1, :cond_70

    .line 1946
    .line 1947
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1948
    .line 1949
    .line 1950
    move-result-object v5

    .line 1951
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1952
    .line 1953
    iget-object v7, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1954
    .line 1955
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    .line 1956
    .line 1957
    instance-of v8, v7, Landroidx/compose/ui/text/SpanStyle;

    .line 1958
    .line 1959
    if-eqz v8, :cond_6b

    .line 1960
    .line 1961
    iget v8, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1962
    .line 1963
    iget v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1964
    .line 1965
    if-ltz v8, :cond_6b

    .line 1966
    .line 1967
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 1968
    .line 1969
    .line 1970
    move-result v10

    .line 1971
    if-ge v8, v10, :cond_6b

    .line 1972
    .line 1973
    if-le v5, v8, :cond_6b

    .line 1974
    .line 1975
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 1976
    .line 1977
    .line 1978
    move-result v10

    .line 1979
    if-le v5, v10, :cond_6c

    .line 1980
    .line 1981
    :cond_6b
    move v7, v9

    .line 1982
    goto :goto_47

    .line 1983
    :cond_6c
    check-cast v7, Landroidx/compose/ui/text/SpanStyle;

    .line 1984
    .line 1985
    iget-wide v12, v7, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 1986
    .line 1987
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 1988
    .line 1989
    .line 1990
    move-result-wide v14

    .line 1991
    move v7, v9

    .line 1992
    const-wide v9, 0x100000000L

    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    invoke-static {v14, v15, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 1998
    .line 1999
    .line 2000
    move-result v18

    .line 2001
    if-eqz v18, :cond_6d

    .line 2002
    .line 2003
    new-instance v9, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;

    .line 2004
    .line 2005
    invoke-interface {v11, v12, v13}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 2006
    .line 2007
    .line 2008
    move-result v10

    .line 2009
    invoke-direct {v9, v10}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;-><init>(F)V

    .line 2010
    .line 2011
    .line 2012
    goto :goto_46

    .line 2013
    :cond_6d
    const-wide v9, 0x200000000L

    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    invoke-static {v14, v15, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 2019
    .line 2020
    .line 2021
    move-result v14

    .line 2022
    if-eqz v14, :cond_6e

    .line 2023
    .line 2024
    new-instance v9, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;

    .line 2025
    .line 2026
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 2027
    .line 2028
    .line 2029
    move-result v10

    .line 2030
    invoke-direct {v9, v10}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;-><init>(F)V

    .line 2031
    .line 2032
    .line 2033
    goto :goto_46

    .line 2034
    :cond_6e
    move-object/from16 v9, p2

    .line 2035
    .line 2036
    :goto_46
    if-eqz v9, :cond_6f

    .line 2037
    .line 2038
    const/16 v10, 0x21

    .line 2039
    .line 2040
    invoke-interface {v2, v9, v8, v5, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2041
    .line 2042
    .line 2043
    :cond_6f
    :goto_47
    add-int/lit8 v9, v7, 0x1

    .line 2044
    .line 2045
    goto :goto_45

    .line 2046
    :cond_70
    move-object/from16 v1, v17

    .line 2047
    .line 2048
    iget-object v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 2049
    .line 2050
    if-eqz v1, :cond_73

    .line 2051
    .line 2052
    iget-wide v7, v1, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    .line 2053
    .line 2054
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 2055
    .line 2056
    .line 2057
    move-result-wide v9

    .line 2058
    const-wide v14, 0x100000000L

    .line 2059
    .line 2060
    .line 2061
    .line 2062
    .line 2063
    invoke-static {v9, v10, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 2064
    .line 2065
    .line 2066
    move-result v1

    .line 2067
    if-eqz v1, :cond_71

    .line 2068
    .line 2069
    invoke-interface {v11, v7, v8}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 2070
    .line 2071
    .line 2072
    move-result v1

    .line 2073
    goto :goto_48

    .line 2074
    :cond_71
    const-wide v14, 0x200000000L

    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    invoke-static {v9, v10, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 2080
    .line 2081
    .line 2082
    move-result v1

    .line 2083
    if-eqz v1, :cond_72

    .line 2084
    .line 2085
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 2086
    .line 2087
    .line 2088
    move-result v1

    .line 2089
    mul-float/2addr v1, v4

    .line 2090
    goto :goto_48

    .line 2091
    :cond_72
    move/from16 v1, p3

    .line 2092
    .line 2093
    :goto_48
    move v13, v1

    .line 2094
    goto :goto_49

    .line 2095
    :cond_73
    move/from16 v13, p3

    .line 2096
    .line 2097
    :goto_49
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 2098
    .line 2099
    .line 2100
    move-result v1

    .line 2101
    const/4 v5, 0x0

    .line 2102
    :goto_4a
    if-ge v5, v1, :cond_76

    .line 2103
    .line 2104
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v7

    .line 2108
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 2109
    .line 2110
    iget-object v8, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 2111
    .line 2112
    instance-of v9, v8, Landroidx/compose/ui/text/Bullet;

    .line 2113
    .line 2114
    if-eqz v9, :cond_74

    .line 2115
    .line 2116
    check-cast v8, Landroidx/compose/ui/text/Bullet;

    .line 2117
    .line 2118
    goto :goto_4b

    .line 2119
    :cond_74
    move-object/from16 v8, p2

    .line 2120
    .line 2121
    :goto_4b
    if-eqz v8, :cond_75

    .line 2122
    .line 2123
    iget-wide v9, v8, Landroidx/compose/ui/text/Bullet;->width:J

    .line 2124
    .line 2125
    invoke-static {v9, v10, v4, v11}, Lkotlin/UnsignedKt;->resolveBulletTextUnitToPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    .line 2126
    .line 2127
    .line 2128
    move-result v9

    .line 2129
    iget-wide v14, v8, Landroidx/compose/ui/text/Bullet;->height:J

    .line 2130
    .line 2131
    invoke-static {v14, v15, v4, v11}, Lkotlin/UnsignedKt;->resolveBulletTextUnitToPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    .line 2132
    .line 2133
    .line 2134
    move-result v10

    .line 2135
    iget-wide v14, v8, Landroidx/compose/ui/text/Bullet;->padding:J

    .line 2136
    .line 2137
    invoke-static {v14, v15, v4, v11}, Lkotlin/UnsignedKt;->resolveBulletTextUnitToPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    .line 2138
    .line 2139
    .line 2140
    move-result v8

    .line 2141
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 2142
    .line 2143
    .line 2144
    move-result v12

    .line 2145
    if-nez v12, :cond_75

    .line 2146
    .line 2147
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    .line 2148
    .line 2149
    .line 2150
    move-result v12

    .line 2151
    if-nez v12, :cond_75

    .line 2152
    .line 2153
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 2154
    .line 2155
    .line 2156
    move-result v12

    .line 2157
    if-nez v12, :cond_75

    .line 2158
    .line 2159
    move-object v12, v11

    .line 2160
    move v11, v8

    .line 2161
    new-instance v8, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;

    .line 2162
    .line 2163
    const/4 v15, 0x1

    .line 2164
    const/16 v16, 0x0

    .line 2165
    .line 2166
    invoke-direct/range {v8 .. v13}, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;-><init>(FFFLandroidx/compose/ui/unit/Density;F)V

    .line 2167
    .line 2168
    .line 2169
    move-object v11, v12

    .line 2170
    iget v9, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 2171
    .line 2172
    iget v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 2173
    .line 2174
    const/16 v10, 0x21

    .line 2175
    .line 2176
    invoke-interface {v2, v8, v9, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2177
    .line 2178
    .line 2179
    goto :goto_4c

    .line 2180
    :cond_75
    const/4 v15, 0x1

    .line 2181
    const/16 v16, 0x0

    .line 2182
    .line 2183
    :goto_4c
    add-int/lit8 v5, v5, 0x1

    .line 2184
    .line 2185
    goto :goto_4a

    .line 2186
    :cond_76
    const/4 v15, 0x1

    .line 2187
    const/16 v16, 0x0

    .line 2188
    .line 2189
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 2190
    .line 2191
    .line 2192
    move-result v1

    .line 2193
    move/from16 v3, v16

    .line 2194
    .line 2195
    :goto_4d
    if-ge v3, v1, :cond_7c

    .line 2196
    .line 2197
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2198
    .line 2199
    .line 2200
    move-result-object v4

    .line 2201
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 2202
    .line 2203
    iget-object v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 2204
    .line 2205
    check-cast v5, Landroidx/compose/ui/text/Placeholder;

    .line 2206
    .line 2207
    iget v7, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 2208
    .line 2209
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 2210
    .line 2211
    const-class v8, Landroidx/emoji2/text/TypefaceEmojiSpan;

    .line 2212
    .line 2213
    invoke-interface {v2, v7, v4, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 2214
    .line 2215
    .line 2216
    move-result-object v8

    .line 2217
    array-length v9, v8

    .line 2218
    move/from16 v10, v16

    .line 2219
    .line 2220
    :goto_4e
    if-ge v10, v9, :cond_77

    .line 2221
    .line 2222
    aget-object v12, v8, v10

    .line 2223
    .line 2224
    check-cast v12, Landroidx/emoji2/text/TypefaceEmojiSpan;

    .line 2225
    .line 2226
    invoke-interface {v2, v12}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2227
    .line 2228
    .line 2229
    add-int/lit8 v10, v10, 0x1

    .line 2230
    .line 2231
    goto :goto_4e

    .line 2232
    :cond_77
    new-instance v8, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 2233
    .line 2234
    iget-wide v9, v5, Landroidx/compose/ui/text/Placeholder;->width:J

    .line 2235
    .line 2236
    iget-wide v12, v5, Landroidx/compose/ui/text/Placeholder;->height:J

    .line 2237
    .line 2238
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 2239
    .line 2240
    .line 2241
    move-result v9

    .line 2242
    move-object/from16 v17, v6

    .line 2243
    .line 2244
    iget-wide v5, v5, Landroidx/compose/ui/text/Placeholder;->width:J

    .line 2245
    .line 2246
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 2247
    .line 2248
    .line 2249
    move-result-wide v5

    .line 2250
    const-wide v14, 0x100000000L

    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    invoke-static {v5, v6, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 2256
    .line 2257
    .line 2258
    move-result v10

    .line 2259
    if-eqz v10, :cond_78

    .line 2260
    .line 2261
    move-wide v5, v12

    .line 2262
    move/from16 v10, v16

    .line 2263
    .line 2264
    const-wide v14, 0x200000000L

    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    :goto_4f
    move-object v13, v11

    .line 2270
    goto :goto_50

    .line 2271
    :cond_78
    const-wide v14, 0x200000000L

    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    invoke-static {v5, v6, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 2277
    .line 2278
    .line 2279
    move-result v5

    .line 2280
    if-eqz v5, :cond_79

    .line 2281
    .line 2282
    move-wide v5, v12

    .line 2283
    const/4 v10, 0x1

    .line 2284
    goto :goto_4f

    .line 2285
    :cond_79
    move-wide v5, v12

    .line 2286
    const/4 v10, 0x2

    .line 2287
    goto :goto_4f

    .line 2288
    :goto_50
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 2289
    .line 2290
    .line 2291
    move-result v11

    .line 2292
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 2293
    .line 2294
    .line 2295
    move-result-wide v5

    .line 2296
    const-wide v14, 0x100000000L

    .line 2297
    .line 2298
    .line 2299
    .line 2300
    .line 2301
    invoke-static {v5, v6, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 2302
    .line 2303
    .line 2304
    move-result v12

    .line 2305
    if-eqz v12, :cond_7a

    .line 2306
    .line 2307
    move/from16 v12, v16

    .line 2308
    .line 2309
    const-wide v19, 0x200000000L

    .line 2310
    .line 2311
    .line 2312
    .line 2313
    .line 2314
    goto :goto_51

    .line 2315
    :cond_7a
    const-wide v14, 0x200000000L

    .line 2316
    .line 2317
    .line 2318
    .line 2319
    .line 2320
    invoke-static {v5, v6, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 2321
    .line 2322
    .line 2323
    move-result v5

    .line 2324
    if-eqz v5, :cond_7b

    .line 2325
    .line 2326
    move-wide/from16 v19, v14

    .line 2327
    .line 2328
    const/4 v12, 0x1

    .line 2329
    goto :goto_51

    .line 2330
    :cond_7b
    move-wide/from16 v19, v14

    .line 2331
    .line 2332
    const/4 v12, 0x2

    .line 2333
    :goto_51
    const/4 v14, 0x3

    .line 2334
    const-wide v21, 0x100000000L

    .line 2335
    .line 2336
    .line 2337
    .line 2338
    .line 2339
    invoke-direct/range {v8 .. v14}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;-><init>(FIFILandroidx/compose/ui/unit/Density;I)V

    .line 2340
    .line 2341
    .line 2342
    move-object v11, v13

    .line 2343
    const/16 v9, 0x21

    .line 2344
    .line 2345
    invoke-interface {v2, v8, v7, v4, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2346
    .line 2347
    .line 2348
    add-int/lit8 v3, v3, 0x1

    .line 2349
    .line 2350
    move-object/from16 v6, v17

    .line 2351
    .line 2352
    const/4 v15, 0x1

    .line 2353
    goto/16 :goto_4d

    .line 2354
    .line 2355
    :cond_7c
    move-object v8, v2

    .line 2356
    :goto_52
    iput-object v8, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->charSequence:Ljava/lang/CharSequence;

    .line 2357
    .line 2358
    new-instance v1, Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 2359
    .line 2360
    iget-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 2361
    .line 2362
    iget v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    .line 2363
    .line 2364
    invoke-direct {v1, v8, v2, v3}, Landroidx/compose/ui/text/android/LayoutIntrinsics;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    .line 2365
    .line 2366
    .line 2367
    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 2368
    .line 2369
    return-void

    .line 2370
    :cond_7d
    const-string v0, "Array is empty."

    .line 2371
    .line 2372
    invoke-static {v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;)V

    .line 2373
    .line 2374
    .line 2375
    throw p2

    .line 2376
    :cond_7e
    const/16 p2, 0x0

    .line 2377
    .line 2378
    const-string v0, "Invalid TextDirection."

    .line 2379
    .line 2380
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2381
    .line 2382
    .line 2383
    throw p2
.end method


# virtual methods
.method public final getHasStaleResolvedFonts()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lcom/caverock/androidsvg/SVG;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->isStaleResolvedFont()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-nez v0, :cond_4

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->emojiCompatProcessed:Z

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint_androidKt;->getHasEmojiCompat(Landroidx/compose/ui/text/TextStyle;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    sget-object p0, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->delegate:Landroidx/paging/HintHandler;

    .line 27
    .line 28
    sget-object p0, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->delegate:Landroidx/paging/HintHandler;

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Landroidx/compose/runtime/State;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/paging/HintHandler;->getFontLoadState()Landroidx/compose/runtime/State;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    sget-object v0, Landroidx/compose/ui/text/platform/AndroidTextPaint_androidKt;->Falsey:Landroidx/compose/ui/text/platform/ImmutableBool;

    .line 51
    .line 52
    :goto_1
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    return v1

    .line 66
    :cond_4
    :goto_2
    const/4 p0, 0x1

    .line 67
    return p0
.end method

.method public final getMaxIntrinsicWidth()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getMaxIntrinsicWidth()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getMinIntrinsicWidth()F
    .locals 10

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textPaint:Landroid/text/TextPaint;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget p0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v2, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->charSequence:Ljava/lang/CharSequence;

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Ljava/util/PriorityQueue;

    .line 39
    .line 40
    sget-object v3, Landroidx/compose/ui/text/android/StaticLayoutFactory;->IntRangeComparator:Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/16 v4, 0xa

    .line 43
    .line 44
    invoke-direct {v2, v4, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v5, 0x0

    .line 52
    :goto_0
    const/4 v6, -0x1

    .line 53
    if-eq v3, v6, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    const/4 v7, 0x1

    .line 60
    if-ge v6, v4, :cond_1

    .line 61
    .line 62
    new-instance v6, Lkotlin/ranges/IntRange;

    .line 63
    .line 64
    invoke-direct {v6, v5, v3, v7}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Lkotlin/ranges/IntRange;

    .line 76
    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    iget v8, v6, Lkotlin/ranges/IntProgression;->last:I

    .line 80
    .line 81
    iget v6, v6, Lkotlin/ranges/IntProgression;->first:I

    .line 82
    .line 83
    sub-int/2addr v8, v6

    .line 84
    sub-int v6, v3, v5

    .line 85
    .line 86
    if-ge v8, v6, :cond_2

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    new-instance v6, Lkotlin/ranges/IntRange;

    .line 92
    .line 93
    invoke-direct {v6, v5, v3, v7}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    move v9, v5

    .line 104
    move v5, v3

    .line 105
    move v3, v9

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/4 v3, 0x0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Lkotlin/ranges/IntRange;

    .line 130
    .line 131
    iget v3, v2, Lkotlin/ranges/IntProgression;->first:I

    .line 132
    .line 133
    iget v2, v2, Lkotlin/ranges/IntProgression;->last:I

    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getCharSequenceForIntrinsicWidth()Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-static {v4, v3, v2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    move v3, v2

    .line 144
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_5

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Lkotlin/ranges/IntRange;

    .line 155
    .line 156
    iget v4, v2, Lkotlin/ranges/IntProgression;->first:I

    .line 157
    .line 158
    iget v2, v2, Lkotlin/ranges/IntProgression;->last:I

    .line 159
    .line 160
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getCharSequenceForIntrinsicWidth()Ljava/lang/CharSequence;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-static {v5, v4, v2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    goto :goto_2

    .line 173
    :cond_5
    :goto_3
    iput v3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    .line 174
    .line 175
    return v3

    .line 176
    :cond_6
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 177
    .line 178
    .line 179
    return v3
.end method
