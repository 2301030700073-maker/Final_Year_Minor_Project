.class public final Lcom/fsck/k9/controller/ProgressBodyFactory$1;
.super Ljava/util/TimerTask;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/controller/ProgressBodyFactory;

.field public final synthetic val$countingOutputStream:Lorg/apache/commons/io/output/CountingOutputStream;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/controller/ProgressBodyFactory;Lorg/apache/commons/io/output/CountingOutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/controller/ProgressBodyFactory$1;->this$0:Lcom/fsck/k9/controller/ProgressBodyFactory;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/controller/ProgressBodyFactory$1;->val$countingOutputStream:Lorg/apache/commons/io/output/CountingOutputStream;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/ProgressBodyFactory$1;->this$0:Lcom/fsck/k9/controller/ProgressBodyFactory;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/controller/ProgressBodyFactory;->progressListener:Landroidx/work/Configuration$Builder;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/controller/ProgressBodyFactory$1;->val$countingOutputStream:Lorg/apache/commons/io/output/CountingOutputStream;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v1, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const-wide/32 v3, 0x7fffffff

    .line 12
    .line 13
    .line 14
    cmp-long p0, v1, v3

    .line 15
    .line 16
    if-gtz p0, :cond_1

    .line 17
    .line 18
    long-to-int p0, v1

    .line 19
    iget-object v0, v0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lcom/fsck/k9/controller/MessagingController$4;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController$4;->this$0:Lcom/fsck/k9/controller/MessagingController;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 42
    .line 43
    invoke-virtual {v1, p0}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->updateProgress(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "The byte count "

    .line 53
    .line 54
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, " is too large to be converted to an int"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw v0
.end method
