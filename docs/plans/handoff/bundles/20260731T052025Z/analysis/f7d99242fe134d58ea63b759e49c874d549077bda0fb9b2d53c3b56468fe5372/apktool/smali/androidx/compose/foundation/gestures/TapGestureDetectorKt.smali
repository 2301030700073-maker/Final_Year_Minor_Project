.class public abstract Landroidx/compose/foundation/gestures/TapGestureDetectorKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final NoPressGesture:Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v1, v3, v2}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->NoPressGesture:Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 10
    .line 11
    return-void
.end method

.method public static final awaitFirstDown(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->label:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-boolean p0, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->Z$0:Z

    .line 35
    .line 36
    iget-object p1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->L$1:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 37
    .line 38
    iget-object p2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->L$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 39
    .line 40
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    move-object v4, p1

    .line 44
    move p1, p0

    .line 45
    move-object p0, p2

    .line 46
    move-object p2, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0

    .line 55
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iput-object p0, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->L$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 59
    .line 60
    iput-object p2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->L$1:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 61
    .line 62
    iput-boolean p1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->Z$0:Z

    .line 63
    .line 64
    iput v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->label:I

    .line 65
    .line 66
    invoke-virtual {p0, p2, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 71
    .line 72
    if-ne p3, v1, :cond_4

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_4
    :goto_1
    check-cast p3, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 76
    .line 77
    invoke-static {p3, p1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->isChangedToDown$default(Landroidx/compose/ui/input/pointer/PointerEvent;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    iget-object p0, p3, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method

.method public static synthetic awaitFirstDown$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;I)Ljava/lang/Object;
    .locals 1

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    and-int/lit8 p2, p2, 0x2

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    sget-object p2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    sget-object p2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 16
    .line 17
    :goto_1
    invoke-static {p0, v0, p2, p1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static final consumeUntilUp(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->label:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->L$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    iput-object p0, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->L$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 51
    .line 52
    iput v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->label:I

    .line 53
    .line 54
    invoke-static {p0, v0}, Landroidx/compose/ui/Modifier$-CC;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 59
    .line 60
    if-ne p1, v1, :cond_3

    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_3
    :goto_2
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 64
    .line 65
    iget-object v1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x0

    .line 72
    move v5, v4

    .line 73
    :goto_3
    if-ge v5, v3, :cond_4

    .line 74
    .line 75
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 80
    .line 81
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    iget-object p1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    :goto_4
    if-ge v4, v1, :cond_6

    .line 94
    .line 95
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 100
    .line 101
    iget-boolean v3, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 102
    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0
.end method

.method public static detectTapGestures$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->NoPressGesture:Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v5, p1

    .line 10
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MutatorMutex$mutate$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p2}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

.method public static isChangedToDown$default(Landroidx/compose/ui/input/pointer/PointerEvent;Z)Z
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerId;->changedToDown(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerId;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    :goto_1
    if-nez v3, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public static launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, p1, p2, v2, v1}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 11
    .line 12
    invoke-static {p0, v2, p2, v0, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final processTapGesture(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    instance-of v2, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;

    .line 11
    .line 12
    iget v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->label:I

    .line 32
    .line 33
    sget-object v10, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 34
    .line 35
    sget-object v12, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 36
    .line 37
    sget-object v13, Landroidx/compose/foundation/gestures/LongPressResult$Success;->INSTANCE:Landroidx/compose/foundation/gestures/LongPressResult$Success;

    .line 38
    .line 39
    sget-object v14, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->NoPressGesture:Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 40
    .line 41
    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 42
    .line 43
    const/16 p7, 0x0

    .line 44
    .line 45
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 46
    .line 47
    packed-switch v3, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object p7

    .line 56
    :pswitch_0
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 59
    .line 60
    iget-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v3, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 63
    .line 64
    iget-object v2, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 67
    .line 68
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    move-object/from16 v16, v15

    .line 72
    .line 73
    const/4 v15, 0x0

    .line 74
    goto/16 :goto_e

    .line 75
    .line 76
    :pswitch_1
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$8:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 79
    .line 80
    iget-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$7:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 83
    .line 84
    iget-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$6:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v7, Lkotlinx/coroutines/Job;

    .line 87
    .line 88
    iget-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 91
    .line 92
    iget-object v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 95
    .line 96
    iget-object v10, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 97
    .line 98
    iget-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v11, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 101
    .line 102
    iget-object v12, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    .line 105
    .line 106
    iget-object v14, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v14, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 109
    .line 110
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    move-object v4, v3

    .line 114
    move-object v3, v11

    .line 115
    move-object/from16 v18, v13

    .line 116
    .line 117
    move-object/from16 v16, v15

    .line 118
    .line 119
    const/4 v15, 0x0

    .line 120
    move-object v11, v9

    .line 121
    move-object v9, v12

    .line 122
    goto/16 :goto_c

    .line 123
    .line 124
    :pswitch_2
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 127
    .line 128
    iget-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v3, Lkotlinx/coroutines/Job;

    .line 131
    .line 132
    iget-object v5, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 133
    .line 134
    iget-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 137
    .line 138
    iget-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v8, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 141
    .line 142
    iget-object v2, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 145
    .line 146
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    move-object/from16 v16, v15

    .line 150
    .line 151
    const/4 v15, 0x0

    .line 152
    goto/16 :goto_b

    .line 153
    .line 154
    :pswitch_3
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$8:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 157
    .line 158
    iget-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$7:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 161
    .line 162
    iget-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$6:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 165
    .line 166
    iget-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v8, Lkotlin/jvm/functions/Function3;

    .line 169
    .line 170
    iget-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 173
    .line 174
    iget-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 175
    .line 176
    iget-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v4, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 179
    .line 180
    iget-object v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .line 183
    .line 184
    move-object/from16 p0, v0

    .line 185
    .line 186
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 189
    .line 190
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    move-object/from16 v19, v12

    .line 194
    .line 195
    move-object/from16 v18, v13

    .line 196
    .line 197
    move-object/from16 v16, v15

    .line 198
    .line 199
    move-object v12, v0

    .line 200
    move-object/from16 v0, p0

    .line 201
    .line 202
    goto/16 :goto_9

    .line 203
    .line 204
    :pswitch_4
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 207
    .line 208
    iget-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v3, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 211
    .line 212
    iget-object v2, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 215
    .line 216
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    move-object/from16 v16, v15

    .line 220
    .line 221
    const/4 v15, 0x0

    .line 222
    goto/16 :goto_5

    .line 223
    .line 224
    :pswitch_5
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$8:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 227
    .line 228
    iget-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$7:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 231
    .line 232
    iget-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$6:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 235
    .line 236
    iget-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v6, Lkotlin/jvm/functions/Function3;

    .line 239
    .line 240
    iget-object v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 243
    .line 244
    iget-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 245
    .line 246
    iget-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v8, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 249
    .line 250
    iget-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    .line 253
    .line 254
    move-object/from16 p0, v0

    .line 255
    .line 256
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 259
    .line 260
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    move-object/from16 v16, v15

    .line 264
    .line 265
    move-object v15, v9

    .line 266
    move-object v9, v7

    .line 267
    move-object v7, v6

    .line 268
    move-object v6, v4

    .line 269
    move-object v4, v8

    .line 270
    move-object v8, v11

    .line 271
    move-object/from16 v11, p0

    .line 272
    .line 273
    goto/16 :goto_4

    .line 274
    .line 275
    :pswitch_6
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$7:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 278
    .line 279
    iget-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$6:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 282
    .line 283
    iget-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v4, Lkotlin/jvm/functions/Function3;

    .line 286
    .line 287
    iget-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 290
    .line 291
    iget-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 292
    .line 293
    iget-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v8, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 296
    .line 297
    iget-object v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .line 300
    .line 301
    iget-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v11, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 304
    .line 305
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    move-object/from16 v16, v15

    .line 309
    .line 310
    goto/16 :goto_3

    .line 311
    .line 312
    :pswitch_7
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$6:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 315
    .line 316
    iget-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v3, Lkotlin/jvm/functions/Function3;

    .line 319
    .line 320
    iget-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 323
    .line 324
    iget-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 325
    .line 326
    iget-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v7, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 329
    .line 330
    iget-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    .line 333
    .line 334
    iget-object v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v9, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 337
    .line 338
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    move-object/from16 v21, v7

    .line 342
    .line 343
    move-object v7, v3

    .line 344
    move-object/from16 v3, v21

    .line 345
    .line 346
    move-object/from16 v21, v6

    .line 347
    .line 348
    move-object v6, v4

    .line 349
    move-object/from16 v4, v21

    .line 350
    .line 351
    goto :goto_1

    .line 352
    :pswitch_8
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 356
    .line 357
    move-object/from16 v1, p1

    .line 358
    .line 359
    iput-object v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 360
    .line 361
    move-object/from16 v3, p2

    .line 362
    .line 363
    iput-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 364
    .line 365
    move-object/from16 v4, p3

    .line 366
    .line 367
    iput-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 368
    .line 369
    move-object/from16 v6, p4

    .line 370
    .line 371
    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 372
    .line 373
    move-object/from16 v7, p5

    .line 374
    .line 375
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 376
    .line 377
    move-object/from16 v8, p6

    .line 378
    .line 379
    iput-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$6:Ljava/lang/Object;

    .line 380
    .line 381
    const/4 v9, 0x1

    .line 382
    iput v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->label:I

    .line 383
    .line 384
    const/4 v11, 0x3

    .line 385
    invoke-static {v0, v2, v11}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    if-ne v9, v5, :cond_1

    .line 390
    .line 391
    goto/16 :goto_d

    .line 392
    .line 393
    :cond_1
    move-object/from16 v21, v9

    .line 394
    .line 395
    move-object v9, v0

    .line 396
    move-object v0, v8

    .line 397
    move-object v8, v1

    .line 398
    move-object/from16 v1, v21

    .line 399
    .line 400
    :goto_1
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 401
    .line 402
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 403
    .line 404
    .line 405
    new-instance v11, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$resetJob$1;

    .line 406
    .line 407
    move-object/from16 p3, v1

    .line 408
    .line 409
    move-object/from16 v16, v15

    .line 410
    .line 411
    const/4 v1, 0x0

    .line 412
    const/4 v15, 0x0

    .line 413
    invoke-direct {v11, v3, v15, v1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$resetJob$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;I)V

    .line 414
    .line 415
    .line 416
    const/4 v1, 0x1

    .line 417
    invoke-static {v8, v15, v10, v11, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 418
    .line 419
    .line 420
    move-result-object v11

    .line 421
    if-eq v7, v14, :cond_2

    .line 422
    .line 423
    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$2;

    .line 424
    .line 425
    const/16 v20, 0x0

    .line 426
    .line 427
    move-object/from16 p0, v1

    .line 428
    .line 429
    move-object/from16 p2, v3

    .line 430
    .line 431
    move-object/from16 p1, v7

    .line 432
    .line 433
    move-object/from16 p4, v15

    .line 434
    .line 435
    move/from16 p5, v20

    .line 436
    .line 437
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$2;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;I)V

    .line 438
    .line 439
    .line 440
    move-object/from16 v15, p0

    .line 441
    .line 442
    move-object/from16 v1, p2

    .line 443
    .line 444
    move-object/from16 v3, p3

    .line 445
    .line 446
    invoke-static {v8, v11, v15}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 447
    .line 448
    .line 449
    goto :goto_2

    .line 450
    :cond_2
    move-object v1, v3

    .line 451
    move-object/from16 v3, p3

    .line 452
    .line 453
    :goto_2
    if-nez v6, :cond_4

    .line 454
    .line 455
    iput-object v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 456
    .line 457
    iput-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 458
    .line 459
    iput-object v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 460
    .line 461
    iput-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 462
    .line 463
    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 464
    .line 465
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 466
    .line 467
    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$6:Ljava/lang/Object;

    .line 468
    .line 469
    iput-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$7:Ljava/lang/Object;

    .line 470
    .line 471
    const/4 v3, 0x2

    .line 472
    iput v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->label:I

    .line 473
    .line 474
    invoke-static {v9, v12, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->waitForUpOrCancellation(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    if-ne v3, v5, :cond_3

    .line 479
    .line 480
    goto/16 :goto_d

    .line 481
    .line 482
    :cond_3
    move-object/from16 v21, v3

    .line 483
    .line 484
    move-object v3, v0

    .line 485
    move-object v0, v11

    .line 486
    move-object v11, v9

    .line 487
    move-object v9, v8

    .line 488
    move-object v8, v1

    .line 489
    move-object/from16 v1, v21

    .line 490
    .line 491
    move-object/from16 v21, v7

    .line 492
    .line 493
    move-object v7, v4

    .line 494
    move-object/from16 v4, v21

    .line 495
    .line 496
    :goto_3
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 497
    .line 498
    move-object/from16 v21, v8

    .line 499
    .line 500
    move-object v8, v4

    .line 501
    move-object/from16 v4, v21

    .line 502
    .line 503
    goto/16 :goto_7

    .line 504
    .line 505
    :cond_4
    iput-object v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 506
    .line 507
    iput-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 508
    .line 509
    iput-object v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 510
    .line 511
    iput-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 512
    .line 513
    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 514
    .line 515
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 516
    .line 517
    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$6:Ljava/lang/Object;

    .line 518
    .line 519
    iput-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$7:Ljava/lang/Object;

    .line 520
    .line 521
    iput-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$8:Ljava/lang/Object;

    .line 522
    .line 523
    const/4 v15, 0x3

    .line 524
    iput v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->label:I

    .line 525
    .line 526
    invoke-static {v9, v12, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->waitForLongPress(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v15

    .line 530
    if-ne v15, v5, :cond_5

    .line 531
    .line 532
    goto/16 :goto_d

    .line 533
    .line 534
    :cond_5
    move-object/from16 v21, v6

    .line 535
    .line 536
    move-object v6, v0

    .line 537
    move-object v0, v9

    .line 538
    move-object v9, v4

    .line 539
    move-object v4, v1

    .line 540
    move-object v1, v15

    .line 541
    move-object/from16 v15, v21

    .line 542
    .line 543
    :goto_4
    check-cast v1, Landroidx/compose/foundation/gestures/LongPressResult;

    .line 544
    .line 545
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v20

    .line 549
    if-eqz v20, :cond_7

    .line 550
    .line 551
    iget-wide v6, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 552
    .line 553
    new-instance v1, Landroidx/compose/ui/geometry/Offset;

    .line 554
    .line 555
    invoke-direct {v1, v6, v7}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 556
    .line 557
    .line 558
    invoke-interface {v15, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    iput-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 562
    .line 563
    iput-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 564
    .line 565
    iput-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 566
    .line 567
    const/4 v15, 0x0

    .line 568
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 569
    .line 570
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 571
    .line 572
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 573
    .line 574
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$6:Ljava/lang/Object;

    .line 575
    .line 576
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$7:Ljava/lang/Object;

    .line 577
    .line 578
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$8:Ljava/lang/Object;

    .line 579
    .line 580
    const/4 v1, 0x4

    .line 581
    iput v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->label:I

    .line 582
    .line 583
    invoke-static {v0, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->consumeUntilUp(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    if-ne v0, v5, :cond_6

    .line 588
    .line 589
    goto/16 :goto_d

    .line 590
    .line 591
    :cond_6
    move-object v3, v4

    .line 592
    move-object v2, v8

    .line 593
    move-object v0, v11

    .line 594
    :goto_5
    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;

    .line 595
    .line 596
    const/4 v4, 0x0

    .line 597
    invoke-direct {v1, v3, v15, v4}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;I)V

    .line 598
    .line 599
    .line 600
    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 601
    .line 602
    .line 603
    return-object v16

    .line 604
    :cond_7
    instance-of v3, v1, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    .line 605
    .line 606
    if-eqz v3, :cond_8

    .line 607
    .line 608
    check-cast v1, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    .line 609
    .line 610
    iget-object v1, v1, Landroidx/compose/foundation/gestures/LongPressResult$Released;->finalUpChange:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 611
    .line 612
    goto :goto_6

    .line 613
    :cond_8
    instance-of v1, v1, Landroidx/compose/foundation/gestures/LongPressResult$Canceled;

    .line 614
    .line 615
    if-eqz v1, :cond_17

    .line 616
    .line 617
    const/4 v1, 0x0

    .line 618
    :goto_6
    move-object v3, v11

    .line 619
    move-object v11, v0

    .line 620
    move-object v0, v3

    .line 621
    move-object v3, v8

    .line 622
    move-object v8, v7

    .line 623
    move-object v7, v9

    .line 624
    move-object v9, v3

    .line 625
    move-object v3, v6

    .line 626
    move-object v6, v15

    .line 627
    :goto_7
    if-nez v1, :cond_9

    .line 628
    .line 629
    new-instance v15, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;

    .line 630
    .line 631
    move-object/from16 v19, v12

    .line 632
    .line 633
    move-object/from16 v18, v13

    .line 634
    .line 635
    const/4 v12, 0x0

    .line 636
    const/4 v13, 0x3

    .line 637
    invoke-direct {v15, v4, v12, v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;I)V

    .line 638
    .line 639
    .line 640
    invoke-static {v9, v0, v15}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    goto :goto_8

    .line 645
    :cond_9
    move-object/from16 v19, v12

    .line 646
    .line 647
    move-object/from16 v18, v13

    .line 648
    .line 649
    const/4 v12, 0x0

    .line 650
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 651
    .line 652
    .line 653
    new-instance v13, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;

    .line 654
    .line 655
    const/4 v15, 0x4

    .line 656
    invoke-direct {v13, v4, v12, v15}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;I)V

    .line 657
    .line 658
    .line 659
    invoke-static {v9, v0, v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    :goto_8
    if-eqz v1, :cond_16

    .line 664
    .line 665
    if-nez v7, :cond_a

    .line 666
    .line 667
    if-eqz v3, :cond_16

    .line 668
    .line 669
    iget-wide v0, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 670
    .line 671
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    .line 672
    .line 673
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 674
    .line 675
    .line 676
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    return-object v16

    .line 680
    :cond_a
    iput-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 681
    .line 682
    iput-object v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 683
    .line 684
    iput-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 685
    .line 686
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 687
    .line 688
    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 689
    .line 690
    iput-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 691
    .line 692
    iput-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$6:Ljava/lang/Object;

    .line 693
    .line 694
    iput-object v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$7:Ljava/lang/Object;

    .line 695
    .line 696
    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$8:Ljava/lang/Object;

    .line 697
    .line 698
    const/4 v12, 0x5

    .line 699
    iput v12, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->label:I

    .line 700
    .line 701
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 702
    .line 703
    .line 704
    move-result-object v12

    .line 705
    invoke-interface {v12}, Landroidx/compose/ui/platform/ViewConfiguration;->getDoubleTapTimeoutMillis()J

    .line 706
    .line 707
    .line 708
    move-result-wide v12

    .line 709
    new-instance v15, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitSecondDown$2;

    .line 710
    .line 711
    move-object/from16 v17, v0

    .line 712
    .line 713
    const/4 v0, 0x0

    .line 714
    invoke-direct {v15, v1, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitSecondDown$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v11, v12, v13, v15, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    if-ne v0, v5, :cond_b

    .line 722
    .line 723
    goto/16 :goto_d

    .line 724
    .line 725
    :cond_b
    move-object v12, v11

    .line 726
    move-object v11, v6

    .line 727
    move-object v6, v7

    .line 728
    move-object v7, v3

    .line 729
    move-object v3, v1

    .line 730
    move-object v1, v0

    .line 731
    move-object/from16 v0, v17

    .line 732
    .line 733
    :goto_9
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 734
    .line 735
    if-nez v1, :cond_c

    .line 736
    .line 737
    if-eqz v7, :cond_16

    .line 738
    .line 739
    iget-wide v0, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 740
    .line 741
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    .line 742
    .line 743
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 744
    .line 745
    .line 746
    invoke-interface {v7, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    return-object v16

    .line 750
    :cond_c
    new-instance v13, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 751
    .line 752
    const/16 v15, 0x12

    .line 753
    .line 754
    move-object/from16 p3, v1

    .line 755
    .line 756
    const/4 v1, 0x0

    .line 757
    invoke-direct {v13, v0, v4, v1, v15}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 758
    .line 759
    .line 760
    const/4 v0, 0x1

    .line 761
    invoke-static {v9, v1, v10, v13, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    if-eq v8, v14, :cond_d

    .line 766
    .line 767
    new-instance v10, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$2;

    .line 768
    .line 769
    const/4 v13, 0x1

    .line 770
    move-object/from16 p4, v1

    .line 771
    .line 772
    move-object/from16 p2, v4

    .line 773
    .line 774
    move-object/from16 p1, v8

    .line 775
    .line 776
    move-object/from16 p0, v10

    .line 777
    .line 778
    move/from16 p5, v13

    .line 779
    .line 780
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$2;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;I)V

    .line 781
    .line 782
    .line 783
    move-object/from16 v4, p0

    .line 784
    .line 785
    move-object/from16 v8, p2

    .line 786
    .line 787
    move-object/from16 v1, p3

    .line 788
    .line 789
    move-object/from16 v15, p4

    .line 790
    .line 791
    invoke-static {v9, v0, v4}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 792
    .line 793
    .line 794
    goto :goto_a

    .line 795
    :cond_d
    move-object v15, v1

    .line 796
    move-object v8, v4

    .line 797
    move-object/from16 v1, p3

    .line 798
    .line 799
    :goto_a
    if-nez v11, :cond_f

    .line 800
    .line 801
    iput-object v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 802
    .line 803
    iput-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 804
    .line 805
    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 806
    .line 807
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 808
    .line 809
    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 810
    .line 811
    iput-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 812
    .line 813
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$6:Ljava/lang/Object;

    .line 814
    .line 815
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$7:Ljava/lang/Object;

    .line 816
    .line 817
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$8:Ljava/lang/Object;

    .line 818
    .line 819
    const/4 v1, 0x6

    .line 820
    iput v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->label:I

    .line 821
    .line 822
    move-object/from16 v4, v19

    .line 823
    .line 824
    invoke-static {v12, v4, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->waitForUpOrCancellation(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    if-ne v1, v5, :cond_e

    .line 829
    .line 830
    goto/16 :goto_d

    .line 831
    .line 832
    :cond_e
    move-object v2, v3

    .line 833
    move-object v3, v0

    .line 834
    move-object v0, v2

    .line 835
    move-object v5, v7

    .line 836
    move-object v2, v9

    .line 837
    move-object v7, v6

    .line 838
    :goto_b
    move-object v4, v1

    .line 839
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 840
    .line 841
    goto/16 :goto_10

    .line 842
    .line 843
    :cond_f
    move-object/from16 v4, v19

    .line 844
    .line 845
    iput-object v12, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 846
    .line 847
    iput-object v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 848
    .line 849
    iput-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 850
    .line 851
    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 852
    .line 853
    iput-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 854
    .line 855
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 856
    .line 857
    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$6:Ljava/lang/Object;

    .line 858
    .line 859
    iput-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$7:Ljava/lang/Object;

    .line 860
    .line 861
    iput-object v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$8:Ljava/lang/Object;

    .line 862
    .line 863
    const/4 v10, 0x7

    .line 864
    iput v10, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->label:I

    .line 865
    .line 866
    invoke-static {v12, v4, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->waitForLongPress(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v4

    .line 870
    if-ne v4, v5, :cond_10

    .line 871
    .line 872
    goto :goto_d

    .line 873
    :cond_10
    move-object v10, v7

    .line 874
    move-object v7, v0

    .line 875
    move-object v0, v1

    .line 876
    move-object v1, v4

    .line 877
    move-object v4, v3

    .line 878
    move-object v3, v8

    .line 879
    move-object v8, v10

    .line 880
    move-object v10, v6

    .line 881
    move-object v14, v12

    .line 882
    :goto_c
    check-cast v1, Landroidx/compose/foundation/gestures/LongPressResult;

    .line 883
    .line 884
    move-object/from16 v6, v18

    .line 885
    .line 886
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    move-result v6

    .line 890
    if-eqz v6, :cond_12

    .line 891
    .line 892
    iget-wide v0, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 893
    .line 894
    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    .line 895
    .line 896
    invoke-direct {v4, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 897
    .line 898
    .line 899
    invoke-interface {v11, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    iput-object v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$0:Ljava/lang/Object;

    .line 903
    .line 904
    iput-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$1:Ljava/lang/Object;

    .line 905
    .line 906
    iput-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$2:Ljava/lang/Object;

    .line 907
    .line 908
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$3:Lkotlin/jvm/functions/Function1;

    .line 909
    .line 910
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$4:Ljava/lang/Object;

    .line 911
    .line 912
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$5:Ljava/lang/Object;

    .line 913
    .line 914
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$6:Ljava/lang/Object;

    .line 915
    .line 916
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$7:Ljava/lang/Object;

    .line 917
    .line 918
    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->L$8:Ljava/lang/Object;

    .line 919
    .line 920
    const/16 v0, 0x8

    .line 921
    .line 922
    iput v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->label:I

    .line 923
    .line 924
    invoke-static {v14, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->consumeUntilUp(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    if-ne v0, v5, :cond_11

    .line 929
    .line 930
    :goto_d
    return-object v5

    .line 931
    :cond_11
    move-object v0, v7

    .line 932
    move-object v2, v9

    .line 933
    :goto_e
    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;

    .line 934
    .line 935
    const/4 v10, 0x7

    .line 936
    invoke-direct {v1, v3, v15, v10}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;I)V

    .line 937
    .line 938
    .line 939
    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 940
    .line 941
    .line 942
    return-object v16

    .line 943
    :cond_12
    instance-of v0, v1, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    .line 944
    .line 945
    if-eqz v0, :cond_13

    .line 946
    .line 947
    check-cast v1, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    .line 948
    .line 949
    iget-object v0, v1, Landroidx/compose/foundation/gestures/LongPressResult$Released;->finalUpChange:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 950
    .line 951
    move-object v2, v4

    .line 952
    move-object v4, v0

    .line 953
    move-object v0, v2

    .line 954
    move-object v5, v8

    .line 955
    move-object v2, v9

    .line 956
    :goto_f
    move-object v8, v3

    .line 957
    move-object v3, v7

    .line 958
    move-object v7, v10

    .line 959
    goto :goto_10

    .line 960
    :cond_13
    instance-of v0, v1, Landroidx/compose/foundation/gestures/LongPressResult$Canceled;

    .line 961
    .line 962
    if-eqz v0, :cond_15

    .line 963
    .line 964
    move-object v0, v4

    .line 965
    move-object v5, v8

    .line 966
    move-object v2, v9

    .line 967
    move-object v4, v15

    .line 968
    goto :goto_f

    .line 969
    :goto_10
    if-eqz v4, :cond_14

    .line 970
    .line 971
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 972
    .line 973
    .line 974
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;

    .line 975
    .line 976
    const/4 v12, 0x5

    .line 977
    invoke-direct {v0, v8, v15, v12}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;I)V

    .line 978
    .line 979
    .line 980
    invoke-static {v2, v3, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 981
    .line 982
    .line 983
    iget-wide v0, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 984
    .line 985
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    .line 986
    .line 987
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 988
    .line 989
    .line 990
    invoke-interface {v7, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    return-object v16

    .line 994
    :cond_14
    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;

    .line 995
    .line 996
    const/4 v4, 0x6

    .line 997
    invoke-direct {v1, v8, v15, v4}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;I)V

    .line 998
    .line 999
    .line 1000
    invoke-static {v2, v3, v1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->launchAwaitingReset$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1001
    .line 1002
    .line 1003
    if-eqz v5, :cond_16

    .line 1004
    .line 1005
    iget-wide v0, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 1006
    .line 1007
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    .line 1008
    .line 1009
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1010
    .line 1011
    .line 1012
    invoke-interface {v5, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    return-object v16

    .line 1016
    :cond_15
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1017
    .line 1018
    .line 1019
    return-object p7

    .line 1020
    :cond_16
    return-object v16

    .line 1021
    :cond_17
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1022
    .line 1023
    .line 1024
    return-object p7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final waitForLongPress(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->label:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 36
    .line 37
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
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
    return-object v2

    .line 47
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    sget-object v1, Landroidx/compose/foundation/gestures/LongPressResult$Canceled;->INSTANCE:Landroidx/compose/foundation/gestures/LongPressResult$Canceled;

    .line 56
    .line 57
    iput-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 58
    .line 59
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getLongPressTimeoutMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    new-instance v1, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    .line 68
    .line 69
    const/4 v6, 0x3

    .line 70
    invoke-direct {v1, p1, p2, v2, v6}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 71
    .line 72
    .line 73
    iput-object p2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 74
    .line 75
    iput v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->label:I

    .line 76
    .line 77
    invoke-virtual {p0, v4, v5, v1, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0
    :try_end_1
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 82
    .line 83
    if-ne p0, p1, :cond_3

    .line 84
    .line 85
    return-object p1

    .line 86
    :cond_3
    move-object p0, p2

    .line 87
    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 88
    .line 89
    return-object p0

    .line 90
    :catch_0
    sget-object p0, Landroidx/compose/foundation/gestures/LongPressResult$Success;->INSTANCE:Landroidx/compose/foundation/gestures/LongPressResult$Success;

    .line 91
    .line 92
    return-object p0
.end method

.method public static final waitForUpOrCancellation(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;

    .line 9
    .line 10
    iget v2, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x1

    .line 35
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v6, :cond_3

    .line 40
    .line 41
    if-ne v2, v4, :cond_2

    .line 42
    .line 43
    iget-object v2, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->L$1:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 44
    .line 45
    iget-object v8, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->L$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    move-object/from16 v16, v2

    .line 51
    .line 52
    move-object v2, v1

    .line 53
    move-object/from16 v1, v16

    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_2
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v3

    .line 63
    :cond_3
    iget-object v2, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->L$1:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 64
    .line 65
    iget-object v8, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->L$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    move-object/from16 v0, p0

    .line 75
    .line 76
    move-object v2, v1

    .line 77
    move-object/from16 v1, p1

    .line 78
    .line 79
    :goto_1
    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->L$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 80
    .line 81
    iput-object v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->L$1:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 82
    .line 83
    iput v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->label:I

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    if-ne v8, v7, :cond_5

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_5
    move-object/from16 v16, v8

    .line 93
    .line 94
    move-object v8, v0

    .line 95
    move-object/from16 v0, v16

    .line 96
    .line 97
    move-object/from16 v16, v2

    .line 98
    .line 99
    move-object v2, v1

    .line 100
    move-object/from16 v1, v16

    .line 101
    .line 102
    :goto_2
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 103
    .line 104
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    move v10, v5

    .line 111
    :goto_3
    if-ge v10, v9, :cond_c

    .line 112
    .line 113
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 118
    .line 119
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUp(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-nez v11, :cond_b

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    move v10, v5

    .line 130
    :goto_4
    if-ge v10, v9, :cond_7

    .line 131
    .line 132
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 137
    .line 138
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    if-nez v12, :cond_8

    .line 143
    .line 144
    iget-object v12, v8, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 145
    .line 146
    iget-wide v12, v12, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->boundsSize:J

    .line 147
    .line 148
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getExtendedTouchPadding-NH-jbRc()J

    .line 149
    .line 150
    .line 151
    move-result-wide v14

    .line 152
    invoke-static {v11, v12, v13, v14, v15}, Landroidx/compose/ui/input/pointer/PointerId;->isOutOfBounds-jwHxaWs(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-eqz v11, :cond_6

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_7
    iput-object v8, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->L$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 163
    .line 164
    iput-object v2, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->L$1:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 165
    .line 166
    iput v4, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->label:I

    .line 167
    .line 168
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 169
    .line 170
    invoke-virtual {v8, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-ne v0, v7, :cond_1

    .line 175
    .line 176
    :goto_5
    return-object v7

    .line 177
    :goto_6
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 178
    .line 179
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 180
    .line 181
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    move v10, v5

    .line 186
    :goto_7
    if-ge v10, v9, :cond_a

    .line 187
    .line 188
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 193
    .line 194
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    if-eqz v11, :cond_9

    .line 199
    .line 200
    :cond_8
    :goto_8
    return-object v3

    .line 201
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_a
    move-object v0, v8

    .line 205
    goto :goto_1

    .line 206
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_c
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    return-object v0
.end method
