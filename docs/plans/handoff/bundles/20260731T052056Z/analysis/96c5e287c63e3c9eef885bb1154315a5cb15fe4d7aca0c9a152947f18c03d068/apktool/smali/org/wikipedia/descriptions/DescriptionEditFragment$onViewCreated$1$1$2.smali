.class public final Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    iget v5, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->label:I

    .line 15
    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    if-eq v5, v2, :cond_0

    .line 19
    .line 20
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p1, p1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->waitForRevisionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 36
    .line 37
    new-instance v1, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2$1;

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    invoke-direct {v1, v3, v5}, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;I)V

    .line 41
    .line 42
    .line 43
    iput v2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->label:I

    .line 44
    .line 45
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 46
    .line 47
    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-ne p0, v0, :cond_2

    .line 52
    .line 53
    move-object v4, v0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-object v4

    .line 59
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 60
    .line 61
    iget v5, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->label:I

    .line 62
    .line 63
    if-eqz v5, :cond_4

    .line 64
    .line 65
    if-eq v5, v2, :cond_3

    .line 66
    .line 67
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p1, p1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->requestSuggestionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 83
    .line 84
    new-instance v1, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2$1;

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    invoke-direct {v1, v3, v5}, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;I)V

    .line 88
    .line 89
    .line 90
    iput v2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2;->label:I

    .line 91
    .line 92
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 93
    .line 94
    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    if-ne p0, v0, :cond_5

    .line 99
    .line 100
    move-object v4, v0

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 103
    .line 104
    .line 105
    :goto_3
    return-object v4

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
