.class public final Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;


# instance fields
.field public final alarmManager:Lcom/fsck/k9/backends/AndroidAlarmManager;

.field public currentTriggerTime:J

.field public minTimeout:J

.field public minTimeoutTimestamp:J

.field public final timers:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/backends/AndroidAlarmManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->alarmManager:Lcom/fsck/k9/backends/AndroidAlarmManager;

    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->timers:Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    const-wide v0, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->minTimeout:J

    .line 19
    .line 20
    return-void
.end method

.method public static final access$removeTimer(Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->timers:Ljava/util/LinkedHashSet;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->timers:Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->currentTriggerTime:J

    .line 18
    .line 19
    iget-object p1, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->alarmManager:Lcom/fsck/k9/backends/AndroidAlarmManager;

    .line 20
    .line 21
    iget-object v0, p1, Lcom/fsck/k9/backends/AndroidAlarmManager;->callback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Lcom/fsck/k9/backends/AndroidAlarmManager;->alarmManager:Landroid/app/AlarmManager;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/fsck/k9/backends/AndroidAlarmManager;->pendingIntent:Landroid/app/PendingIntent;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :cond_0
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1
.end method


# virtual methods
.method public final onTimeout()V
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->currentTriggerTime:J

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->timers:Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-wide v2, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->minTimeout:J

    .line 21
    .line 22
    add-long/2addr v0, v2

    .line 23
    iget-object v2, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->timers:Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    new-instance v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    move-object v5, v4

    .line 45
    check-cast v5, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 46
    .line 47
    iget-wide v5, v5, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->triggerTime:J

    .line 48
    .line 49
    const-wide/32 v7, 0xea60

    .line 50
    .line 51
    .line 52
    sub-long v7, v0, v7

    .line 53
    .line 54
    cmp-long v5, v5, v7

    .line 55
    .line 56
    if-gez v5, :cond_1

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    move-object v6, p0

    .line 64
    goto/16 :goto_6

    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->timers:Ljava/util/LinkedHashSet;

    .line 67
    .line 68
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->timers:Ljava/util/LinkedHashSet;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_3

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 90
    .line 91
    iget-wide v1, v1, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->triggerTime:J

    .line 92
    .line 93
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 108
    .line 109
    iget-wide v4, v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->triggerTime:J

    .line 110
    .line 111
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Object;)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-lez v4, :cond_4

    .line 120
    .line 121
    move-object v1, v2

    .line 122
    goto :goto_1

    .line 123
    :cond_5
    move-object v0, v1

    .line 124
    :goto_2
    if-eqz v0, :cond_6

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 127
    .line 128
    .line 129
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :try_start_2
    iput-wide v0, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->currentTriggerTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 131
    .line 132
    :try_start_3
    iget-object v2, p0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->alarmManager:Lcom/fsck/k9/backends/AndroidAlarmManager;

    .line 133
    .line 134
    new-instance v4, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 135
    .line 136
    const-class v7, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;

    .line 137
    .line 138
    const-string v8, "onTimeout"

    .line 139
    .line 140
    const-string v9, "onTimeout()V"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 141
    .line 142
    const/4 v10, 0x0

    .line 143
    const/16 v11, 0x11

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    move-object v6, p0

    .line 147
    :try_start_4
    invoke-direct/range {v4 .. v11}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 148
    .line 149
    .line 150
    iget-object p0, v2, Lcom/fsck/k9/backends/AndroidAlarmManager;->callback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 151
    .line 152
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object p0, v2, Lcom/fsck/k9/backends/AndroidAlarmManager;->alarmManager:Landroid/app/AlarmManager;

    .line 156
    .line 157
    iget-object v2, v2, Lcom/fsck/k9/backends/AndroidAlarmManager;->pendingIntent:Landroid/app/PendingIntent;

    .line 158
    .line 159
    const/4 v4, 0x2

    .line 160
    invoke-virtual {p0, v4, v0, v1, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :catchall_1
    move-exception v0

    .line 165
    goto :goto_3

    .line 166
    :catchall_2
    move-exception v0

    .line 167
    move-object v6, p0

    .line 168
    :goto_3
    move-object p0, v0

    .line 169
    move-object v0, p0

    .line 170
    goto :goto_6

    .line 171
    :catchall_3
    move-exception v0

    .line 172
    move-object v6, p0

    .line 173
    move-object p0, v0

    .line 174
    goto :goto_6

    .line 175
    :cond_6
    move-object v6, p0

    .line 176
    :goto_4
    monitor-exit v6

    .line 177
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_7

    .line 186
    .line 187
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;->onTimeout$tfa_backend_imap()V

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_7
    return-void

    .line 198
    :goto_6
    monitor-exit v6

    .line 199
    throw v0
.end method

.method public final declared-synchronized startTimer(JLkotlin/jvm/functions/Function0;)Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;
    .locals 16

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-wide/from16 v0, p1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    const-wide/32 v3, 0xea60

    .line 7
    .line 8
    .line 9
    cmp-long v5, v0, v3

    .line 10
    .line 11
    if-lez v5, :cond_4

    .line 12
    .line 13
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    add-long v8, v5, v0

    .line 18
    .line 19
    iget-wide v10, v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->minTimeoutTimestamp:J

    .line 20
    .line 21
    iget-wide v12, v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->minTimeout:J

    .line 22
    .line 23
    const-wide/16 v14, 0x2

    .line 24
    .line 25
    mul-long/2addr v12, v14

    .line 26
    add-long/2addr v12, v10

    .line 27
    cmp-long v7, v12, v5

    .line 28
    .line 29
    if-gez v7, :cond_0

    .line 30
    .line 31
    const-wide v10, 0x7fffffffffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    iput-wide v10, v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->minTimeout:J

    .line 37
    .line 38
    :cond_0
    iget-wide v10, v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->minTimeout:J

    .line 39
    .line 40
    cmp-long v7, v0, v10

    .line 41
    .line 42
    if-gtz v7, :cond_1

    .line 43
    .line 44
    iput-wide v0, v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->minTimeout:J

    .line 45
    .line 46
    iput-wide v5, v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->minTimeoutTimestamp:J

    .line 47
    .line 48
    :cond_1
    iget-wide v0, v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->currentTriggerTime:J

    .line 49
    .line 50
    const-wide/16 v5, 0x0

    .line 51
    .line 52
    cmp-long v5, v0, v5

    .line 53
    .line 54
    const/4 v10, 0x2

    .line 55
    if-nez v5, :cond_2

    .line 56
    .line 57
    iput-wide v8, v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->currentTriggerTime:J

    .line 58
    .line 59
    iget-object v11, v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->alarmManager:Lcom/fsck/k9/backends/AndroidAlarmManager;

    .line 60
    .line 61
    new-instance v0, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 62
    .line 63
    const-class v3, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;

    .line 64
    .line 65
    const-string v4, "onTimeout"

    .line 66
    .line 67
    const-string v5, "onTimeout()V"

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    const/16 v7, 0x11

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-direct/range {v0 .. v7}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v11, Lcom/fsck/k9/backends/AndroidAlarmManager;->callback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, v11, Lcom/fsck/k9/backends/AndroidAlarmManager;->alarmManager:Landroid/app/AlarmManager;

    .line 82
    .line 83
    iget-object v1, v11, Lcom/fsck/k9/backends/AndroidAlarmManager;->pendingIntent:Landroid/app/PendingIntent;

    .line 84
    .line 85
    invoke-virtual {v0, v10, v8, v9, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sub-long/2addr v0, v8

    .line 90
    cmp-long v0, v0, v3

    .line 91
    .line 92
    if-lez v0, :cond_3

    .line 93
    .line 94
    iput-wide v8, v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->currentTriggerTime:J

    .line 95
    .line 96
    iget-object v11, v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->alarmManager:Lcom/fsck/k9/backends/AndroidAlarmManager;

    .line 97
    .line 98
    iget-object v0, v11, Lcom/fsck/k9/backends/AndroidAlarmManager;->callback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, v11, Lcom/fsck/k9/backends/AndroidAlarmManager;->alarmManager:Landroid/app/AlarmManager;

    .line 105
    .line 106
    iget-object v1, v11, Lcom/fsck/k9/backends/AndroidAlarmManager;->pendingIntent:Landroid/app/PendingIntent;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 112
    .line 113
    const-class v3, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;

    .line 114
    .line 115
    const-string v4, "onTimeout"

    .line 116
    .line 117
    const-string v5, "onTimeout()V"

    .line 118
    .line 119
    const/4 v6, 0x0

    .line 120
    const/16 v7, 0x10

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    invoke-direct/range {v0 .. v7}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v11, Lcom/fsck/k9/backends/AndroidAlarmManager;->callback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, v11, Lcom/fsck/k9/backends/AndroidAlarmManager;->alarmManager:Landroid/app/AlarmManager;

    .line 132
    .line 133
    iget-object v1, v11, Lcom/fsck/k9/backends/AndroidAlarmManager;->pendingIntent:Landroid/app/PendingIntent;

    .line 134
    .line 135
    invoke-virtual {v0, v10, v8, v9, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_0
    new-instance v0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;

    .line 139
    .line 140
    move-object/from16 v1, p3

    .line 141
    .line 142
    invoke-direct {v0, v2, v8, v9, v1}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager$BackendIdleRefreshTimer;-><init>(Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;JLkotlin/jvm/functions/Function0;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v2, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->timers:Ljava/util/LinkedHashSet;

    .line 146
    .line 147
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .line 149
    .line 150
    monitor-exit p0

    .line 151
    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    goto :goto_1

    .line 154
    :cond_4
    :try_start_1
    const-string v0, "Timeout needs to be greater than 60000 ms"

    .line 155
    .line 156
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v1

    .line 162
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    throw v0
.end method
