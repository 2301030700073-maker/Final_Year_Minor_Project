.class public final Lcom/fsck/k9/controller/ProgressBodyFactory;
.super Lokio/AsyncTimeout$Companion;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final progressListener:Landroidx/work/Configuration$Builder;


# direct methods
.method public constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lokio/AsyncTimeout$Companion;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/fsck/k9/controller/ProgressBodyFactory;->progressListener:Landroidx/work/Configuration$Builder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final copyData(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 8

    .line 1
    new-instance v1, Ljava/util/Timer;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v7, Lorg/apache/commons/io/output/CountingOutputStream;

    .line 7
    .line 8
    invoke-direct {v7, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    new-instance v2, Lcom/fsck/k9/controller/ProgressBodyFactory$1;

    .line 12
    .line 13
    invoke-direct {v2, p0, v7}, Lcom/fsck/k9/controller/ProgressBodyFactory$1;-><init>(Lcom/fsck/k9/controller/ProgressBodyFactory;Lorg/apache/commons/io/output/CountingOutputStream;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    const-wide/16 v5, 0x32

    .line 19
    .line 20
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v7}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    .line 25
    .line 26
    :try_start_2
    invoke-virtual {v7}, Lorg/apache/commons/io/output/CountingOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    move-object p0, v0

    .line 35
    goto :goto_1

    .line 36
    :catchall_1
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    :try_start_3
    invoke-virtual {v7}, Lorg/apache/commons/io/output/CountingOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_2
    move-exception v0

    .line 43
    move-object p1, v0

    .line 44
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    :goto_1
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 49
    .line 50
    .line 51
    throw p0
.end method
