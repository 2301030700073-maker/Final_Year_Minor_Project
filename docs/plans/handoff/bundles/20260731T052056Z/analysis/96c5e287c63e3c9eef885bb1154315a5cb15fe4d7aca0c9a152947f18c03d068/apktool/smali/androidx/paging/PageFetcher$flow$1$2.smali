.class public final Landroidx/paging/PageFetcher$flow$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public label:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/paging/PageFetcher;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/paging/PageFetcher$flow$1$2;->$r8$classId:I

    .line 13
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/Data$$ExternalSyntheticLambda0;Lkotlinx/coroutines/flow/StateFlowImpl;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/paging/PageFetcher$flow$1$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;Lorg/wikipedia/search/SearchResultsViewModel;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/paging/PageFetcher$flow$1$2;->$r8$classId:I

    .line 14
    iput-object p2, p0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/paging/PageFetcher$flow$1$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 9
    .line 10
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    new-instance v0, Landroidx/paging/PageFetcher$flow$1$2;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lorg/wikipedia/search/SearchResultsViewModel;

    .line 17
    .line 18
    invoke-direct {v0, p3, p0}, Landroidx/paging/PageFetcher$flow$1$2;-><init>(Lkotlin/coroutines/Continuation;Lorg/wikipedia/search/SearchResultsViewModel;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/paging/PageFetcher$flow$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 31
    .line 32
    check-cast p2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 33
    .line 34
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    new-instance v0, Landroidx/paging/PageFetcher$flow$1$2;

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 45
    .line 46
    invoke-direct {v0, v2, p0, p3}, Landroidx/paging/PageFetcher$flow$1$2;-><init>(Landroidx/work/Data$$ExternalSyntheticLambda0;Lkotlinx/coroutines/flow/StateFlowImpl;Lkotlin/coroutines/Continuation;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 50
    .line 51
    iput-object p2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroidx/paging/PageFetcher$flow$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_1
    check-cast p1, Landroidx/paging/PageFetcher$GenerationInfo;

    .line 59
    .line 60
    check-cast p2, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    .line 61
    .line 62
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 63
    .line 64
    new-instance v0, Landroidx/paging/PageFetcher$flow$1$2;

    .line 65
    .line 66
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Landroidx/paging/PageFetcher;

    .line 69
    .line 70
    invoke-direct {v0, p0, p3}, Landroidx/paging/PageFetcher$flow$1$2;-><init>(Landroidx/paging/PageFetcher;Lkotlin/coroutines/Continuation;)V

    .line 71
    .line 72
    .line 73
    iput-object p1, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    iput-object p2, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/paging/PageFetcher$flow$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/paging/PageFetcher$flow$1$2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x0

    .line 10
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    const/4 v7, 0x2

    .line 13
    const/4 v8, 0x1

    .line 14
    const/4 v9, 0x0

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lorg/wikipedia/search/SearchResultsViewModel;

    .line 21
    .line 22
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 23
    .line 24
    iget v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    if-eq v4, v8, :cond_1

    .line 29
    .line 30
    if-ne v4, v7, :cond_0

    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_0
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object v3, v9

    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_1
    iget-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, Ljava/lang/String;

    .line 46
    .line 47
    iget-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v6, Ljava/lang/String;

    .line 50
    .line 51
    iget-object v8, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v8, Lkotlinx/coroutines/flow/FlowCollector;

    .line 54
    .line 55
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    .line 65
    .line 66
    iget-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v6, Lkotlin/Pair;

    .line 69
    .line 70
    iget-object v10, v6, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v10, Ljava/lang/String;

    .line 73
    .line 74
    iget-object v6, v6, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v6, Ljava/lang/String;

    .line 77
    .line 78
    iget-object v11, v1, Lorg/wikipedia/search/SearchResultsViewModel;->_searchTermForLogging:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 79
    .line 80
    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 81
    .line 82
    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 83
    .line 84
    iput-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    .line 85
    .line 86
    iput-object v10, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    iput-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput v8, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    .line 91
    .line 92
    invoke-virtual {v11, v10, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    if-ne v8, v2, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move-object v8, v4

    .line 100
    move-object v4, v6

    .line 101
    move-object v6, v10

    .line 102
    :goto_0
    new-instance v10, Lokio/ByteString$Companion;

    .line 103
    .line 104
    const/16 v11, 0x13

    .line 105
    .line 106
    invoke-direct {v10, v11}, Lokio/ByteString$Companion;-><init>(I)V

    .line 107
    .line 108
    .line 109
    new-instance v11, Landroidx/paging/PagingConfig;

    .line 110
    .line 111
    iget v12, v1, Lorg/wikipedia/search/SearchResultsViewModel;->batchSize:I

    .line 112
    .line 113
    const/16 v13, 0x3e

    .line 114
    .line 115
    invoke-direct {v11, v12, v13}, Landroidx/paging/PagingConfig;-><init>(II)V

    .line 116
    .line 117
    .line 118
    new-instance v12, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$2$1;

    .line 119
    .line 120
    invoke-direct {v12, v6, v4, v1, v10}, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$2$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/search/SearchResultsViewModel;Lokio/ByteString$Companion;)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Landroidx/paging/PageFetcher;

    .line 124
    .line 125
    new-instance v4, Landroidx/paging/Pager$pageFetcher$2;

    .line 126
    .line 127
    invoke-direct {v4, v5, v12, v9}, Landroidx/paging/Pager$pageFetcher$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, v4, v11}, Landroidx/paging/PageFetcher;-><init>(Landroidx/paging/Pager$pageFetcher$2;Landroidx/paging/PagingConfig;)V

    .line 131
    .line 132
    .line 133
    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    .line 138
    .line 139
    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Ljava/lang/Object;

    .line 142
    .line 143
    iput v7, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    .line 144
    .line 145
    instance-of v4, v8, Lkotlinx/coroutines/flow/ThrowingCollector;

    .line 146
    .line 147
    if-nez v4, :cond_6

    .line 148
    .line 149
    iget-object v1, v1, Landroidx/paging/PageFetcher;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 150
    .line 151
    invoke-interface {v1, v8, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-ne v0, v2, :cond_4

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    move-object v0, v3

    .line 159
    :goto_1
    if-ne v0, v2, :cond_5

    .line 160
    .line 161
    :goto_2
    move-object v3, v2

    .line 162
    :cond_5
    :goto_3
    return-object v3

    .line 163
    :cond_6
    check-cast v8, Lkotlinx/coroutines/flow/ThrowingCollector;

    .line 164
    .line 165
    iget-object v0, v8, Lkotlinx/coroutines/flow/ThrowingCollector;->e:Ljava/lang/Throwable;

    .line 166
    .line 167
    throw v0

    .line 168
    :pswitch_0
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 169
    .line 170
    iget v10, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    .line 171
    .line 172
    if-eqz v10, :cond_a

    .line 173
    .line 174
    if-eq v10, v8, :cond_9

    .line 175
    .line 176
    if-ne v10, v7, :cond_8

    .line 177
    .line 178
    iget-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 181
    .line 182
    iget-object v10, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v10, Lkotlinx/coroutines/channels/Channel;

    .line 185
    .line 186
    iget-object v11, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v11, Lkotlinx/coroutines/flow/FlowCollector;

    .line 189
    .line 190
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_7
    move-object v12, v11

    .line 194
    move-object v11, v10

    .line 195
    move-object v10, v6

    .line 196
    goto/16 :goto_a

    .line 197
    .line 198
    :cond_8
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :goto_4
    move-object v3, v9

    .line 202
    goto/16 :goto_b

    .line 203
    .line 204
    :cond_9
    iget-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v6, Lkotlin/jvm/internal/Ref$LongRef;

    .line 207
    .line 208
    iget-object v10, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 211
    .line 212
    iget-object v11, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v11, Lkotlinx/coroutines/channels/Channel;

    .line 215
    .line 216
    iget-object v12, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v12, Lkotlinx/coroutines/flow/FlowCollector;

    .line 219
    .line 220
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_6

    .line 224
    .line 225
    :cond_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    iget-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 231
    .line 232
    iget-object v10, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v10, Lkotlinx/coroutines/flow/FlowCollector;

    .line 235
    .line 236
    new-instance v11, Landroidx/paging/PageFetcher$flow$1;

    .line 237
    .line 238
    iget-object v12, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v12, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 241
    .line 242
    const/16 v13, 0x16

    .line 243
    .line 244
    invoke-direct {v11, v13, v12, v9}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 245
    .line 246
    .line 247
    sget-object v12, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 248
    .line 249
    sget-object v13, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 250
    .line 251
    invoke-static {v5, v4, v12}, Landroidx/compose/ui/unit/DpKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 252
    .line 253
    .line 254
    move-result-object v12

    .line 255
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 256
    .line 257
    invoke-static {v6, v14}, Lkotlinx/coroutines/AwaitKt;->newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    new-instance v14, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 262
    .line 263
    invoke-direct {v14, v6, v12}, Lkotlinx/coroutines/channels/ProducerCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v14, v13, v14, v11}, Lkotlinx/coroutines/AbstractCoroutine;->start(Lkotlinx/coroutines/CoroutineStart;Lkotlinx/coroutines/AbstractCoroutine;Lkotlin/jvm/functions/Function2;)V

    .line 267
    .line 268
    .line 269
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 270
    .line 271
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 272
    .line 273
    .line 274
    move-object v12, v10

    .line 275
    move-object v11, v14

    .line 276
    move-object v10, v6

    .line 277
    :goto_5
    iget-object v6, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 278
    .line 279
    sget-object v13, Lkotlinx/coroutines/flow/internal/CombineKt;->DONE:Lkotlinx/coroutines/internal/Symbol;

    .line 280
    .line 281
    if-eq v6, v13, :cond_11

    .line 282
    .line 283
    new-instance v13, Lkotlin/jvm/internal/Ref$LongRef;

    .line 284
    .line 285
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 286
    .line 287
    .line 288
    if-eqz v6, :cond_d

    .line 289
    .line 290
    sget-object v6, Lkotlinx/coroutines/flow/internal/CombineKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .line 291
    .line 292
    const-wide/16 v14, 0xc8

    .line 293
    .line 294
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 295
    .line 296
    .line 297
    move-result-object v14

    .line 298
    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    .line 299
    .line 300
    .line 301
    move-result-wide v14

    .line 302
    iput-wide v14, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 303
    .line 304
    const-wide/16 v16, 0x0

    .line 305
    .line 306
    cmp-long v14, v14, v16

    .line 307
    .line 308
    if-ltz v14, :cond_e

    .line 309
    .line 310
    if-nez v14, :cond_d

    .line 311
    .line 312
    iget-object v14, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 313
    .line 314
    if-ne v14, v6, :cond_b

    .line 315
    .line 316
    move-object v14, v9

    .line 317
    :cond_b
    iput-object v12, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 318
    .line 319
    iput-object v11, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 320
    .line 321
    iput-object v10, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    .line 322
    .line 323
    iput-object v13, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 324
    .line 325
    iput v8, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    .line 326
    .line 327
    invoke-interface {v12, v14, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    if-ne v6, v1, :cond_c

    .line 332
    .line 333
    goto/16 :goto_9

    .line 334
    .line 335
    :cond_c
    move-object v6, v13

    .line 336
    :goto_6
    iput-object v9, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 337
    .line 338
    move-object v13, v6

    .line 339
    :cond_d
    move-object v6, v10

    .line 340
    move-object v10, v11

    .line 341
    move-object v11, v12

    .line 342
    goto :goto_7

    .line 343
    :cond_e
    const-string v0, "Debounce timeout should not be negative"

    .line 344
    .line 345
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_4

    .line 349
    .line 350
    :goto_7
    new-instance v15, Lkotlinx/coroutines/selects/SelectImplementation;

    .line 351
    .line 352
    iget-object v12, v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    .line 353
    .line 354
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    invoke-direct {v15, v12}, Lkotlinx/coroutines/selects/SelectImplementation;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 358
    .line 359
    .line 360
    iget-object v12, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 361
    .line 362
    if-eqz v12, :cond_f

    .line 363
    .line 364
    iget-wide v12, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 365
    .line 366
    new-instance v14, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 367
    .line 368
    invoke-direct {v14, v11, v6, v9, v4}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 369
    .line 370
    .line 371
    new-instance v4, Lkotlinx/coroutines/selects/OnTimeout;

    .line 372
    .line 373
    invoke-direct {v4, v12, v13}, Lkotlinx/coroutines/selects/OnTimeout;-><init>(J)V

    .line 374
    .line 375
    .line 376
    sget-object v12, Lkotlinx/coroutines/selects/OnTimeout$selectClause$1;->INSTANCE:Lkotlinx/coroutines/selects/OnTimeout$selectClause$1;

    .line 377
    .line 378
    invoke-static {v2, v12}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-object/from16 v20, v14

    .line 382
    .line 383
    new-instance v14, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 384
    .line 385
    sget-object v19, Lkotlinx/coroutines/selects/SelectKt;->PARAM_CLAUSE_0:Lkotlinx/coroutines/internal/Symbol;

    .line 386
    .line 387
    sget-object v18, Lkotlinx/coroutines/selects/SelectKt$DUMMY_PROCESS_RESULT_FUNCTION$1;->INSTANCE:Lkotlinx/coroutines/selects/SelectKt$DUMMY_PROCESS_RESULT_FUNCTION$1;

    .line 388
    .line 389
    const/16 v21, 0x0

    .line 390
    .line 391
    move-object/from16 v16, v4

    .line 392
    .line 393
    move-object/from16 v17, v12

    .line 394
    .line 395
    invoke-direct/range {v14 .. v21}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/SuspendLambda;Lkotlin/jvm/functions/Function3;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v15, v14, v5}, Lkotlinx/coroutines/selects/SelectImplementation;->register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    .line 399
    .line 400
    .line 401
    :cond_f
    invoke-interface {v10}, Lkotlinx/coroutines/channels/Channel;->getOnReceiveCatching()Lokhttp3/FormBody$Builder;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    new-instance v12, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 406
    .line 407
    const/16 v13, 0x1b

    .line 408
    .line 409
    invoke-direct {v12, v6, v11, v9, v13}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 410
    .line 411
    .line 412
    new-instance v14, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 413
    .line 414
    iget-object v13, v4, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 415
    .line 416
    move-object/from16 v16, v13

    .line 417
    .line 418
    check-cast v16, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 419
    .line 420
    sget-object v17, Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$1;

    .line 421
    .line 422
    sget-object v18, Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$2;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$2;

    .line 423
    .line 424
    iget-object v4, v4, Lokhttp3/FormBody$Builder;->values:Ljava/lang/Object;

    .line 425
    .line 426
    move-object/from16 v21, v4

    .line 427
    .line 428
    check-cast v21, Lkotlin/jvm/functions/Function3;

    .line 429
    .line 430
    const/16 v19, 0x0

    .line 431
    .line 432
    move-object/from16 v20, v12

    .line 433
    .line 434
    invoke-direct/range {v14 .. v21}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/SuspendLambda;Lkotlin/jvm/functions/Function3;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v15, v14, v5}, Lkotlinx/coroutines/selects/SelectImplementation;->register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    .line 438
    .line 439
    .line 440
    iput-object v11, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 441
    .line 442
    iput-object v10, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 443
    .line 444
    iput-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    .line 445
    .line 446
    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 447
    .line 448
    iput v7, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    .line 449
    .line 450
    sget-object v4, L_COROUTINE/ArtificialStackFramesUnsafe;->unsafe:Lsun/misc/Unsafe;

    .line 451
    .line 452
    sget-wide v12, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile$FU$offset:J

    .line 453
    .line 454
    invoke-virtual {v4, v15, v12, v13}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    instance-of v4, v4, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 459
    .line 460
    if-eqz v4, :cond_10

    .line 461
    .line 462
    invoke-virtual {v15, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->complete(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    goto :goto_8

    .line 467
    :cond_10
    invoke-virtual {v15, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelectSuspend(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    :goto_8
    if-ne v4, v1, :cond_7

    .line 472
    .line 473
    :goto_9
    move-object v3, v1

    .line 474
    goto :goto_b

    .line 475
    :goto_a
    const/4 v4, 0x4

    .line 476
    goto/16 :goto_5

    .line 477
    .line 478
    :cond_11
    :goto_b
    return-object v3

    .line 479
    :pswitch_1
    iget-object v1, v0, Landroidx/paging/PageFetcher$flow$1$2;->this$0:Ljava/lang/Object;

    .line 480
    .line 481
    move-object v12, v1

    .line 482
    check-cast v12, Landroidx/paging/PageFetcher;

    .line 483
    .line 484
    iget-object v1, v12, Landroidx/paging/PageFetcher;->config:Landroidx/paging/PagingConfig;

    .line 485
    .line 486
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 487
    .line 488
    iget v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    .line 489
    .line 490
    const-string v10, "Refresh key "

    .line 491
    .line 492
    const-string v11, "Paging"

    .line 493
    .line 494
    packed-switch v4, :pswitch_data_1

    .line 495
    .line 496
    .line 497
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_18

    .line 501
    .line 502
    :pswitch_2
    iget-object v0, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 503
    .line 504
    move-object v9, v0

    .line 505
    check-cast v9, Landroidx/paging/PageFetcher$GenerationInfo;

    .line 506
    .line 507
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_18

    .line 511
    .line 512
    :pswitch_3
    iget-object v1, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 515
    .line 516
    iget-object v3, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast v3, Landroidx/paging/PagingSource;

    .line 519
    .line 520
    iget-object v0, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v0, Landroidx/paging/PageFetcher$GenerationInfo;

    .line 523
    .line 524
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    move-object v6, v0

    .line 528
    move-object/from16 v0, p1

    .line 529
    .line 530
    goto/16 :goto_13

    .line 531
    .line 532
    :pswitch_4
    iget-object v3, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 533
    .line 534
    iget-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 537
    .line 538
    iget-object v5, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 539
    .line 540
    check-cast v5, Landroidx/paging/PagingSource;

    .line 541
    .line 542
    iget-object v0, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 543
    .line 544
    check-cast v0, Landroidx/paging/PageFetcher$GenerationInfo;

    .line 545
    .line 546
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    move-object v6, v0

    .line 550
    move-object/from16 v0, p1

    .line 551
    .line 552
    goto/16 :goto_12

    .line 553
    .line 554
    :pswitch_5
    iget-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    .line 555
    .line 556
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 557
    .line 558
    iget-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 559
    .line 560
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 561
    .line 562
    iget-object v7, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast v7, Landroidx/paging/PagingSource;

    .line 565
    .line 566
    iget-object v13, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 567
    .line 568
    check-cast v13, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    .line 569
    .line 570
    iget-object v14, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v14, Landroidx/paging/PageFetcher$GenerationInfo;

    .line 573
    .line 574
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    move-object v15, v13

    .line 578
    move-object v13, v4

    .line 579
    move-object v4, v6

    .line 580
    move-object v6, v14

    .line 581
    move-object/from16 v14, p1

    .line 582
    .line 583
    goto/16 :goto_e

    .line 584
    .line 585
    :pswitch_6
    iget-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast v4, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    .line 588
    .line 589
    iget-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v6, Landroidx/paging/PageFetcher$GenerationInfo;

    .line 592
    .line 593
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 594
    .line 595
    .line 596
    move-object/from16 v7, p1

    .line 597
    .line 598
    :cond_12
    move-object v13, v4

    .line 599
    goto/16 :goto_d

    .line 600
    .line 601
    :pswitch_7
    iget-object v0, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 602
    .line 603
    check-cast v0, Landroidx/paging/PageFetcher$GenerationInfo;

    .line 604
    .line 605
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    move-object v2, v0

    .line 609
    move-object/from16 v0, p1

    .line 610
    .line 611
    goto :goto_c

    .line 612
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    iget-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 616
    .line 617
    move-object v6, v4

    .line 618
    check-cast v6, Landroidx/paging/PageFetcher$GenerationInfo;

    .line 619
    .line 620
    iget-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast v4, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    .line 623
    .line 624
    if-eqz v4, :cond_27

    .line 625
    .line 626
    if-nez v6, :cond_14

    .line 627
    .line 628
    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 629
    .line 630
    iput v8, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    .line 631
    .line 632
    invoke-virtual {v12, v9, v0}, Landroidx/paging/PageFetcher;->generateNewPagingSource(Landroidx/paging/PagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    if-ne v0, v3, :cond_13

    .line 637
    .line 638
    goto/16 :goto_17

    .line 639
    .line 640
    :cond_13
    move-object v2, v9

    .line 641
    :goto_c
    move-object v3, v0

    .line 642
    check-cast v3, Landroidx/paging/PagingSource;

    .line 643
    .line 644
    iget-object v4, v12, Landroidx/paging/PageFetcher;->config:Landroidx/paging/PagingConfig;

    .line 645
    .line 646
    iget-object v0, v12, Landroidx/paging/PageFetcher;->retryEvents:Lcoil3/svg/internal/AndroidSvg;

    .line 647
    .line 648
    iget-object v0, v0, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 649
    .line 650
    move-object v5, v0

    .line 651
    check-cast v5, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;

    .line 652
    .line 653
    new-instance v8, Landroidx/paging/PageFetcher$flow$1$2$1;

    .line 654
    .line 655
    const/16 v16, 0x0

    .line 656
    .line 657
    const/16 v17, 0x0

    .line 658
    .line 659
    const/4 v11, 0x0

    .line 660
    const-class v13, Landroidx/paging/PageFetcher;

    .line 661
    .line 662
    const-string v14, "refresh"

    .line 663
    .line 664
    const-string v15, "refresh(Ljava/lang/Object;)V"

    .line 665
    .line 666
    move-object v10, v8

    .line 667
    invoke-direct/range {v10 .. v17}, Landroidx/paging/PageFetcher$flow$1$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 668
    .line 669
    .line 670
    new-instance v1, Landroidx/paging/PageFetcherSnapshot;

    .line 671
    .line 672
    iget v6, v4, Landroidx/paging/PagingConfig;->initialLoadSize:I

    .line 673
    .line 674
    const/4 v7, 0x0

    .line 675
    invoke-direct/range {v1 .. v8}, Landroidx/paging/PageFetcherSnapshot;-><init>(Ljava/lang/Object;Landroidx/paging/PagingSource;Landroidx/paging/PagingConfig;Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;ILandroidx/paging/PagingState;Lkotlin/jvm/functions/Function0;)V

    .line 676
    .line 677
    .line 678
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    new-instance v2, Landroidx/paging/PageFetcher$GenerationInfo;

    .line 683
    .line 684
    invoke-direct {v2, v1, v9, v0}, Landroidx/paging/PageFetcher$GenerationInfo;-><init>(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/PagingState;Lkotlinx/coroutines/JobImpl;)V

    .line 685
    .line 686
    .line 687
    move-object v9, v2

    .line 688
    goto/16 :goto_18

    .line 689
    .line 690
    :cond_14
    iget-object v13, v6, Landroidx/paging/PageFetcher$GenerationInfo;->snapshot:Landroidx/paging/PageFetcherSnapshot;

    .line 691
    .line 692
    iget-object v13, v13, Landroidx/paging/PageFetcherSnapshot;->pagingSource:Landroidx/paging/PagingSource;

    .line 693
    .line 694
    iput-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 695
    .line 696
    iput-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 697
    .line 698
    iput v7, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    .line 699
    .line 700
    invoke-virtual {v12, v13, v0}, Landroidx/paging/PageFetcher;->generateNewPagingSource(Landroidx/paging/PagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v7

    .line 704
    if-ne v7, v3, :cond_12

    .line 705
    .line 706
    goto/16 :goto_17

    .line 707
    .line 708
    :goto_d
    check-cast v7, Landroidx/paging/PagingSource;

    .line 709
    .line 710
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 711
    .line 712
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 713
    .line 714
    .line 715
    iget-object v14, v6, Landroidx/paging/PageFetcher$GenerationInfo;->snapshot:Landroidx/paging/PageFetcherSnapshot;

    .line 716
    .line 717
    iput-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 718
    .line 719
    iput-object v13, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 720
    .line 721
    iput-object v7, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 722
    .line 723
    iput-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 724
    .line 725
    iput-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    .line 726
    .line 727
    iput v2, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    .line 728
    .line 729
    invoke-virtual {v14, v0}, Landroidx/paging/PageFetcherSnapshot;->currentPagingState(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v14

    .line 733
    if-ne v14, v3, :cond_15

    .line 734
    .line 735
    goto/16 :goto_17

    .line 736
    .line 737
    :cond_15
    move-object v15, v13

    .line 738
    move-object v13, v4

    .line 739
    :goto_e
    iput-object v14, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 740
    .line 741
    iget-object v13, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast v13, Landroidx/paging/PagingState;

    .line 744
    .line 745
    iget-object v13, v13, Landroidx/paging/PagingState;->pages:Ljava/util/List;

    .line 746
    .line 747
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 748
    .line 749
    .line 750
    move-result v13

    .line 751
    if-eqz v13, :cond_16

    .line 752
    .line 753
    iget-object v13, v6, Landroidx/paging/PageFetcher$GenerationInfo;->cachedInitialState:Landroidx/paging/PagingState;

    .line 754
    .line 755
    if-eqz v13, :cond_16

    .line 756
    .line 757
    iget-object v13, v13, Landroidx/paging/PagingState;->pages:Ljava/util/List;

    .line 758
    .line 759
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    .line 760
    .line 761
    .line 762
    move-result v13

    .line 763
    xor-int/2addr v13, v8

    .line 764
    if-ne v13, v8, :cond_16

    .line 765
    .line 766
    iget-object v8, v6, Landroidx/paging/PageFetcher$GenerationInfo;->cachedInitialState:Landroidx/paging/PagingState;

    .line 767
    .line 768
    iput-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 769
    .line 770
    :cond_16
    iget-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 771
    .line 772
    check-cast v8, Landroidx/paging/PagingState;

    .line 773
    .line 774
    iget-object v8, v8, Landroidx/paging/PagingState;->anchorPosition:Ljava/lang/Integer;

    .line 775
    .line 776
    if-nez v8, :cond_18

    .line 777
    .line 778
    iget-object v8, v6, Landroidx/paging/PageFetcher$GenerationInfo;->cachedInitialState:Landroidx/paging/PagingState;

    .line 779
    .line 780
    if-eqz v8, :cond_17

    .line 781
    .line 782
    iget-object v13, v8, Landroidx/paging/PagingState;->anchorPosition:Ljava/lang/Integer;

    .line 783
    .line 784
    goto :goto_f

    .line 785
    :cond_17
    move-object v13, v9

    .line 786
    :goto_f
    if-eqz v13, :cond_18

    .line 787
    .line 788
    iput-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 789
    .line 790
    :cond_18
    iget-object v8, v15, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->type:Landroidx/paging/FlowExtKt;

    .line 791
    .line 792
    sget-object v13, Landroidx/paging/PageFetcher$RefreshType$All;->INSTANCE$1:Landroidx/paging/PageFetcher$RefreshType$All;

    .line 793
    .line 794
    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    move-result v8

    .line 798
    if-nez v8, :cond_25

    .line 799
    .line 800
    iget-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 801
    .line 802
    check-cast v8, Landroidx/paging/PagingState;

    .line 803
    .line 804
    iget-object v8, v8, Landroidx/paging/PagingState;->pages:Ljava/util/List;

    .line 805
    .line 806
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 807
    .line 808
    .line 809
    move-result v8

    .line 810
    if-eqz v8, :cond_19

    .line 811
    .line 812
    iget-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 813
    .line 814
    check-cast v8, Landroidx/paging/PagingState;

    .line 815
    .line 816
    iget-object v8, v8, Landroidx/paging/PagingState;->anchorPosition:Ljava/lang/Integer;

    .line 817
    .line 818
    if-nez v8, :cond_19

    .line 819
    .line 820
    goto/16 :goto_15

    .line 821
    .line 822
    :cond_19
    iget-object v8, v15, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->type:Landroidx/paging/FlowExtKt;

    .line 823
    .line 824
    instance-of v13, v8, Landroidx/paging/PageFetcher$RefreshType$Item;

    .line 825
    .line 826
    if-eqz v13, :cond_20

    .line 827
    .line 828
    iget-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 829
    .line 830
    check-cast v8, Landroidx/paging/PagingState;

    .line 831
    .line 832
    iget-object v8, v8, Landroidx/paging/PagingState;->pages:Ljava/util/List;

    .line 833
    .line 834
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 835
    .line 836
    .line 837
    move-result-object v8

    .line 838
    :cond_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 839
    .line 840
    .line 841
    move-result v13

    .line 842
    if-eqz v13, :cond_1b

    .line 843
    .line 844
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v13

    .line 848
    move-object v14, v13

    .line 849
    check-cast v14, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 850
    .line 851
    iget-object v14, v14, Landroidx/paging/PagingSource$LoadResult$Page;->data:Ljava/util/List;

    .line 852
    .line 853
    invoke-static {v14, v9}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    move-result v14

    .line 857
    if-eqz v14, :cond_1a

    .line 858
    .line 859
    goto :goto_10

    .line 860
    :cond_1b
    move-object v13, v9

    .line 861
    :goto_10
    check-cast v13, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 862
    .line 863
    if-nez v13, :cond_1d

    .line 864
    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    .line 866
    .line 867
    const-string v1, "Invalid Refresh item. Item "

    .line 868
    .line 869
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    const-string v1, " not found in "

    .line 876
    .line 877
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 881
    .line 882
    check-cast v1, Landroidx/paging/PagingState;

    .line 883
    .line 884
    iget-object v1, v1, Landroidx/paging/PagingState;->pages:Ljava/util/List;

    .line 885
    .line 886
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 891
    .line 892
    .line 893
    move-result v2

    .line 894
    if-eqz v2, :cond_1c

    .line 895
    .line 896
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v2

    .line 900
    check-cast v2, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 901
    .line 902
    iget-object v2, v2, Landroidx/paging/PagingSource$LoadResult$Page;->data:Ljava/util/List;

    .line 903
    .line 904
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 905
    .line 906
    .line 907
    move-result v2

    .line 908
    add-int/2addr v5, v2

    .line 909
    goto :goto_11

    .line 910
    :cond_1c
    const-string v1, " loaded items."

    .line 911
    .line 912
    invoke-static {v0, v5, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 917
    .line 918
    .line 919
    goto/16 :goto_18

    .line 920
    .line 921
    :cond_1d
    iget-object v5, v6, Landroidx/paging/PageFetcher$GenerationInfo;->snapshot:Landroidx/paging/PageFetcherSnapshot;

    .line 922
    .line 923
    iput-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 924
    .line 925
    iput-object v7, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 926
    .line 927
    iput-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 928
    .line 929
    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 930
    .line 931
    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    .line 932
    .line 933
    const/4 v8, 0x4

    .line 934
    iput v8, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    .line 935
    .line 936
    invoke-virtual {v5, v13, v0}, Landroidx/paging/PageFetcherSnapshot;->getLoadKey$paging_common(Landroidx/paging/PagingSource$LoadResult$Page;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v0

    .line 940
    if-ne v0, v3, :cond_1e

    .line 941
    .line 942
    goto/16 :goto_17

    .line 943
    .line 944
    :cond_1e
    move-object v5, v7

    .line 945
    move-object v3, v9

    .line 946
    :goto_12
    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 947
    .line 948
    if-eqz v7, :cond_1f

    .line 949
    .line 950
    invoke-static {v11, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 951
    .line 952
    .line 953
    move-result v2

    .line 954
    if-eqz v2, :cond_1f

    .line 955
    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    .line 957
    .line 958
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    const-string v7, " based around item "

    .line 965
    .line 966
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v2

    .line 976
    invoke-static {v11, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    .line 978
    .line 979
    :cond_1f
    iget v1, v1, Landroidx/paging/PagingConfig;->initialLoadSize:I

    .line 980
    .line 981
    new-instance v2, Ljava/lang/Integer;

    .line 982
    .line 983
    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 984
    .line 985
    .line 986
    new-instance v1, Lkotlin/Pair;

    .line 987
    .line 988
    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 989
    .line 990
    .line 991
    move-object v7, v5

    .line 992
    goto/16 :goto_16

    .line 993
    .line 994
    :cond_20
    sget-object v1, Landroidx/paging/PageFetcher$RefreshType$All;->INSTANCE:Landroidx/paging/PageFetcher$RefreshType$All;

    .line 995
    .line 996
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 997
    .line 998
    .line 999
    move-result v1

    .line 1000
    if-eqz v1, :cond_24

    .line 1001
    .line 1002
    iget-object v1, v6, Landroidx/paging/PageFetcher$GenerationInfo;->snapshot:Landroidx/paging/PageFetcherSnapshot;

    .line 1003
    .line 1004
    iget-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1005
    .line 1006
    check-cast v8, Landroidx/paging/PagingState;

    .line 1007
    .line 1008
    iget-object v8, v8, Landroidx/paging/PagingState;->pages:Ljava/util/List;

    .line 1009
    .line 1010
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v8

    .line 1014
    check-cast v8, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 1015
    .line 1016
    iput-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 1017
    .line 1018
    iput-object v7, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$1:Ljava/lang/Object;

    .line 1019
    .line 1020
    iput-object v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$2:Ljava/lang/Object;

    .line 1021
    .line 1022
    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$3:Ljava/lang/Object;

    .line 1023
    .line 1024
    iput-object v9, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$4:Ljava/lang/Object;

    .line 1025
    .line 1026
    const/4 v13, 0x5

    .line 1027
    iput v13, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    .line 1028
    .line 1029
    invoke-virtual {v1, v8, v0}, Landroidx/paging/PageFetcherSnapshot;->getLoadKey$paging_common(Landroidx/paging/PagingSource$LoadResult$Page;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    if-ne v0, v3, :cond_21

    .line 1034
    .line 1035
    goto/16 :goto_17

    .line 1036
    .line 1037
    :cond_21
    move-object v1, v4

    .line 1038
    move-object v3, v7

    .line 1039
    :goto_13
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 1040
    .line 1041
    if-eqz v4, :cond_22

    .line 1042
    .line 1043
    invoke-static {v11, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v2

    .line 1047
    if-eqz v2, :cond_22

    .line 1048
    .line 1049
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    const-string v4, " from first item "

    .line 1058
    .line 1059
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1063
    .line 1064
    check-cast v4, Landroidx/paging/PagingState;

    .line 1065
    .line 1066
    iget-object v4, v4, Landroidx/paging/PagingState;->pages:Ljava/util/List;

    .line 1067
    .line 1068
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v4

    .line 1072
    check-cast v4, Ljava/lang/Iterable;

    .line 1073
    .line 1074
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v4

    .line 1078
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v2

    .line 1085
    invoke-static {v11, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1086
    .line 1087
    .line 1088
    :cond_22
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1089
    .line 1090
    check-cast v2, Landroidx/paging/PagingState;

    .line 1091
    .line 1092
    iget-object v2, v2, Landroidx/paging/PagingState;->pages:Ljava/util/List;

    .line 1093
    .line 1094
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v2

    .line 1098
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1099
    .line 1100
    .line 1101
    move-result v4

    .line 1102
    if-eqz v4, :cond_23

    .line 1103
    .line 1104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v4

    .line 1108
    check-cast v4, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 1109
    .line 1110
    iget-object v4, v4, Landroidx/paging/PagingSource$LoadResult$Page;->data:Ljava/util/List;

    .line 1111
    .line 1112
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1113
    .line 1114
    .line 1115
    move-result v4

    .line 1116
    add-int/2addr v5, v4

    .line 1117
    goto :goto_14

    .line 1118
    :cond_23
    new-instance v2, Ljava/lang/Integer;

    .line 1119
    .line 1120
    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 1121
    .line 1122
    .line 1123
    new-instance v4, Lkotlin/Pair;

    .line 1124
    .line 1125
    invoke-direct {v4, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1126
    .line 1127
    .line 1128
    move-object v7, v4

    .line 1129
    move-object v4, v1

    .line 1130
    move-object v1, v7

    .line 1131
    move-object v7, v3

    .line 1132
    goto :goto_16

    .line 1133
    :cond_24
    const-string v0, "should not get here"

    .line 1134
    .line 1135
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    goto/16 :goto_18

    .line 1139
    .line 1140
    :cond_25
    :goto_15
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1141
    .line 1142
    check-cast v0, Landroidx/paging/PagingState;

    .line 1143
    .line 1144
    invoke-virtual {v7, v0}, Landroidx/paging/PagingSource;->getRefreshKey(Landroidx/paging/PagingState;)V

    .line 1145
    .line 1146
    .line 1147
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 1148
    .line 1149
    if-eqz v0, :cond_26

    .line 1150
    .line 1151
    invoke-static {v11, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v0

    .line 1155
    if-eqz v0, :cond_26

    .line 1156
    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1158
    .line 1159
    const-string v2, "Refresh key null returned from PagingSource "

    .line 1160
    .line 1161
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v0

    .line 1171
    invoke-static {v11, v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1172
    .line 1173
    .line 1174
    :cond_26
    iget v0, v1, Landroidx/paging/PagingConfig;->initialLoadSize:I

    .line 1175
    .line 1176
    new-instance v1, Ljava/lang/Integer;

    .line 1177
    .line 1178
    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1179
    .line 1180
    .line 1181
    new-instance v0, Lkotlin/Pair;

    .line 1182
    .line 1183
    invoke-direct {v0, v9, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1184
    .line 1185
    .line 1186
    move-object v1, v0

    .line 1187
    :goto_16
    iget-object v0, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1188
    .line 1189
    check-cast v0, Ljava/lang/Number;

    .line 1190
    .line 1191
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1192
    .line 1193
    .line 1194
    move-result v18

    .line 1195
    iget-object v0, v6, Landroidx/paging/PageFetcher$GenerationInfo;->snapshot:Landroidx/paging/PageFetcherSnapshot;

    .line 1196
    .line 1197
    iget-object v0, v0, Landroidx/paging/PageFetcherSnapshot;->pageEventChannelFlowJob:Lkotlinx/coroutines/JobImpl;

    .line 1198
    .line 1199
    invoke-virtual {v0, v9}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 1200
    .line 1201
    .line 1202
    iget-object v0, v6, Landroidx/paging/PageFetcher$GenerationInfo;->job:Lkotlinx/coroutines/JobImpl;

    .line 1203
    .line 1204
    invoke-virtual {v0, v9}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 1205
    .line 1206
    .line 1207
    new-instance v9, Landroidx/paging/PageFetcher$GenerationInfo;

    .line 1208
    .line 1209
    iget-object v0, v12, Landroidx/paging/PageFetcher;->config:Landroidx/paging/PagingConfig;

    .line 1210
    .line 1211
    iget-object v2, v12, Landroidx/paging/PageFetcher;->retryEvents:Lcoil3/svg/internal/AndroidSvg;

    .line 1212
    .line 1213
    iget-object v2, v2, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 1214
    .line 1215
    check-cast v2, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;

    .line 1216
    .line 1217
    new-instance v20, Landroidx/paging/PageFetcher$flow$1$2$1;

    .line 1218
    .line 1219
    const/16 v16, 0x0

    .line 1220
    .line 1221
    const/16 v17, 0x1

    .line 1222
    .line 1223
    const/4 v11, 0x0

    .line 1224
    const-class v13, Landroidx/paging/PageFetcher;

    .line 1225
    .line 1226
    const-string v14, "refresh"

    .line 1227
    .line 1228
    const-string v15, "refresh(Ljava/lang/Object;)V"

    .line 1229
    .line 1230
    move-object/from16 v10, v20

    .line 1231
    .line 1232
    invoke-direct/range {v10 .. v17}, Landroidx/paging/PageFetcher$flow$1$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1233
    .line 1234
    .line 1235
    iget-object v3, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1236
    .line 1237
    move-object/from16 v19, v3

    .line 1238
    .line 1239
    check-cast v19, Landroidx/paging/PagingState;

    .line 1240
    .line 1241
    new-instance v13, Landroidx/paging/PageFetcherSnapshot;

    .line 1242
    .line 1243
    iget-object v14, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 1244
    .line 1245
    move-object/from16 v16, v0

    .line 1246
    .line 1247
    move-object/from16 v17, v2

    .line 1248
    .line 1249
    move-object v15, v7

    .line 1250
    invoke-direct/range {v13 .. v20}, Landroidx/paging/PageFetcherSnapshot;-><init>(Ljava/lang/Object;Landroidx/paging/PagingSource;Landroidx/paging/PagingConfig;Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;ILandroidx/paging/PagingState;Lkotlin/jvm/functions/Function0;)V

    .line 1251
    .line 1252
    .line 1253
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1254
    .line 1255
    check-cast v0, Landroidx/paging/PagingState;

    .line 1256
    .line 1257
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v1

    .line 1261
    invoke-direct {v9, v13, v0, v1}, Landroidx/paging/PageFetcher$GenerationInfo;-><init>(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/PagingState;Lkotlinx/coroutines/JobImpl;)V

    .line 1262
    .line 1263
    .line 1264
    goto :goto_18

    .line 1265
    :cond_27
    if-eqz v6, :cond_29

    .line 1266
    .line 1267
    iget-object v1, v6, Landroidx/paging/PageFetcher$GenerationInfo;->snapshot:Landroidx/paging/PageFetcherSnapshot;

    .line 1268
    .line 1269
    iget-object v2, v4, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->loadType:Landroidx/paging/LoadType;

    .line 1270
    .line 1271
    iput-object v6, v0, Landroidx/paging/PageFetcher$flow$1$2;->L$0:Ljava/lang/Object;

    .line 1272
    .line 1273
    const/4 v4, 0x6

    .line 1274
    iput v4, v0, Landroidx/paging/PageFetcher$flow$1$2;->label:I

    .line 1275
    .line 1276
    invoke-virtual {v1, v2, v0}, Landroidx/paging/PageFetcherSnapshot;->forceSetHint(Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v0

    .line 1280
    if-ne v0, v3, :cond_28

    .line 1281
    .line 1282
    :goto_17
    move-object v9, v3

    .line 1283
    goto :goto_18

    .line 1284
    :cond_28
    move-object v9, v6

    .line 1285
    goto :goto_18

    .line 1286
    :cond_29
    const-string v0, "Append or Prepend request should be sent after a Refresh. This error indicates a bug in the Paging library. Please file a bug report in Buganizer."

    .line 1287
    .line 1288
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1289
    .line 1290
    .line 1291
    :goto_18
    return-object v9

    .line 1292
    nop

    .line 1293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
