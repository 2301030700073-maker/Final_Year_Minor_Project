.class public interface abstract Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;


# virtual methods
.method public abstract createCaptureRequest-2PPcXtw(I)Landroid/hardware/camera2/CaptureRequest$Builder;
.end method

.method public abstract createCaptureSession(Landroidx/camera/camera2/pipe/compat/SessionConfigData;)Z
.end method

.method public abstract createCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
.end method

.method public abstract createCaptureSessionByOutputConfigurations(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
.end method

.method public abstract createConstrainedHighSpeedCaptureSession(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
.end method

.method public abstract createExtensionSession(Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;)Z
.end method

.method public abstract createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
.end method

.method public abstract createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
.end method

.method public abstract createReprocessableCaptureSessionByConfigurations(Landroidx/camera/camera2/pipe/compat/InputConfigData;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
.end method

.method public abstract getCameraId-Dz_R5H8()Ljava/lang/String;
.end method

.method public abstract onCameraAudioRestrictionUpdated-LwUUkyU(I)V
.end method

.method public abstract onDeviceClosed()V
.end method

.method public abstract onDeviceClosing()V
.end method
