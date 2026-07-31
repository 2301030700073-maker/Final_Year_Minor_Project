.class public final Landroidx/compose/animation/core/DecayAnimation;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/animation/core/Animation;


# instance fields
.field public final animationSpec:Lcoil3/ImageLoader$Builder;

.field public final durationNanos:J

.field public final endVelocity:Landroidx/compose/animation/core/AnimationVector;

.field public final initialValue:Ljava/lang/Object;

.field public final initialValueVector:Landroidx/compose/animation/core/AnimationVector;

.field public final initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

.field public final targetValue:Ljava/lang/Object;

.field public final typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 10

    .line 1
    new-instance v0, Lcoil3/ImageLoader$Builder;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->floatDecaySpec:Landroidx/appcompat/widget/PopupMenu$1;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-direct {v0, v1, p1}, Lcoil3/ImageLoader$Builder;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Lcoil3/ImageLoader$Builder;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 15
    .line 16
    iput-object p3, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValue:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object p1, p2, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 27
    .line 28
    invoke-static {p4}, Landroidx/compose/animation/core/ArcSplineKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    iput-object p3, p0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 33
    .line 34
    iget-object p2, p2, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p4}, Lcoil3/ImageLoader$Builder;->getTargetValue(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->targetValue:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object p2, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p2, Landroidx/compose/animation/core/AnimationVector;

    .line 49
    .line 50
    if-nez p2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core()Landroidx/compose/animation/core/AnimationVector;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 57
    .line 58
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    const/4 p3, 0x0

    .line 63
    const-wide/16 v1, 0x0

    .line 64
    .line 65
    move v3, p3

    .line 66
    :goto_0
    if-ge v3, p2, :cond_1

    .line 67
    .line 68
    iget-object v4, v0, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v4, Landroidx/appcompat/widget/PopupMenu$1;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core(I)F

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    iget-object v4, v4, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v4, Landroidx/compose/animation/FlingCalculator;

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    sget v6, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    .line 88
    .line 89
    float-to-double v6, v6

    .line 90
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 91
    .line 92
    sub-double/2addr v6, v8

    .line 93
    div-double/2addr v4, v6

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    mul-double/2addr v4, v6

    .line 104
    double-to-long v4, v4

    .line 105
    const-wide/32 v6, 0xf4240

    .line 106
    .line 107
    .line 108
    mul-long/2addr v4, v6

    .line 109
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 110
    .line 111
    .line 112
    move-result-wide v1

    .line 113
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    iput-wide v1, p0, Landroidx/compose/animation/core/DecayAnimation;->durationNanos:J

    .line 117
    .line 118
    iget-object p1, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Lcoil3/ImageLoader$Builder;

    .line 119
    .line 120
    iget-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 121
    .line 122
    invoke-virtual {p1, v1, v2, p2, p4}, Lcoil3/ImageLoader$Builder;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1}, Landroidx/compose/animation/core/ArcSplineKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Landroidx/compose/animation/core/DecayAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    :goto_1
    if-ge p3, p1, :cond_2

    .line 137
    .line 138
    iget-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core(I)F

    .line 141
    .line 142
    .line 143
    move-result p4

    .line 144
    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Lcoil3/ImageLoader$Builder;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Lcoil3/ImageLoader$Builder;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const/4 v0, 0x0

    .line 155
    const/high16 v1, -0x80000000

    .line 156
    .line 157
    invoke-static {p4, v1, v0}, Lkotlin/text/RegexKt;->coerceIn(FFF)F

    .line 158
    .line 159
    .line 160
    move-result p4

    .line 161
    invoke-virtual {p2, p3, p4}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core(IF)V

    .line 162
    .line 163
    .line 164
    add-int/lit8 p3, p3, 0x1

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_2
    return-void
.end method


# virtual methods
.method public final getDurationNanos()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/animation/core/DecayAnimation;->durationNanos:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTargetValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->targetValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTypeConverter()Landroidx/compose/animation/core/TwoWayConverterImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getValueFromNanos(J)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p0 .. p2}, Landroidx/compose/animation/core/Animation$-CC;->$default$isFinishedFromNanos(Landroidx/compose/animation/core/Animation;J)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_5

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/compose/animation/core/DecayAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Lcoil3/ImageLoader$Builder;

    .line 14
    .line 15
    iget-object v3, v2, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Landroidx/compose/animation/core/AnimationVector;

    .line 18
    .line 19
    iget-object v4, v0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v4}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core()Landroidx/compose/animation/core/AnimationVector;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, v2, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 28
    .line 29
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v5, 0x0

    .line 34
    :goto_0
    iget-object v6, v2, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v6, Landroidx/compose/animation/core/AnimationVector;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    const-string/jumbo v8, "valueVector"

    .line 40
    .line 41
    .line 42
    if-ge v5, v3, :cond_3

    .line 43
    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    iget-object v7, v2, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v7, Landroidx/appcompat/widget/PopupMenu$1;

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core(I)F

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    iget-object v9, v0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 55
    .line 56
    invoke-virtual {v9, v5}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core(I)F

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    const-wide/32 v10, 0xf4240

    .line 61
    .line 62
    .line 63
    div-long v10, p1, v10

    .line 64
    .line 65
    iget-object v7, v7, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v7, Landroidx/compose/animation/FlingCalculator;

    .line 68
    .line 69
    invoke-virtual {v7, v9}, Landroidx/compose/animation/FlingCalculator;->flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    iget-wide v12, v7, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    .line 74
    .line 75
    const-wide/16 v14, 0x0

    .line 76
    .line 77
    cmp-long v9, v12, v14

    .line 78
    .line 79
    if-lez v9, :cond_1

    .line 80
    .line 81
    long-to-float v9, v10

    .line 82
    long-to-float v10, v12

    .line 83
    div-float/2addr v9, v10

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const/high16 v9, 0x3f800000    # 1.0f

    .line 86
    .line 87
    :goto_1
    iget v10, v7, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    .line 88
    .line 89
    iget v7, v7, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 90
    .line 91
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    mul-float/2addr v7, v10

    .line 96
    invoke-static {v9}, Landroidx/compose/animation/AndroidFlingSpline;->flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    iget v9, v9, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->distanceCoefficient:F

    .line 101
    .line 102
    mul-float/2addr v7, v9

    .line 103
    add-float/2addr v7, v8

    .line 104
    invoke-virtual {v6, v5, v7}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core(IF)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v7

    .line 114
    :cond_3
    if-eqz v6, :cond_4

    .line 115
    .line 116
    invoke-interface {v1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0

    .line 121
    :cond_4
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v7

    .line 125
    :cond_5
    iget-object v0, v0, Landroidx/compose/animation/core/DecayAnimation;->targetValue:Ljava/lang/Object;

    .line 126
    .line 127
    return-object v0
.end method

.method public final getVelocityVectorFromNanos(J)Landroidx/compose/animation/core/AnimationVector;
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/Animation$-CC;->$default$isFinishedFromNanos(Landroidx/compose/animation/core/Animation;J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Lcoil3/ImageLoader$Builder;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, v0, v1}, Lcoil3/ImageLoader$Builder;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    .line 19
    .line 20
    return-object p0
.end method

.method public final synthetic isFinishedFromNanos(J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/Animation$-CC;->$default$isFinishedFromNanos(Landroidx/compose/animation/core/Animation;J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isInfinite()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
