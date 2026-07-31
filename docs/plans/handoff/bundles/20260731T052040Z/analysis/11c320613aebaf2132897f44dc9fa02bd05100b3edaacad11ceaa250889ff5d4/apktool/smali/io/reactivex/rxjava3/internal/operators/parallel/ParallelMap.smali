.class public final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;
.super Lokhttp3/Cookie$Companion;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mapper:Ljava/lang/Object;

.field public final source:Lokhttp3/Cookie$Companion;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Cookie$Companion;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;->source:Lokhttp3/Cookie$Companion;

    .line 4
    .line 5
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;->mapper:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public createSubscriber(I[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V
    .locals 1

    .line 1
    aget-object p0, p2, p1

    .line 2
    .line 3
    new-instance p2, Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    .line 4
    .line 5
    const/4 v0, 0x6

    .line 6
    invoke-direct {p2, v0}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;-><init>(I)V

    .line 7
    .line 8
    .line 9
    instance-of v0, p0, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;

    .line 14
    .line 15
    check-cast p0, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    .line 16
    .line 17
    invoke-direct {v0, p0, p2, p4}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;-><init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;Lio/reactivex/rxjava3/operators/SpscArrayQueue;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    .line 18
    .line 19
    .line 20
    aput-object v0, p3, p1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2, p4}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/operators/SpscArrayQueue;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    .line 26
    .line 27
    .line 28
    aput-object v0, p3, p1

    .line 29
    .line 30
    return-void
.end method

.method public final parallelism()I
    .locals 0

    .line 1
    iget p0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x3

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x3

    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x3

    .line 11
    return p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 9

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;->source:Lokhttp3/Cookie$Companion;

    .line 4
    .line 5
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;->mapper:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v2, Lio/reactivex/rxjava3/core/Scheduler;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lokhttp3/Cookie$Companion;->validate([Lorg/reactivestreams/Subscriber;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    array-length v0, p1

    .line 21
    new-array v4, v0, [Lorg/reactivestreams/Subscriber;

    .line 22
    .line 23
    instance-of v5, v2, Lio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport;

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    check-cast v2, Lio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport;

    .line 28
    .line 29
    new-instance v3, Lorg/acra/util/ProcessFinisher;

    .line 30
    .line 31
    invoke-direct {v3, p0, p1, v4}, Lorg/acra/util/ProcessFinisher;-><init>(Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v0, v3}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport;->createWorkers(ILorg/acra/util/ProcessFinisher;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    if-ge v3, v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Lio/reactivex/rxjava3/core/Scheduler;->createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {p0, v3, p1, v4, v5}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;->createSubscriber(I[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_1
    check-cast v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher;

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Lokhttp3/Cookie$Companion;->validate([Lorg/reactivestreams/Subscriber;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object p0, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher;->source:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;

    .line 60
    .line 61
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;

    .line 62
    .line 63
    invoke-direct {p1, v4}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;-><init>([Lorg/reactivestreams/Subscriber;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 67
    .line 68
    .line 69
    :goto_2
    return-void

    .line 70
    :pswitch_0
    invoke-virtual {p0, p1}, Lokhttp3/Cookie$Companion;->validate([Lorg/reactivestreams/Subscriber;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_4

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_4
    array-length p0, p1

    .line 78
    new-array v0, p0, [Lorg/reactivestreams/Subscriber;

    .line 79
    .line 80
    move v4, v3

    .line 81
    :goto_3
    if-ge v4, p0, :cond_6

    .line 82
    .line 83
    aget-object v5, p1, v4

    .line 84
    .line 85
    instance-of v6, v5, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    .line 86
    .line 87
    move-object v7, v2

    .line 88
    check-cast v7, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;

    .line 89
    .line 90
    if-eqz v6, :cond_5

    .line 91
    .line 92
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterSubscriber;

    .line 93
    .line 94
    check-cast v5, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    .line 95
    .line 96
    const/4 v8, 0x1

    .line 97
    invoke-direct {v6, v5, v7, v8}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;I)V

    .line 98
    .line 99
    .line 100
    aput-object v6, v0, v4

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterSubscriber;

    .line 104
    .line 105
    invoke-direct {v6, v5, v7, v3}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFilter$ParallelFilterSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;I)V

    .line 106
    .line 107
    .line 108
    aput-object v6, v0, v4

    .line 109
    .line 110
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    check-cast v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;->subscribe([Lorg/reactivestreams/Subscriber;)V

    .line 116
    .line 117
    .line 118
    :goto_5
    return-void

    .line 119
    :pswitch_1
    invoke-virtual {p0, p1}, Lokhttp3/Cookie$Companion;->validate([Lorg/reactivestreams/Subscriber;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-nez p0, :cond_7

    .line 124
    .line 125
    goto :goto_8

    .line 126
    :cond_7
    array-length p0, p1

    .line 127
    new-array v0, p0, [Lorg/reactivestreams/Subscriber;

    .line 128
    .line 129
    move v4, v3

    .line 130
    :goto_6
    if-ge v4, p0, :cond_9

    .line 131
    .line 132
    aget-object v5, p1, v4

    .line 133
    .line 134
    instance-of v6, v5, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    .line 135
    .line 136
    move-object v7, v2

    .line 137
    check-cast v7, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;

    .line 138
    .line 139
    if-eqz v6, :cond_8

    .line 140
    .line 141
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;

    .line 142
    .line 143
    check-cast v5, Lio/reactivex/rxjava3/operators/ConditionalSubscriber;

    .line 144
    .line 145
    invoke-direct {v6, v5, v7}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;-><init>(Lio/reactivex/rxjava3/operators/ConditionalSubscriber;Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;)V

    .line 146
    .line 147
    .line 148
    aput-object v6, v0, v4

    .line 149
    .line 150
    goto :goto_7

    .line 151
    :cond_8
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;

    .line 152
    .line 153
    invoke-direct {v6, v5, v7, v3}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;I)V

    .line 154
    .line 155
    .line 156
    aput-object v6, v0, v4

    .line 157
    .line 158
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_9
    check-cast v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;->subscribe([Lorg/reactivestreams/Subscriber;)V

    .line 164
    .line 165
    .line 166
    :goto_8
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
