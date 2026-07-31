.class public final Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 14
    .line 15
    .line 16
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 17
    .line 18
    new-instance p0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    invoke-direct {p0, v1, p3, p1}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 29
    .line 30
    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    .line 31
    .line 32
    iget-wide p0, p2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 33
    .line 34
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    new-instance p0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 37
    .line 38
    invoke-direct {p0, v1, p3, v1}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_1
    check-cast p1, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 46
    .line 47
    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    .line 48
    .line 49
    iget-wide p0, p2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 50
    .line 51
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 52
    .line 53
    new-instance p0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 54
    .line 55
    const/4 p1, 0x2

    .line 56
    invoke-direct {p0, v1, p3, p1}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 64
    .line 65
    check-cast p2, Ljava/lang/Number;

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 68
    .line 69
    .line 70
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    new-instance p0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    invoke-direct {p0, v1, p3, p1}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    return-object v0

    .line 82
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 83
    .line 84
    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    .line 85
    .line 86
    iget-wide p0, p2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 87
    .line 88
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 89
    .line 90
    new-instance p0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    invoke-direct {p0, v1, p3, p1}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    return-object v0

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
