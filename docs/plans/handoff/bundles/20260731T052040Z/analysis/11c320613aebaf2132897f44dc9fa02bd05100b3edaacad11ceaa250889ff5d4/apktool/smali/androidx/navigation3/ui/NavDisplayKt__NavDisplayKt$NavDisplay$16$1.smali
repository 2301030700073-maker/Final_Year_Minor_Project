.class public final Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $sceneMap:Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap;"
        }
    .end annotation
.end field

.field final synthetic $transition:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition;"
        }
    .end annotation
.end field

.field final synthetic $zIndices:Landroidx/collection/MutableObjectFloatMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectFloatMap;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/snapshots/SnapshotStateMap;Landroidx/collection/MutableObjectFloatMap;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->$sceneMap:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->$zIndices:Landroidx/collection/MutableObjectFloatMap;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->$sceneMap:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->$zIndices:Landroidx/collection/MutableObjectFloatMap;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, p0, p2}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/snapshots/SnapshotStateMap;Landroidx/collection/MutableObjectFloatMap;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
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
    invoke-virtual {p0, p1, p2}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->label:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-ne v0, v3, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    invoke-direct {v0, p1, v4}, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/animation/core/Transition;I)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;

    .line 33
    .line 34
    invoke-direct {p1, v1, v0, v1}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;-><init>(Landroidx/compose/runtime/SnapshotFlowManager;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lkotlinx/coroutines/flow/SafeFlow;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 45
    .line 46
    iget-object v5, p0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->$sceneMap:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 47
    .line 48
    iget-object v6, p0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->$zIndices:Landroidx/collection/MutableObjectFloatMap;

    .line 49
    .line 50
    invoke-direct {p1, v4, v1, v5, v6}, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput v3, p0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;->label:I

    .line 54
    .line 55
    new-instance v1, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1$invokeSuspend$$inlined$filter$1$2;

    .line 56
    .line 57
    invoke-direct {v1, p1}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1$invokeSuspend$$inlined$filter$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, p0}, Lkotlinx/coroutines/flow/AbstractFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 65
    .line 66
    if-ne p0, p1, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move-object p0, v2

    .line 70
    :goto_0
    if-ne p0, p1, :cond_3

    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_3
    return-object v2
.end method
