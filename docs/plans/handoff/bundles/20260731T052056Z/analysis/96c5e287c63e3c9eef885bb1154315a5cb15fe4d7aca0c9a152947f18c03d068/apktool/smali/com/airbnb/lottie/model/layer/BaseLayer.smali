.class public abstract Lcom/airbnb/lottie/model/layer/BaseLayer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field public final animations:Ljava/util/ArrayList;

.field public blurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field public blurMaskFilterRadius:F

.field public final boundsMatrix:Landroid/graphics/Matrix;

.field public final canvasBounds:Landroid/graphics/RectF;

.field public final canvasMatrix:Landroid/graphics/Matrix;

.field public final clearPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final contentPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final dstInPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final dstOutPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final layerModel:Lcom/airbnb/lottie/model/layer/Layer;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final mask:Lcom/caverock/androidsvg/SVG;

.field public final maskBoundsRect:Landroid/graphics/RectF;

.field public final matrix:Landroid/graphics/Matrix;

.field public final matteBoundsRect:Landroid/graphics/RectF;

.field public matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public final mattePaint:Lcom/airbnb/lottie/animation/LPaint;

.field public parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public parentLayers:Ljava/util/List;

.field public final path:Landroid/graphics/Path;

.field public final rect:Landroid/graphics/RectF;

.field public solidWhitePaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final tempMaskBoundsRect:Landroid/graphics/RectF;

.field public final transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

.field public visible:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 24
    .line 25
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(II)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 33
    .line 34
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 35
    .line 36
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 37
    .line 38
    invoke-direct {v0, v3}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 42
    .line 43
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 44
    .line 45
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 46
    .line 47
    invoke-direct {v0, v4}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 51
    .line 52
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 53
    .line 54
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(II)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 58
    .line 59
    new-instance v5, Lcom/airbnb/lottie/animation/LPaint;

    .line 60
    .line 61
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 62
    .line 63
    invoke-direct {v5}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    .line 67
    .line 68
    invoke-direct {v7, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    .line 73
    .line 74
    iput-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 75
    .line 76
    new-instance v5, Landroid/graphics/RectF;

    .line 77
    .line 78
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 82
    .line 83
    new-instance v5, Landroid/graphics/RectF;

    .line 84
    .line 85
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    .line 89
    .line 90
    new-instance v5, Landroid/graphics/RectF;

    .line 91
    .line 92
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 96
    .line 97
    new-instance v5, Landroid/graphics/RectF;

    .line 98
    .line 99
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 103
    .line 104
    new-instance v5, Landroid/graphics/RectF;

    .line 105
    .line 106
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 110
    .line 111
    new-instance v5, Landroid/graphics/Matrix;

    .line 112
    .line 113
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 117
    .line 118
    new-instance v5, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/ArrayList;

    .line 124
    .line 125
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 126
    .line 127
    const/4 v5, 0x0

    .line 128
    iput v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilterRadius:F

    .line 129
    .line 130
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 131
    .line 132
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 133
    .line 134
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    .line 135
    .line 136
    iget-object v5, p2, Lcom/airbnb/lottie/model/layer/Layer;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 137
    .line 138
    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 139
    .line 140
    if-ne v5, v6, :cond_0

    .line 141
    .line 142
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 143
    .line 144
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_0
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    .line 152
    .line 153
    invoke-direct {v4, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 157
    .line 158
    .line 159
    :goto_0
    iget-object p2, p2, Lcom/airbnb/lottie/model/layer/Layer;->transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 165
    .line 166
    invoke-direct {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    .line 167
    .line 168
    .line 169
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 170
    .line 171
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 172
    .line 173
    .line 174
    if-eqz p1, :cond_2

    .line 175
    .line 176
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-nez p2, :cond_2

    .line 181
    .line 182
    new-instance p2, Lcom/caverock/androidsvg/SVG;

    .line 183
    .line 184
    invoke-direct {p2, p1}, Lcom/caverock/androidsvg/SVG;-><init>(Ljava/util/List;)V

    .line 185
    .line 186
    .line 187
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/caverock/androidsvg/SVG;

    .line 188
    .line 189
    iget-object p1, p2, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p1, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-eqz p2, :cond_1

    .line 202
    .line 203
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 208
    .line 209
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/caverock/androidsvg/SVG;

    .line 214
    .line 215
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p1, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    if-eqz p2, :cond_2

    .line 228
    .line 229
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 234
    .line 235
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_2
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 243
    .line 244
    iget-object p2, p1, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    .line 245
    .line 246
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    if-nez p2, :cond_5

    .line 251
    .line 252
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 253
    .line 254
    iget-object p1, p1, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    .line 255
    .line 256
    const/4 v0, 0x2

    .line 257
    invoke-direct {p2, p1, v0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;-><init>(Ljava/util/List;I)V

    .line 258
    .line 259
    .line 260
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 261
    .line 262
    iput-boolean v1, p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    .line 263
    .line 264
    new-instance p1, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;

    .line 265
    .line 266
    invoke-direct {p1, v2, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, Ljava/lang/Float;

    .line 279
    .line 280
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    const/high16 p2, 0x3f800000    # 1.0f

    .line 285
    .line 286
    cmpl-float p1, p1, p2

    .line 287
    .line 288
    if-nez p1, :cond_3

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_3
    move v1, v2

    .line 292
    :goto_3
    iget-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 293
    .line 294
    if-eq v1, p1, :cond_4

    .line 295
    .line 296
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 297
    .line 298
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 299
    .line 300
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 301
    .line 302
    .line 303
    :cond_4
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 304
    .line 305
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :cond_5
    iget-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 310
    .line 311
    if-eq v1, p1, :cond_6

    .line 312
    .line 313
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 314
    .line 315
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 318
    .line 319
    .line 320
    :cond_6
    return-void
.end method


# virtual methods
.method public final addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final buildParentLayerListIfNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 23
    .line 24
    :goto_0
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    return-void
.end method

.method public final clearCanvas(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 4
    .line 5
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 6
    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    sub-float v4, v1, v2

    .line 10
    .line 11
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 12
    .line 13
    sub-float v5, v1, v2

    .line 14
    .line 15
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 16
    .line 17
    add-float v6, v1, v2

    .line 18
    .line 19
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 20
    .line 21
    add-float v7, v0, v2

    .line 22
    .line 23
    iget-object v8, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 24
    .line 25
    move-object v3, p1

    .line 26
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    move/from16 v8, p3

    .line 8
    .line 9
    move-object/from16 v9, p4

    .line 10
    .line 11
    sget-object v2, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 12
    .line 13
    iget-boolean v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 14
    .line 15
    if-eqz v2, :cond_24

    .line 16
    .line 17
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 18
    .line 19
    iget-boolean v3, v2, Lcom/airbnb/lottie/model/layer/Layer;->hidden:Z

    .line 20
    .line 21
    iget-object v4, v2, Lcom/airbnb/lottie/model/layer/Layer;->blendMode:Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    goto/16 :goto_11

    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 28
    .line 29
    .line 30
    iget-object v10, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 31
    .line 32
    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v10, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v11, 0x1

    .line 45
    sub-int/2addr v3, v11

    .line 46
    :goto_0
    if-ltz v3, :cond_1

    .line 47
    .line 48
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 55
    .line 56
    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v10, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 63
    .line 64
    .line 65
    add-int/lit8 v3, v3, -0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    sget-object v3, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 69
    .line 70
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 71
    .line 72
    iget-object v5, v3, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 73
    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Ljava/lang/Integer;

    .line 81
    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/16 v5, 0x64

    .line 90
    .line 91
    :goto_1
    int-to-float v6, v8

    .line 92
    const/high16 v12, 0x437f0000    # 255.0f

    .line 93
    .line 94
    div-float/2addr v6, v12

    .line 95
    int-to-float v5, v5

    .line 96
    mul-float/2addr v6, v5

    .line 97
    const/high16 v5, 0x42c80000    # 100.0f

    .line 98
    .line 99
    div-float/2addr v6, v5

    .line 100
    mul-float/2addr v6, v12

    .line 101
    float-to-int v12, v6

    .line 102
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 103
    .line 104
    if-eqz v5, :cond_3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-nez v5, :cond_4

    .line 112
    .line 113
    sget-object v5, Lcom/airbnb/lottie/model/content/LBlendMode;->NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 114
    .line 115
    if-ne v4, v5, :cond_4

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, v10, v12, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_4
    :goto_2
    iget-object v13, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 132
    .line 133
    const/4 v14, 0x0

    .line 134
    invoke-virtual {v0, v13, v10, v14}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 135
    .line 136
    .line 137
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 138
    .line 139
    const/4 v6, 0x0

    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/Layer;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 143
    .line 144
    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 145
    .line 146
    if-ne v2, v5, :cond_5

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_5
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 150
    .line 151
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 152
    .line 153
    .line 154
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 155
    .line 156
    invoke-virtual {v5, v2, v7, v11}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v13, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_6

    .line 164
    .line 165
    invoke-virtual {v13, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 166
    .line 167
    .line 168
    :cond_6
    :goto_3
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 173
    .line 174
    .line 175
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 176
    .line 177
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/caverock/androidsvg/SVG;

    .line 185
    .line 186
    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 187
    .line 188
    if-nez v3, :cond_8

    .line 189
    .line 190
    :cond_7
    :goto_4
    const/4 v2, 0x0

    .line 191
    goto/16 :goto_9

    .line 192
    .line 193
    :cond_8
    iget-object v3, v14, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v3, Ljava/util/List;

    .line 196
    .line 197
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    const/4 v5, 0x0

    .line 202
    :goto_5
    if-ge v5, v3, :cond_d

    .line 203
    .line 204
    iget-object v6, v14, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v6, Ljava/util/List;

    .line 207
    .line 208
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    check-cast v6, Lcom/airbnb/lottie/model/content/Mask;

    .line 213
    .line 214
    iget-object v11, v14, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v11, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    check-cast v11, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 223
    .line 224
    invoke-virtual {v11}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    check-cast v11, Landroid/graphics/Path;

    .line 229
    .line 230
    if-nez v11, :cond_9

    .line 231
    .line 232
    move/from16 v18, v3

    .line 233
    .line 234
    :goto_6
    move/from16 v19, v5

    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_9
    invoke-virtual {v15, v11}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 241
    .line 242
    .line 243
    sget-object v11, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    .line 244
    .line 245
    move/from16 v18, v3

    .line 246
    .line 247
    iget-object v3, v6, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    aget v3, v11, v3

    .line 254
    .line 255
    const/4 v11, 0x1

    .line 256
    if-eq v3, v11, :cond_7

    .line 257
    .line 258
    const/4 v11, 0x2

    .line 259
    if-eq v3, v11, :cond_7

    .line 260
    .line 261
    const/4 v11, 0x3

    .line 262
    if-eq v3, v11, :cond_a

    .line 263
    .line 264
    const/4 v11, 0x4

    .line 265
    if-eq v3, v11, :cond_a

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_a
    iget-boolean v3, v6, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    .line 269
    .line 270
    if-eqz v3, :cond_b

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_b
    :goto_7
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 274
    .line 275
    const/4 v11, 0x0

    .line 276
    invoke-virtual {v15, v3, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 277
    .line 278
    .line 279
    if-nez v5, :cond_c

    .line 280
    .line 281
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_c
    iget v6, v2, Landroid/graphics/RectF;->left:F

    .line 286
    .line 287
    iget v11, v3, Landroid/graphics/RectF;->left:F

    .line 288
    .line 289
    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    iget v11, v2, Landroid/graphics/RectF;->top:F

    .line 294
    .line 295
    move/from16 v19, v5

    .line 296
    .line 297
    iget v5, v3, Landroid/graphics/RectF;->top:F

    .line 298
    .line 299
    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    iget v11, v2, Landroid/graphics/RectF;->right:F

    .line 304
    .line 305
    iget v7, v3, Landroid/graphics/RectF;->right:F

    .line 306
    .line 307
    invoke-static {v11, v7}, Ljava/lang/Math;->max(FF)F

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    iget v11, v2, Landroid/graphics/RectF;->bottom:F

    .line 312
    .line 313
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 314
    .line 315
    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    invoke-virtual {v2, v6, v5, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 320
    .line 321
    .line 322
    :goto_8
    add-int/lit8 v5, v19, 0x1

    .line 323
    .line 324
    move-object/from16 v7, p2

    .line 325
    .line 326
    move/from16 v3, v18

    .line 327
    .line 328
    const/4 v11, 0x1

    .line 329
    goto :goto_5

    .line 330
    :cond_d
    invoke-virtual {v13, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    if-nez v2, :cond_7

    .line 335
    .line 336
    const/4 v2, 0x0

    .line 337
    invoke-virtual {v13, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 338
    .line 339
    .line 340
    :goto_9
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    int-to-float v3, v3

    .line 345
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    int-to-float v5, v5

    .line 350
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    .line 351
    .line 352
    invoke-virtual {v6, v2, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 353
    .line 354
    .line 355
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 356
    .line 357
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    if-nez v5, :cond_e

    .line 365
    .line 366
    invoke-virtual {v3, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 370
    .line 371
    .line 372
    :cond_e
    invoke-virtual {v13, v6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    if-nez v3, :cond_f

    .line 377
    .line 378
    invoke-virtual {v13, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 379
    .line 380
    .line 381
    :cond_f
    sget-object v2, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 382
    .line 383
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    const/high16 v3, 0x3f800000    # 1.0f

    .line 388
    .line 389
    cmpl-float v2, v2, v3

    .line 390
    .line 391
    if-ltz v2, :cond_23

    .line 392
    .line 393
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    cmpl-float v2, v2, v3

    .line 398
    .line 399
    if-ltz v2, :cond_23

    .line 400
    .line 401
    iget-object v7, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 402
    .line 403
    const/16 v11, 0xff

    .line 404
    .line 405
    invoke-virtual {v7, v11}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    sget-object v2, Lcom/airbnb/lottie/model/content/LBlendMode$1;->$SwitchMap$com$airbnb$lottie$model$content$LBlendMode:[I

    .line 412
    .line 413
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    aget v2, v2, v5

    .line 418
    .line 419
    const/16 v5, 0x1d

    .line 420
    .line 421
    const/4 v6, 0x0

    .line 422
    packed-switch v2, :pswitch_data_0

    .line 423
    .line 424
    .line 425
    move-object v2, v6

    .line 426
    goto :goto_a

    .line 427
    :pswitch_0
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->PLUS:Landroidx/core/graphics/BlendModeCompat;

    .line 428
    .line 429
    goto :goto_a

    .line 430
    :pswitch_1
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

    .line 431
    .line 432
    goto :goto_a

    .line 433
    :pswitch_2
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->DARKEN:Landroidx/core/graphics/BlendModeCompat;

    .line 434
    .line 435
    goto :goto_a

    .line 436
    :pswitch_3
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->OVERLAY:Landroidx/core/graphics/BlendModeCompat;

    .line 437
    .line 438
    goto :goto_a

    .line 439
    :pswitch_4
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->SCREEN:Landroidx/core/graphics/BlendModeCompat;

    .line 440
    .line 441
    goto :goto_a

    .line 442
    :pswitch_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 443
    .line 444
    if-lt v2, v5, :cond_10

    .line 445
    .line 446
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

    .line 447
    .line 448
    goto :goto_a

    .line 449
    :cond_10
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->MODULATE:Landroidx/core/graphics/BlendModeCompat;

    .line 450
    .line 451
    :goto_a
    invoke-static {v7, v2}, Lkotlin/ExceptionsKt;->setBlendMode(Lcom/airbnb/lottie/animation/LPaint;Landroidx/core/graphics/BlendModeCompat;)V

    .line 452
    .line 453
    .line 454
    invoke-static {v1, v13, v7}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 455
    .line 456
    .line 457
    sget-object v2, Lcom/airbnb/lottie/model/content/LBlendMode;->MULTIPLY:Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 458
    .line 459
    if-eq v4, v2, :cond_12

    .line 460
    .line 461
    invoke-virtual/range {p0 .. p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 462
    .line 463
    .line 464
    :cond_11
    const/4 v11, 0x2

    .line 465
    goto :goto_b

    .line 466
    :cond_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 467
    .line 468
    if-ge v2, v5, :cond_11

    .line 469
    .line 470
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->solidWhitePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 471
    .line 472
    if-nez v2, :cond_13

    .line 473
    .line 474
    new-instance v2, Lcom/airbnb/lottie/animation/LPaint;

    .line 475
    .line 476
    invoke-direct {v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 477
    .line 478
    .line 479
    iput-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->solidWhitePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 480
    .line 481
    const/4 v4, -0x1

    .line 482
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 483
    .line 484
    .line 485
    :cond_13
    iget v2, v13, Landroid/graphics/RectF;->left:F

    .line 486
    .line 487
    sub-float/2addr v2, v3

    .line 488
    iget v4, v13, Landroid/graphics/RectF;->top:F

    .line 489
    .line 490
    sub-float/2addr v4, v3

    .line 491
    iget v5, v13, Landroid/graphics/RectF;->right:F

    .line 492
    .line 493
    add-float/2addr v5, v3

    .line 494
    move/from16 v16, v3

    .line 495
    .line 496
    iget v3, v13, Landroid/graphics/RectF;->bottom:F

    .line 497
    .line 498
    add-float v3, v3, v16

    .line 499
    .line 500
    move-object/from16 v16, v6

    .line 501
    .line 502
    iget-object v6, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->solidWhitePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 503
    .line 504
    move v11, v5

    .line 505
    move v5, v3

    .line 506
    move v3, v4

    .line 507
    move v4, v11

    .line 508
    const/4 v11, 0x2

    .line 509
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 510
    .line 511
    .line 512
    :goto_b
    invoke-virtual {v0, v1, v10, v12, v9}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    if-eqz v2, :cond_21

    .line 520
    .line 521
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 522
    .line 523
    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 524
    .line 525
    .line 526
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 527
    .line 528
    const/16 v4, 0x1c

    .line 529
    .line 530
    if-ge v3, v4, :cond_14

    .line 531
    .line 532
    invoke-virtual/range {p0 .. p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 533
    .line 534
    .line 535
    :cond_14
    const/4 v3, 0x0

    .line 536
    :goto_c
    iget-object v4, v14, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 537
    .line 538
    check-cast v4, Ljava/util/List;

    .line 539
    .line 540
    iget-object v5, v14, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast v5, Ljava/util/ArrayList;

    .line 543
    .line 544
    iget-object v6, v14, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 545
    .line 546
    check-cast v6, Ljava/util/List;

    .line 547
    .line 548
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 549
    .line 550
    .line 551
    move-result v4

    .line 552
    if-ge v3, v4, :cond_20

    .line 553
    .line 554
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    check-cast v4, Lcom/airbnb/lottie/model/content/Mask;

    .line 559
    .line 560
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v9

    .line 564
    check-cast v9, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 565
    .line 566
    iget-object v12, v14, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 567
    .line 568
    check-cast v12, Ljava/util/ArrayList;

    .line 569
    .line 570
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v12

    .line 574
    check-cast v12, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 575
    .line 576
    sget-object v17, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    .line 577
    .line 578
    iget-object v11, v4, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 579
    .line 580
    iget-boolean v4, v4, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    .line 581
    .line 582
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 583
    .line 584
    .line 585
    move-result v11

    .line 586
    aget v11, v17, v11

    .line 587
    .line 588
    move/from16 v17, v3

    .line 589
    .line 590
    const/4 v3, 0x1

    .line 591
    if-eq v11, v3, :cond_1c

    .line 592
    .line 593
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 594
    .line 595
    const v6, 0x40233333    # 2.55f

    .line 596
    .line 597
    .line 598
    const/4 v3, 0x2

    .line 599
    if-eq v11, v3, :cond_19

    .line 600
    .line 601
    const/4 v3, 0x3

    .line 602
    if-eq v11, v3, :cond_17

    .line 603
    .line 604
    const/4 v3, 0x4

    .line 605
    if-eq v11, v3, :cond_15

    .line 606
    .line 607
    :goto_d
    const/16 v11, 0xff

    .line 608
    .line 609
    goto/16 :goto_10

    .line 610
    .line 611
    :cond_15
    if-eqz v4, :cond_16

    .line 612
    .line 613
    invoke-static {v1, v13, v7}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1, v13, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    check-cast v4, Landroid/graphics/Path;

    .line 624
    .line 625
    invoke-virtual {v15, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    check-cast v4, Ljava/lang/Integer;

    .line 636
    .line 637
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 638
    .line 639
    .line 640
    move-result v4

    .line 641
    int-to-float v4, v4

    .line 642
    mul-float/2addr v4, v6

    .line 643
    float-to-int v4, v4

    .line 644
    invoke-virtual {v7, v4}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v1, v15, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 651
    .line 652
    .line 653
    goto :goto_d

    .line 654
    :cond_16
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    check-cast v4, Landroid/graphics/Path;

    .line 659
    .line 660
    invoke-virtual {v15, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    check-cast v4, Ljava/lang/Integer;

    .line 671
    .line 672
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 673
    .line 674
    .line 675
    move-result v4

    .line 676
    int-to-float v4, v4

    .line 677
    mul-float/2addr v4, v6

    .line 678
    float-to-int v4, v4

    .line 679
    invoke-virtual {v7, v4}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v1, v15, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 683
    .line 684
    .line 685
    goto :goto_d

    .line 686
    :cond_17
    const/4 v3, 0x4

    .line 687
    if-eqz v4, :cond_18

    .line 688
    .line 689
    invoke-static {v1, v13, v2}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v1, v13, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v4

    .line 699
    check-cast v4, Ljava/lang/Integer;

    .line 700
    .line 701
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 702
    .line 703
    .line 704
    move-result v4

    .line 705
    int-to-float v4, v4

    .line 706
    mul-float/2addr v4, v6

    .line 707
    float-to-int v4, v4

    .line 708
    invoke-virtual {v5, v4}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v4

    .line 715
    check-cast v4, Landroid/graphics/Path;

    .line 716
    .line 717
    invoke-virtual {v15, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v1, v15, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 727
    .line 728
    .line 729
    goto :goto_d

    .line 730
    :cond_18
    invoke-static {v1, v13, v2}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v4

    .line 737
    check-cast v4, Landroid/graphics/Path;

    .line 738
    .line 739
    invoke-virtual {v15, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    check-cast v4, Ljava/lang/Integer;

    .line 750
    .line 751
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 752
    .line 753
    .line 754
    move-result v4

    .line 755
    int-to-float v4, v4

    .line 756
    mul-float/2addr v4, v6

    .line 757
    float-to-int v4, v4

    .line 758
    invoke-virtual {v7, v4}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v1, v15, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 765
    .line 766
    .line 767
    goto/16 :goto_d

    .line 768
    .line 769
    :cond_19
    const/4 v3, 0x4

    .line 770
    if-nez v17, :cond_1a

    .line 771
    .line 772
    const/high16 v11, -0x1000000

    .line 773
    .line 774
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 775
    .line 776
    .line 777
    const/16 v11, 0xff

    .line 778
    .line 779
    invoke-virtual {v7, v11}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v1, v13, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 783
    .line 784
    .line 785
    :cond_1a
    if-eqz v4, :cond_1b

    .line 786
    .line 787
    invoke-static {v1, v13, v5}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v1, v13, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v4

    .line 797
    check-cast v4, Ljava/lang/Integer;

    .line 798
    .line 799
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 800
    .line 801
    .line 802
    move-result v4

    .line 803
    int-to-float v4, v4

    .line 804
    mul-float/2addr v4, v6

    .line 805
    float-to-int v4, v4

    .line 806
    invoke-virtual {v5, v4}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v4

    .line 813
    check-cast v4, Landroid/graphics/Path;

    .line 814
    .line 815
    invoke-virtual {v15, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v1, v15, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 825
    .line 826
    .line 827
    goto/16 :goto_d

    .line 828
    .line 829
    :cond_1b
    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v4

    .line 833
    check-cast v4, Landroid/graphics/Path;

    .line 834
    .line 835
    invoke-virtual {v15, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v1, v15, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 842
    .line 843
    .line 844
    goto/16 :goto_d

    .line 845
    .line 846
    :cond_1c
    const/4 v3, 0x4

    .line 847
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 848
    .line 849
    .line 850
    move-result v4

    .line 851
    if-eqz v4, :cond_1d

    .line 852
    .line 853
    goto :goto_f

    .line 854
    :cond_1d
    const/4 v4, 0x0

    .line 855
    :goto_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 856
    .line 857
    .line 858
    move-result v5

    .line 859
    if-ge v4, v5, :cond_1f

    .line 860
    .line 861
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v5

    .line 865
    check-cast v5, Lcom/airbnb/lottie/model/content/Mask;

    .line 866
    .line 867
    iget-object v5, v5, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 868
    .line 869
    sget-object v9, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 870
    .line 871
    if-eq v5, v9, :cond_1e

    .line 872
    .line 873
    :goto_f
    goto/16 :goto_d

    .line 874
    .line 875
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    .line 876
    .line 877
    goto :goto_e

    .line 878
    :cond_1f
    const/16 v11, 0xff

    .line 879
    .line 880
    invoke-virtual {v7, v11}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v1, v13, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 884
    .line 885
    .line 886
    :goto_10
    add-int/lit8 v4, v17, 0x1

    .line 887
    .line 888
    move v3, v4

    .line 889
    const/4 v11, 0x2

    .line 890
    goto/16 :goto_c

    .line 891
    .line 892
    :cond_20
    sget-object v2, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 893
    .line 894
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 895
    .line 896
    .line 897
    :cond_21
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 898
    .line 899
    if-eqz v2, :cond_22

    .line 900
    .line 901
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 902
    .line 903
    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 904
    .line 905
    .line 906
    invoke-virtual/range {p0 .. p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 907
    .line 908
    .line 909
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 910
    .line 911
    move-object/from16 v7, p2

    .line 912
    .line 913
    const/4 v3, 0x0

    .line 914
    invoke-virtual {v2, v1, v7, v8, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 918
    .line 919
    .line 920
    :cond_22
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 921
    .line 922
    .line 923
    :cond_23
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime()V

    .line 924
    .line 925
    .line 926
    :cond_24
    :goto_11
    return-void

    .line 927
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
.end method

.method public getBlurEffect()Lcoil3/memory/MemoryCacheService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->blurEffect:Lcoil3/memory/MemoryCacheService;

    .line 4
    .line 5
    return-object p0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 13
    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    add-int/lit8 p2, p2, -0x1

    .line 26
    .line 27
    :goto_0
    if-ltz p2, :cond_1

    .line 28
    .line 29
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    check-cast p3, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 36
    .line 37
    iget-object p3, p3, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 38
    .line 39
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 p2, p2, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    iget-object p2, p2, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final hasMasksOnThisLayer()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/caverock/androidsvg/SVG;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final onValueChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final recordRenderTime()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Landroidx/transition/Transition$1;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .line 1
    sget-object v0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 31
    .line 32
    .line 33
    :cond_3
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 38
    .line 39
    .line 40
    :cond_4
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 41
    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 45
    .line 46
    .line 47
    :cond_5
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 48
    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 52
    .line 53
    .line 54
    :cond_6
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 55
    .line 56
    if-eqz v1, :cond_7

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 59
    .line 60
    .line 61
    :cond_7
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 62
    .line 63
    if-eqz v1, :cond_8

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 66
    .line 67
    .line 68
    :cond_8
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationX:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 69
    .line 70
    if-eqz v1, :cond_9

    .line 71
    .line 72
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 73
    .line 74
    .line 75
    :cond_9
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationY:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 76
    .line 77
    if-eqz v1, :cond_a

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 80
    .line 81
    .line 82
    :cond_a
    iget-object v0, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationZ:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 83
    .line 84
    if-eqz v0, :cond_b

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 87
    .line 88
    .line 89
    :cond_b
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/caverock/androidsvg/SVG;

    .line 91
    .line 92
    if-eqz v1, :cond_d

    .line 93
    .line 94
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v1, Ljava/util/ArrayList;

    .line 97
    .line 98
    move v2, v0

    .line 99
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-ge v2, v3, :cond_c

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 110
    .line 111
    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_c
    sget-object v1, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 118
    .line 119
    :cond_d
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 120
    .line 121
    if-eqz v1, :cond_e

    .line 122
    .line 123
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 124
    .line 125
    .line 126
    :cond_e
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 127
    .line 128
    if-eqz v1, :cond_f

    .line 129
    .line 130
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 131
    .line 132
    .line 133
    :cond_f
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-ge v0, v2, :cond_10

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 146
    .line 147
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_10
    sget-object p0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 154
    .line 155
    return-void
.end method
