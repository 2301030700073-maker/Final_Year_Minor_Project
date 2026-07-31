.class public abstract Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/util/OpenPgpApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OpenPgpDataSource"
.end annotation


# instance fields
.field public isCancelled:Z

.field public writeSidePfd:Landroid/os/ParcelFileDescriptor;


# virtual methods
.method public getSizeForProgress()Ljava/lang/Long;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final startPumpThread()Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->writeSidePfd:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    aget-object v1, v0, v1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aget-object v0, v0, v2

    .line 14
    .line 15
    iput-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->writeSidePfd:Landroid/os/ParcelFileDescriptor;

    .line 16
    .line 17
    new-instance v0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;

    .line 18
    .line 19
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 20
    .line 21
    iget-object v3, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->writeSidePfd:Landroid/os/ParcelFileDescriptor;

    .line 22
    .line 23
    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0, v2}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    const-string p0, "startPumpThread() must only be called once!"

    .line 34
    .line 35
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public abstract writeTo(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
.end method
