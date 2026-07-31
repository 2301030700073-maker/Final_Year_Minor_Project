.class public abstract Landroidx/compose/foundation/gestures/DragGestureNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/foundation/GestureConnection;


# instance fields
.field public _awaitDownState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

.field public _awaitGesturePickupState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

.field public _awaitTouchSlopState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

.field public _draggingState:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

.field public canDrag:Lkotlin/jvm/functions/Function1;

.field public channel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

.field public dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

.field public enabled:Z

.field public gestureNode:Landroidx/compose/foundation/GestureNode;

.field public indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

.field public interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public isListeningForEvents:Z

.field public isListeningForPointerInputEvents:Z

.field public nodeOffset:J

.field public orientationLock:Landroidx/compose/foundation/gestures/Orientation;

.field public previousPositionOnScreen:J

.field public touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

.field public velocityTracker:Landroidx/appcompat/widget/PopupMenu$1;


# direct methods
.method public static final access$processDragCancel(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    .line 10
    .line 11
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-ne v1, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    new-instance v4, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 60
    .line 61
    invoke-direct {v4, p1}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 62
    .line 63
    .line 64
    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    .line 65
    .line 66
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 67
    .line 68
    invoke-virtual {v1, v4, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 73
    .line 74
    if-ne p1, v0, :cond_3

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_3
    :goto_1
    iput-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 78
    .line 79
    :cond_4
    new-instance p1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 80
    .line 81
    const-wide/16 v0, 0x0

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-direct {p1, v0, v1, v2}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZ)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragStopped(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V

    .line 88
    .line 89
    .line 90
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p0
.end method

.method public static final access$processDragStart(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p2

    .line 9
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    .line 10
    .line 11
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    const/4 v3, 0x1

    .line 34
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    if-eq v1, v3, :cond_2

    .line 39
    .line 40
    if-ne v1, v2, :cond_1

    .line 41
    .line 42
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 49
    .line 50
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0

    .line 61
    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 64
    .line 65
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 73
    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 81
    .line 82
    invoke-direct {v5, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 83
    .line 84
    .line 85
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    .line 86
    .line 87
    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    .line 88
    .line 89
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 90
    .line 91
    invoke-virtual {v1, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-ne p2, v4, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    :goto_1
    new-instance p2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 99
    .line 100
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 104
    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    .line 108
    .line 109
    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    .line 110
    .line 111
    iput v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    .line 112
    .line 113
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 114
    .line 115
    invoke-virtual {v1, p2, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-ne v0, v4, :cond_5

    .line 120
    .line 121
    :goto_2
    return-object v4

    .line 122
    :cond_5
    move-object v0, p1

    .line 123
    move-object p1, p2

    .line 124
    :goto_3
    move-object p2, p1

    .line 125
    move-object p1, v0

    .line 126
    :cond_6
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 127
    .line 128
    iget-wide p0, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;->startPoint:J

    .line 129
    .line 130
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 131
    .line 132
    return-object p0
.end method

.method public static final access$processDragStop(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p2

    .line 9
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    .line 10
    .line 11
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-ne v1, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 56
    .line 57
    if-eqz p2, :cond_4

    .line 58
    .line 59
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    new-instance v4, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 64
    .line 65
    invoke-direct {v4, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    .line 71
    .line 72
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 73
    .line 74
    invoke-virtual {v1, v4, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 79
    .line 80
    if-ne p2, v0, :cond_3

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    :goto_1
    iput-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 84
    .line 85
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragStopped(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V

    .line 86
    .line 87
    .line 88
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p0
.end method

.method public static moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJI)V
    .locals 3

    .line 1
    and-int/lit8 p6, p6, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const-wide/16 p4, 0x0

    .line 6
    .line 7
    :cond_0
    iget-object p6, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitTouchSlopState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p6, :cond_1

    .line 11
    .line 12
    new-instance p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 13
    .line 14
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 19
    .line 20
    const-wide v1, 0x7fffffffffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide v1, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 26
    .line 27
    iput-boolean v0, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 28
    .line 29
    iput-object p6, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitTouchSlopState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 30
    .line 31
    :cond_1
    iput-object p1, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 32
    .line 33
    iput-wide p2, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 36
    .line 37
    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    new-instance p1, Lokhttp3/internal/http1/HeadersReader;

    .line 42
    .line 43
    invoke-direct {p1, p2, v0}, Lokhttp3/internal/http1/HeadersReader;-><init>(Landroidx/compose/foundation/gestures/Orientation;I)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iput-object p2, p1, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 50
    .line 51
    iput-wide p4, p1, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 52
    .line 53
    :goto_0
    iput-boolean v0, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 54
    .line 55
    iput-object p6, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final disposeInteractionSource$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 12
    .line 13
    .line 14
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public abstract drag(Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1$1;Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;)Ljava/lang/Object;
.end method

.method public final getTouchBoundsExpansion-RZrCHBk()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/node/HitTestResultKt;->None:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final synthetic interceptOutOfBoundsChildEvents()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isInterested(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z
    .locals 0

    .line 160
    invoke-static {p1}, Landroidx/compose/foundation/gestures/ScrollableKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInterested(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Lnet/newpipe/app/AppKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    invoke-static {p1}, Lnet/newpipe/app/AppKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    new-instance v0, Lokhttp3/internal/http1/HeadersReader;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 26
    .line 27
    invoke-direct {v0, v2, v1}, Lokhttp3/internal/http1/HeadersReader;-><init>(Landroidx/compose/foundation/gestures/Orientation;I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 31
    .line 32
    :cond_2
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 33
    .line 34
    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 39
    .line 40
    invoke-interface {v0}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {p1, v1}, Lnet/newpipe/app/AppKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 49
    .line 50
    if-eqz p0, :cond_7

    .line 51
    .line 52
    invoke-virtual {p0, v2, v3, v0, v1}, Lokhttp3/internal/http1/HeadersReader;->getPostSlopOffset-qto3Fdw(JFZ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_6

    .line 66
    .line 67
    iget-wide v4, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 68
    .line 69
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    const/16 p1, 0x20

    .line 74
    .line 75
    shr-long v4, v2, p1

    .line 76
    .line 77
    long-to-int p1, v4

    .line 78
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    const-wide v4, 0xffffffffL

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    and-long/2addr v2, v4

    .line 92
    long-to-int v0, v2

    .line 93
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    float-to-double v2, v0

    .line 102
    float-to-double v4, p1

    .line 103
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    double-to-float p1, v2

    .line 108
    const/high16 v0, 0x43340000    # 180.0f

    .line 109
    .line 110
    mul-float/2addr p1, v0

    .line 111
    float-to-double v2, p1

    .line 112
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    div-double/2addr v2, v4

    .line 118
    iget-object p0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Landroidx/compose/foundation/gestures/Orientation;

    .line 121
    .line 122
    if-nez p0, :cond_3

    .line 123
    .line 124
    const/4 p0, -0x1

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    sget-object p1, Landroidx/compose/foundation/gestures/TouchSlopDetector$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    aget p0, p1, p0

    .line 133
    .line 134
    :goto_0
    const/4 p1, 0x1

    .line 135
    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    .line 136
    .line 137
    if-eq p0, p1, :cond_5

    .line 138
    .line 139
    const/4 v0, 0x2

    .line 140
    if-eq p0, v0, :cond_4

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    cmpl-double p0, v2, v4

    .line 144
    .line 145
    if-lez p0, :cond_6

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    cmpg-double p0, v2, v4

    .line 149
    .line 150
    if-gez p0, :cond_6

    .line 151
    .line 152
    :goto_1
    return p1

    .line 153
    :cond_6
    :goto_2
    return v1

    .line 154
    :cond_7
    const-string p0, "Touch slop detector not initialized."

    .line 155
    .line 156
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return v1
.end method

.method public final moveToAwaitDownState()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitDownState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->NotInitialized:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 14
    .line 15
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitDownState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 18
    .line 19
    :cond_0
    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 20
    .line 21
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 24
    .line 25
    return-void
.end method

.method public final moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/pointer/PointerInputChange;JLokhttp3/internal/http1/HeadersReader;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitGesturePickupState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 12
    .line 13
    const-wide v1, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->pointerId:J

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitGesturePickupState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 21
    .line 22
    :cond_0
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 23
    .line 24
    iput-wide p2, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->pointerId:J

    .line 25
    .line 26
    const-wide/16 p1, 0x0

    .line 27
    .line 28
    iput-wide p1, p4, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 31
    .line 32
    return-void
.end method

.method public final onCancelIndirectPointerInput()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 9
    .line 10
    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->velocityTracker:Landroidx/appcompat/widget/PopupMenu$1;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->offsetSmoother:Lokio/PriorityQueue;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lokio/PriorityQueue;->size:I

    .line 26
    .line 27
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Landroidx/collection/MutableLongList;

    .line 30
    .line 31
    iput v0, p0, Landroidx/collection/MutableLongList;->_size:I

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final onCancelPointerInput()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForPointerInputEvents:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitDownState()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->velocityTracker:Landroidx/appcompat/widget/PopupMenu$1;

    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForPointerInputEvents:Z

    .line 26
    .line 27
    return-void
.end method

.method public final onDetach()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->disposeInteractionSource$1()V

    .line 5
    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->nodeOffset:J

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 20
    .line 21
    return-void
.end method

.method public final onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->startListeningForEvents()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public abstract onDragStarted-k-4lQ0M(J)V
.end method

.method public abstract onDragStopped(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V
.end method

.method public final onIndirectPointerEvent(Lcom/grack/nanojson/JsonParser;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 8
    .line 9
    iget-object v1, v1, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    new-instance v4, Landroidx/compose/foundation/GestureNode;

    .line 18
    .line 19
    invoke-direct {v4, v0}, Landroidx/compose/foundation/GestureNode;-><init>(Landroidx/compose/foundation/GestureConnection;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 23
    .line 24
    .line 25
    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 26
    .line 27
    :cond_0
    iget-boolean v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    .line 28
    .line 29
    if-eqz v4, :cond_38

    .line 30
    .line 31
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    new-instance v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 36
    .line 37
    invoke-direct {v4, v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V

    .line 38
    .line 39
    .line 40
    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 41
    .line 42
    :cond_1
    iget-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 43
    .line 44
    if-eqz v5, :cond_38

    .line 45
    .line 46
    iget-object v0, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 47
    .line 48
    iget-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 49
    .line 50
    const/4 v11, 0x0

    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    iget-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitDownState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 54
    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    new-instance v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    sget-object v6, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->NotInitialized:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 63
    .line 64
    iput-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 65
    .line 66
    iput-boolean v11, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 67
    .line 68
    iput-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitDownState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 69
    .line 70
    :cond_2
    iput-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 71
    .line 72
    :cond_3
    iget-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 73
    .line 74
    if-eqz v4, :cond_37

    .line 75
    .line 76
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 77
    .line 78
    const-wide v12, 0x7fffffffffffffffL

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const-wide/16 v14, 0x0

    .line 84
    .line 85
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 86
    .line 87
    const/4 v8, 0x1

    .line 88
    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 89
    .line 90
    if-eqz v6, :cond_c

    .line 91
    .line 92
    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_4

    .line 99
    .line 100
    goto/16 :goto_13

    .line 101
    .line 102
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    :goto_0
    if-ge v11, v6, :cond_6

    .line 107
    .line 108
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    check-cast v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 113
    .line 114
    invoke-static {v10}, Landroidx/compose/foundation/gestures/ScrollableKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-nez v10, :cond_5

    .line 119
    .line 120
    goto/16 :goto_13

    .line 121
    .line 122
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    move-object v6, v1

    .line 130
    check-cast v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 131
    .line 132
    iget-object v1, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 133
    .line 134
    sget-object v10, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    aget v1, v10, v1

    .line 141
    .line 142
    sget-object v10, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 143
    .line 144
    sget-object v11, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 145
    .line 146
    if-ne v1, v8, :cond_8

    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->startDragImmediately()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_7

    .line 153
    .line 154
    move-object v0, v11

    .line 155
    goto :goto_1

    .line 156
    :cond_7
    move-object v0, v10

    .line 157
    goto :goto_1

    .line 158
    :cond_8
    iget-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 159
    .line 160
    :goto_1
    iput-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 161
    .line 162
    if-ne v2, v7, :cond_9

    .line 163
    .line 164
    if-ne v0, v10, :cond_9

    .line 165
    .line 166
    iput-boolean v8, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 167
    .line 168
    iput-boolean v8, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 169
    .line 170
    :cond_9
    if-ne v2, v9, :cond_38

    .line 171
    .line 172
    if-ne v0, v11, :cond_a

    .line 173
    .line 174
    iget-wide v7, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 175
    .line 176
    const-wide/16 v9, 0x0

    .line 177
    .line 178
    const/16 v11, 0xc

    .line 179
    .line 180
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJI)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_a
    iget-boolean v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 185
    .line 186
    if-eqz v0, :cond_38

    .line 187
    .line 188
    new-instance v8, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 189
    .line 190
    invoke-direct {v8, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 191
    .line 192
    .line 193
    const-wide/16 v9, 0x0

    .line 194
    .line 195
    move-object v7, v6

    .line 196
    invoke-virtual/range {v5 .. v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragStart-3f7A7Is(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 197
    .line 198
    .line 199
    new-instance v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 200
    .line 201
    invoke-direct {v0, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v6, v0, v14, v15}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragEvent-Eu1f8Dk(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 205
    .line 206
    .line 207
    iget-wide v0, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 208
    .line 209
    iget-object v2, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_draggingState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 210
    .line 211
    if-nez v2, :cond_b

    .line 212
    .line 213
    new-instance v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 216
    .line 217
    .line 218
    iput-wide v12, v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->pointerId:J

    .line 219
    .line 220
    iput-object v2, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_draggingState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 221
    .line 222
    :cond_b
    iput-wide v0, v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->pointerId:J

    .line 223
    .line 224
    iput-object v2, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 225
    .line 226
    return-void

    .line 227
    :cond_c
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 228
    .line 229
    sget-object v10, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 230
    .line 231
    if-eqz v6, :cond_22

    .line 232
    .line 233
    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 234
    .line 235
    if-ne v2, v7, :cond_d

    .line 236
    .line 237
    goto/16 :goto_13

    .line 238
    .line 239
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    move v7, v11

    .line 244
    :goto_2
    if-ge v7, v6, :cond_f

    .line 245
    .line 246
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v15

    .line 250
    move-object v14, v15

    .line 251
    check-cast v14, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 252
    .line 253
    iget-wide v11, v14, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 254
    .line 255
    iget-wide v13, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 256
    .line 257
    invoke-static {v11, v12, v13, v14}, Lkotlin/text/UStringsKt;->equals-impl0(JJ)Z

    .line 258
    .line 259
    .line 260
    move-result v11

    .line 261
    if-eqz v11, :cond_e

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 265
    .line 266
    const/4 v11, 0x0

    .line 267
    const-wide v12, 0x7fffffffffffffffL

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_f
    const/4 v15, 0x0

    .line 274
    :goto_3
    check-cast v15, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 275
    .line 276
    if-nez v15, :cond_13

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    const/4 v7, 0x0

    .line 283
    :goto_4
    if-ge v7, v6, :cond_11

    .line 284
    .line 285
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    move-object v12, v11

    .line 290
    check-cast v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 291
    .line 292
    iget-boolean v12, v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->pressed:Z

    .line 293
    .line 294
    if-eqz v12, :cond_10

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_11
    const/4 v11, 0x0

    .line 301
    :goto_5
    move-object v15, v11

    .line 302
    check-cast v15, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 303
    .line 304
    if-nez v15, :cond_12

    .line 305
    .line 306
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :cond_12
    iget-wide v6, v15, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 311
    .line 312
    iput-wide v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 313
    .line 314
    :cond_13
    move-object v7, v15

    .line 315
    const-string v11, "AwaitTouchSlop.touchSlopDetector was not initialized"

    .line 316
    .line 317
    const-string v12, "AwaitTouchSlop.initialDown was not initialized"

    .line 318
    .line 319
    if-ne v2, v9, :cond_16

    .line 320
    .line 321
    iget-boolean v6, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 322
    .line 323
    if-nez v6, :cond_1c

    .line 324
    .line 325
    invoke-static {v7}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    if-eqz v6, :cond_18

    .line 330
    .line 331
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    const/4 v3, 0x0

    .line 336
    :goto_6
    if-ge v3, v0, :cond_15

    .line 337
    .line 338
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    move-object v8, v6

    .line 343
    check-cast v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 344
    .line 345
    iget-boolean v8, v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->pressed:Z

    .line 346
    .line 347
    if-eqz v8, :cond_14

    .line 348
    .line 349
    move-object v14, v6

    .line 350
    goto :goto_7

    .line 351
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_15
    const/4 v14, 0x0

    .line 355
    :goto_7
    check-cast v14, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 356
    .line 357
    if-nez v14, :cond_17

    .line 358
    .line 359
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 360
    .line 361
    .line 362
    :cond_16
    :goto_8
    move-object v13, v10

    .line 363
    goto/16 :goto_9

    .line 364
    .line 365
    :cond_17
    iget-wide v0, v14, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 366
    .line 367
    iput-wide v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 368
    .line 369
    goto :goto_8

    .line 370
    :cond_18
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 371
    .line 372
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 377
    .line 378
    sget v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->mouseToTouchSlopRatio:F

    .line 379
    .line 380
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    iget-object v6, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 385
    .line 386
    if-eqz v6, :cond_1b

    .line 387
    .line 388
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 389
    .line 390
    new-instance v9, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 391
    .line 392
    invoke-direct {v9, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 393
    .line 394
    .line 395
    invoke-static {v7, v0, v9, v8}, Landroidx/compose/foundation/gestures/ScrollableKt;->positionChangeInternal-wfG_k4k(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    .line 396
    .line 397
    .line 398
    move-result-wide v13

    .line 399
    invoke-virtual {v6, v13, v14, v1, v8}, Lokhttp3/internal/http1/HeadersReader;->getPostSlopOffset-qto3Fdw(JFZ)J

    .line 400
    .line 401
    .line 402
    move-result-wide v0

    .line 403
    const-wide v13, 0x7fffffff7fffffffL

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    and-long/2addr v13, v0

    .line 409
    const-wide v15, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    cmp-long v6, v13, v15

    .line 415
    .line 416
    if-eqz v6, :cond_1a

    .line 417
    .line 418
    iput-boolean v8, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 419
    .line 420
    iget-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 421
    .line 422
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    new-instance v8, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 426
    .line 427
    invoke-direct {v8, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 428
    .line 429
    .line 430
    move-object v13, v10

    .line 431
    move-wide v9, v0

    .line 432
    invoke-virtual/range {v5 .. v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragStart-3f7A7Is(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 433
    .line 434
    .line 435
    new-instance v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 436
    .line 437
    invoke-direct {v0, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v5, v7, v0, v9, v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragEvent-Eu1f8Dk(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 441
    .line 442
    .line 443
    iget-wide v0, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 444
    .line 445
    iget-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_draggingState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 446
    .line 447
    if-nez v3, :cond_19

    .line 448
    .line 449
    new-instance v3, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 450
    .line 451
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 452
    .line 453
    .line 454
    const-wide v8, 0x7fffffffffffffffL

    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    iput-wide v8, v3, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->pointerId:J

    .line 460
    .line 461
    iput-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_draggingState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 462
    .line 463
    :cond_19
    iput-wide v0, v3, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->pointerId:J

    .line 464
    .line 465
    iput-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 466
    .line 467
    goto :goto_9

    .line 468
    :cond_1a
    move-object v13, v10

    .line 469
    iput-boolean v8, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 470
    .line 471
    goto :goto_9

    .line 472
    :cond_1b
    const-string v0, "Touch slop detector not initialized."

    .line 473
    .line 474
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :cond_1c
    move-object v13, v10

    .line 479
    iget-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 480
    .line 481
    if-eqz v0, :cond_1e

    .line 482
    .line 483
    iget-wide v8, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 484
    .line 485
    iget-object v1, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 486
    .line 487
    if-eqz v1, :cond_1d

    .line 488
    .line 489
    invoke-virtual {v5, v0, v8, v9, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLokhttp3/internal/http1/HeadersReader;)V

    .line 490
    .line 491
    .line 492
    goto :goto_9

    .line 493
    :cond_1d
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    return-void

    .line 497
    :cond_1e
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    return-void

    .line 501
    :goto_9
    if-ne v2, v13, :cond_38

    .line 502
    .line 503
    iget-boolean v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 504
    .line 505
    if-eqz v0, :cond_38

    .line 506
    .line 507
    iget-boolean v0, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 508
    .line 509
    if-eqz v0, :cond_21

    .line 510
    .line 511
    iget-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 512
    .line 513
    if-eqz v0, :cond_20

    .line 514
    .line 515
    iget-wide v1, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 516
    .line 517
    iget-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 518
    .line 519
    if-eqz v3, :cond_1f

    .line 520
    .line 521
    invoke-virtual {v5, v0, v1, v2, v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLokhttp3/internal/http1/HeadersReader;)V

    .line 522
    .line 523
    .line 524
    return-void

    .line 525
    :cond_1f
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :cond_20
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    return-void

    .line 533
    :cond_21
    const/4 v0, 0x0

    .line 534
    iput-boolean v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 535
    .line 536
    return-void

    .line 537
    :cond_22
    move-object v13, v10

    .line 538
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 539
    .line 540
    if-eqz v6, :cond_2a

    .line 541
    .line 542
    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 543
    .line 544
    if-eq v2, v13, :cond_23

    .line 545
    .line 546
    goto/16 :goto_13

    .line 547
    .line 548
    :cond_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 549
    .line 550
    .line 551
    move-result v2

    .line 552
    const/4 v6, 0x0

    .line 553
    :goto_a
    if-ge v6, v2, :cond_25

    .line 554
    .line 555
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v7

    .line 559
    check-cast v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 560
    .line 561
    iget-boolean v7, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 562
    .line 563
    if-eqz v7, :cond_24

    .line 564
    .line 565
    const/4 v8, 0x0

    .line 566
    goto :goto_b

    .line 567
    :cond_24
    add-int/lit8 v6, v6, 0x1

    .line 568
    .line 569
    goto :goto_a

    .line 570
    :cond_25
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 571
    .line 572
    .line 573
    move-result v2

    .line 574
    const/4 v11, 0x0

    .line 575
    :goto_c
    if-ge v11, v2, :cond_29

    .line 576
    .line 577
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    check-cast v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 582
    .line 583
    iget-boolean v6, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->pressed:Z

    .line 584
    .line 585
    if-eqz v6, :cond_28

    .line 586
    .line 587
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    if-eqz v2, :cond_26

    .line 592
    .line 593
    goto :goto_d

    .line 594
    :cond_26
    if-eqz v8, :cond_38

    .line 595
    .line 596
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    check-cast v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 601
    .line 602
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 603
    .line 604
    new-instance v6, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 605
    .line 606
    invoke-direct {v6, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 607
    .line 608
    .line 609
    invoke-static {v1, v2, v6}, Landroidx/compose/foundation/gestures/ScrollableKt;->primaryAxisPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    .line 610
    .line 611
    .line 612
    move-result-wide v1

    .line 613
    iget-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 614
    .line 615
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 616
    .line 617
    .line 618
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 619
    .line 620
    new-instance v7, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 621
    .line 622
    invoke-direct {v7, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 623
    .line 624
    .line 625
    invoke-static {v6, v0, v7}, Landroidx/compose/foundation/gestures/ScrollableKt;->primaryAxisPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    .line 626
    .line 627
    .line 628
    move-result-wide v6

    .line 629
    invoke-static {v1, v2, v6, v7}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 630
    .line 631
    .line 632
    move-result-wide v9

    .line 633
    iget-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 634
    .line 635
    if-eqz v6, :cond_27

    .line 636
    .line 637
    iget-wide v7, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->pointerId:J

    .line 638
    .line 639
    const/16 v11, 0x8

    .line 640
    .line 641
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJI)V

    .line 642
    .line 643
    .line 644
    return-void

    .line 645
    :cond_27
    const-string v0, "AwaitGesturePickup.initialDown was not initialized."

    .line 646
    .line 647
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    return-void

    .line 651
    :cond_28
    add-int/lit8 v11, v11, 0x1

    .line 652
    .line 653
    goto :goto_c

    .line 654
    :cond_29
    :goto_d
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :cond_2a
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 659
    .line 660
    if-eqz v6, :cond_36

    .line 661
    .line 662
    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 663
    .line 664
    if-eq v2, v9, :cond_2b

    .line 665
    .line 666
    goto/16 :goto_13

    .line 667
    .line 668
    :cond_2b
    iget-wide v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->pointerId:J

    .line 669
    .line 670
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 671
    .line 672
    .line 673
    move-result v2

    .line 674
    const/4 v9, 0x0

    .line 675
    :goto_e
    if-ge v9, v2, :cond_2d

    .line 676
    .line 677
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v10

    .line 681
    move-object v11, v10

    .line 682
    check-cast v11, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 683
    .line 684
    iget-wide v11, v11, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 685
    .line 686
    invoke-static {v11, v12, v6, v7}, Lkotlin/text/UStringsKt;->equals-impl0(JJ)Z

    .line 687
    .line 688
    .line 689
    move-result v11

    .line 690
    if-eqz v11, :cond_2c

    .line 691
    .line 692
    goto :goto_f

    .line 693
    :cond_2c
    add-int/lit8 v9, v9, 0x1

    .line 694
    .line 695
    goto :goto_e

    .line 696
    :cond_2d
    const/4 v10, 0x0

    .line 697
    :goto_f
    check-cast v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 698
    .line 699
    if-nez v10, :cond_2e

    .line 700
    .line 701
    goto/16 :goto_13

    .line 702
    .line 703
    :cond_2e
    invoke-static {v10}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    sget-object v6, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 708
    .line 709
    if-eqz v2, :cond_33

    .line 710
    .line 711
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 712
    .line 713
    .line 714
    move-result v2

    .line 715
    const/4 v7, 0x0

    .line 716
    :goto_10
    if-ge v7, v2, :cond_30

    .line 717
    .line 718
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v9

    .line 722
    move-object v11, v9

    .line 723
    check-cast v11, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 724
    .line 725
    iget-boolean v11, v11, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->pressed:Z

    .line 726
    .line 727
    if-eqz v11, :cond_2f

    .line 728
    .line 729
    goto :goto_11

    .line 730
    :cond_2f
    add-int/lit8 v7, v7, 0x1

    .line 731
    .line 732
    goto :goto_10

    .line 733
    :cond_30
    const/4 v9, 0x0

    .line 734
    :goto_11
    check-cast v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 735
    .line 736
    if-nez v9, :cond_32

    .line 737
    .line 738
    iget-boolean v1, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 739
    .line 740
    if-nez v1, :cond_31

    .line 741
    .line 742
    invoke-static {v10}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 743
    .line 744
    .line 745
    move-result v1

    .line 746
    if-eqz v1, :cond_31

    .line 747
    .line 748
    new-instance v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 749
    .line 750
    invoke-direct {v1, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireVelocityTracker()Landroidx/appcompat/widget/PopupMenu$1;

    .line 754
    .line 755
    .line 756
    move-result-object v17

    .line 757
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 758
    .line 759
    iget-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSmooth:Lokio/PriorityQueue;

    .line 760
    .line 761
    iget-wide v6, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 762
    .line 763
    move-object/from16 v20, v1

    .line 764
    .line 765
    move-object/from16 v19, v2

    .line 766
    .line 767
    move-object/from16 v21, v3

    .line 768
    .line 769
    move-wide/from16 v22, v6

    .line 770
    .line 771
    move-object/from16 v18, v10

    .line 772
    .line 773
    invoke-static/range {v17 .. v23}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$addIndirectPointerInputChange-Qf4Zb88(Landroidx/appcompat/widget/PopupMenu$1;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Lokio/PriorityQueue;J)V

    .line 774
    .line 775
    .line 776
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 777
    .line 778
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 783
    .line 784
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getMaximumFlingVelocity()F

    .line 785
    .line 786
    .line 787
    move-result v1

    .line 788
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireVelocityTracker()Landroidx/appcompat/widget/PopupMenu$1;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    invoke-static {v1, v1}, Landroidx/core/os/BundleKt;->Velocity(FF)J

    .line 793
    .line 794
    .line 795
    move-result-wide v3

    .line 796
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/PopupMenu$1;->calculateVelocity-AH228Gc(J)J

    .line 797
    .line 798
    .line 799
    move-result-wide v1

    .line 800
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireVelocityTracker()Landroidx/appcompat/widget/PopupMenu$1;

    .line 801
    .line 802
    .line 803
    move-result-object v3

    .line 804
    iget-object v3, v3, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 805
    .line 806
    check-cast v3, Lcoil3/memory/RealStrongMemoryCache;

    .line 807
    .line 808
    iget-object v4, v3, Lcoil3/memory/RealStrongMemoryCache;->weakMemoryCache:Ljava/lang/Object;

    .line 809
    .line 810
    check-cast v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 811
    .line 812
    iget-object v6, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 813
    .line 814
    const/4 v7, 0x0

    .line 815
    invoke-static {v6, v7}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Lcom/google/common/base/Joiner;)V

    .line 816
    .line 817
    .line 818
    const/4 v6, 0x0

    .line 819
    iput v6, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    .line 820
    .line 821
    iget-object v4, v3, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 822
    .line 823
    check-cast v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 824
    .line 825
    iget-object v9, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 826
    .line 827
    invoke-static {v9, v7}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Lcom/google/common/base/Joiner;)V

    .line 828
    .line 829
    .line 830
    iput v6, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    .line 831
    .line 832
    const-wide/16 v6, 0x0

    .line 833
    .line 834
    iput-wide v6, v3, Lcoil3/memory/RealStrongMemoryCache;->initialMaxSize:J

    .line 835
    .line 836
    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 837
    .line 838
    invoke-static {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->toValidVelocity-TH1AsA0(J)J

    .line 839
    .line 840
    .line 841
    move-result-wide v1

    .line 842
    invoke-direct {v3, v1, v2, v8}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZ)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 846
    .line 847
    .line 848
    goto :goto_12

    .line 849
    :cond_31
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 850
    .line 851
    .line 852
    :goto_12
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 853
    .line 854
    .line 855
    return-void

    .line 856
    :cond_32
    iget-wide v0, v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 857
    .line 858
    iput-wide v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->pointerId:J

    .line 859
    .line 860
    return-void

    .line 861
    :cond_33
    iget-boolean v1, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 862
    .line 863
    if-eqz v1, :cond_34

    .line 864
    .line 865
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/gestures/DragGestureNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 866
    .line 867
    .line 868
    return-void

    .line 869
    :cond_34
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 870
    .line 871
    new-instance v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 872
    .line 873
    invoke-direct {v2, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 874
    .line 875
    .line 876
    invoke-static {v10, v1, v2, v8}, Landroidx/compose/foundation/gestures/ScrollableKt;->positionChangeInternal-wfG_k4k(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    .line 877
    .line 878
    .line 879
    move-result-wide v1

    .line 880
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 881
    .line 882
    .line 883
    move-result v1

    .line 884
    const/4 v2, 0x0

    .line 885
    cmpg-float v1, v1, v2

    .line 886
    .line 887
    if-nez v1, :cond_35

    .line 888
    .line 889
    goto :goto_13

    .line 890
    :cond_35
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 891
    .line 892
    new-instance v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 893
    .line 894
    invoke-direct {v1, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 895
    .line 896
    .line 897
    const/4 v6, 0x0

    .line 898
    invoke-static {v10, v0, v1, v6}, Landroidx/compose/foundation/gestures/ScrollableKt;->positionChangeInternal-wfG_k4k(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    .line 899
    .line 900
    .line 901
    move-result-wide v0

    .line 902
    new-instance v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 903
    .line 904
    invoke-direct {v2, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v5, v10, v2, v0, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragEvent-Eu1f8Dk(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 908
    .line 909
    .line 910
    iput-boolean v8, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 911
    .line 912
    return-void

    .line 913
    :cond_36
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 914
    .line 915
    .line 916
    return-void

    .line 917
    :cond_37
    const-string v0, "currentDragState should not be null"

    .line 918
    .line 919
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    :cond_38
    :goto_13
    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iput-boolean v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForPointerInputEvents:Z

    .line 9
    .line 10
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    new-instance v4, Landroidx/compose/foundation/GestureNode;

    .line 15
    .line 16
    invoke-direct {v4, v0}, Landroidx/compose/foundation/GestureNode;-><init>(Landroidx/compose/foundation/GestureConnection;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 20
    .line 21
    .line 22
    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 23
    .line 24
    :cond_0
    iget-boolean v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->enabled:Z

    .line 25
    .line 26
    if-eqz v4, :cond_3b

    .line 27
    .line 28
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitDownState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 34
    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    new-instance v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->NotInitialized:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 43
    .line 44
    iput-object v6, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 45
    .line 46
    iput-boolean v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 47
    .line 48
    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->_awaitDownState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 49
    .line 50
    :cond_1
    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 51
    .line 52
    :cond_2
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 53
    .line 54
    if-eqz v4, :cond_3a

    .line 55
    .line 56
    instance-of v6, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 57
    .line 58
    const-wide v7, 0x7fffffffffffffffL

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 64
    .line 65
    const-wide/16 v10, 0x0

    .line 66
    .line 67
    sget-object v12, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 68
    .line 69
    if-eqz v6, :cond_a

    .line 70
    .line 71
    check-cast v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 72
    .line 73
    iget-object v6, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    goto/16 :goto_15

    .line 82
    .line 83
    :cond_3
    invoke-static {v1, v5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->isChangedToDown$default(Landroidx/compose/ui/input/pointer/PointerEvent;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_4

    .line 88
    .line 89
    goto/16 :goto_15

    .line 90
    .line 91
    :cond_4
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 92
    .line 93
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 98
    .line 99
    iget-object v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 100
    .line 101
    sget-object v6, Landroidx/compose/foundation/gestures/DragGestureNode$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    aget v5, v6, v5

    .line 108
    .line 109
    sget-object v6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 110
    .line 111
    sget-object v13, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 112
    .line 113
    if-ne v5, v3, :cond_6

    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->startDragImmediately()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-nez v5, :cond_5

    .line 120
    .line 121
    move-object v5, v13

    .line 122
    goto :goto_0

    .line 123
    :cond_5
    move-object v5, v6

    .line 124
    goto :goto_0

    .line 125
    :cond_6
    iget-object v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 126
    .line 127
    :goto_0
    iput-object v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 128
    .line 129
    if-ne v2, v9, :cond_7

    .line 130
    .line 131
    if-ne v5, v6, :cond_7

    .line 132
    .line 133
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 134
    .line 135
    .line 136
    iput-boolean v3, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 137
    .line 138
    :cond_7
    if-ne v2, v12, :cond_3b

    .line 139
    .line 140
    if-ne v5, v13, :cond_8

    .line 141
    .line 142
    iget-wide v2, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 143
    .line 144
    const-wide/16 v4, 0x0

    .line 145
    .line 146
    const/16 v6, 0xc

    .line 147
    .line 148
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJI)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_8
    iget-boolean v2, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 153
    .line 154
    if-eqz v2, :cond_3b

    .line 155
    .line 156
    invoke-virtual {v0, v1, v1, v10, v11}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragStart-0AR0LA0(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v10, v11, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragEvent-Uv8p0NA(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 160
    .line 161
    .line 162
    iget-wide v1, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 163
    .line 164
    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->_draggingState:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 165
    .line 166
    if-nez v3, :cond_9

    .line 167
    .line 168
    new-instance v3, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 169
    .line 170
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-wide v7, v3, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    .line 174
    .line 175
    iput-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->_draggingState:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 176
    .line 177
    :cond_9
    iput-wide v1, v3, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    .line 178
    .line 179
    iput-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 180
    .line 181
    return-void

    .line 182
    :cond_a
    instance-of v6, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 183
    .line 184
    sget-object v13, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 185
    .line 186
    if-eqz v6, :cond_25

    .line 187
    .line 188
    check-cast v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 189
    .line 190
    if-ne v2, v9, :cond_b

    .line 191
    .line 192
    goto/16 :goto_15

    .line 193
    .line 194
    :cond_b
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 195
    .line 196
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    move v9, v5

    .line 201
    :goto_1
    if-ge v9, v6, :cond_d

    .line 202
    .line 203
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    move-object v11, v10

    .line 208
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 209
    .line 210
    iget-wide v14, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 211
    .line 212
    move/from16 p1, v6

    .line 213
    .line 214
    iget-wide v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 215
    .line 216
    invoke-static {v14, v15, v5, v6}, Lkotlin/text/UStringsKt;->equals-impl0(JJ)Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-eqz v5, :cond_c

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_c
    add-int/lit8 v9, v9, 0x1

    .line 224
    .line 225
    move/from16 v6, p1

    .line 226
    .line 227
    const/4 v5, 0x0

    .line 228
    goto :goto_1

    .line 229
    :cond_d
    const/4 v10, 0x0

    .line 230
    :goto_2
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 231
    .line 232
    if-nez v10, :cond_11

    .line 233
    .line 234
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    const/4 v6, 0x0

    .line 239
    :goto_3
    if-ge v6, v5, :cond_f

    .line 240
    .line 241
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    move-object v10, v9

    .line 246
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 247
    .line 248
    iget-boolean v10, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 249
    .line 250
    if-eqz v10, :cond_e

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_e
    add-int/lit8 v6, v6, 0x1

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_f
    const/4 v9, 0x0

    .line 257
    :goto_4
    move-object v10, v9

    .line 258
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 259
    .line 260
    if-nez v10, :cond_10

    .line 261
    .line 262
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitDownState()V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_10
    iget-wide v5, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 267
    .line 268
    iput-wide v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 269
    .line 270
    :cond_11
    const-string v5, "AwaitTouchSlop.touchSlopDetector was not initialized"

    .line 271
    .line 272
    const-string v6, "AwaitTouchSlop.initialDown was not initialized"

    .line 273
    .line 274
    if-ne v2, v12, :cond_21

    .line 275
    .line 276
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    if-nez v9, :cond_1e

    .line 281
    .line 282
    invoke-static {v10}, Lnet/newpipe/app/AppKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 283
    .line 284
    .line 285
    move-result v9

    .line 286
    if-eqz v9, :cond_15

    .line 287
    .line 288
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    const/4 v7, 0x0

    .line 293
    :goto_5
    if-ge v7, v3, :cond_13

    .line 294
    .line 295
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    move-object v9, v8

    .line 300
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 301
    .line 302
    iget-boolean v9, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 303
    .line 304
    if-eqz v9, :cond_12

    .line 305
    .line 306
    move-object v14, v8

    .line 307
    goto :goto_6

    .line 308
    :cond_12
    add-int/lit8 v7, v7, 0x1

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_13
    const/4 v14, 0x0

    .line 312
    :goto_6
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 313
    .line 314
    if-nez v14, :cond_14

    .line 315
    .line 316
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitDownState()V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_b

    .line 320
    .line 321
    :cond_14
    iget-wide v7, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 322
    .line 323
    iput-wide v7, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 324
    .line 325
    goto/16 :goto_b

    .line 326
    .line 327
    :cond_15
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 328
    .line 329
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 334
    .line 335
    iget v9, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 336
    .line 337
    sget v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->mouseToTouchSlopRatio:F

    .line 338
    .line 339
    const/4 v11, 0x2

    .line 340
    if-ne v9, v11, :cond_16

    .line 341
    .line 342
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    sget v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->mouseToTouchSlopRatio:F

    .line 347
    .line 348
    mul-float/2addr v1, v9

    .line 349
    goto :goto_7

    .line 350
    :cond_16
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    :goto_7
    iget-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 355
    .line 356
    if-eqz v9, :cond_1d

    .line 357
    .line 358
    invoke-static {v10, v3}, Lnet/newpipe/app/AppKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 359
    .line 360
    .line 361
    move-result-wide v11

    .line 362
    invoke-virtual {v9, v11, v12, v1, v3}, Lokhttp3/internal/http1/HeadersReader;->getPostSlopOffset-qto3Fdw(JFZ)J

    .line 363
    .line 364
    .line 365
    move-result-wide v11

    .line 366
    const-wide v14, 0x7fffffff7fffffffL

    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    and-long/2addr v14, v11

    .line 372
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    cmp-long v1, v14, v16

    .line 378
    .line 379
    if-eqz v1, :cond_1c

    .line 380
    .line 381
    invoke-virtual {v0, v10}, Landroidx/compose/foundation/gestures/DragGestureNode;->isInterested(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    sget-object v9, Landroidx/compose/foundation/GestureNode;->TraverseKey:Landroidx/compose/foundation/NoIndicationInstance;

    .line 386
    .line 387
    invoke-static {v0, v9}, Landroidx/compose/ui/node/HitTestResultKt;->findNearestAncestor(Landroidx/compose/ui/node/DelegatingNode;Ljava/lang/Object;)Landroidx/compose/ui/node/TraversableNode;

    .line 388
    .line 389
    .line 390
    move-result-object v9

    .line 391
    instance-of v14, v9, Landroidx/compose/foundation/GestureNode;

    .line 392
    .line 393
    if-eqz v14, :cond_17

    .line 394
    .line 395
    check-cast v9, Landroidx/compose/foundation/GestureNode;

    .line 396
    .line 397
    goto :goto_8

    .line 398
    :cond_17
    const/4 v9, 0x0

    .line 399
    :goto_8
    if-eqz v9, :cond_18

    .line 400
    .line 401
    iget-object v14, v9, Landroidx/compose/foundation/GestureNode;->gestureConnection:Landroidx/compose/foundation/GestureConnection;

    .line 402
    .line 403
    goto :goto_9

    .line 404
    :cond_18
    const/4 v14, 0x0

    .line 405
    :goto_9
    if-eqz v14, :cond_19

    .line 406
    .line 407
    invoke-interface {v14, v10}, Landroidx/compose/foundation/GestureConnection;->isInterested(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 408
    .line 409
    .line 410
    move-result v9

    .line 411
    if-ne v9, v3, :cond_19

    .line 412
    .line 413
    move v9, v3

    .line 414
    goto :goto_a

    .line 415
    :cond_19
    const/4 v9, 0x0

    .line 416
    :goto_a
    if-nez v1, :cond_1a

    .line 417
    .line 418
    if-eqz v9, :cond_1a

    .line 419
    .line 420
    iput-boolean v3, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 421
    .line 422
    goto :goto_b

    .line 423
    :cond_1a
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 424
    .line 425
    .line 426
    iget-object v1, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 427
    .line 428
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v1, v10, v11, v12}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragStart-0AR0LA0(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v11, v12, v10}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragEvent-Uv8p0NA(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 435
    .line 436
    .line 437
    iget-wide v11, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 438
    .line 439
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->_draggingState:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 440
    .line 441
    if-nez v1, :cond_1b

    .line 442
    .line 443
    new-instance v1, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 444
    .line 445
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 446
    .line 447
    .line 448
    iput-wide v7, v1, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    .line 449
    .line 450
    iput-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->_draggingState:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 451
    .line 452
    :cond_1b
    iput-wide v11, v1, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    .line 453
    .line 454
    iput-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 455
    .line 456
    goto :goto_b

    .line 457
    :cond_1c
    iput-boolean v3, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 458
    .line 459
    goto :goto_b

    .line 460
    :cond_1d
    const-string v0, "Touch slop detector not initialized."

    .line 461
    .line 462
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :cond_1e
    iget-object v1, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 467
    .line 468
    if-eqz v1, :cond_20

    .line 469
    .line 470
    iget-wide v7, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 471
    .line 472
    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 473
    .line 474
    if-eqz v3, :cond_1f

    .line 475
    .line 476
    invoke-virtual {v0, v1, v7, v8, v3}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/pointer/PointerInputChange;JLokhttp3/internal/http1/HeadersReader;)V

    .line 477
    .line 478
    .line 479
    goto :goto_b

    .line 480
    :cond_1f
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :cond_20
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    return-void

    .line 488
    :cond_21
    :goto_b
    if-ne v2, v13, :cond_3b

    .line 489
    .line 490
    iget-boolean v1, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 491
    .line 492
    if-eqz v1, :cond_3b

    .line 493
    .line 494
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    if-eqz v1, :cond_24

    .line 499
    .line 500
    iget-object v1, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 501
    .line 502
    if-eqz v1, :cond_23

    .line 503
    .line 504
    iget-wide v2, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 505
    .line 506
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 507
    .line 508
    if-eqz v4, :cond_22

    .line 509
    .line 510
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/pointer/PointerInputChange;JLokhttp3/internal/http1/HeadersReader;)V

    .line 511
    .line 512
    .line 513
    return-void

    .line 514
    :cond_22
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    return-void

    .line 518
    :cond_23
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :cond_24
    const/4 v0, 0x0

    .line 523
    iput-boolean v0, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 524
    .line 525
    return-void

    .line 526
    :cond_25
    instance-of v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 527
    .line 528
    if-eqz v5, :cond_2d

    .line 529
    .line 530
    check-cast v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 531
    .line 532
    if-eq v2, v13, :cond_26

    .line 533
    .line 534
    goto/16 :goto_15

    .line 535
    .line 536
    :cond_26
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 537
    .line 538
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    const/4 v5, 0x0

    .line 543
    :goto_c
    if-ge v5, v2, :cond_28

    .line 544
    .line 545
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v6

    .line 549
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 550
    .line 551
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 552
    .line 553
    .line 554
    move-result v6

    .line 555
    if-eqz v6, :cond_27

    .line 556
    .line 557
    const/4 v3, 0x0

    .line 558
    goto :goto_d

    .line 559
    :cond_27
    add-int/lit8 v5, v5, 0x1

    .line 560
    .line 561
    goto :goto_c

    .line 562
    :cond_28
    :goto_d
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    const/4 v5, 0x0

    .line 567
    :goto_e
    if-ge v5, v2, :cond_2c

    .line 568
    .line 569
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v6

    .line 573
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 574
    .line 575
    iget-boolean v6, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 576
    .line 577
    if-eqz v6, :cond_2b

    .line 578
    .line 579
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    if-eqz v2, :cond_29

    .line 584
    .line 585
    goto :goto_f

    .line 586
    :cond_29
    if-eqz v3, :cond_3b

    .line 587
    .line 588
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 593
    .line 594
    iget-wide v1, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 595
    .line 596
    iget-object v3, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 597
    .line 598
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    .line 600
    .line 601
    iget-wide v5, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 602
    .line 603
    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 604
    .line 605
    .line 606
    move-result-wide v1

    .line 607
    move-wide v2, v1

    .line 608
    iget-object v1, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 609
    .line 610
    if-eqz v1, :cond_2a

    .line 611
    .line 612
    move-wide v5, v2

    .line 613
    iget-wide v2, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->pointerId:J

    .line 614
    .line 615
    move-wide v4, v5

    .line 616
    const/16 v6, 0x8

    .line 617
    .line 618
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJI)V

    .line 619
    .line 620
    .line 621
    return-void

    .line 622
    :cond_2a
    const-string v0, "AwaitGesturePickup.initialDown was not initialized."

    .line 623
    .line 624
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    return-void

    .line 628
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    .line 629
    .line 630
    goto :goto_e

    .line 631
    :cond_2c
    :goto_f
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitDownState()V

    .line 632
    .line 633
    .line 634
    return-void

    .line 635
    :cond_2d
    instance-of v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 636
    .line 637
    if-eqz v5, :cond_39

    .line 638
    .line 639
    check-cast v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 640
    .line 641
    if-eq v2, v12, :cond_2e

    .line 642
    .line 643
    goto/16 :goto_15

    .line 644
    .line 645
    :cond_2e
    iget-wide v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    .line 646
    .line 647
    iget-object v2, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 648
    .line 649
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 650
    .line 651
    .line 652
    move-result v7

    .line 653
    const/4 v8, 0x0

    .line 654
    :goto_10
    if-ge v8, v7, :cond_30

    .line 655
    .line 656
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v9

    .line 660
    move-object v12, v9

    .line 661
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 662
    .line 663
    iget-wide v12, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 664
    .line 665
    invoke-static {v12, v13, v5, v6}, Lkotlin/text/UStringsKt;->equals-impl0(JJ)Z

    .line 666
    .line 667
    .line 668
    move-result v12

    .line 669
    if-eqz v12, :cond_2f

    .line 670
    .line 671
    goto :goto_11

    .line 672
    :cond_2f
    add-int/lit8 v8, v8, 0x1

    .line 673
    .line 674
    goto :goto_10

    .line 675
    :cond_30
    const/4 v9, 0x0

    .line 676
    :goto_11
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 677
    .line 678
    if-nez v9, :cond_31

    .line 679
    .line 680
    goto/16 :goto_15

    .line 681
    .line 682
    :cond_31
    invoke-static {v9}, Lnet/newpipe/app/AppKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 683
    .line 684
    .line 685
    move-result v2

    .line 686
    sget-object v5, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 687
    .line 688
    if-eqz v2, :cond_36

    .line 689
    .line 690
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 691
    .line 692
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 693
    .line 694
    .line 695
    move-result v2

    .line 696
    const/4 v3, 0x0

    .line 697
    :goto_12
    if-ge v3, v2, :cond_33

    .line 698
    .line 699
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v6

    .line 703
    move-object v7, v6

    .line 704
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 705
    .line 706
    iget-boolean v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 707
    .line 708
    if-eqz v7, :cond_32

    .line 709
    .line 710
    goto :goto_13

    .line 711
    :cond_32
    add-int/lit8 v3, v3, 0x1

    .line 712
    .line 713
    goto :goto_12

    .line 714
    :cond_33
    const/4 v6, 0x0

    .line 715
    :goto_13
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 716
    .line 717
    if-nez v6, :cond_35

    .line 718
    .line 719
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 720
    .line 721
    .line 722
    move-result v1

    .line 723
    if-nez v1, :cond_34

    .line 724
    .line 725
    invoke-static {v9}, Lnet/newpipe/app/AppKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 726
    .line 727
    .line 728
    move-result v1

    .line 729
    if-eqz v1, :cond_34

    .line 730
    .line 731
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireVelocityTracker()Landroidx/appcompat/widget/PopupMenu$1;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    invoke-static {v1, v9, v10, v11}, Lokio/Okio;->addPointerInputChange-0AR0LA0(Landroidx/appcompat/widget/PopupMenu$1;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 736
    .line 737
    .line 738
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 739
    .line 740
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 745
    .line 746
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getMaximumFlingVelocity()F

    .line 747
    .line 748
    .line 749
    move-result v1

    .line 750
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireVelocityTracker()Landroidx/appcompat/widget/PopupMenu$1;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    invoke-static {v1, v1}, Landroidx/core/os/BundleKt;->Velocity(FF)J

    .line 755
    .line 756
    .line 757
    move-result-wide v3

    .line 758
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/PopupMenu$1;->calculateVelocity-AH228Gc(J)J

    .line 759
    .line 760
    .line 761
    move-result-wide v1

    .line 762
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireVelocityTracker()Landroidx/appcompat/widget/PopupMenu$1;

    .line 763
    .line 764
    .line 765
    move-result-object v3

    .line 766
    iget-object v3, v3, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 767
    .line 768
    check-cast v3, Lcoil3/memory/RealStrongMemoryCache;

    .line 769
    .line 770
    iget-object v4, v3, Lcoil3/memory/RealStrongMemoryCache;->weakMemoryCache:Ljava/lang/Object;

    .line 771
    .line 772
    check-cast v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 773
    .line 774
    iget-object v5, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 775
    .line 776
    const/4 v6, 0x0

    .line 777
    invoke-static {v5, v6}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Lcom/google/common/base/Joiner;)V

    .line 778
    .line 779
    .line 780
    const/4 v5, 0x0

    .line 781
    iput v5, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    .line 782
    .line 783
    iget-object v4, v3, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 784
    .line 785
    check-cast v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 786
    .line 787
    iget-object v7, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 788
    .line 789
    invoke-static {v7, v6}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Lcom/google/common/base/Joiner;)V

    .line 790
    .line 791
    .line 792
    iput v5, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    .line 793
    .line 794
    iput-wide v10, v3, Lcoil3/memory/RealStrongMemoryCache;->initialMaxSize:J

    .line 795
    .line 796
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 797
    .line 798
    .line 799
    move-result-object v3

    .line 800
    new-instance v4, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 801
    .line 802
    invoke-static {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->toValidVelocity-TH1AsA0(J)J

    .line 803
    .line 804
    .line 805
    move-result-wide v1

    .line 806
    invoke-direct {v4, v1, v2, v5}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZ)V

    .line 807
    .line 808
    .line 809
    invoke-interface {v3, v4}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    iput-boolean v5, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForPointerInputEvents:Z

    .line 813
    .line 814
    goto :goto_14

    .line 815
    :cond_34
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 816
    .line 817
    .line 818
    move-result-object v1

    .line 819
    invoke-interface {v1, v5}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    :goto_14
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->moveToAwaitDownState()V

    .line 823
    .line 824
    .line 825
    return-void

    .line 826
    :cond_35
    iget-wide v0, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 827
    .line 828
    iput-wide v0, v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    .line 829
    .line 830
    return-void

    .line 831
    :cond_36
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 832
    .line 833
    .line 834
    move-result v1

    .line 835
    if-eqz v1, :cond_37

    .line 836
    .line 837
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-interface {v0, v5}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    return-void

    .line 845
    :cond_37
    invoke-static {v9, v3}, Lnet/newpipe/app/AppKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 846
    .line 847
    .line 848
    move-result-wide v1

    .line 849
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 850
    .line 851
    .line 852
    move-result v1

    .line 853
    const/4 v2, 0x0

    .line 854
    cmpg-float v1, v1, v2

    .line 855
    .line 856
    if-nez v1, :cond_38

    .line 857
    .line 858
    goto :goto_15

    .line 859
    :cond_38
    const/4 v5, 0x0

    .line 860
    invoke-static {v9, v5}, Lnet/newpipe/app/AppKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 861
    .line 862
    .line 863
    move-result-wide v1

    .line 864
    invoke-virtual {v0, v1, v2, v9}, Landroidx/compose/foundation/gestures/DragGestureNode;->sendDragEvent-Uv8p0NA(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 868
    .line 869
    .line 870
    return-void

    .line 871
    :cond_39
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 872
    .line 873
    .line 874
    return-void

    .line 875
    :cond_3a
    const-string v0, "currentDragState should not be null"

    .line 876
    .line 877
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    :cond_3b
    :goto_15
    return-void
.end method

.method public final onViewConfigurationChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->onCancelPointerInput()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final requireChannel()Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Events channel not initialized."

    .line 7
    .line 8
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final requireVelocityTracker()Landroidx/appcompat/widget/PopupMenu$1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->velocityTracker:Landroidx/appcompat/widget/PopupMenu$1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Velocity Tracker not initialized."

    .line 7
    .line 8
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final sendDragEvent-Uv8p0NA(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localToScreen-MK-Hz9U(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->previousPositionOnScreen:J

    .line 14
    .line 15
    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->previousPositionOnScreen:J

    .line 27
    .line 28
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->previousPositionOnScreen:J

    .line 35
    .line 36
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-wide v4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->nodeOffset:J

    .line 41
    .line 42
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iput-wide v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->nodeOffset:J

    .line 47
    .line 48
    :cond_0
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->previousPositionOnScreen:J

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireVelocityTracker()Landroidx/appcompat/widget/PopupMenu$1;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-wide v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->nodeOffset:J

    .line 55
    .line 56
    invoke-static {v0, p3, v1, v2}, Lokio/Okio;->addPointerInputChange-0AR0LA0(Landroidx/appcompat/widget/PopupMenu$1;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance p3, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-direct {p3, p1, p2, v0}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(JZ)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p0, p3}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final sendDragStart-0AR0LA0(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->velocityTracker:Landroidx/appcompat/widget/PopupMenu$1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/PopupMenu$1;

    .line 6
    .line 7
    const/16 v1, 0x1a

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->velocityTracker:Landroidx/appcompat/widget/PopupMenu$1;

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireVelocityTracker()Landroidx/appcompat/widget/PopupMenu$1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    invoke-static {v0, p1, v1, v2}, Lokio/Okio;->addPointerInputChange-0AR0LA0(Landroidx/appcompat/widget/PopupMenu$1;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 21
    .line 22
    .line 23
    iget-wide v3, p2, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 24
    .line 25
    invoke-static {v3, v4, p3, p4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide p2

    .line 29
    iput-wide v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->nodeOffset:J

    .line 30
    .line 31
    iget-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    iget p1, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 34
    .line 35
    new-instance v0, Landroidx/compose/ui/input/pointer/PointerType;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Landroidx/compose/ui/input/pointer/PointerType;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    const p1, 0x7fffffff

    .line 61
    .line 62
    .line 63
    const/4 p4, 0x6

    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-static {p1, p4, v0}, Lkotlinx/coroutines/channels/ProduceKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 70
    .line 71
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->startListeningForEvents()V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localToScreen-MK-Hz9U(J)J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->previousPositionOnScreen:J

    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    new-instance p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 89
    .line 90
    invoke-direct {p1, p2, p3}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(J)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void
.end method

.method public final synthetic sharePointerInputWithSiblings()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract startDragImmediately()Z
.end method

.method public final startListeningForEvents()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->isListeningForEvents:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v0, 0x7fffffff

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/channels/ProduceKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;

    .line 24
    .line 25
    invoke-direct {v2, p0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x3

    .line 29
    invoke-static {v0, v1, v1, v2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 30
    .line 31
    .line 32
    return-void
.end method
