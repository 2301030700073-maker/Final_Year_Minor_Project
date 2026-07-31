.class public final Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final anchorPoint:Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;

.field public final autoOrient:Z

.field public cachedCosX:F

.field public cachedCosY:F

.field public cachedRotationX:F

.field public cachedRotationY:F

.field public cachedRotationZ:F

.field public final endOpacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final matrix:Landroid/graphics/Matrix;

.field public final opacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final rotation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public rotation3DCacheDirty:Z

.field public final rotationX:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final rotationY:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final rotationZ:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final scale:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

.field public final skew:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final skewAngle:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final skewMatrix1:Landroid/graphics/Matrix;

.field public final skewMatrix2:Landroid/graphics/Matrix;

.field public final skewMatrix3:Landroid/graphics/Matrix;

.field public final skewValues:[F

.field public final startOpacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 10
    .line 11
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 12
    .line 13
    iput v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedRotationX:F

    .line 14
    .line 15
    iput v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedRotationY:F

    .line 16
    .line 17
    iput v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedRotationZ:F

    .line 18
    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    .line 21
    iput v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedCosX:F

    .line 22
    .line 23
    iput v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedCosY:F

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation3DCacheDirty:Z

    .line 27
    .line 28
    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->anchorPoint:Lokhttp3/Headers$Builder;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    move-object v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;

    .line 42
    .line 43
    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    move-object v0, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_1
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 54
    .line 55
    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->scale:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    move-object v0, v1

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_2
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 68
    .line 69
    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    move-object v0, v1

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_3
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 80
    .line 81
    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skew:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 82
    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    move-object v0, v1

    .line 86
    goto :goto_4

    .line 87
    :cond_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :goto_4
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 92
    .line 93
    iget-boolean v2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->autoOrient:Z

    .line 94
    .line 95
    iput-boolean v2, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->autoOrient:Z

    .line 96
    .line 97
    iget-object v2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationX:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 98
    .line 99
    if-nez v2, :cond_5

    .line 100
    .line 101
    move-object v2, v1

    .line 102
    goto :goto_5

    .line 103
    :cond_5
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :goto_5
    iput-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationX:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 108
    .line 109
    iget-object v2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationY:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 110
    .line 111
    if-nez v2, :cond_6

    .line 112
    .line 113
    move-object v2, v1

    .line 114
    goto :goto_6

    .line 115
    :cond_6
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    :goto_6
    iput-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationY:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 120
    .line 121
    iget-object v2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationZ:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 122
    .line 123
    if-nez v2, :cond_7

    .line 124
    .line 125
    move-object v2, v1

    .line 126
    goto :goto_7

    .line 127
    :cond_7
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    :goto_7
    iput-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationZ:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 132
    .line 133
    if-eqz v0, :cond_8

    .line 134
    .line 135
    new-instance v0, Landroid/graphics/Matrix;

    .line 136
    .line 137
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    .line 141
    .line 142
    new-instance v0, Landroid/graphics/Matrix;

    .line 143
    .line 144
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    .line 148
    .line 149
    new-instance v0, Landroid/graphics/Matrix;

    .line 150
    .line 151
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    .line 155
    .line 156
    const/16 v0, 0x9

    .line 157
    .line 158
    new-array v0, v0, [F

    .line 159
    .line 160
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_8
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    .line 164
    .line 165
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    .line 166
    .line 167
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    .line 168
    .line 169
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    .line 170
    .line 171
    :goto_8
    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skewAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 172
    .line 173
    if-nez v0, :cond_9

    .line 174
    .line 175
    move-object v0, v1

    .line 176
    goto :goto_9

    .line 177
    :cond_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    :goto_9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 182
    .line 183
    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 184
    .line 185
    if-eqz v0, :cond_a

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 192
    .line 193
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 194
    .line 195
    :cond_a
    iget-object v0, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->startOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 196
    .line 197
    if-eqz v0, :cond_b

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 204
    .line 205
    goto :goto_a

    .line 206
    :cond_b
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 207
    .line 208
    :goto_a
    iget-object p1, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->endOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 209
    .line 210
    if-eqz p1, :cond_c

    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 217
    .line 218
    return-void

    .line 219
    :cond_c
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 220
    .line 221
    return-void
.end method


# virtual methods
.method public final addAnimationsToLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationX:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationY:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationZ:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->startOpacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->endOpacity:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 27
    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 34
    .line 35
    .line 36
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 41
    .line 42
    .line 43
    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 48
    .line 49
    .line 50
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 51
    .line 52
    if-eqz v0, :cond_7

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 55
    .line 56
    .line 57
    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 58
    .line 59
    if-eqz v0, :cond_8

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 62
    .line 63
    .line 64
    :cond_8
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationX:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 65
    .line 66
    if-eqz v0, :cond_9

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    invoke-direct {v1, v2, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 78
    .line 79
    .line 80
    :cond_9
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationY:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 81
    .line 82
    if-eqz v0, :cond_a

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    const/4 v2, 0x2

    .line 90
    invoke-direct {v1, v2, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 94
    .line 95
    .line 96
    :cond_a
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationZ:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 97
    .line 98
    if-eqz v0, :cond_b

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 101
    .line 102
    .line 103
    new-instance p1, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    const/4 v1, 0x3

    .line 106
    invoke-direct {p1, v1, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 110
    .line 111
    .line 112
    :cond_b
    return-void
.end method

.method public final clearSkewValues()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x9

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput v2, v1, v0

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 9
    .line 10
    iget-object v3, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;

    .line 11
    .line 12
    iget-object v4, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 13
    .line 14
    iget-object v5, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationZ:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 15
    .line 16
    iget-object v6, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationY:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    const/high16 v8, 0x3f800000    # 1.0f

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    iget-object v10, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationX:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 23
    .line 24
    if-eqz v10, :cond_0

    .line 25
    .line 26
    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 27
    .line 28
    .line 29
    move-result v11

    .line 30
    cmpl-float v11, v11, v9

    .line 31
    .line 32
    if-nez v11, :cond_2

    .line 33
    .line 34
    :cond_0
    if-eqz v6, :cond_1

    .line 35
    .line 36
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    cmpl-float v11, v11, v9

    .line 41
    .line 42
    if-nez v11, :cond_2

    .line 43
    .line 44
    :cond_1
    if-eqz v5, :cond_17

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    cmpl-float v11, v11, v9

    .line 51
    .line 52
    if-eqz v11, :cond_17

    .line 53
    .line 54
    :cond_2
    if-eqz v10, :cond_3

    .line 55
    .line 56
    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v10, v9

    .line 62
    :goto_0
    if-eqz v6, :cond_4

    .line 63
    .line 64
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    move v6, v9

    .line 70
    :goto_1
    if-eqz v5, :cond_5

    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    move v5, v9

    .line 78
    :goto_2
    iget-boolean v11, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation3DCacheDirty:Z

    .line 79
    .line 80
    if-nez v11, :cond_6

    .line 81
    .line 82
    iget v11, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedRotationX:F

    .line 83
    .line 84
    cmpl-float v11, v10, v11

    .line 85
    .line 86
    if-nez v11, :cond_6

    .line 87
    .line 88
    iget v11, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedRotationY:F

    .line 89
    .line 90
    cmpl-float v11, v6, v11

    .line 91
    .line 92
    if-nez v11, :cond_6

    .line 93
    .line 94
    iget v11, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedRotationZ:F

    .line 95
    .line 96
    cmpl-float v11, v5, v11

    .line 97
    .line 98
    if-eqz v11, :cond_9

    .line 99
    .line 100
    :cond_6
    iput v10, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedRotationX:F

    .line 101
    .line 102
    iput v6, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedRotationY:F

    .line 103
    .line 104
    iput v5, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedRotationZ:F

    .line 105
    .line 106
    cmpl-float v11, v10, v9

    .line 107
    .line 108
    if-eqz v11, :cond_7

    .line 109
    .line 110
    float-to-double v11, v10

    .line 111
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    .line 112
    .line 113
    .line 114
    move-result-wide v11

    .line 115
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 116
    .line 117
    .line 118
    move-result-wide v11

    .line 119
    double-to-float v11, v11

    .line 120
    iput v11, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedCosX:F

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    iput v8, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedCosX:F

    .line 124
    .line 125
    :goto_3
    cmpl-float v11, v6, v9

    .line 126
    .line 127
    if-eqz v11, :cond_8

    .line 128
    .line 129
    float-to-double v11, v6

    .line 130
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    .line 131
    .line 132
    .line 133
    move-result-wide v11

    .line 134
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 135
    .line 136
    .line 137
    move-result-wide v11

    .line 138
    double-to-float v11, v11

    .line 139
    iput v11, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedCosY:F

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_8
    iput v8, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedCosY:F

    .line 143
    .line 144
    :goto_4
    iput-boolean v7, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation3DCacheDirty:Z

    .line 145
    .line 146
    :cond_9
    const/4 v7, 0x0

    .line 147
    if-nez v3, :cond_a

    .line 148
    .line 149
    move-object v3, v7

    .line 150
    goto :goto_5

    .line 151
    :cond_a
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Landroid/graphics/PointF;

    .line 156
    .line 157
    :goto_5
    if-nez v4, :cond_b

    .line 158
    .line 159
    move-object v4, v7

    .line 160
    goto :goto_6

    .line 161
    :cond_b
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Landroid/graphics/PointF;

    .line 166
    .line 167
    :goto_6
    if-nez v2, :cond_c

    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_c
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    move-object v7, v2

    .line 175
    check-cast v7, Lcom/airbnb/lottie/value/ScaleXY;

    .line 176
    .line 177
    :goto_7
    if-eqz v7, :cond_d

    .line 178
    .line 179
    iget v2, v7, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 180
    .line 181
    goto :goto_8

    .line 182
    :cond_d
    move v2, v8

    .line 183
    :goto_8
    if-eqz v7, :cond_e

    .line 184
    .line 185
    iget v7, v7, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 186
    .line 187
    goto :goto_9

    .line 188
    :cond_e
    move v7, v8

    .line 189
    :goto_9
    iget v11, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedCosX:F

    .line 190
    .line 191
    iget v0, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->cachedCosY:F

    .line 192
    .line 193
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 194
    .line 195
    .line 196
    if-eqz v4, :cond_10

    .line 197
    .line 198
    iget v12, v4, Landroid/graphics/PointF;->x:F

    .line 199
    .line 200
    cmpl-float v13, v12, v9

    .line 201
    .line 202
    if-nez v13, :cond_f

    .line 203
    .line 204
    iget v13, v4, Landroid/graphics/PointF;->y:F

    .line 205
    .line 206
    cmpl-float v13, v13, v9

    .line 207
    .line 208
    if-eqz v13, :cond_10

    .line 209
    .line 210
    :cond_f
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 211
    .line 212
    invoke-virtual {v1, v12, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 213
    .line 214
    .line 215
    :cond_10
    cmpl-float v4, v5, v9

    .line 216
    .line 217
    if-eqz v4, :cond_11

    .line 218
    .line 219
    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 220
    .line 221
    .line 222
    :cond_11
    cmpl-float v4, v6, v9

    .line 223
    .line 224
    if-eqz v4, :cond_12

    .line 225
    .line 226
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 227
    .line 228
    .line 229
    :cond_12
    cmpl-float v0, v10, v9

    .line 230
    .line 231
    if-eqz v0, :cond_13

    .line 232
    .line 233
    invoke-virtual {v1, v8, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 234
    .line 235
    .line 236
    :cond_13
    cmpl-float v0, v2, v8

    .line 237
    .line 238
    if-nez v0, :cond_14

    .line 239
    .line 240
    cmpl-float v0, v7, v8

    .line 241
    .line 242
    if-eqz v0, :cond_15

    .line 243
    .line 244
    :cond_14
    invoke-virtual {v1, v2, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 245
    .line 246
    .line 247
    :cond_15
    if-eqz v3, :cond_22

    .line 248
    .line 249
    iget v0, v3, Landroid/graphics/PointF;->x:F

    .line 250
    .line 251
    cmpl-float v2, v0, v9

    .line 252
    .line 253
    if-nez v2, :cond_16

    .line 254
    .line 255
    iget v2, v3, Landroid/graphics/PointF;->y:F

    .line 256
    .line 257
    cmpl-float v2, v2, v9

    .line 258
    .line 259
    if-eqz v2, :cond_22

    .line 260
    .line 261
    :cond_16
    neg-float v0, v0

    .line 262
    iget v2, v3, Landroid/graphics/PointF;->y:F

    .line 263
    .line 264
    neg-float v2, v2

    .line 265
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 266
    .line 267
    .line 268
    return-object v1

    .line 269
    :cond_17
    if-eqz v4, :cond_19

    .line 270
    .line 271
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    check-cast v5, Landroid/graphics/PointF;

    .line 276
    .line 277
    if-eqz v5, :cond_19

    .line 278
    .line 279
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 280
    .line 281
    cmpl-float v10, v6, v9

    .line 282
    .line 283
    if-nez v10, :cond_18

    .line 284
    .line 285
    iget v10, v5, Landroid/graphics/PointF;->y:F

    .line 286
    .line 287
    cmpl-float v10, v10, v9

    .line 288
    .line 289
    if-eqz v10, :cond_19

    .line 290
    .line 291
    :cond_18
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 292
    .line 293
    invoke-virtual {v1, v6, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 294
    .line 295
    .line 296
    :cond_19
    iget-boolean v5, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->autoOrient:Z

    .line 297
    .line 298
    if-eqz v5, :cond_1a

    .line 299
    .line 300
    if-eqz v4, :cond_1b

    .line 301
    .line 302
    iget v5, v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    .line 303
    .line 304
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    check-cast v6, Landroid/graphics/PointF;

    .line 309
    .line 310
    iget v10, v6, Landroid/graphics/PointF;->x:F

    .line 311
    .line 312
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 313
    .line 314
    const v11, 0x38d1b717    # 1.0E-4f

    .line 315
    .line 316
    .line 317
    add-float/2addr v11, v5

    .line 318
    invoke-virtual {v4, v11}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v11

    .line 325
    check-cast v11, Landroid/graphics/PointF;

    .line 326
    .line 327
    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 328
    .line 329
    .line 330
    iget v4, v11, Landroid/graphics/PointF;->y:F

    .line 331
    .line 332
    sub-float/2addr v4, v6

    .line 333
    float-to-double v4, v4

    .line 334
    iget v6, v11, Landroid/graphics/PointF;->x:F

    .line 335
    .line 336
    sub-float/2addr v6, v10

    .line 337
    float-to-double v10, v6

    .line 338
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 339
    .line 340
    .line 341
    move-result-wide v4

    .line 342
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 343
    .line 344
    .line 345
    move-result-wide v4

    .line 346
    double-to-float v4, v4

    .line 347
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 348
    .line 349
    .line 350
    goto :goto_a

    .line 351
    :cond_1a
    iget-object v4, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 352
    .line 353
    if-eqz v4, :cond_1b

    .line 354
    .line 355
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    cmpl-float v5, v4, v9

    .line 360
    .line 361
    if-eqz v5, :cond_1b

    .line 362
    .line 363
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 364
    .line 365
    .line 366
    :cond_1b
    :goto_a
    iget-object v4, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skew:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 367
    .line 368
    if-eqz v4, :cond_1e

    .line 369
    .line 370
    const/high16 v5, 0x42b40000    # 90.0f

    .line 371
    .line 372
    iget-object v6, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewAngle:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 373
    .line 374
    if-nez v6, :cond_1c

    .line 375
    .line 376
    move v10, v9

    .line 377
    goto :goto_b

    .line 378
    :cond_1c
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 379
    .line 380
    .line 381
    move-result v10

    .line 382
    neg-float v10, v10

    .line 383
    add-float/2addr v10, v5

    .line 384
    float-to-double v10, v10

    .line 385
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    .line 386
    .line 387
    .line 388
    move-result-wide v10

    .line 389
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 390
    .line 391
    .line 392
    move-result-wide v10

    .line 393
    double-to-float v10, v10

    .line 394
    :goto_b
    if-nez v6, :cond_1d

    .line 395
    .line 396
    move v5, v8

    .line 397
    goto :goto_c

    .line 398
    :cond_1d
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    neg-float v6, v6

    .line 403
    add-float/2addr v6, v5

    .line 404
    float-to-double v5, v6

    .line 405
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 406
    .line 407
    .line 408
    move-result-wide v5

    .line 409
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 410
    .line 411
    .line 412
    move-result-wide v5

    .line 413
    double-to-float v5, v5

    .line 414
    :goto_c
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    float-to-double v11, v4

    .line 419
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    .line 420
    .line 421
    .line 422
    move-result-wide v11

    .line 423
    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    .line 424
    .line 425
    .line 426
    move-result-wide v11

    .line 427
    double-to-float v4, v11

    .line 428
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    .line 429
    .line 430
    .line 431
    iget-object v6, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewValues:[F

    .line 432
    .line 433
    aput v10, v6, v7

    .line 434
    .line 435
    const/4 v11, 0x1

    .line 436
    aput v5, v6, v11

    .line 437
    .line 438
    neg-float v12, v5

    .line 439
    const/4 v13, 0x3

    .line 440
    aput v12, v6, v13

    .line 441
    .line 442
    const/4 v14, 0x4

    .line 443
    aput v10, v6, v14

    .line 444
    .line 445
    const/16 v15, 0x8

    .line 446
    .line 447
    aput v8, v6, v15

    .line 448
    .line 449
    move/from16 v16, v7

    .line 450
    .line 451
    iget-object v7, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix1:Landroid/graphics/Matrix;

    .line 452
    .line 453
    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->setValues([F)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    .line 457
    .line 458
    .line 459
    aput v8, v6, v16

    .line 460
    .line 461
    aput v4, v6, v13

    .line 462
    .line 463
    aput v8, v6, v14

    .line 464
    .line 465
    aput v8, v6, v15

    .line 466
    .line 467
    iget-object v4, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix2:Landroid/graphics/Matrix;

    .line 468
    .line 469
    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->setValues([F)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->clearSkewValues()V

    .line 473
    .line 474
    .line 475
    aput v10, v6, v16

    .line 476
    .line 477
    aput v12, v6, v11

    .line 478
    .line 479
    aput v5, v6, v13

    .line 480
    .line 481
    aput v10, v6, v14

    .line 482
    .line 483
    aput v8, v6, v15

    .line 484
    .line 485
    iget-object v0, v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->skewMatrix3:Landroid/graphics/Matrix;

    .line 486
    .line 487
    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->setValues([F)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v4, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 497
    .line 498
    .line 499
    :cond_1e
    if-eqz v2, :cond_20

    .line 500
    .line 501
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    check-cast v0, Lcom/airbnb/lottie/value/ScaleXY;

    .line 506
    .line 507
    if-eqz v0, :cond_20

    .line 508
    .line 509
    iget v2, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 510
    .line 511
    cmpl-float v4, v2, v8

    .line 512
    .line 513
    if-nez v4, :cond_1f

    .line 514
    .line 515
    iget v4, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 516
    .line 517
    cmpl-float v4, v4, v8

    .line 518
    .line 519
    if-eqz v4, :cond_20

    .line 520
    .line 521
    :cond_1f
    iget v0, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 522
    .line 523
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 524
    .line 525
    .line 526
    :cond_20
    if-eqz v3, :cond_22

    .line 527
    .line 528
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    check-cast v0, Landroid/graphics/PointF;

    .line 533
    .line 534
    if-eqz v0, :cond_22

    .line 535
    .line 536
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 537
    .line 538
    cmpl-float v3, v2, v9

    .line 539
    .line 540
    if-nez v3, :cond_21

    .line 541
    .line 542
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 543
    .line 544
    cmpl-float v3, v3, v9

    .line 545
    .line 546
    if-eqz v3, :cond_22

    .line 547
    .line 548
    :cond_21
    neg-float v2, v2

    .line 549
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 550
    .line 551
    neg-float v0, v0

    .line 552
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 553
    .line 554
    .line 555
    :cond_22
    return-object v1
.end method

.method public final getMatrixForRepeater(F)Landroid/graphics/Matrix;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move-object v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/graphics/PointF;

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move-object v2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/airbnb/lottie/value/ScaleXY;

    .line 25
    .line 26
    :goto_1
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;

    .line 27
    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/graphics/PointF;

    .line 36
    .line 37
    :goto_2
    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 40
    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 45
    .line 46
    mul-float/2addr v4, p1

    .line 47
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 48
    .line 49
    mul-float/2addr v1, p1

    .line 50
    invoke-virtual {v3, v4, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 51
    .line 52
    .line 53
    :cond_3
    const/4 v1, 0x0

    .line 54
    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationX:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 55
    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    mul-float/2addr v4, p1

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    move v4, v1

    .line 65
    :goto_3
    iget-object v5, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationY:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 66
    .line 67
    if-eqz v5, :cond_5

    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    mul-float/2addr v5, p1

    .line 74
    goto :goto_4

    .line 75
    :cond_5
    move v5, v1

    .line 76
    :goto_4
    iget-object v6, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotationZ:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 77
    .line 78
    if-eqz v6, :cond_6

    .line 79
    .line 80
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getFloatValue()F

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    mul-float/2addr v6, p1

    .line 85
    goto :goto_5

    .line 86
    :cond_6
    move v6, v1

    .line 87
    :goto_5
    cmpl-float v7, v4, v1

    .line 88
    .line 89
    if-nez v7, :cond_a

    .line 90
    .line 91
    cmpl-float v8, v5, v1

    .line 92
    .line 93
    if-nez v8, :cond_a

    .line 94
    .line 95
    cmpl-float v8, v6, v1

    .line 96
    .line 97
    if-eqz v8, :cond_7

    .line 98
    .line 99
    goto :goto_8

    .line 100
    :cond_7
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 101
    .line 102
    if-eqz p0, :cond_11

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Ljava/lang/Float;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    mul-float/2addr p0, p1

    .line 115
    if-nez v0, :cond_8

    .line 116
    .line 117
    move v4, v1

    .line 118
    goto :goto_6

    .line 119
    :cond_8
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 120
    .line 121
    :goto_6
    if-nez v0, :cond_9

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_9
    iget v1, v0, Landroid/graphics/PointF;->y:F

    .line 125
    .line 126
    :goto_7
    invoke-virtual {v3, p0, v4, v1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 127
    .line 128
    .line 129
    goto :goto_d

    .line 130
    :cond_a
    :goto_8
    const/high16 p0, 0x3f800000    # 1.0f

    .line 131
    .line 132
    if-eqz v7, :cond_b

    .line 133
    .line 134
    float-to-double v8, v4

    .line 135
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    .line 136
    .line 137
    .line 138
    move-result-wide v8

    .line 139
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 140
    .line 141
    .line 142
    move-result-wide v8

    .line 143
    double-to-float v4, v8

    .line 144
    goto :goto_9

    .line 145
    :cond_b
    move v4, p0

    .line 146
    :goto_9
    cmpl-float v8, v5, v1

    .line 147
    .line 148
    if-eqz v8, :cond_c

    .line 149
    .line 150
    float-to-double v9, v5

    .line 151
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v9

    .line 155
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 156
    .line 157
    .line 158
    move-result-wide v9

    .line 159
    double-to-float v5, v9

    .line 160
    goto :goto_a

    .line 161
    :cond_c
    move v5, p0

    .line 162
    :goto_a
    cmpl-float v9, v6, v1

    .line 163
    .line 164
    if-eqz v9, :cond_f

    .line 165
    .line 166
    if-nez v0, :cond_d

    .line 167
    .line 168
    move v9, v1

    .line 169
    goto :goto_b

    .line 170
    :cond_d
    iget v9, v0, Landroid/graphics/PointF;->x:F

    .line 171
    .line 172
    :goto_b
    if-nez v0, :cond_e

    .line 173
    .line 174
    goto :goto_c

    .line 175
    :cond_e
    iget v1, v0, Landroid/graphics/PointF;->y:F

    .line 176
    .line 177
    :goto_c
    invoke-virtual {v3, v6, v9, v1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 178
    .line 179
    .line 180
    :cond_f
    if-eqz v8, :cond_10

    .line 181
    .line 182
    invoke-virtual {v3, v5, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 183
    .line 184
    .line 185
    :cond_10
    if-eqz v7, :cond_11

    .line 186
    .line 187
    invoke-virtual {v3, p0, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 188
    .line 189
    .line 190
    :cond_11
    :goto_d
    if-eqz v2, :cond_12

    .line 191
    .line 192
    iget p0, v2, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 193
    .line 194
    float-to-double v0, p0

    .line 195
    float-to-double p0, p1

    .line 196
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 197
    .line 198
    .line 199
    move-result-wide v0

    .line 200
    double-to-float v0, v0

    .line 201
    iget v1, v2, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 202
    .line 203
    float-to-double v1, v1

    .line 204
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 205
    .line 206
    .line 207
    move-result-wide p0

    .line 208
    double-to-float p0, p0

    .line 209
    invoke-virtual {v3, v0, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 210
    .line 211
    .line 212
    :cond_12
    return-object v3
.end method
