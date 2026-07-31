.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final mEndListeners:Ljava/util/ArrayList;

.field public mLastFrameTime:J

.field public mMaxValue:F

.field public mMinValue:F

.field public mMinVisibleChange:F

.field public mPendingPosition:F

.field public final mProperty:Lcoil3/memory/MemoryCacheService;

.field public mRunning:Z

.field public mSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field public mStartValueIsSet:Z

.field public final mUpdateListeners:Ljava/util/ArrayList;

.field public mValue:F

.field public mVelocity:F


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    .line 6
    .line 7
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    .line 9
    .line 10
    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    .line 14
    .line 15
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    .line 16
    .line 17
    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    .line 18
    .line 19
    const v1, -0x800001

    .line 20
    .line 21
    .line 22
    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    iput-wide v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance v1, Lcoil3/memory/MemoryCacheService;

    .line 43
    .line 44
    invoke-direct {v1, p1}, Lcoil3/memory/MemoryCacheService;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mProperty:Lcoil3/memory/MemoryCacheService;

    .line 48
    .line 49
    const/high16 p1, 0x3f800000    # 1.0f

    .line 50
    .line 51
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 55
    .line 56
    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final animateToFinalPosition(F)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 20
    .line 21
    float-to-double v1, p1

    .line 22
    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 23
    .line 24
    double-to-float p1, v1

    .line 25
    float-to-double v1, p1

    .line 26
    iget p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    .line 27
    .line 28
    float-to-double v3, p1

    .line 29
    cmpl-double p1, v1, v3

    .line 30
    .line 31
    if-gtz p1, :cond_a

    .line 32
    .line 33
    iget p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    .line 34
    .line 35
    float-to-double v3, p1

    .line 36
    cmpg-double p1, v1, v3

    .line 37
    .line 38
    if-ltz p1, :cond_9

    .line 39
    .line 40
    iget p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    .line 41
    .line 42
    const/high16 v1, 0x3f400000    # 0.75f

    .line 43
    .line 44
    mul-float/2addr p1, v1

    .line 45
    float-to-double v1, p1

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 51
    .line 52
    const-wide v3, 0x404f400000000000L    # 62.5

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    mul-double/2addr v1, v3

    .line 58
    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 59
    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-ne p1, v0, :cond_8

    .line 69
    .line 70
    iget-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    .line 71
    .line 72
    if-nez p1, :cond_7

    .line 73
    .line 74
    if-nez p1, :cond_7

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    .line 78
    .line 79
    iget-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    .line 80
    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mProperty:Lcoil3/memory/MemoryCacheService;

    .line 84
    .line 85
    iget-object p1, p1, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 88
    .line 89
    iget p1, p1, Landroidx/dynamicanimation/animation/FloatValueHolder;->mValue:F

    .line 90
    .line 91
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 92
    .line 93
    :cond_2
    iget p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 94
    .line 95
    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMaxValue:F

    .line 96
    .line 97
    cmpl-float v0, p1, v0

    .line 98
    .line 99
    if-gtz v0, :cond_6

    .line 100
    .line 101
    iget v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinValue:F

    .line 102
    .line 103
    cmpg-float p1, p1, v0

    .line 104
    .line 105
    if-ltz p1, :cond_6

    .line 106
    .line 107
    sget-object p1, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-nez v0, :cond_3

    .line 114
    .line 115
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 116
    .line 117
    invoke-direct {v0}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 128
    .line 129
    iget-object v0, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_5

    .line 136
    .line 137
    iget-object v1, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lorg/acra/util/ProcessFinisher;

    .line 138
    .line 139
    if-nez v1, :cond_4

    .line 140
    .line 141
    new-instance v1, Lorg/acra/util/ProcessFinisher;

    .line 142
    .line 143
    iget-object v2, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lcoil3/memory/MemoryCacheService;

    .line 144
    .line 145
    invoke-direct {v1, v2}, Lorg/acra/util/ProcessFinisher;-><init>(Lcoil3/memory/MemoryCacheService;)V

    .line 146
    .line 147
    .line 148
    iput-object v1, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lorg/acra/util/ProcessFinisher;

    .line 149
    .line 150
    :cond_4
    iget-object p1, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lorg/acra/util/ProcessFinisher;

    .line 151
    .line 152
    iget-object v1, p1, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v1, Landroid/view/Choreographer;

    .line 155
    .line 156
    iget-object p1, p1, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p1, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;

    .line 159
    .line 160
    invoke-virtual {v1, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_7

    .line 168
    .line 169
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_6
    const-string p0, "Starting value need to be in between min value and max value"

    .line 174
    .line 175
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_7
    return-void

    .line 179
    :cond_8
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 180
    .line 181
    const-string p1, "Animations may only be started on the main thread"

    .line 182
    .line 183
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p0

    .line 187
    :cond_9
    const-string p0, "Final position of the spring cannot be less than the min value."

    .line 188
    .line 189
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_a
    const-string p0, "Final position of the spring cannot be greater than the max value."

    .line 194
    .line 195
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public final setPropertyValue(F)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mProperty:Lcoil3/memory/MemoryCacheService;

    .line 2
    .line 3
    iget-object v0, v0, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 6
    .line 7
    iput p1, v0, Landroidx/dynamicanimation/animation/FloatValueHolder;->mValue:F

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge p1, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroidx/transition/Transition$SeekController;

    .line 29
    .line 30
    iget v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    .line 31
    .line 32
    iget-object v2, v0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/TransitionSet;

    .line 33
    .line 34
    iget-wide v3, v2, Landroidx/transition/Transition;->mTotalDuration:J

    .line 35
    .line 36
    const-wide/16 v5, 0x1

    .line 37
    .line 38
    add-long/2addr v3, v5

    .line 39
    float-to-double v5, v1

    .line 40
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    const-wide/16 v5, -0x1

    .line 49
    .line 50
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    iget-wide v5, v0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    .line 55
    .line 56
    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/transition/TransitionSet;->setCurrentPlayTimeMillis(JJ)V

    .line 57
    .line 58
    .line 59
    iput-wide v3, v0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    .line 60
    .line 61
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    add-int/lit8 p0, p0, -0x1

    .line 69
    .line 70
    :goto_1
    if-ltz p0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_2
    add-int/lit8 p0, p0, -0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    return-void
.end method
