.class public abstract Lcom/livefront/bridge/Bridge;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static volatile sDelegate:Lcom/livefront/bridge/BridgeDelegate;

.field public static final sExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/livefront/bridge/Bridge;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
.end method

.method public static declared-synchronized checkInitialization()V
    .locals 3

    .line 1
    const-class v0, Lcom/livefront/bridge/Bridge;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v2, "You must first call initialize before calling any other methods"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v1
.end method

.method public static restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/livefront/bridge/Bridge;->checkInitialization()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/WeakHashMap;

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string/jumbo v4, "uuid_"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_2
    if-nez p1, :cond_3

    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_3
    iget-object v1, v0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v2, 0x0

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    iget-object v1, v0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroid/os/Bundle;

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    iget-object v1, v0, Lcom/livefront/bridge/BridgeDelegate;->mDiskHandler:Lcom/livefront/bridge/disk/FileDiskHandler;

    .line 76
    .line 77
    iget-boolean v4, v1, Lcom/livefront/bridge/disk/FileDiskHandler;->mIsLoadedOrTimedOut:Z

    .line 78
    .line 79
    if-eqz v4, :cond_5

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    :try_start_0
    iget-object v4, v1, Lcom/livefront/bridge/disk/FileDiskHandler;->mPendingLoadFuture:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v4, Ljava/util/concurrent/Future;

    .line 85
    .line 86
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 87
    .line 88
    const-wide/16 v6, 0x3e8

    .line 89
    .line 90
    invoke-interface {v4, v6, v7, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    :catch_0
    const/4 v4, 0x1

    .line 94
    iput-boolean v4, v1, Lcom/livefront/bridge/disk/FileDiskHandler;->mIsLoadedOrTimedOut:Z

    .line 95
    .line 96
    :goto_1
    invoke-virtual {v1, p1}, Lcom/livefront/bridge/disk/FileDiskHandler;->getBytesInternal(Ljava/lang/String;)[B

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-nez v1, :cond_6

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    array-length v5, v1

    .line 108
    invoke-virtual {v4, v1, v2, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    .line 113
    .line 114
    :try_start_1
    const-class v1, Lokhttp3/Cookie$Companion;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v4, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 121
    .line 122
    .line 123
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    :catch_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 125
    .line 126
    .line 127
    if-nez v3, :cond_7

    .line 128
    .line 129
    const-string v1, "Bridge"

    .line 130
    .line 131
    const-string v4, "Unable to properly convert disk-persisted data to a Bundle. Some state loss may occur."

    .line 132
    .line 133
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_7
    :goto_2
    move-object v1, v3

    .line 137
    :goto_3
    if-eqz v1, :cond_9

    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_9

    .line 152
    .line 153
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    instance-of v5, v5, Lcom/livefront/bridge/wrapper/BitmapWrapper;

    .line 164
    .line 165
    if-eqz v5, :cond_8

    .line 166
    .line 167
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    check-cast v5, Lcom/livefront/bridge/wrapper/BitmapWrapper;

    .line 172
    .line 173
    iget-object v5, v5, Lcom/livefront/bridge/wrapper/BitmapWrapper;->mBitmap:Landroid/graphics/Bitmap;

    .line 174
    .line 175
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_9
    iget-object v3, v0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 180
    .line 181
    invoke-virtual {v3, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    new-instance v3, Landroidx/core/app/ActivityRecreator$1;

    .line 185
    .line 186
    const/16 v4, 0xd

    .line 187
    .line 188
    invoke-direct {v3, v4, v0, p1, v2}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 189
    .line 190
    .line 191
    iget-object p1, v0, Lcom/livefront/bridge/BridgeDelegate;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 192
    .line 193
    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 194
    .line 195
    .line 196
    if-nez v1, :cond_a

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_a
    iget-object p1, v0, Lcom/livefront/bridge/BridgeDelegate;->mSavedStateHandler:Lokio/ByteString$Companion;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {p0, v1}, Lcom/evernote/android/state/StateSaver;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 205
    .line 206
    .line 207
    :goto_5
    return-void
.end method

.method public static saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/livefront/bridge/Bridge;->checkInitialization()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string/jumbo v3, "uuid_"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/livefront/bridge/BridgeDelegate;->mSavedStateHandler:Lokio/ByteString$Companion;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1}, Lcom/evernote/android/state/StateSaver;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    instance-of v3, v3, Landroid/graphics/Bitmap;

    .line 90
    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Landroid/graphics/Bitmap;

    .line 98
    .line 99
    new-instance v4, Lcom/livefront/bridge/wrapper/BitmapWrapper;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v3, v4, Lcom/livefront/bridge/wrapper/BitmapWrapper;->mBitmap:Landroid/graphics/Bitmap;

    .line 105
    .line 106
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    iget-object p0, v0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 111
    .line 112
    invoke-virtual {p0, v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    new-instance p0, Lcom/livefront/bridge/BridgeDelegate$3;

    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/livefront/bridge/BridgeDelegate$3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, v0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    .line 122
    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    iget-object p1, v0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 128
    .line 129
    .line 130
    move-result-wide v1

    .line 131
    const-wide/16 v3, 0x0

    .line 132
    .line 133
    cmp-long p1, v1, v3

    .line 134
    .line 135
    if-nez p1, :cond_5

    .line 136
    .line 137
    :cond_4
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 138
    .line 139
    const/4 v1, 0x1

    .line 140
    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 141
    .line 142
    .line 143
    iput-object p1, v0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    .line 144
    .line 145
    :cond_5
    iget-object p1, v0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 146
    .line 147
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    iget-object p1, v0, Lcom/livefront/bridge/BridgeDelegate;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 151
    .line 152
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 153
    .line 154
    .line 155
    iget p0, v0, Lcom/livefront/bridge/BridgeDelegate;->mActivityCount:I

    .line 156
    .line 157
    if-gtz p0, :cond_7

    .line 158
    .line 159
    iget-boolean p0, v0, Lcom/livefront/bridge/BridgeDelegate;->mIsConfigChange:Z

    .line 160
    .line 161
    if-eqz p0, :cond_6

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_6
    :try_start_0
    iget-object p0, v0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    .line 165
    .line 166
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 167
    .line 168
    const-wide/16 v1, 0x1388

    .line 169
    .line 170
    invoke-virtual {p0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    :catch_0
    const/4 p0, 0x0

    .line 174
    iput-object p0, v0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    .line 175
    .line 176
    :cond_7
    :goto_1
    return-void
.end method
