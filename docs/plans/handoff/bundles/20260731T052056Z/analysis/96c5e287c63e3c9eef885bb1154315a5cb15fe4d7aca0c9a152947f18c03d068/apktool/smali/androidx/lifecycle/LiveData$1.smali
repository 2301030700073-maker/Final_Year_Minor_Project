.class public final Landroidx/lifecycle/LiveData$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Landroidx/lifecycle/LiveData$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL;Landroid/app/Application;)V
    .locals 0

    .line 1
    const/16 p1, 0x17

    .line 2
    .line 3
    iput p1, p0, Landroidx/lifecycle/LiveData$1;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method private final run$androidx$preference$PreferenceGroup$1()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v0
.end method

.method private final run$okhttp3$internal$concurrent$TaskRunner$runnable$1()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/concurrent/TaskRunner;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, v0, Lokhttp3/internal/concurrent/TaskRunner;->runCallCount:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    add-int/2addr v1, v2

    .line 10
    iput v1, v0, Lokhttp3/internal/concurrent/TaskRunner;->runCallCount:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->awaitTaskToRun()Lokhttp3/internal/concurrent/Task;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 16
    monitor-exit v0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :goto_0
    const-wide/16 v4, -0x1

    .line 29
    .line 30
    :try_start_1
    iget-object v6, v1, Lokhttp3/internal/concurrent/Task;->name:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v6, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v6, Lokhttp3/internal/concurrent/TaskRunner;

    .line 38
    .line 39
    iget-object v6, v6, Lokhttp3/internal/concurrent/TaskRunner;->logger$1:Ljava/util/logging/Logger;

    .line 40
    .line 41
    iget-object v7, v1, Lokhttp3/internal/concurrent/Task;->queue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 47
    .line 48
    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_1

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v9

    .line 58
    const-string v11, "starting"

    .line 59
    .line 60
    invoke-static {v6, v1, v7, v11}, Lokhttp3/Cache$Companion;->log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v2

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    move-wide v9, v4

    .line 67
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lokhttp3/internal/concurrent/Task;->runOnce()J

    .line 68
    .line 69
    .line 70
    move-result-wide v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 71
    if-eqz v8, :cond_2

    .line 72
    .line 73
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v13

    .line 77
    sub-long/2addr v13, v9

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v9, "finished run in "

    .line 84
    .line 85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {v13, v14}, Lokhttp3/Cache$Companion;->formatDuration(J)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-static {v6, v1, v7, v8}, Lokhttp3/Cache$Companion;->log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v6, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v6, Lokhttp3/internal/concurrent/TaskRunner;

    .line 105
    .line 106
    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :try_start_4
    invoke-virtual {v6, v1, v11, v12, v2}, Lokhttp3/internal/concurrent/TaskRunner;->afterRun(Lokhttp3/internal/concurrent/Task;JZ)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Lokhttp3/internal/concurrent/TaskRunner;->awaitTaskToRun()Lokhttp3/internal/concurrent/Task;

    .line 111
    .line 112
    .line 113
    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 115
    if-nez v7, :cond_3

    .line 116
    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_3
    move-object v1, v7

    .line 122
    goto :goto_0

    .line 123
    :catchall_1
    move-exception v2

    .line 124
    :try_start_6
    monitor-exit v6

    .line 125
    throw v2

    .line 126
    :catchall_2
    move-exception v2

    .line 127
    if-eqz v8, :cond_4

    .line 128
    .line 129
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 130
    .line 131
    .line 132
    move-result-wide v11

    .line 133
    sub-long/2addr v11, v9

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v9, "failed a run in "

    .line 140
    .line 141
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-static {v11, v12}, Lokhttp3/Cache$Companion;->formatDuration(J)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-static {v6, v1, v7, v8}, Lokhttp3/Cache$Companion;->log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 159
    :goto_2
    :try_start_7
    iget-object p0, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p0, Lokhttp3/internal/concurrent/TaskRunner;

    .line 162
    .line 163
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 164
    const/4 v6, 0x0

    .line 165
    :try_start_8
    invoke-virtual {p0, v1, v4, v5, v6}, Lokhttp3/internal/concurrent/TaskRunner;->afterRun(Lokhttp3/internal/concurrent/Task;JZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 166
    .line 167
    .line 168
    :try_start_9
    monitor-exit p0

    .line 169
    instance-of p0, v2, Ljava/lang/InterruptedException;

    .line 170
    .line 171
    if-eqz p0, :cond_5

    .line 172
    .line 173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :catchall_3
    move-exception p0

    .line 185
    goto :goto_3

    .line 186
    :cond_5
    :try_start_a
    throw v2

    .line 187
    :catchall_4
    move-exception v1

    .line 188
    monitor-exit p0

    .line 189
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 190
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p0

    .line 194
    :catchall_5
    move-exception p0

    .line 195
    monitor-exit v0

    .line 196
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/lifecycle/LiveData$1;->$r8$classId:I

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x2

    .line 10
    const/4 v7, 0x1

    .line 11
    const/4 v8, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 16
    .line 17
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Ljava/lang/Throwable;

    .line 24
    .line 25
    check-cast v0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    invoke-direct {v0}, Landroidx/lifecycle/LiveData$1;->run$okhttp3$internal$concurrent$TaskRunner$runnable$1()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_1
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lleakcanary/ViewLocationHolderLeakFix$applyFix$1;

    .line 46
    .line 47
    iget-object v0, v0, Lleakcanary/ViewLocationHolderLeakFix$applyFix$1;->$application:Landroid/app/Application;

    .line 48
    .line 49
    invoke-static {v0}, Lorg/jsoup/select/NodeTraversor;->uncheckedClearStaticPool(Landroid/app/Application;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_2
    :try_start_0
    const-string v1, "android.text.TextLine"

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "sCached"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_0

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    sget-object v2, Lleakcanary/AndroidLeakFixes;->Companion:Lleakcanary/AndroidLeakFixes$Companion;

    .line 89
    .line 90
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Landroid/app/Application;

    .line 93
    .line 94
    new-instance v3, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

    .line 95
    .line 96
    invoke-direct {v3, v8, v1}, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    new-instance v1, Lleakcanary/ViewLocationHolderLeakFix$applyFix$2;

    .line 103
    .line 104
    invoke-direct {v1, v3}, Lleakcanary/ViewLocationHolderLeakFix$applyFix$2;-><init>(Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 111
    :pswitch_3
    iget-object v1, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v1, Ljava/util/LinkedHashSet;

    .line 114
    .line 115
    sget-object v2, Lleakcanary/AndroidLeakFixes;->Companion:Lleakcanary/AndroidLeakFixes$Companion;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    if-eqz v2, :cond_d

    .line 132
    .line 133
    :goto_1
    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    if-eqz v3, :cond_2

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->activeCount()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    new-array v3, v3, [Ljava/lang/Thread;

    .line 152
    .line 153
    :goto_2
    invoke-virtual {v2, v3, v7}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    array-length v9, v3

    .line 158
    if-ne v4, v9, :cond_3

    .line 159
    .line 160
    array-length v3, v3

    .line 161
    mul-int/2addr v3, v6

    .line 162
    new-array v3, v3, [Ljava/lang/Thread;

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    array-length v4, v3

    .line 171
    move v6, v8

    .line 172
    :goto_3
    if-ge v6, v4, :cond_6

    .line 173
    .line 174
    aget-object v9, v3, v6

    .line 175
    .line 176
    instance-of v10, v9, Landroid/os/HandlerThread;

    .line 177
    .line 178
    if-eqz v10, :cond_4

    .line 179
    .line 180
    check-cast v9, Landroid/os/HandlerThread;

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_4
    move-object v9, v5

    .line 184
    :goto_4
    if-eqz v9, :cond_5

    .line 185
    .line 186
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_a

    .line 206
    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    check-cast v4, Landroid/os/HandlerThread;

    .line 212
    .line 213
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    const/4 v9, -0x1

    .line 218
    if-eq v6, v9, :cond_9

    .line 219
    .line 220
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-eqz v9, :cond_8

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    new-instance v9, Lkotlin/Pair;

    .line 236
    .line 237
    invoke-direct {v9, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_9
    :goto_6
    move-object v9, v5

    .line 242
    :goto_7
    if-eqz v9, :cond_7

    .line 243
    .line 244
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    :catch_1
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-eqz v3, :cond_c

    .line 257
    .line 258
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    check-cast v3, Lkotlin/Pair;

    .line 263
    .line 264
    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v4, Ljava/lang/Number;

    .line 267
    .line 268
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v3, Landroid/os/HandlerThread;

    .line 275
    .line 276
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    if-nez v5, :cond_b

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 291
    .line 292
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 293
    .line 294
    .line 295
    iput-boolean v7, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 296
    .line 297
    new-instance v6, Landroid/os/Handler;

    .line 298
    .line 299
    invoke-direct {v6, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 300
    .line 301
    .line 302
    sget-object v5, Lleakcanary/AndroidLeakFixes;->Companion:Lleakcanary/AndroidLeakFixes$Companion;

    .line 303
    .line 304
    new-instance v9, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;

    .line 305
    .line 306
    const/4 v10, 0x4

    .line 307
    invoke-direct {v9, v3, v4, v6, v10}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    :try_start_1
    new-instance v3, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;

    .line 314
    .line 315
    invoke-direct {v3, v9, v8}, Lleakcanary/AndroidLeakFixes$Companion$onEachIdle$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v6, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    .line 320
    .line 321
    goto :goto_8

    .line 322
    :cond_c
    sget-object v1, Lleakcanary/AndroidLeakFixes;->Companion:Lleakcanary/AndroidLeakFixes$Companion;

    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    invoke-static {}, Lleakcanary/AndroidLeakFixes$Companion;->getBackgroundHandler$plumber_android_core_release()Landroid/os/Handler;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    const-wide/16 v2, 0xbb8

    .line 332
    .line 333
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 338
    .line 339
    .line 340
    throw v5

    .line 341
    :pswitch_4
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 344
    .line 345
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 346
    .line 347
    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 348
    .line 349
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :pswitch_5
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;

    .line 359
    .line 360
    iput-boolean v8, v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mHasStableIds:Z

    .line 361
    .line 362
    iget-object v1, v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mViews:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 365
    .line 366
    iget-object v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 367
    .line 368
    if-eqz v2, :cond_e

    .line 369
    .line 370
    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-eqz v2, :cond_e

    .line 375
    .line 376
    iget v1, v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mViewTypeCount:I

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->continueSettlingToState(I)V

    .line 379
    .line 380
    .line 381
    goto :goto_9

    .line 382
    :cond_e
    iget v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 383
    .line 384
    if-ne v2, v6, :cond_f

    .line 385
    .line 386
    iget v0, v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mViewTypeCount:I

    .line 387
    .line 388
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 389
    .line 390
    .line 391
    :cond_f
    :goto_9
    return-void

    .line 392
    :pswitch_6
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 395
    .line 396
    iput-boolean v8, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    .line 397
    .line 398
    invoke-virtual {v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    .line 399
    .line 400
    .line 401
    return-void

    .line 402
    :pswitch_7
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 405
    .line 406
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    .line 407
    .line 408
    .line 409
    return-void

    .line 410
    :pswitch_8
    iget-object v1, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 413
    .line 414
    iget-object v5, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 415
    .line 416
    if-eqz v5, :cond_1c

    .line 417
    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 419
    .line 420
    .line 421
    move-result-wide v5

    .line 422
    iget-wide v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 423
    .line 424
    const-wide/high16 v11, -0x8000000000000000L

    .line 425
    .line 426
    cmp-long v7, v9, v11

    .line 427
    .line 428
    if-nez v7, :cond_10

    .line 429
    .line 430
    :goto_a
    move-wide/from16 v17, v2

    .line 431
    .line 432
    goto :goto_b

    .line 433
    :cond_10
    sub-long v2, v5, v9

    .line 434
    .line 435
    goto :goto_a

    .line 436
    :goto_b
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 437
    .line 438
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    iget-object v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 443
    .line 444
    if-nez v3, :cond_11

    .line 445
    .line 446
    new-instance v3, Landroid/graphics/Rect;

    .line 447
    .line 448
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 449
    .line 450
    .line 451
    iput-object v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 452
    .line 453
    :cond_11
    iget-object v7, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 454
    .line 455
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 456
    .line 457
    invoke-virtual {v2, v7, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 461
    .line 462
    .line 463
    move-result v3

    .line 464
    if-eqz v3, :cond_13

    .line 465
    .line 466
    iget v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 467
    .line 468
    iget v7, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 469
    .line 470
    add-float/2addr v3, v7

    .line 471
    float-to-int v3, v3

    .line 472
    iget-object v7, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 473
    .line 474
    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 475
    .line 476
    sub-int v7, v3, v7

    .line 477
    .line 478
    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 479
    .line 480
    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    .line 481
    .line 482
    .line 483
    move-result v9

    .line 484
    sub-int/2addr v7, v9

    .line 485
    iget v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 486
    .line 487
    cmpg-float v10, v9, v4

    .line 488
    .line 489
    if-gez v10, :cond_12

    .line 490
    .line 491
    if-gez v7, :cond_12

    .line 492
    .line 493
    :goto_c
    move/from16 v16, v7

    .line 494
    .line 495
    goto :goto_d

    .line 496
    :cond_12
    cmpl-float v7, v9, v4

    .line 497
    .line 498
    if-lez v7, :cond_13

    .line 499
    .line 500
    iget-object v7, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 501
    .line 502
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 503
    .line 504
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 505
    .line 506
    .line 507
    move-result v7

    .line 508
    add-int/2addr v7, v3

    .line 509
    iget-object v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 510
    .line 511
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 512
    .line 513
    add-int/2addr v7, v3

    .line 514
    iget-object v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 515
    .line 516
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 517
    .line 518
    .line 519
    move-result v3

    .line 520
    iget-object v9, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 521
    .line 522
    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    .line 523
    .line 524
    .line 525
    move-result v9

    .line 526
    sub-int/2addr v3, v9

    .line 527
    sub-int/2addr v7, v3

    .line 528
    if-lez v7, :cond_13

    .line 529
    .line 530
    goto :goto_c

    .line 531
    :cond_13
    move/from16 v16, v8

    .line 532
    .line 533
    :goto_d
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    if-eqz v2, :cond_15

    .line 538
    .line 539
    iget v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 540
    .line 541
    iget v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 542
    .line 543
    add-float/2addr v2, v3

    .line 544
    float-to-int v2, v2

    .line 545
    iget-object v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 546
    .line 547
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 548
    .line 549
    sub-int v3, v2, v3

    .line 550
    .line 551
    iget-object v7, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 552
    .line 553
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    .line 554
    .line 555
    .line 556
    move-result v7

    .line 557
    sub-int/2addr v3, v7

    .line 558
    iget v7, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 559
    .line 560
    cmpg-float v9, v7, v4

    .line 561
    .line 562
    if-gez v9, :cond_14

    .line 563
    .line 564
    if-gez v3, :cond_14

    .line 565
    .line 566
    :goto_e
    move v8, v3

    .line 567
    goto :goto_f

    .line 568
    :cond_14
    cmpl-float v3, v7, v4

    .line 569
    .line 570
    if-lez v3, :cond_15

    .line 571
    .line 572
    iget-object v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 573
    .line 574
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 575
    .line 576
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    add-int/2addr v3, v2

    .line 581
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 582
    .line 583
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 584
    .line 585
    add-int/2addr v3, v2

    .line 586
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 587
    .line 588
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 589
    .line 590
    .line 591
    move-result v2

    .line 592
    iget-object v4, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 593
    .line 594
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    sub-int/2addr v2, v4

    .line 599
    sub-int/2addr v3, v2

    .line 600
    if-lez v3, :cond_15

    .line 601
    .line 602
    goto :goto_e

    .line 603
    :cond_15
    :goto_f
    if-eqz v16, :cond_16

    .line 604
    .line 605
    iget-object v13, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 606
    .line 607
    iget-object v14, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 608
    .line 609
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 610
    .line 611
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 612
    .line 613
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 614
    .line 615
    .line 616
    move-result v15

    .line 617
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 618
    .line 619
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 620
    .line 621
    .line 622
    invoke-virtual/range {v13 .. v18}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 623
    .line 624
    .line 625
    move-result v16

    .line 626
    :cond_16
    move/from16 v2, v16

    .line 627
    .line 628
    if-eqz v8, :cond_17

    .line 629
    .line 630
    iget-object v13, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 631
    .line 632
    iget-object v14, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 633
    .line 634
    iget-object v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 635
    .line 636
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 637
    .line 638
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 639
    .line 640
    .line 641
    move-result v15

    .line 642
    iget-object v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 643
    .line 644
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 645
    .line 646
    .line 647
    move/from16 v16, v8

    .line 648
    .line 649
    invoke-virtual/range {v13 .. v18}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 650
    .line 651
    .line 652
    move-result v8

    .line 653
    goto :goto_10

    .line 654
    :cond_17
    move/from16 v16, v8

    .line 655
    .line 656
    :goto_10
    if-nez v2, :cond_19

    .line 657
    .line 658
    if-eqz v8, :cond_18

    .line 659
    .line 660
    goto :goto_11

    .line 661
    :cond_18
    iput-wide v11, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 662
    .line 663
    goto :goto_12

    .line 664
    :cond_19
    :goto_11
    iget-wide v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 665
    .line 666
    cmp-long v3, v3, v11

    .line 667
    .line 668
    if-nez v3, :cond_1a

    .line 669
    .line 670
    iput-wide v5, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 671
    .line 672
    :cond_1a
    iget-object v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 673
    .line 674
    invoke-virtual {v3, v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 675
    .line 676
    .line 677
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 678
    .line 679
    if-eqz v2, :cond_1b

    .line 680
    .line 681
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 682
    .line 683
    .line 684
    :cond_1b
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 685
    .line 686
    iget-object v3, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Landroidx/lifecycle/LiveData$1;

    .line 687
    .line 688
    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 689
    .line 690
    .line 691
    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 692
    .line 693
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 694
    .line 695
    invoke-virtual {v1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 696
    .line 697
    .line 698
    :cond_1c
    :goto_12
    return-void

    .line 699
    :pswitch_9
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast v0, Landroidx/recyclerview/widget/FastScroller;

    .line 702
    .line 703
    iget-object v1, v0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 704
    .line 705
    iget v2, v0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 706
    .line 707
    if-eq v2, v7, :cond_1d

    .line 708
    .line 709
    if-eq v2, v6, :cond_1e

    .line 710
    .line 711
    goto :goto_13

    .line 712
    :cond_1d
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 713
    .line 714
    .line 715
    :cond_1e
    const/4 v2, 0x3

    .line 716
    iput v2, v0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 717
    .line 718
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    check-cast v0, Ljava/lang/Float;

    .line 723
    .line 724
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 725
    .line 726
    .line 727
    move-result v0

    .line 728
    new-array v2, v6, [F

    .line 729
    .line 730
    aput v0, v2, v8

    .line 731
    .line 732
    aput v4, v2, v7

    .line 733
    .line 734
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 735
    .line 736
    .line 737
    const-wide/16 v2, 0x1f4

    .line 738
    .line 739
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 743
    .line 744
    .line 745
    :goto_13
    return-void

    .line 746
    :pswitch_a
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 747
    .line 748
    check-cast v0, Landroidx/preference/PreferenceGroupAdapter;

    .line 749
    .line 750
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroupAdapter;->updatePreferences()V

    .line 751
    .line 752
    .line 753
    return-void

    .line 754
    :pswitch_b
    invoke-direct {v0}, Landroidx/lifecycle/LiveData$1;->run$androidx$preference$PreferenceGroup$1()V

    .line 755
    .line 756
    .line 757
    return-void

    .line 758
    :pswitch_c
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 759
    .line 760
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 761
    .line 762
    iget-object v0, v0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 763
    .line 764
    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 765
    .line 766
    .line 767
    return-void

    .line 768
    :pswitch_d
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 769
    .line 770
    check-cast v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    .line 771
    .line 772
    invoke-virtual {v0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->scheduleShowSoftInputInner()V

    .line 773
    .line 774
    .line 775
    return-void

    .line 776
    :pswitch_e
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    .line 779
    .line 780
    invoke-virtual {v0, v7}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions(Z)Z

    .line 781
    .line 782
    .line 783
    return-void

    .line 784
    :pswitch_f
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 785
    .line 786
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 787
    .line 788
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 789
    .line 790
    if-eqz v1, :cond_1f

    .line 791
    .line 792
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 793
    .line 794
    .line 795
    :cond_1f
    return-void

    .line 796
    :pswitch_10
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 797
    .line 798
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 799
    .line 800
    iget-object v1, v0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroidx/fragment/app/DialogFragment$3;

    .line 801
    .line 802
    iget-object v0, v0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 803
    .line 804
    invoke-virtual {v1, v0}, Landroidx/fragment/app/DialogFragment$3;->onDismiss(Landroid/content/DialogInterface;)V

    .line 805
    .line 806
    .line 807
    return-void

    .line 808
    :pswitch_11
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 809
    .line 810
    check-cast v0, Landroidx/customview/widget/ViewDragHelper;

    .line 811
    .line 812
    invoke-virtual {v0, v8}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 813
    .line 814
    .line 815
    return-void

    .line 816
    :pswitch_12
    iget-object v1, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 817
    .line 818
    check-cast v1, Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 819
    .line 820
    iget-object v4, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget$1:Landroidx/appcompat/widget/DropDownListView;

    .line 821
    .line 822
    iget-object v5, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 823
    .line 824
    iget-boolean v6, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    .line 825
    .line 826
    if-nez v6, :cond_20

    .line 827
    .line 828
    goto/16 :goto_15

    .line 829
    .line 830
    :cond_20
    iget-boolean v6, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    .line 831
    .line 832
    if-eqz v6, :cond_21

    .line 833
    .line 834
    iput-boolean v8, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    .line 835
    .line 836
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 837
    .line 838
    .line 839
    move-result-wide v6

    .line 840
    iput-wide v6, v5, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 841
    .line 842
    const-wide/16 v9, -0x1

    .line 843
    .line 844
    iput-wide v9, v5, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 845
    .line 846
    iput-wide v6, v5, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 847
    .line 848
    const/high16 v6, 0x3f000000    # 0.5f

    .line 849
    .line 850
    iput v6, v5, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 851
    .line 852
    :cond_21
    iget-wide v6, v5, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 853
    .line 854
    cmp-long v6, v6, v2

    .line 855
    .line 856
    if-lez v6, :cond_22

    .line 857
    .line 858
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 859
    .line 860
    .line 861
    move-result-wide v6

    .line 862
    iget-wide v9, v5, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 863
    .line 864
    iget v11, v5, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    .line 865
    .line 866
    int-to-long v11, v11

    .line 867
    add-long/2addr v9, v11

    .line 868
    cmp-long v6, v6, v9

    .line 869
    .line 870
    if-lez v6, :cond_22

    .line 871
    .line 872
    goto :goto_14

    .line 873
    :cond_22
    invoke-virtual {v1}, Landroidx/core/widget/ListViewAutoScrollHelper;->shouldAnimate()Z

    .line 874
    .line 875
    .line 876
    move-result v6

    .line 877
    if-nez v6, :cond_23

    .line 878
    .line 879
    :goto_14
    iput-boolean v8, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    .line 880
    .line 881
    goto :goto_15

    .line 882
    :cond_23
    iget-boolean v6, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsCancel:Z

    .line 883
    .line 884
    if-eqz v6, :cond_24

    .line 885
    .line 886
    iput-boolean v8, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsCancel:Z

    .line 887
    .line 888
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 889
    .line 890
    .line 891
    move-result-wide v9

    .line 892
    const/4 v15, 0x0

    .line 893
    const/16 v16, 0x0

    .line 894
    .line 895
    const/4 v13, 0x3

    .line 896
    const/4 v14, 0x0

    .line 897
    move-wide v11, v9

    .line 898
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 899
    .line 900
    .line 901
    move-result-object v6

    .line 902
    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/DropDownListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 903
    .line 904
    .line 905
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 906
    .line 907
    .line 908
    :cond_24
    iget-wide v6, v5, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 909
    .line 910
    cmp-long v2, v6, v2

    .line 911
    .line 912
    if-eqz v2, :cond_25

    .line 913
    .line 914
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 915
    .line 916
    .line 917
    move-result-wide v2

    .line 918
    invoke-virtual {v5, v2, v3}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    .line 919
    .line 920
    .line 921
    move-result v6

    .line 922
    const/high16 v7, -0x3f800000    # -4.0f

    .line 923
    .line 924
    mul-float/2addr v7, v6

    .line 925
    mul-float/2addr v7, v6

    .line 926
    const/high16 v8, 0x40800000    # 4.0f

    .line 927
    .line 928
    mul-float/2addr v6, v8

    .line 929
    add-float/2addr v6, v7

    .line 930
    iget-wide v7, v5, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 931
    .line 932
    sub-long v7, v2, v7

    .line 933
    .line 934
    iput-wide v2, v5, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 935
    .line 936
    long-to-float v2, v7

    .line 937
    mul-float/2addr v2, v6

    .line 938
    iget v3, v5, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    .line 939
    .line 940
    mul-float/2addr v2, v3

    .line 941
    float-to-int v2, v2

    .line 942
    iget-object v1, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroidx/appcompat/widget/DropDownListView;

    .line 943
    .line 944
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 945
    .line 946
    .line 947
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 948
    .line 949
    invoke-virtual {v4, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 950
    .line 951
    .line 952
    goto :goto_15

    .line 953
    :cond_25
    const-string v0, "Cannot compute scroll delta before calling start()"

    .line 954
    .line 955
    invoke-static {v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    :goto_15
    return-void

    .line 959
    :pswitch_13
    iget-object v1, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 960
    .line 961
    move-object v8, v1

    .line 962
    check-cast v8, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 963
    .line 964
    invoke-virtual {v8, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 965
    .line 966
    .line 967
    iget-object v9, v8, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 968
    .line 969
    if-eqz v9, :cond_27

    .line 970
    .line 971
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 972
    .line 973
    .line 974
    move-result v0

    .line 975
    const/16 v1, 0xa

    .line 976
    .line 977
    if-eq v0, v1, :cond_27

    .line 978
    .line 979
    if-eq v0, v7, :cond_27

    .line 980
    .line 981
    const/4 v1, 0x7

    .line 982
    if-eq v0, v1, :cond_26

    .line 983
    .line 984
    const/16 v2, 0x9

    .line 985
    .line 986
    if-eq v0, v2, :cond_26

    .line 987
    .line 988
    move v10, v6

    .line 989
    goto :goto_16

    .line 990
    :cond_26
    move v10, v1

    .line 991
    :goto_16
    iget-wide v11, v8, Landroidx/compose/ui/platform/AndroidComposeView;->relayoutTime:J

    .line 992
    .line 993
    const/4 v13, 0x0

    .line 994
    invoke-virtual/range {v8 .. v13}, Landroidx/compose/ui/platform/AndroidComposeView;->sendSimulatedEvent(Landroid/view/MotionEvent;IJZ)V

    .line 995
    .line 996
    .line 997
    :cond_27
    return-void

    .line 998
    :pswitch_14
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 999
    .line 1000
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 1001
    .line 1002
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    .line 1003
    .line 1004
    .line 1005
    return-void

    .line 1006
    :pswitch_15
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 1007
    .line 1008
    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 1009
    .line 1010
    iget-boolean v1, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 1011
    .line 1012
    if-eqz v1, :cond_28

    .line 1013
    .line 1014
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    const-string v2, "input_method"

    .line 1019
    .line 1020
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1025
    .line 1026
    invoke-virtual {v1, v0, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1027
    .line 1028
    .line 1029
    iput-boolean v8, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 1030
    .line 1031
    :cond_28
    return-void

    .line 1032
    :pswitch_16
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 1033
    .line 1034
    check-cast v0, Landroidx/appcompat/widget/DropDownListView;

    .line 1035
    .line 1036
    iput-object v5, v0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/lifecycle/LiveData$1;

    .line 1037
    .line 1038
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    .line 1039
    .line 1040
    .line 1041
    return-void

    .line 1042
    :pswitch_17
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 1043
    .line 1044
    check-cast v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    .line 1045
    .line 1046
    invoke-virtual {v0, v7}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->animate(Z)V

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1050
    .line 1051
    .line 1052
    return-void

    .line 1053
    :pswitch_18
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 1054
    .line 1055
    check-cast v0, Landroidx/appcompat/app/ToolbarActionBar;

    .line 1056
    .line 1057
    iget-object v1, v0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 1058
    .line 1059
    invoke-virtual {v0}, Landroidx/appcompat/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    instance-of v2, v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1064
    .line 1065
    if-eqz v2, :cond_29

    .line 1066
    .line 1067
    move-object v2, v0

    .line 1068
    check-cast v2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1069
    .line 1070
    goto :goto_17

    .line 1071
    :cond_29
    move-object v2, v5

    .line 1072
    :goto_17
    if-eqz v2, :cond_2a

    .line 1073
    .line 1074
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1075
    .line 1076
    .line 1077
    :cond_2a
    :try_start_2
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 1078
    .line 1079
    .line 1080
    invoke-interface {v1, v8, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 1081
    .line 1082
    .line 1083
    move-result v3

    .line 1084
    if-eqz v3, :cond_2b

    .line 1085
    .line 1086
    invoke-interface {v1, v8, v5, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 1087
    .line 1088
    .line 1089
    move-result v1

    .line 1090
    if-nez v1, :cond_2c

    .line 1091
    .line 1092
    goto :goto_18

    .line 1093
    :catchall_0
    move-exception v0

    .line 1094
    goto :goto_19

    .line 1095
    :cond_2b
    :goto_18
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1096
    .line 1097
    .line 1098
    :cond_2c
    if-eqz v2, :cond_2d

    .line 1099
    .line 1100
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1101
    .line 1102
    .line 1103
    :cond_2d
    return-void

    .line 1104
    :goto_19
    if-eqz v2, :cond_2e

    .line 1105
    .line 1106
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1107
    .line 1108
    .line 1109
    :cond_2e
    throw v0

    .line 1110
    :pswitch_19
    iget-object v1, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 1111
    .line 1112
    check-cast v1, Landroidx/lifecycle/MutableLiveData;

    .line 1113
    .line 1114
    iget-object v1, v1, Landroidx/lifecycle/MutableLiveData;->mDataLock:Ljava/lang/Object;

    .line 1115
    .line 1116
    monitor-enter v1

    .line 1117
    :try_start_3
    iget-object v2, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 1118
    .line 1119
    check-cast v2, Landroidx/lifecycle/MutableLiveData;

    .line 1120
    .line 1121
    iget-object v2, v2, Landroidx/lifecycle/MutableLiveData;->mPendingData:Ljava/lang/Object;

    .line 1122
    .line 1123
    iget-object v3, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 1124
    .line 1125
    check-cast v3, Landroidx/lifecycle/MutableLiveData;

    .line 1126
    .line 1127
    sget-object v4, Landroidx/lifecycle/MutableLiveData;->NOT_SET:Ljava/lang/Object;

    .line 1128
    .line 1129
    iput-object v4, v3, Landroidx/lifecycle/MutableLiveData;->mPendingData:Ljava/lang/Object;

    .line 1130
    .line 1131
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1132
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 1133
    .line 1134
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 1135
    .line 1136
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 1137
    .line 1138
    .line 1139
    return-void

    .line 1140
    :catchall_1
    move-exception v0

    .line 1141
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1142
    throw v0

    .line 1143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
