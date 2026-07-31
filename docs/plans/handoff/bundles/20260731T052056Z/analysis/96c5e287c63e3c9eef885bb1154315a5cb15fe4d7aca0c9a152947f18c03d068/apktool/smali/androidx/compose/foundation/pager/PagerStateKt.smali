.class public abstract Landroidx/compose/foundation/pager/PagerStateKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final EmptyLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

.field public static final UnitDensity:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v11, Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 2
    .line 3
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v11, Landroidx/compose/foundation/pager/PagerStateKt;->UnitDensity:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 7
    .line 8
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 9
    .line 10
    sget-object v8, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->INSTANCE:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 11
    .line 12
    new-instance v9, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;

    .line 13
    .line 14
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlinx/coroutines/AwaitKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 20
    .line 21
    .line 22
    move-result-object v10

    .line 23
    const/4 v0, 0x0

    .line 24
    const/16 v1, 0xf

    .line 25
    .line 26
    invoke-static {v0, v0, v0, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 27
    .line 28
    .line 29
    move-result-wide v12

    .line 30
    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct/range {v0 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(IIILandroidx/compose/foundation/gestures/Orientation;IIILandroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/ui/layout/MeasureResult;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;J)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroidx/compose/foundation/pager/PagerStateKt;->EmptyLayoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 42
    .line 43
    return-void
.end method

.method public static final calculateNewMaxScrollOffset(Landroidx/compose/foundation/pager/PagerMeasureResult;I)J
    .locals 9

    .line 1
    iget v0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    .line 4
    .line 5
    add-int v2, v0, v1

    .line 6
    .line 7
    int-to-long v3, p1

    .line 8
    int-to-long v5, v2

    .line 9
    mul-long/2addr v3, v5

    .line 10
    iget p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    .line 11
    .line 12
    neg-int p1, p1

    .line 13
    int-to-long v5, p1

    .line 14
    add-long/2addr v3, v5

    .line 15
    iget v2, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->afterContentPadding:I

    .line 16
    .line 17
    int-to-long v5, v2

    .line 18
    add-long/2addr v3, v5

    .line 19
    int-to-long v5, v0

    .line 20
    sub-long/2addr v3, v5

    .line 21
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 22
    .line 23
    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 24
    .line 25
    if-ne v0, v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getViewportSize-YbymL2g()J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    const/16 v0, 0x20

    .line 32
    .line 33
    shr-long/2addr v5, v0

    .line 34
    :goto_0
    long-to-int v0, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getViewportSize-YbymL2g()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    const-wide v7, 0xffffffffL

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    and-long/2addr v5, v7

    .line 46
    goto :goto_0

    .line 47
    :goto_1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 48
    .line 49
    invoke-virtual {p0, v0, v1, p1, v2}, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->position(IIII)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-static {p0, p1, v0}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    sub-int/2addr v0, p0

    .line 59
    int-to-long p0, v0

    .line 60
    sub-long/2addr v3, p0

    .line 61
    const-wide/16 p0, 0x0

    .line 62
    .line 63
    cmp-long v0, v3, p0

    .line 64
    .line 65
    if-gez v0, :cond_1

    .line 66
    .line 67
    return-wide p0

    .line 68
    :cond_1
    return-wide v3
.end method

.method public static final rememberPagerState(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/foundation/pager/DefaultPagerState;
    .locals 6

    .line 1
    const/4 p3, 0x0

    .line 2
    new-array v0, p3, [Ljava/lang/Object;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/foundation/pager/DefaultPagerState;->Saver:Landroidx/cardview/widget/CardView$1;

    .line 5
    .line 6
    and-int/lit8 v2, p2, 0xe

    .line 7
    .line 8
    xor-int/lit8 v2, v2, 0x6

    .line 9
    .line 10
    const/4 v3, 0x4

    .line 11
    const/4 v4, 0x1

    .line 12
    if-le v2, v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    :cond_0
    and-int/lit8 v2, p2, 0x6

    .line 21
    .line 22
    if-ne v2, v3, :cond_2

    .line 23
    .line 24
    :cond_1
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move v2, p3

    .line 27
    :goto_0
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    or-int/2addr v2, v3

    .line 33
    and-int/lit16 v3, p2, 0x380

    .line 34
    .line 35
    xor-int/lit16 v3, v3, 0x180

    .line 36
    .line 37
    const/16 v5, 0x100

    .line 38
    .line 39
    if-le v3, v5, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_5

    .line 46
    .line 47
    :cond_3
    and-int/lit16 p2, p2, 0x180

    .line 48
    .line 49
    if-ne p2, v5, :cond_4

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    move v4, p3

    .line 53
    :cond_5
    :goto_1
    or-int p2, v2, v4

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-nez p2, :cond_6

    .line 60
    .line 61
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 62
    .line 63
    if-ne v2, p2, :cond_7

    .line 64
    .line 65
    :cond_6
    new-instance v2, Lorg/wikipedia/search/NoSearchResultsKt$$ExternalSyntheticLambda3;

    .line 66
    .line 67
    invoke-direct {v2, p3, p0}, Lorg/wikipedia/search/NoSearchResultsKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_7
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 74
    .line 75
    invoke-static {v0, v1, v2, p1, p3}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 80
    .line 81
    iget-object p2, p1, Landroidx/compose/foundation/pager/DefaultPagerState;->pageCountState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 82
    .line 83
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-object p1
.end method
