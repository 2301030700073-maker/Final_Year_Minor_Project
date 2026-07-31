.class public abstract Landroidx/compose/foundation/pager/PagerState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# instance fields
.field public accumulator:F

.field public approachLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

.field public final awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

.field public final beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

.field public final cacheWindowLogic:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

.field public final canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public density:Landroidx/compose/ui/unit/Density;

.field public firstVisiblePage:I

.field public firstVisiblePageOffset:I

.field public hasLookaheadOccurred:Z

.field public final internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final isLastScrollBackwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isLastScrollForwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public latestPageSizeWithSpacing:I

.field public maxScrollOffset:J

.field public final measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

.field public minScrollOffset:J

.field public final pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final pinnedPages:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

.field public final placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

.field public final prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field public final prefetchingEnabled:Z

.field public previousPassDelta:F

.field public final programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final remeasurement$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

.field public final scrollPosition:Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

.field public final scrollableState:Landroidx/compose/foundation/gestures/DefaultScrollableState;

.field public final settledPageState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final upDownDifference$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(IF)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    float-to-double v0, p2

    .line 5
    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    .line 6
    .line 7
    cmpg-double v2, v2, v0

    .line 8
    .line 9
    if-gtz v2, :cond_0

    .line 10
    .line 11
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 12
    .line 13
    cmpg-double v0, v0, v2

    .line 14
    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "currentPageOffsetFraction "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " is not within the range -0.5 to 0.5"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 41
    .line 42
    const-wide/16 v1, 0x0

    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->upDownDifference$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 52
    .line 53
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    .line 54
    .line 55
    invoke-direct {v0, p1, p2, p0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;-><init>(IFLandroidx/compose/foundation/pager/PagerState;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    .line 59
    .line 60
    iput p1, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    .line 61
    .line 62
    const-wide v0, 0x7fffffffffffffffL

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    iput-wide v0, p0, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:J

    .line 68
    .line 69
    new-instance p2, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 76
    .line 77
    invoke-direct {v1, p2}, Landroidx/compose/foundation/gestures/DefaultScrollableState;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 81
    .line 82
    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchingEnabled:Z

    .line 84
    .line 85
    sget-object v1, Landroidx/compose/foundation/pager/PagerStateKt;->EmptyLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 86
    .line 87
    sget-object v2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 88
    .line 89
    new-instance v3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 90
    .line 91
    invoke-direct {v3, v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 92
    .line 93
    .line 94
    iput-object v3, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 95
    .line 96
    sget-object v1, Landroidx/compose/foundation/pager/PagerStateKt;->UnitDensity:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 97
    .line 98
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    .line 99
    .line 100
    new-instance v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 101
    .line 102
    invoke-direct {v1}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 106
    .line 107
    new-instance v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 108
    .line 109
    const/4 v2, -0x1

    .line 110
    invoke-direct {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 111
    .line 112
    .line 113
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 114
    .line 115
    new-instance v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 116
    .line 117
    invoke-direct {v1, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 118
    .line 119
    .line 120
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->settledPageState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 121
    .line 122
    sget-object p1, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->calculationBlockNestedLevel:Lcom/caverock/androidsvg/SVG;

    .line 123
    .line 124
    new-instance p1, Landroidx/compose/runtime/internal/AtomicInt;

    .line 125
    .line 126
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 130
    .line 131
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    invoke-direct {p1, v1, v2}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;-><init>(J)V

    .line 140
    .line 141
    .line 142
    new-instance p1, Landroidx/compose/runtime/internal/AtomicInt;

    .line 143
    .line 144
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 145
    .line 146
    .line 147
    new-instance p1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 148
    .line 149
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    invoke-direct {p1, v1, v2}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;-><init>(J)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 161
    .line 162
    new-instance v1, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda0;

    .line 163
    .line 164
    invoke-direct {v1, p0, p2}, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 165
    .line 166
    .line 167
    invoke-direct {p1, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 168
    .line 169
    .line 170
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 171
    .line 172
    new-instance p2, Landroidx/appcompat/widget/PopupMenu$1;

    .line 173
    .line 174
    const/16 v1, 0x14

    .line 175
    .line 176
    invoke-direct {p2, v1, p0}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 180
    .line 181
    new-instance v2, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda2;

    .line 182
    .line 183
    invoke-direct {v2, p0, v0}, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 184
    .line 185
    .line 186
    invoke-direct {v1, p2, p1, v2}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;-><init>(Landroidx/appcompat/widget/PopupMenu$1;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda2;)V

    .line 187
    .line 188
    .line 189
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->cacheWindowLogic:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 190
    .line 191
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 192
    .line 193
    invoke-direct {p1, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;-><init>(I)V

    .line 194
    .line 195
    .line 196
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 197
    .line 198
    new-instance p1, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 199
    .line 200
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 201
    .line 202
    .line 203
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 204
    .line 205
    const/4 p1, 0x0

    .line 206
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurement$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 211
    .line 212
    new-instance p1, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    .line 213
    .line 214
    invoke-direct {p1, p0, v0}, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;I)V

    .line 215
    .line 216
    .line 217
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    .line 218
    .line 219
    const/16 p1, 0xf

    .line 220
    .line 221
    invoke-static {v0, v0, v0, v0, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 222
    .line 223
    .line 224
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 225
    .line 226
    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;-><init>()V

    .line 227
    .line 228
    .line 229
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->pinnedPages:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 230
    .line 231
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->constructor-impl$default()Landroidx/compose/runtime/MutableState;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 236
    .line 237
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->constructor-impl$default()Landroidx/compose/runtime/MutableState;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 242
    .line 243
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 244
    .line 245
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 250
    .line 251
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 256
    .line 257
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->isLastScrollForwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 262
    .line 263
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->isLastScrollBackwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 268
    .line 269
    return-void
.end method

.method public static synthetic animateScrollToPage$default(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x7

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v0, v2, v1}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/foundation/pager/PagerState;->animateScrollToPage(ILandroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static scroll$suspendImpl(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/pager/PagerState$scroll$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v5, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Landroidx/compose/foundation/pager/PagerState;

    .line 41
    .line 42
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v3

    .line 52
    :cond_2
    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$2:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 53
    .line 54
    move-object p2, p0

    .line 55
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 56
    .line 57
    iget-object p1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$1:Landroidx/compose/foundation/MutatePriority;

    .line 58
    .line 59
    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Landroidx/compose/foundation/pager/PagerState;

    .line 60
    .line 61
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Landroidx/compose/foundation/pager/PagerState;

    .line 69
    .line 70
    iput-object p1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$1:Landroidx/compose/foundation/MutatePriority;

    .line 71
    .line 72
    move-object p3, p2

    .line 73
    check-cast p3, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 74
    .line 75
    iput-object p3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$2:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 76
    .line 77
    iput v5, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/pager/PagerState;->awaitScrollDependencies(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    if-ne p3, v1, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    :goto_1
    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 87
    .line 88
    invoke-virtual {p3}, Landroidx/compose/foundation/gestures/DefaultScrollableState;->isScrollInProgress()Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-nez p3, :cond_5

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerState;->settledPageState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 99
    .line 100
    invoke-virtual {v2, p3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 101
    .line 102
    .line 103
    :cond_5
    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 104
    .line 105
    iput-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Landroidx/compose/foundation/pager/PagerState;

    .line 106
    .line 107
    iput-object v3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$1:Landroidx/compose/foundation/MutatePriority;

    .line 108
    .line 109
    iput-object v3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$2:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 110
    .line 111
    iput v4, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    .line 112
    .line 113
    invoke-virtual {p3, p1, p2, v0}, Landroidx/compose/foundation/gestures/DefaultScrollableState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-ne p1, v1, :cond_6

    .line 118
    .line 119
    :goto_2
    return-object v1

    .line 120
    :cond_6
    :goto_3
    const/4 p1, -0x1

    .line 121
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 124
    .line 125
    .line 126
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 127
    .line 128
    return-object p0
.end method


# virtual methods
.method public final animateScrollToPage(ILandroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v3, p3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    .line 2
    .line 3
    if-eqz v3, :cond_0

    .line 4
    .line 5
    move-object v3, p3

    .line 6
    check-cast v3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    .line 7
    .line 8
    iget v4, v3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    .line 9
    .line 10
    const/high16 v5, -0x80000000

    .line 11
    .line 12
    and-int v6, v4, v5

    .line 13
    .line 14
    if-eqz v6, :cond_0

    .line 15
    .line 16
    sub-int/2addr v4, v5

    .line 17
    iput v4, v3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    .line 22
    .line 23
    invoke-direct {v3, p0, p3}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object v2, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v3, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    .line 37
    const/4 v10, 0x2

    .line 38
    const/4 v5, 0x1

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    if-eq v3, v5, :cond_2

    .line 42
    .line 43
    if-ne v3, v10, :cond_1

    .line 44
    .line 45
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-object v9

    .line 49
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v8

    .line 55
    :cond_2
    iget v0, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->I$0:I

    .line 56
    .line 57
    iget-object v3, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$0:Landroidx/compose/animation/core/SpringSpec;

    .line 58
    .line 59
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move v2, v4

    .line 63
    move-object v4, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-ne p1, v2, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    cmpg-float v2, v2, v4

    .line 79
    .line 80
    if-nez v2, :cond_4

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_5

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_5
    iput-object p2, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$0:Landroidx/compose/animation/core/SpringSpec;

    .line 91
    .line 92
    iput p1, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->I$0:I

    .line 93
    .line 94
    iput v5, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    .line 95
    .line 96
    invoke-virtual {p0, v6}, Landroidx/compose/foundation/pager/PagerState;->awaitScrollDependencies(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-ne v3, v7, :cond_6

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_6
    move v0, p1

    .line 104
    move v2, v4

    .line 105
    move-object v4, p2

    .line 106
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/pager/PagerState;->coerceInPageRange(I)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    int-to-float v3, v3

    .line 115
    mul-float/2addr v3, v2

    .line 116
    move v2, v0

    .line 117
    new-instance v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;

    .line 118
    .line 119
    const/4 v5, 0x0

    .line 120
    move-object v1, p0

    .line 121
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;-><init>(Landroidx/compose/foundation/pager/PagerState;IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 122
    .line 123
    .line 124
    iput-object v8, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$0:Landroidx/compose/animation/core/SpringSpec;

    .line 125
    .line 126
    iput v10, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    .line 127
    .line 128
    sget-object v2, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    .line 129
    .line 130
    invoke-virtual {p0, v2, v0, v6}, Landroidx/compose/foundation/pager/PagerState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-ne v0, v7, :cond_7

    .line 135
    .line 136
    :goto_3
    return-object v7

    .line 137
    :cond_7
    :goto_4
    return-object v9
.end method

.method public final applyMeasureResult$foundation(Landroidx/compose/foundation/pager/PagerMeasureResult;ZZ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 6
    .line 7
    iget v3, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePageScrollOffset:I

    .line 8
    .line 9
    iget-object v4, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePage:Landroidx/compose/foundation/pager/MeasuredPage;

    .line 10
    .line 11
    iget-object v5, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->currentPage:Landroidx/compose/foundation/pager/MeasuredPage;

    .line 12
    .line 13
    iget v6, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->currentPageOffsetFraction:F

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 20
    .line 21
    iput v7, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->idealNestedPrefetchCount:I

    .line 22
    .line 23
    iget v7, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    .line 24
    .line 25
    iget v8, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    .line 26
    .line 27
    add-int/2addr v8, v7

    .line 28
    iput v8, v0, Landroidx/compose/foundation/pager/PagerState;->latestPageSizeWithSpacing:I

    .line 29
    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    iget-boolean v8, v0, Landroidx/compose/foundation/pager/PagerState;->hasLookaheadOccurred:Z

    .line 33
    .line 34
    if-eqz v8, :cond_0

    .line 35
    .line 36
    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerState;->approachLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v8, 0x1

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iput-boolean v8, v0, Landroidx/compose/foundation/pager/PagerState;->hasLookaheadOccurred:Z

    .line 43
    .line 44
    :cond_1
    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerState;->cacheWindowLogic:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 45
    .line 46
    iget-boolean v10, v0, Landroidx/compose/foundation/pager/PagerState;->prefetchingEnabled:Z

    .line 47
    .line 48
    const/16 v18, 0x0

    .line 49
    .line 50
    const/4 v11, 0x0

    .line 51
    iget-object v12, v0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    .line 52
    .line 53
    if-eqz p3, :cond_3

    .line 54
    .line 55
    iget-object v2, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 58
    .line 59
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 60
    .line 61
    .line 62
    :cond_2
    move v2, v8

    .line 63
    move/from16 v19, v10

    .line 64
    .line 65
    move v5, v11

    .line 66
    goto/16 :goto_11

    .line 67
    .line 68
    :cond_3
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    iget-object v13, v5, Landroidx/compose/foundation/pager/MeasuredPage;->key:Ljava/lang/Object;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    move-object/from16 v13, v18

    .line 77
    .line 78
    :goto_0
    iput-object v13, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 79
    .line 80
    iget-boolean v13, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_useRealPropertyDefaults:Z

    .line 81
    .line 82
    if-nez v13, :cond_5

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_7

    .line 89
    .line 90
    :cond_5
    iput-boolean v8, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_useRealPropertyDefaults:Z

    .line 91
    .line 92
    if-eqz v5, :cond_6

    .line 93
    .line 94
    iget v2, v5, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    move v2, v11

    .line 98
    :goto_1
    iget-object v5, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v5, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 101
    .line 102
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 103
    .line 104
    .line 105
    iget-object v5, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 108
    .line 109
    invoke-virtual {v5, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    .line 110
    .line 111
    .line 112
    iget-object v2, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v2, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 115
    .line 116
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 117
    .line 118
    .line 119
    :cond_7
    if-eqz v10, :cond_2

    .line 120
    .line 121
    move v2, v10

    .line 122
    iget-object v10, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Lcom/caverock/androidsvg/SVG;

    .line 123
    .line 124
    iget-object v5, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    .line 125
    .line 126
    iput-object v1, v10, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 127
    .line 128
    iget-object v6, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 129
    .line 130
    iput-object v6, v10, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 131
    .line 132
    iget-object v6, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindow:Landroidx/appcompat/widget/PopupMenu$1;

    .line 133
    .line 134
    iget v12, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->previousPassItemCount:I

    .line 135
    .line 136
    const/4 v13, -0x1

    .line 137
    const/4 v14, 0x0

    .line 138
    if-eq v12, v13, :cond_d

    .line 139
    .line 140
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getTotalItemsCount()I

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    if-eq v12, v15, :cond_d

    .line 145
    .line 146
    iput-boolean v8, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->shouldRefillWindow:Z

    .line 147
    .line 148
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getHasVisibleItems()Z

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    if-eqz v12, :cond_d

    .line 153
    .line 154
    iget v12, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 155
    .line 156
    if-gez v12, :cond_8

    .line 157
    .line 158
    move v12, v11

    .line 159
    :cond_8
    iput v12, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 160
    .line 161
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    iget-object v12, v12, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    if-eqz v12, :cond_9

    .line 172
    .line 173
    move v12, v13

    .line 174
    goto :goto_2

    .line 175
    :cond_9
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getTotalItemsCount()I

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    sub-int/2addr v12, v8

    .line 180
    :goto_2
    if-eq v12, v13, :cond_b

    .line 181
    .line 182
    iget v15, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 183
    .line 184
    if-le v15, v12, :cond_a

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_a
    move v12, v15

    .line 188
    :goto_3
    iput v12, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 189
    .line 190
    :cond_b
    iget v12, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->previousPassDelta:F

    .line 191
    .line 192
    cmpg-float v12, v12, v14

    .line 193
    .line 194
    if-gtz v12, :cond_c

    .line 195
    .line 196
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLastVisibleLineIndex()I

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    iget v15, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->itemsCount:I

    .line 201
    .line 202
    sub-int/2addr v15, v8

    .line 203
    invoke-virtual {v9, v12, v15}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->removeOutOfBoundsItems(II)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_c
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getFirstVisibleLineIndex()I

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    invoke-virtual {v9, v11, v12}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->removeOutOfBoundsItems(II)V

    .line 212
    .line 213
    .line 214
    :cond_d
    :goto_4
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getTotalItemsCount()I

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    iput v12, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->itemsCount:I

    .line 219
    .line 220
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getHasVisibleItems()Z

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    if-eqz v12, :cond_1f

    .line 225
    .line 226
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    iget-object v12, v12, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    .line 231
    .line 232
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 233
    .line 234
    .line 235
    move-result v12

    .line 236
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 237
    .line 238
    .line 239
    move-result-object v15

    .line 240
    iget-object v15, v15, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 241
    .line 242
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 243
    .line 244
    .line 245
    move-result v15

    .line 246
    add-int/2addr v15, v12

    .line 247
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 248
    .line 249
    .line 250
    move-result-object v12

    .line 251
    iget-object v12, v12, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesAfter:Ljava/util/List;

    .line 252
    .line 253
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    add-int/2addr v12, v15

    .line 258
    move v15, v11

    .line 259
    :goto_5
    if-ge v15, v12, :cond_1a

    .line 260
    .line 261
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    iget-object v11, v11, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    .line 266
    .line 267
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 268
    .line 269
    .line 270
    move-result v11

    .line 271
    move/from16 p3, v14

    .line 272
    .line 273
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 274
    .line 275
    .line 276
    move-result-object v14

    .line 277
    iget-object v14, v14, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 278
    .line 279
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 280
    .line 281
    .line 282
    move-result v14

    .line 283
    if-ge v15, v11, :cond_e

    .line 284
    .line 285
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    iget-object v11, v11, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    .line 290
    .line 291
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    check-cast v11, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 296
    .line 297
    iget v11, v11, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_e
    if-lt v15, v11, :cond_f

    .line 301
    .line 302
    add-int v8, v11, v14

    .line 303
    .line 304
    if-ge v15, v8, :cond_f

    .line 305
    .line 306
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    iget-object v8, v8, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 311
    .line 312
    sub-int v11, v15, v11

    .line 313
    .line 314
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    check-cast v8, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 319
    .line 320
    iget v11, v8, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_f
    add-int v8, v11, v14

    .line 324
    .line 325
    if-lt v15, v8, :cond_10

    .line 326
    .line 327
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 328
    .line 329
    .line 330
    move-result-object v8

    .line 331
    iget-object v8, v8, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesAfter:Ljava/util/List;

    .line 332
    .line 333
    sub-int v11, v15, v11

    .line 334
    .line 335
    sub-int/2addr v11, v14

    .line 336
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    check-cast v8, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 341
    .line 342
    iget v11, v8, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_10
    move v11, v13

    .line 346
    :goto_6
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    iget-object v8, v8, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    .line 351
    .line 352
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 353
    .line 354
    .line 355
    move-result v8

    .line 356
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 357
    .line 358
    .line 359
    move-result-object v14

    .line 360
    iget-object v14, v14, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 361
    .line 362
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 363
    .line 364
    .line 365
    move-result v14

    .line 366
    if-ge v15, v8, :cond_11

    .line 367
    .line 368
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    iget-object v8, v8, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    .line 373
    .line 374
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v8

    .line 378
    check-cast v8, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 379
    .line 380
    iget-object v8, v8, Landroidx/compose/foundation/pager/MeasuredPage;->key:Ljava/lang/Object;

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_11
    if-lt v15, v8, :cond_12

    .line 384
    .line 385
    add-int v13, v8, v14

    .line 386
    .line 387
    if-ge v15, v13, :cond_12

    .line 388
    .line 389
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 390
    .line 391
    .line 392
    move-result-object v13

    .line 393
    iget-object v13, v13, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 394
    .line 395
    sub-int v8, v15, v8

    .line 396
    .line 397
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v8

    .line 401
    check-cast v8, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 402
    .line 403
    iget-object v8, v8, Landroidx/compose/foundation/pager/MeasuredPage;->key:Ljava/lang/Object;

    .line 404
    .line 405
    goto :goto_7

    .line 406
    :cond_12
    add-int v13, v8, v14

    .line 407
    .line 408
    if-lt v15, v13, :cond_13

    .line 409
    .line 410
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    iget-object v13, v13, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesAfter:Ljava/util/List;

    .line 415
    .line 416
    sub-int v8, v15, v8

    .line 417
    .line 418
    sub-int/2addr v8, v14

    .line 419
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v8

    .line 423
    check-cast v8, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 424
    .line 425
    iget-object v8, v8, Landroidx/compose/foundation/pager/MeasuredPage;->key:Ljava/lang/Object;

    .line 426
    .line 427
    goto :goto_7

    .line 428
    :cond_13
    sget-object v8, Landroidx/compose/foundation/lazy/layout/CachedItem;->NoKey:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    .line 429
    .line 430
    :goto_7
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 431
    .line 432
    .line 433
    move-result-object v13

    .line 434
    iget v13, v13, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    .line 435
    .line 436
    const/4 v14, -0x1

    .line 437
    if-eq v11, v14, :cond_18

    .line 438
    .line 439
    invoke-virtual {v5, v11}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 440
    .line 441
    .line 442
    move-result v16

    .line 443
    if-eqz v16, :cond_16

    .line 444
    .line 445
    invoke-virtual {v5, v11}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v16

    .line 449
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    move-object/from16 v14, v16

    .line 453
    .line 454
    check-cast v14, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 455
    .line 456
    iget v14, v14, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    .line 457
    .line 458
    invoke-virtual {v5, v11}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v16

    .line 462
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    move/from16 v19, v2

    .line 466
    .line 467
    move-object/from16 v2, v16

    .line 468
    .line 469
    check-cast v2, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 470
    .line 471
    iget-object v2, v2, Landroidx/compose/foundation/lazy/layout/CachedItem;->key:Ljava/lang/Object;

    .line 472
    .line 473
    if-ne v14, v13, :cond_14

    .line 474
    .line 475
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-nez v2, :cond_15

    .line 480
    .line 481
    :cond_14
    const/4 v2, 0x1

    .line 482
    goto :goto_9

    .line 483
    :cond_15
    :goto_8
    const/4 v2, 0x1

    .line 484
    goto :goto_a

    .line 485
    :goto_9
    iput-boolean v2, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->shouldRefillWindow:Z

    .line 486
    .line 487
    goto :goto_a

    .line 488
    :cond_16
    move/from16 v19, v2

    .line 489
    .line 490
    goto :goto_8

    .line 491
    :goto_a
    invoke-virtual {v5, v11}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v14

    .line 495
    check-cast v14, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 496
    .line 497
    if-eqz v14, :cond_17

    .line 498
    .line 499
    iput v13, v14, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    .line 500
    .line 501
    iput-object v8, v14, Landroidx/compose/foundation/lazy/layout/CachedItem;->key:Ljava/lang/Object;

    .line 502
    .line 503
    goto :goto_b

    .line 504
    :cond_17
    new-instance v14, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 505
    .line 506
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 507
    .line 508
    .line 509
    iput-object v8, v14, Landroidx/compose/foundation/lazy/layout/CachedItem;->key:Ljava/lang/Object;

    .line 510
    .line 511
    iput v13, v14, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    .line 512
    .line 513
    :goto_b
    invoke-virtual {v5, v11, v14}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    iget v8, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 517
    .line 518
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    .line 519
    .line 520
    .line 521
    move-result v8

    .line 522
    iput v8, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 523
    .line 524
    iget v8, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 525
    .line 526
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    .line 527
    .line 528
    .line 529
    move-result v8

    .line 530
    iput v8, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 531
    .line 532
    iget-object v8, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    .line 533
    .line 534
    invoke-virtual {v8, v11}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v8

    .line 538
    check-cast v8, Ljava/util/List;

    .line 539
    .line 540
    if-eqz v8, :cond_19

    .line 541
    .line 542
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 543
    .line 544
    .line 545
    move-result v11

    .line 546
    const/4 v13, 0x0

    .line 547
    :goto_c
    if-ge v13, v11, :cond_19

    .line 548
    .line 549
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v14

    .line 553
    check-cast v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 554
    .line 555
    invoke-interface {v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 556
    .line 557
    .line 558
    add-int/lit8 v13, v13, 0x1

    .line 559
    .line 560
    goto :goto_c

    .line 561
    :cond_18
    move/from16 v19, v2

    .line 562
    .line 563
    const/4 v2, 0x1

    .line 564
    :cond_19
    add-int/lit8 v15, v15, 0x1

    .line 565
    .line 566
    move/from16 v14, p3

    .line 567
    .line 568
    move v8, v2

    .line 569
    move/from16 v2, v19

    .line 570
    .line 571
    const/4 v11, 0x0

    .line 572
    const/4 v13, -0x1

    .line 573
    goto/16 :goto_5

    .line 574
    .line 575
    :cond_1a
    move/from16 v19, v2

    .line 576
    .line 577
    move v2, v8

    .line 578
    move/from16 p3, v14

    .line 579
    .line 580
    iget-boolean v5, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->shouldRefillWindow:Z

    .line 581
    .line 582
    if-eqz v5, :cond_1e

    .line 583
    .line 584
    iget v5, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->previousPassDelta:F

    .line 585
    .line 586
    cmpg-float v5, v5, p3

    .line 587
    .line 588
    if-gtz v5, :cond_1b

    .line 589
    .line 590
    move/from16 v17, v2

    .line 591
    .line 592
    goto :goto_d

    .line 593
    :cond_1b
    const/16 v17, 0x0

    .line 594
    .line 595
    :goto_d
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getHasVisibleItems()Z

    .line 596
    .line 597
    .line 598
    move-result v5

    .line 599
    if-eqz v5, :cond_1d

    .line 600
    .line 601
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 602
    .line 603
    .line 604
    move-result-object v5

    .line 605
    invoke-static {v5}, Landroidx/work/Operation$State;->getMainAxisViewportSize(Landroidx/compose/foundation/pager/PagerMeasureResult;)I

    .line 606
    .line 607
    .line 608
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 609
    .line 610
    .line 611
    move-result-object v5

    .line 612
    iget-object v5, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    .line 613
    .line 614
    if-eqz v5, :cond_1c

    .line 615
    .line 616
    iget-object v5, v6, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 617
    .line 618
    check-cast v5, Landroidx/compose/foundation/pager/PagerState;

    .line 619
    .line 620
    iget v5, v5, Landroidx/compose/foundation/pager/PagerState;->latestPageSizeWithSpacing:I

    .line 621
    .line 622
    move v13, v5

    .line 623
    goto :goto_e

    .line 624
    :cond_1c
    const/4 v13, 0x0

    .line 625
    :goto_e
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getFirstVisibleLineIndex()I

    .line 626
    .line 627
    .line 628
    move-result v11

    .line 629
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getLastVisibleLineIndex()I

    .line 630
    .line 631
    .line 632
    move-result v12

    .line 633
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getMainAxisExtraSpaceStart()I

    .line 634
    .line 635
    .line 636
    move-result v15

    .line 637
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getMainAxisExtraSpaceEnd()I

    .line 638
    .line 639
    .line 640
    move-result v14

    .line 641
    const/16 v16, 0x0

    .line 642
    .line 643
    const/4 v5, 0x0

    .line 644
    invoke-virtual/range {v9 .. v17}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->onPrefetchForward(Lcom/caverock/androidsvg/SVG;IIIIIFZ)V

    .line 645
    .line 646
    .line 647
    goto :goto_f

    .line 648
    :cond_1d
    const/4 v5, 0x0

    .line 649
    :goto_f
    iput-boolean v5, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->shouldRefillWindow:Z

    .line 650
    .line 651
    goto :goto_10

    .line 652
    :cond_1e
    const/4 v5, 0x0

    .line 653
    goto :goto_10

    .line 654
    :cond_1f
    move/from16 v19, v2

    .line 655
    .line 656
    move v2, v8

    .line 657
    move v5, v11

    .line 658
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->resetStrategy()V

    .line 659
    .line 660
    .line 661
    :goto_10
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG;->getTotalItemsCount()I

    .line 662
    .line 663
    .line 664
    move-result v6

    .line 665
    iput v6, v9, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->previousPassItemCount:I

    .line 666
    .line 667
    :goto_11
    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 668
    .line 669
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 670
    .line 671
    .line 672
    iget-boolean v6, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->canScrollForward:Z

    .line 673
    .line 674
    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 675
    .line 676
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 677
    .line 678
    .line 679
    move-result-object v6

    .line 680
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    if-eqz v4, :cond_20

    .line 684
    .line 685
    iget v11, v4, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 686
    .line 687
    goto :goto_12

    .line 688
    :cond_20
    move v11, v5

    .line 689
    :goto_12
    if-nez v11, :cond_22

    .line 690
    .line 691
    if-eqz v3, :cond_21

    .line 692
    .line 693
    goto :goto_13

    .line 694
    :cond_21
    move v8, v5

    .line 695
    goto :goto_14

    .line 696
    :cond_22
    :goto_13
    move v8, v2

    .line 697
    :goto_14
    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 698
    .line 699
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 700
    .line 701
    .line 702
    move-result-object v6

    .line 703
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    if-eqz v4, :cond_23

    .line 707
    .line 708
    iget v2, v4, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 709
    .line 710
    iput v2, v0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    .line 711
    .line 712
    :cond_23
    iput v3, v0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePageOffset:I

    .line 713
    .line 714
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    if-eqz v2, :cond_24

    .line 719
    .line 720
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 721
    .line 722
    .line 723
    move-result-object v18

    .line 724
    :cond_24
    move-object/from16 v3, v18

    .line 725
    .line 726
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    const/16 v6, 0x20

    .line 731
    .line 732
    const-wide v10, 0xffffffffL

    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    if-nez v19, :cond_26

    .line 738
    .line 739
    :cond_25
    :goto_15
    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 740
    .line 741
    .line 742
    goto :goto_17

    .line 743
    :cond_26
    :try_start_0
    iget v8, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->beyondViewportPageCount:I

    .line 744
    .line 745
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 746
    .line 747
    .line 748
    move-result v12

    .line 749
    if-lt v8, v12, :cond_27

    .line 750
    .line 751
    goto :goto_15

    .line 752
    :cond_27
    iget v8, v0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    .line 753
    .line 754
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 755
    .line 756
    .line 757
    move-result v8

    .line 758
    const/high16 v12, 0x3f000000    # 0.5f

    .line 759
    .line 760
    cmpg-float v8, v8, v12

    .line 761
    .line 762
    if-gtz v8, :cond_28

    .line 763
    .line 764
    goto :goto_15

    .line 765
    :cond_28
    iget v8, v0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    .line 766
    .line 767
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 768
    .line 769
    .line 770
    move-result-object v12

    .line 771
    iget-object v12, v12, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 772
    .line 773
    sget-object v13, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 774
    .line 775
    if-ne v12, v13, :cond_29

    .line 776
    .line 777
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    .line 778
    .line 779
    .line 780
    move-result v8

    .line 781
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation()J

    .line 782
    .line 783
    .line 784
    move-result-wide v12

    .line 785
    and-long/2addr v12, v10

    .line 786
    long-to-int v12, v12

    .line 787
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 788
    .line 789
    .line 790
    move-result v12

    .line 791
    neg-float v12, v12

    .line 792
    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    .line 793
    .line 794
    .line 795
    move-result v12

    .line 796
    cmpg-float v8, v8, v12

    .line 797
    .line 798
    if-nez v8, :cond_2a

    .line 799
    .line 800
    goto :goto_16

    .line 801
    :cond_29
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    .line 802
    .line 803
    .line 804
    move-result v8

    .line 805
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation()J

    .line 806
    .line 807
    .line 808
    move-result-wide v12

    .line 809
    shr-long/2addr v12, v6

    .line 810
    long-to-int v12, v12

    .line 811
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 812
    .line 813
    .line 814
    move-result v12

    .line 815
    neg-float v12, v12

    .line 816
    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    .line 817
    .line 818
    .line 819
    move-result v12

    .line 820
    cmpg-float v8, v8, v12

    .line 821
    .line 822
    if-nez v8, :cond_2a

    .line 823
    .line 824
    goto :goto_16

    .line 825
    :cond_2a
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->isNotGestureAction$foundation()Z

    .line 826
    .line 827
    .line 828
    move-result v8

    .line 829
    if-eqz v8, :cond_25

    .line 830
    .line 831
    :goto_16
    iget v8, v0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    .line 832
    .line 833
    invoke-virtual {v9, v8, v1}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->onScroll(FLandroidx/compose/foundation/pager/PagerMeasureResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    .line 835
    .line 836
    goto :goto_15

    .line 837
    :catchall_0
    move-exception v0

    .line 838
    goto :goto_1a

    .line 839
    :goto_17
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 840
    .line 841
    .line 842
    move-result v2

    .line 843
    invoke-static {v1, v2}, Landroidx/compose/foundation/pager/PagerStateKt;->calculateNewMaxScrollOffset(Landroidx/compose/foundation/pager/PagerMeasureResult;I)J

    .line 844
    .line 845
    .line 846
    move-result-wide v2

    .line 847
    iput-wide v2, v0, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:J

    .line 848
    .line 849
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 850
    .line 851
    .line 852
    iget-object v2, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 853
    .line 854
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 855
    .line 856
    if-ne v2, v3, :cond_2b

    .line 857
    .line 858
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getViewportSize-YbymL2g()J

    .line 859
    .line 860
    .line 861
    move-result-wide v2

    .line 862
    shr-long/2addr v2, v6

    .line 863
    :goto_18
    long-to-int v2, v2

    .line 864
    goto :goto_19

    .line 865
    :cond_2b
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getViewportSize-YbymL2g()J

    .line 866
    .line 867
    .line 868
    move-result-wide v2

    .line 869
    and-long/2addr v2, v10

    .line 870
    goto :goto_18

    .line 871
    :goto_19
    iget-object v3, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 872
    .line 873
    iget v4, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    .line 874
    .line 875
    neg-int v4, v4

    .line 876
    iget v1, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->afterContentPadding:I

    .line 877
    .line 878
    invoke-virtual {v3, v2, v7, v4, v1}, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->position(IIII)I

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    invoke-static {v1, v5, v2}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 883
    .line 884
    .line 885
    move-result v1

    .line 886
    int-to-long v1, v1

    .line 887
    iget-wide v3, v0, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:J

    .line 888
    .line 889
    cmp-long v5, v1, v3

    .line 890
    .line 891
    if-lez v5, :cond_2c

    .line 892
    .line 893
    move-wide v1, v3

    .line 894
    :cond_2c
    iput-wide v1, v0, Landroidx/compose/foundation/pager/PagerState;->minScrollOffset:J

    .line 895
    .line 896
    return-void

    .line 897
    :goto_1a
    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 898
    .line 899
    .line 900
    throw v0
.end method

.method public final awaitScrollDependencies(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/compose/foundation/pager/PagerStateKt;->EmptyLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->waitForFirstLayout(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 18
    .line 19
    if-ne p0, p1, :cond_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public final coerceInPageRange(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    add-int/lit8 p0, p0, -0x1

    .line 13
    .line 14
    invoke-static {p1, v1, p0}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    return v1
.end method

.method public final dispatchRawDelta(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DefaultScrollableState;->dispatchRawDelta(F)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getCanScrollBackward()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getCanScrollForward()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getCurrentPage()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getCurrentPageOffsetFraction()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 8
    .line 9
    return-object p0
.end method

.method public abstract getPageCount()I
.end method

.method public final getPageSize$foundation()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 8
    .line 9
    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    .line 10
    .line 11
    return p0
.end method

.method public final getPageSizeWithSpacing$foundation()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 12
    .line 13
    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    .line 14
    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final getUpDownDifference-F1C5BW0$foundation()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->upDownDifference$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 8
    .line 9
    iget-wide v0, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 10
    .line 11
    return-wide v0
.end method

.method public final isNotGestureAction$foundation()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    shr-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    float-to-int v0, v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide v2, 0xffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr v0, v2

    .line 26
    long-to-int p0, v0

    .line 27
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    float-to-int p0, p0

    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final isScrollInProgress()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DefaultScrollableState;->isScrollInProgress()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/pager/PagerState;->scroll$suspendImpl(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final snapToItem$foundation(FIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne v1, p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    cmpg-float v1, v1, p1

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->cacheWindowLogic:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->resetStrategy()V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 34
    .line 35
    invoke-virtual {v1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 41
    .line 42
    invoke-virtual {v1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 50
    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurement$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 68
    .line 69
    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->invalidateScope-impl(Landroidx/compose/runtime/MutableState;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
