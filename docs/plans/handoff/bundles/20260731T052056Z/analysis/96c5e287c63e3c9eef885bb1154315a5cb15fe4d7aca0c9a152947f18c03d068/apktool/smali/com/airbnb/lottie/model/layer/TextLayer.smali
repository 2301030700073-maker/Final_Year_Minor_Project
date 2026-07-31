.class public final Lcom/airbnb/lottie/model/layer/TextLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final charStringBuilder:Ljava/lang/StringBuilder;

.field public final charStrings:Ljava/util/ArrayList;

.field public final codePointCache:Landroidx/collection/LongSparseArray;

.field public final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final composition:Lcom/airbnb/lottie/LottieComposition;

.field public final contentsForCharacter:Ljava/util/HashMap;

.field public final fillPaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final matrix:Landroid/graphics/Matrix;

.field public final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final rectF:Landroid/graphics/RectF;

.field public final reorderingStringBuilder:Ljava/lang/StringBuilder;

.field public final reversingStringBuilder:Ljava/lang/StringBuilder;

.field public final stringBuilder:Ljava/lang/StringBuilder;

.field public final strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final strokePaint:Lcom/airbnb/lottie/animation/LPaint;

.field public final strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final textRangeEndAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final textRangeOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final textRangeStartAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final textRangeUnits:Lcom/airbnb/lottie/model/content/TextRangeUnits;

.field public final textSubLines:Ljava/util/ArrayList;

.field public final trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->charStringBuilder:Ljava/lang/StringBuilder;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->reorderingStringBuilder:Ljava/lang/StringBuilder;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->reversingStringBuilder:Ljava/lang/StringBuilder;

    .line 33
    .line 34
    new-instance v0, Landroid/graphics/RectF;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 40
    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 47
    .line 48
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-direct {v0, v3, v3}, Lcom/airbnb/lottie/animation/LPaint;-><init>(II)V

    .line 52
    .line 53
    .line 54
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 60
    .line 61
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 62
    .line 63
    invoke-direct {v0, v3, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(II)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 72
    .line 73
    new-instance v0, Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/HashMap;

    .line 79
    .line 80
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-direct {v0, v1}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 87
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->charStrings:Ljava/util/ArrayList;

    .line 94
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/ArrayList;

    .line 101
    .line 102
    sget-object v0, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeUnits:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 105
    .line 106
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 107
    .line 108
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 109
    .line 110
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 111
    .line 112
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 113
    .line 114
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 115
    .line 116
    iget-object p1, p1, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, Ljava/util/List;

    .line 119
    .line 120
    invoke-direct {v0, p1, v2}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;-><init>(Ljava/util/List;I)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->textProperties:Lcoil3/svg/internal/AndroidSvg;

    .line 132
    .line 133
    if-eqz p1, :cond_0

    .line 134
    .line 135
    iget-object p2, p1, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p2, Lokhttp3/Request$Builder;

    .line 138
    .line 139
    if-eqz p2, :cond_0

    .line 140
    .line 141
    iget-object p2, p2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 144
    .line 145
    if-eqz p2, :cond_0

    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    move-object v0, p2

    .line 152
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 155
    .line 156
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 160
    .line 161
    .line 162
    :cond_0
    if-eqz p1, :cond_1

    .line 163
    .line 164
    iget-object p2, p1, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p2, Lokhttp3/Request$Builder;

    .line 167
    .line 168
    if-eqz p2, :cond_1

    .line 169
    .line 170
    iget-object p2, p2, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 173
    .line 174
    if-eqz p2, :cond_1

    .line 175
    .line 176
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    move-object v0, p2

    .line 181
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 182
    .line 183
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 184
    .line 185
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 189
    .line 190
    .line 191
    :cond_1
    if-eqz p1, :cond_2

    .line 192
    .line 193
    iget-object p2, p1, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast p2, Lokhttp3/Request$Builder;

    .line 196
    .line 197
    if-eqz p2, :cond_2

    .line 198
    .line 199
    iget-object p2, p2, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 202
    .line 203
    if-eqz p2, :cond_2

    .line 204
    .line 205
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 210
    .line 211
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 215
    .line 216
    .line 217
    :cond_2
    if-eqz p1, :cond_3

    .line 218
    .line 219
    iget-object p2, p1, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast p2, Lokhttp3/Request$Builder;

    .line 222
    .line 223
    if-eqz p2, :cond_3

    .line 224
    .line 225
    iget-object p2, p2, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 228
    .line 229
    if-eqz p2, :cond_3

    .line 230
    .line 231
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 236
    .line 237
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 241
    .line 242
    .line 243
    :cond_3
    if-eqz p1, :cond_4

    .line 244
    .line 245
    iget-object p2, p1, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast p2, Lokhttp3/Request$Builder;

    .line 248
    .line 249
    if-eqz p2, :cond_4

    .line 250
    .line 251
    iget-object p2, p2, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 254
    .line 255
    if-eqz p2, :cond_4

    .line 256
    .line 257
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    move-object v0, p2

    .line 262
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 263
    .line 264
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 265
    .line 266
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 270
    .line 271
    .line 272
    :cond_4
    if-eqz p1, :cond_5

    .line 273
    .line 274
    iget-object p2, p1, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast p2, Lcoil3/ImageLoader$Builder;

    .line 277
    .line 278
    if-eqz p2, :cond_5

    .line 279
    .line 280
    iget-object p2, p2, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 283
    .line 284
    if-eqz p2, :cond_5

    .line 285
    .line 286
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    move-object v0, p2

    .line 291
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 292
    .line 293
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeStartAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 294
    .line 295
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 299
    .line 300
    .line 301
    :cond_5
    if-eqz p1, :cond_6

    .line 302
    .line 303
    iget-object p2, p1, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast p2, Lcoil3/ImageLoader$Builder;

    .line 306
    .line 307
    if-eqz p2, :cond_6

    .line 308
    .line 309
    iget-object p2, p2, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 312
    .line 313
    if-eqz p2, :cond_6

    .line 314
    .line 315
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 316
    .line 317
    .line 318
    move-result-object p2

    .line 319
    move-object v0, p2

    .line 320
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 321
    .line 322
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeEndAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 323
    .line 324
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 328
    .line 329
    .line 330
    :cond_6
    if-eqz p1, :cond_7

    .line 331
    .line 332
    iget-object p2, p1, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast p2, Lcoil3/ImageLoader$Builder;

    .line 335
    .line 336
    if-eqz p2, :cond_7

    .line 337
    .line 338
    iget-object p2, p2, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 341
    .line 342
    if-eqz p2, :cond_7

    .line 343
    .line 344
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    move-object v0, p2

    .line 349
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 350
    .line 351
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 352
    .line 353
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 357
    .line 358
    .line 359
    :cond_7
    if-eqz p1, :cond_8

    .line 360
    .line 361
    iget-object p1, p1, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast p1, Lcoil3/ImageLoader$Builder;

    .line 364
    .line 365
    if-eqz p1, :cond_8

    .line 366
    .line 367
    iget-object p1, p1, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast p1, Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 370
    .line 371
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeUnits:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 372
    .line 373
    :cond_8
    return-void
.end method

.method public static drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v2, p0

    .line 34
    move-object v7, p1

    .line 35
    move-object v1, p2

    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final codePointToString(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->codePointAt(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, p1

    .line 10
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/16 v4, 0x10

    .line 25
    .line 26
    if-eq v3, v4, :cond_0

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/16 v4, 0x1b

    .line 33
    .line 34
    if-eq v3, v4, :cond_0

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x6

    .line 41
    if-eq v3, v4, :cond_0

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/16 v4, 0x1c

    .line 48
    .line 49
    if-eq v3, v4, :cond_0

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/16 v4, 0x8

    .line 56
    .line 57
    if-eq v3, v4, :cond_0

    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/16 v4, 0x13

    .line 64
    .line 65
    if-ne v3, v4, :cond_1

    .line 66
    .line 67
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    add-int/2addr v1, v3

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    .line 73
    .line 74
    add-int/2addr v0, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    int-to-long v2, v0

    .line 77
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 78
    .line 79
    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-ltz v4, :cond_2

    .line 84
    .line 85
    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Ljava/lang/String;

    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_2
    const/4 v4, 0x0

    .line 93
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 96
    .line 97
    .line 98
    :goto_1
    if-ge p1, v1, :cond_3

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/String;->codePointAt(I)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    add-int/2addr p1, v4

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v0, v2, v3, p0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-object p0
.end method

.method public final configurePaint(Lcom/airbnb/lottie/model/DocumentData;II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->isIndexInRangeSelection(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v1, p1, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->isIndexInRangeSelection(I)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget v1, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    .line 62
    .line 63
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 66
    .line 67
    const/16 v3, 0x64

    .line 68
    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    move v1, v3

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    :goto_2
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 84
    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->isIndexInRangeSelection(I)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_3

    .line 92
    .line 93
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Ljava/lang/Integer;

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    :cond_3
    int-to-float v1, v1

    .line 104
    const/high16 v4, 0x437f0000    # 255.0f

    .line 105
    .line 106
    mul-float/2addr v1, v4

    .line 107
    const/high16 v5, 0x42c80000    # 100.0f

    .line 108
    .line 109
    div-float/2addr v1, v5

    .line 110
    int-to-float v3, v3

    .line 111
    div-float/2addr v3, v5

    .line 112
    mul-float/2addr v3, v1

    .line 113
    int-to-float p2, p2

    .line 114
    mul-float/2addr v3, p2

    .line 115
    div-float/2addr v3, v4

    .line 116
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    .line 125
    .line 126
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 127
    .line 128
    if-eqz p2, :cond_4

    .line 129
    .line 130
    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->isIndexInRangeSelection(I)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_4

    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Ljava/lang/Float;

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_4
    iget p0, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    .line 151
    .line 152
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    mul-float/2addr p1, p0

    .line 157
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    move-object v9, v1

    .line 14
    check-cast v9, Lcom/airbnb/lottie/model/DocumentData;

    .line 15
    .line 16
    iget-object v10, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 17
    .line 18
    iget-object v1, v10, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/HashMap;

    .line 19
    .line 20
    iget-object v2, v9, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v3, v1

    .line 27
    check-cast v3, Lcom/airbnb/lottie/model/Font;

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v11, v3, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v12, v3, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 40
    .line 41
    .line 42
    const/4 v13, 0x0

    .line 43
    invoke-virtual {v0, v9, v8, v13}, Lcom/airbnb/lottie/model/layer/TextLayer;->configurePaint(Lcom/airbnb/lottie/model/DocumentData;II)V

    .line 44
    .line 45
    .line 46
    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 47
    .line 48
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object v1, v14, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const-string v2, "\n"

    .line 60
    .line 61
    const-string v4, "\u0003"

    .line 62
    .line 63
    const-string v5, "\r"

    .line 64
    .line 65
    const-string v6, "\r\n"

    .line 66
    .line 67
    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 68
    .line 69
    move/from16 v16, v13

    .line 70
    .line 71
    iget-object v13, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 72
    .line 73
    move/from16 v17, v1

    .line 74
    .line 75
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 76
    .line 77
    const/high16 v18, 0x41200000    # 10.0f

    .line 78
    .line 79
    const/16 v19, 0x3

    .line 80
    .line 81
    const/16 v20, 0x1

    .line 82
    .line 83
    move-object/from16 v21, v13

    .line 84
    .line 85
    const/high16 v22, 0x42c80000    # 100.0f

    .line 86
    .line 87
    if-lez v17, :cond_b

    .line 88
    .line 89
    const/16 v17, 0x2

    .line 90
    .line 91
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 92
    .line 93
    div-float v0, v0, v22

    .line 94
    .line 95
    sget-object v22, Lcom/airbnb/lottie/utils/Utils;->threadLocalPoints:Lcom/airbnb/lottie/utils/Utils$1;

    .line 96
    .line 97
    invoke-virtual/range {v22 .. v22}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v22

    .line 101
    const/16 v23, 0x0

    .line 102
    .line 103
    move-object/from16 v13, v22

    .line 104
    .line 105
    check-cast v13, [F

    .line 106
    .line 107
    aput v23, v13, v16

    .line 108
    .line 109
    aput v23, v13, v20

    .line 110
    .line 111
    sget v22, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    .line 112
    .line 113
    aput v22, v13, v17

    .line 114
    .line 115
    aput v22, v13, v19

    .line 116
    .line 117
    move/from16 v22, v0

    .line 118
    .line 119
    move-object/from16 v0, p2

    .line 120
    .line 121
    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 122
    .line 123
    .line 124
    aget v0, v13, v17

    .line 125
    .line 126
    aget v17, v13, v16

    .line 127
    .line 128
    sub-float v0, v0, v17

    .line 129
    .line 130
    aget v17, v13, v19

    .line 131
    .line 132
    aget v13, v13, v20

    .line 133
    .line 134
    sub-float v13, v17, v13

    .line 135
    .line 136
    move-object/from16 v24, v1

    .line 137
    .line 138
    float-to-double v0, v0

    .line 139
    move-object/from16 v25, v14

    .line 140
    .line 141
    float-to-double v13, v13

    .line 142
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    .line 143
    .line 144
    .line 145
    iget-object v0, v9, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v14

    .line 171
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 172
    .line 173
    int-to-float v0, v0

    .line 174
    div-float v0, v0, v18

    .line 175
    .line 176
    if-eqz v24, :cond_1

    .line 177
    .line 178
    invoke-virtual/range {v24 .. v24}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Ljava/lang/Float;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    add-float/2addr v0, v1

    .line 189
    :cond_1
    move v5, v0

    .line 190
    move/from16 v0, v16

    .line 191
    .line 192
    const/16 v17, -0x1

    .line 193
    .line 194
    :goto_0
    if-ge v0, v14, :cond_a

    .line 195
    .line 196
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    check-cast v1, Ljava/lang/String;

    .line 201
    .line 202
    iget-object v2, v9, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    .line 203
    .line 204
    if-nez v2, :cond_2

    .line 205
    .line 206
    move/from16 v2, v23

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_2
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 210
    .line 211
    :goto_1
    const/4 v6, 0x1

    .line 212
    move/from16 v18, v0

    .line 213
    .line 214
    move/from16 v4, v22

    .line 215
    .line 216
    move-object/from16 v0, p0

    .line 217
    .line 218
    invoke-virtual/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    move/from16 v2, v16

    .line 223
    .line 224
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-ge v2, v6, :cond_9

    .line 229
    .line 230
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    check-cast v6, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 235
    .line 236
    move-object/from16 p2, v1

    .line 237
    .line 238
    add-int/lit8 v1, v17, 0x1

    .line 239
    .line 240
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 241
    .line 242
    .line 243
    move/from16 v19, v2

    .line 244
    .line 245
    iget v2, v6, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    .line 246
    .line 247
    invoke-virtual {v0, v7, v9, v1, v2}, Lcom/airbnb/lottie/model/layer/TextLayer;->offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z

    .line 248
    .line 249
    .line 250
    iget-object v2, v6, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 251
    .line 252
    move/from16 p4, v1

    .line 253
    .line 254
    move/from16 v6, v16

    .line 255
    .line 256
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-ge v6, v1, :cond_8

    .line 261
    .line 262
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    invoke-static {v1, v12, v11}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    move-object/from16 v17, v2

    .line 271
    .line 272
    iget-object v2, v10, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-static {v2, v1}, Landroidx/collection/ArraySetKt;->commonGet(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    check-cast v1, Lcom/airbnb/lottie/model/FontCharacter;

    .line 282
    .line 283
    if-nez v1, :cond_3

    .line 284
    .line 285
    move/from16 v20, v5

    .line 286
    .line 287
    move/from16 v22, v6

    .line 288
    .line 289
    move-object/from16 v26, v13

    .line 290
    .line 291
    move/from16 v27, v14

    .line 292
    .line 293
    move-object/from16 v13, v21

    .line 294
    .line 295
    move-object/from16 v14, v25

    .line 296
    .line 297
    goto/16 :goto_8

    .line 298
    .line 299
    :cond_3
    invoke-virtual {v0, v9, v8, v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->configurePaint(Lcom/airbnb/lottie/model/DocumentData;II)V

    .line 300
    .line 301
    .line 302
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/HashMap;

    .line 303
    .line 304
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v20

    .line 308
    if-eqz v20, :cond_4

    .line 309
    .line 310
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    check-cast v2, Ljava/util/List;

    .line 315
    .line 316
    move/from16 v20, v5

    .line 317
    .line 318
    move/from16 v22, v6

    .line 319
    .line 320
    move-object/from16 v26, v13

    .line 321
    .line 322
    move/from16 v27, v14

    .line 323
    .line 324
    move-object/from16 v14, v25

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_4
    move/from16 v20, v5

    .line 328
    .line 329
    iget-object v5, v1, Lcom/airbnb/lottie/model/FontCharacter;->shapes:Ljava/util/ArrayList;

    .line 330
    .line 331
    move/from16 v22, v6

    .line 332
    .line 333
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    move-object/from16 v26, v13

    .line 338
    .line 339
    new-instance v13, Ljava/util/ArrayList;

    .line 340
    .line 341
    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 342
    .line 343
    .line 344
    move/from16 v27, v14

    .line 345
    .line 346
    move/from16 v14, v16

    .line 347
    .line 348
    :goto_4
    if-ge v14, v6, :cond_5

    .line 349
    .line 350
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v24

    .line 354
    move-object/from16 v28, v5

    .line 355
    .line 356
    move-object/from16 v5, v24

    .line 357
    .line 358
    check-cast v5, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 359
    .line 360
    move/from16 v24, v6

    .line 361
    .line 362
    new-instance v6, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 363
    .line 364
    move/from16 v29, v14

    .line 365
    .line 366
    move-object/from16 v14, v25

    .line 367
    .line 368
    invoke-direct {v6, v14, v0, v5, v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;Lcom/airbnb/lottie/LottieComposition;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    add-int/lit8 v5, v29, 0x1

    .line 375
    .line 376
    move/from16 v6, v24

    .line 377
    .line 378
    move v14, v5

    .line 379
    move-object/from16 v5, v28

    .line 380
    .line 381
    goto :goto_4

    .line 382
    :cond_5
    move-object/from16 v14, v25

    .line 383
    .line 384
    invoke-virtual {v2, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-object v2, v13

    .line 388
    :goto_5
    move/from16 v5, v16

    .line 389
    .line 390
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    if-ge v5, v6, :cond_7

    .line 395
    .line 396
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    check-cast v6, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 401
    .line 402
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    iget-object v13, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 407
    .line 408
    move-object/from16 v24, v2

    .line 409
    .line 410
    move/from16 v2, v16

    .line 411
    .line 412
    invoke-virtual {v6, v13, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 413
    .line 414
    .line 415
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 416
    .line 417
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 418
    .line 419
    .line 420
    iget v13, v9, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    .line 421
    .line 422
    neg-float v13, v13

    .line 423
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 424
    .line 425
    .line 426
    move-result v25

    .line 427
    mul-float v13, v13, v25

    .line 428
    .line 429
    move/from16 v0, v23

    .line 430
    .line 431
    invoke-virtual {v2, v0, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 435
    .line 436
    .line 437
    invoke-virtual {v6, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 438
    .line 439
    .line 440
    iget-boolean v0, v9, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 441
    .line 442
    if-eqz v0, :cond_6

    .line 443
    .line 444
    invoke-static {v6, v15, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 445
    .line 446
    .line 447
    move-object/from16 v13, v21

    .line 448
    .line 449
    invoke-static {v6, v13, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 450
    .line 451
    .line 452
    goto :goto_7

    .line 453
    :cond_6
    move-object/from16 v13, v21

    .line 454
    .line 455
    invoke-static {v6, v13, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 456
    .line 457
    .line 458
    invoke-static {v6, v15, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 459
    .line 460
    .line 461
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 462
    .line 463
    move-object/from16 v0, p0

    .line 464
    .line 465
    move-object/from16 v21, v13

    .line 466
    .line 467
    move-object/from16 v2, v24

    .line 468
    .line 469
    const/16 v16, 0x0

    .line 470
    .line 471
    const/16 v23, 0x0

    .line 472
    .line 473
    goto :goto_6

    .line 474
    :cond_7
    move-object/from16 v13, v21

    .line 475
    .line 476
    iget-wide v0, v1, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    .line 477
    .line 478
    double-to-float v0, v0

    .line 479
    mul-float/2addr v0, v4

    .line 480
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    mul-float/2addr v1, v0

    .line 485
    add-float v1, v1, v20

    .line 486
    .line 487
    const/4 v0, 0x0

    .line 488
    invoke-virtual {v7, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 489
    .line 490
    .line 491
    :goto_8
    add-int/lit8 v6, v22, 0x1

    .line 492
    .line 493
    move-object/from16 v0, p0

    .line 494
    .line 495
    move-object/from16 v21, v13

    .line 496
    .line 497
    move-object/from16 v25, v14

    .line 498
    .line 499
    move-object/from16 v2, v17

    .line 500
    .line 501
    move/from16 v5, v20

    .line 502
    .line 503
    move-object/from16 v13, v26

    .line 504
    .line 505
    move/from16 v14, v27

    .line 506
    .line 507
    const/16 v16, 0x0

    .line 508
    .line 509
    const/16 v23, 0x0

    .line 510
    .line 511
    goto/16 :goto_3

    .line 512
    .line 513
    :cond_8
    move/from16 v20, v5

    .line 514
    .line 515
    move-object/from16 v26, v13

    .line 516
    .line 517
    move/from16 v27, v14

    .line 518
    .line 519
    move-object/from16 v13, v21

    .line 520
    .line 521
    move-object/from16 v14, v25

    .line 522
    .line 523
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 524
    .line 525
    .line 526
    add-int/lit8 v2, v19, 0x1

    .line 527
    .line 528
    move-object/from16 v0, p0

    .line 529
    .line 530
    move-object/from16 v1, p2

    .line 531
    .line 532
    move/from16 v17, p4

    .line 533
    .line 534
    move-object/from16 v13, v26

    .line 535
    .line 536
    move/from16 v14, v27

    .line 537
    .line 538
    const/16 v16, 0x0

    .line 539
    .line 540
    const/16 v23, 0x0

    .line 541
    .line 542
    goto/16 :goto_2

    .line 543
    .line 544
    :cond_9
    move/from16 v20, v5

    .line 545
    .line 546
    move-object/from16 v26, v13

    .line 547
    .line 548
    move/from16 v27, v14

    .line 549
    .line 550
    move-object/from16 v13, v21

    .line 551
    .line 552
    move-object/from16 v14, v25

    .line 553
    .line 554
    add-int/lit8 v0, v18, 0x1

    .line 555
    .line 556
    move/from16 v22, v4

    .line 557
    .line 558
    move-object/from16 v13, v26

    .line 559
    .line 560
    move/from16 v14, v27

    .line 561
    .line 562
    const/16 v16, 0x0

    .line 563
    .line 564
    const/16 v23, 0x0

    .line 565
    .line 566
    goto/16 :goto_0

    .line 567
    .line 568
    :cond_a
    move-object v8, v7

    .line 569
    goto/16 :goto_1c

    .line 570
    .line 571
    :cond_b
    move-object/from16 v24, v1

    .line 572
    .line 573
    move-object/from16 v13, v21

    .line 574
    .line 575
    const/16 v17, 0x2

    .line 576
    .line 577
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    const/4 v1, 0x0

    .line 582
    if-nez v0, :cond_c

    .line 583
    .line 584
    move-object v0, v1

    .line 585
    goto :goto_9

    .line 586
    :cond_c
    iget-object v0, v14, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcoil3/ImageLoader$Builder;

    .line 587
    .line 588
    if-nez v0, :cond_d

    .line 589
    .line 590
    new-instance v0, Lcoil3/ImageLoader$Builder;

    .line 591
    .line 592
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 593
    .line 594
    .line 595
    move-result-object v10

    .line 596
    invoke-direct {v0, v10}, Lcoil3/ImageLoader$Builder;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 597
    .line 598
    .line 599
    iput-object v0, v14, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcoil3/ImageLoader$Builder;

    .line 600
    .line 601
    :cond_d
    :goto_9
    if-eqz v0, :cond_15

    .line 602
    .line 603
    iget-object v1, v0, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 604
    .line 605
    check-cast v1, Lorg/jsoup/parser/ParseError;

    .line 606
    .line 607
    iput-object v12, v1, Lorg/jsoup/parser/ParseError;->cursorPos:Ljava/lang/String;

    .line 608
    .line 609
    iput-object v11, v1, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 610
    .line 611
    iget-object v10, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 612
    .line 613
    check-cast v10, Ljava/util/HashMap;

    .line 614
    .line 615
    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v14

    .line 619
    check-cast v14, Landroid/graphics/Typeface;

    .line 620
    .line 621
    if-eqz v14, :cond_e

    .line 622
    .line 623
    move-object v1, v14

    .line 624
    goto :goto_d

    .line 625
    :cond_e
    iget-object v14, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 626
    .line 627
    check-cast v14, Ljava/util/HashMap;

    .line 628
    .line 629
    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v21

    .line 633
    check-cast v21, Landroid/graphics/Typeface;

    .line 634
    .line 635
    if-eqz v21, :cond_f

    .line 636
    .line 637
    move-object/from16 v0, v21

    .line 638
    .line 639
    goto :goto_a

    .line 640
    :cond_f
    iget-object v8, v3, Lcom/airbnb/lottie/model/Font;->typeface:Landroid/graphics/Typeface;

    .line 641
    .line 642
    if-eqz v8, :cond_10

    .line 643
    .line 644
    move-object v0, v8

    .line 645
    goto :goto_a

    .line 646
    :cond_10
    const-string v8, "fonts/"

    .line 647
    .line 648
    const-string v7, ".ttf"

    .line 649
    .line 650
    invoke-static {v8, v12, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v7

    .line 654
    iget-object v0, v0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 655
    .line 656
    check-cast v0, Landroid/content/res/AssetManager;

    .line 657
    .line 658
    invoke-static {v0, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-virtual {v14, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    :goto_a
    const-string v7, "Italic"

    .line 666
    .line 667
    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 668
    .line 669
    .line 670
    move-result v7

    .line 671
    const-string v8, "Bold"

    .line 672
    .line 673
    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 674
    .line 675
    .line 676
    move-result v8

    .line 677
    if-eqz v7, :cond_11

    .line 678
    .line 679
    if-eqz v8, :cond_11

    .line 680
    .line 681
    move/from16 v7, v19

    .line 682
    .line 683
    goto :goto_b

    .line 684
    :cond_11
    if-eqz v7, :cond_12

    .line 685
    .line 686
    move/from16 v7, v17

    .line 687
    .line 688
    goto :goto_b

    .line 689
    :cond_12
    if-eqz v8, :cond_13

    .line 690
    .line 691
    move/from16 v7, v20

    .line 692
    .line 693
    goto :goto_b

    .line 694
    :cond_13
    const/4 v7, 0x0

    .line 695
    :goto_b
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    .line 696
    .line 697
    .line 698
    move-result v8

    .line 699
    if-ne v8, v7, :cond_14

    .line 700
    .line 701
    goto :goto_c

    .line 702
    :cond_14
    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    :goto_c
    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-object v1, v0

    .line 710
    :cond_15
    :goto_d
    if-eqz v1, :cond_16

    .line 711
    .line 712
    goto :goto_e

    .line 713
    :cond_16
    iget-object v1, v3, Lcom/airbnb/lottie/model/Font;->typeface:Landroid/graphics/Typeface;

    .line 714
    .line 715
    :goto_e
    if-nez v1, :cond_18

    .line 716
    .line 717
    :cond_17
    move-object/from16 v8, p1

    .line 718
    .line 719
    goto/16 :goto_1c

    .line 720
    .line 721
    :cond_18
    iget-object v0, v9, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 722
    .line 723
    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 724
    .line 725
    .line 726
    iget v1, v9, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 727
    .line 728
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 729
    .line 730
    .line 731
    move-result v7

    .line 732
    mul-float/2addr v7, v1

    .line 733
    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v15}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 737
    .line 738
    .line 739
    move-result-object v7

    .line 740
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v15}, Landroid/graphics/Paint;->getTextSize()F

    .line 744
    .line 745
    .line 746
    move-result v7

    .line 747
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 748
    .line 749
    .line 750
    iget v7, v9, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 751
    .line 752
    int-to-float v7, v7

    .line 753
    div-float v7, v7, v18

    .line 754
    .line 755
    if-eqz v24, :cond_19

    .line 756
    .line 757
    invoke-virtual/range {v24 .. v24}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v8

    .line 761
    check-cast v8, Ljava/lang/Float;

    .line 762
    .line 763
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 764
    .line 765
    .line 766
    move-result v8

    .line 767
    add-float/2addr v7, v8

    .line 768
    :cond_19
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 769
    .line 770
    .line 771
    move-result v8

    .line 772
    mul-float/2addr v8, v7

    .line 773
    mul-float/2addr v8, v1

    .line 774
    div-float v8, v8, v22

    .line 775
    .line 776
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 793
    .line 794
    .line 795
    move-result-object v7

    .line 796
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 797
    .line 798
    .line 799
    move-result v10

    .line 800
    const/4 v11, 0x0

    .line 801
    const/4 v12, -0x1

    .line 802
    const/4 v14, 0x0

    .line 803
    :goto_f
    if-ge v11, v10, :cond_17

    .line 804
    .line 805
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    move-object v1, v0

    .line 810
    check-cast v1, Ljava/lang/String;

    .line 811
    .line 812
    iget-object v0, v9, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    .line 813
    .line 814
    if-nez v0, :cond_1a

    .line 815
    .line 816
    const/4 v2, 0x0

    .line 817
    goto :goto_10

    .line 818
    :cond_1a
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 819
    .line 820
    move v2, v0

    .line 821
    :goto_10
    const/4 v4, 0x0

    .line 822
    const/4 v6, 0x0

    .line 823
    move-object/from16 v0, p0

    .line 824
    .line 825
    move v5, v8

    .line 826
    move/from16 v8, v17

    .line 827
    .line 828
    invoke-virtual/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    const/4 v2, 0x0

    .line 833
    :goto_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 834
    .line 835
    .line 836
    move-result v4

    .line 837
    if-ge v2, v4, :cond_25

    .line 838
    .line 839
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v4

    .line 843
    check-cast v4, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 844
    .line 845
    add-int/lit8 v12, v12, 0x1

    .line 846
    .line 847
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 848
    .line 849
    .line 850
    iget-object v6, v4, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 851
    .line 852
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 853
    .line 854
    .line 855
    move-result v6

    .line 856
    move-object/from16 v8, p1

    .line 857
    .line 858
    invoke-virtual {v0, v8, v9, v12, v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z

    .line 859
    .line 860
    .line 861
    iget-object v6, v4, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 862
    .line 863
    move-object/from16 p2, v1

    .line 864
    .line 865
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    move/from16 v18, v2

    .line 870
    .line 871
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 872
    .line 873
    .line 874
    move-result v2

    .line 875
    move-object/from16 p4, v3

    .line 876
    .line 877
    const/4 v3, 0x0

    .line 878
    invoke-static {v1, v3, v2}, Ljava/text/Bidi;->requiresBidi([CII)Z

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    if-eqz v1, :cond_1f

    .line 883
    .line 884
    new-instance v1, Ljava/text/Bidi;

    .line 885
    .line 886
    const/4 v2, -0x2

    .line 887
    invoke-direct {v1, v6, v2}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v1}, Ljava/text/Bidi;->getRunCount()I

    .line 891
    .line 892
    .line 893
    move-result v2

    .line 894
    new-array v3, v2, [B

    .line 895
    .line 896
    move/from16 v19, v5

    .line 897
    .line 898
    new-array v5, v2, [Ljava/lang/Integer;

    .line 899
    .line 900
    move-object/from16 v21, v7

    .line 901
    .line 902
    const/4 v7, 0x0

    .line 903
    :goto_12
    if-ge v7, v2, :cond_1b

    .line 904
    .line 905
    move/from16 v22, v10

    .line 906
    .line 907
    invoke-virtual {v1, v7}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 908
    .line 909
    .line 910
    move-result v10

    .line 911
    int-to-byte v10, v10

    .line 912
    aput-byte v10, v3, v7

    .line 913
    .line 914
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 915
    .line 916
    .line 917
    move-result-object v10

    .line 918
    aput-object v10, v5, v7

    .line 919
    .line 920
    add-int/lit8 v7, v7, 0x1

    .line 921
    .line 922
    move/from16 v10, v22

    .line 923
    .line 924
    goto :goto_12

    .line 925
    :cond_1b
    move/from16 v22, v10

    .line 926
    .line 927
    const/4 v7, 0x0

    .line 928
    invoke-static {v3, v7, v5, v7, v2}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 929
    .line 930
    .line 931
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->reorderingStringBuilder:Ljava/lang/StringBuilder;

    .line 932
    .line 933
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 934
    .line 935
    .line 936
    const/4 v7, 0x0

    .line 937
    :goto_13
    if-ge v7, v2, :cond_1e

    .line 938
    .line 939
    aget-object v10, v5, v7

    .line 940
    .line 941
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 942
    .line 943
    .line 944
    move-result v10

    .line 945
    move/from16 v24, v2

    .line 946
    .line 947
    invoke-virtual {v1, v10}, Ljava/text/Bidi;->getRunStart(I)I

    .line 948
    .line 949
    .line 950
    move-result v2

    .line 951
    move-object/from16 v25, v5

    .line 952
    .line 953
    invoke-virtual {v1, v10}, Ljava/text/Bidi;->getRunLimit(I)I

    .line 954
    .line 955
    .line 956
    move-result v5

    .line 957
    invoke-virtual {v1, v10}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 958
    .line 959
    .line 960
    move-result v10

    .line 961
    invoke-virtual {v6, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v2

    .line 965
    and-int/lit8 v5, v10, 0x1

    .line 966
    .line 967
    if-nez v5, :cond_1c

    .line 968
    .line 969
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    move-object/from16 v26, v1

    .line 973
    .line 974
    goto :goto_15

    .line 975
    :cond_1c
    iget-object v5, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->reversingStringBuilder:Ljava/lang/StringBuilder;

    .line 976
    .line 977
    const/4 v10, 0x0

    .line 978
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 979
    .line 980
    .line 981
    move-object/from16 v26, v1

    .line 982
    .line 983
    :goto_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 984
    .line 985
    .line 986
    move-result v1

    .line 987
    if-ge v10, v1, :cond_1d

    .line 988
    .line 989
    invoke-virtual {v0, v10, v2}, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointToString(ILjava/lang/String;)Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v1

    .line 993
    move-object/from16 v27, v2

    .line 994
    .line 995
    const/4 v2, 0x0

    .line 996
    invoke-virtual {v5, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    .line 998
    .line 999
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1000
    .line 1001
    .line 1002
    move-result v1

    .line 1003
    add-int/2addr v10, v1

    .line 1004
    move-object/from16 v2, v27

    .line 1005
    .line 1006
    goto :goto_14

    .line 1007
    :cond_1d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    :goto_15
    add-int/lit8 v7, v7, 0x1

    .line 1011
    .line 1012
    move/from16 v2, v24

    .line 1013
    .line 1014
    move-object/from16 v5, v25

    .line 1015
    .line 1016
    move-object/from16 v1, v26

    .line 1017
    .line 1018
    goto :goto_13

    .line 1019
    :cond_1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v6

    .line 1023
    goto :goto_16

    .line 1024
    :cond_1f
    move/from16 v19, v5

    .line 1025
    .line 1026
    move-object/from16 v21, v7

    .line 1027
    .line 1028
    move/from16 v22, v10

    .line 1029
    .line 1030
    :goto_16
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->charStrings:Ljava/util/ArrayList;

    .line 1031
    .line 1032
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1033
    .line 1034
    .line 1035
    const/4 v2, 0x0

    .line 1036
    :goto_17
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1037
    .line 1038
    .line 1039
    move-result v3

    .line 1040
    if-ge v2, v3, :cond_20

    .line 1041
    .line 1042
    invoke-virtual {v0, v2, v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointToString(ILjava/lang/String;)Ljava/lang/String;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v3

    .line 1046
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1050
    .line 1051
    .line 1052
    move-result v3

    .line 1053
    add-int/2addr v2, v3

    .line 1054
    goto :goto_17

    .line 1055
    :cond_20
    const/4 v2, 0x0

    .line 1056
    :goto_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1057
    .line 1058
    .line 1059
    move-result v3

    .line 1060
    if-ge v2, v3, :cond_24

    .line 1061
    .line 1062
    iget-object v3, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->charStringBuilder:Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    const/4 v7, 0x0

    .line 1065
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v5

    .line 1072
    check-cast v5, Ljava/lang/String;

    .line 1073
    .line 1074
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    add-int/lit8 v5, v2, 0x1

    .line 1078
    .line 1079
    :goto_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1080
    .line 1081
    .line 1082
    move-result v6

    .line 1083
    if-ge v5, v6, :cond_22

    .line 1084
    .line 1085
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v6

    .line 1089
    check-cast v6, Ljava/lang/String;

    .line 1090
    .line 1091
    const/4 v7, 0x0

    .line 1092
    :goto_1a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1093
    .line 1094
    .line 1095
    move-result v10

    .line 1096
    if-ge v7, v10, :cond_22

    .line 1097
    .line 1098
    invoke-virtual {v6, v7}, Ljava/lang/String;->codePointAt(I)I

    .line 1099
    .line 1100
    .line 1101
    move-result v10

    .line 1102
    invoke-static {v10}, Ljava/lang/Character;->getDirectionality(I)B

    .line 1103
    .line 1104
    .line 1105
    move-result v10

    .line 1106
    move-object/from16 v24, v1

    .line 1107
    .line 1108
    const/4 v1, 0x2

    .line 1109
    if-ne v10, v1, :cond_21

    .line 1110
    .line 1111
    const/4 v10, 0x0

    .line 1112
    invoke-virtual {v3, v10, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    .line 1114
    .line 1115
    add-int/lit8 v5, v5, 0x1

    .line 1116
    .line 1117
    move-object/from16 v1, v24

    .line 1118
    .line 1119
    goto :goto_19

    .line 1120
    :cond_21
    const/4 v10, 0x0

    .line 1121
    add-int/lit8 v7, v7, 0x1

    .line 1122
    .line 1123
    move-object/from16 v1, v24

    .line 1124
    .line 1125
    goto :goto_1a

    .line 1126
    :cond_22
    move-object/from16 v24, v1

    .line 1127
    .line 1128
    const/4 v1, 0x2

    .line 1129
    const/4 v10, 0x0

    .line 1130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v3

    .line 1134
    add-int/2addr v2, v14

    .line 1135
    move/from16 v6, p3

    .line 1136
    .line 1137
    invoke-virtual {v0, v9, v6, v2}, Lcom/airbnb/lottie/model/layer/TextLayer;->configurePaint(Lcom/airbnb/lottie/model/DocumentData;II)V

    .line 1138
    .line 1139
    .line 1140
    iget-boolean v2, v9, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 1141
    .line 1142
    if-eqz v2, :cond_23

    .line 1143
    .line 1144
    invoke-static {v3, v15, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1145
    .line 1146
    .line 1147
    invoke-static {v3, v13, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1148
    .line 1149
    .line 1150
    goto :goto_1b

    .line 1151
    :cond_23
    invoke-static {v3, v13, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-static {v3, v15, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1155
    .line 1156
    .line 1157
    :goto_1b
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 1158
    .line 1159
    .line 1160
    move-result v2

    .line 1161
    add-float v2, v2, v19

    .line 1162
    .line 1163
    const/4 v3, 0x0

    .line 1164
    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1165
    .line 1166
    .line 1167
    move v2, v5

    .line 1168
    move-object/from16 v1, v24

    .line 1169
    .line 1170
    goto :goto_18

    .line 1171
    :cond_24
    move/from16 v6, p3

    .line 1172
    .line 1173
    const/4 v1, 0x2

    .line 1174
    const/4 v3, 0x0

    .line 1175
    const/4 v10, 0x0

    .line 1176
    iget-object v2, v4, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 1177
    .line 1178
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1179
    .line 1180
    .line 1181
    move-result v2

    .line 1182
    add-int/2addr v14, v2

    .line 1183
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 1184
    .line 1185
    .line 1186
    add-int/lit8 v2, v18, 0x1

    .line 1187
    .line 1188
    move-object/from16 v3, p4

    .line 1189
    .line 1190
    move v8, v1

    .line 1191
    move/from16 v5, v19

    .line 1192
    .line 1193
    move-object/from16 v7, v21

    .line 1194
    .line 1195
    move/from16 v10, v22

    .line 1196
    .line 1197
    move-object/from16 v1, p2

    .line 1198
    .line 1199
    goto/16 :goto_11

    .line 1200
    .line 1201
    :cond_25
    move/from16 v6, p3

    .line 1202
    .line 1203
    move-object/from16 p4, v3

    .line 1204
    .line 1205
    move/from16 v19, v5

    .line 1206
    .line 1207
    move-object/from16 v21, v7

    .line 1208
    .line 1209
    move v1, v8

    .line 1210
    move/from16 v22, v10

    .line 1211
    .line 1212
    const/4 v3, 0x0

    .line 1213
    const/4 v10, 0x0

    .line 1214
    move-object/from16 v8, p1

    .line 1215
    .line 1216
    add-int/lit8 v11, v11, 0x1

    .line 1217
    .line 1218
    move-object/from16 v3, p4

    .line 1219
    .line 1220
    move/from16 v17, v1

    .line 1221
    .line 1222
    move/from16 v8, v19

    .line 1223
    .line 1224
    move/from16 v10, v22

    .line 1225
    .line 1226
    goto/16 :goto_f

    .line 1227
    .line 1228
    :goto_1c
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 1229
    .line 1230
    .line 1231
    return-void
.end method

.method public final ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    :goto_0
    if-ge v0, p1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    iput-object v2, v1, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput v2, v1, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 34
    .line 35
    return-object p0
.end method

.method public final getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    int-to-float p2, p2

    .line 13
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-float p0, p0

    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final isIndexInRangeSelection(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/airbnb/lottie/model/DocumentData;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeStartAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeEndAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 20
    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 72
    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    add-int/2addr v3, v2

    .line 86
    add-int/2addr v1, v2

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeUnits:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 88
    .line 89
    sget-object v2, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 90
    .line 91
    if-ne p0, v2, :cond_1

    .line 92
    .line 93
    if-lt p1, v3, :cond_2

    .line 94
    .line 95
    if-ge p1, v1, :cond_2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    int-to-float p0, p1

    .line 99
    int-to-float p1, v0

    .line 100
    div-float/2addr p0, p1

    .line 101
    const/high16 p1, 0x42c80000    # 100.0f

    .line 102
    .line 103
    mul-float/2addr p0, p1

    .line 104
    int-to-float p1, v3

    .line 105
    cmpl-float p1, p0, p1

    .line 106
    .line 107
    if-ltz p1, :cond_2

    .line 108
    .line 109
    int-to-float p1, v1

    .line 110
    cmpg-float p0, p0, p1

    .line 111
    .line 112
    if-gez p0, :cond_2

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    const/4 p0, 0x0

    .line 116
    return p0

    .line 117
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 118
    return p0
.end method

.method public final offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z
    .locals 6

    .line 1
    iget-object v0, p2, Lcom/airbnb/lottie/model/DocumentData;->boxPosition:Landroid/graphics/PointF;

    .line 2
    .line 3
    iget-object v1, p2, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    .line 4
    .line 5
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move v4, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v4, p2, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 15
    .line 16
    mul-float/2addr v4, v2

    .line 17
    iget v5, v0, Landroid/graphics/PointF;->y:F

    .line 18
    .line 19
    add-float/2addr v4, v5

    .line 20
    :goto_0
    int-to-float p3, p3

    .line 21
    iget v5, p2, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 22
    .line 23
    mul-float/2addr p3, v5

    .line 24
    mul-float/2addr p3, v2

    .line 25
    add-float/2addr p3, v4

    .line 26
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    move p0, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget p0, v0, Landroid/graphics/PointF;->x:F

    .line 36
    .line 37
    :goto_1
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 41
    .line 42
    :goto_2
    sget-object v0, Lcom/airbnb/lottie/model/layer/TextLayer$3;->$SwitchMap$com$airbnb$lottie$model$DocumentData$Justification:[I

    .line 43
    .line 44
    iget-object p2, p2, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    aget p2, v0, p2

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    if-eq p2, v0, :cond_5

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    if-eq p2, v1, :cond_4

    .line 57
    .line 58
    const/4 v1, 0x3

    .line 59
    if-eq p2, v1, :cond_3

    .line 60
    .line 61
    return v0

    .line 62
    :cond_3
    const/high16 p2, 0x40000000    # 2.0f

    .line 63
    .line 64
    div-float/2addr v3, p2

    .line 65
    add-float/2addr v3, p0

    .line 66
    div-float/2addr p4, p2

    .line 67
    sub-float/2addr v3, p4

    .line 68
    invoke-virtual {p1, v3, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    .line 70
    .line 71
    return v0

    .line 72
    :cond_4
    add-float/2addr p0, v3

    .line 73
    sub-float/2addr p0, p4

    .line 74
    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    .line 76
    .line 77
    return v0

    .line 78
    :cond_5
    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    .line 80
    .line 81
    return v0
.end method

.method public final splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    move v5, v3

    .line 10
    move v7, v5

    .line 11
    move v8, v7

    .line 12
    move v9, v8

    .line 13
    move v11, v9

    .line 14
    move v6, v4

    .line 15
    move v10, v6

    .line 16
    move v12, v10

    .line 17
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v13

    .line 21
    if-ge v5, v13, :cond_7

    .line 22
    .line 23
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v13

    .line 27
    if-eqz p6, :cond_1

    .line 28
    .line 29
    iget-object v14, v2, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v15, v2, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v13, v14, v15}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v14

    .line 37
    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 38
    .line 39
    iget-object v15, v15, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 40
    .line 41
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v15, v14}, Landroidx/collection/ArraySetKt;->commonGet(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v14

    .line 48
    check-cast v14, Lcom/airbnb/lottie/model/FontCharacter;

    .line 49
    .line 50
    if-nez v14, :cond_0

    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_0
    iget-wide v14, v14, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    .line 55
    .line 56
    double-to-float v14, v14

    .line 57
    mul-float v14, v14, p4

    .line 58
    .line 59
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 60
    .line 61
    .line 62
    move-result v15

    .line 63
    mul-float/2addr v15, v14

    .line 64
    add-float v15, v15, p5

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    add-int/lit8 v14, v5, 0x1

    .line 68
    .line 69
    invoke-virtual {v1, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    iget-object v15, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 74
    .line 75
    invoke-virtual {v15, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 76
    .line 77
    .line 78
    move-result v14

    .line 79
    add-float v15, v14, p5

    .line 80
    .line 81
    :goto_1
    const/16 v14, 0x20

    .line 82
    .line 83
    if-ne v13, v14, :cond_2

    .line 84
    .line 85
    const/4 v9, 0x1

    .line 86
    move v12, v15

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    if-eqz v9, :cond_3

    .line 89
    .line 90
    move v9, v3

    .line 91
    move v11, v5

    .line 92
    move v10, v15

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    add-float/2addr v10, v15

    .line 95
    :goto_2
    add-float/2addr v6, v15

    .line 96
    cmpl-float v16, p2, v4

    .line 97
    .line 98
    if-lez v16, :cond_6

    .line 99
    .line 100
    cmpl-float v16, v6, p2

    .line 101
    .line 102
    if-ltz v16, :cond_6

    .line 103
    .line 104
    if-ne v13, v14, :cond_4

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 108
    .line 109
    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    if-ne v11, v8, :cond_5

    .line 114
    .line 115
    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    sub-int/2addr v11, v8

    .line 132
    int-to-float v8, v11

    .line 133
    mul-float/2addr v8, v12

    .line 134
    sub-float/2addr v6, v15

    .line 135
    sub-float/2addr v6, v8

    .line 136
    iput-object v10, v13, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 137
    .line 138
    iput v6, v13, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    .line 139
    .line 140
    move v8, v5

    .line 141
    move v11, v8

    .line 142
    move v6, v15

    .line 143
    move v10, v6

    .line 144
    goto :goto_3

    .line 145
    :cond_5
    add-int/lit8 v14, v11, -0x1

    .line 146
    .line 147
    invoke-virtual {v1, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    sub-int/2addr v8, v15

    .line 164
    int-to-float v8, v8

    .line 165
    mul-float/2addr v8, v12

    .line 166
    sub-float/2addr v6, v10

    .line 167
    sub-float/2addr v6, v8

    .line 168
    sub-float/2addr v6, v12

    .line 169
    iput-object v14, v13, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 170
    .line 171
    iput v6, v13, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    .line 172
    .line 173
    move v6, v10

    .line 174
    move v8, v11

    .line 175
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_7
    cmpl-float v2, v6, v4

    .line 180
    .line 181
    if-lez v2, :cond_8

    .line 182
    .line 183
    add-int/lit8 v7, v7, 0x1

    .line 184
    .line 185
    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iput-object v1, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    .line 194
    .line 195
    iput v6, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    .line 196
    .line 197
    :cond_8
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v0, v3, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    return-object v0
.end method
