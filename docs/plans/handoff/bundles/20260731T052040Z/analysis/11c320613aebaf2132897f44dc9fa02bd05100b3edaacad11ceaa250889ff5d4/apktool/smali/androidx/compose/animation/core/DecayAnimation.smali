.class public final Landroidx/compose/animation/core/DecayAnimation;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/animation/core/Animation;


# instance fields
.field public final animationSpec:Lokhttp3/Dispatcher;

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
    new-instance v0, Lokhttp3/Dispatcher;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->floatDecaySpec:Landroidx/appcompat/widget/PopupMenu$1;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-direct {v0, p1, v1}, Lokhttp3/Dispatcher;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Lokhttp3/Dispatcher;

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
    invoke-virtual {v0, p1, p4}, Lokhttp3/Dispatcher;->getTargetValue(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

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
    iget-object p2, v0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

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
    iput-object p2, v0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 57
    .line 58
    :cond_0
    iget-object p2, v0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p2, Landroidx/compose/animation/core/AnimationVector;

    .line 61
    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    invoke-virtual {p2}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    const/4 p3, 0x0

    .line 69
    const-wide/16 v1, 0x0

    .line 70
    .line 71
    move v3, p3

    .line 72
    :goto_0
    if-ge v3, p2, :cond_1

    .line 73
    .line 74
    iget-object v4, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v4, Landroidx/appcompat/widget/PopupMenu$1;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p4, v3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core(I)F

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    iget-object v4, v4, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v4, Landroidx/compose/animation/FlingCalculator;

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    sget v6, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    .line 94
    .line 95
    float-to-double v6, v6

    .line 96
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 97
    .line 98
    sub-double/2addr v6, v8

    .line 99
    div-double/2addr v4, v6

    .line 100
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    mul-double/2addr v4, v6

    .line 110
    double-to-long v4, v4

    .line 111
    const-wide/32 v6, 0xf4240

    .line 112
    .line 113
    .line 114
    mul-long/2addr v4, v6

    .line 115
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 116
    .line 117
    .line 118
    move-result-wide v1

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    iput-wide v1, p0, Landroidx/compose/animation/core/DecayAnimation;->durationNanos:J

    .line 123
    .line 124
    iget-object p1, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Lokhttp3/Dispatcher;

    .line 125
    .line 126
    iget-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 127
    .line 128
    invoke-virtual {p1, v1, v2, p2, p4}, Lokhttp3/Dispatcher;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1}, Landroidx/compose/animation/core/ArcSplineKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Landroidx/compose/animation/core/DecayAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    :goto_1
    if-ge p3, p1, :cond_2

    .line 143
    .line 144
    iget-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->endVelocity:Landroidx/compose/animation/core/AnimationVector;

    .line 145
    .line 146
    invoke-virtual {p2, p3}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core(I)F

    .line 147
    .line 148
    .line 149
    move-result p4

    .line 150
    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Lokhttp3/Dispatcher;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Lokhttp3/Dispatcher;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const/4 v0, 0x0

    .line 161
    const/high16 v1, -0x80000000

    .line 162
    .line 163
    invoke-static {p4, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 164
    .line 165
    .line 166
    move-result p4

    .line 167
    invoke-virtual {p2, p4, p3}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core(FI)V

    .line 168
    .line 169
    .line 170
    add-int/lit8 p3, p3, 0x1

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_2
    return-void

    .line 174
    :cond_3
    const-string/jumbo p0, "velocityVector"

    .line 175
    .line 176
    .line 177
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const/4 p0, 0x0

    .line 181
    throw p0
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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p0 .. p2}, Landroidx/compose/ui/Modifier$-CC;->$default$isFinishedFromNanos(Landroidx/compose/animation/core/Animation;J)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_6

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/compose/animation/core/DecayAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Lokhttp3/Dispatcher;

    .line 14
    .line 15
    iget-object v3, v2, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

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
    iput-object v3, v2, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 28
    .line 29
    :cond_0
    iget-object v3, v2, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Landroidx/compose/animation/core/AnimationVector;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const-string/jumbo v6, "valueVector"

    .line 35
    .line 36
    .line 37
    if-eqz v3, :cond_5

    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v7, 0x0

    .line 44
    :goto_0
    iget-object v8, v2, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v8, Landroidx/compose/animation/core/AnimationVector;

    .line 47
    .line 48
    if-ge v7, v3, :cond_3

    .line 49
    .line 50
    if-eqz v8, :cond_2

    .line 51
    .line 52
    iget-object v9, v2, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v9, Landroidx/appcompat/widget/PopupMenu$1;

    .line 55
    .line 56
    invoke-virtual {v4, v7}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core(I)F

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    iget-object v11, v0, Landroidx/compose/animation/core/DecayAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 61
    .line 62
    invoke-virtual {v11, v7}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core(I)F

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    const-wide/32 v12, 0xf4240

    .line 67
    .line 68
    .line 69
    div-long v12, p1, v12

    .line 70
    .line 71
    iget-object v9, v9, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v9, Landroidx/compose/animation/FlingCalculator;

    .line 74
    .line 75
    invoke-virtual {v9, v11}, Landroidx/compose/animation/FlingCalculator;->flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    iget-wide v14, v9, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    .line 80
    .line 81
    const-wide/16 v16, 0x0

    .line 82
    .line 83
    cmp-long v11, v14, v16

    .line 84
    .line 85
    if-lez v11, :cond_1

    .line 86
    .line 87
    long-to-float v11, v12

    .line 88
    long-to-float v12, v14

    .line 89
    div-float/2addr v11, v12

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const/high16 v11, 0x3f800000    # 1.0f

    .line 92
    .line 93
    :goto_1
    iget v12, v9, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    .line 94
    .line 95
    iget v9, v9, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 96
    .line 97
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    mul-float/2addr v9, v12

    .line 102
    invoke-static {v11}, Landroidx/compose/animation/AndroidFlingSpline;->flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    iget v11, v11, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->distanceCoefficient:F

    .line 107
    .line 108
    mul-float/2addr v9, v11

    .line 109
    add-float/2addr v9, v10

    .line 110
    invoke-virtual {v8, v9, v7}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core(FI)V

    .line 111
    .line 112
    .line 113
    add-int/lit8 v7, v7, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v5

    .line 120
    :cond_3
    if-eqz v8, :cond_4

    .line 121
    .line 122
    invoke-interface {v1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    return-object v0

    .line 127
    :cond_4
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v5

    .line 131
    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v5

    .line 135
    :cond_6
    iget-object v0, v0, Landroidx/compose/animation/core/DecayAnimation;->targetValue:Ljava/lang/Object;

    .line 136
    .line 137
    return-object v0
.end method

.method public final getVelocityVectorFromNanos(J)Landroidx/compose/animation/core/AnimationVector;
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/Modifier$-CC;->$default$isFinishedFromNanos(Landroidx/compose/animation/core/Animation;J)Z

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
    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->animationSpec:Lokhttp3/Dispatcher;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, v0, v1}, Lokhttp3/Dispatcher;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

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
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/Modifier$-CC;->$default$isFinishedFromNanos(Landroidx/compose/animation/core/Animation;J)Z

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
