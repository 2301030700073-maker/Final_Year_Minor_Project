.class public interface abstract Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract abortCaptures()Z
.end method

.method public abstract capture(Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
.end method

.method public abstract captureBurst(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
.end method

.method public abstract finalizeOutputConfigurations(Ljava/util/List;)Z
.end method

.method public abstract getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;
.end method

.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public abstract setRepeatingBurst(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
.end method

.method public abstract setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
.end method

.method public abstract stopRepeating()Z
.end method
