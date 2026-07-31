.class public final Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

.field public final synthetic $bounds:Landroid/graphics/Rect;

.field public final synthetic $composition:Lcom/airbnb/lottie/LottieComposition;

.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $drawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic $matrix:Landroid/graphics/Matrix;

.field public final synthetic $progress:Lkotlin/jvm/functions/Function0;

.field public final synthetic $renderMode:Lcom/airbnb/lottie/RenderMode;

.field public final synthetic $setDynamicProperties$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Matrix;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/RenderMode;Lcom/airbnb/lottie/AsyncUpdates;Lcom/airbnb/lottie/LottieComposition;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$bounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$matrix:Landroid/graphics/Matrix;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$drawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$composition:Lcom/airbnb/lottie/LottieComposition;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$context:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$progress:Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$setDynamicProperties$delegate:Landroidx/compose/runtime/MutableState;

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$bounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    int-to-float v4, v4

    .line 25
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    int-to-float v5, v5

    .line 30
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    int-to-long v6, v4

    .line 35
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    int-to-long v4, v4

    .line 40
    const/16 v8, 0x20

    .line 41
    .line 42
    shl-long/2addr v6, v8

    .line 43
    const-wide v9, 0xffffffffL

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    and-long/2addr v4, v9

    .line 49
    or-long/2addr v4, v6

    .line 50
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-static {v6}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 63
    .line 64
    .line 65
    move-result-wide v11

    .line 66
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    invoke-static {v7}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    int-to-long v11, v6

    .line 75
    shl-long/2addr v11, v8

    .line 76
    int-to-long v6, v7

    .line 77
    and-long/2addr v6, v9

    .line 78
    or-long/2addr v6, v11

    .line 79
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 80
    .line 81
    .line 82
    move-result-wide v11

    .line 83
    invoke-static {v4, v5, v11, v12}, Landroidx/compose/ui/layout/RulerKt;->computeFillMinDimension-iLBOSCw(JJ)F

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    int-to-long v12, v12

    .line 92
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    int-to-long v14, v11

    .line 97
    shl-long v11, v12, v8

    .line 98
    .line 99
    and-long/2addr v14, v9

    .line 100
    or-long/2addr v11, v14

    .line 101
    sget v13, Landroidx/compose/ui/layout/ScaleFactor;->$r8$clinit:I

    .line 102
    .line 103
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    sget v14, Landroidx/compose/ui/layout/ScaleFactor;->$r8$clinit:I

    .line 108
    .line 109
    shr-long v14, v11, v8

    .line 110
    .line 111
    long-to-int v14, v14

    .line 112
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    mul-float/2addr v15, v13

    .line 117
    float-to-int v13, v15

    .line 118
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    and-long/2addr v11, v9

    .line 123
    long-to-int v5, v11

    .line 124
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    mul-float/2addr v11, v4

    .line 129
    float-to-int v4, v11

    .line 130
    int-to-long v11, v13

    .line 131
    shl-long/2addr v11, v8

    .line 132
    move/from16 p1, v8

    .line 133
    .line 134
    move-wide v15, v9

    .line 135
    int-to-long v8, v4

    .line 136
    and-long/2addr v8, v15

    .line 137
    or-long/2addr v8, v11

    .line 138
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    shr-long v10, v6, p1

    .line 143
    .line 144
    long-to-int v4, v10

    .line 145
    shr-long v10, v8, p1

    .line 146
    .line 147
    long-to-int v10, v10

    .line 148
    sub-int/2addr v4, v10

    .line 149
    int-to-float v4, v4

    .line 150
    const/high16 v10, 0x40000000    # 2.0f

    .line 151
    .line 152
    div-float/2addr v4, v10

    .line 153
    and-long/2addr v6, v15

    .line 154
    long-to-int v6, v6

    .line 155
    and-long/2addr v8, v15

    .line 156
    long-to-int v7, v8

    .line 157
    sub-int/2addr v6, v7

    .line 158
    int-to-float v6, v6

    .line 159
    div-float/2addr v6, v10

    .line 160
    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 161
    .line 162
    const/4 v8, 0x0

    .line 163
    if-ne v1, v7, :cond_0

    .line 164
    .line 165
    move v1, v8

    .line 166
    goto :goto_0

    .line 167
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 168
    .line 169
    mul-float/2addr v1, v8

    .line 170
    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    .line 171
    .line 172
    add-float/2addr v1, v7

    .line 173
    mul-float/2addr v1, v4

    .line 174
    add-float/2addr v7, v8

    .line 175
    mul-float/2addr v7, v6

    .line 176
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    int-to-long v6, v1

    .line 185
    shl-long v6, v6, p1

    .line 186
    .line 187
    int-to-long v9, v4

    .line 188
    and-long/2addr v9, v15

    .line 189
    or-long/2addr v6, v9

    .line 190
    iget-object v1, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$matrix:Landroid/graphics/Matrix;

    .line 191
    .line 192
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 193
    .line 194
    .line 195
    shr-long v9, v6, p1

    .line 196
    .line 197
    long-to-int v4, v9

    .line 198
    int-to-float v4, v4

    .line 199
    and-long/2addr v6, v15

    .line 200
    long-to-int v6, v6

    .line 201
    int-to-float v6, v6

    .line 202
    invoke-virtual {v1, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 203
    .line 204
    .line 205
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 214
    .line 215
    .line 216
    sget-object v4, Lcom/airbnb/lottie/LottieFeatureFlag;->MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 217
    .line 218
    iget-object v5, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$drawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 219
    .line 220
    iget-object v6, v5, Lcom/airbnb/lottie/LottieDrawable;->lottieFeatureFlags:Lcom/airbnb/lottie/LottieFeatureFlags;

    .line 221
    .line 222
    iget-object v7, v5, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 223
    .line 224
    iget-object v6, v6, Lcom/airbnb/lottie/LottieFeatureFlags;->enabledFlags:Ljava/util/HashSet;

    .line 225
    .line 226
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    iget-object v6, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 231
    .line 232
    if-eqz v6, :cond_1

    .line 233
    .line 234
    if-eqz v4, :cond_1

    .line 235
    .line 236
    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 237
    .line 238
    .line 239
    :cond_1
    iget-object v4, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 240
    .line 241
    iput-object v4, v5, Lcom/airbnb/lottie/LottieDrawable;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 242
    .line 243
    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieDrawable;->computeRenderMode()V

    .line 244
    .line 245
    .line 246
    iget-object v4, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 247
    .line 248
    iput-object v4, v5, Lcom/airbnb/lottie/LottieDrawable;->asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 249
    .line 250
    iget-object v4, v5, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 251
    .line 252
    iget-object v6, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 253
    .line 254
    const/4 v9, 0x0

    .line 255
    const/4 v10, 0x0

    .line 256
    iget-object v11, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$composition:Lcom/airbnb/lottie/LottieComposition;

    .line 257
    .line 258
    const/4 v12, 0x1

    .line 259
    if-ne v6, v11, :cond_2

    .line 260
    .line 261
    goto/16 :goto_4

    .line 262
    .line 263
    :cond_2
    iput-boolean v12, v5, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 264
    .line 265
    iget-boolean v6, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 266
    .line 267
    if-eqz v6, :cond_3

    .line 268
    .line 269
    invoke-virtual {v7}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->cancel()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    if-nez v6, :cond_3

    .line 277
    .line 278
    sget-object v6, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 279
    .line 280
    iput-object v6, v5, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 281
    .line 282
    :cond_3
    iput-object v9, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 283
    .line 284
    iput-object v9, v5, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 285
    .line 286
    iput-object v9, v5, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 287
    .line 288
    const v6, -0x800001

    .line 289
    .line 290
    .line 291
    iput v6, v5, Lcom/airbnb/lottie/LottieDrawable;->lastDrawnProgress:F

    .line 292
    .line 293
    iput-object v9, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 294
    .line 295
    const/high16 v6, -0x31000000

    .line 296
    .line 297
    iput v6, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 298
    .line 299
    const/high16 v6, 0x4f000000

    .line 300
    .line 301
    iput v6, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 302
    .line 303
    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 304
    .line 305
    .line 306
    iput-object v11, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 307
    .line 308
    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 309
    .line 310
    .line 311
    iget-object v6, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 312
    .line 313
    if-nez v6, :cond_4

    .line 314
    .line 315
    move v6, v12

    .line 316
    goto :goto_1

    .line 317
    :cond_4
    move v6, v10

    .line 318
    :goto_1
    iput-object v11, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 319
    .line 320
    if-eqz v6, :cond_5

    .line 321
    .line 322
    iget v6, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 323
    .line 324
    iget v13, v11, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    .line 325
    .line 326
    invoke-static {v6, v13}, Ljava/lang/Math;->max(FF)F

    .line 327
    .line 328
    .line 329
    move-result v6

    .line 330
    iget v13, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 331
    .line 332
    iget v11, v11, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 333
    .line 334
    invoke-static {v13, v11}, Ljava/lang/Math;->min(FF)F

    .line 335
    .line 336
    .line 337
    move-result v11

    .line 338
    invoke-virtual {v7, v6, v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 339
    .line 340
    .line 341
    goto :goto_2

    .line 342
    :cond_5
    iget v6, v11, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    .line 343
    .line 344
    float-to-int v6, v6

    .line 345
    int-to-float v6, v6

    .line 346
    iget v11, v11, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 347
    .line 348
    float-to-int v11, v11

    .line 349
    int-to-float v11, v11

    .line 350
    invoke-virtual {v7, v6, v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 351
    .line 352
    .line 353
    :goto_2
    iget v6, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 354
    .line 355
    iput v8, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 356
    .line 357
    iput v8, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 358
    .line 359
    float-to-int v6, v6

    .line 360
    int-to-float v6, v6

    .line 361
    invoke-virtual {v7, v6}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v7}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyUpdate()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v7}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedFraction()F

    .line 368
    .line 369
    .line 370
    move-result v6

    .line 371
    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 372
    .line 373
    .line 374
    new-instance v6, Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v8

    .line 387
    if-eqz v8, :cond_7

    .line 388
    .line 389
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    check-cast v8, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;

    .line 394
    .line 395
    if-eqz v8, :cond_6

    .line 396
    .line 397
    invoke-interface {v8}, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;->run()V

    .line 398
    .line 399
    .line 400
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 401
    .line 402
    .line 403
    goto :goto_3

    .line 404
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieDrawable;->computeRenderMode()V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    instance-of v6, v4, Landroid/widget/ImageView;

    .line 415
    .line 416
    if-eqz v6, :cond_8

    .line 417
    .line 418
    check-cast v4, Landroid/widget/ImageView;

    .line 419
    .line 420
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    .line 425
    .line 426
    :cond_8
    :goto_4
    iget-object v4, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$setDynamicProperties$delegate:Landroidx/compose/runtime/MutableState;

    .line 427
    .line 428
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    if-nez v4, :cond_13

    .line 433
    .line 434
    iput-boolean v12, v5, Lcom/airbnb/lottie/LottieDrawable;->isApplyingShadowToLayersEnabled:Z

    .line 435
    .line 436
    iget-boolean v4, v5, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    .line 437
    .line 438
    if-eq v12, v4, :cond_a

    .line 439
    .line 440
    iput-boolean v12, v5, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    .line 441
    .line 442
    iget-object v4, v5, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 443
    .line 444
    if-eqz v4, :cond_9

    .line 445
    .line 446
    iput-boolean v12, v4, Lcom/airbnb/lottie/model/layer/CompositionLayer;->clipToCompositionBounds:Z

    .line 447
    .line 448
    :cond_9
    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 449
    .line 450
    .line 451
    :cond_a
    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieDrawable;->getMarkerForAnimationsDisabled()Lcom/airbnb/lottie/model/Marker;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    iget-object v6, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$context:Landroid/content/Context;

    .line 456
    .line 457
    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieDrawable;->animationsEnabled(Landroid/content/Context;)Z

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    if-nez v6, :cond_b

    .line 462
    .line 463
    if-eqz v4, :cond_b

    .line 464
    .line 465
    iget v0, v4, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    .line 466
    .line 467
    invoke-virtual {v5, v0}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 468
    .line 469
    .line 470
    goto :goto_5

    .line 471
    :cond_b
    iget-object v0, v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;->$progress:Lkotlin/jvm/functions/Function0;

    .line 472
    .line 473
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    check-cast v0, Ljava/lang/Number;

    .line 478
    .line 479
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    invoke-virtual {v5, v0}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 484
    .line 485
    .line 486
    :goto_5
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    invoke-virtual {v5, v10, v10, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 495
    .line 496
    .line 497
    invoke-static {v2}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    iget-object v2, v5, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;

    .line 502
    .line 503
    sget-object v3, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 504
    .line 505
    iget-object v4, v5, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 506
    .line 507
    iget-object v6, v5, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 508
    .line 509
    iget-object v8, v5, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 510
    .line 511
    if-eqz v6, :cond_12

    .line 512
    .line 513
    if-nez v8, :cond_c

    .line 514
    .line 515
    goto/16 :goto_c

    .line 516
    .line 517
    :cond_c
    iget-object v8, v5, Lcom/airbnb/lottie/LottieDrawable;->asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 518
    .line 519
    if-eqz v8, :cond_d

    .line 520
    .line 521
    goto :goto_6

    .line 522
    :cond_d
    sget-object v8, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 523
    .line 524
    :goto_6
    sget-object v11, Lcom/airbnb/lottie/AsyncUpdates;->ENABLED:Lcom/airbnb/lottie/AsyncUpdates;

    .line 525
    .line 526
    if-ne v8, v11, :cond_e

    .line 527
    .line 528
    goto :goto_7

    .line 529
    :cond_e
    move v12, v10

    .line 530
    :goto_7
    if-eqz v12, :cond_f

    .line 531
    .line 532
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieDrawable;->shouldSetProgressBeforeDrawing()Z

    .line 536
    .line 537
    .line 538
    move-result v8

    .line 539
    if-eqz v8, :cond_f

    .line 540
    .line 541
    invoke-virtual {v7}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    .line 542
    .line 543
    .line 544
    move-result v8

    .line 545
    invoke-virtual {v5, v8}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .line 547
    .line 548
    goto :goto_8

    .line 549
    :catchall_0
    move-exception v0

    .line 550
    goto :goto_b

    .line 551
    :cond_f
    :goto_8
    iget v8, v5, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 552
    .line 553
    :try_start_1
    iget-boolean v11, v5, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    .line 554
    .line 555
    if-eqz v11, :cond_10

    .line 556
    .line 557
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v5, v0, v6}, Lcom/airbnb/lottie/LottieDrawable;->renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/CompositionLayer;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 567
    .line 568
    .line 569
    goto :goto_9

    .line 570
    :cond_10
    invoke-virtual {v6, v0, v1, v8, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    .line 571
    .line 572
    .line 573
    :goto_9
    iput-boolean v10, v5, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    .line 575
    if-eqz v12, :cond_12

    .line 576
    .line 577
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 578
    .line 579
    .line 580
    iget v0, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->progress:F

    .line 581
    .line 582
    invoke-virtual {v7}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    .line 583
    .line 584
    .line 585
    move-result v1

    .line 586
    cmpl-float v0, v0, v1

    .line 587
    .line 588
    if-eqz v0, :cond_12

    .line 589
    .line 590
    :goto_a
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 591
    .line 592
    .line 593
    goto :goto_c

    .line 594
    :goto_b
    if-eqz v12, :cond_11

    .line 595
    .line 596
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 597
    .line 598
    .line 599
    iget v1, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->progress:F

    .line 600
    .line 601
    invoke-virtual {v7}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    .line 602
    .line 603
    .line 604
    move-result v4

    .line 605
    cmpl-float v1, v1, v4

    .line 606
    .line 607
    if-eqz v1, :cond_11

    .line 608
    .line 609
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 610
    .line 611
    .line 612
    :cond_11
    throw v0

    .line 613
    :catch_0
    if-eqz v12, :cond_12

    .line 614
    .line 615
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 616
    .line 617
    .line 618
    iget v0, v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;->progress:F

    .line 619
    .line 620
    invoke-virtual {v7}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    cmpl-float v0, v0, v1

    .line 625
    .line 626
    if-eqz v0, :cond_12

    .line 627
    .line 628
    goto :goto_a

    .line 629
    :cond_12
    :goto_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 630
    .line 631
    return-object v0

    .line 632
    :cond_13
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 633
    .line 634
    .line 635
    return-object v9
.end method
