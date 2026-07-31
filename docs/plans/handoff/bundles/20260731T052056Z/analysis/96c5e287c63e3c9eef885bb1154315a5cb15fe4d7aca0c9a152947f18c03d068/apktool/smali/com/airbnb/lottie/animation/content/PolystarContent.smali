.class public final Lcom/airbnb/lottie/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/Content;


# instance fields
.field public final hidden:Z

.field public final innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public isPathValid:Z

.field public final isReversed:Z

.field public final lastSegmentPath:Landroid/graphics/Path;

.field public final lastSegmentPathMeasure:Landroid/graphics/PathMeasure;

.field public final lastSegmentPosition:[F

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final path:Landroid/graphics/Path;

.field public final pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final trimPaths:Lokhttp3/Headers$Builder;

.field public final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V
    .locals 7

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
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPath:Landroid/graphics/Path;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPathMeasure:Landroid/graphics/PathMeasure;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    new-array v1, v0, [F

    .line 27
    .line 28
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPosition:[F

    .line 29
    .line 30
    new-instance v1, Lokhttp3/Headers$Builder;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v1, v0, v2}, Lokhttp3/Headers$Builder;-><init>(IB)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lokhttp3/Headers$Builder;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 39
    .line 40
    iget-object p1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 43
    .line 44
    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->hidden:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 47
    .line 48
    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->isReversed:Z

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isReversed:Z

    .line 51
    .line 52
    iget-object v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->points:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 59
    .line 60
    iget-object v1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 61
    .line 62
    invoke-interface {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 67
    .line 68
    iget-object v2, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iput-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 75
    .line 76
    iget-object v3, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 83
    .line 84
    iget-object v4, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iput-object v4, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 91
    .line 92
    sget-object v5, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 93
    .line 94
    if-ne p1, v5, :cond_0

    .line 95
    .line 96
    iget-object v6, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 97
    .line 98
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 103
    .line 104
    iget-object p3, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 105
    .line 106
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    const/4 v6, 0x0

    .line 114
    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 115
    .line 116
    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 117
    .line 118
    move-object p3, v6

    .line 119
    :goto_0
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 132
    .line 133
    .line 134
    if-ne p1, v5, :cond_1

    .line 135
    .line 136
    invoke-virtual {p2, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 140
    .line 141
    .line 142
    :cond_1
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 155
    .line 156
    .line 157
    if-ne p1, v5, :cond_2

    .line 158
    .line 159
    invoke-virtual {v6, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 163
    .line 164
    .line 165
    :cond_2
    return-void
.end method


# virtual methods
.method public final getPath()Landroid/graphics/Path;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 14
    .line 15
    const/4 v9, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput-boolean v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    sget-object v1, Lcom/airbnb/lottie/animation/content/PolystarContent$1;->$SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type:[I

    .line 22
    .line 23
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    aget v1, v1, v3

    .line 30
    .line 31
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 32
    .line 33
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 34
    .line 35
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 36
    .line 37
    const-wide v12, 0x4056800000000000L    # 90.0

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const-wide/16 v14, 0x0

    .line 43
    .line 44
    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 45
    .line 46
    const/high16 v16, 0x42c80000    # 100.0f

    .line 47
    .line 48
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 49
    .line 50
    const/16 v17, 0x0

    .line 51
    .line 52
    const-wide v18, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 58
    .line 59
    if-eq v1, v9, :cond_8

    .line 60
    .line 61
    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    const/4 v6, 0x2

    .line 67
    if-eq v1, v6, :cond_2

    .line 68
    .line 69
    move/from16 v24, v9

    .line 70
    .line 71
    goto/16 :goto_12

    .line 72
    .line 73
    :cond_2
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Float;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    float-to-double v6, v1

    .line 84
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 85
    .line 86
    .line 87
    move-result-wide v6

    .line 88
    double-to-int v1, v6

    .line 89
    if-nez v8, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Ljava/lang/Float;

    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    float-to-double v14, v4

    .line 103
    :goto_0
    sub-double/2addr v14, v12

    .line 104
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    int-to-double v12, v1

    .line 109
    div-double v14, v22, v12

    .line 110
    .line 111
    double-to-float v1, v14

    .line 112
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Ljava/lang/Float;

    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    div-float v14, v4, v16

    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Ljava/lang/Float;

    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    float-to-double v3, v15

    .line 135
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 136
    .line 137
    .line 138
    move-result-wide v22

    .line 139
    move/from16 v24, v9

    .line 140
    .line 141
    move-object/from16 v25, v10

    .line 142
    .line 143
    mul-double v9, v22, v3

    .line 144
    .line 145
    double-to-float v5, v9

    .line 146
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 147
    .line 148
    .line 149
    move-result-wide v8

    .line 150
    mul-double/2addr v8, v3

    .line 151
    double-to-float v8, v8

    .line 152
    invoke-virtual {v2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 153
    .line 154
    .line 155
    float-to-double v9, v1

    .line 156
    add-double/2addr v6, v9

    .line 157
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    .line 158
    .line 159
    .line 160
    move-result-wide v12

    .line 161
    move-wide/from16 v22, v6

    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    :goto_1
    int-to-double v6, v1

    .line 165
    cmpg-double v16, v6, v12

    .line 166
    .line 167
    if-gez v16, :cond_7

    .line 168
    .line 169
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    .line 170
    .line 171
    .line 172
    move-result-wide v26

    .line 173
    move-wide/from16 v29, v12

    .line 174
    .line 175
    mul-double v11, v26, v3

    .line 176
    .line 177
    double-to-float v11, v11

    .line 178
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    .line 179
    .line 180
    .line 181
    move-result-wide v12

    .line 182
    mul-double/2addr v12, v3

    .line 183
    double-to-float v12, v12

    .line 184
    cmpl-float v13, v14, v17

    .line 185
    .line 186
    if-eqz v13, :cond_5

    .line 187
    .line 188
    move v13, v1

    .line 189
    move-object/from16 v26, v2

    .line 190
    .line 191
    float-to-double v1, v8

    .line 192
    move-wide/from16 v38, v3

    .line 193
    .line 194
    float-to-double v3, v5

    .line 195
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 196
    .line 197
    .line 198
    move-result-wide v1

    .line 199
    sub-double v1, v1, v18

    .line 200
    .line 201
    double-to-float v1, v1

    .line 202
    float-to-double v1, v1

    .line 203
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 204
    .line 205
    .line 206
    move-result-wide v3

    .line 207
    double-to-float v3, v3

    .line 208
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 209
    .line 210
    .line 211
    move-result-wide v1

    .line 212
    double-to-float v1, v1

    .line 213
    move v4, v1

    .line 214
    float-to-double v1, v12

    .line 215
    move/from16 v16, v3

    .line 216
    .line 217
    move/from16 v27, v4

    .line 218
    .line 219
    float-to-double v3, v11

    .line 220
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 221
    .line 222
    .line 223
    move-result-wide v1

    .line 224
    sub-double v1, v1, v18

    .line 225
    .line 226
    double-to-float v1, v1

    .line 227
    float-to-double v1, v1

    .line 228
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 229
    .line 230
    .line 231
    move-result-wide v3

    .line 232
    double-to-float v3, v3

    .line 233
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 234
    .line 235
    .line 236
    move-result-wide v1

    .line 237
    double-to-float v1, v1

    .line 238
    mul-float v2, v15, v14

    .line 239
    .line 240
    const/high16 v4, 0x3e800000    # 0.25f

    .line 241
    .line 242
    mul-float/2addr v2, v4

    .line 243
    mul-float v4, v2, v16

    .line 244
    .line 245
    mul-float v16, v2, v27

    .line 246
    .line 247
    mul-float/2addr v3, v2

    .line 248
    mul-float/2addr v2, v1

    .line 249
    sub-double v31, v29, v20

    .line 250
    .line 251
    cmpl-double v1, v6, v31

    .line 252
    .line 253
    if-nez v1, :cond_4

    .line 254
    .line 255
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPath:Landroid/graphics/Path;

    .line 256
    .line 257
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 261
    .line 262
    .line 263
    sub-float v32, v5, v4

    .line 264
    .line 265
    sub-float v33, v8, v16

    .line 266
    .line 267
    add-float v34, v11, v3

    .line 268
    .line 269
    add-float v35, v12, v2

    .line 270
    .line 271
    move-object/from16 v31, v1

    .line 272
    .line 273
    move/from16 v36, v11

    .line 274
    .line 275
    move/from16 v37, v12

    .line 276
    .line 277
    invoke-virtual/range {v31 .. v37}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 278
    .line 279
    .line 280
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPathMeasure:Landroid/graphics/PathMeasure;

    .line 281
    .line 282
    const/4 v11, 0x0

    .line 283
    invoke-virtual {v2, v1, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    const v3, 0x3f7ff972    # 0.9999f

    .line 291
    .line 292
    .line 293
    mul-float/2addr v1, v3

    .line 294
    const/4 v3, 0x0

    .line 295
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPosition:[F

    .line 296
    .line 297
    invoke-virtual {v2, v1, v4, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 298
    .line 299
    .line 300
    aget v7, v4, v11

    .line 301
    .line 302
    aget v8, v4, v24

    .line 303
    .line 304
    move-object/from16 v2, v26

    .line 305
    .line 306
    move/from16 v3, v32

    .line 307
    .line 308
    move/from16 v4, v33

    .line 309
    .line 310
    move/from16 v5, v34

    .line 311
    .line 312
    move/from16 v6, v35

    .line 313
    .line 314
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 315
    .line 316
    .line 317
    move/from16 v5, v36

    .line 318
    .line 319
    move/from16 v8, v37

    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_4
    move/from16 v36, v11

    .line 323
    .line 324
    move/from16 v37, v12

    .line 325
    .line 326
    const/4 v11, 0x0

    .line 327
    sub-float/2addr v5, v4

    .line 328
    sub-float v4, v8, v16

    .line 329
    .line 330
    add-float v1, v36, v3

    .line 331
    .line 332
    add-float v6, v37, v2

    .line 333
    .line 334
    move v3, v5

    .line 335
    move-object/from16 v2, v26

    .line 336
    .line 337
    move/from16 v7, v36

    .line 338
    .line 339
    move/from16 v8, v37

    .line 340
    .line 341
    move v5, v1

    .line 342
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 343
    .line 344
    .line 345
    move v5, v7

    .line 346
    goto :goto_2

    .line 347
    :cond_5
    move v13, v1

    .line 348
    move-wide/from16 v38, v3

    .line 349
    .line 350
    move v5, v11

    .line 351
    move v8, v12

    .line 352
    const/4 v11, 0x0

    .line 353
    sub-double v3, v29, v20

    .line 354
    .line 355
    cmpl-double v1, v6, v3

    .line 356
    .line 357
    if-nez v1, :cond_6

    .line 358
    .line 359
    goto :goto_3

    .line 360
    :cond_6
    invoke-virtual {v2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 361
    .line 362
    .line 363
    :goto_2
    add-double v22, v22, v9

    .line 364
    .line 365
    :goto_3
    add-int/lit8 v1, v13, 0x1

    .line 366
    .line 367
    move-wide/from16 v12, v29

    .line 368
    .line 369
    move-wide/from16 v3, v38

    .line 370
    .line 371
    goto/16 :goto_1

    .line 372
    .line 373
    :cond_7
    invoke-virtual/range {v25 .. v25}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    check-cast v1, Landroid/graphics/PointF;

    .line 378
    .line 379
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 380
    .line 381
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 382
    .line 383
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_12

    .line 390
    .line 391
    :cond_8
    move/from16 v24, v9

    .line 392
    .line 393
    move-object/from16 v25, v10

    .line 394
    .line 395
    const/4 v11, 0x0

    .line 396
    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    check-cast v1, Ljava/lang/Float;

    .line 406
    .line 407
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-nez v8, :cond_9

    .line 412
    .line 413
    goto :goto_4

    .line 414
    :cond_9
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    check-cast v4, Ljava/lang/Float;

    .line 419
    .line 420
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    float-to-double v14, v4

    .line 425
    :goto_4
    sub-double/2addr v14, v12

    .line 426
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    .line 427
    .line 428
    .line 429
    move-result-wide v6

    .line 430
    float-to-double v8, v1

    .line 431
    div-double v12, v22, v8

    .line 432
    .line 433
    double-to-float v4, v12

    .line 434
    iget-boolean v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isReversed:Z

    .line 435
    .line 436
    if-eqz v10, :cond_a

    .line 437
    .line 438
    const/high16 v10, -0x40800000    # -1.0f

    .line 439
    .line 440
    mul-float/2addr v4, v10

    .line 441
    :cond_a
    move v10, v4

    .line 442
    const/high16 v12, 0x40000000    # 2.0f

    .line 443
    .line 444
    div-float v13, v10, v12

    .line 445
    .line 446
    float-to-int v4, v1

    .line 447
    int-to-float v4, v4

    .line 448
    sub-float/2addr v1, v4

    .line 449
    cmpl-float v14, v1, v17

    .line 450
    .line 451
    if-eqz v14, :cond_b

    .line 452
    .line 453
    const/high16 v4, 0x3f800000    # 1.0f

    .line 454
    .line 455
    sub-float/2addr v4, v1

    .line 456
    mul-float/2addr v4, v13

    .line 457
    move v15, v12

    .line 458
    float-to-double v11, v4

    .line 459
    add-double/2addr v6, v11

    .line 460
    goto :goto_5

    .line 461
    :cond_b
    move v15, v12

    .line 462
    :goto_5
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    check-cast v3, Ljava/lang/Float;

    .line 467
    .line 468
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 469
    .line 470
    .line 471
    move-result v11

    .line 472
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 473
    .line 474
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    check-cast v3, Ljava/lang/Float;

    .line 479
    .line 480
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 481
    .line 482
    .line 483
    move-result v12

    .line 484
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 485
    .line 486
    if-eqz v3, :cond_c

    .line 487
    .line 488
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    check-cast v3, Ljava/lang/Float;

    .line 493
    .line 494
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    div-float v3, v3, v16

    .line 499
    .line 500
    move/from16 v22, v3

    .line 501
    .line 502
    goto :goto_6

    .line 503
    :cond_c
    move/from16 v22, v17

    .line 504
    .line 505
    :goto_6
    if-eqz v5, :cond_d

    .line 506
    .line 507
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    check-cast v3, Ljava/lang/Float;

    .line 512
    .line 513
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    div-float v3, v3, v16

    .line 518
    .line 519
    move/from16 v16, v3

    .line 520
    .line 521
    goto :goto_7

    .line 522
    :cond_d
    move/from16 v16, v17

    .line 523
    .line 524
    :goto_7
    if-eqz v14, :cond_e

    .line 525
    .line 526
    invoke-static {v11, v12, v1, v12}, Landroidx/compose/animation/core/Animation$-CC;->m(FFFF)F

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    float-to-double v4, v3

    .line 531
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 532
    .line 533
    .line 534
    move-result-wide v26

    .line 535
    move/from16 v23, v3

    .line 536
    .line 537
    move-wide/from16 v29, v4

    .line 538
    .line 539
    mul-double v3, v26, v29

    .line 540
    .line 541
    double-to-float v3, v3

    .line 542
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 543
    .line 544
    .line 545
    move-result-wide v4

    .line 546
    mul-double v4, v4, v29

    .line 547
    .line 548
    double-to-float v4, v4

    .line 549
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 550
    .line 551
    .line 552
    mul-float v5, v10, v1

    .line 553
    .line 554
    div-float/2addr v5, v15

    .line 555
    move/from16 v26, v3

    .line 556
    .line 557
    move/from16 v27, v4

    .line 558
    .line 559
    float-to-double v3, v5

    .line 560
    add-double/2addr v6, v3

    .line 561
    move/from16 v3, v26

    .line 562
    .line 563
    move/from16 v4, v27

    .line 564
    .line 565
    goto :goto_8

    .line 566
    :cond_e
    float-to-double v3, v11

    .line 567
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 568
    .line 569
    .line 570
    move-result-wide v26

    .line 571
    move-wide/from16 v29, v3

    .line 572
    .line 573
    mul-double v3, v26, v29

    .line 574
    .line 575
    double-to-float v3, v3

    .line 576
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 577
    .line 578
    .line 579
    move-result-wide v4

    .line 580
    mul-double v4, v4, v29

    .line 581
    .line 582
    double-to-float v4, v4

    .line 583
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 584
    .line 585
    .line 586
    move v5, v3

    .line 587
    move/from16 v23, v4

    .line 588
    .line 589
    float-to-double v3, v13

    .line 590
    add-double/2addr v6, v3

    .line 591
    move v3, v5

    .line 592
    move/from16 v4, v23

    .line 593
    .line 594
    move/from16 v23, v17

    .line 595
    .line 596
    :goto_8
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 597
    .line 598
    .line 599
    move-result-wide v8

    .line 600
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    .line 601
    .line 602
    mul-double v29, v8, v26

    .line 603
    .line 604
    move-wide/from16 v31, v6

    .line 605
    .line 606
    const/4 v9, 0x0

    .line 607
    const/16 v28, 0x0

    .line 608
    .line 609
    :goto_9
    int-to-double v5, v9

    .line 610
    cmpg-double v7, v5, v29

    .line 611
    .line 612
    if-gez v7, :cond_19

    .line 613
    .line 614
    if-eqz v28, :cond_f

    .line 615
    .line 616
    move v7, v11

    .line 617
    goto :goto_a

    .line 618
    :cond_f
    move v7, v12

    .line 619
    :goto_a
    cmpl-float v8, v23, v17

    .line 620
    .line 621
    if-eqz v8, :cond_10

    .line 622
    .line 623
    sub-double v33, v29, v26

    .line 624
    .line 625
    cmpl-double v33, v5, v33

    .line 626
    .line 627
    if-nez v33, :cond_10

    .line 628
    .line 629
    mul-float v33, v10, v1

    .line 630
    .line 631
    div-float v33, v33, v15

    .line 632
    .line 633
    move/from16 v15, v33

    .line 634
    .line 635
    goto :goto_b

    .line 636
    :cond_10
    move v15, v13

    .line 637
    :goto_b
    if-eqz v8, :cond_11

    .line 638
    .line 639
    sub-double v34, v29, v20

    .line 640
    .line 641
    cmpl-double v8, v5, v34

    .line 642
    .line 643
    if-nez v8, :cond_11

    .line 644
    .line 645
    move/from16 v7, v23

    .line 646
    .line 647
    :cond_11
    float-to-double v7, v7

    .line 648
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    .line 649
    .line 650
    .line 651
    move-result-wide v34

    .line 652
    move-wide/from16 v36, v5

    .line 653
    .line 654
    mul-double v5, v34, v7

    .line 655
    .line 656
    double-to-float v5, v5

    .line 657
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    .line 658
    .line 659
    .line 660
    move-result-wide v34

    .line 661
    mul-double v6, v34, v7

    .line 662
    .line 663
    double-to-float v8, v6

    .line 664
    cmpl-float v6, v22, v17

    .line 665
    .line 666
    if-nez v6, :cond_12

    .line 667
    .line 668
    cmpl-float v6, v16, v17

    .line 669
    .line 670
    if-nez v6, :cond_12

    .line 671
    .line 672
    invoke-virtual {v2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 673
    .line 674
    .line 675
    move/from16 v35, v1

    .line 676
    .line 677
    move v7, v5

    .line 678
    goto/16 :goto_11

    .line 679
    .line 680
    :cond_12
    float-to-double v6, v4

    .line 681
    move/from16 v35, v1

    .line 682
    .line 683
    move-object/from16 v34, v2

    .line 684
    .line 685
    float-to-double v1, v3

    .line 686
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    .line 687
    .line 688
    .line 689
    move-result-wide v1

    .line 690
    sub-double v1, v1, v18

    .line 691
    .line 692
    double-to-float v1, v1

    .line 693
    float-to-double v1, v1

    .line 694
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 695
    .line 696
    .line 697
    move-result-wide v6

    .line 698
    double-to-float v6, v6

    .line 699
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 700
    .line 701
    .line 702
    move-result-wide v1

    .line 703
    double-to-float v1, v1

    .line 704
    move v7, v1

    .line 705
    float-to-double v1, v8

    .line 706
    move/from16 v38, v3

    .line 707
    .line 708
    move/from16 v39, v4

    .line 709
    .line 710
    float-to-double v3, v5

    .line 711
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 712
    .line 713
    .line 714
    move-result-wide v1

    .line 715
    sub-double v1, v1, v18

    .line 716
    .line 717
    double-to-float v1, v1

    .line 718
    float-to-double v1, v1

    .line 719
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 720
    .line 721
    .line 722
    move-result-wide v3

    .line 723
    double-to-float v3, v3

    .line 724
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 725
    .line 726
    .line 727
    move-result-wide v1

    .line 728
    double-to-float v1, v1

    .line 729
    if-eqz v28, :cond_13

    .line 730
    .line 731
    move/from16 v2, v22

    .line 732
    .line 733
    goto :goto_c

    .line 734
    :cond_13
    move/from16 v2, v16

    .line 735
    .line 736
    :goto_c
    if-eqz v28, :cond_14

    .line 737
    .line 738
    move/from16 v4, v16

    .line 739
    .line 740
    goto :goto_d

    .line 741
    :cond_14
    move/from16 v4, v22

    .line 742
    .line 743
    :goto_d
    if-eqz v28, :cond_15

    .line 744
    .line 745
    move/from16 v40, v12

    .line 746
    .line 747
    goto :goto_e

    .line 748
    :cond_15
    move/from16 v40, v11

    .line 749
    .line 750
    :goto_e
    if-eqz v28, :cond_16

    .line 751
    .line 752
    move/from16 v41, v11

    .line 753
    .line 754
    goto :goto_f

    .line 755
    :cond_16
    move/from16 v41, v12

    .line 756
    .line 757
    :goto_f
    mul-float v40, v40, v2

    .line 758
    .line 759
    const v2, 0x3ef4e26d    # 0.47829f

    .line 760
    .line 761
    .line 762
    mul-float v40, v40, v2

    .line 763
    .line 764
    mul-float v6, v6, v40

    .line 765
    .line 766
    mul-float v40, v40, v7

    .line 767
    .line 768
    mul-float v41, v41, v4

    .line 769
    .line 770
    mul-float v41, v41, v2

    .line 771
    .line 772
    mul-float v3, v3, v41

    .line 773
    .line 774
    mul-float v41, v41, v1

    .line 775
    .line 776
    if-eqz v14, :cond_18

    .line 777
    .line 778
    if-nez v9, :cond_17

    .line 779
    .line 780
    mul-float v6, v6, v35

    .line 781
    .line 782
    mul-float v40, v40, v35

    .line 783
    .line 784
    goto :goto_10

    .line 785
    :cond_17
    sub-double v1, v29, v20

    .line 786
    .line 787
    cmpl-double v1, v36, v1

    .line 788
    .line 789
    if-nez v1, :cond_18

    .line 790
    .line 791
    mul-float v3, v3, v35

    .line 792
    .line 793
    mul-float v41, v41, v35

    .line 794
    .line 795
    :cond_18
    :goto_10
    sub-float v1, v38, v6

    .line 796
    .line 797
    sub-float v4, v39, v40

    .line 798
    .line 799
    add-float/2addr v3, v5

    .line 800
    add-float v6, v8, v41

    .line 801
    .line 802
    move v7, v5

    .line 803
    move-object/from16 v2, v34

    .line 804
    .line 805
    move v5, v3

    .line 806
    move v3, v1

    .line 807
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 808
    .line 809
    .line 810
    :goto_11
    float-to-double v3, v15

    .line 811
    add-double v31, v31, v3

    .line 812
    .line 813
    xor-int/lit8 v28, v28, 0x1

    .line 814
    .line 815
    add-int/lit8 v9, v9, 0x1

    .line 816
    .line 817
    move v3, v7

    .line 818
    move v4, v8

    .line 819
    move/from16 v1, v35

    .line 820
    .line 821
    const/high16 v15, 0x40000000    # 2.0f

    .line 822
    .line 823
    goto/16 :goto_9

    .line 824
    .line 825
    :cond_19
    invoke-virtual/range {v25 .. v25}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    check-cast v1, Landroid/graphics/PointF;

    .line 830
    .line 831
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 832
    .line 833
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 834
    .line 835
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 839
    .line 840
    .line 841
    :goto_12
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 842
    .line 843
    .line 844
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lokhttp3/Headers$Builder;

    .line 845
    .line 846
    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->apply(Landroid/graphics/Path;)V

    .line 847
    .line 848
    .line 849
    move/from16 v1, v24

    .line 850
    .line 851
    iput-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 852
    .line 853
    return-object v2
.end method

.method public final onValueChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    :goto_0
    move-object v0, p1

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p2, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 16
    .line 17
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 24
    .line 25
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lokhttp3/Headers$Builder;

    .line 30
    .line 31
    iget-object v1, v1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method
