.class public final Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $initialVelocity:F

.field final synthetic $onRemainingScrollOffsetUpdate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $this_fling:Landroidx/compose/foundation/gestures/ScrollScope;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;FLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$initialVelocity:F

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$onRemainingScrollOffsetUpdate:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$this_fling:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$initialVelocity:F

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$onRemainingScrollOffsetUpdate:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$this_fling:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;FLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget v0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->label:I

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    const/4 v8, 0x2

    .line 8
    const/4 v9, 0x0

    .line 9
    const/4 v10, 0x1

    .line 10
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eq v0, v10, :cond_1

    .line 15
    .line 16
    if-ne v0, v8, :cond_0

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v6

    .line 28
    :cond_1
    iget-object v0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    move-object v12, v0

    .line 36
    move-object/from16 v0, p1

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 44
    .line 45
    iget-object v0, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 46
    .line 47
    iget v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$initialVelocity:F

    .line 48
    .line 49
    new-instance v2, Lokhttp3/Dispatcher;

    .line 50
    .line 51
    iget-object v0, v0, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->floatDecaySpec:Landroidx/appcompat/widget/PopupMenu$1;

    .line 52
    .line 53
    const/4 v3, 0x3

    .line 54
    invoke-direct {v2, v0, v3}, Lokhttp3/Dispatcher;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 58
    .line 59
    invoke-direct {v0, v9}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 60
    .line 61
    .line 62
    new-instance v3, Landroidx/compose/animation/core/AnimationVector1D;

    .line 63
    .line 64
    invoke-direct {v3, v1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v0, v3}, Lokhttp3/Dispatcher;->getTargetValue(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 72
    .line 73
    iget v0, v0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 74
    .line 75
    iget-object v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 76
    .line 77
    iget-object v1, v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/cardview/widget/CardView$1;

    .line 78
    .line 79
    iget v2, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$initialVelocity:F

    .line 80
    .line 81
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 84
    .line 85
    iget-object v3, v1, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    check-cast v12, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 96
    .line 97
    iget v12, v12, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    .line 98
    .line 99
    add-int/2addr v12, v4

    .line 100
    if-nez v12, :cond_3

    .line 101
    .line 102
    move v0, v9

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    cmpg-float v4, v2, v9

    .line 105
    .line 106
    iget v13, v1, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    .line 107
    .line 108
    if-gez v4, :cond_4

    .line 109
    .line 110
    add-int/lit8 v13, v13, 0x1

    .line 111
    .line 112
    :cond_4
    int-to-float v4, v12

    .line 113
    div-float/2addr v0, v4

    .line 114
    float-to-int v0, v0

    .line 115
    add-int/2addr v0, v13

    .line 116
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/DefaultPagerState;->getPageCount()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    invoke-static {v0, v7, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation()I

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 132
    .line 133
    iget v3, v3, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    .line 134
    .line 135
    int-to-long v3, v13

    .line 136
    const-wide/16 v14, 0x1

    .line 137
    .line 138
    sub-long v16, v3, v14

    .line 139
    .line 140
    const-wide/16 v18, 0x0

    .line 141
    .line 142
    cmp-long v20, v16, v18

    .line 143
    .line 144
    if-gez v20, :cond_5

    .line 145
    .line 146
    move-wide/from16 v21, v18

    .line 147
    .line 148
    move-wide/from16 v18, v14

    .line 149
    .line 150
    move-wide/from16 v14, v21

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    move-wide/from16 v18, v14

    .line 154
    .line 155
    move-wide/from16 v14, v16

    .line 156
    .line 157
    :goto_0
    long-to-int v14, v14

    .line 158
    add-long v3, v3, v18

    .line 159
    .line 160
    const-wide/32 v15, 0x7fffffff

    .line 161
    .line 162
    .line 163
    cmp-long v17, v3, v15

    .line 164
    .line 165
    if-lez v17, :cond_6

    .line 166
    .line 167
    move-wide v3, v15

    .line 168
    :cond_6
    long-to-int v3, v3

    .line 169
    invoke-static {v0, v14, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/DefaultPagerState;->getPageCount()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-static {v0, v7, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    sub-int/2addr v0, v13

    .line 182
    mul-int/2addr v0, v12

    .line 183
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    sub-int/2addr v0, v12

    .line 188
    if-gez v0, :cond_7

    .line 189
    .line 190
    move v0, v7

    .line 191
    :cond_7
    if-nez v0, :cond_8

    .line 192
    .line 193
    int-to-float v0, v0

    .line 194
    goto :goto_1

    .line 195
    :cond_8
    int-to-float v0, v0

    .line 196
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    mul-float/2addr v0, v1

    .line 201
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_9

    .line 206
    .line 207
    const-string v1, "calculateApproachOffset returned NaN. Please use a valid value."

    .line 208
    .line 209
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_9
    new-instance v12, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 213
    .line 214
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    iget v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$initialVelocity:F

    .line 222
    .line 223
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    mul-float/2addr v1, v0

    .line 228
    iput v1, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 229
    .line 230
    iget-object v0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$onRemainingScrollOffsetUpdate:Lkotlin/jvm/functions/Function1;

    .line 231
    .line 232
    new-instance v2, Ljava/lang/Float;

    .line 233
    .line 234
    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    .line 235
    .line 236
    .line 237
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    iget-object v0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 241
    .line 242
    iget-object v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$this_fling:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 243
    .line 244
    iget v2, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 245
    .line 246
    iget v3, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$initialVelocity:F

    .line 247
    .line 248
    iget-object v4, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$onRemainingScrollOffsetUpdate:Lkotlin/jvm/functions/Function1;

    .line 249
    .line 250
    new-instance v13, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$$ExternalSyntheticLambda0;

    .line 251
    .line 252
    invoke-direct {v13, v12, v4, v7}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;I)V

    .line 253
    .line 254
    .line 255
    iput-object v12, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->L$0:Ljava/lang/Object;

    .line 256
    .line 257
    iput v10, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->label:I

    .line 258
    .line 259
    move-object v4, v13

    .line 260
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->access$tryApproach(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$$ExternalSyntheticLambda0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-ne v0, v11, :cond_a

    .line 265
    .line 266
    goto/16 :goto_7

    .line 267
    .line 268
    :cond_a
    :goto_2
    check-cast v0, Landroidx/compose/animation/core/AnimationState;

    .line 269
    .line 270
    iget-object v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 271
    .line 272
    iget-object v1, v1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/cardview/widget/CardView$1;

    .line 273
    .line 274
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    check-cast v2, Ljava/lang/Number;

    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    iget-object v3, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v3, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 287
    .line 288
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    iget-object v4, v4, Landroidx/compose/foundation/pager/PagerMeasureResult;->snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 293
    .line 294
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    iget-object v13, v13, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 299
    .line 300
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 301
    .line 302
    .line 303
    move-result v14

    .line 304
    const/high16 v16, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 305
    .line 306
    move/from16 v18, v16

    .line 307
    .line 308
    const/high16 v17, -0x800000    # Float.NEGATIVE_INFINITY

    .line 309
    .line 310
    :goto_3
    if-ge v7, v14, :cond_d

    .line 311
    .line 312
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v19

    .line 316
    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 317
    .line 318
    move-object/from16 v15, v19

    .line 319
    .line 320
    check-cast v15, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 321
    .line 322
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 323
    .line 324
    .line 325
    move-result-object v19

    .line 326
    invoke-static/range {v19 .. v19}, Lkotlin/text/UStringsKt;->getMainAxisViewportSize(Landroidx/compose/foundation/pager/PagerMeasureResult;)I

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    iget v8, v8, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    .line 334
    .line 335
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    iget v8, v8, Landroidx/compose/foundation/pager/PagerMeasureResult;->afterContentPadding:I

    .line 340
    .line 341
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 342
    .line 343
    .line 344
    move-result-object v8

    .line 345
    iget v8, v8, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    .line 346
    .line 347
    iget v8, v15, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    .line 348
    .line 349
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/DefaultPagerState;->getPageCount()I

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    int-to-float v8, v8

    .line 356
    sub-float/2addr v8, v9

    .line 357
    cmpg-float v15, v8, v9

    .line 358
    .line 359
    if-gtz v15, :cond_b

    .line 360
    .line 361
    cmpl-float v15, v8, v17

    .line 362
    .line 363
    if-lez v15, :cond_b

    .line 364
    .line 365
    move/from16 v17, v8

    .line 366
    .line 367
    :cond_b
    cmpl-float v15, v8, v9

    .line 368
    .line 369
    if-ltz v15, :cond_c

    .line 370
    .line 371
    cmpg-float v15, v8, v18

    .line 372
    .line 373
    if-gez v15, :cond_c

    .line 374
    .line 375
    move/from16 v18, v8

    .line 376
    .line 377
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 378
    .line 379
    const/4 v8, 0x2

    .line 380
    goto :goto_3

    .line 381
    :cond_d
    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 382
    .line 383
    cmpg-float v4, v17, p1

    .line 384
    .line 385
    if-nez v4, :cond_e

    .line 386
    .line 387
    move/from16 v17, v18

    .line 388
    .line 389
    :cond_e
    cmpg-float v4, v18, v16

    .line 390
    .line 391
    if-nez v4, :cond_f

    .line 392
    .line 393
    move/from16 v18, v17

    .line 394
    .line 395
    :cond_f
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getCanScrollForward()Z

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    if-nez v4, :cond_11

    .line 400
    .line 401
    invoke-static {v3, v2}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;F)Z

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    if-eqz v4, :cond_10

    .line 406
    .line 407
    move/from16 v17, v9

    .line 408
    .line 409
    move/from16 v18, v17

    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_10
    move/from16 v18, v9

    .line 413
    .line 414
    :cond_11
    :goto_4
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getCanScrollBackward()Z

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    if-nez v4, :cond_12

    .line 419
    .line 420
    invoke-static {v3, v2}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;F)Z

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    move/from16 v17, v9

    .line 425
    .line 426
    if-nez v3, :cond_12

    .line 427
    .line 428
    move/from16 v18, v17

    .line 429
    .line 430
    :cond_12
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    new-instance v7, Lkotlin/Pair;

    .line 439
    .line 440
    invoke-direct {v7, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    check-cast v3, Ljava/lang/Number;

    .line 448
    .line 449
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    check-cast v4, Ljava/lang/Number;

    .line 458
    .line 459
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v1, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;

    .line 466
    .line 467
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 472
    .line 473
    .line 474
    move-result-object v7

    .line 475
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 476
    .line 477
    .line 478
    move-result-object v8

    .line 479
    invoke-virtual {v1, v2, v7, v8}, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    check-cast v1, Ljava/lang/Number;

    .line 484
    .line 485
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    cmpg-float v2, v1, v3

    .line 490
    .line 491
    if-nez v2, :cond_13

    .line 492
    .line 493
    goto :goto_5

    .line 494
    :cond_13
    cmpg-float v2, v1, v4

    .line 495
    .line 496
    if-nez v2, :cond_14

    .line 497
    .line 498
    goto :goto_5

    .line 499
    :cond_14
    cmpg-float v2, v1, v9

    .line 500
    .line 501
    if-nez v2, :cond_15

    .line 502
    .line 503
    goto :goto_5

    .line 504
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    const-string v7, "Final Snapping Offset Should Be one of "

    .line 507
    .line 508
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    const-string v3, ", "

    .line 515
    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    const-string v3, " or 0.0"

    .line 523
    .line 524
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    :goto_5
    cmpg-float v2, v1, v16

    .line 535
    .line 536
    if-nez v2, :cond_16

    .line 537
    .line 538
    goto :goto_6

    .line 539
    :cond_16
    cmpg-float v2, v1, p1

    .line 540
    .line 541
    if-nez v2, :cond_17

    .line 542
    .line 543
    :goto_6
    move v1, v9

    .line 544
    :cond_17
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 545
    .line 546
    .line 547
    move-result v2

    .line 548
    if-eqz v2, :cond_18

    .line 549
    .line 550
    const-string v2, "calculateSnapOffset returned NaN. Please use a valid value."

    .line 551
    .line 552
    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    :cond_18
    iput v1, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 556
    .line 557
    iget-object v2, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$this_fling:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 558
    .line 559
    const/16 v3, 0x1e

    .line 560
    .line 561
    invoke-static {v0, v9, v9, v3}, Landroidx/compose/animation/core/ArcSplineKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFI)Landroidx/compose/animation/core/AnimationState;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    iget-object v0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->this$0:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 566
    .line 567
    iget-object v4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 568
    .line 569
    iget-object v0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->$onRemainingScrollOffsetUpdate:Lkotlin/jvm/functions/Function1;

    .line 570
    .line 571
    new-instance v7, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$$ExternalSyntheticLambda0;

    .line 572
    .line 573
    invoke-direct {v7, v12, v0, v10}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;I)V

    .line 574
    .line 575
    .line 576
    iput-object v6, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->L$0:Ljava/lang/Object;

    .line 577
    .line 578
    const/4 v0, 0x2

    .line 579
    iput v0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->label:I

    .line 580
    .line 581
    move-object v0, v2

    .line 582
    move v2, v1

    .line 583
    move-object v6, v5

    .line 584
    move-object v5, v7

    .line 585
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->access$animateWithTarget(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    if-ne v0, v11, :cond_19

    .line 590
    .line 591
    :goto_7
    return-object v11

    .line 592
    :cond_19
    return-object v0
.end method
