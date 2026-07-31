.class public final Landroidx/datastore/core/SingleProcessDataStore$data$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Landroidx/datastore/core/SingleProcessDataStore;


# direct methods
.method public synthetic constructor <init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->this$0:Landroidx/datastore/core/SingleProcessDataStore;

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
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->this$0:Landroidx/datastore/core/SingleProcessDataStore;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$data$1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, p2, v1}, Landroidx/datastore/core/SingleProcessDataStore$data$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$data$1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, p0, p2, v1}, Landroidx/datastore/core/SingleProcessDataStore$data$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/datastore/core/SingleProcessDataStore$Message;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SingleProcessDataStore$data$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SingleProcessDataStore$data$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SingleProcessDataStore$data$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SingleProcessDataStore$data$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->this$0:Landroidx/datastore/core/SingleProcessDataStore;

    .line 7
    .line 8
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    .line 17
    iget v7, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->label:I

    .line 18
    .line 19
    if-eqz v7, :cond_2

    .line 20
    .line 21
    if-eq v7, v5, :cond_0

    .line 22
    .line 23
    if-ne v7, v2, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_1
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    move-object v4, v6

    .line 34
    goto :goto_5

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Landroidx/datastore/core/SingleProcessDataStore$Message;

    .line 41
    .line 42
    instance-of v1, p1, Landroidx/datastore/core/SingleProcessDataStore$Message$Read;

    .line 43
    .line 44
    if-eqz v1, :cond_8

    .line 45
    .line 46
    check-cast p1, Landroidx/datastore/core/SingleProcessDataStore$Message$Read;

    .line 47
    .line 48
    iput v5, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->label:I

    .line 49
    .line 50
    sget-object v1, Landroidx/datastore/core/SingleProcessDataStore;->activeFiles:Ljava/util/LinkedHashSet;

    .line 51
    .line 52
    iget-object v1, v3, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 53
    .line 54
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroidx/datastore/core/State;

    .line 59
    .line 60
    instance-of v2, v1, Landroidx/datastore/core/Data;

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    instance-of v2, v1, Landroidx/datastore/core/ReadException;

    .line 66
    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    iget-object p1, p1, Landroidx/datastore/core/SingleProcessDataStore$Message$Read;->lastState:Landroidx/datastore/core/State;

    .line 70
    .line 71
    if-ne v1, p1, :cond_4

    .line 72
    .line 73
    invoke-virtual {v3, p0}, Landroidx/datastore/core/SingleProcessDataStore;->readAndInitOrPropagateFailure(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-ne p0, v0, :cond_4

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    :goto_1
    move-object p0, v4

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    sget-object p1, Landroidx/datastore/core/UnInitialized;->INSTANCE:Landroidx/datastore/core/UnInitialized;

    .line 83
    .line 84
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    invoke-virtual {v3, p0}, Landroidx/datastore/core/SingleProcessDataStore;->readAndInitOrPropagateFailure(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    if-ne p0, v0, :cond_4

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_6
    instance-of p0, v1, Landroidx/datastore/core/Final;

    .line 98
    .line 99
    if-nez p0, :cond_7

    .line 100
    .line 101
    :goto_2
    goto :goto_1

    .line 102
    :goto_3
    if-ne p0, v0, :cond_9

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_7
    const-string p0, "Can\'t read in final state."

    .line 106
    .line 107
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_8
    instance-of v1, p1, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;

    .line 112
    .line 113
    if-eqz v1, :cond_9

    .line 114
    .line 115
    check-cast p1, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;

    .line 116
    .line 117
    iput v2, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->label:I

    .line 118
    .line 119
    sget-object v1, Landroidx/datastore/core/SingleProcessDataStore;->activeFiles:Ljava/util/LinkedHashSet;

    .line 120
    .line 121
    invoke-virtual {v3, p1, p0}, Landroidx/datastore/core/SingleProcessDataStore;->handleUpdate(Landroidx/datastore/core/SingleProcessDataStore$Message$Update;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    if-ne p0, v0, :cond_9

    .line 126
    .line 127
    :goto_4
    move-object v4, v0

    .line 128
    :cond_9
    :goto_5
    return-object v4

    .line 129
    :pswitch_0
    iget-object v0, v3, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 130
    .line 131
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 132
    .line 133
    iget v8, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->label:I

    .line 134
    .line 135
    if-eqz v8, :cond_b

    .line 136
    .line 137
    if-ne v8, v5, :cond_a

    .line 138
    .line 139
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_9

    .line 143
    :cond_a
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    move-object v4, v6

    .line 147
    goto :goto_9

    .line 148
    :cond_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->L$0:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 154
    .line 155
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Landroidx/datastore/core/State;

    .line 160
    .line 161
    instance-of v8, v1, Landroidx/datastore/core/Data;

    .line 162
    .line 163
    if-nez v8, :cond_c

    .line 164
    .line 165
    iget-object v3, v3, Landroidx/datastore/core/SingleProcessDataStore;->actor:Lcoil3/ImageLoader$Builder;

    .line 166
    .line 167
    new-instance v8, Landroidx/datastore/core/SingleProcessDataStore$Message$Read;

    .line 168
    .line 169
    invoke-direct {v8, v1}, Landroidx/datastore/core/SingleProcessDataStore$Message$Read;-><init>(Landroidx/datastore/core/State;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v8}, Lcoil3/ImageLoader$Builder;->offer(Landroidx/datastore/core/SingleProcessDataStore$Message;)V

    .line 173
    .line 174
    .line 175
    :cond_c
    new-instance v3, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 176
    .line 177
    invoke-direct {v3, v2, v1, v6}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 178
    .line 179
    .line 180
    iput v5, p0, Landroidx/datastore/core/SingleProcessDataStore$data$1;->label:I

    .line 181
    .line 182
    instance-of v1, p1, Lkotlinx/coroutines/flow/ThrowingCollector;

    .line 183
    .line 184
    if-nez v1, :cond_11

    .line 185
    .line 186
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;

    .line 187
    .line 188
    invoke-direct {v1, p1, v5}, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 189
    .line 190
    .line 191
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 192
    .line 193
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 194
    .line 195
    .line 196
    new-instance v2, Landroidx/paging/FlowExtKt$simpleScan$1$1;

    .line 197
    .line 198
    invoke-direct {v2, p1, v1, v3}, Landroidx/paging/FlowExtKt$simpleScan$1$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function2;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v2, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    if-ne p0, v7, :cond_d

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_d
    move-object p0, v4

    .line 209
    :goto_6
    if-ne p0, v7, :cond_e

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_e
    move-object p0, v4

    .line 213
    :goto_7
    if-ne p0, v7, :cond_f

    .line 214
    .line 215
    goto :goto_8

    .line 216
    :cond_f
    move-object p0, v4

    .line 217
    :goto_8
    if-ne p0, v7, :cond_10

    .line 218
    .line 219
    move-object v4, v7

    .line 220
    :cond_10
    :goto_9
    return-object v4

    .line 221
    :cond_11
    check-cast p1, Lkotlinx/coroutines/flow/ThrowingCollector;

    .line 222
    .line 223
    iget-object p0, p1, Lkotlinx/coroutines/flow/ThrowingCollector;->e:Ljava/lang/Throwable;

    .line 224
    .line 225
    throw p0

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
