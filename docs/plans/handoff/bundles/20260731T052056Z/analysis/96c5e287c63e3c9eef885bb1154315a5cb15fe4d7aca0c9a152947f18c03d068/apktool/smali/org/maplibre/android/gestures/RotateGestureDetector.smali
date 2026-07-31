.class public final Lorg/maplibre/android/gestures/RotateGestureDetector;
.super Lorg/maplibre/android/gestures/ProgressiveGesture;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final handledTypes:Ljava/util/HashSet;


# instance fields
.field public angleThreshold:F

.field public deltaSinceLast:F

.field public deltaSinceStart:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/maplibre/android/gestures/RotateGestureDetector;->handledTypes:Ljava/util/HashSet;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final analyzeMovement()Z
    .locals 12

    .line 1
    new-instance v0, Lorg/maplibre/android/gestures/PointerDistancePair;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    check-cast v3, Ljava/lang/Integer;

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointersDistanceMap:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;

    .line 29
    .line 30
    iget v1, v0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->prevFingersDiffY:F

    .line 31
    .line 32
    float-to-double v5, v1

    .line 33
    iget v1, v0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->prevFingersDiffX:F

    .line 34
    .line 35
    float-to-double v7, v1

    .line 36
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    iget v1, v0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->currFingersDiffY:F

    .line 41
    .line 42
    float-to-double v7, v1

    .line 43
    iget v0, v0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->currFingersDiffX:F

    .line 44
    .line 45
    float-to-double v0, v0

    .line 46
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    sub-double/2addr v5, v0

    .line 51
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    double-to-float v0, v0

    .line 56
    iput v0, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceLast:F

    .line 57
    .line 58
    iget v1, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceStart:F

    .line 59
    .line 60
    add-float/2addr v1, v0

    .line 61
    iput v1, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceStart:F

    .line 62
    .line 63
    iget-boolean v1, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    cmpl-float v1, v0, v1

    .line 69
    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    iget-object v1, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;

    .line 75
    .line 76
    invoke-virtual {v1, p0, v0}, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->onRotate(Lorg/maplibre/android/gestures/RotateGestureDetector;F)V

    .line 77
    .line 78
    .line 79
    return v4

    .line 80
    :cond_0
    const/4 v0, 0x2

    .line 81
    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/RotateGestureDetector;->canExecute(I)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_a

    .line 86
    .line 87
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;

    .line 90
    .line 91
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 92
    .line 93
    iget-object v3, v1, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 94
    .line 95
    iget-boolean v5, v3, Lorg/maplibre/android/maps/UiSettings;->rotateGesturesEnabled:Z

    .line 96
    .line 97
    if-nez v5, :cond_1

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_1
    iget v5, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceLast:F

    .line 102
    .line 103
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    iget-object v6, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 108
    .line 109
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getEventTime()J

    .line 110
    .line 111
    .line 112
    move-result-wide v6

    .line 113
    long-to-double v6, v6

    .line 114
    iget-object v8, p0, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    .line 115
    .line 116
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getEventTime()J

    .line 117
    .line 118
    .line 119
    move-result-wide v8

    .line 120
    long-to-double v8, v8

    .line 121
    cmpl-double v10, v6, v8

    .line 122
    .line 123
    if-nez v10, :cond_2

    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_2
    float-to-double v10, v5

    .line 128
    sub-double/2addr v6, v8

    .line 129
    div-double/2addr v10, v6

    .line 130
    iget v5, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceStart:F

    .line 131
    .line 132
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    const-wide v6, 0x3fa47ae147ae147bL    # 0.04

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    cmpg-double v6, v10, v6

    .line 142
    .line 143
    if-ltz v6, :cond_a

    .line 144
    .line 145
    const-wide v6, 0x3fb1eb851eb851ecL    # 0.07

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    cmpl-double v6, v10, v6

    .line 151
    .line 152
    if-lez v6, :cond_3

    .line 153
    .line 154
    const/high16 v6, 0x40a00000    # 5.0f

    .line 155
    .line 156
    cmpg-float v6, v5, v6

    .line 157
    .line 158
    if-ltz v6, :cond_a

    .line 159
    .line 160
    :cond_3
    const-wide v6, 0x3fc3333333333333L    # 0.15

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    cmpl-double v6, v10, v6

    .line 166
    .line 167
    if-lez v6, :cond_4

    .line 168
    .line 169
    const/high16 v6, 0x40e00000    # 7.0f

    .line 170
    .line 171
    cmpg-float v6, v5, v6

    .line 172
    .line 173
    if-ltz v6, :cond_a

    .line 174
    .line 175
    :cond_4
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 176
    .line 177
    cmpl-double v6, v10, v6

    .line 178
    .line 179
    if-lez v6, :cond_5

    .line 180
    .line 181
    const/high16 v6, 0x41700000    # 15.0f

    .line 182
    .line 183
    cmpg-float v5, v5, v6

    .line 184
    .line 185
    if-gez v5, :cond_5

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_5
    iget-boolean v2, v3, Lorg/maplibre/android/maps/UiSettings;->increaseScaleThresholdWhenRotating:Z

    .line 189
    .line 190
    if-eqz v2, :cond_6

    .line 191
    .line 192
    iget-object v2, v1, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 193
    .line 194
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v2, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    .line 197
    .line 198
    iget v0, v0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->minimumScaleSpanWhenRotating:F

    .line 199
    .line 200
    iput v0, v2, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->spanSinceStartThreshold:F

    .line 201
    .line 202
    iget-boolean v0, v2, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 203
    .line 204
    if-eqz v0, :cond_6

    .line 205
    .line 206
    iput-boolean v4, v2, Lorg/maplibre/android/gestures/ProgressiveGesture;->interrupted:Z

    .line 207
    .line 208
    :cond_6
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapGestureDetector;->noGesturesInProgress()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_7

    .line 213
    .line 214
    iget-object v0, v1, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 215
    .line 216
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 217
    .line 218
    .line 219
    :cond_7
    iget-object v0, v1, Lorg/maplibre/android/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    :cond_8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_9

    .line 230
    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Lorg/maplibre/android/location/LocationCameraController$7;

    .line 236
    .line 237
    iget-object v1, v1, Lorg/maplibre/android/location/LocationCameraController$7;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    .line 238
    .line 239
    invoke-virtual {v1}, Lorg/maplibre/android/location/LocationCameraController;->isBearingTracking()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_8

    .line 244
    .line 245
    const/16 v2, 0x8

    .line 246
    .line 247
    const/4 v3, 0x0

    .line 248
    invoke-virtual {v1, v2, v3, v3}, Lorg/maplibre/android/location/LocationCameraController;->setCameraMode(ILandroid/location/Location;Lorg/maplibre/android/location/LocationComponent$6;)V

    .line 249
    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_9
    invoke-virtual {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStarted()V

    .line 253
    .line 254
    .line 255
    return v4

    .line 256
    :cond_a
    :goto_1
    return v2
.end method

.method public final canExecute(I)Z
    .locals 1

    .line 1
    iget p1, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceStart:F

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->angleThreshold:F

    .line 8
    .line 9
    cmpl-float p1, p1, v0

    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-super {p0, p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->canExecute(I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final gestureStopped()V
    .locals 12

    .line 1
    invoke-super {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStopped()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceLast:F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    cmpl-float v0, v0, v1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput v1, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityX:F

    .line 12
    .line 13
    iput v1, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityY:F

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityX:F

    .line 16
    .line 17
    iget v2, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityY:F

    .line 18
    .line 19
    iget-object v3, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    .line 20
    .line 21
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 22
    .line 23
    mul-float/2addr v2, v4

    .line 24
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 25
    .line 26
    mul-float/2addr v3, v0

    .line 27
    add-float/2addr v3, v2

    .line 28
    float-to-double v2, v3

    .line 29
    float-to-double v4, v4

    .line 30
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 31
    .line 32
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    .line 37
    .line 38
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 39
    .line 40
    float-to-double v8, v0

    .line 41
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    add-double/2addr v8, v4

    .line 46
    div-double/2addr v2, v8

    .line 47
    double-to-float v0, v2

    .line 48
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget v2, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceLast:F

    .line 53
    .line 54
    cmpg-float v2, v2, v1

    .line 55
    .line 56
    if-gez v2, :cond_1

    .line 57
    .line 58
    neg-float v0, v0

    .line 59
    :cond_1
    iget-object v2, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;

    .line 62
    .line 63
    iget v3, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityX:F

    .line 64
    .line 65
    iget v4, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityY:F

    .line 66
    .line 67
    iget-object v5, v2, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 68
    .line 69
    iget-object v8, v5, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 70
    .line 71
    iget-boolean v9, v8, Lorg/maplibre/android/maps/UiSettings;->increaseScaleThresholdWhenRotating:Z

    .line 72
    .line 73
    if-eqz v9, :cond_2

    .line 74
    .line 75
    iget-object v9, v5, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 76
    .line 77
    iget-object v9, v9, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v9, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    .line 80
    .line 81
    iget v10, v2, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->defaultSpanSinceStartThreshold:F

    .line 82
    .line 83
    iput v10, v9, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->spanSinceStartThreshold:F

    .line 84
    .line 85
    :cond_2
    iget-object v9, v5, Lorg/maplibre/android/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 86
    .line 87
    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_3

    .line 96
    .line 97
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    check-cast v10, Lorg/maplibre/android/location/LocationCameraController$7;

    .line 102
    .line 103
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    iget v9, v2, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->angularVelocityMultiplier:F

    .line 108
    .line 109
    mul-float/2addr v0, v9

    .line 110
    const/high16 v9, 0x41f00000    # 30.0f

    .line 111
    .line 112
    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    const/high16 v9, -0x3e100000    # -30.0f

    .line 117
    .line 118
    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    add-float/2addr v4, v3

    .line 131
    iget v3, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceLast:F

    .line 132
    .line 133
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    div-float/2addr v3, v4

    .line 138
    float-to-double v3, v3

    .line 139
    iget-boolean v8, v8, Lorg/maplibre/android/maps/UiSettings;->rotateVelocityAnimationEnabled:Z

    .line 140
    .line 141
    if-eqz v8, :cond_6

    .line 142
    .line 143
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    iget v9, v2, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->minimumAngularVelocity:F

    .line 148
    .line 149
    cmpg-float v8, v8, v9

    .line 150
    .line 151
    if-ltz v8, :cond_6

    .line 152
    .line 153
    iget-object v8, v5, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 154
    .line 155
    iget-object v8, v8, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v8, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    .line 158
    .line 159
    iget-boolean v8, v8, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 160
    .line 161
    if-eqz v8, :cond_4

    .line 162
    .line 163
    iget-wide v8, v2, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->rotateVelocityRatioThreshold:D

    .line 164
    .line 165
    cmpg-double v3, v3, v8

    .line 166
    .line 167
    if-gez v3, :cond_4

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    float-to-double v3, v3

    .line 175
    const-wide v8, 0x4005bf0a8b145769L    # Math.E

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 181
    .line 182
    .line 183
    move-result-wide v8

    .line 184
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 185
    .line 186
    div-double/2addr v10, v8

    .line 187
    add-double/2addr v10, v3

    .line 188
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    .line 189
    .line 190
    .line 191
    move-result-wide v3

    .line 192
    add-double/2addr v3, v6

    .line 193
    const-wide v6, 0x4062c00000000000L    # 150.0

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    mul-double/2addr v3, v6

    .line 199
    double-to-long v3, v3

    .line 200
    iget-object v6, v2, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 201
    .line 202
    iget-object v6, v6, Lorg/maplibre/android/maps/MapGestureDetector;->constantFocalPoint:Landroid/graphics/PointF;

    .line 203
    .line 204
    if-eqz v6, :cond_5

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_5
    iget-object v6, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    .line 208
    .line 209
    :goto_1
    const/4 p0, 0x2

    .line 210
    new-array p0, p0, [F

    .line 211
    .line 212
    const/4 v7, 0x0

    .line 213
    aput v0, p0, v7

    .line 214
    .line 215
    const/4 v0, 0x1

    .line 216
    aput v1, p0, v0

    .line 217
    .line 218
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-virtual {p0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 223
    .line 224
    .line 225
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 226
    .line 227
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    .line 232
    .line 233
    new-instance v1, Lorg/maplibre/android/maps/MapGestureDetector$2;

    .line 234
    .line 235
    invoke-direct {v1, v2, v6, v0}, Lorg/maplibre/android/maps/MapGestureDetector$2;-><init>(Ljava/lang/Object;Landroid/graphics/PointF;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 239
    .line 240
    .line 241
    new-instance v0, Landroidx/transition/Transition$3;

    .line 242
    .line 243
    const/16 v1, 0x10

    .line 244
    .line 245
    invoke-direct {v0, v1, v2}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    .line 250
    .line 251
    iput-object p0, v5, Lorg/maplibre/android/maps/MapGestureDetector;->rotateAnimator:Landroid/animation/ValueAnimator;

    .line 252
    .line 253
    invoke-virtual {v5, p0}, Lorg/maplibre/android/maps/MapGestureDetector;->scheduleAnimator(Landroid/animation/ValueAnimator;)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :cond_6
    :goto_2
    invoke-virtual {v5}, Lorg/maplibre/android/maps/MapGestureDetector;->dispatchCameraIdle()V

    .line 258
    .line 259
    .line 260
    return-void
.end method

.method public final provideHandledTypes()Ljava/util/HashSet;
    .locals 0

    .line 1
    sget-object p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->handledTypes:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceStart:F

    .line 3
    .line 4
    return-void
.end method
