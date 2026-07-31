.class public final Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;


# instance fields
.field public final callbackExecutor:Ljava/util/concurrent/Executor;

.field public final cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

.field public final cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

.field public final device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

.field public final extensionSessionMap:Ljava/util/HashMap;

.field public final frameNumbers:Lkotlinx/atomicfu/AtomicLong;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/camera/camera2/pipe/core/HandlerExecutor;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    .line 16
    .line 17
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 18
    .line 19
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    sget-object p1, Landroidx/camera/camera2/pipe/CameraInterop;->captureSessionIds:Lkotlinx/atomicfu/AtomicInt;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object p2, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    new-instance p1, Lkotlinx/atomicfu/AtomicLong;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    const-wide/16 p2, 0x0

    .line 37
    .line 38
    iput-wide p2, p1, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 39
    .line 40
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->frameNumbers:Lkotlinx/atomicfu/AtomicLong;

    .line 41
    .line 42
    new-instance p1, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->extensionSessionMap:Ljava/util/HashMap;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final abortCaptures()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final capture(Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    const/16 v4, 0x21

    .line 17
    .line 18
    if-lt v1, v4, :cond_0

    .line 19
    .line 20
    :try_start_1
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;

    .line 21
    .line 22
    invoke-direct {v1, p0, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1, v3, v1}, Landroid/hardware/camera2/CameraExtensionSession;->capture(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;

    .line 33
    .line 34
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p0, p2, v4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;Ljava/util/LinkedHashMap;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1, v3, v1}, Landroid/hardware/camera2/CameraExtensionSession;->capture(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    return-object p0

    .line 51
    :goto_1
    instance-of p2, p1, Landroid/hardware/camera2/CameraAccessException;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    const-string v2, "CXCP"

    .line 55
    .line 56
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 57
    .line 58
    if-eqz p2, :cond_6

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "Failed to execute call: Camera encountered an error: "

    .line 63
    .line 64
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    check-cast p1, Landroid/hardware/camera2/CameraAccessException;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    const/4 v3, 0x1

    .line 88
    const/4 v4, 0x3

    .line 89
    if-eq p2, v3, :cond_4

    .line 90
    .line 91
    const/4 v5, 0x2

    .line 92
    if-eq p2, v5, :cond_3

    .line 93
    .line 94
    if-eq p2, v4, :cond_5

    .line 95
    .line 96
    const/4 v1, 0x4

    .line 97
    if-eq p2, v1, :cond_2

    .line 98
    .line 99
    const/4 v1, 0x5

    .line 100
    if-eq p2, v1, :cond_1

    .line 101
    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "Unexpected CameraAccessException: "

    .line 105
    .line 106
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    const/16 v1, 0xb

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_1
    move v1, v5

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    move v1, v3

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    const/4 v1, 0x6

    .line 127
    goto :goto_2

    .line 128
    :cond_4
    move v1, v4

    .line 129
    :cond_5
    :goto_2
    invoke-virtual {p0, v1, v0, v3}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_6
    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    if-nez p2, :cond_9

    .line 136
    .line 137
    instance-of p2, p1, Ljava/lang/SecurityException;

    .line 138
    .line 139
    if-nez p2, :cond_9

    .line 140
    .line 141
    instance-of p2, p1, Ljava/lang/UnsupportedOperationException;

    .line 142
    .line 143
    if-nez p2, :cond_9

    .line 144
    .line 145
    instance-of p2, p1, Ljava/lang/NullPointerException;

    .line 146
    .line 147
    if-eqz p2, :cond_7

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    instance-of p0, p1, Ljava/lang/IllegalStateException;

    .line 151
    .line 152
    if-eqz p0, :cond_8

    .line 153
    .line 154
    const-string p0, "Failed to execute call: Camera may be closed"

    .line 155
    .line 156
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_8
    throw p1

    .line 161
    :cond_9
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v3, "Failed to execute call: Unexpected exception: "

    .line 164
    .line 165
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    const/16 p1, 0x9

    .line 183
    .line 184
    invoke-virtual {p0, p1, v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    :goto_4
    const/4 p0, 0x0

    .line 188
    return-object p0
.end method

.method public final captureBurst(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    .line 19
    .line 20
    invoke-virtual {p0, v0, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraExtensionSession;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final finalizeOutputConfigurations(Ljava/util/List;)Z
    .locals 0

    .line 1
    const-string p0, "CXCP"

    .line 2
    .line 3
    const-string p1, "CameraExtensionSession does not support finalizeOutputConfigurations()"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInputSurface()Landroid/view/Surface;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final setRepeatingBurst(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, "CameraExtensionSession does not support setRepeatingBurst for more than oneCaptureRequest"

    .line 23
    .line 24
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public final setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    const/16 v4, 0x21

    .line 17
    .line 18
    if-lt v1, v4, :cond_0

    .line 19
    .line 20
    :try_start_1
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;

    .line 21
    .line 22
    invoke-direct {v1, p0, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1, v3, v1}, Landroid/hardware/camera2/CameraExtensionSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;

    .line 33
    .line 34
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p0, p2, v4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;Ljava/util/LinkedHashMap;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1, v3, v1}, Landroid/hardware/camera2/CameraExtensionSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    return-object p0

    .line 51
    :goto_1
    instance-of p2, p1, Landroid/hardware/camera2/CameraAccessException;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    const-string v2, "CXCP"

    .line 55
    .line 56
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 57
    .line 58
    if-eqz p2, :cond_6

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "Failed to execute call: Camera encountered an error: "

    .line 63
    .line 64
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    check-cast p1, Landroid/hardware/camera2/CameraAccessException;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    const/4 v3, 0x1

    .line 88
    const/4 v4, 0x3

    .line 89
    if-eq p2, v3, :cond_4

    .line 90
    .line 91
    const/4 v5, 0x2

    .line 92
    if-eq p2, v5, :cond_3

    .line 93
    .line 94
    if-eq p2, v4, :cond_5

    .line 95
    .line 96
    const/4 v1, 0x4

    .line 97
    if-eq p2, v1, :cond_2

    .line 98
    .line 99
    const/4 v1, 0x5

    .line 100
    if-eq p2, v1, :cond_1

    .line 101
    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "Unexpected CameraAccessException: "

    .line 105
    .line 106
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    const/16 v1, 0xb

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_1
    move v1, v5

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    move v1, v3

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    const/4 v1, 0x6

    .line 127
    goto :goto_2

    .line 128
    :cond_4
    move v1, v4

    .line 129
    :cond_5
    :goto_2
    invoke-virtual {p0, v1, v0, v3}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_6
    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    if-nez p2, :cond_9

    .line 136
    .line 137
    instance-of p2, p1, Ljava/lang/SecurityException;

    .line 138
    .line 139
    if-nez p2, :cond_9

    .line 140
    .line 141
    instance-of p2, p1, Ljava/lang/UnsupportedOperationException;

    .line 142
    .line 143
    if-nez p2, :cond_9

    .line 144
    .line 145
    instance-of p2, p1, Ljava/lang/NullPointerException;

    .line 146
    .line 147
    if-eqz p2, :cond_7

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    instance-of p0, p1, Ljava/lang/IllegalStateException;

    .line 151
    .line 152
    if-eqz p0, :cond_8

    .line 153
    .line 154
    const-string p0, "Failed to execute call: Camera may be closed"

    .line 155
    .line 156
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_8
    throw p1

    .line 161
    :cond_9
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v3, "Failed to execute call: Unexpected exception: "

    .line 164
    .line 165
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    const/16 p1, 0x9

    .line 183
    .line 184
    invoke-virtual {p0, p1, v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    :goto_4
    const/4 p0, 0x0

    .line 188
    return-object p0
.end method

.method public final stopRepeating()Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    :try_start_0
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraExtensionSession;->stopRepeating()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :catch_0
    move-exception v3

    .line 19
    instance-of v4, v3, Landroid/hardware/camera2/CameraAccessException;

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v6, "CXCP"

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 25
    .line 26
    if-eqz v4, :cond_5

    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v7, "Failed to execute call: Camera encountered an error: "

    .line 31
    .line 32
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    check-cast v3, Landroid/hardware/camera2/CameraAccessException;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const/4 v7, 0x3

    .line 56
    if-eq v4, v2, :cond_4

    .line 57
    .line 58
    const/4 v8, 0x2

    .line 59
    if-eq v4, v8, :cond_3

    .line 60
    .line 61
    if-eq v4, v7, :cond_2

    .line 62
    .line 63
    const/4 v7, 0x4

    .line 64
    if-eq v4, v7, :cond_1

    .line 65
    .line 66
    const/4 v7, 0x5

    .line 67
    if-eq v4, v7, :cond_0

    .line 68
    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v7, "Unexpected CameraAccessException: "

    .line 72
    .line 73
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    const/16 v7, 0xb

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move v7, v8

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    move v7, v2

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move v7, v1

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    const/4 v7, 0x6

    .line 96
    :cond_4
    :goto_0
    invoke-virtual {p0, v7, v0, v2}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 97
    .line 98
    .line 99
    :goto_1
    move-object p0, v5

    .line 100
    goto :goto_3

    .line 101
    :cond_5
    instance-of v4, v3, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    if-nez v4, :cond_8

    .line 104
    .line 105
    instance-of v4, v3, Ljava/lang/SecurityException;

    .line 106
    .line 107
    if-nez v4, :cond_8

    .line 108
    .line 109
    instance-of v4, v3, Ljava/lang/UnsupportedOperationException;

    .line 110
    .line 111
    if-nez v4, :cond_8

    .line 112
    .line 113
    instance-of v4, v3, Ljava/lang/NullPointerException;

    .line 114
    .line 115
    if-eqz v4, :cond_6

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_6
    instance-of p0, v3, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    if-eqz p0, :cond_7

    .line 121
    .line 122
    const-string p0, "Failed to execute call: Camera may be closed"

    .line 123
    .line 124
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_7
    throw v3

    .line 129
    :cond_8
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v7, "Failed to execute call: Unexpected exception: "

    .line 132
    .line 133
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    const/16 v3, 0x9

    .line 151
    .line 152
    invoke-virtual {p0, v3, v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :goto_3
    if-eqz p0, :cond_9

    .line 157
    .line 158
    move v1, v2

    .line 159
    :cond_9
    return v1
.end method

.method public final unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Landroid/hardware/camera2/CameraExtensionSession;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method
