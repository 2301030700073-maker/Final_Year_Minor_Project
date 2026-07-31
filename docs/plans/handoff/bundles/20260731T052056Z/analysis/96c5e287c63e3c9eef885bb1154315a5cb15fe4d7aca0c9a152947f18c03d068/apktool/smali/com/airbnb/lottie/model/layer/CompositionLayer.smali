.class public final Lcom/airbnb/lottie/model/layer/CompositionLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public clipToCompositionBounds:Z

.field public final dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

.field public final layerBounds:Landroid/graphics/RectF;

.field public final layers:Ljava/util/ArrayList;

.field public final newClipRect:Landroid/graphics/RectF;

.field public final offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

.field public final offscreenOp:Lokio/PriorityQueue;

.field public progress:F

.field public final rect:Landroid/graphics/RectF;

.field public final timeRemapping:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerBounds:Landroid/graphics/RectF;

    .line 31
    .line 32
    new-instance v0, Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/airbnb/lottie/utils/OffscreenLayer;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 38
    .line 39
    new-instance v0, Lokio/PriorityQueue;

    .line 40
    .line 41
    const/16 v1, 0x9

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {v0, v1, v2}, Lokio/PriorityQueue;-><init>(IB)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->offscreenOp:Lokio/PriorityQueue;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->clipToCompositionBounds:Z

    .line 51
    .line 52
    iget-object p2, p2, Lcom/airbnb/lottie/model/layer/Layer;->timeRemapping:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 62
    .line 63
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 71
    .line 72
    :goto_0
    new-instance p2, Landroidx/collection/LongSparseArray;

    .line 73
    .line 74
    iget-object v3, p4, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-direct {p2, v3}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    sub-int/2addr v3, v0

    .line 88
    move-object v4, v1

    .line 89
    :goto_1
    if-ltz v3, :cond_4

    .line 90
    .line 91
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Lcom/airbnb/lottie/model/layer/Layer;

    .line 96
    .line 97
    sget-object v6, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType:[I

    .line 98
    .line 99
    iget-object v7, v5, Lcom/airbnb/lottie/model/layer/Layer;->layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    aget v6, v6, v7

    .line 106
    .line 107
    packed-switch v6, :pswitch_data_0

    .line 108
    .line 109
    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v7, "Unknown layer type "

    .line 113
    .line 114
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v7, v5, Lcom/airbnb/lottie/model/layer/Layer;->layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 118
    .line 119
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-static {v6}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    move-object v6, v1

    .line 130
    goto :goto_2

    .line 131
    :pswitch_0
    new-instance v6, Lcom/airbnb/lottie/model/layer/TextLayer;

    .line 132
    .line 133
    invoke-direct {v6, p1, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :pswitch_1
    new-instance v6, Lcom/airbnb/lottie/model/layer/NullLayer;

    .line 138
    .line 139
    invoke-direct {v6, p1, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :pswitch_2
    new-instance v6, Lcom/airbnb/lottie/model/layer/ImageLayer;

    .line 144
    .line 145
    invoke-direct {v6, p1, v5}, Lcom/airbnb/lottie/model/layer/ImageLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :pswitch_3
    new-instance v6, Lcom/airbnb/lottie/model/layer/SolidLayer;

    .line 150
    .line 151
    invoke-direct {v6, p1, v5}, Lcom/airbnb/lottie/model/layer/SolidLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :pswitch_4
    new-instance v6, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 156
    .line 157
    iget-object v7, v5, Lcom/airbnb/lottie/model/layer/Layer;->refId:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v8, p4, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/HashMap;

    .line 160
    .line 161
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    check-cast v7, Ljava/util/List;

    .line 166
    .line 167
    invoke-direct {v6, p1, v5, v7, p4}, Lcom/airbnb/lottie/model/layer/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :pswitch_5
    new-instance v6, Lcom/airbnb/lottie/model/layer/ShapeLayer;

    .line 172
    .line 173
    invoke-direct {v6, p1, v5, p0, p4}, Lcom/airbnb/lottie/model/layer/ShapeLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/model/layer/CompositionLayer;Lcom/airbnb/lottie/LottieComposition;)V

    .line 174
    .line 175
    .line 176
    :goto_2
    if-nez v6, :cond_1

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_1
    iget-object v7, v6, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 180
    .line 181
    iget-wide v7, v7, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    .line 182
    .line 183
    invoke-virtual {p2, v7, v8, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    if-eqz v4, :cond_2

    .line 187
    .line 188
    iput-object v6, v4, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 189
    .line 190
    move-object v4, v1

    .line 191
    goto :goto_3

    .line 192
    :cond_2
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v7, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    sget-object v7, Lcom/airbnb/lottie/model/layer/CompositionLayer$1;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType:[I

    .line 198
    .line 199
    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/Layer;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    aget v5, v7, v5

    .line 206
    .line 207
    if-eq v5, v0, :cond_3

    .line 208
    .line 209
    const/4 v7, 0x2

    .line 210
    if-eq v5, v7, :cond_3

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_3
    move-object v4, v6

    .line 214
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_4
    :goto_4
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-ge v2, p1, :cond_7

    .line 222
    .line 223
    invoke-virtual {p2, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 224
    .line 225
    .line 226
    move-result-wide p3

    .line 227
    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    check-cast p1, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 232
    .line 233
    if-nez p1, :cond_5

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_5
    iget-object p3, p1, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 237
    .line 238
    iget-wide p3, p3, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    .line 239
    .line 240
    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p3

    .line 244
    check-cast p3, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 245
    .line 246
    if-eqz p3, :cond_6

    .line 247
    .line 248
    iput-object p3, p1, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 249
    .line 250
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_7
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 254
    .line 255
    iget-object p1, p1, Lcom/airbnb/lottie/model/layer/Layer;->dropShadowEffect:Lokhttp3/Request$Builder;

    .line 256
    .line 257
    if-eqz p1, :cond_8

    .line 258
    .line 259
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 260
    .line 261
    invoke-direct {p2, p0, p0, p1}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;-><init>(Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/layer/BaseLayer;Lokhttp3/Request$Builder;)V

    .line 262
    .line 263
    .line 264
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 265
    .line 266
    :cond_8
    return-void

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez p4, :cond_1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v3, v2

    .line 15
    :goto_1
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    iget-boolean v3, v4, Lcom/airbnb/lottie/LottieDrawable;->isApplyingShadowToLayersEnabled:Z

    .line 23
    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    move v0, v2

    .line 27
    :cond_2
    if-eqz v0, :cond_3

    .line 28
    .line 29
    const/16 v3, 0xff

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_3
    move v3, p3

    .line 33
    :goto_2
    if-eqz v1, :cond_4

    .line 34
    .line 35
    invoke-virtual {v1, p2, v3}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->evaluate(Landroid/graphics/Matrix;I)Lcom/airbnb/lottie/utils/DropShadow;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    :cond_4
    iget-boolean v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->clipToCompositionBounds:Z

    .line 40
    .line 41
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 42
    .line 43
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 46
    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    const-string v1, "__container"

    .line 50
    .line 51
    iget-object v7, v4, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    invoke-virtual {v6}, Landroid/graphics/RectF;->setEmpty()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_6

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 77
    .line 78
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerBounds:Landroid/graphics/RectF;

    .line 79
    .line 80
    invoke-virtual {v4, v7, p2, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    iget v1, v4, Lcom/airbnb/lottie/model/layer/Layer;->preCompWidth:F

    .line 88
    .line 89
    iget v4, v4, Lcom/airbnb/lottie/model/layer/Layer;->preCompHeight:F

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    invoke-virtual {v6, v7, v7, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 96
    .line 97
    .line 98
    :cond_6
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 99
    .line 100
    if-eqz v0, :cond_9

    .line 101
    .line 102
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->offscreenOp:Lokio/PriorityQueue;

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    iput-object v4, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 106
    .line 107
    iput p3, p0, Lokio/PriorityQueue;->size:I

    .line 108
    .line 109
    if-eqz p4, :cond_8

    .line 110
    .line 111
    iget p3, p4, Lcom/airbnb/lottie/utils/DropShadow;->color:I

    .line 112
    .line 113
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    if-lez p3, :cond_7

    .line 118
    .line 119
    iput-object p4, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_7
    iput-object v4, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 123
    .line 124
    :goto_4
    move-object p4, v4

    .line 125
    :cond_8
    invoke-virtual {v1, p1, v6, p0}, Lcom/airbnb/lottie/utils/OffscreenLayer;->start(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lokio/PriorityQueue;)Landroid/graphics/Canvas;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    goto :goto_5

    .line 130
    :cond_9
    move-object p0, p1

    .line 131
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    if-eqz p3, :cond_a

    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    sub-int/2addr p3, v2

    .line 145
    :goto_6
    if-ltz p3, :cond_a

    .line 146
    .line 147
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 152
    .line 153
    invoke-virtual {v2, p0, p2, v3, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 p3, p3, -0x1

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_a
    if-eqz v0, :cond_b

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/OffscreenLayer;->finish()V

    .line 162
    .line 163
    .line 164
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 165
    .line 166
    .line 167
    sget-object p0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 168
    .line 169
    return-void
.end method

.method public final getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    const/4 v0, 0x1

    .line 11
    sub-int/2addr p3, v0

    .line 12
    :goto_0
    if-ltz p3, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {v2, v1, v3, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p3, p3, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public final setProgress(F)V
    .locals 5

    .line 1
    sget-object v0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    iput p1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->progress:F

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 17
    .line 18
    iget v2, p1, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 19
    .line 20
    iget p1, p1, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    .line 21
    .line 22
    sub-float/2addr v2, p1

    .line 23
    const p1, 0x3c23d70a    # 0.01f

    .line 24
    .line 25
    .line 26
    add-float/2addr v2, p1

    .line 27
    iget-object p1, v0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 28
    .line 29
    iget p1, p1, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Float;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget-object v4, v0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 42
    .line 43
    iget v4, v4, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    .line 44
    .line 45
    mul-float/2addr v3, v4

    .line 46
    sub-float/2addr v3, p1

    .line 47
    div-float p1, v3, v2

    .line 48
    .line 49
    :cond_0
    if-nez v1, :cond_1

    .line 50
    .line 51
    iget v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->startFrame:F

    .line 52
    .line 53
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 54
    .line 55
    iget v3, v2, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 56
    .line 57
    iget v2, v2, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    .line 58
    .line 59
    sub-float/2addr v3, v2

    .line 60
    div-float/2addr v1, v3

    .line 61
    sub-float/2addr p1, v1

    .line 62
    :cond_1
    iget v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->timeStretch:F

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    cmpl-float v1, v1, v2

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    const-string v1, "__container"

    .line 70
    .line 71
    iget-object v2, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    iget v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->timeStretch:F

    .line 80
    .line 81
    div-float/2addr p1, v0

    .line 82
    :cond_2
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    add-int/lit8 v0, v0, -0x1

    .line 89
    .line 90
    :goto_0
    if-ltz v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v0, v0, -0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    sget-object p0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 105
    .line 106
    return-void
.end method
