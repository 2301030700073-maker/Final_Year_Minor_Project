.class public final Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $destinationEventService:Lorg/wikimedia/testkitchen/config/DestinationEventService;

.field public final synthetic $pendingValidEvents:Ljava/util/List;

.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lokhttp3/Request$Builder;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Request$Builder;Lorg/wikimedia/testkitchen/config/DestinationEventService;Ljava/util/List;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->this$0:Lokhttp3/Request$Builder;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$destinationEventService:Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$pendingValidEvents:Ljava/util/List;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    iget p1, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;

    .line 7
    .line 8
    iget-object v3, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$pendingValidEvents:Ljava/util/List;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    iget-object v1, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->this$0:Lokhttp3/Request$Builder;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$destinationEventService:Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 14
    .line 15
    move-object v4, p2

    .line 16
    invoke-direct/range {v0 .. v5}, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;-><init>(Lokhttp3/Request$Builder;Lorg/wikimedia/testkitchen/config/DestinationEventService;Ljava/util/List;Lkotlin/coroutines/Continuation;I)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    move-object v4, p2

    .line 21
    new-instance v1, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;

    .line 22
    .line 23
    move-object v5, v4

    .line 24
    iget-object v4, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$pendingValidEvents:Ljava/util/List;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    iget-object v2, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->this$0:Lokhttp3/Request$Builder;

    .line 28
    .line 29
    iget-object v3, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$destinationEventService:Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 30
    .line 31
    invoke-direct/range {v1 .. v6}, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;-><init>(Lokhttp3/Request$Builder;Lorg/wikimedia/testkitchen/config/DestinationEventService;Ljava/util/List;Lkotlin/coroutines/Continuation;I)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v5, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->this$0:Lokhttp3/Request$Builder;

    .line 13
    .line 14
    iget-object v0, v5, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v6, v0

    .line 17
    check-cast v6, Lokio/ByteString$Companion;

    .line 18
    .line 19
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 20
    .line 21
    iget v7, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->label:I

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    const-string v9, " events. Adding back to queue."

    .line 25
    .line 26
    const-string v10, "Network error while sending "

    .line 27
    .line 28
    iget-object v11, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$pendingValidEvents:Ljava/util/List;

    .line 29
    .line 30
    if-eqz v7, :cond_1

    .line 31
    .line 32
    if-ne v7, v4, :cond_0

    .line 33
    .line 34
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :catch_0
    move-exception v0

    .line 40
    move-object p0, v0

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    .line 43
    move-object p0, v0

    .line 44
    goto :goto_1

    .line 45
    :catch_2
    move-exception v0

    .line 46
    move-object p0, v0

    .line 47
    goto :goto_3

    .line 48
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    move-object v1, v2

    .line 52
    goto :goto_5

    .line 53
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :try_start_1
    iget-object p1, v5, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;

    .line 59
    .line 60
    iget-object v2, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$destinationEventService:Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 61
    .line 62
    iput v4, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->label:I

    .line 63
    .line 64
    invoke-virtual {p1, v2, v11, p0}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->sendEvents(Lorg/wikimedia/testkitchen/config/DestinationEventService;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    if-ne p0, v0, :cond_2

    .line 69
    .line 70
    move-object v1, v0

    .line 71
    goto :goto_5

    .line 72
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const-string v0, "Failed to send "

    .line 77
    .line 78
    const-string v2, " events."

    .line 79
    .line 80
    invoke-static {p1, v0, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-array v0, v4, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object p0, v0, v8

    .line 87
    .line 88
    invoke-virtual {v6, p1, v0}, Lokio/ByteString$Companion;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_5

    .line 92
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-static {p1, v10, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-array v0, v4, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object p0, v0, v8

    .line 103
    .line 104
    invoke-virtual {v6, p1, v0}, Lokio/ByteString$Companion;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lorg/wikimedia/testkitchen/event/Event;

    .line 122
    .line 123
    invoke-virtual {v5, p1, v8, v8}, Lokhttp3/Request$Builder;->addToQueue(Lorg/wikimedia/testkitchen/event/Event;ZZ)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    invoke-static {p1, v10, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-array v0, v4, [Ljava/lang/Object;

    .line 136
    .line 137
    aput-object p0, v0, v8

    .line 138
    .line 139
    invoke-virtual {v6, p1, v0}, Lokio/ByteString$Companion;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_2

    .line 151
    .line 152
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Lorg/wikimedia/testkitchen/event/Event;

    .line 157
    .line 158
    invoke-virtual {v5, p1, v8, v8}, Lokhttp3/Request$Builder;->addToQueue(Lorg/wikimedia/testkitchen/event/Event;ZZ)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_2
    :goto_5
    return-object v1

    .line 163
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 164
    .line 165
    iget v5, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->label:I

    .line 166
    .line 167
    if-eqz v5, :cond_4

    .line 168
    .line 169
    if-ne v5, v4, :cond_3

    .line 170
    .line 171
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    move-object v1, v2

    .line 179
    goto :goto_6

    .line 180
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 184
    .line 185
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 186
    .line 187
    new-instance v5, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;

    .line 188
    .line 189
    const/4 v9, 0x0

    .line 190
    const/4 v10, 0x1

    .line 191
    iget-object v6, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->this$0:Lokhttp3/Request$Builder;

    .line 192
    .line 193
    iget-object v7, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$destinationEventService:Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 194
    .line 195
    iget-object v8, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->$pendingValidEvents:Ljava/util/List;

    .line 196
    .line 197
    invoke-direct/range {v5 .. v10}, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;-><init>(Lokhttp3/Request$Builder;Lorg/wikimedia/testkitchen/config/DestinationEventService;Ljava/util/List;Lkotlin/coroutines/Continuation;I)V

    .line 198
    .line 199
    .line 200
    iput v4, p0, Lorg/wikimedia/testkitchen/EventProcessor$sendEventsToDestination$1;->label:I

    .line 201
    .line 202
    invoke-static {p1, v5, p0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    if-ne p0, v0, :cond_5

    .line 207
    .line 208
    move-object v1, v0

    .line 209
    :cond_5
    :goto_6
    return-object v1

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
