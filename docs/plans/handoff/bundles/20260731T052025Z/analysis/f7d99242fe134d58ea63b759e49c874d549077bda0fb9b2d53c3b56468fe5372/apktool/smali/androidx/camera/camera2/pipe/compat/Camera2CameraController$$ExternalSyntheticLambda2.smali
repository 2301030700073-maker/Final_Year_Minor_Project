.class public final synthetic Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final invoke$androidx$camera$camera2$pipe$compat$Camera2CameraController$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Throwable;

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    sget-object v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$1:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 11
    .line 12
    const-string v0, "CXCP"

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " is closed"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p1

    .line 35
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->onControllerClosed(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->closedDeferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 41
    .line 42
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-static {p0, p1}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    monitor-exit p1

    .line 56
    throw p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    .line 7
    .line 8
    check-cast p1, Lkotlin/Unit;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->_isForeground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p1

    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit p1

    .line 26
    throw p0

    .line 27
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;->invoke$androidx$camera$camera2$pipe$compat$Camera2CameraController$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
