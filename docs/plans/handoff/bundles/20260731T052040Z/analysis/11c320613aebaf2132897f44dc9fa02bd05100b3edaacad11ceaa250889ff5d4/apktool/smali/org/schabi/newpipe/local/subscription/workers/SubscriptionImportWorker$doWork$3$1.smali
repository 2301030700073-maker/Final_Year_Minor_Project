.class public final Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $index:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $subscription:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;

.field final synthetic $title:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->$subscription:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->$title:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->$subscription:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->$title:Ljava/lang/String;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    const-string v0, "No channel tabs available for: "

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 6
    .line 7
    iget v2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->label:I

    .line 8
    .line 9
    const-string v3, "SubscriptionImport"

    .line 10
    .line 11
    const/4 v4, 0x5

    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x3

    .line 14
    const/4 v7, 0x2

    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 18
    .line 19
    if-eqz v2, :cond_5

    .line 20
    .line 21
    if-eq v2, v8, :cond_4

    .line 22
    .line 23
    if-eq v2, v7, :cond_3

    .line 24
    .line 25
    if-eq v2, v6, :cond_2

    .line 26
    .line 27
    if-eq v2, v5, :cond_1

    .line 28
    .line 29
    if-ne v2, v4, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$3:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 34
    .line 35
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$2:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_a

    .line 43
    .line 44
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v9

    .line 50
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$3:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 53
    .line 54
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 57
    .line 58
    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_8

    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$5:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;

    .line 68
    .line 69
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$4:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    .line 72
    .line 73
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$2:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 76
    .line 77
    iget-object v6, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v6, Lkotlin/Result;

    .line 80
    .line 81
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$1:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 89
    .line 90
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_4
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$1:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 101
    .line 102
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_1
    move-exception p1

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->$subscription:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;

    .line 112
    .line 113
    :try_start_2
    iget v2, p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->serviceId:I

    .line 114
    .line 115
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->url:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v2, p1, v8}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$0:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object v9, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$1:Ljava/lang/Object;

    .line 124
    .line 125
    iput v8, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->label:I

    .line 126
    .line 127
    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 128
    .line 129
    invoke-static {p0}, Lkotlin/text/UStringsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    invoke-direct {v2, v8, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 137
    .line 138
    .line 139
    new-instance v11, Lkotlinx/coroutines/rx3/RxAwaitKt$await$5$1;

    .line 140
    .line 141
    invoke-direct {v11, v2}, Lkotlinx/coroutines/rx3/RxAwaitKt$await$5$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v11}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-ne p1, v10, :cond_6

    .line 152
    .line 153
    goto/16 :goto_9

    .line 154
    .line 155
    :cond_6
    :goto_0
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :goto_1
    new-instance v2, Lkotlin/Result$Failure;

    .line 159
    .line 160
    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    move-object p1, v2

    .line 164
    :goto_2
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->$subscription:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;

    .line 165
    .line 166
    instance-of v11, p1, Lkotlin/Result$Failure;

    .line 167
    .line 168
    if-nez v11, :cond_9

    .line 169
    .line 170
    :try_start_3
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 171
    .line 172
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getTabs()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    if-nez v11, :cond_8

    .line 184
    .line 185
    iget v0, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->serviceId:I

    .line 186
    .line 187
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getTabs()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const/4 v11, 0x0

    .line 192
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    check-cast v2, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 197
    .line 198
    invoke-static {v0, v2, v8}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelTab(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Z)Lio/reactivex/rxjava3/core/Single;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$0:Ljava/lang/Object;

    .line 203
    .line 204
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$1:Ljava/lang/Object;

    .line 205
    .line 206
    iput v7, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->label:I

    .line 207
    .line 208
    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 209
    .line 210
    invoke-static {p0}, Lkotlin/text/UStringsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-direct {v2, v8, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 218
    .line 219
    .line 220
    new-instance v7, Lkotlinx/coroutines/rx3/RxAwaitKt$await$5$1;

    .line 221
    .line 222
    invoke-direct {v7, v2}, Lkotlinx/coroutines/rx3/RxAwaitKt$await$5$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-ne v0, v10, :cond_7

    .line 233
    .line 234
    goto/16 :goto_9

    .line 235
    .line 236
    :cond_7
    move-object v12, v0

    .line 237
    move-object v0, p1

    .line 238
    move-object p1, v12

    .line 239
    :goto_3
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_8
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-object v0, p1

    .line 262
    move-object p1, v9

    .line 263
    :goto_4
    new-instance v2, Lkotlin/Pair;

    .line 264
    .line 265
    invoke-direct {v2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    .line 267
    .line 268
    move-object p1, v2

    .line 269
    goto :goto_6

    .line 270
    :goto_5
    new-instance v0, Lkotlin/Result$Failure;

    .line 271
    .line 272
    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 273
    .line 274
    .line 275
    move-object p1, v0

    .line 276
    :cond_9
    :goto_6
    new-instance v0, Lkotlin/Result;

    .line 277
    .line 278
    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/io/Serializable;)V

    .line 279
    .line 280
    .line 281
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 282
    .line 283
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    .line 284
    .line 285
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 286
    .line 287
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$0:Ljava/lang/Object;

    .line 288
    .line 289
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$1:Ljava/lang/Object;

    .line 290
    .line 291
    iput-object v2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$2:Ljava/lang/Object;

    .line 292
    .line 293
    iput-object v9, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$3:Ljava/lang/Object;

    .line 294
    .line 295
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$4:Ljava/lang/Object;

    .line 296
    .line 297
    iput-object v9, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$5:Ljava/lang/Object;

    .line 298
    .line 299
    iput v6, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->label:I

    .line 300
    .line 301
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    if-ne v6, v10, :cond_a

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_a
    move-object v6, v0

    .line 309
    move-object v0, p1

    .line 310
    :goto_7
    :try_start_4
    iget p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 311
    .line 312
    add-int/2addr p1, v8

    .line 313
    iput p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 314
    .line 315
    invoke-interface {v0, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v6}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    if-eqz v0, :cond_b

    .line 327
    .line 328
    const-string v2, "Failed to fetch subscription"

    .line 329
    .line 330
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .line 332
    .line 333
    :cond_b
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->this$0:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 334
    .line 335
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->$title:Ljava/lang/String;

    .line 336
    .line 337
    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    .line 338
    .line 339
    instance-of v6, p1, Lkotlin/Result$Failure;

    .line 340
    .line 341
    if-nez v6, :cond_d

    .line 342
    .line 343
    move-object v6, p1

    .line 344
    check-cast v6, Lkotlin/Pair;

    .line 345
    .line 346
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    check-cast v7, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 354
    .line 355
    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    check-cast v6, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 360
    .line 361
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 366
    .line 367
    invoke-virtual {v0, v2, v3, v8}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->createForegroundInfo(Ljava/lang/String;ILjava/lang/String;)Landroidx/work/ForegroundInfo;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$0:Ljava/lang/Object;

    .line 372
    .line 373
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$1:Ljava/lang/Object;

    .line 374
    .line 375
    iput-object v6, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$2:Ljava/lang/Object;

    .line 376
    .line 377
    iput-object v7, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$3:Ljava/lang/Object;

    .line 378
    .line 379
    iput-object v9, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$4:Ljava/lang/Object;

    .line 380
    .line 381
    iput-object v9, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$5:Ljava/lang/Object;

    .line 382
    .line 383
    iput v5, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->label:I

    .line 384
    .line 385
    invoke-virtual {v0, v2, p0}, Landroidx/work/CoroutineWorker;->setForeground(Landroidx/work/ForegroundInfo;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    if-ne v0, v10, :cond_c

    .line 390
    .line 391
    goto :goto_9

    .line 392
    :cond_c
    move-object v3, p1

    .line 393
    move-object v2, v6

    .line 394
    move-object v0, v7

    .line 395
    :goto_8
    new-instance p1, Lkotlin/Pair;

    .line 396
    .line 397
    invoke-direct {p1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    iput-object v9, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$0:Ljava/lang/Object;

    .line 401
    .line 402
    iput-object v3, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$1:Ljava/lang/Object;

    .line 403
    .line 404
    iput-object v9, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$2:Ljava/lang/Object;

    .line 405
    .line 406
    iput-object v9, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->L$3:Ljava/lang/Object;

    .line 407
    .line 408
    iput v4, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3$1;->label:I

    .line 409
    .line 410
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    if-ne p0, v10, :cond_d

    .line 415
    .line 416
    :goto_9
    return-object v10

    .line 417
    :cond_d
    :goto_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 418
    .line 419
    return-object p0

    .line 420
    :catchall_2
    move-exception p0

    .line 421
    invoke-interface {v0, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    throw p0
.end method
