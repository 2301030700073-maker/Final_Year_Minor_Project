.class public final synthetic Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/camera/core/impl/CameraPresenceProvider;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;II)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;->f$0:Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;->f$1:Ljava/util/List;

    .line 6
    .line 7
    iput p3, p0, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;->f$0:Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;->f$1:Ljava/util/List;

    .line 10
    .line 11
    iget p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;->f$2:I

    .line 12
    .line 13
    iget-object v3, v0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    iget-object v3, v0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v4, "Triggering refresh. Attempts left: "

    .line 33
    .line 34
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "CameraPresencePrvdr"

    .line 45
    .line 46
    invoke-static {v4, v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourcePresenceObservable:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->fetchData()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 54
    .line 55
    .line 56
    :cond_1
    sub-int/2addr p0, v1

    .line 57
    invoke-virtual {v0, p0, v2}, Landroidx/camera/core/impl/CameraPresenceProvider;->scheduleRetryAttempt(ILjava/util/List;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;->f$0:Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 62
    .line 63
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;->f$1:Ljava/util/List;

    .line 64
    .line 65
    iget p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;->f$2:I

    .line 66
    .line 67
    iget-object v3, v0, Landroidx/camera/core/impl/CameraPresenceProvider;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 68
    .line 69
    new-instance v4, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;

    .line 70
    .line 71
    invoke-direct {v4, v0, v2, p0, v1}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda10;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;II)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
