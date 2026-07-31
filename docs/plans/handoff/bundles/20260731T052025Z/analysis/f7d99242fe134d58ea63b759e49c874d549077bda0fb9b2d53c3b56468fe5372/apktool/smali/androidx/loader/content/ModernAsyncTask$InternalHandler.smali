.class public final Landroidx/loader/content/ModernAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;

    .line 4
    .line 5
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object p1, p0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    aget-object p0, p0, v1

    .line 23
    .line 24
    iget-object v2, p1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v2, :cond_5

    .line 32
    .line 33
    iget-object p0, p1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    .line 34
    .line 35
    :try_start_0
    iget-object v1, p1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    .line 36
    .line 37
    iget-object v2, v1, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 38
    .line 39
    if-ne v2, p1, :cond_4

    .line 40
    .line 41
    iget-boolean v2, v1, Landroidx/loader/content/AsyncTaskLoader;->mProcessingChange:Z

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    iget-boolean v2, v1, Landroidx/loader/content/AsyncTaskLoader;->mStarted:Z

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/loader/content/AsyncTaskLoader;->forceLoad()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iput-boolean v0, v1, Landroidx/loader/content/AsyncTaskLoader;->mContentChanged:Z

    .line 54
    .line 55
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 56
    .line 57
    .line 58
    iput-object v3, v1, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/loader/content/AsyncTaskLoader;->executePendingTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_5
    :try_start_1
    iget-object v2, p1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    .line 73
    .line 74
    iget-object v4, v2, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 75
    .line 76
    if-eq v4, p1, :cond_8

    .line 77
    .line 78
    iget-object p0, v2, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 79
    .line 80
    if-ne p0, p1, :cond_a

    .line 81
    .line 82
    iget-boolean p0, v2, Landroidx/loader/content/AsyncTaskLoader;->mProcessingChange:Z

    .line 83
    .line 84
    if-eqz p0, :cond_7

    .line 85
    .line 86
    iget-boolean p0, v2, Landroidx/loader/content/AsyncTaskLoader;->mStarted:Z

    .line 87
    .line 88
    if-eqz p0, :cond_6

    .line 89
    .line 90
    invoke-virtual {v2}, Landroidx/loader/content/AsyncTaskLoader;->forceLoad()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    iput-boolean v0, v2, Landroidx/loader/content/AsyncTaskLoader;->mContentChanged:Z

    .line 95
    .line 96
    :cond_7
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 97
    .line 98
    .line 99
    iput-object v3, v2, Landroidx/loader/content/AsyncTaskLoader;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 100
    .line 101
    invoke-virtual {v2}, Landroidx/loader/content/AsyncTaskLoader;->executePendingTask()V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_8
    iget-boolean v0, v2, Landroidx/loader/content/AsyncTaskLoader;->mAbandoned:Z

    .line 106
    .line 107
    if-eqz v0, :cond_9

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_9
    iput-boolean v1, v2, Landroidx/loader/content/AsyncTaskLoader;->mProcessingChange:Z

    .line 111
    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 113
    .line 114
    .line 115
    iput-object v3, v2, Landroidx/loader/content/AsyncTaskLoader;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 116
    .line 117
    invoke-virtual {v2, p0}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    .line 119
    .line 120
    :cond_a
    :goto_2
    iget-object p0, p1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 123
    .line 124
    .line 125
    :goto_3
    const/4 p0, 0x3

    .line 126
    iput p0, p1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mStatus:I

    .line 127
    .line 128
    return-void

    .line 129
    :catchall_1
    move-exception p0

    .line 130
    iget-object p1, p1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 133
    .line 134
    .line 135
    throw p0
.end method
