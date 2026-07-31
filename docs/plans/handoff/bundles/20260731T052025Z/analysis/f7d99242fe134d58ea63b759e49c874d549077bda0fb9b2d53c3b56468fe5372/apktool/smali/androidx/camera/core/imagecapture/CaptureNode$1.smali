.class public final Landroidx/camera/core/imagecapture/CaptureNode$1;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final onCaptureProcessProgressed(II)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/slf4j/helpers/Util;->mainThreadExecutor()Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Landroidx/camera/core/imagecapture/CaptureNode$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v0, p0, p2}, Landroidx/camera/core/imagecapture/CaptureNode$1$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/imagecapture/CaptureNode$1;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onCaptureStarted(I)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/slf4j/helpers/Util;->mainThreadExecutor()Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Landroidx/camera/core/imagecapture/CaptureNode$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/camera/core/imagecapture/CaptureNode$1$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/imagecapture/CaptureNode$1;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
