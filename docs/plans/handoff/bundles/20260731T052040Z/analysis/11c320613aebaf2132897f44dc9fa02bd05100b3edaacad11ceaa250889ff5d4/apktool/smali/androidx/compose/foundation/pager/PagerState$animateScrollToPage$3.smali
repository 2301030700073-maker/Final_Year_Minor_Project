.class public final Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec;"
        }
    .end annotation
.end field

.field final synthetic $targetPage:I

.field final synthetic $targetPageOffsetToSnappedPosition:F

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->this$0:Landroidx/compose/foundation/pager/PagerState;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$targetPage:I

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$targetPageOffsetToSnappedPosition:F

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

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
    new-instance v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->this$0:Landroidx/compose/foundation/pager/PagerState;

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$targetPage:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$targetPageOffsetToSnappedPosition:F

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;-><init>(Landroidx/compose/foundation/pager/PagerState;IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    iget v0, v4, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->label:I

    .line 4
    .line 5
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v6

    .line 16
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v4, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->L$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 29
    .line 30
    iget-object v2, v4, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->this$0:Landroidx/compose/foundation/pager/PagerState;

    .line 31
    .line 32
    new-instance v3, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;

    .line 33
    .line 34
    invoke-direct {v3, v0, v2}, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;-><init>(Landroidx/compose/foundation/gestures/ScrollScope;Landroidx/compose/foundation/pager/PagerState;)V

    .line 35
    .line 36
    .line 37
    iget v0, v4, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$targetPage:I

    .line 38
    .line 39
    iget v5, v4, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$targetPageOffsetToSnappedPosition:F

    .line 40
    .line 41
    iget-object v7, v4, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 42
    .line 43
    iput v1, v4, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->label:I

    .line 44
    .line 45
    sget-object v8, Landroidx/compose/foundation/pager/PagerStateKt;->UnitDensity:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 46
    .line 47
    new-instance v8, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    invoke-virtual {v2, v8}, Landroidx/compose/foundation/pager/PagerState;->coerceInPageRange(I)I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    iget-object v9, v2, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 61
    .line 62
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 63
    .line 64
    .line 65
    iget v8, v2, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    .line 66
    .line 67
    if-le v0, v8, :cond_2

    .line 68
    .line 69
    move v8, v1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v8, 0x0

    .line 72
    :goto_0
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    iget-object v9, v9, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 77
    .line 78
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 83
    .line 84
    iget v9, v9, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 85
    .line 86
    iget v10, v2, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    .line 87
    .line 88
    sub-int/2addr v9, v10

    .line 89
    add-int/2addr v9, v1

    .line 90
    const/4 v10, 0x0

    .line 91
    if-eqz v8, :cond_3

    .line 92
    .line 93
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    iget-object v11, v11, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 98
    .line 99
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    check-cast v11, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 104
    .line 105
    iget v11, v11, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 106
    .line 107
    if-gt v0, v11, :cond_4

    .line 108
    .line 109
    :cond_3
    if-nez v8, :cond_9

    .line 110
    .line 111
    iget v11, v2, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    .line 112
    .line 113
    if-ge v0, v11, :cond_9

    .line 114
    .line 115
    :cond_4
    iget v11, v2, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    .line 116
    .line 117
    sub-int v11, v0, v11

    .line 118
    .line 119
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    const/4 v12, 0x3

    .line 124
    if-lt v11, v12, :cond_9

    .line 125
    .line 126
    iget v11, v2, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    .line 127
    .line 128
    if-eqz v8, :cond_6

    .line 129
    .line 130
    sub-int v8, v0, v9

    .line 131
    .line 132
    if-ge v8, v11, :cond_5

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    move v11, v8

    .line 136
    goto :goto_1

    .line 137
    :cond_6
    add-int/2addr v9, v0

    .line 138
    if-le v9, v11, :cond_7

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_7
    move v11, v9

    .line 142
    :goto_1
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    int-to-float v8, v8

    .line 147
    cmpg-float v9, v8, v10

    .line 148
    .line 149
    if-nez v9, :cond_8

    .line 150
    .line 151
    move v8, v10

    .line 152
    goto :goto_2

    .line 153
    :cond_8
    div-float v8, v10, v8

    .line 154
    .line 155
    :goto_2
    invoke-virtual {v2, v8, v11, v1}, Landroidx/compose/foundation/pager/PagerState;->snapToItem$foundation(FIZ)V

    .line 156
    .line 157
    .line 158
    :cond_9
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    sub-int/2addr v0, v1

    .line 163
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    mul-int/2addr v1, v0

    .line 168
    int-to-float v0, v1

    .line 169
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    int-to-float v8, v8

    .line 178
    mul-float/2addr v1, v8

    .line 179
    sub-float/2addr v0, v1

    .line 180
    add-float/2addr v0, v10

    .line 181
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-static {v2}, Lokio/Options$Companion;->currentAbsoluteScrollOffset(Landroidx/compose/foundation/pager/PagerState;)J

    .line 186
    .line 187
    .line 188
    move-result-wide v8

    .line 189
    int-to-long v0, v0

    .line 190
    add-long v10, v8, v0

    .line 191
    .line 192
    iget-wide v12, v2, Landroidx/compose/foundation/pager/PagerState;->minScrollOffset:J

    .line 193
    .line 194
    iget-wide v14, v2, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:J

    .line 195
    .line 196
    invoke-static/range {v10 .. v15}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    .line 197
    .line 198
    .line 199
    move-result-wide v0

    .line 200
    invoke-static {v2}, Lokio/Options$Companion;->currentAbsoluteScrollOffset(Landroidx/compose/foundation/pager/PagerState;)J

    .line 201
    .line 202
    .line 203
    move-result-wide v8

    .line 204
    sub-long/2addr v0, v8

    .line 205
    long-to-int v0, v0

    .line 206
    int-to-float v0, v0

    .line 207
    add-float v1, v0, v5

    .line 208
    .line 209
    new-instance v0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 210
    .line 211
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 212
    .line 213
    .line 214
    new-instance v2, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;

    .line 215
    .line 216
    const/4 v5, 0x5

    .line 217
    invoke-direct {v2, v0, v3, v5}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 218
    .line 219
    .line 220
    const/4 v5, 0x4

    .line 221
    const/4 v0, 0x0

    .line 222
    move-object v3, v2

    .line 223
    move-object v2, v7

    .line 224
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->animate$default(FFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 229
    .line 230
    if-ne v0, v1, :cond_a

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_a
    move-object v0, v6

    .line 234
    :goto_3
    if-ne v0, v1, :cond_b

    .line 235
    .line 236
    return-object v1

    .line 237
    :cond_b
    return-object v6
.end method
