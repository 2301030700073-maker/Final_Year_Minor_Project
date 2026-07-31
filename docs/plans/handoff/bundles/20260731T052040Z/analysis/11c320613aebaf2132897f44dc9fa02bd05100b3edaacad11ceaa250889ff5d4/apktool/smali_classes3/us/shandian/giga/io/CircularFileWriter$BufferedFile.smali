.class public final Lus/shandian/giga/io/CircularFileWriter$BufferedFile;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public length:J

.field public offset:J

.field public queue:[B

.field public queueSize:I

.field public final target:Lorg/schabi/newpipe/streams/io/SharpStream;

.field public final synthetic this$0:Lus/shandian/giga/io/CircularFileWriter;


# direct methods
.method public constructor <init>(Lus/shandian/giga/io/CircularFileWriter;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->this$0:Lus/shandian/giga/io/CircularFileWriter;

    .line 5
    .line 6
    const/16 p1, 0x2000

    .line 7
    .line 8
    new-array p1, p1, [B

    .line 9
    .line 10
    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 11
    .line 12
    new-instance p1, Lus/shandian/giga/io/FileStream;

    .line 13
    .line 14
    invoke-direct {p1, p2}, Lus/shandian/giga/io/FileStream;-><init>(Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lus/shandian/giga/io/CircularFileWriter;Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->this$0:Lus/shandian/giga/io/CircularFileWriter;

    const/16 p1, 0x2000

    .line 21
    new-array p1, p1, [B

    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 22
    iput-object p2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 4

    .line 1
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 2
    .line 3
    iget v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    .line 4
    .line 5
    invoke-virtual {p0, v1, v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->writeProof(I[B)V

    .line 6
    .line 7
    .line 8
    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 9
    .line 10
    iget v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    add-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    .line 18
    .line 19
    return-void
.end method

.method public final getOffset()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 2
    .line 3
    iget p0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    .line 4
    .line 5
    int-to-long v2, p0

    .line 6
    add-long/2addr v0, v2

    .line 7
    return-wide v0
.end method

.method public final seek(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 9
    .line 10
    iget-object p0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "["

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "]"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    iget-wide v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 37
    .line 38
    iget-wide v3, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 39
    .line 40
    iget p0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    .line 41
    .line 42
    const-string v5, "offset="

    .line 43
    .line 44
    const-string v6, "  length="

    .line 45
    .line 46
    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "  queue="

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, "  absLength="

    .line 62
    .line 63
    invoke-static {v1, p0, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public final write([BII)V
    .locals 3

    .line 1
    :goto_0
    if-lez p3, :cond_1

    .line 2
    .line 3
    iget v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    .line 4
    .line 5
    iget-object v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-lt v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    array-length v1, v1

    .line 18
    sub-int v0, v1, v0

    .line 19
    .line 20
    :goto_1
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 25
    .line 26
    iget v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    .line 27
    .line 28
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    .line 32
    .line 33
    add-int/2addr v1, v0

    .line 34
    iput v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    .line 35
    .line 36
    sub-int/2addr p3, v0

    .line 37
    add-int/2addr p2, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 40
    .line 41
    iget p3, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    .line 42
    .line 43
    int-to-long v0, p3

    .line 44
    add-long/2addr p1, v0

    .line 45
    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 46
    .line 47
    cmp-long p3, p1, v0

    .line 48
    .line 49
    if-lez p3, :cond_2

    .line 50
    .line 51
    iput-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public final writeProof(I[B)V
    .locals 6

    .line 1
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->this$0:Lus/shandian/giga/io/CircularFileWriter;

    .line 2
    .line 3
    iget-object v0, v0, Lus/shandian/giga/io/CircularFileWriter;->onWriteError:Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 9
    .line 10
    invoke-virtual {p0, p2, v1, p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 15
    .line 16
    invoke-virtual {v0, p2, v1, p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->this$0:Lus/shandian/giga/io/CircularFileWriter;

    .line 22
    .line 23
    iget-object v2, v2, Lus/shandian/giga/io/CircularFileWriter;->onWriteError:Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    .line 24
    .line 25
    iget-object v2, v2, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;->f$0:Lus/shandian/giga/postprocessing/Postprocessing;

    .line 26
    .line 27
    iget-object v3, v2, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    iput v4, v3, Lus/shandian/giga/get/DownloadMission;->psState:I

    .line 31
    .line 32
    iget-object v3, v2, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 33
    .line 34
    const/16 v5, 0x3f1

    .line 35
    .line 36
    invoke-virtual {v3, v5, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    :try_start_1
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    :goto_1
    :try_start_2
    iget-object v3, v2, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 41
    .line 42
    iget v3, v3, Lus/shandian/giga/get/DownloadMission;->psState:I

    .line 43
    .line 44
    if-ne v3, v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception v3

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    monitor-exit v2

    .line 53
    goto :goto_3

    .line 54
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 56
    :catch_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const-string v4, "got InterruptedException"

    .line 65
    .line 66
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :goto_3
    iget-object v2, v2, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 70
    .line 71
    iget v2, v2, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 72
    .line 73
    const/4 v3, -0x1

    .line 74
    if-ne v2, v3, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    throw v0
.end method
