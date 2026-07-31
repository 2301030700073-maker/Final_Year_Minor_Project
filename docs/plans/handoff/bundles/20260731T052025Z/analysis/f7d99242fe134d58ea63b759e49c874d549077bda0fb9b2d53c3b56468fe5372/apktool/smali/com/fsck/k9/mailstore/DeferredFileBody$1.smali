.class public final Lcom/fsck/k9/mailstore/DeferredFileBody$1;
.super Lorg/apache/commons/io/output/ThresholdingOutputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public currentOutputStream:Ljava/io/OutputStream;

.field public final fileFactory:Landroidx/navigation/internal/NavContext;

.field public outputFile:Ljava/io/File;

.field public final synthetic this$0:Lcom/fsck/k9/mailstore/DeferredFileBody;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/DeferredFileBody;Landroidx/navigation/internal/NavContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->this$0:Lcom/fsck/k9/mailstore/DeferredFileBody;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->fileFactory:Landroidx/navigation/internal/NavContext;

    .line 7
    .line 8
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 9
    .line 10
    const/16 p2, 0x800

    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->currentOutputStream:Ljava/io/OutputStream;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 1
    invoke-super {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 5
    .line 6
    iget v2, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    .line 7
    .line 8
    int-to-long v2, v2

    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->currentOutputStream:Ljava/io/OutputStream;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->this$0:Lcom/fsck/k9/mailstore/DeferredFileBody;

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    instance-of v0, v1, Ljava/io/ByteArrayOutputStream;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->outputFile:Ljava/io/File;

    .line 22
    .line 23
    iput-object p0, v2, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "getFile must only be called in file-backed state!"

    .line 27
    .line 28
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    instance-of p0, v1, Ljava/io/ByteArrayOutputStream;

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iput-object p0, v2, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    const-string p0, "getData must only be called in memory-backed state!"

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
