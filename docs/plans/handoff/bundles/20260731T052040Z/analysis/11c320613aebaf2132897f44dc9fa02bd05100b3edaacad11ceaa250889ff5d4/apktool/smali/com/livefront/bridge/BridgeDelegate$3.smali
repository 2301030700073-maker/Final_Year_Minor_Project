.class public final Lcom/livefront/bridge/BridgeDelegate$3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;

.field public val$bundle:Ljava/lang/Object;

.field public val$uuid:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/livefront/bridge/BridgeDelegate$3;->$r8$classId:I

    iput-object p2, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$uuid:Ljava/lang/Object;

    iput-object p4, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$bundle:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;Landroidx/room/RoomDatabase;Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$uuid:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$bundle:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$uuid:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$bundle:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Ljava/lang/Runnable;

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$ExecutorWorker;->schedule(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$uuid:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lcom/google/android/material/appbar/HeaderBehavior;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$bundle:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Landroid/view/View;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object v3, v1, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    iget-object v3, v1, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 65
    .line 66
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 67
    .line 68
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 69
    .line 70
    .line 71
    iget-boolean p0, v2, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 72
    .line 73
    if-eqz p0, :cond_1

    .line 74
    .line 75
    invoke-static {v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-virtual {v2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_0
    return-void

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$uuid:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 90
    .line 91
    :try_start_0
    iget-object v2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 92
    .line 93
    sget-object v3, Lkotlin/coroutines/ContinuationInterceptor$Key;->$$INSTANCE:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 94
    .line 95
    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance v3, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1;

    .line 100
    .line 101
    iget-object v4, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$bundle:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v4, Landroidx/room/RoomDatabase;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;

    .line 108
    .line 109
    invoke-direct {v3, v4, v0, p0, v1}, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1;-><init>(Landroidx/room/RoomDatabase;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v3}, Lkotlinx/coroutines/JobKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void

    .line 121
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$uuid:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Landroidx/core/provider/FontRequestWorker$1;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroidx/core/provider/FontRequestWorker$1;->call()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :catch_0
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$bundle:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Landroidx/core/provider/FontRequestWorker$2;

    .line 132
    .line 133
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p0, Landroid/os/Handler;

    .line 136
    .line 137
    new-instance v2, Landroidx/core/app/ActivityRecreator$1;

    .line 138
    .line 139
    const/4 v3, 0x4

    .line 140
    invoke-direct {v2, v0, v1, v3}, Landroidx/core/app/ActivityRecreator$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_3
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Lcom/livefront/bridge/BridgeDelegate;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$uuid:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v1, Ljava/lang/String;

    .line 154
    .line 155
    iget-object v2, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$bundle:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v2, Landroid/os/Bundle;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 174
    .line 175
    .line 176
    iget-object v0, v0, Lcom/livefront/bridge/BridgeDelegate;->mDiskHandler:Lcom/livefront/bridge/disk/FileDiskHandler;

    .line 177
    .line 178
    iget-object v3, v0, Lcom/livefront/bridge/disk/FileDiskHandler;->mKeyByteMap:Ljava/io/Serializable;

    .line 179
    .line 180
    check-cast v3, Lj$/util/concurrent/ConcurrentHashMap;

    .line 181
    .line 182
    invoke-virtual {v3, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    new-instance v3, Ljava/io/File;

    .line 186
    .line 187
    iget-object v0, v0, Lcom/livefront/bridge/disk/FileDiskHandler;->mDirectory:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Ljava/io/File;

    .line 190
    .line 191
    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    .line 195
    .line 196
    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 197
    .line 198
    .line 199
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 200
    .line 201
    .line 202
    :catch_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :catchall_1
    move-exception p0

    .line 207
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 208
    .line 209
    .line 210
    :catch_2
    throw p0

    .line 211
    :catch_3
    :goto_2
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v0, Lcom/livefront/bridge/BridgeDelegate;

    .line 214
    .line 215
    iget-object v0, v0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 216
    .line 217
    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$uuid:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v1, Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_2

    .line 226
    .line 227
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v0, Lcom/livefront/bridge/BridgeDelegate;

    .line 230
    .line 231
    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate$3;->val$uuid:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v1, Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    new-instance v2, Landroidx/core/app/ActivityRecreator$1;

    .line 239
    .line 240
    const/16 v3, 0xd

    .line 241
    .line 242
    const/4 v4, 0x0

    .line 243
    invoke-direct {v2, v3, v0, v1, v4}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 244
    .line 245
    .line 246
    iget-object v0, v0, Lcom/livefront/bridge/BridgeDelegate;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 247
    .line 248
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 249
    .line 250
    .line 251
    :cond_2
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v0, Lcom/livefront/bridge/BridgeDelegate;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 256
    .line 257
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v0, Lcom/livefront/bridge/BridgeDelegate;

    .line 263
    .line 264
    iget-object v0, v0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_3

    .line 271
    .line 272
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v0, Lcom/livefront/bridge/BridgeDelegate;

    .line 275
    .line 276
    iget-object v0, v0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    .line 277
    .line 278
    if-eqz v0, :cond_3

    .line 279
    .line 280
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate$3;->this$0:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast p0, Lcom/livefront/bridge/BridgeDelegate;

    .line 283
    .line 284
    iget-object p0, p0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    .line 285
    .line 286
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 287
    .line 288
    .line 289
    :cond_3
    return-void

    .line 290
    nop

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
