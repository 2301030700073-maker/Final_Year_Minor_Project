.class public final Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public J$0:J

.field public L$0:Ljava/lang/String;

.field public L$1:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

.field public L$2:Lkotlin/jvm/functions/Function1;

.field public L$3:Lkotlin/jvm/internal/Ref$IntRef;

.field public L$4:Ljava/lang/AutoCloseable;

.field public L$5:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->this$0:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->this$0:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, v0, v0, p0}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->openCameraWithRetry-aeCOTgg(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
