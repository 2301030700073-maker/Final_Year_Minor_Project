.class public final Lorg/wikipedia/feed/HomeViewModel$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/feed/HomeViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/HomeViewModel$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$2;->this$0:Lorg/wikipedia/feed/HomeViewModel;

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
    iget p1, p0, Lorg/wikipedia/feed/HomeViewModel$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$2;->this$0:Lorg/wikipedia/feed/HomeViewModel;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$2;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/feed/HomeViewModel$2;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$2;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/feed/HomeViewModel$2;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/HomeViewModel$2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    iget-object v4, v0, Lorg/wikipedia/feed/HomeViewModel$2;->this$0:Lorg/wikipedia/feed/HomeViewModel;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v1, v4, Lorg/wikipedia/feed/HomeViewModel;->_forYouState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 17
    .line 18
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    iget v8, v0, Lorg/wikipedia/feed/HomeViewModel$2;->label:I

    .line 21
    .line 22
    if-eqz v8, :cond_1

    .line 23
    .line 24
    if-ne v8, v5, :cond_0

    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    move-object/from16 v0, p1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v2, v6

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lorg/wikipedia/feed/ForYouContentState;

    .line 45
    .line 46
    iget-object v3, v3, Lorg/wikipedia/feed/ForYouContentState;->modules:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    move-object v8, v3

    .line 57
    check-cast v8, Lorg/wikipedia/feed/ForYouContentState;

    .line 58
    .line 59
    iget-object v3, v4, Lorg/wikipedia/feed/HomeViewModel;->wikiSite:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 60
    .line 61
    iget-object v3, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 62
    .line 63
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    move-object v10, v3

    .line 68
    check-cast v10, Lorg/wikipedia/dataclient/WikiSite;

    .line 69
    .line 70
    xor-int/lit8 v12, v11, 0x1

    .line 71
    .line 72
    const/4 v15, 0x0

    .line 73
    const/16 v16, 0xe1

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v13, 0x0

    .line 77
    const/4 v14, 0x0

    .line 78
    invoke-static/range {v8 .. v16}, Lorg/wikipedia/feed/ForYouContentState;->copy$default(Lorg/wikipedia/feed/ForYouContentState;Ljava/util/ArrayList;Lorg/wikipedia/dataclient/WikiSite;ZZLjava/lang/Throwable;ZLorg/wikipedia/feed/FeedEmptyState;I)Lorg/wikipedia/feed/ForYouContentState;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1, v6, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget v3, v4, Lorg/wikipedia/feed/HomeViewModel;->forYouBatchIndex:I

    .line 86
    .line 87
    iput v5, v0, Lorg/wikipedia/feed/HomeViewModel$2;->label:I

    .line 88
    .line 89
    invoke-virtual {v4, v3, v0}, Lorg/wikipedia/feed/HomeViewModel;->fetchForYouModules(ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-ne v0, v7, :cond_2

    .line 94
    .line 95
    move-object v2, v7

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    :goto_0
    check-cast v0, Ljava/util/List;

    .line 98
    .line 99
    iget v3, v4, Lorg/wikipedia/feed/HomeViewModel;->forYouBatchIndex:I

    .line 100
    .line 101
    add-int/2addr v3, v5

    .line 102
    iput v3, v4, Lorg/wikipedia/feed/HomeViewModel;->forYouBatchIndex:I

    .line 103
    .line 104
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    move-object v7, v3

    .line 109
    check-cast v7, Lorg/wikipedia/feed/ForYouContentState;

    .line 110
    .line 111
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lorg/wikipedia/feed/ForYouContentState;

    .line 116
    .line 117
    iget-object v3, v3, Lorg/wikipedia/feed/ForYouContentState;->modules:Ljava/util/List;

    .line 118
    .line 119
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    const/4 v14, 0x0

    .line 124
    const/16 v15, 0xe2

    .line 125
    .line 126
    const/4 v9, 0x0

    .line 127
    const/4 v10, 0x0

    .line 128
    const/4 v11, 0x0

    .line 129
    const/4 v12, 0x0

    .line 130
    const/4 v13, 0x0

    .line 131
    invoke-static/range {v7 .. v15}, Lorg/wikipedia/feed/ForYouContentState;->copy$default(Lorg/wikipedia/feed/ForYouContentState;Ljava/util/ArrayList;Lorg/wikipedia/dataclient/WikiSite;ZZLjava/lang/Throwable;ZLorg/wikipedia/feed/FeedEmptyState;I)Lorg/wikipedia/feed/ForYouContentState;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v1, v6, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :goto_1
    return-object v2

    .line 139
    :pswitch_0
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 140
    .line 141
    iget v7, v0, Lorg/wikipedia/feed/HomeViewModel$2;->label:I

    .line 142
    .line 143
    if-eqz v7, :cond_4

    .line 144
    .line 145
    if-ne v7, v5, :cond_3

    .line 146
    .line 147
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    move-object v2, v6

    .line 155
    goto :goto_2

    .line 156
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget-object v3, v4, Lorg/wikipedia/feed/HomeViewModel;->_selectedTab:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 160
    .line 161
    iget-object v7, v4, Lorg/wikipedia/feed/HomeViewModel;->_wikiSite:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 162
    .line 163
    new-instance v8, Lorg/wikipedia/feed/HomeViewModel$2$1;

    .line 164
    .line 165
    const/4 v9, 0x3

    .line 166
    const/4 v10, 0x0

    .line 167
    invoke-direct {v8, v9, v10, v6}, Lorg/wikipedia/feed/HomeViewModel$2$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 168
    .line 169
    .line 170
    new-instance v6, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    .line 171
    .line 172
    invoke-direct {v6, v3, v7, v8, v5}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/Function;I)V

    .line 173
    .line 174
    .line 175
    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    new-instance v6, Landroidx/paging/ChannelFlowCollector;

    .line 180
    .line 181
    const/16 v7, 0xe

    .line 182
    .line 183
    invoke-direct {v6, v7, v4}, Landroidx/paging/ChannelFlowCollector;-><init>(ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iput v5, v0, Lorg/wikipedia/feed/HomeViewModel$2;->label:I

    .line 187
    .line 188
    invoke-interface {v3, v6, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-ne v0, v1, :cond_5

    .line 193
    .line 194
    move-object v2, v1

    .line 195
    :cond_5
    :goto_2
    return-object v2

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
