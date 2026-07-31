.class public final Lokhttp3/internal/concurrent/TaskQueue$execute$1;
.super Lokhttp3/internal/concurrent/Task;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $block:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$r8$classId:I

    iput-object p2, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Ljava/lang/Object;

    .line 10
    invoke-direct {p0, p1}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
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
    iget-object v1, v0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/io/Serializable;

    .line 24
    .line 25
    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    const-wide v9, 0x7fffffffffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const/4 v11, 0x0

    .line 41
    move-object v13, v8

    .line 42
    move-object v14, v13

    .line 43
    move v12, v11

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    if-eqz v15, :cond_3

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v15

    .line 54
    check-cast v15, Lokhttp3/internal/connection/RealConnection;

    .line 55
    .line 56
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    monitor-enter v15

    .line 60
    :try_start_0
    invoke-virtual {v0, v15, v4, v5}, Lokhttp3/internal/connection/RealConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I

    .line 61
    .line 62
    .line 63
    move-result v16

    .line 64
    if-lez v16, :cond_0

    .line 65
    .line 66
    add-int/lit8 v12, v12, 0x1

    .line 67
    .line 68
    const-wide/16 v16, -0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    const-wide/16 v16, -0x1

    .line 72
    .line 73
    iget-wide v2, v15, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    cmp-long v18, v2, v6

    .line 76
    .line 77
    if-gez v18, :cond_1

    .line 78
    .line 79
    move-wide v6, v2

    .line 80
    move-object v13, v15

    .line 81
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 82
    .line 83
    cmp-long v18, v2, v9

    .line 84
    .line 85
    if-gez v18, :cond_2

    .line 86
    .line 87
    move-wide v9, v2

    .line 88
    move-object v14, v15

    .line 89
    :cond_2
    :goto_1
    monitor-exit v15

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    monitor-exit v15

    .line 93
    throw v0

    .line 94
    :cond_3
    const-wide/16 v16, -0x1

    .line 95
    .line 96
    if-eqz v13, :cond_4

    .line 97
    .line 98
    move-object v8, v13

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    const/4 v1, 0x5

    .line 101
    if-le v11, v1, :cond_5

    .line 102
    .line 103
    move-wide v6, v9

    .line 104
    move-object v8, v14

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    move-wide/from16 v6, v16

    .line 107
    .line 108
    :goto_2
    if-eqz v8, :cond_8

    .line 109
    .line 110
    monitor-enter v8

    .line 111
    :try_start_1
    iget-object v1, v8, Lokhttp3/internal/connection/RealConnection;->calls:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    const-wide/16 v2, 0x0

    .line 118
    .line 119
    if-nez v1, :cond_6

    .line 120
    .line 121
    :goto_3
    monitor-exit v8

    .line 122
    goto :goto_4

    .line 123
    :cond_6
    :try_start_2
    iget-wide v4, v8, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J

    .line 124
    .line 125
    cmp-long v1, v4, v6

    .line 126
    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_7
    const/4 v1, 0x1

    .line 131
    iput-boolean v1, v8, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 132
    .line 133
    iget-object v1, v0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/io/Serializable;

    .line 134
    .line 135
    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 136
    .line 137
    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    .line 139
    .line 140
    monitor-exit v8

    .line 141
    iget-object v1, v8, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    .line 142
    .line 143
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt;->closeQuietly(Ljava/net/Socket;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/io/Serializable;

    .line 147
    .line 148
    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_b

    .line 155
    .line 156
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupQueue:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v0, Lokhttp3/internal/concurrent/TaskQueue;

    .line 159
    .line 160
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskQueue;->cancelAll()V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :catchall_1
    move-exception v0

    .line 165
    monitor-exit v8

    .line 166
    throw v0

    .line 167
    :cond_8
    if-eqz v14, :cond_9

    .line 168
    .line 169
    iget-wide v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    .line 170
    .line 171
    add-long/2addr v9, v0

    .line 172
    sub-long v2, v9, v4

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_9
    if-lez v12, :cond_a

    .line 176
    .line 177
    iget-wide v2, v0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_a
    move-wide/from16 v2, v16

    .line 181
    .line 182
    :cond_b
    :goto_4
    return-wide v2

    .line 183
    :pswitch_0
    const-wide/16 v16, -0x1

    .line 184
    .line 185
    iget-object v0, v0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 188
    .line 189
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    return-wide v16

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
