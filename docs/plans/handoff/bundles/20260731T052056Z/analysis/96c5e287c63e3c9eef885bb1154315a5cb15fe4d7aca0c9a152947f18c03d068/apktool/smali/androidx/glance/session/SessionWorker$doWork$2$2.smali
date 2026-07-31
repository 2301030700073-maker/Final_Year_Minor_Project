.class public final Landroidx/glance/session/SessionWorker$doWork$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $$this$withTimerOrNull:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/glance/session/SessionWorker;Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->$r8$classId:I

    .line 14
    iput-object p1, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->$$this$withTimerOrNull:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->$$this$withTimerOrNull:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->$$this$withTimerOrNull:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object v8, p1

    .line 13
    check-cast v8, Lkotlin/coroutines/Continuation;

    .line 14
    .line 15
    new-instance v4, Landroidx/glance/session/SessionWorker$doWork$2$2;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v5, p0

    .line 20
    check-cast v5, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 21
    .line 22
    move-object v6, v3

    .line 23
    check-cast v6, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 24
    .line 25
    move-object v7, v2

    .line 26
    check-cast v7, Ljava/util/List;

    .line 27
    .line 28
    const/4 v9, 0x4

    .line 29
    invoke-direct/range {v4 .. v9}, Landroidx/glance/session/SessionWorker$doWork$2$2;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v1}, Landroidx/glance/session/SessionWorker$doWork$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_0
    move-object v6, p1

    .line 38
    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    move-object v0, v2

    .line 41
    new-instance v2, Landroidx/glance/session/SessionWorker$doWork$2$2;

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 46
    .line 47
    move-object v4, v3

    .line 48
    check-cast v4, Ljava/lang/String;

    .line 49
    .line 50
    move-object v5, v0

    .line 51
    check-cast v5, Ljava/lang/String;

    .line 52
    .line 53
    const/4 v7, 0x3

    .line 54
    move-object v3, p0

    .line 55
    invoke-direct/range {v2 .. v7}, Landroidx/glance/session/SessionWorker$doWork$2$2;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1}, Landroidx/glance/session/SessionWorker$doWork$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :pswitch_1
    move-object v0, v2

    .line 64
    move-object v6, p1

    .line 65
    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 66
    .line 67
    new-instance v2, Landroidx/glance/session/SessionWorker$doWork$2$2;

    .line 68
    .line 69
    iget-object p0, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Landroidx/room/coroutines/PassthroughConnection;

    .line 72
    .line 73
    move-object v4, v3

    .line 74
    check-cast v4, Landroidx/room/Transactor$SQLiteTransactionType;

    .line 75
    .line 76
    move-object v5, v0

    .line 77
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 78
    .line 79
    const/4 v7, 0x2

    .line 80
    move-object v3, p0

    .line 81
    invoke-direct/range {v2 .. v7}, Landroidx/glance/session/SessionWorker$doWork$2$2;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v1}, Landroidx/glance/session/SessionWorker$doWork$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_2
    move-object v0, v2

    .line 90
    move-object v6, p1

    .line 91
    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 92
    .line 93
    new-instance v2, Landroidx/glance/session/SessionWorker$doWork$2$2;

    .line 94
    .line 95
    iget-object p0, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl;

    .line 98
    .line 99
    move-object v4, v3

    .line 100
    check-cast v4, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;

    .line 101
    .line 102
    move-object v5, v0

    .line 103
    check-cast v5, Landroidx/compose/foundation/MutatePriority;

    .line 104
    .line 105
    const/4 v7, 0x1

    .line 106
    move-object v3, p0

    .line 107
    invoke-direct/range {v2 .. v7}, Landroidx/glance/session/SessionWorker$doWork$2$2;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v1}, Landroidx/glance/session/SessionWorker$doWork$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :pswitch_3
    move-object v0, v2

    .line 116
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 117
    .line 118
    new-instance p0, Landroidx/glance/session/SessionWorker$doWork$2$2;

    .line 119
    .line 120
    check-cast v3, Landroidx/glance/session/SessionWorker;

    .line 121
    .line 122
    move-object v2, v0

    .line 123
    check-cast v2, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 124
    .line 125
    invoke-direct {p0, v3, v2, p1}, Landroidx/glance/session/SessionWorker$doWork$2$2;-><init>(Landroidx/glance/session/SessionWorker;Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Lkotlin/coroutines/Continuation;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1}, Landroidx/glance/session/SessionWorker$doWork$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->$$this$withTimerOrNull:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    .line 17
    iget v1, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->label:I

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    if-ne v1, v6, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    move-object v0, p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v0, v7

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 39
    .line 40
    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 41
    .line 42
    check-cast v2, Ljava/util/List;

    .line 43
    .line 44
    iput v6, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->label:I

    .line 45
    .line 46
    invoke-static {v1, v3, v2, p0}, Lorg/wikipedia/dataclient/Service$-CC;->addPagesToListIfNotExist$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-ne v1, v0, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move-object v0, v1

    .line 54
    :goto_0
    return-object v0

    .line 55
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 56
    .line 57
    iget v1, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->label:I

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    if-ne v1, v6, :cond_3

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move-object v0, p1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move-object v0, v7

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 79
    .line 80
    check-cast v3, Ljava/lang/String;

    .line 81
    .line 82
    check-cast v2, Ljava/lang/String;

    .line 83
    .line 84
    iput v6, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->label:I

    .line 85
    .line 86
    invoke-static {v1, v3, v2, p0}, Lorg/wikipedia/dataclient/Service$-CC;->findObject$suspendImpl(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-ne v1, v0, :cond_5

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    move-object v0, v1

    .line 94
    :goto_1
    return-object v0

    .line 95
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 96
    .line 97
    iget v1, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->label:I

    .line 98
    .line 99
    if-eqz v1, :cond_7

    .line 100
    .line 101
    if-ne v1, v6, :cond_6

    .line 102
    .line 103
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    move-object v0, p1

    .line 107
    goto :goto_2

    .line 108
    :cond_6
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    move-object v0, v7

    .line 112
    goto :goto_2

    .line 113
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v1, Landroidx/room/coroutines/PassthroughConnection;

    .line 119
    .line 120
    check-cast v3, Landroidx/room/Transactor$SQLiteTransactionType;

    .line 121
    .line 122
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 123
    .line 124
    iput v6, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->label:I

    .line 125
    .line 126
    invoke-virtual {v1, v3, v2, p0}, Landroidx/room/coroutines/PassthroughConnection;->transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-ne v1, v0, :cond_8

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_8
    move-object v0, v1

    .line 134
    :goto_2
    return-object v0

    .line 135
    :pswitch_2
    check-cast v2, Landroidx/compose/foundation/MutatePriority;

    .line 136
    .line 137
    check-cast v3, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;

    .line 138
    .line 139
    iget-object v0, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 140
    .line 141
    move-object v8, v0

    .line 142
    check-cast v8, Landroidx/compose/material3/TooltipStateImpl;

    .line 143
    .line 144
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 145
    .line 146
    iget v9, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->label:I

    .line 147
    .line 148
    if-eqz v9, :cond_b

    .line 149
    .line 150
    if-eq v9, v6, :cond_9

    .line 151
    .line 152
    if-ne v9, v1, :cond_a

    .line 153
    .line 154
    :cond_9
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    goto :goto_5

    .line 160
    :cond_a
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :try_start_1
    new-instance v4, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 168
    .line 169
    const/16 v6, 0xd

    .line 170
    .line 171
    invoke-direct {v4, v6, v3, v7}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 172
    .line 173
    .line 174
    iput v1, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->label:I

    .line 175
    .line 176
    new-instance v1, Lkotlinx/coroutines/TimeoutCoroutine;

    .line 177
    .line 178
    const-wide/16 v6, 0x5dc

    .line 179
    .line 180
    invoke-direct {v1, v6, v7, p0}, Lkotlinx/coroutines/TimeoutCoroutine;-><init>(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v1, v4}, Lkotlinx/coroutines/AwaitKt;->setupTimeout(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    if-ne v1, v0, :cond_c

    .line 188
    .line 189
    move-object v7, v0

    .line 190
    goto :goto_4

    .line 191
    :cond_c
    :goto_3
    sget-object v0, Landroidx/compose/foundation/MutatePriority;->PreventUserInput:Landroidx/compose/foundation/MutatePriority;

    .line 192
    .line 193
    if-eq v2, v0, :cond_d

    .line 194
    .line 195
    invoke-virtual {v8}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    .line 196
    .line 197
    .line 198
    :cond_d
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 199
    .line 200
    :goto_4
    return-object v7

    .line 201
    :goto_5
    sget-object v1, Landroidx/compose/foundation/MutatePriority;->PreventUserInput:Landroidx/compose/foundation/MutatePriority;

    .line 202
    .line 203
    if-eq v2, v1, :cond_e

    .line 204
    .line 205
    invoke-virtual {v8}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    .line 206
    .line 207
    .line 208
    :cond_e
    throw v0

    .line 209
    :pswitch_3
    move-object v8, v3

    .line 210
    check-cast v8, Landroidx/glance/session/SessionWorker;

    .line 211
    .line 212
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 213
    .line 214
    iget v0, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->label:I

    .line 215
    .line 216
    const/4 v10, 0x5

    .line 217
    const/4 v11, 0x4

    .line 218
    const/4 v12, 0x3

    .line 219
    if-eqz v0, :cond_13

    .line 220
    .line 221
    if-eq v0, v6, :cond_12

    .line 222
    .line 223
    if-eq v0, v1, :cond_11

    .line 224
    .line 225
    if-eq v0, v12, :cond_10

    .line 226
    .line 227
    if-eq v0, v11, :cond_f

    .line 228
    .line 229
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_c

    .line 233
    .line 234
    :cond_f
    iget-object v0, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v0, Ljava/lang/Throwable;

    .line 237
    .line 238
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_d

    .line 242
    .line 243
    :cond_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_8

    .line 247
    .line 248
    :cond_11
    iget-object v0, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 249
    .line 250
    move-object v1, v0

    .line 251
    check-cast v1, Landroidx/glance/appwidget/AppWidgetSession;

    .line 252
    .line 253
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 254
    .line 255
    .line 256
    goto/16 :goto_7

    .line 257
    .line 258
    :catchall_1
    move-exception v0

    .line 259
    goto/16 :goto_a

    .line 260
    .line 261
    :cond_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    move-object v0, p1

    .line 265
    goto :goto_6

    .line 266
    :cond_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    iget-object v0, v8, Landroidx/glance/session/SessionWorker;->sessionManager:Landroidx/glance/session/SessionManager;

    .line 270
    .line 271
    new-instance v3, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 272
    .line 273
    const/4 v4, 0x6

    .line 274
    invoke-direct {v3, v4, v8, v7}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 275
    .line 276
    .line 277
    iput v6, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->label:I

    .line 278
    .line 279
    check-cast v0, Landroidx/glance/session/SessionManagerImpl;

    .line 280
    .line 281
    invoke-virtual {v0, v3, p0}, Landroidx/glance/session/SessionManagerImpl;->runWithLock(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    if-ne v0, v9, :cond_14

    .line 286
    .line 287
    goto/16 :goto_b

    .line 288
    .line 289
    :cond_14
    :goto_6
    move-object v3, v0

    .line 290
    check-cast v3, Landroidx/glance/appwidget/AppWidgetSession;

    .line 291
    .line 292
    if-nez v3, :cond_16

    .line 293
    .line 294
    iget-object v0, v8, Landroidx/glance/session/SessionWorker;->params:Landroidx/work/WorkerParameters;

    .line 295
    .line 296
    iget v0, v0, Landroidx/work/WorkerParameters;->mRunAttemptCount:I

    .line 297
    .line 298
    iget-object v1, v8, Landroidx/glance/session/SessionWorker;->key:Ljava/lang/String;

    .line 299
    .line 300
    if-eqz v0, :cond_15

    .line 301
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string v2, "SessionWorker attempted restart but Session is not available for "

    .line 305
    .line 306
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    const-string v1, "GlanceSessionWorker"

    .line 317
    .line 318
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    goto :goto_c

    .line 326
    :cond_15
    const-string v0, "No session available for key "

    .line 327
    .line 328
    invoke-static {v0, v1}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$8(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    goto :goto_c

    .line 332
    :cond_16
    :try_start_3
    move-object v0, v2

    .line 333
    check-cast v0, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 334
    .line 335
    iget-object v2, v8, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 336
    .line 337
    iget-object v4, v8, Landroidx/glance/session/SessionWorker;->timeouts:Landroidx/glance/session/TimeoutOptions;

    .line 338
    .line 339
    move-object v6, v4

    .line 340
    new-instance v4, Landroidx/glance/session/SessionWorker$doWork$2$2$1;

    .line 341
    .line 342
    const/4 v13, 0x0

    .line 343
    invoke-direct {v4, v13}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 344
    .line 345
    .line 346
    iput-object v3, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 347
    .line 348
    iput v1, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->label:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 349
    .line 350
    move-object v5, p0

    .line 351
    move-object v1, v2

    .line 352
    move-object v2, v3

    .line 353
    move-object v3, v6

    .line 354
    :try_start_4
    invoke-static/range {v0 .. v5}, Lkotlin/ExceptionsKt;->runSession(Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetSession;Landroidx/glance/session/TimeoutOptions;Landroidx/glance/session/SessionWorker$doWork$2$2$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 358
    if-ne v0, v9, :cond_17

    .line 359
    .line 360
    goto :goto_b

    .line 361
    :cond_17
    move-object v1, v2

    .line 362
    :goto_7
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    .line 363
    .line 364
    new-instance v2, Landroidx/paging/PageFetcher$flow$1;

    .line 365
    .line 366
    invoke-direct {v2, v8, v1, v7, v10}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 367
    .line 368
    .line 369
    iput-object v7, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 370
    .line 371
    iput v12, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->label:I

    .line 372
    .line 373
    invoke-static {v0, v2, p0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    if-ne v0, v9, :cond_18

    .line 378
    .line 379
    goto :goto_b

    .line 380
    :cond_18
    :goto_8
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    goto :goto_c

    .line 385
    :catchall_2
    move-exception v0

    .line 386
    :goto_9
    move-object v1, v2

    .line 387
    goto :goto_a

    .line 388
    :catchall_3
    move-exception v0

    .line 389
    move-object v2, v3

    .line 390
    goto :goto_9

    .line 391
    :goto_a
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    .line 392
    .line 393
    new-instance v3, Landroidx/paging/PageFetcher$flow$1;

    .line 394
    .line 395
    invoke-direct {v3, v8, v1, v7, v10}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 396
    .line 397
    .line 398
    iput-object v0, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->L$0:Ljava/lang/Object;

    .line 399
    .line 400
    iput v11, p0, Landroidx/glance/session/SessionWorker$doWork$2$2;->label:I

    .line 401
    .line 402
    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    if-ne v1, v9, :cond_19

    .line 407
    .line 408
    :goto_b
    move-object v7, v9

    .line 409
    :goto_c
    return-object v7

    .line 410
    :cond_19
    :goto_d
    throw v0

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
