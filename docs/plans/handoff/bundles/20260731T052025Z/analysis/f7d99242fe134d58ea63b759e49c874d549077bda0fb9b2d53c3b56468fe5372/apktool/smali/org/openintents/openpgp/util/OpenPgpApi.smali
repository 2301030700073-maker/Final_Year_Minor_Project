.class public Lorg/openintents/openpgp/util/OpenPgpApi;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;,
        Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;,
        Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;,
        Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;,
        Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;,
        Lorg/openintents/openpgp/util/OpenPgpApi$PermissionPingCallback;,
        Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPipeIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mService:Lorg/openintents/openpgp/IOpenPgpService2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/openintents/openpgp/IOpenPgpService2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mPipeIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    .line 14
    .line 15
    return-void
.end method

.method public static closeLoudly(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v1, "IOException when closing ParcelFileDescriptor!"

    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public final executeApi(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;I)Landroid/content/Intent;
    .locals 2

    .line 99
    :try_start_0
    const-string v0, "api_version"

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    invoke-interface {v0, p1, p2, p3}, Lorg/openintents/openpgp/IOpenPgpService2;->execute(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;I)Landroid/content/Intent;

    move-result-object p1

    .line 101
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-static {p2}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 103
    :try_start_1
    const-string p1, "Exception in executeApi call"

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 105
    const-string v0, "result_code"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string p3, "error"

    new-instance v0, Lorg/openintents/openpgp/OpenPgpError;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/openintents/openpgp/OpenPgpError;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-static {p2}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    return-object p1

    :goto_0
    invoke-static {p2}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    .line 110
    throw p0
.end method

.method public final executeApi(Landroid/content/Intent;Ljava/io/ByteArrayOutputStream;)Landroid/content/Intent;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mPipeIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lorg/openintents/openpgp/util/OpenPgpApi;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    .line 12
    .line 13
    invoke-interface {v3, v2}, Lorg/openintents/openpgp/IOpenPgpService2;->createOutputPipe(I)Landroid/os/ParcelFileDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 18
    .line 19
    invoke-direct {v4, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 20
    .line 21
    .line 22
    new-instance v5, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;

    .line 23
    .line 24
    invoke-direct {v5, v4, p2}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :goto_0
    move-object v1, v3

    .line 32
    goto :goto_5

    .line 33
    :goto_1
    move-object v1, v3

    .line 34
    goto :goto_4

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_5

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_4

    .line 39
    :cond_0
    move v2, v0

    .line 40
    move-object v3, v1

    .line 41
    move-object v5, v3

    .line 42
    :goto_2
    invoke-virtual {p0, p1, v1, v2}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApi(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_3
    invoke-static {v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :goto_4
    :try_start_2
    const-string p1, "Exception in executeApi call"

    .line 61
    .line 62
    new-array p2, v0, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {p0, p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Landroid/content/Intent;

    .line 68
    .line 69
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string p2, "result_code"

    .line 73
    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    const-string p2, "error"

    .line 78
    .line 79
    new-instance v0, Lorg/openintents/openpgp/OpenPgpError;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-direct {v0, p0}, Lorg/openintents/openpgp/OpenPgpError;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    .line 92
    .line 93
    .line 94
    return-object p1

    .line 95
    :goto_5
    invoke-static {v1}, Lorg/openintents/openpgp/util/OpenPgpApi;->closeLoudly(Landroid/os/ParcelFileDescriptor;)V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public final executeApiAsync(Landroid/content/Intent;Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;
    .locals 8

    .line 1
    new-instance v0, Landroid/os/Messenger;

    .line 2
    .line 3
    new-instance v1, Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v2, Lorg/openintents/openpgp/util/OpenPgpApi$1;

    .line 6
    .line 7
    invoke-direct {v2, p4}, Lorg/openintents/openpgp/util/OpenPgpApi$1;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "progress_messenger"

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    new-instance v2, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;

    .line 22
    .line 23
    move-object v3, p0

    .line 24
    move-object v4, p1

    .line 25
    move-object v5, p2

    .line 26
    move-object v6, p3

    .line 27
    move-object v7, p4

    .line 28
    invoke-direct/range {v2 .. v7}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi;Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-virtual {v2, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35
    .line 36
    .line 37
    return-object v2
.end method

.method public final executeApiAsync(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;)V
    .locals 1

    .line 38
    new-instance v0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpAsyncTask;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi;Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;)V

    .line 39
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
