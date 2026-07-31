.class public final Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/edit/templates/TemplatesSearchActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->this$0:Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

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
    iget p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->this$0:Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->this$0:Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    iget v1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->label:I

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    if-eq v1, v4, :cond_0

    .line 21
    .line 22
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->getViewModel()Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 38
    .line 39
    new-instance v1, Landroidx/paging/ChannelFlowCollector;

    .line 40
    .line 41
    const/16 v2, 0xd

    .line 42
    .line 43
    invoke-direct {v1, v2, v3}, Landroidx/paging/ChannelFlowCollector;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput v4, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->label:I

    .line 47
    .line 48
    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-ne p0, v0, :cond_2

    .line 53
    .line 54
    move-object v5, v0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-object v5

    .line 60
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 61
    .line 62
    iget v6, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->label:I

    .line 63
    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    if-ne v6, v4, :cond_3

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    move-object v1, v5

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, v3, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->templatesSearchAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    iget-object p1, p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->loadStateFlow:Lkotlinx/coroutines/flow/Flow;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    new-instance v2, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2$1;

    .line 89
    .line 90
    const/4 v6, 0x2

    .line 91
    invoke-direct {v2, v3, v5, v6}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2$1;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Lkotlin/coroutines/Continuation;I)V

    .line 92
    .line 93
    .line 94
    iput v4, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->label:I

    .line 95
    .line 96
    invoke-static {p1, v2, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-ne p0, v0, :cond_5

    .line 101
    .line 102
    move-object v1, v0

    .line 103
    :cond_5
    :goto_2
    return-object v1

    .line 104
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 105
    .line 106
    iget v6, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->label:I

    .line 107
    .line 108
    if-eqz v6, :cond_7

    .line 109
    .line 110
    if-ne v6, v4, :cond_6

    .line 111
    .line 112
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    move-object v1, v5

    .line 120
    goto :goto_3

    .line 121
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->getViewModel()Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object p1, p1, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->searchTemplatesFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 129
    .line 130
    new-instance v2, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2$1;

    .line 131
    .line 132
    invoke-direct {v2, v3, v5, v4}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2$1;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Lkotlin/coroutines/Continuation;I)V

    .line 133
    .line 134
    .line 135
    iput v4, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->label:I

    .line 136
    .line 137
    invoke-static {p1, v2, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    if-ne p0, v0, :cond_8

    .line 142
    .line 143
    move-object v1, v0

    .line 144
    :cond_8
    :goto_3
    return-object v1

    .line 145
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 146
    .line 147
    iget v6, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->label:I

    .line 148
    .line 149
    if-eqz v6, :cond_a

    .line 150
    .line 151
    if-ne v6, v4, :cond_9

    .line 152
    .line 153
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_9
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    move-object v1, v5

    .line 161
    goto :goto_4

    .line 162
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 166
    .line 167
    new-instance v2, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2$1;

    .line 168
    .line 169
    const/4 v6, 0x0

    .line 170
    invoke-direct {v2, v3, v5, v6}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2$1;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Lkotlin/coroutines/Continuation;I)V

    .line 171
    .line 172
    .line 173
    iput v4, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;->label:I

    .line 174
    .line 175
    invoke-static {v3, p1, v2, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    if-ne p0, v0, :cond_b

    .line 180
    .line 181
    move-object v1, v0

    .line 182
    :cond_b
    :goto_4
    return-object v1

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
