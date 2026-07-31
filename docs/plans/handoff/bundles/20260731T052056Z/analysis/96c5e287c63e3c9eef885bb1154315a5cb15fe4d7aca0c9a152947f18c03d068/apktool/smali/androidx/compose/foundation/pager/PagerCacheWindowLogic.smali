.class public final Landroidx/compose/foundation/pager/PagerCacheWindowLogic;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final cacheWindow:Landroidx/appcompat/widget/PopupMenu$1;

.field public final cacheWindowScope:Lcom/caverock/androidsvg/SVG;

.field public final indicesToRemove:Landroidx/collection/MutableIntSet;

.field public itemsCount:I

.field public prefetchWindowEndExtraSpace:I

.field public prefetchWindowEndLine:I

.field public final prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

.field public prefetchWindowStartExtraSpace:I

.field public prefetchWindowStartLine:I

.field public previousPassDelta:F

.field public previousPassItemCount:I

.field public shouldRefillWindow:Z

.field public final state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field public final windowCache:Landroidx/collection/MutableIntIntMap;

.field public final windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/PopupMenu$1;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindow:Landroidx/appcompat/widget/PopupMenu$1;

    .line 5
    .line 6
    sget-object p1, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    .line 7
    .line 8
    new-instance p1, Landroidx/collection/MutableIntObjectMap;

    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    .line 14
    .line 15
    new-instance p1, Landroidx/collection/MutableIntSet;

    .line 16
    .line 17
    invoke-direct {p1}, Landroidx/collection/MutableIntSet;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->indicesToRemove:Landroidx/collection/MutableIntSet;

    .line 21
    .line 22
    sget p1, Landroidx/collection/IntIntMapKt;->$r8$clinit:I

    .line 23
    .line 24
    new-instance p1, Landroidx/collection/MutableIntIntMap;

    .line 25
    .line 26
    invoke-direct {p1}, Landroidx/collection/MutableIntIntMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    .line 30
    .line 31
    new-instance p1, Landroidx/collection/MutableIntObjectMap;

    .line 32
    .line 33
    invoke-direct {p1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    .line 37
    .line 38
    const/4 p1, -0x1

    .line 39
    iput p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->previousPassItemCount:I

    .line 40
    .line 41
    const p1, 0x7fffffff

    .line 42
    .line 43
    .line 44
    iput p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 45
    .line 46
    const/high16 p1, -0x80000000

    .line 47
    .line 48
    iput p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 49
    .line 50
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 51
    .line 52
    new-instance p1, Lcom/caverock/androidsvg/SVG;

    .line 53
    .line 54
    invoke-direct {p1, p3}, Lcom/caverock/androidsvg/SVG;-><init>(Landroidx/compose/foundation/pager/PagerState$$ExternalSyntheticLambda2;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Lcom/caverock/androidsvg/SVG;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final getItemSizeOrPrefetch(Lcom/caverock/androidsvg/SVG;IZ)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast p0, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 17
    .line 18
    iget p0, p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    .line 19
    .line 20
    return p0

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    if-eqz p3, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/util/List;

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    :goto_0
    if-ge v2, p1, :cond_2

    .line 45
    .line 46
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 51
    .line 52
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v1, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-direct {v1, p0, p1, v2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/pager/PagerCacheWindowLogic;Lcom/caverock/androidsvg/SVG;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget-wide v5, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->childConstraints:J

    .line 68
    .line 69
    iget-object p0, p1, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 70
    .line 71
    move-object v3, p0

    .line 72
    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    new-instance v8, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 77
    .line 78
    const/16 p0, 0x1b

    .line 79
    .line 80
    invoke-direct {v8, p0, v1, p1}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    const/4 v7, 0x1

    .line 84
    move v4, p2

    .line 85
    invoke-virtual/range {v3 .. v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrecompositionAndPremeasure-_EkL_-Y$foundation(IJZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {p0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {v0, v4, p0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    if-eqz p3, :cond_2

    .line 97
    .line 98
    invoke-virtual {v0, v4}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Ljava/util/List;

    .line 103
    .line 104
    if-eqz p0, :cond_2

    .line 105
    .line 106
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    :goto_1
    if-ge v2, p1, :cond_2

    .line 111
    .line 112
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 117
    .line 118
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const/4 p0, -0x1

    .line 125
    return p0

    .line 126
    :cond_3
    const-string p0, "state"

    .line 127
    .line 128
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/4 p0, 0x0

    .line 132
    throw p0
.end method

.method public final hasValidBounds()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 9
    .line 10
    const/high16 v0, -0x80000000

    .line 11
    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final onItemPrefetched(Lcom/caverock/androidsvg/SVG;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 8
    .line 9
    sget-object v2, Landroidx/compose/foundation/lazy/layout/CachedItem;->NoKey:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iput p3, v1, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    .line 14
    .line 15
    iput-object v2, v1, Landroidx/compose/foundation/lazy/layout/CachedItem;->key:Ljava/lang/Object;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v2, v1, Landroidx/compose/foundation/lazy/layout/CachedItem;->key:Ljava/lang/Object;

    .line 24
    .line 25
    iput p3, v1, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, p2, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 31
    .line 32
    if-le p2, v0, :cond_1

    .line 33
    .line 34
    iput p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 35
    .line 36
    iget p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 37
    .line 38
    sub-int/2addr p2, p3

    .line 39
    iput p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 43
    .line 44
    if-ge p2, v0, :cond_2

    .line 45
    .line 46
    iput p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 47
    .line 48
    iget p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 49
    .line 50
    sub-int/2addr p2, p3

    .line 51
    iput p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 52
    .line 53
    :cond_2
    :goto_1
    iget p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->previousPassDelta:F

    .line 54
    .line 55
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    const/4 p3, 0x0

    .line 60
    cmpg-float p2, p2, p3

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    const/4 v1, -0x1

    .line 64
    if-gtz p2, :cond_3

    .line 65
    .line 66
    iget p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 67
    .line 68
    if-lez p2, :cond_4

    .line 69
    .line 70
    iget p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 71
    .line 72
    add-int/2addr p2, v0

    .line 73
    :goto_2
    move v3, p2

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    iget p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->previousPassDelta:F

    .line 76
    .line 77
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    cmpl-float p2, p2, p3

    .line 82
    .line 83
    if-lez p2, :cond_4

    .line 84
    .line 85
    iget p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 86
    .line 87
    if-lez p2, :cond_4

    .line 88
    .line 89
    iget p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 90
    .line 91
    sub-int/2addr p2, v0

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    move v3, v1

    .line 94
    :goto_3
    if-lez v3, :cond_6

    .line 95
    .line 96
    if-eq v3, v1, :cond_6

    .line 97
    .line 98
    iget p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->itemsCount:I

    .line 99
    .line 100
    if-ge v3, p2, :cond_6

    .line 101
    .line 102
    new-instance p2, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    invoke-direct {p2, p0, p1, v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/pager/PagerCacheWindowLogic;Lcom/caverock/androidsvg/SVG;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    iget-wide v4, p3, Landroidx/compose/foundation/pager/PagerMeasureResult;->childConstraints:J

    .line 112
    .line 113
    iget-object p3, p1, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 114
    .line 115
    move-object v2, p3

    .line 116
    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 117
    .line 118
    if-eqz v2, :cond_5

    .line 119
    .line 120
    new-instance v7, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 121
    .line 122
    const/16 p3, 0x1b

    .line 123
    .line 124
    invoke-direct {v7, p3, p2, p1}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    const/4 v6, 0x1

    .line 128
    invoke-virtual/range {v2 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrecompositionAndPremeasure-_EkL_-Y$foundation(IJZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    .line 137
    .line 138
    invoke-virtual {p2, v3, p1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_5
    const-string p0, "state"

    .line 143
    .line 144
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/4 p0, 0x0

    .line 148
    throw p0

    .line 149
    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->traceWindowInfo()V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final onPrefetchForward(Lcom/caverock/androidsvg/SVG;IIIIIFZ)V
    .locals 5

    .line 1
    invoke-static {p7}, Ljava/lang/Math;->signum(F)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->previousPassDelta:F

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    cmpg-float v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    const/4 v3, 0x0

    .line 21
    const/4 v4, -0x1

    .line 22
    if-eqz p8, :cond_6

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-boolean p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->shouldRefillWindow:Z

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 32
    .line 33
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    .line 34
    .line 35
    .line 36
    move-result p6

    .line 37
    invoke-static {p6}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 38
    .line 39
    .line 40
    move-result p6

    .line 41
    add-int/2addr p6, p2

    .line 42
    sub-int/2addr p4, p5

    .line 43
    if-le p6, p4, :cond_2

    .line 44
    .line 45
    move p6, p4

    .line 46
    :cond_2
    iput p6, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    :goto_1
    sub-int/2addr p4, p5

    .line 50
    iput p4, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 51
    .line 52
    iput p3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 53
    .line 54
    :goto_2
    iget p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 55
    .line 56
    if-lez p2, :cond_c

    .line 57
    .line 58
    iget p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 59
    .line 60
    if-eq p2, v4, :cond_c

    .line 61
    .line 62
    iget p4, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->itemsCount:I

    .line 63
    .line 64
    sub-int/2addr p4, v2

    .line 65
    if-ge p2, p4, :cond_c

    .line 66
    .line 67
    cmpg-float p4, p7, v3

    .line 68
    .line 69
    if-nez p4, :cond_4

    .line 70
    .line 71
    move p4, v1

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    move p4, v2

    .line 74
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 75
    .line 76
    add-int/lit8 p6, p3, 0x1

    .line 77
    .line 78
    if-ne p2, p6, :cond_5

    .line 79
    .line 80
    if-eqz p4, :cond_5

    .line 81
    .line 82
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    int-to-float p4, p5

    .line 87
    cmpl-float p2, p2, p4

    .line 88
    .line 89
    if-ltz p2, :cond_5

    .line 90
    .line 91
    move p2, v2

    .line 92
    goto :goto_4

    .line 93
    :cond_5
    move p2, v1

    .line 94
    :goto_4
    iget p4, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 95
    .line 96
    add-int/2addr p4, v2

    .line 97
    invoke-virtual {p0, p1, p4, p2}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->getItemSizeOrPrefetch(Lcom/caverock/androidsvg/SVG;IZ)I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eq p2, v4, :cond_c

    .line 102
    .line 103
    iget p4, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 104
    .line 105
    add-int/2addr p4, v2

    .line 106
    iput p4, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 107
    .line 108
    iget p4, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 109
    .line 110
    sub-int/2addr p4, p2

    .line 111
    iput p4, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_6
    if-eqz v0, :cond_9

    .line 115
    .line 116
    iget-boolean p3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->shouldRefillWindow:Z

    .line 117
    .line 118
    if-eqz p3, :cond_7

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_7
    iget p3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 122
    .line 123
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    .line 124
    .line 125
    .line 126
    move-result p5

    .line 127
    invoke-static {p5}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 128
    .line 129
    .line 130
    move-result p5

    .line 131
    add-int/2addr p5, p3

    .line 132
    sub-int/2addr p4, p6

    .line 133
    if-le p5, p4, :cond_8

    .line 134
    .line 135
    move p5, p4

    .line 136
    :cond_8
    iput p5, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_9
    :goto_5
    sub-int/2addr p4, p6

    .line 140
    iput p4, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 141
    .line 142
    iput p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 143
    .line 144
    :goto_6
    iget p3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 145
    .line 146
    if-lez p3, :cond_c

    .line 147
    .line 148
    iget p3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 149
    .line 150
    if-lez p3, :cond_c

    .line 151
    .line 152
    cmpg-float p4, p7, v3

    .line 153
    .line 154
    if-nez p4, :cond_a

    .line 155
    .line 156
    move p4, v1

    .line 157
    goto :goto_7

    .line 158
    :cond_a
    move p4, v2

    .line 159
    :goto_7
    add-int/lit8 p3, p3, -0x1

    .line 160
    .line 161
    add-int/lit8 p5, p2, -0x1

    .line 162
    .line 163
    if-ne p3, p5, :cond_b

    .line 164
    .line 165
    if-eqz p4, :cond_b

    .line 166
    .line 167
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    .line 168
    .line 169
    .line 170
    move-result p3

    .line 171
    int-to-float p4, p6

    .line 172
    cmpl-float p3, p3, p4

    .line 173
    .line 174
    if-ltz p3, :cond_b

    .line 175
    .line 176
    move p3, v2

    .line 177
    goto :goto_8

    .line 178
    :cond_b
    move p3, v1

    .line 179
    :goto_8
    iget p4, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 180
    .line 181
    sub-int/2addr p4, v2

    .line 182
    invoke-virtual {p0, p1, p4, p3}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->getItemSizeOrPrefetch(Lcom/caverock/androidsvg/SVG;IZ)I

    .line 183
    .line 184
    .line 185
    move-result p3

    .line 186
    if-eq p3, v4, :cond_c

    .line 187
    .line 188
    iget p4, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 189
    .line 190
    add-int/2addr p4, v4

    .line 191
    iput p4, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 192
    .line 193
    iget p4, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 194
    .line 195
    sub-int/2addr p4, p3

    .line 196
    iput p4, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_c
    return-void
.end method

.method public final onScroll(FLandroidx/compose/foundation/pager/PagerMeasureResult;)V
    .locals 10

    .line 1
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Lcom/caverock/androidsvg/SVG;

    .line 2
    .line 3
    iput-object p2, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 6
    .line 7
    iput-object p2, v1, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 8
    .line 9
    neg-float v7, p1

    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->traceWindowInfo()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getHasVisibleItems()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 p2, 0x0

    .line 18
    const/4 v0, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Landroidx/work/Operation$State;->getMainAxisViewportSize(Landroidx/compose/foundation/pager/PagerMeasureResult;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getTotalItemsCount()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->itemsCount:I

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getFirstVisibleLineIndex()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getLastVisibleLineIndex()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getTotalItemsCount()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getMainAxisExtraSpaceStart()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getMainAxisExtraSpaceEnd()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    cmpg-float v8, v7, p2

    .line 59
    .line 60
    iget-object v9, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    .line 61
    .line 62
    if-gtz v8, :cond_1

    .line 63
    .line 64
    rsub-int/lit8 v3, v5, 0x0

    .line 65
    .line 66
    iput v3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 67
    .line 68
    iput p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 69
    .line 70
    :goto_0
    iget p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 71
    .line 72
    if-lez p1, :cond_0

    .line 73
    .line 74
    iget p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 75
    .line 76
    if-lez p1, :cond_0

    .line 77
    .line 78
    add-int/lit8 p1, p1, -0x1

    .line 79
    .line 80
    invoke-virtual {v9, p1}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_0

    .line 85
    .line 86
    iget p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 87
    .line 88
    sub-int/2addr p1, v0

    .line 89
    invoke-virtual {v9, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    check-cast p1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 97
    .line 98
    iget p1, p1, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    .line 99
    .line 100
    iget v3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 101
    .line 102
    add-int/lit8 v3, v3, -0x1

    .line 103
    .line 104
    iput v3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 105
    .line 106
    iget v3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 107
    .line 108
    sub-int/2addr v3, p1

    .line 109
    iput v3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    iget p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 113
    .line 114
    sub-int/2addr p1, v0

    .line 115
    invoke-virtual {p0, v2, p1}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->removeOutOfBoundsItems(II)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_1
    rsub-int/lit8 p1, v6, 0x0

    .line 120
    .line 121
    iput p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 122
    .line 123
    iput v3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 124
    .line 125
    :goto_1
    iget p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 126
    .line 127
    if-lez p1, :cond_2

    .line 128
    .line 129
    iget p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 130
    .line 131
    add-int/lit8 v3, v4, -0x1

    .line 132
    .line 133
    if-ge p1, v3, :cond_2

    .line 134
    .line 135
    add-int/lit8 p1, p1, 0x1

    .line 136
    .line 137
    invoke-virtual {v9, p1}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_2

    .line 142
    .line 143
    iget p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 144
    .line 145
    add-int/2addr p1, v0

    .line 146
    invoke-virtual {v9, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    check-cast p1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 154
    .line 155
    iget p1, p1, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    .line 156
    .line 157
    iget v3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 158
    .line 159
    add-int/2addr v3, v0

    .line 160
    iput v3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 161
    .line 162
    iget v3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 163
    .line 164
    sub-int/2addr v3, p1

    .line 165
    iput v3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_2
    iget p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 169
    .line 170
    add-int/2addr p1, v0

    .line 171
    sub-int/2addr v4, v0

    .line 172
    invoke-virtual {p0, p1, v4}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->removeOutOfBoundsItems(II)V

    .line 173
    .line 174
    .line 175
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getHasVisibleItems()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_6

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {p1}, Landroidx/work/Operation$State;->getMainAxisViewportSize(Landroidx/compose/foundation/pager/PagerMeasureResult;)I

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    iget-object p1, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    .line 193
    .line 194
    if-eqz p1, :cond_4

    .line 195
    .line 196
    iget-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindow:Landroidx/appcompat/widget/PopupMenu$1;

    .line 197
    .line 198
    iget-object p1, p1, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p1, Landroidx/compose/foundation/pager/PagerState;

    .line 201
    .line 202
    iget p1, p1, Landroidx/compose/foundation/pager/PagerState;->latestPageSizeWithSpacing:I

    .line 203
    .line 204
    move v4, p1

    .line 205
    move p1, v2

    .line 206
    goto :goto_3

    .line 207
    :cond_4
    move p1, v2

    .line 208
    move v4, p1

    .line 209
    :goto_3
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getFirstVisibleLineIndex()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getLastVisibleLineIndex()I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getMainAxisExtraSpaceStart()I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getMainAxisExtraSpaceEnd()I

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    cmpg-float p2, v7, p2

    .line 226
    .line 227
    if-gtz p2, :cond_5

    .line 228
    .line 229
    move v8, v0

    .line 230
    :goto_4
    move-object v0, p0

    .line 231
    goto :goto_5

    .line 232
    :cond_5
    move v8, p1

    .line 233
    goto :goto_4

    .line 234
    :goto_5
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->onPrefetchForward(Lcom/caverock/androidsvg/SVG;IIIIIFZ)V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_6
    move-object v0, p0

    .line 239
    :goto_6
    iput v7, v0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->previousPassDelta:F

    .line 240
    .line 241
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->traceWindowInfo()V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public final removeOutOfBoundsItems(II)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->indicesToRemove:Landroidx/collection/MutableIntSet;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroidx/collection/MutableIntSet;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    .line 13
    .line 14
    iget-object v5, v4, Landroidx/collection/IntObjectMap;->keys:[I

    .line 15
    .line 16
    iget-object v6, v4, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 17
    .line 18
    array-length v7, v6

    .line 19
    add-int/lit8 v7, v7, -0x2

    .line 20
    .line 21
    const/16 v15, 0x8

    .line 22
    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    if-ltz v7, :cond_3

    .line 26
    .line 27
    move/from16 v8, v16

    .line 28
    .line 29
    const-wide/16 v17, 0x80

    .line 30
    .line 31
    const-wide/16 v19, 0xff

    .line 32
    .line 33
    :goto_0
    aget-wide v10, v6, v8

    .line 34
    .line 35
    const/4 v9, 0x7

    .line 36
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    not-long v12, v10

    .line 42
    shl-long/2addr v12, v9

    .line 43
    and-long/2addr v12, v10

    .line 44
    and-long v12, v12, v21

    .line 45
    .line 46
    cmp-long v12, v12, v21

    .line 47
    .line 48
    if-eqz v12, :cond_2

    .line 49
    .line 50
    sub-int v12, v8, v7

    .line 51
    .line 52
    not-int v12, v12

    .line 53
    ushr-int/lit8 v12, v12, 0x1f

    .line 54
    .line 55
    rsub-int/lit8 v12, v12, 0x8

    .line 56
    .line 57
    move/from16 v13, v16

    .line 58
    .line 59
    :goto_1
    if-ge v13, v12, :cond_1

    .line 60
    .line 61
    and-long v23, v10, v19

    .line 62
    .line 63
    cmp-long v14, v23, v17

    .line 64
    .line 65
    if-gez v14, :cond_0

    .line 66
    .line 67
    shl-int/lit8 v14, v8, 0x3

    .line 68
    .line 69
    add-int/2addr v14, v13

    .line 70
    aget v14, v5, v14

    .line 71
    .line 72
    if-gt v1, v14, :cond_0

    .line 73
    .line 74
    if-gt v14, v2, :cond_0

    .line 75
    .line 76
    invoke-virtual {v3, v14}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 77
    .line 78
    .line 79
    :cond_0
    shr-long/2addr v10, v15

    .line 80
    add-int/lit8 v13, v13, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    if-ne v12, v15, :cond_4

    .line 84
    .line 85
    :cond_2
    if-eq v8, v7, :cond_4

    .line 86
    .line 87
    add-int/lit8 v8, v8, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    const/4 v9, 0x7

    .line 91
    const-wide/16 v17, 0x80

    .line 92
    .line 93
    const-wide/16 v19, 0xff

    .line 94
    .line 95
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    .line 101
    .line 102
    iget-object v6, v5, Landroidx/collection/MutableIntIntMap;->keys:[I

    .line 103
    .line 104
    iget-object v7, v5, Landroidx/collection/MutableIntIntMap;->metadata:[J

    .line 105
    .line 106
    array-length v8, v7

    .line 107
    add-int/lit8 v8, v8, -0x2

    .line 108
    .line 109
    if-ltz v8, :cond_9

    .line 110
    .line 111
    move/from16 v10, v16

    .line 112
    .line 113
    :goto_2
    aget-wide v11, v7, v10

    .line 114
    .line 115
    not-long v13, v11

    .line 116
    shl-long/2addr v13, v9

    .line 117
    and-long/2addr v13, v11

    .line 118
    and-long v13, v13, v21

    .line 119
    .line 120
    cmp-long v13, v13, v21

    .line 121
    .line 122
    if-eqz v13, :cond_8

    .line 123
    .line 124
    sub-int v13, v10, v8

    .line 125
    .line 126
    not-int v13, v13

    .line 127
    ushr-int/lit8 v13, v13, 0x1f

    .line 128
    .line 129
    rsub-int/lit8 v13, v13, 0x8

    .line 130
    .line 131
    move/from16 v14, v16

    .line 132
    .line 133
    :goto_3
    if-ge v14, v13, :cond_7

    .line 134
    .line 135
    and-long v23, v11, v19

    .line 136
    .line 137
    cmp-long v23, v23, v17

    .line 138
    .line 139
    if-gez v23, :cond_5

    .line 140
    .line 141
    shl-int/lit8 v23, v10, 0x3

    .line 142
    .line 143
    add-int v23, v23, v14

    .line 144
    .line 145
    move/from16 v24, v9

    .line 146
    .line 147
    aget v9, v6, v23

    .line 148
    .line 149
    if-gt v1, v9, :cond_6

    .line 150
    .line 151
    if-gt v9, v2, :cond_6

    .line 152
    .line 153
    invoke-virtual {v3, v9}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_5
    move/from16 v24, v9

    .line 158
    .line 159
    :cond_6
    :goto_4
    shr-long/2addr v11, v15

    .line 160
    add-int/lit8 v14, v14, 0x1

    .line 161
    .line 162
    move/from16 v9, v24

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_7
    move/from16 v24, v9

    .line 166
    .line 167
    if-ne v13, v15, :cond_a

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_8
    move/from16 v24, v9

    .line 171
    .line 172
    :goto_5
    if-eq v10, v8, :cond_a

    .line 173
    .line 174
    add-int/lit8 v10, v10, 0x1

    .line 175
    .line 176
    move/from16 v9, v24

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_9
    move/from16 v24, v9

    .line 180
    .line 181
    :cond_a
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    .line 182
    .line 183
    iget-object v6, v0, Landroidx/collection/IntObjectMap;->keys:[I

    .line 184
    .line 185
    iget-object v7, v0, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 186
    .line 187
    array-length v8, v7

    .line 188
    add-int/lit8 v8, v8, -0x2

    .line 189
    .line 190
    if-ltz v8, :cond_e

    .line 191
    .line 192
    move/from16 v9, v16

    .line 193
    .line 194
    :goto_6
    aget-wide v10, v7, v9

    .line 195
    .line 196
    not-long v12, v10

    .line 197
    shl-long v12, v12, v24

    .line 198
    .line 199
    and-long/2addr v12, v10

    .line 200
    and-long v12, v12, v21

    .line 201
    .line 202
    cmp-long v12, v12, v21

    .line 203
    .line 204
    if-eqz v12, :cond_d

    .line 205
    .line 206
    sub-int v12, v9, v8

    .line 207
    .line 208
    not-int v12, v12

    .line 209
    ushr-int/lit8 v12, v12, 0x1f

    .line 210
    .line 211
    rsub-int/lit8 v12, v12, 0x8

    .line 212
    .line 213
    move/from16 v13, v16

    .line 214
    .line 215
    :goto_7
    if-ge v13, v12, :cond_c

    .line 216
    .line 217
    and-long v25, v10, v19

    .line 218
    .line 219
    cmp-long v14, v25, v17

    .line 220
    .line 221
    if-gez v14, :cond_b

    .line 222
    .line 223
    shl-int/lit8 v14, v9, 0x3

    .line 224
    .line 225
    add-int/2addr v14, v13

    .line 226
    aget v14, v6, v14

    .line 227
    .line 228
    if-gt v1, v14, :cond_b

    .line 229
    .line 230
    if-gt v14, v2, :cond_b

    .line 231
    .line 232
    invoke-virtual {v3, v14}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 233
    .line 234
    .line 235
    :cond_b
    shr-long/2addr v10, v15

    .line 236
    add-int/lit8 v13, v13, 0x1

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_c
    if-ne v12, v15, :cond_e

    .line 240
    .line 241
    :cond_d
    if-eq v9, v8, :cond_e

    .line 242
    .line 243
    add-int/lit8 v9, v9, 0x1

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_e
    iget-object v1, v3, Landroidx/collection/MutableIntSet;->elements:[I

    .line 247
    .line 248
    iget-object v2, v3, Landroidx/collection/MutableIntSet;->metadata:[J

    .line 249
    .line 250
    array-length v3, v2

    .line 251
    add-int/lit8 v3, v3, -0x2

    .line 252
    .line 253
    if-ltz v3, :cond_14

    .line 254
    .line 255
    move/from16 v6, v16

    .line 256
    .line 257
    :goto_8
    aget-wide v7, v2, v6

    .line 258
    .line 259
    not-long v9, v7

    .line 260
    shl-long v9, v9, v24

    .line 261
    .line 262
    and-long/2addr v9, v7

    .line 263
    and-long v9, v9, v21

    .line 264
    .line 265
    cmp-long v9, v9, v21

    .line 266
    .line 267
    if-eqz v9, :cond_13

    .line 268
    .line 269
    sub-int v9, v6, v3

    .line 270
    .line 271
    not-int v9, v9

    .line 272
    ushr-int/lit8 v9, v9, 0x1f

    .line 273
    .line 274
    rsub-int/lit8 v9, v9, 0x8

    .line 275
    .line 276
    move/from16 v10, v16

    .line 277
    .line 278
    :goto_9
    if-ge v10, v9, :cond_12

    .line 279
    .line 280
    and-long v11, v7, v19

    .line 281
    .line 282
    cmp-long v11, v11, v17

    .line 283
    .line 284
    if-gez v11, :cond_11

    .line 285
    .line 286
    shl-int/lit8 v11, v6, 0x3

    .line 287
    .line 288
    add-int/2addr v11, v10

    .line 289
    aget v11, v1, v11

    .line 290
    .line 291
    invoke-virtual {v4, v11}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    check-cast v12, Ljava/util/List;

    .line 296
    .line 297
    if-eqz v12, :cond_f

    .line 298
    .line 299
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 300
    .line 301
    .line 302
    move-result v13

    .line 303
    move/from16 v14, v16

    .line 304
    .line 305
    :goto_a
    if-ge v14, v13, :cond_f

    .line 306
    .line 307
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v23

    .line 311
    check-cast v23, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 312
    .line 313
    invoke-interface/range {v23 .. v23}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 314
    .line 315
    .line 316
    add-int/lit8 v14, v14, 0x1

    .line 317
    .line 318
    goto :goto_a

    .line 319
    :cond_f
    invoke-virtual {v5, v11}, Landroidx/collection/MutableIntIntMap;->findKeyIndex(I)I

    .line 320
    .line 321
    .line 322
    move-result v12

    .line 323
    if-ltz v12, :cond_10

    .line 324
    .line 325
    iget v13, v5, Landroidx/collection/MutableIntIntMap;->_size:I

    .line 326
    .line 327
    add-int/lit8 v13, v13, -0x1

    .line 328
    .line 329
    iput v13, v5, Landroidx/collection/MutableIntIntMap;->_size:I

    .line 330
    .line 331
    iget-object v13, v5, Landroidx/collection/MutableIntIntMap;->metadata:[J

    .line 332
    .line 333
    iget v14, v5, Landroidx/collection/MutableIntIntMap;->_capacity:I

    .line 334
    .line 335
    shr-int/lit8 v23, v12, 0x3

    .line 336
    .line 337
    and-int/lit8 v25, v12, 0x7

    .line 338
    .line 339
    shl-int/lit8 v25, v25, 0x3

    .line 340
    .line 341
    aget-wide v26, v13, v23

    .line 342
    .line 343
    move-object/from16 p0, v1

    .line 344
    .line 345
    move-object/from16 p1, v2

    .line 346
    .line 347
    shl-long v1, v19, v25

    .line 348
    .line 349
    not-long v1, v1

    .line 350
    and-long v1, v26, v1

    .line 351
    .line 352
    const-wide/16 v26, 0xfe

    .line 353
    .line 354
    shl-long v25, v26, v25

    .line 355
    .line 356
    or-long v1, v1, v25

    .line 357
    .line 358
    aput-wide v1, v13, v23

    .line 359
    .line 360
    add-int/lit8 v12, v12, -0x7

    .line 361
    .line 362
    and-int/2addr v12, v14

    .line 363
    and-int/lit8 v14, v14, 0x7

    .line 364
    .line 365
    add-int/2addr v12, v14

    .line 366
    shr-int/lit8 v12, v12, 0x3

    .line 367
    .line 368
    aput-wide v1, v13, v12

    .line 369
    .line 370
    goto :goto_b

    .line 371
    :cond_10
    move-object/from16 p0, v1

    .line 372
    .line 373
    move-object/from16 p1, v2

    .line 374
    .line 375
    :goto_b
    invoke-virtual {v0, v11}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    goto :goto_c

    .line 379
    :cond_11
    move-object/from16 p0, v1

    .line 380
    .line 381
    move-object/from16 p1, v2

    .line 382
    .line 383
    :goto_c
    shr-long/2addr v7, v15

    .line 384
    add-int/lit8 v10, v10, 0x1

    .line 385
    .line 386
    move-object/from16 v1, p0

    .line 387
    .line 388
    move-object/from16 v2, p1

    .line 389
    .line 390
    goto :goto_9

    .line 391
    :cond_12
    move-object/from16 p0, v1

    .line 392
    .line 393
    move-object/from16 p1, v2

    .line 394
    .line 395
    if-ne v9, v15, :cond_14

    .line 396
    .line 397
    goto :goto_d

    .line 398
    :cond_13
    move-object/from16 p0, v1

    .line 399
    .line 400
    move-object/from16 p1, v2

    .line 401
    .line 402
    :goto_d
    if-eq v6, v3, :cond_14

    .line 403
    .line 404
    add-int/lit8 v6, v6, 0x1

    .line 405
    .line 406
    move-object/from16 v1, p0

    .line 407
    .line 408
    move-object/from16 v2, p1

    .line 409
    .line 410
    goto/16 :goto_8

    .line 411
    .line 412
    :cond_14
    return-void
.end method

.method public final resetStrategy()V
    .locals 14

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    iput v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 5
    .line 6
    const/high16 v0, -0x80000000

    .line 7
    .line 8
    iput v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 12
    .line 13
    iput v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->shouldRefillWindow:Z

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/collection/MutableIntIntMap;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/collection/MutableIntObjectMap;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 30
    .line 31
    array-length v2, v1

    .line 32
    add-int/lit8 v2, v2, -0x2

    .line 33
    .line 34
    if-ltz v2, :cond_4

    .line 35
    .line 36
    move v3, v0

    .line 37
    :goto_0
    aget-wide v4, v1, v3

    .line 38
    .line 39
    not-long v6, v4

    .line 40
    const/4 v8, 0x7

    .line 41
    shl-long/2addr v6, v8

    .line 42
    and-long/2addr v6, v4

    .line 43
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    and-long/2addr v6, v8

    .line 49
    cmp-long v6, v6, v8

    .line 50
    .line 51
    if-eqz v6, :cond_3

    .line 52
    .line 53
    sub-int v6, v3, v2

    .line 54
    .line 55
    not-int v6, v6

    .line 56
    ushr-int/lit8 v6, v6, 0x1f

    .line 57
    .line 58
    const/16 v7, 0x8

    .line 59
    .line 60
    rsub-int/lit8 v6, v6, 0x8

    .line 61
    .line 62
    move v8, v0

    .line 63
    :goto_1
    if-ge v8, v6, :cond_2

    .line 64
    .line 65
    const-wide/16 v9, 0xff

    .line 66
    .line 67
    and-long/2addr v9, v4

    .line 68
    const-wide/16 v11, 0x80

    .line 69
    .line 70
    cmp-long v9, v9, v11

    .line 71
    .line 72
    if-gez v9, :cond_1

    .line 73
    .line 74
    shl-int/lit8 v9, v3, 0x3

    .line 75
    .line 76
    add-int/2addr v9, v8

    .line 77
    iget-object v10, p0, Landroidx/collection/IntObjectMap;->keys:[I

    .line 78
    .line 79
    aget v10, v10, v9

    .line 80
    .line 81
    iget-object v10, p0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 82
    .line 83
    aget-object v10, v10, v9

    .line 84
    .line 85
    check-cast v10, Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    move v12, v0

    .line 92
    :goto_2
    if-ge v12, v11, :cond_0

    .line 93
    .line 94
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    check-cast v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 99
    .line 100
    invoke-interface {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v12, v12, 0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_0
    invoke-virtual {p0, v9}, Landroidx/collection/MutableIntObjectMap;->removeValueAt(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_1
    shr-long/2addr v4, v7

    .line 110
    add-int/lit8 v8, v8, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    if-ne v6, v7, :cond_4

    .line 114
    .line 115
    :cond_3
    if-eq v3, v2, :cond_4

    .line 116
    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    return-void
.end method

.method public final traceWindowInfo()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartExtraSpace:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-string v2, "prefetchWindowStartExtraSpace"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lorg/wikipedia/util/FileUtil;->traceValue(Ljava/lang/String;J)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndExtraSpace:I

    .line 10
    .line 11
    int-to-long v0, v0

    .line 12
    const-string v2, "prefetchWindowEndExtraSpace"

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Lorg/wikipedia/util/FileUtil;->traceValue(Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowStartLine:I

    .line 18
    .line 19
    int-to-long v0, v0

    .line 20
    const-string v2, "prefetchWindowStartIndex"

    .line 21
    .line 22
    invoke-static {v2, v0, v1}, Lorg/wikipedia/util/FileUtil;->traceValue(Ljava/lang/String;J)V

    .line 23
    .line 24
    .line 25
    iget p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->prefetchWindowEndLine:I

    .line 26
    .line 27
    int-to-long v0, p0

    .line 28
    const-string p0, "prefetchWindowEndIndex"

    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Lorg/wikipedia/util/FileUtil;->traceValue(Ljava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
