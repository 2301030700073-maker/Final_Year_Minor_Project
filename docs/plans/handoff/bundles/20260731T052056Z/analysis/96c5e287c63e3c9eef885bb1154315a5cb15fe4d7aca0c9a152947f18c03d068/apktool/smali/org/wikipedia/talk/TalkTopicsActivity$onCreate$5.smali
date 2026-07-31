.class public final Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/talk/TalkTopicsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

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
    iget p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 5
    .line 6
    iget-object v3, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 14
    .line 15
    iget v1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->label:I

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    if-eq v1, v4, :cond_0

    .line 20
    .line 21
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget p1, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 33
    .line 34
    invoke-virtual {v3}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicsViewModel;->actionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 39
    .line 40
    new-instance v1, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1$1$1;

    .line 41
    .line 42
    invoke-direct {v1, v3, v4}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1$1$1;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 43
    .line 44
    .line 45
    iput v4, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->label:I

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
    move-object v5, v0

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
    return-object v5

    .line 59
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 60
    .line 61
    iget v6, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->label:I

    .line 62
    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    if-eq v6, v4, :cond_3

    .line 66
    .line 67
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

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
    sget p1, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 79
    .line 80
    invoke-virtual {v3}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicsViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 85
    .line 86
    new-instance v2, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1$1$1;

    .line 87
    .line 88
    invoke-direct {v2, v3, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1$1$1;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 89
    .line 90
    .line 91
    iput v4, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->label:I

    .line 92
    .line 93
    invoke-virtual {p1, v2, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    if-ne p0, v0, :cond_5

    .line 98
    .line 99
    move-object v5, v0

    .line 100
    goto :goto_3

    .line 101
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 102
    .line 103
    .line 104
    :goto_3
    return-object v5

    .line 105
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 106
    .line 107
    iget v6, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->label:I

    .line 108
    .line 109
    if-eqz v6, :cond_7

    .line 110
    .line 111
    if-ne v6, v4, :cond_6

    .line 112
    .line 113
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 125
    .line 126
    new-instance v2, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 127
    .line 128
    invoke-direct {v2, v1, v3, v5}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 129
    .line 130
    .line 131
    iput v4, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;->label:I

    .line 132
    .line 133
    invoke-static {v3, p1, v2, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    if-ne p0, v0, :cond_8

    .line 138
    .line 139
    move-object v5, v0

    .line 140
    goto :goto_5

    .line 141
    :cond_8
    :goto_4
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 142
    .line 143
    :goto_5
    return-object v5

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
