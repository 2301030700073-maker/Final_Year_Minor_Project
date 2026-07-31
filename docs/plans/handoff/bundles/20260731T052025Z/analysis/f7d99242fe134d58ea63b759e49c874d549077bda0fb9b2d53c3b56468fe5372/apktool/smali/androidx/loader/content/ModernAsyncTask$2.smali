.class public final Landroidx/loader/content/ModernAsyncTask$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/loader/content/ModernAsyncTask$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Landroidx/loader/content/ModernAsyncTask$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v2, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/BufferedWriter;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    iput v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 50
    .line 51
    :cond_1
    monitor-exit v0

    .line 52
    :goto_0
    return-object v1

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0

    .line 55
    :pswitch_0
    iget-object p0, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Ljava/lang/Runnable;

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :pswitch_1
    iget-object p0, p0, Landroidx/loader/content/ModernAsyncTask$2;->this$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    iget-object v2, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    .line 74
    .line 75
    const/16 v2, 0xa

    .line 76
    .line 77
    :try_start_1
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .line 79
    .line 80
    :try_start_2
    iget-object v2, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/loader/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1
    :try_end_2
    .catch Landroidx/core/os/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    goto :goto_2

    .line 87
    :catch_0
    move-exception v2

    .line 88
    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    :goto_2
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->postResult(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :catchall_1
    move-exception v2

    .line 102
    goto :goto_3

    .line 103
    :cond_2
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    :goto_3
    :try_start_5
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    .line 106
    .line 107
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 108
    :catchall_2
    move-exception v0

    .line 109
    invoke-virtual {p0, v1}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->postResult(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
