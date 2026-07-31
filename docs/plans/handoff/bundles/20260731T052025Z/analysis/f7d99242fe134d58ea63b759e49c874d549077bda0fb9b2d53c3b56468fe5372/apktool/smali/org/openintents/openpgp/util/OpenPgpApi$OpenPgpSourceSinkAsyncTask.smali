.class public final Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;
.super Landroid/os/AsyncTask;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;


# instance fields
.field public final callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;

.field public final data:Landroid/content/Intent;

.field public final dataSink:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;

.field public final dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

.field public final synthetic this$0:Lorg/openintents/openpgp/util/OpenPgpApi;


# direct methods
.method public constructor <init>(Lorg/openintents/openpgp/util/OpenPgpApi;Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->this$0:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->data:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->dataSink:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->this$0:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->data:Landroid/content/Intent;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v1}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->getSizeForProgress()Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    const-string v5, "data_length"

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :catch_0
    move-exception p0

    .line 36
    move-object v5, v3

    .line 37
    goto :goto_4

    .line 38
    :cond_0
    const-string v4, "progress_messenger"

    .line 39
    .line 40
    invoke-virtual {v0, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v1}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->startPumpThread()Landroid/os/ParcelFileDescriptor;

    .line 44
    .line 45
    .line 46
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object v1, v3

    .line 49
    :goto_1
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->dataSink:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    :try_start_1
    iget-object v4, p1, Lorg/openintents/openpgp/util/OpenPgpApi;->mPipeIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iget-object v5, p1, Lorg/openintents/openpgp/util/OpenPgpApi;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    .line 60
    .line 61
    invoke-interface {v5, v4}, Lorg/openintents/openpgp/IOpenPgpService2;->createOutputPipe(I)Landroid/os/ParcelFileDescriptor;

    .line 62
    .line 63
    .line 64
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 66
    .line 67
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 68
    .line 69
    invoke-direct {v7, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    .line 74
    .line 75
    new-instance v7, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;

    .line 76
    .line 77
    invoke-direct {v7, p0, v6}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Ljava/io/BufferedInputStream;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :goto_2
    move-object v3, v5

    .line 85
    goto :goto_5

    .line 86
    :cond_2
    move v4, v2

    .line 87
    move-object v5, v3

    .line 88
    move-object v7, v5

    .line 89
    :goto_3
    invoke-virtual {p1, v0, v1, v4}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApi(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;I)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    if-nez v7, :cond_3

    .line 94
    .line 95
    new-instance p1, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;

    .line 96
    .line 97
    invoke-direct {p1, p0, v3}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;-><init>(Landroid/content/Intent;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    .line 99
    .line 100
    invoke-static {v5}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    .line 101
    .line 102
    .line 103
    return-object p1

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    goto :goto_2

    .line 106
    :catch_1
    move-exception p0

    .line 107
    goto :goto_4

    .line 108
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Thread;->join()V

    .line 109
    .line 110
    .line 111
    new-instance p1, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;

    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    iget-object v0, v7, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->sinkResult:Ljava/lang/Object;

    .line 120
    .line 121
    invoke-direct {p1, p0, v0}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;-><init>(Landroid/content/Intent;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    .line 123
    .line 124
    invoke-static {v5}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    .line 125
    .line 126
    .line 127
    return-object p1

    .line 128
    :cond_4
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    const-string p1, "result must be accessed only *after* the thread finished execution!"

    .line 131
    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 136
    :goto_4
    :try_start_5
    const-string p1, "Exception in executeApi call"

    .line 137
    .line 138
    new-array v0, v2, [Ljava/lang/Object;

    .line 139
    .line 140
    invoke-static {p0, p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    new-instance p1, Landroid/content/Intent;

    .line 144
    .line 145
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v0, "result_code"

    .line 149
    .line 150
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    const-string v0, "error"

    .line 154
    .line 155
    new-instance v1, Lorg/openintents/openpgp/OpenPgpError;

    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-direct {v1, p0}, Lorg/openintents/openpgp/OpenPgpError;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    new-instance p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;

    .line 168
    .line 169
    invoke-direct {p0, p1, v3}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;-><init>(Landroid/content/Intent;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 170
    .line 171
    .line 172
    invoke-static {v5}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    .line 173
    .line 174
    .line 175
    return-object p0

    .line 176
    :goto_5
    invoke-static {v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    .line 177
    .line 178
    .line 179
    throw p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;

    .line 2
    .line 3
    iget-object v0, p1, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;->apiResult:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object p1, p1, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;->sinkResult:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;

    .line 8
    .line 9
    invoke-interface {p0, v0, p1}, Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;->onReturn(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
