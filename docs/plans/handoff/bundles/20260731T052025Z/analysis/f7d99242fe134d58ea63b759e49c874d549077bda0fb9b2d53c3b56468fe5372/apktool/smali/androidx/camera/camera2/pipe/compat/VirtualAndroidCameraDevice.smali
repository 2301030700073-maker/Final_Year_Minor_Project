.class public final Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;


# instance fields
.field public final androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

.field public disconnected:Z

.field public final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final createCaptureRequest-2PPcXtw(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string p0, "CXCP"

    .line 9
    .line 10
    const-string p1, "createCaptureRequest failed: Virtual device disconnected"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createCaptureRequest-2PPcXtw(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    return-object p0

    .line 27
    :goto_1
    monitor-exit v0

    .line 28
    throw p0
.end method

.method public final createCaptureSession(Landroidx/camera/camera2/pipe/compat/SessionConfigData;)Z
    .locals 2

    .line 35
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_0

    .line 37
    const-string p0, "CXCP"

    .line 38
    const-string v1, "createCaptureSession failed: Virtual device disconnected"

    .line 39
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 41
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 42
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createCaptureSession(Landroidx/camera/camera2/pipe/compat/SessionConfigData;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final createCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string p0, "CXCP"

    .line 12
    .line 13
    const-string p1, "createCaptureSession failed: Virtual device disconnected"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :goto_0
    monitor-exit v0

    .line 32
    return p0

    .line 33
    :goto_1
    monitor-exit v0

    .line 34
    throw p0
.end method

.method public final createCaptureSessionByOutputConfigurations(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string p0, "CXCP"

    .line 12
    .line 13
    const-string p1, "createCaptureSessionByOutputConfigurations failed: Virtual device disconnected"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    check-cast p2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createCaptureSessionByOutputConfigurations(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    .line 30
    .line 31
    .line 32
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return p0

    .line 35
    :goto_1
    monitor-exit v0

    .line 36
    throw p0
.end method

.method public final createConstrainedHighSpeedCaptureSession(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string p0, "CXCP"

    .line 12
    .line 13
    const-string p1, "createConstrainedHighSpeedCaptureSession failed: Virtual device disconnected"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    check-cast p2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    .line 30
    .line 31
    .line 32
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return p0

    .line 35
    :goto_1
    monitor-exit v0

    .line 36
    throw p0
.end method

.method public final createExtensionSession(Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string p0, "CXCP"

    .line 9
    .line 10
    const-string v1, "createExtensionSession failed: Virtual device disconnected"

    .line 11
    .line 12
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionStateCallback:Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->onSessionFinalized()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createExtensionSession(Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;)Z

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :goto_0
    monitor-exit v0

    .line 31
    return p0

    .line 32
    :goto_1
    monitor-exit v0

    .line 33
    throw p0
.end method

.method public final createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string p0, "CXCP"

    .line 9
    .line 10
    const-string p1, "createReprocessCaptureRequest failed: Virtual device disconnected"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    return-object p0

    .line 27
    :goto_1
    monitor-exit v0

    .line 28
    throw p0
.end method

.method public final createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string p0, "CXCP"

    .line 12
    .line 13
    const-string p1, "createReprocessableCaptureSession failed: Virtual device disconnected"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    check-cast p3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 19
    .line 20
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    .line 30
    .line 31
    .line 32
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return p0

    .line 35
    :goto_1
    monitor-exit v0

    .line 36
    throw p0
.end method

.method public final createReprocessableCaptureSessionByConfigurations(Landroidx/camera/camera2/pipe/compat/InputConfigData;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string p0, "CXCP"

    .line 12
    .line 13
    const-string p1, "createReprocessableCaptureSessionByConfigurations failed: Virtual device disconnected"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    check-cast p3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 19
    .line 20
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createReprocessableCaptureSessionByConfigurations(Landroidx/camera/camera2/pipe/compat/InputConfigData;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    .line 30
    .line 31
    .line 32
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return p0

    .line 35
    :goto_1
    monitor-exit v0

    .line 36
    throw p0
.end method

.method public final disconnect$camera_camera2_pipe()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0

    .line 11
    throw p0
.end method

.method public final getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final onCameraAudioRestrictionUpdated-LwUUkyU(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onCameraAudioRestrictionUpdated-LwUUkyU(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onDeviceClosed()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onDeviceClosed()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onDeviceClosing()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onDeviceClosing()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
