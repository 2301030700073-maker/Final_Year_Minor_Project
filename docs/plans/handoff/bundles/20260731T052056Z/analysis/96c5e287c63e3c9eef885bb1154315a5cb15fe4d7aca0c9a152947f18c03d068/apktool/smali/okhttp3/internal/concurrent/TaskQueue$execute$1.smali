.class public final Lokhttp3/internal/concurrent/TaskQueue$execute$1;
.super Lokhttp3/internal/concurrent/Task;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $block:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p3, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$r8$classId:I

    iput-object p2, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p2, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final runOnce$okhttp3$internal$cache$DiskLruCache$cleanupTask$1()J
    .locals 5

    .line 1
    iget-object p0, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokhttp3/internal/cache/DiskLruCache;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    .line 7
    .line 8
    const-wide/16 v1, -0x1

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_3

    .line 24
    :catch_0
    :try_start_2
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    :goto_0
    const/4 v3, 0x0

    .line 27
    :try_start_3
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal$okhttp()V

    .line 34
    .line 35
    .line 36
    iput v3, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_1
    :try_start_4
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    .line 40
    .line 41
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/RealBufferedSink;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-static {v0}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    new-instance v0, Lokio/BlackholeSink;

    .line 49
    .line 50
    invoke-direct {v0, v3}, Lokio/BlackholeSink;-><init>(I)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lokio/RealBufferedSink;

    .line 54
    .line 55
    invoke-direct {v3, v0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    .line 56
    .line 57
    .line 58
    iput-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/RealBufferedSink;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    .line 60
    :cond_2
    :goto_1
    monitor-exit p0

    .line 61
    return-wide v1

    .line 62
    :cond_3
    :goto_2
    monitor-exit p0

    .line 63
    return-wide v1

    .line 64
    :goto_3
    monitor-exit p0

    .line 65
    throw v0
.end method


# virtual methods
.method public final runOnce()J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lokhttp3/internal/connection/RealConnectionPool;

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    iget-wide v6, v0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    .line 17
    .line 18
    sub-long v6, v4, v6

    .line 19
    .line 20
    const-wide/16 v8, 0x1

    .line 21
    .line 22
    add-long/2addr v6, v8

    .line 23
    iget-object v1, v0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    const-wide v9, 0x7fffffffffffffffL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    move-object v13, v8

    .line 40
    move-object v14, v13

    .line 41
    move v12, v11

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v15

    .line 46
    if-eqz v15, :cond_3

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v15

    .line 52
    check-cast v15, Lokhttp3/internal/connection/RealConnection;

    .line 53
    .line 54
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    monitor-enter v15

    .line 58
    :try_start_0
    invoke-virtual {v0, v15, v4, v5}, Lokhttp3/internal/connection/RealConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I

    .line 59
    .line 60
    .line 61
    move-result v16

    .line 62
    if-lez v16, :cond_0

    .line 63
    .line 64
    add-int/lit8 v12, v12, 0x1

    .line 65
    .line 66
    const-wide/16 v16, -0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const-wide/16 v16, -0x1

    .line 70
    .line 71
    iget-wide v2, v15, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    cmp-long v18, v2, v6

    .line 74
    .line 75
    if-gez v18, :cond_1

    .line 76
    .line 77
    move-wide v6, v2

    .line 78
    move-object v13, v15

    .line 79
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 80
    .line 81
    cmp-long v18, v2, v9

    .line 82
    .line 83
    if-gez v18, :cond_2

    .line 84
    .line 85
    move-wide v9, v2

    .line 86
    move-object v14, v15

    .line 87
    :cond_2
    :goto_1
    monitor-exit v15

    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    monitor-exit v15

    .line 91
    throw v0

    .line 92
    :cond_3
    const-wide/16 v16, -0x1

    .line 93
    .line 94
    if-eqz v13, :cond_4

    .line 95
    .line 96
    move-object v8, v13

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    const/4 v1, 0x5

    .line 99
    if-le v11, v1, :cond_5

    .line 100
    .line 101
    move-wide v6, v9

    .line 102
    move-object v8, v14

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    move-wide/from16 v6, v16

    .line 105
    .line 106
    :goto_2
    if-eqz v8, :cond_8

    .line 107
    .line 108
    monitor-enter v8

    .line 109
    :try_start_1
    iget-object v1, v8, Lokhttp3/internal/connection/RealConnection;->calls:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    const-wide/16 v2, 0x0

    .line 116
    .line 117
    if-nez v1, :cond_6

    .line 118
    .line 119
    :goto_3
    monitor-exit v8

    .line 120
    goto :goto_4

    .line 121
    :cond_6
    :try_start_2
    iget-wide v4, v8, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J

    .line 122
    .line 123
    cmp-long v1, v4, v6

    .line 124
    .line 125
    if-eqz v1, :cond_7

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    const/4 v1, 0x1

    .line 129
    iput-boolean v1, v8, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 130
    .line 131
    iget-object v1, v0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 132
    .line 133
    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    .line 135
    .line 136
    monitor-exit v8

    .line 137
    iget-object v1, v8, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    .line 138
    .line 139
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt;->closeQuietly(Ljava/net/Socket;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_b

    .line 149
    .line 150
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 151
    .line 152
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskQueue;->cancelAll()V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :catchall_1
    move-exception v0

    .line 157
    monitor-exit v8

    .line 158
    throw v0

    .line 159
    :cond_8
    if-eqz v14, :cond_9

    .line 160
    .line 161
    iget-wide v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    .line 162
    .line 163
    add-long/2addr v9, v0

    .line 164
    sub-long v2, v9, v4

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_9
    if-lez v12, :cond_a

    .line 168
    .line 169
    iget-wide v2, v0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_a
    move-wide/from16 v2, v16

    .line 173
    .line 174
    :cond_b
    :goto_4
    return-wide v2

    .line 175
    :pswitch_0
    invoke-direct {v0}, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->runOnce$okhttp3$internal$cache$DiskLruCache$cleanupTask$1()J

    .line 176
    .line 177
    .line 178
    move-result-wide v0

    .line 179
    return-wide v0

    .line 180
    :pswitch_1
    const-wide/16 v16, -0x1

    .line 181
    .line 182
    iget-object v0, v0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 185
    .line 186
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    return-wide v16

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
