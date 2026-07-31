.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# instance fields
.field public canDrag:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

.field public channel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

.field public enabled:Z

.field public isListeningForEvents:Z

.field public nodeOffset:J

.field public onDragStarted:Lkotlin/jvm/functions/Function3;

.field public onDragStopped:Lkotlin/jvm/functions/Function3;

.field public orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

.field public state:Landroidx/compose/foundation/gestures/DraggableState;


# direct methods
.method public static final access$processDragCancel(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragCancel$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragCancel$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragCancel$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragCancel$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragCancel$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragCancel$1;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragCancel$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v0, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragCancel$1;->label:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    check-cast p1, Lkotlin/Unit;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    :goto_1
    iput-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 55
    .line 56
    :cond_3
    new-instance p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStopped;

    .line 57
    .line 58
    const-wide/16 v0, 0x0

    .line 59
    .line 60
    invoke-direct {p1, v0, v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStopped;-><init>(J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->onDragStopped(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStopped;)V

    .line 64
    .line 65
    .line 66
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method

.method public static final access$processDragStart(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStarted;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStart$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStart$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStart$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStart$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStart$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStart$1;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStart$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v0, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStart$1;->label:I

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lkotlin/Unit;

    .line 42
    .line 43
    move-object p2, p1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    check-cast p2, Lkotlin/Unit;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 61
    .line 62
    :goto_1
    new-instance p2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 63
    .line 64
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    move-object v8, p2

    .line 68
    move-object p2, p1

    .line 69
    move-object p1, v8

    .line 70
    :goto_2
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 71
    .line 72
    iget-wide v4, p2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStarted;->startPoint:J

    .line 73
    .line 74
    iget-boolean p1, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    iget-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 79
    .line 80
    sget-object p2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableKt;->NoOpOnDragStarted:Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 81
    .line 82
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v2, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 94
    .line 95
    const/4 v7, 0x5

    .line 96
    const/4 v6, 0x0

    .line 97
    move-object v3, p0

    .line 98
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;-><init>(Landroidx/compose/ui/node/DelegatingNode;JLkotlin/coroutines/Continuation;I)V

    .line 99
    .line 100
    .line 101
    sget-object p0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 102
    .line 103
    invoke-static {p1, v6, p0, v2, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 107
    .line 108
    return-object p0
.end method

.method public static final access$processDragStop(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStopped;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStop$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStop$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStop$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStop$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStop$1;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStop$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v0, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$processDragStop$1;->label:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    if-ne v0, p1, :cond_1

    .line 34
    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    check-cast p2, Lkotlin/Unit;

    .line 39
    .line 40
    move-object p1, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 52
    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    :goto_1
    iput-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->onDragStopped(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStopped;)V

    .line 58
    .line 59
    .line 60
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0
.end method


# virtual methods
.method public final getTouchBoundsExpansion-RZrCHBk()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/node/TouchBoundsExpansion;->None:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final bridge interceptOutOfBoundsChildEvents()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCancelPointerInput()V
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->onCancelPointerInput()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onDensityChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->onCancelPointerInput()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDragStopped(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStopped;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 9
    .line 10
    sget-object v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableKt;->NoOpOnDragStopped:Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-direct {v1, p0, p1, v2, v3}, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 31
    .line 32
    invoke-static {v0, v2, p0, v1, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->enabled:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-direct {v0, v1, p0}, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->EmptyPointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 20
    .line 21
    new-instance v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v2, v2, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 31
    .line 32
    :cond_0
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final onViewConfigurationChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->onCancelPointerInput()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge sharePointerInputWithSiblings()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
