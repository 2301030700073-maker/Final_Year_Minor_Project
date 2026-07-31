.class public final Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;
.super Ljava/lang/Thread;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final dataSink:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;

.field public final inputStream:Ljava/io/BufferedInputStream;

.field public sinkResult:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Ljava/io/BufferedInputStream;)V
    .locals 1

    .line 1
    const-string v0, "IPC Transfer Thread (FROM service)"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->dataSink:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;

    .line 7
    .line 8
    iput-object p2, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->inputStream:Ljava/io/BufferedInputStream;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->inputStream:Ljava/io/BufferedInputStream;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->dataSink:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;

    .line 4
    .line 5
    invoke-interface {v1, v0}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;->processData(Ljava/io/BufferedInputStream;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->sinkResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_2

    .line 17
    :catch_0
    move-exception v1

    .line 18
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    instance-of v3, v2, Landroid/system/ErrnoException;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    check-cast v2, Landroid/system/ErrnoException;

    .line 28
    .line 29
    iget v2, v2, Landroid/system/ErrnoException;->errno:I

    .line 30
    .line 31
    sget v3, Landroid/system/OsConstants;->EPIPE:I

    .line 32
    .line 33
    if-ne v2, v3, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v2, v4

    .line 38
    :goto_0
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const-string v1, "Stopped read due to broken pipe (other end closed pipe?)"

    .line 41
    .line 42
    new-array v2, v4, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string v2, "IOException while reading from in"

    .line 49
    .line 50
    new-array v3, v4, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {v1, v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSinkTransferThread;->sinkResult:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 59
    .line 60
    .line 61
    :catch_1
    return-void

    .line 62
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 63
    .line 64
    .line 65
    :catch_2
    throw p0
.end method
