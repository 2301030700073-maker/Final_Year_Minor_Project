.class public abstract Landroidx/compose/foundation/pager/PagerState;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

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

.field public final scrollPosition:Lorg/schabi/newpipe/streams/WebMReader$Segment;

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
    new-instance v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p0, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Ljava/lang/Object;

    .line 59
    .line 60
    new-instance v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 61
    .line 62
    invoke-direct {v1, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 63
    .line 64
    .line 65
    iput-object v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 66
    .line 67
    new-instance v1, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 68
    .line 69
    invoke-direct {v1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    .line 70
    .line 71
    .line 72
    iput-object v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

    .line 73
    .line 74
    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 75
    .line 76
    invoke-direct {p2, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iput-object p2, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 82
    .line 83
    iput p1, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    .line 84
    .line 85
    const-wide v0, 0x7fffffffffffffffL

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    iput-wide v0, p0, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:J

    .line 91
    .line 92
    new-instance p2, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 96
    .line 97
    .line 98
    new-instance v1, Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 99
    .line 100
    invoke-direct {v1, p2}, Landroidx/compose/foundation/gestures/DefaultScrollableState;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 104
    .line 105
    const/4 p2, 0x1

    .line 106
    iput-boolean p2, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchingEnabled:Z

    .line 107
    .line 108
    sget-object v1, Landroidx/compose/foundation/pager/PagerStateKt;->EmptyLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 109
    .line 110
    sget-object v2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 111
    .line 112
    new-instance v3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 113
    .line 114
    invoke-direct {v3, v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 115
    .line 116
    .line 117
    iput-object v3, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 118
    .line 119
    sget-object v1, Landroidx/compose/foundation/pager/PagerStateKt;->UnitDensity:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 120
    .line 121
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    .line 122
    .line 123
    new-instance v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 124
    .line 125
    invoke-direct {v1}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 129
    .line 130
    new-instance v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 131
    .line 132
    const/4 v2, -0x1

    .line 133
    invoke-direct {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 134
    .line 135
    .line 136
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 137
    .line 138
    new-instance v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 139
    .line 140
    invoke-direct {v1, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 141
    .line 142
    .line 143
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->settledPageState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 144
    .line 145
    sget-object p1, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$3:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 146
    .line 147
    new-instance v1, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda1;

    .line 148
    .line 149
    invoke-direct {v1, p0, v0}, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 150
    .line 151
    .line 152
    invoke-static {p1, v1}, Landroidx/compose/runtime/Updater;->derivedStateOf(Landroidx/compose/runtime/NeverEqualPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 153
    .line 154
    .line 155
    new-instance v1, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda1;

    .line 156
    .line 157
    invoke-direct {v1, p0, p2}, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 158
    .line 159
    .line 160
    invoke-static {p1, v1}, Landroidx/compose/runtime/Updater;->derivedStateOf(Landroidx/compose/runtime/NeverEqualPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 161
    .line 162
    .line 163
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 164
    .line 165
    new-instance v1, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    invoke-direct {v1, p0, p2}, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 171
    .line 172
    .line 173
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 174
    .line 175
    new-instance p2, Landroidx/appcompat/widget/PopupMenu$1;

    .line 176
    .line 177
    const/16 v1, 0x11

    .line 178
    .line 179
    invoke-direct {p2, p0, v1}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    new-instance v1, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 183
    .line 184
    new-instance v2, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda1;

    .line 185
    .line 186
    const/4 v3, 0x2

    .line 187
    invoke-direct {v2, p0, v3}, Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 188
    .line 189
    .line 190
    invoke-direct {v1, p2, p1, v2}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;-><init>(Landroidx/appcompat/widget/PopupMenu$1;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda1;)V

    .line 191
    .line 192
    .line 193
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->cacheWindowLogic:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 194
    .line 195
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 196
    .line 197
    invoke-direct {p1, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;-><init>(I)V

    .line 198
    .line 199
    .line 200
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 201
    .line 202
    new-instance p1, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 203
    .line 204
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 205
    .line 206
    .line 207
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 208
    .line 209
    const/4 p1, 0x0

    .line 210
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurement$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 215
    .line 216
    new-instance p1, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    .line 217
    .line 218
    invoke-direct {p1, p0, v0}, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;I)V

    .line 219
    .line 220
    .line 221
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    .line 222
    .line 223
    const/16 p1, 0xf

    .line 224
    .line 225
    invoke-static {v0, v0, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    .line 226
    .line 227
    .line 228
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 229
    .line 230
    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;-><init>()V

    .line 231
    .line 232
    .line 233
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->pinnedPages:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 234
    .line 235
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->constructor-impl$default()Landroidx/compose/runtime/MutableState;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 240
    .line 241
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->constructor-impl$default()Landroidx/compose/runtime/MutableState;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 246
    .line 247
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 248
    .line 249
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 254
    .line 255
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 260
    .line 261
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->isLastScrollForwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 266
    .line 267
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->isLastScrollBackwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 272
    .line 273
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

.method public static scroll$suspendImpl(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
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
    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/pager/PagerState$scroll$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v4, :cond_2

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    .line 43
    .line 44
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_2
    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    move-object p2, p0

    .line 57
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 58
    .line 59
    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$1:Ljava/lang/Object;

    .line 60
    .line 61
    move-object p1, p0

    .line 62
    check-cast p1, Landroidx/compose/foundation/MutatePriority;

    .line 63
    .line 64
    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    .line 67
    .line 68
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    iput-object p1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object p2, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$2:Ljava/lang/Object;

    .line 80
    .line 81
    iput v4, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/pager/PagerState;->awaitScrollDependencies(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    if-ne p3, v5, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    :goto_1
    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 91
    .line 92
    invoke-virtual {p3}, Landroidx/compose/foundation/gestures/DefaultScrollableState;->isScrollInProgress()Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    if-nez p3, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->settledPageState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 103
    .line 104
    invoke-virtual {v1, p3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 108
    .line 109
    iput-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Ljava/lang/Object;

    .line 110
    .line 111
    iput-object v2, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$1:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object v2, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$2:Ljava/lang/Object;

    .line 114
    .line 115
    iput v3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    .line 116
    .line 117
    invoke-virtual {p3, p1, p2, v0}, Landroidx/compose/foundation/gestures/DefaultScrollableState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-ne p1, v5, :cond_6

    .line 122
    .line 123
    :goto_2
    return-object v5

    .line 124
    :cond_6
    :goto_3
    const/4 p1, -0x1

    .line 125
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 128
    .line 129
    .line 130
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 131
    .line 132
    return-object p0
.end method


# virtual methods
.method public final animateScrollToPage(ILandroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    instance-of v3, v2, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    .line 13
    .line 14
    iget v4, v3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    .line 24
    .line 25
    :goto_0
    move-object v6, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    .line 28
    .line 29
    invoke-direct {v3, v1, v2}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v2, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    iget v3, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    const/4 v9, 0x2

    .line 41
    const/4 v4, 0x1

    .line 42
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 43
    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    if-eq v3, v4, :cond_2

    .line 47
    .line 48
    if-ne v3, v9, :cond_1

    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v8

    .line 54
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v7

    .line 60
    :cond_2
    iget v0, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->F$0:F

    .line 61
    .line 62
    iget v3, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->I$0:I

    .line 63
    .line 64
    iget-object v4, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v4, Landroidx/compose/animation/core/AnimationSpec;

    .line 67
    .line 68
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    move v15, v3

    .line 72
    move v3, v0

    .line 73
    move v0, v15

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    const/4 v3, 0x0

    .line 83
    if-ne v0, v2, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    cmpg-float v2, v2, v3

    .line 90
    .line 91
    if-nez v2, :cond_4

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_5

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_5
    move-object/from16 v2, p2

    .line 102
    .line 103
    iput-object v2, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$0:Ljava/lang/Object;

    .line 104
    .line 105
    iput v0, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->I$0:I

    .line 106
    .line 107
    iput v3, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->F$0:F

    .line 108
    .line 109
    iput v4, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    .line 110
    .line 111
    invoke-virtual {v1, v6}, Landroidx/compose/foundation/pager/PagerState;->awaitScrollDependencies(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    if-ne v4, v10, :cond_6

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_6
    move-object v4, v2

    .line 119
    :goto_2
    float-to-double v11, v3

    .line 120
    const-wide/high16 v13, -0x4020000000000000L    # -0.5

    .line 121
    .line 122
    cmpg-double v2, v13, v11

    .line 123
    .line 124
    if-gtz v2, :cond_7

    .line 125
    .line 126
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 127
    .line 128
    cmpg-double v2, v11, v13

    .line 129
    .line 130
    if-gtz v2, :cond_7

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v5, "pageOffsetFraction "

    .line 136
    .line 137
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v5, " is not within the range -0.5 to 0.5"

    .line 144
    .line 145
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :goto_3
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/pager/PagerState;->coerceInPageRange(I)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    int-to-float v0, v0

    .line 164
    mul-float/2addr v3, v0

    .line 165
    new-instance v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;

    .line 166
    .line 167
    const/4 v5, 0x0

    .line 168
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;-><init>(Landroidx/compose/foundation/pager/PagerState;IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 169
    .line 170
    .line 171
    iput-object v7, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$0:Ljava/lang/Object;

    .line 172
    .line 173
    iput v9, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    .line 174
    .line 175
    sget-object v2, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    .line 176
    .line 177
    invoke-virtual {v1, v2, v0, v6}, Landroidx/compose/foundation/pager/PagerState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-ne v0, v10, :cond_8

    .line 182
    .line 183
    :goto_4
    return-object v10

    .line 184
    :cond_8
    :goto_5
    return-object v8
.end method

.method public final applyMeasureResult$foundation(Landroidx/compose/foundation/pager/PagerMeasureResult;ZZ)V
    .locals 19

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
    add-int/2addr v7, v8

    .line 28
    iput v7, v0, Landroidx/compose/foundation/pager/PagerState;->latestPageSizeWithSpacing:I

    .line 29
    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    iget-boolean v7, v0, Landroidx/compose/foundation/pager/PagerState;->hasLookaheadOccurred:Z

    .line 33
    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerState;->approachLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v7, 0x1

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iput-boolean v7, v0, Landroidx/compose/foundation/pager/PagerState;->hasLookaheadOccurred:Z

    .line 43
    .line 44
    :cond_1
    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerState;->cacheWindowLogic:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 45
    .line 46
    iget-boolean v9, v0, Landroidx/compose/foundation/pager/PagerState;->prefetchingEnabled:Z

    .line 47
    .line 48
    const/16 v17, 0x0

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    iget-object v11, v0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 52
    .line 53
    if-eqz p3, :cond_3

    .line 54
    .line 55
    iget-object v2, v11, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

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
    move/from16 v18, v7

    .line 63
    .line 64
    move v5, v9

    .line 65
    move v2, v10

    .line 66
    goto/16 :goto_10

    .line 67
    .line 68
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    iget-object v12, v5, Landroidx/compose/foundation/pager/MeasuredPage;->key:Ljava/lang/Object;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    move-object/from16 v12, v17

    .line 77
    .line 78
    :goto_0
    iput-object v12, v11, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Ljava/lang/Object;

    .line 79
    .line 80
    iget-boolean v12, v11, Lorg/schabi/newpipe/streams/WebMReader$Segment;->firstClusterInSegment:Z

    .line 81
    .line 82
    if-nez v12, :cond_5

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
    iput-boolean v7, v11, Lorg/schabi/newpipe/streams/WebMReader$Segment;->firstClusterInSegment:Z

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
    move v2, v10

    .line 98
    :goto_1
    iget-object v5, v11, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v5, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 101
    .line 102
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 103
    .line 104
    .line 105
    iget-object v5, v11, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 108
    .line 109
    invoke-virtual {v5, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    .line 110
    .line 111
    .line 112
    iget-object v2, v11, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

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
    if-eqz v9, :cond_2

    .line 120
    .line 121
    move v2, v9

    .line 122
    iget-object v9, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Lorg/acra/util/ProcessFinisher;

    .line 123
    .line 124
    iget-object v5, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    .line 125
    .line 126
    iput-object v1, v9, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 127
    .line 128
    iget-object v6, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 129
    .line 130
    iput-object v6, v9, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Ljava/lang/Object;

    .line 131
    .line 132
    iget-object v6, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindow:Landroidx/appcompat/widget/PopupMenu$1;

    .line 133
    .line 134
    iget v11, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->previousPassItemCount:I

    .line 135
    .line 136
    const/4 v12, -0x1

    .line 137
    const/4 v13, 0x0

    .line 138
    if-eq v11, v12, :cond_d

    .line 139
    .line 140
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getTotalItemsCount()I

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    if-eq v11, v14, :cond_d

    .line 145
    .line 146
    iput-boolean v7, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->shouldRefillWindow:Z

    .line 147
    .line 148
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getHasVisibleItems()Z

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-eqz v11, :cond_d

    .line 153
    .line 154
    iget v11, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 155
    .line 156
    if-gez v11, :cond_8

    .line 157
    .line 158
    move v11, v10

    .line 159
    :cond_8
    iput v11, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 160
    .line 161
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    iget-object v11, v11, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v11

    .line 171
    if-eqz v11, :cond_9

    .line 172
    .line 173
    move v11, v12

    .line 174
    goto :goto_2

    .line 175
    :cond_9
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getTotalItemsCount()I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    sub-int/2addr v11, v7

    .line 180
    :goto_2
    if-eq v11, v12, :cond_b

    .line 181
    .line 182
    iget v14, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 183
    .line 184
    if-le v14, v11, :cond_a

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_a
    move v11, v14

    .line 188
    :goto_3
    iput v11, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 189
    .line 190
    :cond_b
    iget v11, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->previousPassDelta:F

    .line 191
    .line 192
    cmpg-float v11, v11, v13

    .line 193
    .line 194
    if-gtz v11, :cond_c

    .line 195
    .line 196
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLastVisibleLineIndex()I

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    iget v14, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->itemsCount:I

    .line 201
    .line 202
    sub-int/2addr v14, v7

    .line 203
    invoke-virtual {v8, v11, v14}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->removeOutOfBoundsItems(II)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_c
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getFirstVisibleLineIndex()I

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    invoke-virtual {v8, v10, v11}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->removeOutOfBoundsItems(II)V

    .line 212
    .line 213
    .line 214
    :cond_d
    :goto_4
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getTotalItemsCount()I

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    iput v11, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->itemsCount:I

    .line 219
    .line 220
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getHasVisibleItems()Z

    .line 221
    .line 222
    .line 223
    move-result v11

    .line 224
    if-eqz v11, :cond_1e

    .line 225
    .line 226
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 227
    .line 228
    .line 229
    move-result-object v11

    .line 230
    iget-object v11, v11, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    .line 231
    .line 232
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 233
    .line 234
    .line 235
    move-result v11

    .line 236
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 237
    .line 238
    .line 239
    move-result-object v14

    .line 240
    iget-object v14, v14, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 241
    .line 242
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 243
    .line 244
    .line 245
    move-result v14

    .line 246
    add-int/2addr v14, v11

    .line 247
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 248
    .line 249
    .line 250
    move-result-object v11

    .line 251
    iget-object v11, v11, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesAfter:Ljava/util/List;

    .line 252
    .line 253
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 254
    .line 255
    .line 256
    move-result v11

    .line 257
    add-int/2addr v11, v14

    .line 258
    move v14, v10

    .line 259
    :goto_5
    if-ge v14, v11, :cond_19

    .line 260
    .line 261
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 262
    .line 263
    .line 264
    move-result-object v15

    .line 265
    iget-object v15, v15, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    .line 266
    .line 267
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 268
    .line 269
    .line 270
    move-result v15

    .line 271
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 272
    .line 273
    .line 274
    move-result-object v10

    .line 275
    iget-object v10, v10, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 276
    .line 277
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    if-ge v14, v15, :cond_e

    .line 282
    .line 283
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    iget-object v10, v10, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    .line 288
    .line 289
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v10

    .line 293
    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 294
    .line 295
    iget v10, v10, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 296
    .line 297
    move/from16 p3, v13

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_e
    move/from16 p3, v13

    .line 301
    .line 302
    if-lt v14, v15, :cond_f

    .line 303
    .line 304
    add-int v13, v15, v10

    .line 305
    .line 306
    if-ge v14, v13, :cond_f

    .line 307
    .line 308
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    iget-object v10, v10, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 313
    .line 314
    sub-int v13, v14, v15

    .line 315
    .line 316
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 321
    .line 322
    iget v10, v10, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_f
    add-int v13, v15, v10

    .line 326
    .line 327
    if-lt v14, v13, :cond_10

    .line 328
    .line 329
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 330
    .line 331
    .line 332
    move-result-object v13

    .line 333
    iget-object v13, v13, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesAfter:Ljava/util/List;

    .line 334
    .line 335
    sub-int v15, v14, v15

    .line 336
    .line 337
    sub-int/2addr v15, v10

    .line 338
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 343
    .line 344
    iget v10, v10, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_10
    move v10, v12

    .line 348
    :goto_6
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 349
    .line 350
    .line 351
    move-result-object v13

    .line 352
    iget-object v13, v13, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    .line 353
    .line 354
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 355
    .line 356
    .line 357
    move-result v13

    .line 358
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 359
    .line 360
    .line 361
    move-result-object v15

    .line 362
    iget-object v15, v15, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 363
    .line 364
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 365
    .line 366
    .line 367
    move-result v15

    .line 368
    if-ge v14, v13, :cond_11

    .line 369
    .line 370
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 371
    .line 372
    .line 373
    move-result-object v13

    .line 374
    iget-object v13, v13, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    .line 375
    .line 376
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v13

    .line 380
    check-cast v13, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 381
    .line 382
    iget-object v13, v13, Landroidx/compose/foundation/pager/MeasuredPage;->key:Ljava/lang/Object;

    .line 383
    .line 384
    goto :goto_7

    .line 385
    :cond_11
    if-lt v14, v13, :cond_12

    .line 386
    .line 387
    add-int v7, v13, v15

    .line 388
    .line 389
    if-ge v14, v7, :cond_12

    .line 390
    .line 391
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    iget-object v7, v7, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 396
    .line 397
    sub-int v13, v14, v13

    .line 398
    .line 399
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 404
    .line 405
    iget-object v13, v7, Landroidx/compose/foundation/pager/MeasuredPage;->key:Ljava/lang/Object;

    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_12
    add-int v7, v13, v15

    .line 409
    .line 410
    if-lt v14, v7, :cond_13

    .line 411
    .line 412
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    iget-object v7, v7, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesAfter:Ljava/util/List;

    .line 417
    .line 418
    sub-int v13, v14, v13

    .line 419
    .line 420
    sub-int/2addr v13, v15

    .line 421
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 426
    .line 427
    iget-object v13, v7, Landroidx/compose/foundation/pager/MeasuredPage;->key:Ljava/lang/Object;

    .line 428
    .line 429
    goto :goto_7

    .line 430
    :cond_13
    sget-object v13, Landroidx/compose/foundation/lazy/layout/CachedItem;->NoKey:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    .line 431
    .line 432
    :goto_7
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    iget v7, v7, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    .line 437
    .line 438
    if-eq v10, v12, :cond_17

    .line 439
    .line 440
    invoke-virtual {v5, v10}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 441
    .line 442
    .line 443
    move-result v15

    .line 444
    if-eqz v15, :cond_15

    .line 445
    .line 446
    invoke-virtual {v5, v10}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v15

    .line 450
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    .line 452
    .line 453
    check-cast v15, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 454
    .line 455
    iget v15, v15, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    .line 456
    .line 457
    invoke-virtual {v5, v10}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v16

    .line 461
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    move-object/from16 v12, v16

    .line 465
    .line 466
    check-cast v12, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 467
    .line 468
    iget-object v12, v12, Landroidx/compose/foundation/lazy/layout/CachedItem;->key:Ljava/lang/Object;

    .line 469
    .line 470
    if-ne v15, v7, :cond_14

    .line 471
    .line 472
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v12

    .line 476
    if-nez v12, :cond_15

    .line 477
    .line 478
    :cond_14
    const/4 v12, 0x1

    .line 479
    goto :goto_8

    .line 480
    :cond_15
    const/4 v12, 0x1

    .line 481
    goto :goto_9

    .line 482
    :goto_8
    iput-boolean v12, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->shouldRefillWindow:Z

    .line 483
    .line 484
    :goto_9
    invoke-virtual {v5, v10}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v15

    .line 488
    check-cast v15, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 489
    .line 490
    if-eqz v15, :cond_16

    .line 491
    .line 492
    iput v7, v15, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    .line 493
    .line 494
    iput-object v13, v15, Landroidx/compose/foundation/lazy/layout/CachedItem;->key:Ljava/lang/Object;

    .line 495
    .line 496
    goto :goto_a

    .line 497
    :cond_16
    new-instance v15, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 498
    .line 499
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 500
    .line 501
    .line 502
    iput-object v13, v15, Landroidx/compose/foundation/lazy/layout/CachedItem;->key:Ljava/lang/Object;

    .line 503
    .line 504
    iput v7, v15, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    .line 505
    .line 506
    :goto_a
    invoke-virtual {v5, v10, v15}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    iget v7, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 510
    .line 511
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    .line 512
    .line 513
    .line 514
    move-result v7

    .line 515
    iput v7, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 516
    .line 517
    iget v7, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 518
    .line 519
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    .line 520
    .line 521
    .line 522
    move-result v7

    .line 523
    iput v7, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 524
    .line 525
    iget-object v7, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    .line 526
    .line 527
    invoke-virtual {v7, v10}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v7

    .line 531
    check-cast v7, Ljava/util/List;

    .line 532
    .line 533
    if-eqz v7, :cond_18

    .line 534
    .line 535
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 536
    .line 537
    .line 538
    move-result v10

    .line 539
    const/4 v13, 0x0

    .line 540
    :goto_b
    if-ge v13, v10, :cond_18

    .line 541
    .line 542
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v15

    .line 546
    check-cast v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 547
    .line 548
    invoke-interface {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 549
    .line 550
    .line 551
    add-int/lit8 v13, v13, 0x1

    .line 552
    .line 553
    goto :goto_b

    .line 554
    :cond_17
    const/4 v12, 0x1

    .line 555
    :cond_18
    add-int/lit8 v14, v14, 0x1

    .line 556
    .line 557
    move/from16 v13, p3

    .line 558
    .line 559
    move v7, v12

    .line 560
    const/4 v10, 0x0

    .line 561
    const/4 v12, -0x1

    .line 562
    goto/16 :goto_5

    .line 563
    .line 564
    :cond_19
    move v12, v7

    .line 565
    move/from16 p3, v13

    .line 566
    .line 567
    iget-boolean v5, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->shouldRefillWindow:Z

    .line 568
    .line 569
    if-eqz v5, :cond_1d

    .line 570
    .line 571
    iget v5, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->previousPassDelta:F

    .line 572
    .line 573
    cmpg-float v5, v5, p3

    .line 574
    .line 575
    if-gtz v5, :cond_1a

    .line 576
    .line 577
    move/from16 v16, v12

    .line 578
    .line 579
    goto :goto_c

    .line 580
    :cond_1a
    const/16 v16, 0x0

    .line 581
    .line 582
    :goto_c
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getHasVisibleItems()Z

    .line 583
    .line 584
    .line 585
    move-result v5

    .line 586
    if-eqz v5, :cond_1c

    .line 587
    .line 588
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    invoke-static {v5}, Lkotlin/text/UStringsKt;->getMainAxisViewportSize(Landroidx/compose/foundation/pager/PagerMeasureResult;)I

    .line 593
    .line 594
    .line 595
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 596
    .line 597
    .line 598
    move-result-object v5

    .line 599
    iget-object v5, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    .line 600
    .line 601
    if-eqz v5, :cond_1b

    .line 602
    .line 603
    iget-object v5, v6, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 604
    .line 605
    check-cast v5, Landroidx/compose/foundation/pager/PagerState;

    .line 606
    .line 607
    iget v5, v5, Landroidx/compose/foundation/pager/PagerState;->latestPageSizeWithSpacing:I

    .line 608
    .line 609
    goto :goto_d

    .line 610
    :cond_1b
    const/4 v5, 0x0

    .line 611
    :goto_d
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getFirstVisibleLineIndex()I

    .line 612
    .line 613
    .line 614
    move-result v10

    .line 615
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getLastVisibleLineIndex()I

    .line 616
    .line 617
    .line 618
    move-result v11

    .line 619
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getMainAxisExtraSpaceStart()I

    .line 620
    .line 621
    .line 622
    move-result v14

    .line 623
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getMainAxisExtraSpaceEnd()I

    .line 624
    .line 625
    .line 626
    move-result v13

    .line 627
    const/4 v15, 0x0

    .line 628
    move/from16 v18, v12

    .line 629
    .line 630
    move v12, v5

    .line 631
    move v5, v2

    .line 632
    const/4 v2, 0x0

    .line 633
    invoke-virtual/range {v8 .. v16}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->onPrefetchForward(Lorg/acra/util/ProcessFinisher;IIIIIFZ)V

    .line 634
    .line 635
    .line 636
    goto :goto_e

    .line 637
    :cond_1c
    move v5, v2

    .line 638
    move/from16 v18, v12

    .line 639
    .line 640
    const/4 v2, 0x0

    .line 641
    :goto_e
    iput-boolean v2, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->shouldRefillWindow:Z

    .line 642
    .line 643
    goto :goto_f

    .line 644
    :cond_1d
    move v5, v2

    .line 645
    move/from16 v18, v12

    .line 646
    .line 647
    const/4 v2, 0x0

    .line 648
    goto :goto_f

    .line 649
    :cond_1e
    move v5, v2

    .line 650
    move/from16 v18, v7

    .line 651
    .line 652
    move v2, v10

    .line 653
    invoke-virtual {v8}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->resetStrategy()V

    .line 654
    .line 655
    .line 656
    :goto_f
    invoke-virtual {v9}, Lorg/acra/util/ProcessFinisher;->getTotalItemsCount()I

    .line 657
    .line 658
    .line 659
    move-result v6

    .line 660
    iput v6, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->previousPassItemCount:I

    .line 661
    .line 662
    :goto_10
    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 663
    .line 664
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    iget-boolean v6, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->canScrollForward:Z

    .line 668
    .line 669
    iget-object v7, v0, Landroidx/compose/foundation/pager/PagerState;->canScrollForward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 670
    .line 671
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 672
    .line 673
    .line 674
    move-result-object v6

    .line 675
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    if-eqz v4, :cond_1f

    .line 679
    .line 680
    iget v10, v4, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 681
    .line 682
    goto :goto_11

    .line 683
    :cond_1f
    move v10, v2

    .line 684
    :goto_11
    if-nez v10, :cond_21

    .line 685
    .line 686
    if-eqz v3, :cond_20

    .line 687
    .line 688
    goto :goto_12

    .line 689
    :cond_20
    move v7, v2

    .line 690
    goto :goto_13

    .line 691
    :cond_21
    :goto_12
    move/from16 v7, v18

    .line 692
    .line 693
    :goto_13
    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerState;->canScrollBackward$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 694
    .line 695
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 696
    .line 697
    .line 698
    move-result-object v7

    .line 699
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    if-eqz v4, :cond_22

    .line 703
    .line 704
    iget v4, v4, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    .line 705
    .line 706
    iput v4, v0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    .line 707
    .line 708
    :cond_22
    iput v3, v0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePageOffset:I

    .line 709
    .line 710
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    if-eqz v3, :cond_23

    .line 715
    .line 716
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 717
    .line 718
    .line 719
    move-result-object v17

    .line 720
    :cond_23
    move-object/from16 v4, v17

    .line 721
    .line 722
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 723
    .line 724
    .line 725
    move-result-object v6

    .line 726
    const/16 v7, 0x20

    .line 727
    .line 728
    const-wide v9, 0xffffffffL

    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    if-nez v5, :cond_25

    .line 734
    .line 735
    :cond_24
    :goto_14
    invoke-static {v3, v6, v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 736
    .line 737
    .line 738
    goto :goto_16

    .line 739
    :cond_25
    :try_start_0
    iget v5, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->beyondViewportPageCount:I

    .line 740
    .line 741
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 742
    .line 743
    .line 744
    move-result v11

    .line 745
    if-lt v5, v11, :cond_26

    .line 746
    .line 747
    goto :goto_14

    .line 748
    :cond_26
    iget v5, v0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    .line 749
    .line 750
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 751
    .line 752
    .line 753
    move-result v5

    .line 754
    const/high16 v11, 0x3f000000    # 0.5f

    .line 755
    .line 756
    cmpg-float v5, v5, v11

    .line 757
    .line 758
    if-gtz v5, :cond_27

    .line 759
    .line 760
    goto :goto_14

    .line 761
    :cond_27
    iget v5, v0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    .line 762
    .line 763
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 764
    .line 765
    .line 766
    move-result-object v11

    .line 767
    iget-object v11, v11, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 768
    .line 769
    sget-object v12, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 770
    .line 771
    if-ne v11, v12, :cond_28

    .line 772
    .line 773
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 774
    .line 775
    .line 776
    move-result v5

    .line 777
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation()J

    .line 778
    .line 779
    .line 780
    move-result-wide v11

    .line 781
    and-long/2addr v11, v9

    .line 782
    long-to-int v11, v11

    .line 783
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 784
    .line 785
    .line 786
    move-result v11

    .line 787
    neg-float v11, v11

    .line 788
    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    .line 789
    .line 790
    .line 791
    move-result v11

    .line 792
    cmpg-float v5, v5, v11

    .line 793
    .line 794
    if-nez v5, :cond_29

    .line 795
    .line 796
    goto :goto_15

    .line 797
    :cond_28
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 798
    .line 799
    .line 800
    move-result v5

    .line 801
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation()J

    .line 802
    .line 803
    .line 804
    move-result-wide v11

    .line 805
    shr-long/2addr v11, v7

    .line 806
    long-to-int v11, v11

    .line 807
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 808
    .line 809
    .line 810
    move-result v11

    .line 811
    neg-float v11, v11

    .line 812
    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    .line 813
    .line 814
    .line 815
    move-result v11

    .line 816
    cmpg-float v5, v5, v11

    .line 817
    .line 818
    if-nez v5, :cond_29

    .line 819
    .line 820
    goto :goto_15

    .line 821
    :cond_29
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->isNotGestureAction$foundation()Z

    .line 822
    .line 823
    .line 824
    move-result v5

    .line 825
    if-eqz v5, :cond_24

    .line 826
    .line 827
    :goto_15
    iget v5, v0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    .line 828
    .line 829
    invoke-virtual {v8, v5, v1}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->onScroll(FLandroidx/compose/foundation/pager/PagerMeasureResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    .line 831
    .line 832
    goto :goto_14

    .line 833
    :catchall_0
    move-exception v0

    .line 834
    goto :goto_19

    .line 835
    :goto_16
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 836
    .line 837
    .line 838
    move-result v3

    .line 839
    invoke-static {v1, v3}, Landroidx/compose/foundation/pager/PagerStateKt;->calculateNewMaxScrollOffset(Landroidx/compose/foundation/pager/PagerMeasureResult;I)J

    .line 840
    .line 841
    .line 842
    move-result-wide v3

    .line 843
    iput-wide v3, v0, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:J

    .line 844
    .line 845
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 846
    .line 847
    .line 848
    iget-object v3, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 849
    .line 850
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 851
    .line 852
    if-ne v3, v4, :cond_2a

    .line 853
    .line 854
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getViewportSize-YbymL2g()J

    .line 855
    .line 856
    .line 857
    move-result-wide v3

    .line 858
    shr-long/2addr v3, v7

    .line 859
    :goto_17
    long-to-int v3, v3

    .line 860
    goto :goto_18

    .line 861
    :cond_2a
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getViewportSize-YbymL2g()J

    .line 862
    .line 863
    .line 864
    move-result-wide v3

    .line 865
    and-long/2addr v3, v9

    .line 866
    goto :goto_17

    .line 867
    :goto_18
    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 868
    .line 869
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    .line 871
    .line 872
    invoke-static {v2, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 873
    .line 874
    .line 875
    move-result v1

    .line 876
    int-to-long v1, v1

    .line 877
    iget-wide v3, v0, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:J

    .line 878
    .line 879
    cmp-long v5, v1, v3

    .line 880
    .line 881
    if-lez v5, :cond_2b

    .line 882
    .line 883
    move-wide v1, v3

    .line 884
    :cond_2b
    iput-wide v1, v0, Landroidx/compose/foundation/pager/PagerState;->minScrollOffset:J

    .line 885
    .line 886
    return-void

    .line 887
    :goto_19
    invoke-static {v3, v6, v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 888
    .line 889
    .line 890
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
    invoke-static {p1, v1, p0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

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
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

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
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

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

.method public final scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/pager/PagerState;->scroll$suspendImpl(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

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
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 6
    .line 7
    iget-object v2, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

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
    iget-object v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 34
    .line 35
    invoke-virtual {v1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

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
    iput-object p1, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Ljava/lang/Object;

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
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 70
    .line 71
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
