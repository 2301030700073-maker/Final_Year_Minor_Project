.class public abstract Landroidx/camera/camera2/pipe/CameraPipeKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final cameraPipeIds:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Landroidx/camera/camera2/pipe/CameraPipeKt;->cameraPipeIds:Lkotlinx/atomicfu/AtomicInt;

    .line 7
    .line 8
    return-void
.end method

.method public static final CameraPipe(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipeImpl;
    .locals 2

    .line 1
    const-string v0, "CameraPipe"

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/biometric/BiometricPrompt;

    .line 7
    .line 8
    const/16 v1, 0x11

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Landroidx/biometric/BiometricPrompt;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;->threadConfig:Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>(Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 21
    .line 22
    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;-><init>(Landroidx/biometric/BiometricPrompt;Lcom/google/zxing/PlanarYUVLuminanceSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/CameraPipeImpl;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 36
    .line 37
    .line 38
    throw p0
.end method
