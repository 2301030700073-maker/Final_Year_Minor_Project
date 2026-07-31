.class public abstract Lorg/apache/commons/io/output/ThresholdingOutputStream;
.super Ljava/io/OutputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final threshold:I

.field public thresholdExceeded:Z

.field public written:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2000

    .line 5
    .line 6
    iput v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final checkThreshold(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 6
    .line 7
    int-to-long v2, p1

    .line 8
    add-long/2addr v0, v2

    .line 9
    iget p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    .line 10
    .line 11
    int-to-long v2, p1

    .line 12
    cmp-long p1, v0, v2

    .line 13
    .line 14
    if-lez p1, :cond_2

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    .line 18
    .line 19
    check-cast p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->outputFile:Ljava/io/File;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->currentOutputStream:Ljava/io/OutputStream;

    .line 26
    .line 27
    instance-of v0, p1, Ljava/io/ByteArrayOutputStream;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    check-cast p1, Ljava/io/ByteArrayOutputStream;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->fileFactory:Landroidx/navigation/internal/NavContext;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/navigation/internal/NavContext;->createFile()Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->outputFile:Ljava/io/File;

    .line 40
    .line 41
    new-instance v0, Ljava/io/FileOutputStream;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->outputFile:Ljava/io/File;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->currentOutputStream:Ljava/io/OutputStream;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    const-string p0, "currentOutputStream must be memory-based at this point!"

    .line 55
    .line 56
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    const-string p0, "thresholdReached must not be called if we already have an output file!"

    .line 61
    .line 62
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    check-cast p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->currentOutputStream:Ljava/io/OutputStream;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    check-cast p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->currentOutputStream:Ljava/io/OutputStream;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final write(I)V
    .locals 4

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 36
    move-object v0, p0

    check-cast v0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;

    .line 37
    iget-object v0, v0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->currentOutputStream:Ljava/io/OutputStream;

    .line 38
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 39
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    return-void
.end method

.method public final write([B)V
    .locals 4

    .line 30
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 31
    move-object v0, p0

    check-cast v0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;

    .line 32
    iget-object v0, v0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->currentOutputStream:Ljava/io/OutputStream;

    .line 33
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 34
    iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    return-void
.end method

.method public final write([BII)V
    .locals 2

    .line 1
    sget v0, Lorg/apache/commons/io/IOUtils;->$r8$clinit:I

    .line 2
    .line 3
    const-string v0, "byte array"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    array-length v0, p1

    .line 9
    invoke-static {p2, p3, v0}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize(III)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 13
    .line 14
    .line 15
    move-object v0, p0

    .line 16
    check-cast v0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->currentOutputStream:Ljava/io/OutputStream;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 21
    .line 22
    .line 23
    iget-wide p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 24
    .line 25
    int-to-long v0, p3

    .line 26
    add-long/2addr p1, v0

    .line 27
    iput-wide p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 28
    .line 29
    return-void
.end method
