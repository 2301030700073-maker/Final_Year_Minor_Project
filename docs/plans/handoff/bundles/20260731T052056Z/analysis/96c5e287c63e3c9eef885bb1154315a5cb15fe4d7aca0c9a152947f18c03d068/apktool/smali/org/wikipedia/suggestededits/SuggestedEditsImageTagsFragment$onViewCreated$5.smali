.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

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
    iget p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 6
    .line 7
    const/4 v3, 0x1

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
    iget v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->label:I

    .line 15
    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    if-eq v5, v3, :cond_0

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
    iget-object p1, v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 32
    .line 33
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;

    .line 38
    .line 39
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;->actionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 40
    .line 41
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5$1$1$1;

    .line 42
    .line 43
    invoke-direct {v1, v2, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5$1$1$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;I)V

    .line 44
    .line 45
    .line 46
    iput v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->label:I

    .line 47
    .line 48
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 49
    .line 50
    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-ne p0, v0, :cond_2

    .line 55
    .line 56
    move-object v4, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-object v4

    .line 62
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 63
    .line 64
    iget v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->label:I

    .line 65
    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    if-eq v5, v3, :cond_3

    .line 69
    .line 70
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 82
    .line 83
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;

    .line 88
    .line 89
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 90
    .line 91
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5$1$1$1;

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-direct {v1, v2, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5$1$1$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;I)V

    .line 95
    .line 96
    .line 97
    iput v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->label:I

    .line 98
    .line 99
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 100
    .line 101
    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    if-ne p0, v0, :cond_5

    .line 106
    .line 107
    move-object v4, v0

    .line 108
    goto :goto_3

    .line 109
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 110
    .line 111
    .line 112
    :goto_3
    return-object v4

    .line 113
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 114
    .line 115
    iget v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->label:I

    .line 116
    .line 117
    if-eqz v5, :cond_7

    .line 118
    .line 119
    if-ne v5, v3, :cond_6

    .line 120
    .line 121
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_6
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 133
    .line 134
    new-instance v1, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 135
    .line 136
    const/16 v5, 0x1c

    .line 137
    .line 138
    invoke-direct {v1, v5, v2, v4}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 139
    .line 140
    .line 141
    iput v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;->label:I

    .line 142
    .line 143
    invoke-static {v2, p1, v1, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    if-ne p0, v0, :cond_8

    .line 148
    .line 149
    move-object v4, v0

    .line 150
    goto :goto_5

    .line 151
    :cond_8
    :goto_4
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 152
    .line 153
    :goto_5
    return-object v4

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
