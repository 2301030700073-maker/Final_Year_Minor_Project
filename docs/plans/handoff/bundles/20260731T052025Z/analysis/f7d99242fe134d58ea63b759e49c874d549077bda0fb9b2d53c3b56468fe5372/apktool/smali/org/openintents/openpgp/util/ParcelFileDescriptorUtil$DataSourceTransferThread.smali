.class public final Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;
.super Ljava/lang/Thread;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

.field public final outputStream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;


# direct methods
.method public constructor <init>(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 1

    .line 1
    const-string v0, "IPC Transfer Thread (TO service)"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    .line 7
    .line 8
    iput-object p2, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->outputStream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->outputStream:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->writeTo(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_2

    .line 14
    :catch_0
    move-exception v1

    .line 15
    :try_start_2
    iget-boolean v0, v0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->isCancelled:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string v0, "Stopped writing because operation was cancelled."

    .line 21
    .line 22
    new-array v1, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v3, v0, Landroid/system/ErrnoException;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    check-cast v0, Landroid/system/ErrnoException;

    .line 37
    .line 38
    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    .line 39
    .line 40
    sget v3, Landroid/system/OsConstants;->EPIPE:I

    .line 41
    .line 42
    if-ne v0, v3, :cond_1

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v0, v2

    .line 47
    :goto_0
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const-string v0, "Stopped writing due to broken pipe (other end closed pipe?)"

    .line 50
    .line 51
    new-array v1, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const-string v0, "IOException when writing to out"

    .line 58
    .line 59
    new-array v2, v2, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {v1, v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 65
    .line 66
    .line 67
    :catch_1
    return-void

    .line 68
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 69
    .line 70
    .line 71
    :catch_2
    throw v0
.end method
