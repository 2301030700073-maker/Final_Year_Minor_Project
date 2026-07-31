.class public final Landroidx/compose/foundation/gestures/ContentInViewNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/MeasuredSizeAwareModifierNode;


# instance fields
.field public final bringIntoViewRequests:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

.field public bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field public final getFocusedRect:Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;

.field public isAnimationRunning:Z

.field public orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public reverseDirection:Z

.field public final scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public trackingFocusedChild:Z

.field public viewportSize:J


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedRect:Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-direct {p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 21
    .line 22
    const-wide/16 p1, -0x1

    .line 23
    .line 24
    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 25
    .line 26
    return-void
.end method

.method public static isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z
    .locals 6

    .line 1
    and-int/lit8 v0, p6, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getViewportSizeOrZero-YbymL2g$foundation()J

    .line 6
    .line 7
    .line 8
    move-result-wide p2

    .line 9
    :cond_0
    move-wide v2, p2

    .line 10
    and-int/lit8 p2, p6, 0x2

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    const-wide/16 p4, 0x0

    .line 15
    .line 16
    :cond_1
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move-wide v4, p4

    .line 19
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ContentInViewNode;->relocationOffset-fbGrOKE(Landroidx/compose/ui/geometry/Rect;JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    const/16 p2, 0x20

    .line 24
    .line 25
    shr-long p2, p0, p2

    .line 26
    .line 27
    long-to-int p2, p2

    .line 28
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const/high16 p3, 0x3f000000    # 0.5f

    .line 37
    .line 38
    cmpg-float p2, p2, p3

    .line 39
    .line 40
    if-gtz p2, :cond_2

    .line 41
    .line 42
    const-wide p4, 0xffffffffL

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr p0, p4

    .line 48
    long-to-int p0, p0

    .line 49
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    cmpg-float p0, p0, p3

    .line 58
    .line 59
    if-gtz p0, :cond_2

    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :cond_2
    const/4 p0, 0x0

    .line 64
    return p0
.end method


# virtual methods
.method public final calculateScrollDelta-I_oMVgE(Landroidx/compose/foundation/gestures/BringIntoViewSpec;J)F
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 6
    .line 7
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 8
    .line 9
    iget-object v4, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 10
    .line 11
    iget v5, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    sub-int/2addr v5, v6

    .line 15
    iget-object v4, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 16
    .line 17
    array-length v7, v4

    .line 18
    const/4 v9, 0x2

    .line 19
    const/4 v13, 0x0

    .line 20
    if-ge v5, v7, :cond_5

    .line 21
    .line 22
    move-object v7, v13

    .line 23
    :goto_0
    if-ltz v5, :cond_4

    .line 24
    .line 25
    aget-object v14, v4, v5

    .line 26
    .line 27
    check-cast v14, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 28
    .line 29
    iget-object v14, v14, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->currentBounds:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;

    .line 30
    .line 31
    invoke-virtual {v14}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->invoke()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v14

    .line 35
    check-cast v14, Landroidx/compose/ui/geometry/Rect;

    .line 36
    .line 37
    if-eqz v14, :cond_3

    .line 38
    .line 39
    invoke-virtual {v14}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    .line 40
    .line 41
    .line 42
    move-result-wide v15

    .line 43
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getViewportSizeOrZero-YbymL2g$foundation()J

    .line 44
    .line 45
    .line 46
    move-result-wide v17

    .line 47
    invoke-static/range {v17 .. v18}, Lkotlin/ExceptionsKt;->toSize-ozmzZPI(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v17

    .line 51
    const/16 v19, 0x0

    .line 52
    .line 53
    iget-object v8, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 54
    .line 55
    sget-object v20, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 56
    .line 57
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    aget v8, v20, v8

    .line 62
    .line 63
    if-eq v8, v6, :cond_1

    .line 64
    .line 65
    if-ne v8, v9, :cond_0

    .line 66
    .line 67
    const/16 v8, 0x20

    .line 68
    .line 69
    const-wide v20, 0xffffffffL

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    shr-long v10, v15, v8

    .line 75
    .line 76
    long-to-int v10, v10

    .line 77
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    shr-long v11, v17, v8

    .line 82
    .line 83
    long-to-int v11, v11

    .line 84
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 94
    .line 95
    .line 96
    return v19

    .line 97
    :cond_1
    const/16 v8, 0x20

    .line 98
    .line 99
    const-wide v20, 0xffffffffL

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    and-long v10, v15, v20

    .line 105
    .line 106
    long-to-int v10, v10

    .line 107
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    and-long v11, v17, v20

    .line 112
    .line 113
    long-to-int v11, v11

    .line 114
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    :goto_1
    if-gtz v10, :cond_2

    .line 123
    .line 124
    move-object v7, v14

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    if-nez v7, :cond_6

    .line 127
    .line 128
    move-object v7, v14

    .line 129
    goto :goto_3

    .line 130
    :cond_3
    const/16 v8, 0x20

    .line 131
    .line 132
    const/16 v19, 0x0

    .line 133
    .line 134
    const-wide v20, 0xffffffffL

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    const/16 v8, 0x20

    .line 143
    .line 144
    const/16 v19, 0x0

    .line 145
    .line 146
    const-wide v20, 0xffffffffL

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    const/16 v8, 0x20

    .line 153
    .line 154
    const/16 v19, 0x0

    .line 155
    .line 156
    const-wide v20, 0xffffffffL

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    move-object v7, v13

    .line 162
    :cond_6
    :goto_3
    if-nez v7, :cond_9

    .line 163
    .line 164
    iget-boolean v4, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    .line 165
    .line 166
    if-eqz v4, :cond_7

    .line 167
    .line 168
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedRect:Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    invoke-virtual {v4}, Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    move-object v13, v4

    .line 175
    check-cast v13, Landroidx/compose/ui/geometry/Rect;

    .line 176
    .line 177
    :cond_7
    if-nez v13, :cond_8

    .line 178
    .line 179
    return v19

    .line 180
    :cond_8
    move-object v7, v13

    .line 181
    :cond_9
    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->toSize-ozmzZPI(J)J

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    iget-object v0, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 186
    .line 187
    sget-object v4, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    aget v0, v4, v0

    .line 194
    .line 195
    if-eq v0, v6, :cond_b

    .line 196
    .line 197
    if-ne v0, v9, :cond_a

    .line 198
    .line 199
    iget v0, v7, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 200
    .line 201
    shr-long v4, p2, v8

    .line 202
    .line 203
    long-to-int v4, v4

    .line 204
    int-to-float v4, v4

    .line 205
    sub-float v4, v0, v4

    .line 206
    .line 207
    iget v5, v7, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 208
    .line 209
    sub-float/2addr v5, v0

    .line 210
    shr-long/2addr v2, v8

    .line 211
    long-to-int v0, v2

    .line 212
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-interface {v1, v4, v5, v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    return v0

    .line 221
    :cond_a
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 222
    .line 223
    .line 224
    return v19

    .line 225
    :cond_b
    iget v0, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 226
    .line 227
    and-long v4, p2, v20

    .line 228
    .line 229
    long-to-int v4, v4

    .line 230
    int-to-float v4, v4

    .line 231
    sub-float v4, v0, v4

    .line 232
    .line 233
    iget v5, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 234
    .line 235
    sub-float/2addr v5, v0

    .line 236
    and-long v2, v2, v20

    .line 237
    .line 238
    long-to-int v0, v2

    .line 239
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-interface {v1, v4, v5, v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    return v0
.end method

.method public final getShouldAutoInvalidate()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getViewportSizeOrZero-YbymL2g$foundation()J
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    :cond_0
    return-wide v0
.end method

.method public final launchAnimation--gyyYBs(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->LocalBringIntoViewSpec:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 6
    .line 7
    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 12
    .line 13
    :cond_0
    move-object v4, v0

    .line 14
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "launchAnimation called when previous animation was running"

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    new-instance v3, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->LocalBringIntoViewSpec:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 30
    .line 31
    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 36
    .line 37
    :cond_2
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->getScrollAnimationSpec()Landroidx/compose/animation/core/SpringSpec;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {v3, v0}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;-><init>(Landroidx/compose/animation/core/AnimationSpec;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v8, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 49
    .line 50
    new-instance v1, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    move-object v2, p0

    .line 54
    move-wide v5, p1

    .line 55
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;JLkotlin/coroutines/Continuation;)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-static {v0, p1, v8, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final onRemeasured-ozmzZPI(J)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getViewportSizeOrZero-YbymL2g$foundation()J

    .line 2
    .line 3
    .line 4
    move-result-wide v3

    .line 5
    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->viewportSize:J

    .line 6
    .line 7
    iget-object v5, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 8
    .line 9
    sget-object v6, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 10
    .line 11
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    aget v5, v6, v5

    .line 16
    .line 17
    const-wide v6, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const/16 v8, 0x20

    .line 23
    .line 24
    const/4 v9, 0x1

    .line 25
    if-eq v5, v9, :cond_1

    .line 26
    .line 27
    const/4 v10, 0x2

    .line 28
    if-ne v5, v10, :cond_0

    .line 29
    .line 30
    shr-long v10, p1, v8

    .line 31
    .line 32
    long-to-int v5, v10

    .line 33
    shr-long v10, v3, v8

    .line 34
    .line 35
    long-to-int v10, v10

    .line 36
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    and-long v10, p1, v6

    .line 46
    .line 47
    long-to-int v5, v10

    .line 48
    and-long v10, v3, v6

    .line 49
    .line 50
    long-to-int v10, v10

    .line 51
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    :goto_0
    if-ltz v5, :cond_2

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_2
    iget-boolean v5, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    .line 59
    .line 60
    if-nez v5, :cond_4

    .line 61
    .line 62
    iget-object v5, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 63
    .line 64
    sget-object v10, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 65
    .line 66
    if-ne v5, v10, :cond_3

    .line 67
    .line 68
    and-long v10, v3, v6

    .line 69
    .line 70
    long-to-int v5, v10

    .line 71
    and-long v1, p1, v6

    .line 72
    .line 73
    long-to-int v1, v1

    .line 74
    sub-int/2addr v5, v1

    .line 75
    int-to-long v1, v5

    .line 76
    and-long/2addr v1, v6

    .line 77
    :goto_1
    move-wide v7, v1

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    shr-long v5, v3, v8

    .line 80
    .line 81
    long-to-int v5, v5

    .line 82
    shr-long v1, p1, v8

    .line 83
    .line 84
    long-to-int v1, v1

    .line 85
    sub-int/2addr v5, v1

    .line 86
    int-to-long v1, v5

    .line 87
    shl-long/2addr v1, v8

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    const-wide/16 v1, 0x0

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :goto_2
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->getFocusedRect:Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Landroidx/compose/ui/geometry/Rect;

    .line 99
    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    .line 103
    .line 104
    if-nez v2, :cond_5

    .line 105
    .line 106
    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    .line 107
    .line 108
    if-nez v2, :cond_5

    .line 109
    .line 110
    move-wide v2, v3

    .line 111
    const-wide/16 v4, 0x0

    .line 112
    .line 113
    const/4 v6, 0x2

    .line 114
    move-object v0, p0

    .line 115
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    const-wide/16 v2, 0x0

    .line 122
    .line 123
    const/4 v6, 0x1

    .line 124
    move-object v0, p0

    .line 125
    move-wide v4, v7

    .line 126
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_5

    .line 131
    .line 132
    iput-boolean v9, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->trackingFocusedChild:Z

    .line 133
    .line 134
    invoke-virtual {p0, v4, v5}, Landroidx/compose/foundation/gestures/ContentInViewNode;->launchAnimation--gyyYBs(J)V

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_3
    return-void
.end method

.method public final relocationOffset-fbGrOKE(Landroidx/compose/ui/geometry/Rect;JJ)J
    .locals 6

    .line 1
    invoke-static {p2, p3}, Lkotlin/ExceptionsKt;->toSize-ozmzZPI(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewNode$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    const-wide v3, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const/16 v5, 0x20

    .line 23
    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->LocalBringIntoViewSpec:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    move-object v0, p0

    .line 40
    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 41
    .line 42
    :cond_0
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 43
    .line 44
    shr-long/2addr p4, v5

    .line 45
    long-to-int p4, p4

    .line 46
    int-to-float p4, p4

    .line 47
    sub-float p4, p0, p4

    .line 48
    .line 49
    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 50
    .line 51
    sub-float/2addr p1, p0

    .line 52
    shr-long/2addr p2, v5

    .line 53
    long-to-int p0, p2

    .line 54
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-interface {v0, p4, p1, p0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    int-to-long p0, p0

    .line 67
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    int-to-long p2, p2

    .line 72
    shl-long/2addr p0, v5

    .line 73
    and-long/2addr p2, v3

    .line 74
    or-long/2addr p0, p2

    .line 75
    return-wide p0

    .line 76
    :cond_1
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 77
    .line 78
    .line 79
    const-wide/16 p0, 0x0

    .line 80
    .line 81
    return-wide p0

    .line 82
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 83
    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->LocalBringIntoViewSpec:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 87
    .line 88
    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    move-object v0, p0

    .line 93
    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 94
    .line 95
    :cond_3
    iget p0, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 96
    .line 97
    and-long/2addr p4, v3

    .line 98
    long-to-int p4, p4

    .line 99
    int-to-float p4, p4

    .line 100
    sub-float p4, p0, p4

    .line 101
    .line 102
    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 103
    .line 104
    sub-float/2addr p1, p0

    .line 105
    and-long/2addr p2, v3

    .line 106
    long-to-int p0, p2

    .line 107
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    invoke-interface {v0, p4, p1, p0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    int-to-long p1, p1

    .line 120
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    int-to-long p3, p0

    .line 125
    shl-long p0, p1, v5

    .line 126
    .line 127
    and-long/2addr p3, v3

    .line 128
    or-long/2addr p0, p3

    .line 129
    return-wide p0
.end method
