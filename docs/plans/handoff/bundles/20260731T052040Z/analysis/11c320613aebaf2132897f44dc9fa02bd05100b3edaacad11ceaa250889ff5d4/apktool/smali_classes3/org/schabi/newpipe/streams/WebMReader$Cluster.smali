.class public final Lorg/schabi/newpipe/streams/WebMReader$Cluster;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lokhttp3/internal/connection/ExchangeFinder;


# instance fields
.field public currentBlockGroup:Ljava/lang/Object;

.field public currentSimpleBlock:Ljava/lang/Object;

.field public final ref:Ljava/lang/Object;

.field public final this$0:Ljava/lang/Object;

.field public timecode:J


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/internal/concurrent/TaskRunner;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->ref:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Ljava/lang/Object;

    .line 10
    .line 11
    const-wide/high16 p1, -0x8000000000000000L

    .line 12
    .line 13
    iput-wide p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->timecode:J

    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Ljava/lang/Object;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->ref:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cancelInFlightConnects()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 23
    .line 24
    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner$Plan;->cancel()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner$Plan;->retry()Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v3, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->ref:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Lokhttp3/internal/connection/RealRoutePlanner;

    .line 37
    .line 38
    iget-object v3, v3, Lokhttp3/internal/connection/RealRoutePlanner;->deferredPlans:Lkotlin/collections/ArrayDeque;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public find()Lokhttp3/internal/connection/RealConnection;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->ref:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Lokhttp3/internal/connection/RealRoutePlanner;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/RealRoutePlanner;->hasNext(Lokhttp3/internal/connection/RealConnection;)Z

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->cancelInFlightConnects()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    throw v1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto/16 :goto_8

    .line 33
    .line 34
    :cond_2
    :goto_1
    :try_start_1
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->ref:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lokhttp3/internal/connection/RealRoutePlanner;

    .line 37
    .line 38
    iget-object v2, v2, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 39
    .line 40
    iget-boolean v2, v2, Lokhttp3/internal/connection/RealCall;->canceled:Z

    .line 41
    .line 42
    if-nez v2, :cond_f

    .line 43
    .line 44
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lokhttp3/internal/concurrent/TaskRunner;

    .line 47
    .line 48
    iget-object v2, v2, Lokhttp3/internal/concurrent/TaskRunner;->backend:Lokhttp3/ConnectionPool;

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    iget-wide v4, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->timecode:J

    .line 55
    .line 56
    sub-long/2addr v4, v2

    .line 57
    iget-object v6, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_4

    .line 66
    .line 67
    const-wide/16 v6, 0x0

    .line 68
    .line 69
    cmp-long v6, v4, v6

    .line 70
    .line 71
    if-gtz v6, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move-wide v5, v4

    .line 75
    move-object v4, v0

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->launchTcpConnect()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const-wide/32 v5, 0xee6b280

    .line 82
    .line 83
    .line 84
    add-long/2addr v2, v5

    .line 85
    iput-wide v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->timecode:J

    .line 86
    .line 87
    :goto_3
    if-nez v4, :cond_7

    .line 88
    .line 89
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 90
    .line 91
    iget-object v3, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_5

    .line 100
    .line 101
    :goto_4
    move-object v4, v0

    .line 102
    goto :goto_5

    .line 103
    :cond_5
    iget-object v4, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v4, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 106
    .line 107
    invoke-virtual {v4, v5, v6, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 112
    .line 113
    if-nez v2, :cond_6

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_6
    iget-object v4, v2, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->plan:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-object v4, v2

    .line 122
    :goto_5
    if-nez v4, :cond_7

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_7
    iget-object v2, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->nextPlan:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 126
    .line 127
    const/4 v3, 0x0

    .line 128
    const/4 v5, 0x1

    .line 129
    if-nez v2, :cond_8

    .line 130
    .line 131
    iget-object v2, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->throwable:Ljava/lang/Throwable;

    .line 132
    .line 133
    if-nez v2, :cond_8

    .line 134
    .line 135
    move v2, v5

    .line 136
    goto :goto_6

    .line 137
    :cond_8
    move v2, v3

    .line 138
    :goto_6
    if-eqz v2, :cond_b

    .line 139
    .line 140
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->cancelInFlightConnects()V

    .line 141
    .line 142
    .line 143
    iget-object v2, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->plan:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 144
    .line 145
    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner$Plan;->isReady()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_9

    .line 150
    .line 151
    iget-object v2, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->plan:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 152
    .line 153
    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner$Plan;->connectTlsEtc()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    :cond_9
    iget-object v2, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->nextPlan:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 158
    .line 159
    if-nez v2, :cond_a

    .line 160
    .line 161
    iget-object v2, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->throwable:Ljava/lang/Throwable;

    .line 162
    .line 163
    if-nez v2, :cond_a

    .line 164
    .line 165
    move v3, v5

    .line 166
    :cond_a
    if-eqz v3, :cond_b

    .line 167
    .line 168
    iget-object v0, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->plan:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 169
    .line 170
    invoke-interface {v0}, Lokhttp3/internal/connection/RoutePlanner$Plan;->handleSuccess()Lokhttp3/internal/connection/RealConnection;

    .line 171
    .line 172
    .line 173
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->cancelInFlightConnects()V

    .line 175
    .line 176
    .line 177
    return-object v0

    .line 178
    :cond_b
    :try_start_2
    iget-object v2, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->throwable:Ljava/lang/Throwable;

    .line 179
    .line 180
    if-eqz v2, :cond_e

    .line 181
    .line 182
    instance-of v3, v2, Ljava/io/IOException;

    .line 183
    .line 184
    if-eqz v3, :cond_d

    .line 185
    .line 186
    if-nez v1, :cond_c

    .line 187
    .line 188
    check-cast v2, Ljava/io/IOException;

    .line 189
    .line 190
    move-object v1, v2

    .line 191
    goto :goto_7

    .line 192
    :cond_c
    invoke-static {v1, v2}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_d
    throw v2

    .line 197
    :cond_e
    :goto_7
    iget-object v2, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->nextPlan:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 198
    .line 199
    if-eqz v2, :cond_0

    .line 200
    .line 201
    iget-object v3, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->ref:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v3, Lokhttp3/internal/connection/RealRoutePlanner;

    .line 204
    .line 205
    iget-object v3, v3, Lokhttp3/internal/connection/RealRoutePlanner;->deferredPlans:Lkotlin/collections/ArrayDeque;

    .line 206
    .line 207
    invoke-virtual {v3, v2}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_f
    new-instance v0, Ljava/io/IOException;

    .line 213
    .line 214
    const-string v1, "Canceled"

    .line 215
    .line 216
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    :goto_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->cancelInFlightConnects()V

    .line 221
    .line 222
    .line 223
    throw v0
.end method

.method public getNextSimpleBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/streams/WebMReader;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    .line 6
    .line 7
    iget-object v2, v0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    .line 8
    .line 9
    iget-wide v2, v2, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 10
    .line 11
    iget-object v4, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->ref:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 14
    .line 15
    iget-wide v5, v4, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    .line 16
    .line 17
    iget-wide v7, v4, Lorg/schabi/newpipe/streams/WebMReader$Element;->size:J

    .line 18
    .line 19
    add-long/2addr v5, v7

    .line 20
    cmp-long v2, v2, v5

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-ltz v2, :cond_0

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 33
    .line 34
    .line 35
    iput-object v3, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object v3, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Ljava/lang/Object;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v2, v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->ref:Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    iget-object v2, v0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    .line 52
    .line 53
    iget-wide v5, v2, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 54
    .line 55
    iget-wide v7, v4, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    .line 56
    .line 57
    iget-wide v9, v4, Lorg/schabi/newpipe/streams/WebMReader$Element;->size:J

    .line 58
    .line 59
    add-long/2addr v7, v9

    .line 60
    cmp-long v2, v5, v7

    .line 61
    .line 62
    if-ltz v2, :cond_3

    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_3
    const/16 v2, 0x23

    .line 66
    .line 67
    const/16 v5, 0x20

    .line 68
    .line 69
    filled-new-array {v2, v5}, [I

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v4, v2}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-nez v2, :cond_4

    .line 78
    .line 79
    return-object v3

    .line 80
    :cond_4
    iget v6, v2, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    .line 81
    .line 82
    if-ne v6, v5, :cond_5

    .line 83
    .line 84
    iput-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Ljava/lang/Object;

    .line 85
    .line 86
    const/16 v5, 0x21

    .line 87
    .line 88
    filled-new-array {v5}, [I

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v0, v2, v5}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-nez v2, :cond_5

    .line 97
    .line 98
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v2, Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 103
    .line 104
    .line 105
    iput-object v3, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Ljava/lang/Object;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    new-instance v5, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 109
    .line 110
    invoke-direct {v5, v2}, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;-><init>(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/WebMReader;->readEncodedNumber()J

    .line 114
    .line 115
    .line 116
    move-result-wide v6

    .line 117
    iput-wide v6, v5, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->trackNumber:J

    .line 118
    .line 119
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readShort()S

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    iput-short v6, v5, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->relativeTimeCode:S

    .line 124
    .line 125
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    int-to-byte v6, v6

    .line 130
    iput-byte v6, v5, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->flags:B

    .line 131
    .line 132
    iget-wide v6, v2, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    .line 133
    .line 134
    iget-wide v8, v2, Lorg/schabi/newpipe/streams/WebMReader$Element;->size:J

    .line 135
    .line 136
    add-long/2addr v6, v8

    .line 137
    iget-wide v8, v1, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 138
    .line 139
    sub-long/2addr v6, v8

    .line 140
    long-to-int v6, v6

    .line 141
    iput v6, v5, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->dataSize:I

    .line 142
    .line 143
    if-ltz v6, :cond_8

    .line 144
    .line 145
    iput-object v5, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Ljava/lang/Object;

    .line 146
    .line 147
    iget-wide v7, v5, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->trackNumber:J

    .line 148
    .line 149
    iget-object v9, v0, Lorg/schabi/newpipe/streams/WebMReader;->tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 150
    .line 151
    iget v10, v0, Lorg/schabi/newpipe/streams/WebMReader;->selectedTrack:I

    .line 152
    .line 153
    aget-object v9, v9, v10

    .line 154
    .line 155
    iget-wide v9, v9, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackNumber:J

    .line 156
    .line 157
    cmp-long v7, v7, v9

    .line 158
    .line 159
    if-nez v7, :cond_7

    .line 160
    .line 161
    iget-object v2, v1, Lorg/schabi/newpipe/streams/DataReader;->view:Lorg/schabi/newpipe/streams/DataReader$1;

    .line 162
    .line 163
    if-nez v2, :cond_6

    .line 164
    .line 165
    new-instance v2, Lorg/schabi/newpipe/streams/DataReader$1;

    .line 166
    .line 167
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/streams/DataReader$1;-><init>(Lorg/schabi/newpipe/streams/DataReader;)V

    .line 168
    .line 169
    .line 170
    iput-object v2, v1, Lorg/schabi/newpipe/streams/DataReader;->view:Lorg/schabi/newpipe/streams/DataReader$1;

    .line 171
    .line 172
    :cond_6
    iput v6, v1, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    .line 173
    .line 174
    iget-object v1, v1, Lorg/schabi/newpipe/streams/DataReader;->view:Lorg/schabi/newpipe/streams/DataReader$1;

    .line 175
    .line 176
    iput-object v1, v5, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->data:Ljava/io/InputStream;

    .line 177
    .line 178
    iget-object v1, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v1, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 181
    .line 182
    iget-short v2, v1, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->relativeTimeCode:S

    .line 183
    .line 184
    int-to-long v2, v2

    .line 185
    iget-wide v4, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->timecode:J

    .line 186
    .line 187
    add-long/2addr v2, v4

    .line 188
    iput-wide v2, v1, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    .line 189
    .line 190
    iget-object p0, v0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 191
    .line 192
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p0, Lorg/schabi/newpipe/streams/WebMReader$Info;

    .line 195
    .line 196
    iget-wide v4, p0, Lorg/schabi/newpipe/streams/WebMReader$Info;->timecodeScale:J

    .line 197
    .line 198
    mul-long/2addr v2, v4

    .line 199
    iput-wide v2, v1, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    .line 200
    .line 201
    return-object v1

    .line 202
    :cond_7
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_8
    neg-int p0, v6

    .line 208
    const-string v0, "Unexpected SimpleBlock element size, missing "

    .line 209
    .line 210
    const-string v1, " bytes"

    .line 211
    .line 212
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-object v3
.end method

.method public getRoutePlanner()Lokhttp3/internal/connection/RealRoutePlanner;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->ref:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokhttp3/internal/connection/RealRoutePlanner;

    .line 4
    .line 5
    return-object p0
.end method

.method public launchTcpConnect()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->ref:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/connection/RealRoutePlanner;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->hasNext(Lokhttp3/internal/connection/RealConnection;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealRoutePlanner;->plan()Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 13
    .line 14
    .line 15
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v2

    .line 18
    new-instance v3, Lokhttp3/internal/connection/FailedPlan;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lokhttp3/internal/connection/FailedPlan;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    move-object v2, v3

    .line 24
    :goto_0
    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner$Plan;->isReady()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    new-instance p0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 31
    .line 32
    const/4 v0, 0x6

    .line 33
    invoke-direct {p0, v2, v1, v0}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Ljava/lang/Throwable;I)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_0
    instance-of v3, v2, Lokhttp3/internal/connection/FailedPlan;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    check-cast v2, Lokhttp3/internal/connection/FailedPlan;

    .line 42
    .line 43
    iget-object p0, v2, Lokhttp3/internal/connection/FailedPlan;->result:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_1
    iget-object v3, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentSimpleBlock:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    sget-object v4, Lokhttp3/internal/_UtilJvmKt;->okHttpName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, " connect "

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 69
    .line 70
    iget-object v0, v0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 71
    .line 72
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v3, p0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->currentBlockGroup:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v3, Lokhttp3/internal/concurrent/TaskRunner;

    .line 86
    .line 87
    invoke-virtual {v3}, Lokhttp3/internal/concurrent/TaskRunner;->newQueue()Lokhttp3/internal/concurrent/TaskQueue;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    new-instance v4, Lokhttp3/internal/connection/FastFallbackExchangeFinder$launchTcpConnect$1;

    .line 92
    .line 93
    invoke-direct {v4, v0, v2, p0}, Lokhttp3/internal/connection/FastFallbackExchangeFinder$launchTcpConnect$1;-><init>(Ljava/lang/String;Lokhttp3/internal/connection/RoutePlanner$Plan;Lorg/schabi/newpipe/streams/WebMReader$Cluster;)V

    .line 94
    .line 95
    .line 96
    const-wide/16 v5, 0x0

    .line 97
    .line 98
    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/internal/concurrent/TaskQueue;->schedule(Lokhttp3/internal/concurrent/Task;J)V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-object v1
.end method
