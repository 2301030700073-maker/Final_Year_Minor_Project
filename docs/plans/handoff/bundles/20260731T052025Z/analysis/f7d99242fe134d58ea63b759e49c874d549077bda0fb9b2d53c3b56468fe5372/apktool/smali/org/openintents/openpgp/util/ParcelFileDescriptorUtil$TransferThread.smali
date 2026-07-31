.class public final Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;
.super Ljava/lang/Thread;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mIn:Ljava/io/InputStream;

.field public final mOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    const-string v0, "IPC Transfer Thread"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mIn:Ljava/io/InputStream;

    .line 7
    .line 8
    iput-object p2, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mOut:Ljava/io/OutputStream;

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
    iget-object v0, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mOut:Ljava/io/OutputStream;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;->mIn:Ljava/io/InputStream;

    .line 4
    .line 5
    const/16 v1, 0x1000

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    :goto_0
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-lez v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_4

    .line 22
    :catch_0
    move-exception v1

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 25
    .line 26
    .line 27
    :catch_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 28
    .line 29
    .line 30
    goto :goto_3

    .line 31
    :goto_2
    :try_start_3
    const-string v3, "IOException when writing to out"

    .line 32
    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {v1, v3, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_2
    :goto_3
    return-void

    .line 40
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 41
    .line 42
    .line 43
    :catch_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 44
    .line 45
    .line 46
    :catch_4
    throw v1
.end method
