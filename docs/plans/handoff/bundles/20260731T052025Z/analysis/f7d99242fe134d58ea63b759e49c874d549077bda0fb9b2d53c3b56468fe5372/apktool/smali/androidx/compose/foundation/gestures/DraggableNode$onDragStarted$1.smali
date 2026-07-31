.class public final Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $startedPosition:J

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 16
    iput p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$r8$classId:I

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->this$0:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$startedPosition:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(JLandroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$r8$classId:I

    .line 15
    iput-wide p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$startedPosition:J

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;JLandroidx/compose/animation/SizeAnimationModifierNode;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$startedPosition:J

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/node/DelegatingNode;JLkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 17
    iput p5, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->this$0:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$startedPosition:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 9
    .line 10
    move-object v3, v1

    .line 11
    check-cast v3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 12
    .line 13
    iget-wide v4, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$startedPosition:J

    .line 14
    .line 15
    const/4 v7, 0x5

    .line 16
    move-object v6, p2

    .line 17
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;-><init>(Landroidx/compose/ui/node/DelegatingNode;JLkotlin/coroutines/Continuation;I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v2, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    return-object v2

    .line 23
    :pswitch_0
    move-object v9, p2

    .line 24
    new-instance v3, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v7, p1

    .line 29
    check-cast v7, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 30
    .line 31
    move-object v8, v1

    .line 32
    check-cast v8, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 33
    .line 34
    iget-wide v5, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$startedPosition:J

    .line 35
    .line 36
    const/4 v4, 0x4

    .line 37
    invoke-direct/range {v3 .. v9}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;-><init>(IJLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 38
    .line 39
    .line 40
    return-object v3

    .line 41
    :pswitch_1
    move-object v9, p2

    .line 42
    new-instance v3, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 43
    .line 44
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v4, p1

    .line 47
    check-cast v4, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;

    .line 48
    .line 49
    iget-wide v5, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$startedPosition:J

    .line 50
    .line 51
    move-object v7, v1

    .line 52
    check-cast v7, Landroidx/compose/animation/SizeAnimationModifierNode;

    .line 53
    .line 54
    move-object v8, v9

    .line 55
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;-><init>(Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;JLandroidx/compose/animation/SizeAnimationModifierNode;Lkotlin/coroutines/Continuation;)V

    .line 56
    .line 57
    .line 58
    return-object v3

    .line 59
    :pswitch_2
    move-object v9, p2

    .line 60
    new-instance v3, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 61
    .line 62
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    move-object v7, p1

    .line 65
    check-cast v7, Landroidx/camera/camera2/pipe/core/Threads;

    .line 66
    .line 67
    move-object v8, v1

    .line 68
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 69
    .line 70
    iget-wide v5, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$startedPosition:J

    .line 71
    .line 72
    const/4 v4, 0x2

    .line 73
    invoke-direct/range {v3 .. v9}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;-><init>(IJLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 74
    .line 75
    .line 76
    return-object v3

    .line 77
    :pswitch_3
    move-object v9, p2

    .line 78
    new-instance p2, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 79
    .line 80
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$startedPosition:J

    .line 81
    .line 82
    check-cast v1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 83
    .line 84
    invoke-direct {p2, v2, v3, v1, v9}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;-><init>(JLandroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p2, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 88
    .line 89
    return-object p2

    .line 90
    :pswitch_4
    move-object v9, p2

    .line 91
    new-instance v3, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 92
    .line 93
    move-object v4, v1

    .line 94
    check-cast v4, Landroidx/compose/foundation/gestures/DraggableNode;

    .line 95
    .line 96
    iget-wide v5, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$startedPosition:J

    .line 97
    .line 98
    const/4 v8, 0x0

    .line 99
    move-object v7, v9

    .line 100
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;-><init>(Landroidx/compose/ui/node/DelegatingNode;JLkotlin/coroutines/Continuation;I)V

    .line 101
    .line 102
    .line 103
    iput-object p1, v3, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 104
    .line 105
    return-object v3

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-wide v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->$startedPosition:J

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    const/4 v8, 0x1

    .line 14
    const/4 v9, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 21
    .line 22
    iget v10, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->label:I

    .line 23
    .line 24
    if-eqz v10, :cond_1

    .line 25
    .line 26
    if-ne v10, v8, :cond_0

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v6, v9

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    check-cast v3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 41
    .line 42
    iget-object v3, v3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 43
    .line 44
    new-instance v5, Landroidx/compose/ui/geometry/Offset;

    .line 45
    .line 46
    invoke-direct {v5, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 47
    .line 48
    .line 49
    iput-object v9, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    iput v8, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->label:I

    .line 52
    .line 53
    invoke-interface {v3, v0, v5, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-ne v0, v7, :cond_2

    .line 58
    .line 59
    move-object v6, v7

    .line 60
    :cond_2
    :goto_0
    return-object v6

    .line 61
    :pswitch_0
    iget v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->label:I

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    if-ne v0, v8, :cond_3

    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move-object v0, p1

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    move-object v0, v9

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 83
    .line 84
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 85
    .line 86
    iget-object v3, v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 87
    .line 88
    iput v8, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->label:I

    .line 89
    .line 90
    invoke-virtual {v0, v3, v1, v2, p0}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->getFolderDetails(Lnet/thunderbird/feature/account/AccountId;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-ne v0, v7, :cond_5

    .line 95
    .line 96
    move-object v0, v7

    .line 97
    :cond_5
    :goto_1
    return-object v0

    .line 98
    :pswitch_1
    check-cast v3, Landroidx/compose/animation/SizeAnimationModifierNode;

    .line 99
    .line 100
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;

    .line 103
    .line 104
    iget v10, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->label:I

    .line 105
    .line 106
    if-eqz v10, :cond_7

    .line 107
    .line 108
    if-ne v10, v8, :cond_6

    .line 109
    .line 110
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    move-object v0, p1

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    move-object v6, v9

    .line 119
    goto :goto_3

    .line 120
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, v0, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;->anim:Landroidx/compose/animation/core/Animatable;

    .line 124
    .line 125
    new-instance v5, Landroidx/compose/ui/unit/IntSize;

    .line 126
    .line 127
    invoke-direct {v5, v1, v2}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v3, Landroidx/compose/animation/SizeAnimationModifierNode;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 131
    .line 132
    iput v8, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->label:I

    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    move-object v1, v5

    .line 136
    const/16 v5, 0xc

    .line 137
    .line 138
    move-object v4, p0

    .line 139
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-ne v0, v7, :cond_8

    .line 144
    .line 145
    move-object v6, v7

    .line 146
    goto :goto_3

    .line 147
    :cond_8
    :goto_2
    check-cast v0, Landroidx/compose/animation/core/AnimationResult;

    .line 148
    .line 149
    iget-object v0, v0, Landroidx/compose/animation/core/AnimationResult;->endReason:Landroidx/compose/animation/core/AnimationEndReason;

    .line 150
    .line 151
    :goto_3
    return-object v6

    .line 152
    :pswitch_2
    iget v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->label:I

    .line 153
    .line 154
    if-eqz v0, :cond_a

    .line 155
    .line 156
    if-ne v0, v8, :cond_9

    .line 157
    .line 158
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    move-object v0, p1

    .line 162
    goto :goto_4

    .line 163
    :cond_9
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    move-object v0, v9

    .line 167
    goto :goto_4

    .line 168
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v0, Landroidx/camera/camera2/pipe/core/Threads;

    .line 174
    .line 175
    iget-object v5, v0, Landroidx/camera/camera2/pipe/core/Threads;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 176
    .line 177
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 178
    .line 179
    iget-object v0, v0, Landroidx/camera/camera2/pipe/core/Threads;->cameraPipeDispatchScope:Lkotlinx/coroutines/CoroutineScope;

    .line 180
    .line 181
    new-instance v6, Landroidx/camera/camera2/pipe/core/Threads$runAsyncSupervised$1;

    .line 182
    .line 183
    const/4 v10, 0x0

    .line 184
    invoke-direct {v6, v10, v9, v3}, Landroidx/camera/camera2/pipe/core/Threads$runAsyncSupervised$1;-><init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 185
    .line 186
    .line 187
    const/4 v3, 0x2

    .line 188
    invoke-static {v0, v5, v9, v6, v3}, Lkotlinx/coroutines/JobKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-instance v3, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 193
    .line 194
    const/16 v5, 0x9

    .line 195
    .line 196
    invoke-direct {v3, v0, v9, v5}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 197
    .line 198
    .line 199
    iput v8, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->label:I

    .line 200
    .line 201
    invoke-static {v1, v2, v3, p0}, Lkotlinx/coroutines/JobKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-ne v0, v7, :cond_b

    .line 206
    .line 207
    move-object v0, v7

    .line 208
    :cond_b
    :goto_4
    return-object v0

    .line 209
    :pswitch_3
    iget v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->label:I

    .line 210
    .line 211
    if-eqz v0, :cond_d

    .line 212
    .line 213
    if-ne v0, v8, :cond_c

    .line 214
    .line 215
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_c
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    move-object v6, v9

    .line 223
    goto :goto_6

    .line 224
    :cond_d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 230
    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v9, "Finalizing "

    .line 234
    .line 235
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v0, " in "

    .line 242
    .line 243
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v0, " ms"

    .line 250
    .line 251
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    const-string v5, "CXCP"

    .line 259
    .line 260
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    iput v8, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->label:I

    .line 264
    .line 265
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-ne v0, v7, :cond_e

    .line 270
    .line 271
    move-object v6, v7

    .line 272
    goto :goto_6

    .line 273
    :cond_e
    :goto_5
    check-cast v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 274
    .line 275
    const-wide/16 v0, 0x0

    .line 276
    .line 277
    invoke-virtual {v3, v0, v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeSession$camera_camera2_pipe(J)V

    .line 278
    .line 279
    .line 280
    :goto_6
    return-object v6

    .line 281
    :pswitch_4
    iget v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->label:I

    .line 282
    .line 283
    if-eqz v0, :cond_10

    .line 284
    .line 285
    if-ne v0, v8, :cond_f

    .line 286
    .line 287
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_f
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    move-object v6, v9

    .line 295
    goto :goto_7

    .line 296
    :cond_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->L$0:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 302
    .line 303
    check-cast v3, Landroidx/compose/foundation/gestures/DraggableNode;

    .line 304
    .line 305
    iget-object v3, v3, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 306
    .line 307
    new-instance v5, Landroidx/compose/ui/geometry/Offset;

    .line 308
    .line 309
    invoke-direct {v5, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 310
    .line 311
    .line 312
    iput v8, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;->label:I

    .line 313
    .line 314
    invoke-interface {v3, v0, v5, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    if-ne v0, v7, :cond_11

    .line 319
    .line 320
    move-object v6, v7

    .line 321
    :cond_11
    :goto_7
    return-object v6

    .line 322
    nop

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
