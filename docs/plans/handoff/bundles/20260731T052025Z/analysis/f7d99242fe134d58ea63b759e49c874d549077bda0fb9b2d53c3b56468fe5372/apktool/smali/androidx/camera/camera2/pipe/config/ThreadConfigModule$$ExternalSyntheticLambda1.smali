.class public final synthetic Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/zxing/PlanarYUVLuminanceSource;

.field public final synthetic f$1:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;


# direct methods
.method public synthetic constructor <init>(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;->f$0:Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;->THREAD:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;->f$0:Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraExecutor:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Landroidx/camera/camera2/pipe/core/AndroidThreads;->factory:Ljava/util/concurrent/ThreadFactory;

    .line 21
    .line 22
    const-string v3, "CXCP-Camera-E"

    .line 23
    .line 24
    invoke-static {v0, v3}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->withPrefix(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget p0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 29
    .line 30
    new-instance v3, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v3, p0, v0}, Landroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda0;-><init>(ILandroidx/camera/camera2/pipe/core/AndroidThreads$$ExternalSyntheticLambda1;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    invoke-static {p0, v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 v3, 0x7

    .line 46
    invoke-direct {p0, v3, v0}, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1, p0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addShutdownAction(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-object v0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v0, Landroid/os/HandlerThread;

    .line 61
    .line 62
    const-string v3, "CXCP-Camera-H"

    .line 63
    .line 64
    iget p0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 65
    .line 66
    invoke-direct {v0, v3, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    .line 71
    .line 72
    new-instance p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    const/4 v3, 0x6

    .line 75
    invoke-direct {p0, v3, v0}, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1, p0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addShutdownAction(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    new-instance p0, Landroid/os/Handler;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
