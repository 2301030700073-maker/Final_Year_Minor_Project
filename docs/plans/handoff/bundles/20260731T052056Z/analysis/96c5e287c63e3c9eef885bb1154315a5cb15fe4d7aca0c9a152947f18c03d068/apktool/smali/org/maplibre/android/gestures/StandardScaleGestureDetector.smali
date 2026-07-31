.class public final Lorg/maplibre/android/gestures/StandardScaleGestureDetector;
.super Lorg/maplibre/android/gestures/ProgressiveGesture;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final handledTypes:Ljava/util/HashSet;


# instance fields
.field public currentSpan:F

.field public currentSpanX:F

.field public currentSpanY:F

.field public final innerGestureDetector:Landroid/view/GestureDetector;

.field public isScalingOut:Z

.field public previousSpan:F

.field public quickScale:Z

.field public quickScaleFocalPoint:Landroid/graphics/PointF;

.field public scaleFactor:F

.field public spanDeltaSinceStart:F

.field public spanSinceStartThreshold:F

.field public startSpan:F


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
    sput-object v0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->handledTypes:Ljava/util/HashSet;

    .line 7
    .line 8
    const/4 v1, 0x1

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
    const/16 v1, 0xf

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/ProgressiveGesture;-><init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-direct {p2, v0, p0}, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/view/GestureDetector;

    .line 11
    .line 12
    invoke-direct {v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->innerGestureDetector:Landroid/view/GestureDetector;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final analyzeEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScale:Z

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v1, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 19
    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    if-ne v0, v2, :cond_3

    .line 23
    .line 24
    iput-boolean v3, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScale:Z

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iput-boolean v2, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->interrupted:Z

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iput-boolean v3, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScale:Z

    .line 37
    .line 38
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lorg/maplibre/android/gestures/ProgressiveGesture;->analyzeEvent(Landroid/view/MotionEvent;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->innerGestureDetector:Landroid/view/GestureDetector;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    or-int/2addr p0, v0

    .line 49
    return p0
.end method

.method public final analyzeMovement()Z
    .locals 14

    .line 1
    iget-boolean v0, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 2
    .line 3
    iget-object v1, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScale:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-le v0, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->gestureStopped()V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    iget-boolean v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScale:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScaleFocalPoint:Landroid/graphics/PointF;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    .line 31
    .line 32
    :goto_0
    const/4 v4, 0x0

    .line 33
    iput v4, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpanX:F

    .line 34
    .line 35
    iput v4, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpanY:F

    .line 36
    .line 37
    move v5, v2

    .line 38
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    iget v7, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpanX:F

    .line 43
    .line 44
    if-ge v5, v6, :cond_2

    .line 45
    .line 46
    iget-object v6, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 47
    .line 48
    invoke-virtual {v6, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    iget v8, v0, Landroid/graphics/PointF;->x:F

    .line 53
    .line 54
    sub-float/2addr v6, v8

    .line 55
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    add-float/2addr v6, v7

    .line 60
    iput v6, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpanX:F

    .line 61
    .line 62
    iget v6, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpanY:F

    .line 63
    .line 64
    iget-object v7, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 65
    .line 66
    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 71
    .line 72
    sub-float/2addr v7, v8

    .line 73
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    add-float/2addr v7, v6

    .line 78
    iput v7, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpanY:F

    .line 79
    .line 80
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    .line 84
    .line 85
    mul-float/2addr v7, v0

    .line 86
    iput v7, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpanX:F

    .line 87
    .line 88
    iget v5, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpanY:F

    .line 89
    .line 90
    mul-float/2addr v5, v0

    .line 91
    iput v5, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpanY:F

    .line 92
    .line 93
    iget-boolean v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScale:Z

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    iput v5, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpan:F

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    float-to-double v6, v7

    .line 101
    float-to-double v8, v5

    .line 102
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    double-to-float v5, v5

    .line 107
    iput v5, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpan:F

    .line 108
    .line 109
    :goto_2
    iget v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->startSpan:F

    .line 110
    .line 111
    cmpl-float v6, v0, v4

    .line 112
    .line 113
    if-nez v6, :cond_4

    .line 114
    .line 115
    iput v5, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->startSpan:F

    .line 116
    .line 117
    move v0, v5

    .line 118
    :cond_4
    sub-float/2addr v0, v5

    .line 119
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iput v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->spanDeltaSinceStart:F

    .line 124
    .line 125
    iget-boolean v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScale:Z

    .line 126
    .line 127
    const/high16 v5, 0x3f800000    # 1.0f

    .line 128
    .line 129
    if-eqz v0, :cond_b

    .line 130
    .line 131
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iget-object v6, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScaleFocalPoint:Landroid/graphics/PointF;

    .line 138
    .line 139
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 140
    .line 141
    cmpg-float v0, v0, v6

    .line 142
    .line 143
    if-gez v0, :cond_5

    .line 144
    .line 145
    iget v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpan:F

    .line 146
    .line 147
    iget v6, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->previousSpan:F

    .line 148
    .line 149
    cmpg-float v0, v0, v6

    .line 150
    .line 151
    if-ltz v0, :cond_6

    .line 152
    .line 153
    :cond_5
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iget-object v6, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScaleFocalPoint:Landroid/graphics/PointF;

    .line 160
    .line 161
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 162
    .line 163
    cmpl-float v0, v0, v6

    .line 164
    .line 165
    if-lez v0, :cond_7

    .line 166
    .line 167
    iget v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpan:F

    .line 168
    .line 169
    iget v6, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->previousSpan:F

    .line 170
    .line 171
    cmpl-float v0, v0, v6

    .line 172
    .line 173
    if-lez v0, :cond_7

    .line 174
    .line 175
    :cond_6
    move v0, v3

    .line 176
    goto :goto_3

    .line 177
    :cond_7
    move v0, v2

    .line 178
    :goto_3
    iget v6, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpan:F

    .line 179
    .line 180
    iget v7, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->previousSpan:F

    .line 181
    .line 182
    div-float/2addr v6, v7

    .line 183
    sub-float v6, v5, v6

    .line 184
    .line 185
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    const/high16 v7, 0x3f000000    # 0.5f

    .line 190
    .line 191
    mul-float/2addr v6, v7

    .line 192
    iget v7, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->previousSpan:F

    .line 193
    .line 194
    cmpg-float v7, v7, v4

    .line 195
    .line 196
    if-gtz v7, :cond_9

    .line 197
    .line 198
    :cond_8
    move v6, v5

    .line 199
    goto :goto_4

    .line 200
    :cond_9
    if-eqz v0, :cond_a

    .line 201
    .line 202
    add-float/2addr v6, v5

    .line 203
    goto :goto_4

    .line 204
    :cond_a
    sub-float v6, v5, v6

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_b
    iget v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->previousSpan:F

    .line 208
    .line 209
    cmpl-float v6, v0, v4

    .line 210
    .line 211
    if-lez v6, :cond_8

    .line 212
    .line 213
    iget v6, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpan:F

    .line 214
    .line 215
    div-float/2addr v6, v0

    .line 216
    :goto_4
    iput v6, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->scaleFactor:F

    .line 217
    .line 218
    cmpg-float v0, v6, v5

    .line 219
    .line 220
    if-gez v0, :cond_c

    .line 221
    .line 222
    move v0, v3

    .line 223
    goto :goto_5

    .line 224
    :cond_c
    move v0, v2

    .line 225
    :goto_5
    iput-boolean v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->isScalingOut:Z

    .line 226
    .line 227
    iget-boolean v0, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 228
    .line 229
    if-eqz v0, :cond_11

    .line 230
    .line 231
    iget v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpan:F

    .line 232
    .line 233
    cmpl-float v0, v0, v4

    .line 234
    .line 235
    if-lez v0, :cond_11

    .line 236
    .line 237
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;

    .line 240
    .line 241
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 242
    .line 243
    iget-object v4, v1, Lorg/maplibre/android/maps/MapGestureDetector;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 244
    .line 245
    iget-object v5, v1, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 246
    .line 247
    iget-object v6, v1, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 248
    .line 249
    invoke-virtual {v4, v3}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->getScaleFocalPoint(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)Landroid/graphics/PointF;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    iget-boolean v7, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->quickZoom:Z

    .line 257
    .line 258
    if-eqz v7, :cond_f

    .line 259
    .line 260
    iget-object v7, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 261
    .line 262
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    iget-object v8, v1, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    .line 267
    .line 268
    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 269
    .line 270
    sub-float/2addr v7, v8

    .line 271
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    float-to-double v7, v7

    .line 276
    iget-object v9, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 277
    .line 278
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    iget-object v10, v1, Lorg/maplibre/android/maps/MapGestureDetector;->doubleTapFocalPoint:Landroid/graphics/PointF;

    .line 283
    .line 284
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 285
    .line 286
    cmpg-float v9, v9, v10

    .line 287
    .line 288
    if-gez v9, :cond_d

    .line 289
    .line 290
    move v2, v3

    .line 291
    :cond_d
    iget-wide v9, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->screenHeight:D

    .line 292
    .line 293
    const-wide/16 v11, 0x0

    .line 294
    .line 295
    sub-double/2addr v7, v11

    .line 296
    sub-double/2addr v9, v11

    .line 297
    div-double/2addr v7, v9

    .line 298
    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    .line 299
    .line 300
    mul-double/2addr v7, v9

    .line 301
    add-double/2addr v7, v11

    .line 302
    iget-wide v9, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->startZoom:D

    .line 303
    .line 304
    if-eqz v2, :cond_e

    .line 305
    .line 306
    sub-double/2addr v9, v7

    .line 307
    goto :goto_6

    .line 308
    :cond_e
    add-double/2addr v9, v7

    .line 309
    :goto_6
    iget v2, v6, Lorg/maplibre/android/maps/UiSettings;->zoomRate:F

    .line 310
    .line 311
    float-to-double v6, v2

    .line 312
    mul-double/2addr v9, v6

    .line 313
    invoke-virtual {v5, v9, v10, v4}, Lorg/maplibre/android/maps/Transform;->setZoom(DLandroid/graphics/PointF;)V

    .line 314
    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_f
    iget v2, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->scaleFactor:F

    .line 318
    .line 319
    float-to-double v7, v2

    .line 320
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    .line 321
    .line 322
    .line 323
    move-result-wide v7

    .line 324
    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    .line 330
    .line 331
    .line 332
    move-result-wide v9

    .line 333
    div-double/2addr v7, v9

    .line 334
    const-wide v9, 0x3fe4ccccc0000000L    # 0.6499999761581421

    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    mul-double/2addr v7, v9

    .line 340
    iget v2, v6, Lorg/maplibre/android/maps/UiSettings;->zoomRate:F

    .line 341
    .line 342
    float-to-double v9, v2

    .line 343
    mul-double/2addr v7, v9

    .line 344
    invoke-virtual {v5, v7, v8, v4}, Lorg/maplibre/android/maps/Transform;->zoomBy(DLandroid/graphics/PointF;)V

    .line 345
    .line 346
    .line 347
    :goto_7
    iget-object v1, v1, Lorg/maplibre/android/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-nez v2, :cond_10

    .line 358
    .line 359
    iget v1, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpan:F

    .line 360
    .line 361
    iget v2, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->previousSpan:F

    .line 362
    .line 363
    sub-float/2addr v1, v2

    .line 364
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    iput v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->spanSinceLast:F

    .line 369
    .line 370
    move v2, v3

    .line 371
    goto/16 :goto_c

    .line 372
    .line 373
    :cond_10
    invoke-static {v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    throw p0

    .line 378
    :cond_11
    iget-boolean v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScale:Z

    .line 379
    .line 380
    if-eqz v0, :cond_12

    .line 381
    .line 382
    const/16 v0, 0xf

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :cond_12
    move v0, v3

    .line 386
    :goto_8
    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->canExecute(I)Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-eqz v0, :cond_1e

    .line 391
    .line 392
    iget v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->spanDeltaSinceStart:F

    .line 393
    .line 394
    iget v5, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->spanSinceStartThreshold:F

    .line 395
    .line 396
    cmpl-float v0, v0, v5

    .line 397
    .line 398
    if-ltz v0, :cond_1e

    .line 399
    .line 400
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;

    .line 403
    .line 404
    iget-object v5, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 405
    .line 406
    iget-object v6, v5, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 407
    .line 408
    iget-object v7, v5, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 409
    .line 410
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-ne v1, v3, :cond_13

    .line 415
    .line 416
    move v1, v3

    .line 417
    goto :goto_9

    .line 418
    :cond_13
    move v1, v2

    .line 419
    :goto_9
    iput-boolean v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->quickZoom:Z

    .line 420
    .line 421
    iget-boolean v8, v7, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    .line 422
    .line 423
    if-nez v8, :cond_14

    .line 424
    .line 425
    goto/16 :goto_b

    .line 426
    .line 427
    :cond_14
    if-eqz v1, :cond_16

    .line 428
    .line 429
    iget-boolean v1, v7, Lorg/maplibre/android/maps/UiSettings;->quickZoomGesturesEnabled:Z

    .line 430
    .line 431
    if-nez v1, :cond_15

    .line 432
    .line 433
    goto/16 :goto_b

    .line 434
    .line 435
    :cond_15
    iget-object v1, v5, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 436
    .line 437
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v1, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 440
    .line 441
    iput-boolean v2, v1, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    .line 442
    .line 443
    iget-boolean v2, v1, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 444
    .line 445
    if-eqz v2, :cond_1a

    .line 446
    .line 447
    iput-boolean v3, v1, Lorg/maplibre/android/gestures/ProgressiveGesture;->interrupted:Z

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_16
    iget v1, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->previousSpan:F

    .line 451
    .line 452
    cmpl-float v4, v1, v4

    .line 453
    .line 454
    if-lez v4, :cond_1d

    .line 455
    .line 456
    iget v4, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpan:F

    .line 457
    .line 458
    iget-object v8, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 459
    .line 460
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getEventTime()J

    .line 461
    .line 462
    .line 463
    move-result-wide v8

    .line 464
    long-to-double v8, v8

    .line 465
    iget-object v10, p0, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    .line 466
    .line 467
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getEventTime()J

    .line 468
    .line 469
    .line 470
    move-result-wide v10

    .line 471
    long-to-double v10, v10

    .line 472
    cmpl-double v12, v8, v10

    .line 473
    .line 474
    if-nez v12, :cond_17

    .line 475
    .line 476
    goto/16 :goto_b

    .line 477
    .line 478
    :cond_17
    sub-float/2addr v4, v1

    .line 479
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    float-to-double v12, v1

    .line 484
    sub-double/2addr v8, v10

    .line 485
    div-double/2addr v12, v8

    .line 486
    iget v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->minimumGestureSpeed:F

    .line 487
    .line 488
    float-to-double v8, v1

    .line 489
    cmpg-double v1, v12, v8

    .line 490
    .line 491
    if-gez v1, :cond_18

    .line 492
    .line 493
    goto :goto_b

    .line 494
    :cond_18
    iget-object v1, v5, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 495
    .line 496
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v1, Lorg/maplibre/android/gestures/RotateGestureDetector;

    .line 499
    .line 500
    iget-boolean v4, v1, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 501
    .line 502
    if-nez v4, :cond_1a

    .line 503
    .line 504
    iget v1, v1, Lorg/maplibre/android/gestures/RotateGestureDetector;->deltaSinceLast:F

    .line 505
    .line 506
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    float-to-double v8, v1

    .line 511
    const-wide v10, 0x3fd999999999999aL    # 0.4

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    cmpl-double v1, v8, v10

    .line 517
    .line 518
    if-lez v1, :cond_19

    .line 519
    .line 520
    iget v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->minimumAngledGestureSpeed:F

    .line 521
    .line 522
    float-to-double v8, v1

    .line 523
    cmpg-double v1, v12, v8

    .line 524
    .line 525
    if-gez v1, :cond_19

    .line 526
    .line 527
    goto :goto_b

    .line 528
    :cond_19
    iget-boolean v1, v7, Lorg/maplibre/android/maps/UiSettings;->disableRotateWhenScaling:Z

    .line 529
    .line 530
    if-eqz v1, :cond_1a

    .line 531
    .line 532
    iget-object v1, v5, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 533
    .line 534
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v1, Lorg/maplibre/android/gestures/RotateGestureDetector;

    .line 537
    .line 538
    iput-boolean v2, v1, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    .line 539
    .line 540
    iget-boolean v2, v1, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 541
    .line 542
    if-eqz v2, :cond_1a

    .line 543
    .line 544
    iput-boolean v3, v1, Lorg/maplibre/android/gestures/ProgressiveGesture;->interrupted:Z

    .line 545
    .line 546
    :cond_1a
    :goto_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 555
    .line 556
    int-to-double v1, v1

    .line 557
    iput-wide v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->screenHeight:D

    .line 558
    .line 559
    invoke-virtual {v6}, Lorg/maplibre/android/maps/Transform;->getRawZoom()D

    .line 560
    .line 561
    .line 562
    move-result-wide v1

    .line 563
    iput-wide v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->startZoom:D

    .line 564
    .line 565
    invoke-virtual {v5}, Lorg/maplibre/android/maps/MapGestureDetector;->noGesturesInProgress()Z

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    if-eqz v1, :cond_1b

    .line 570
    .line 571
    invoke-virtual {v6}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 572
    .line 573
    .line 574
    :cond_1b
    iget-object v1, v5, Lorg/maplibre/android/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 575
    .line 576
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    if-nez v2, :cond_1c

    .line 585
    .line 586
    iget v1, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpan:F

    .line 587
    .line 588
    iget v2, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->previousSpan:F

    .line 589
    .line 590
    sub-float/2addr v1, v2

    .line 591
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    iput v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->spanSinceLast:F

    .line 596
    .line 597
    move v2, v3

    .line 598
    goto :goto_b

    .line 599
    :cond_1c
    invoke-static {v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 600
    .line 601
    .line 602
    move-result-object p0

    .line 603
    throw p0

    .line 604
    :cond_1d
    :goto_b
    if-eqz v2, :cond_1e

    .line 605
    .line 606
    invoke-virtual {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStarted()V

    .line 607
    .line 608
    .line 609
    :cond_1e
    :goto_c
    iget v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpan:F

    .line 610
    .line 611
    iput v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->previousSpan:F

    .line 612
    .line 613
    return v2
.end method

.method public final gestureStopped()V
    .locals 14

    .line 1
    invoke-super {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStopped()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;

    .line 7
    .line 8
    iget v1, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityX:F

    .line 9
    .line 10
    iget v2, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->velocityY:F

    .line 11
    .line 12
    iget-boolean v3, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->quickZoom:Z

    .line 13
    .line 14
    iget-object v4, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 15
    .line 16
    iget-object v5, v4, Lorg/maplibre/android/maps/MapGestureDetector;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-object v3, v5, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 24
    .line 25
    iput-boolean v6, v3, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v3, v5, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Lorg/maplibre/android/gestures/RotateGestureDetector;

    .line 31
    .line 32
    iput-boolean v6, v3, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    .line 33
    .line 34
    :goto_0
    iget-object v3, v4, Lorg/maplibre/android/maps/MapGestureDetector;->onScaleListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_4

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    add-float/2addr v2, v1

    .line 55
    iget-object v1, v4, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 56
    .line 57
    iget-boolean v1, v1, Lorg/maplibre/android/maps/UiSettings;->scaleVelocityAnimationEnabled:Z

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    iget v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->minimumVelocity:F

    .line 62
    .line 63
    cmpg-float v1, v2, v1

    .line 64
    .line 65
    if-ltz v1, :cond_3

    .line 66
    .line 67
    iget v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->spanSinceLast:F

    .line 68
    .line 69
    div-float/2addr v1, v2

    .line 70
    float-to-double v5, v1

    .line 71
    iget-wide v7, v0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->scaleVelocityRatioThreshold:D

    .line 72
    .line 73
    cmpg-double v1, v5, v7

    .line 74
    .line 75
    if-gez v1, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    float-to-double v1, v2

    .line 79
    iget-boolean v3, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->isScalingOut:Z

    .line 80
    .line 81
    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    .line 82
    .line 83
    mul-double/2addr v1, v5

    .line 84
    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    mul-double/2addr v1, v7

    .line 90
    const-wide/16 v7, 0x0

    .line 91
    .line 92
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(DD)D

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 97
    .line 98
    .line 99
    move-result-wide v1

    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    neg-double v1, v1

    .line 103
    :cond_2
    move-wide v7, v1

    .line 104
    iget-object v1, v4, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 105
    .line 106
    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->getRawZoom()D

    .line 107
    .line 108
    .line 109
    move-result-wide v5

    .line 110
    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->getScaleFocalPoint(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)Landroid/graphics/PointF;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 124
    .line 125
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 126
    .line 127
    .line 128
    move-result-wide v2

    .line 129
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 130
    .line 131
    div-double/2addr v12, v2

    .line 132
    add-double/2addr v12, v0

    .line 133
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    .line 134
    .line 135
    .line 136
    move-result-wide v0

    .line 137
    add-double/2addr v0, v10

    .line 138
    const-wide v2, 0x4062c00000000000L    # 150.0

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    mul-double/2addr v0, v2

    .line 144
    double-to-long v10, v0

    .line 145
    invoke-virtual/range {v4 .. v11}, Lorg/maplibre/android/maps/MapGestureDetector;->createScaleAnimator(DDLandroid/graphics/PointF;J)Landroid/animation/ValueAnimator;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, v4, Lorg/maplibre/android/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 150
    .line 151
    iget-object v0, v4, Lorg/maplibre/android/maps/MapGestureDetector;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 152
    .line 153
    invoke-virtual {v4, v0}, Lorg/maplibre/android/maps/MapGestureDetector;->scheduleAnimator(Landroid/animation/ValueAnimator;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lorg/maplibre/android/maps/MapGestureDetector;->dispatchCameraIdle()V

    .line 158
    .line 159
    .line 160
    :goto_2
    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScale:Z

    .line 162
    .line 163
    return-void

    .line 164
    :cond_4
    invoke-static {v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    throw p0
.end method

.method public final getRequiredPointersCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScale:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x2

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public final isSloppyGesture()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;->isSloppyGesture()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScale:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v0, 0x2

    .line 18
    if-ge p0, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public final provideHandledTypes()Ljava/util/HashSet;
    .locals 0

    .line 1
    sget-object p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->handledTypes:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->startSpan:F

    .line 3
    .line 4
    iput v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->spanDeltaSinceStart:F

    .line 5
    .line 6
    iput v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->currentSpan:F

    .line 7
    .line 8
    iput v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->previousSpan:F

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    iput v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->scaleFactor:F

    .line 13
    .line 14
    return-void
.end method
