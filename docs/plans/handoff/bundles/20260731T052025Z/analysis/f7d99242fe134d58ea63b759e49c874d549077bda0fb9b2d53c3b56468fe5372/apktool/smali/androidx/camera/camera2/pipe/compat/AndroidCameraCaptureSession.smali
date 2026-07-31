.class public Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;


# instance fields
.field public final callbackHandler:Landroid/os/Handler;

.field public final cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field public final cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

.field public final device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroid/os/Handler;)V
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
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 16
    .line 17
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 18
    .line 19
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->callbackHandler:Landroid/os/Handler;

    .line 20
    .line 21
    sget-object p0, Landroidx/camera/camera2/pipe/CameraInterop;->captureSessionIds:Lkotlinx/atomicfu/AtomicInt;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object p1, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final abortCaptures()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "%.3f ms"

    .line 4
    .line 5
    const-string v2, " - "

    .line 6
    .line 7
    const-string v3, "CXCP"

    .line 8
    .line 9
    const-string v4, "Failed to execute call: Unexpected exception: "

    .line 10
    .line 11
    const-string v5, "Failed to execute call: Camera encountered an error: "

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v7, "CXCP#abortCaptures-"

    .line 16
    .line 17
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 21
    .line 22
    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    const/4 v13, 0x1

    .line 40
    :try_start_0
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    iget-object v14, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :try_start_1
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    const-wide v15, 0x412e848000000000L    # 1000000.0

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :catchall_0
    move-exception v0

    .line 64
    const-wide v15, 0x412e848000000000L    # 1000000.0

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-wide v15, 0x412e848000000000L    # 1000000.0

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :try_start_2
    instance-of v10, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 78
    .line 79
    if-eqz v10, :cond_5

    .line 80
    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    const/4 v5, 0x3

    .line 107
    if-eq v4, v13, :cond_4

    .line 108
    .line 109
    const/4 v10, 0x2

    .line 110
    if-eq v4, v10, :cond_3

    .line 111
    .line 112
    if-eq v4, v5, :cond_2

    .line 113
    .line 114
    const/4 v5, 0x4

    .line 115
    if-eq v4, v5, :cond_1

    .line 116
    .line 117
    const/4 v5, 0x5

    .line 118
    if-eq v4, v5, :cond_0

    .line 119
    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v5, "Unexpected CameraAccessException: "

    .line 123
    .line 124
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    const/16 v5, 0xb

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    move v5, v10

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    move v5, v13

    .line 143
    goto :goto_0

    .line 144
    :cond_2
    move v5, v11

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    const/4 v5, 0x6

    .line 147
    :cond_4
    :goto_0
    invoke-virtual {v14, v5, v7, v13}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 148
    .line 149
    .line 150
    :goto_1
    move-object v0, v12

    .line 151
    goto :goto_3

    .line 152
    :catchall_1
    move-exception v0

    .line 153
    goto :goto_4

    .line 154
    :cond_5
    instance-of v5, v0, Ljava/lang/IllegalArgumentException;

    .line 155
    .line 156
    if-nez v5, :cond_8

    .line 157
    .line 158
    instance-of v5, v0, Ljava/lang/SecurityException;

    .line 159
    .line 160
    if-nez v5, :cond_8

    .line 161
    .line 162
    instance-of v5, v0, Ljava/lang/UnsupportedOperationException;

    .line 163
    .line 164
    if-nez v5, :cond_8

    .line 165
    .line 166
    instance-of v5, v0, Ljava/lang/NullPointerException;

    .line 167
    .line 168
    if-eqz v5, :cond_6

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_6
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    .line 172
    .line 173
    if-eqz v4, :cond_7

    .line 174
    .line 175
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 176
    .line 177
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_7
    throw v0

    .line 182
    :cond_8
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    const/16 v0, 0x9

    .line 202
    .line 203
    invoke-virtual {v14, v0, v7, v11}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :goto_3
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 208
    .line 209
    .line 210
    move-result-wide v4

    .line 211
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    long-to-double v4, v4

    .line 216
    div-double/2addr v4, v15

    .line 217
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    new-array v5, v13, [Ljava/lang/Object;

    .line 222
    .line 223
    aput-object v4, v5, v11

    .line 224
    .line 225
    invoke-static {v5, v13, v12, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    if-eqz v0, :cond_9

    .line 233
    .line 234
    move v11, v13

    .line 235
    :cond_9
    return v11

    .line 236
    :goto_4
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 237
    .line 238
    .line 239
    move-result-wide v4

    .line 240
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    long-to-double v4, v4

    .line 245
    div-double/2addr v4, v15

    .line 246
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    new-array v5, v13, [Ljava/lang/Object;

    .line 251
    .line 252
    aput-object v4, v5, v11

    .line 253
    .line 254
    invoke-static {v5, v13, v12, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    throw v0
.end method

.method public final capture(Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "%.3f ms"

    .line 4
    .line 5
    const-string v2, " - "

    .line 6
    .line 7
    const-string v3, "CXCP"

    .line 8
    .line 9
    const-string v4, "Failed to execute call: Unexpected exception: "

    .line 10
    .line 11
    const-string v5, "Failed to execute call: Camera encountered an error: "

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v7, "CXCP#capture-"

    .line 19
    .line 20
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 24
    .line 25
    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v13, 0x1

    .line 42
    :try_start_0
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v15, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    .line 51
    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    :try_start_1
    iget-object v10, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->callbackHandler:Landroid/os/Handler;

    .line 59
    .line 60
    move-object/from16 v11, p1

    .line 61
    .line 62
    move-object/from16 v14, p2

    .line 63
    .line 64
    invoke-virtual {v10, v11, v14, v0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_2
    instance-of v10, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 79
    .line 80
    if-eqz v10, :cond_5

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const/4 v5, 0x3

    .line 108
    if-eq v4, v13, :cond_4

    .line 109
    .line 110
    const/4 v10, 0x2

    .line 111
    if-eq v4, v10, :cond_3

    .line 112
    .line 113
    if-eq v4, v5, :cond_2

    .line 114
    .line 115
    const/4 v5, 0x4

    .line 116
    if-eq v4, v5, :cond_1

    .line 117
    .line 118
    const/4 v5, 0x5

    .line 119
    if-eq v4, v5, :cond_0

    .line 120
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v5, "Unexpected CameraAccessException: "

    .line 124
    .line 125
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    const/16 v5, 0xb

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    move v5, v10

    .line 142
    goto :goto_0

    .line 143
    :cond_1
    move v5, v13

    .line 144
    goto :goto_0

    .line 145
    :cond_2
    move v5, v12

    .line 146
    goto :goto_0

    .line 147
    :cond_3
    const/4 v5, 0x6

    .line 148
    :cond_4
    :goto_0
    invoke-virtual {v15, v5, v7, v13}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    :goto_1
    const/4 v0, 0x0

    .line 152
    goto :goto_3

    .line 153
    :cond_5
    instance-of v5, v0, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    if-nez v5, :cond_8

    .line 156
    .line 157
    instance-of v5, v0, Ljava/lang/SecurityException;

    .line 158
    .line 159
    if-nez v5, :cond_8

    .line 160
    .line 161
    instance-of v5, v0, Ljava/lang/UnsupportedOperationException;

    .line 162
    .line 163
    if-nez v5, :cond_8

    .line 164
    .line 165
    instance-of v5, v0, Ljava/lang/NullPointerException;

    .line 166
    .line 167
    if-eqz v5, :cond_6

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    .line 171
    .line 172
    if-eqz v4, :cond_7

    .line 173
    .line 174
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 175
    .line 176
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    throw v0

    .line 181
    :cond_8
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    const/16 v0, 0x9

    .line 201
    .line 202
    invoke-virtual {v15, v0, v7, v12}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :goto_3
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 207
    .line 208
    .line 209
    move-result-wide v4

    .line 210
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    long-to-double v4, v4

    .line 215
    div-double v4, v4, v16

    .line 216
    .line 217
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    new-array v5, v13, [Ljava/lang/Object;

    .line 222
    .line 223
    aput-object v4, v5, v12

    .line 224
    .line 225
    const/4 v4, 0x0

    .line 226
    invoke-static {v5, v13, v4, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    return-object v0

    .line 234
    :catchall_1
    move-exception v0

    .line 235
    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    :goto_4
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 241
    .line 242
    .line 243
    move-result-wide v4

    .line 244
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    long-to-double v4, v4

    .line 249
    div-double v4, v4, v16

    .line 250
    .line 251
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    new-array v5, v13, [Ljava/lang/Object;

    .line 256
    .line 257
    aput-object v4, v5, v12

    .line 258
    .line 259
    const/4 v4, 0x0

    .line 260
    invoke-static {v5, v13, v4, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    throw v0
.end method

.method public final captureBurst(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "%.3f ms"

    .line 4
    .line 5
    const-string v2, " - "

    .line 6
    .line 7
    const-string v3, "CXCP"

    .line 8
    .line 9
    const-string v4, "Failed to execute call: Unexpected exception: "

    .line 10
    .line 11
    const-string v5, "Failed to execute call: Camera encountered an error: "

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v7, "CXCP#captureBurst-"

    .line 19
    .line 20
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 24
    .line 25
    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v13, 0x1

    .line 42
    :try_start_0
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v15, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    .line 51
    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    :try_start_1
    iget-object v10, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->callbackHandler:Landroid/os/Handler;

    .line 59
    .line 60
    move-object/from16 v11, p1

    .line 61
    .line 62
    move-object/from16 v14, p2

    .line 63
    .line 64
    invoke-virtual {v10, v11, v14, v0}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_2
    instance-of v10, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 79
    .line 80
    if-eqz v10, :cond_5

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const/4 v5, 0x3

    .line 108
    if-eq v4, v13, :cond_4

    .line 109
    .line 110
    const/4 v10, 0x2

    .line 111
    if-eq v4, v10, :cond_3

    .line 112
    .line 113
    if-eq v4, v5, :cond_2

    .line 114
    .line 115
    const/4 v5, 0x4

    .line 116
    if-eq v4, v5, :cond_1

    .line 117
    .line 118
    const/4 v5, 0x5

    .line 119
    if-eq v4, v5, :cond_0

    .line 120
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v5, "Unexpected CameraAccessException: "

    .line 124
    .line 125
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    const/16 v5, 0xb

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    move v5, v10

    .line 142
    goto :goto_0

    .line 143
    :cond_1
    move v5, v13

    .line 144
    goto :goto_0

    .line 145
    :cond_2
    move v5, v12

    .line 146
    goto :goto_0

    .line 147
    :cond_3
    const/4 v5, 0x6

    .line 148
    :cond_4
    :goto_0
    invoke-virtual {v15, v5, v7, v13}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    :goto_1
    const/4 v0, 0x0

    .line 152
    goto :goto_3

    .line 153
    :cond_5
    instance-of v5, v0, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    if-nez v5, :cond_8

    .line 156
    .line 157
    instance-of v5, v0, Ljava/lang/SecurityException;

    .line 158
    .line 159
    if-nez v5, :cond_8

    .line 160
    .line 161
    instance-of v5, v0, Ljava/lang/UnsupportedOperationException;

    .line 162
    .line 163
    if-nez v5, :cond_8

    .line 164
    .line 165
    instance-of v5, v0, Ljava/lang/NullPointerException;

    .line 166
    .line 167
    if-eqz v5, :cond_6

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    .line 171
    .line 172
    if-eqz v4, :cond_7

    .line 173
    .line 174
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 175
    .line 176
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    throw v0

    .line 181
    :cond_8
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    const/16 v0, 0x9

    .line 201
    .line 202
    invoke-virtual {v15, v0, v7, v12}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :goto_3
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 207
    .line 208
    .line 209
    move-result-wide v4

    .line 210
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    long-to-double v4, v4

    .line 215
    div-double v4, v4, v16

    .line 216
    .line 217
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    new-array v5, v13, [Ljava/lang/Object;

    .line 222
    .line 223
    aput-object v4, v5, v12

    .line 224
    .line 225
    const/4 v4, 0x0

    .line 226
    invoke-static {v5, v13, v4, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    return-object v0

    .line 234
    :catchall_1
    move-exception v0

    .line 235
    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    :goto_4
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 241
    .line 242
    .line 243
    move-result-wide v4

    .line 244
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    long-to-double v4, v4

    .line 249
    div-double v4, v4, v16

    .line 250
    .line 251
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    new-array v5, v13, [Ljava/lang/Object;

    .line 256
    .line 257
    aput-object v4, v5, v12

    .line 258
    .line 259
    const/4 v4, 0x0

    .line 260
    invoke-static {v5, v13, v4, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    throw v0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final finalizeOutputConfigurations(Ljava/util/List;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "%.3f ms"

    .line 4
    .line 5
    const-string v2, " - "

    .line 6
    .line 7
    const-string v3, "CXCP"

    .line 8
    .line 9
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v5, 0x1a

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    if-lt v4, v5, :cond_b

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v5, "CXCP#finalizeOutputConfigurations-"

    .line 19
    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 24
    .line 25
    invoke-interface {v5}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x1

    .line 42
    :try_start_0
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v5}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iget-object v13, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    .line 51
    :try_start_1
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 52
    .line 53
    new-instance v14, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    const/16 v15, 0xa

    .line 56
    .line 57
    move-object/from16 v9, p1

    .line 58
    .line 59
    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    :try_start_2
    invoke-static {v9, v15}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-eqz v10, :cond_0

    .line 80
    .line 81
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    check-cast v10, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 86
    .line 87
    invoke-static {}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;->m$1()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v15

    .line 91
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 92
    .line 93
    .line 94
    move-result-object v15

    .line 95
    check-cast v10, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    .line 96
    .line 97
    invoke-virtual {v10, v15}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    invoke-static {v10}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :catch_0
    move-exception v0

    .line 113
    goto :goto_1

    .line 114
    :cond_0
    invoke-static {v0, v14}, Landroidx/camera/camera2/pipe/compat/Api26Compat;->finalizeOutputConfigurations(Landroid/hardware/camera2/CameraCaptureSession;Ljava/util/ArrayList;)V

    .line 115
    .line 116
    .line 117
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :catchall_1
    move-exception v0

    .line 122
    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    goto/16 :goto_6

    .line 128
    .line 129
    :catch_1
    move-exception v0

    .line 130
    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :goto_1
    :try_start_3
    instance-of v9, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 136
    .line 137
    if-eqz v9, :cond_6

    .line 138
    .line 139
    new-instance v9, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v10, "Failed to execute call: Camera encountered an error: "

    .line 145
    .line 146
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-static {v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    const/4 v10, 0x3

    .line 170
    if-eq v9, v12, :cond_5

    .line 171
    .line 172
    const/4 v14, 0x2

    .line 173
    if-eq v9, v14, :cond_4

    .line 174
    .line 175
    if-eq v9, v10, :cond_3

    .line 176
    .line 177
    const/4 v10, 0x4

    .line 178
    if-eq v9, v10, :cond_2

    .line 179
    .line 180
    const/4 v10, 0x5

    .line 181
    if-eq v9, v10, :cond_1

    .line 182
    .line 183
    new-instance v9, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v10, "Unexpected CameraAccessException: "

    .line 186
    .line 187
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    const/16 v10, 0xb

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_1
    move v10, v14

    .line 204
    goto :goto_2

    .line 205
    :cond_2
    move v10, v12

    .line 206
    goto :goto_2

    .line 207
    :cond_3
    move v10, v6

    .line 208
    goto :goto_2

    .line 209
    :cond_4
    const/4 v10, 0x6

    .line 210
    :cond_5
    :goto_2
    invoke-virtual {v13, v10, v5, v12}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 211
    .line 212
    .line 213
    :goto_3
    move-object v0, v11

    .line 214
    goto :goto_5

    .line 215
    :cond_6
    instance-of v9, v0, Ljava/lang/IllegalArgumentException;

    .line 216
    .line 217
    if-nez v9, :cond_9

    .line 218
    .line 219
    instance-of v9, v0, Ljava/lang/SecurityException;

    .line 220
    .line 221
    if-nez v9, :cond_9

    .line 222
    .line 223
    instance-of v9, v0, Ljava/lang/UnsupportedOperationException;

    .line 224
    .line 225
    if-nez v9, :cond_9

    .line 226
    .line 227
    instance-of v9, v0, Ljava/lang/NullPointerException;

    .line 228
    .line 229
    if-eqz v9, :cond_7

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_7
    instance-of v5, v0, Ljava/lang/IllegalStateException;

    .line 233
    .line 234
    if-eqz v5, :cond_8

    .line 235
    .line 236
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 237
    .line 238
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_8
    throw v0

    .line 243
    :cond_9
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v10, "Failed to execute call: Unexpected exception: "

    .line 249
    .line 250
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    const/16 v0, 0x9

    .line 268
    .line 269
    invoke-virtual {v13, v0, v5, v6}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :goto_5
    invoke-static {v7, v8}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 274
    .line 275
    .line 276
    move-result-wide v7

    .line 277
    invoke-static {v4, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    long-to-double v4, v7

    .line 282
    div-double v4, v4, v16

    .line 283
    .line 284
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    new-array v5, v12, [Ljava/lang/Object;

    .line 289
    .line 290
    aput-object v4, v5, v6

    .line 291
    .line 292
    invoke-static {v5, v12, v11, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    if-eqz v0, :cond_a

    .line 300
    .line 301
    move v6, v12

    .line 302
    :cond_a
    return v6

    .line 303
    :goto_6
    invoke-static {v7, v8}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 304
    .line 305
    .line 306
    move-result-wide v7

    .line 307
    invoke-static {v4, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    long-to-double v4, v7

    .line 312
    div-double v4, v4, v16

    .line 313
    .line 314
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    new-array v5, v12, [Ljava/lang/Object;

    .line 319
    .line 320
    aput-object v4, v5, v6

    .line 321
    .line 322
    invoke-static {v5, v12, v11, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    throw v0

    .line 330
    :cond_b
    const-string v0, "Attempting to call finalizeOutputConfigurations before O is not supported and may lead to to unexpected behavior if an application is expects this call to succeed."

    .line 331
    .line 332
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    return v6
.end method

.method public final getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInputSurface()Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final setRepeatingBurst(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "%.3f ms"

    .line 4
    .line 5
    const-string v2, " - "

    .line 6
    .line 7
    const-string v3, "CXCP"

    .line 8
    .line 9
    const-string v4, "Failed to execute call: Unexpected exception: "

    .line 10
    .line 11
    const-string v5, "Failed to execute call: Camera encountered an error: "

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v7, "CXCP#setRepeatingBurst-"

    .line 19
    .line 20
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 24
    .line 25
    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v13, 0x1

    .line 42
    :try_start_0
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v15, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    .line 51
    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    :try_start_1
    iget-object v10, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->callbackHandler:Landroid/os/Handler;

    .line 59
    .line 60
    move-object/from16 v11, p1

    .line 61
    .line 62
    move-object/from16 v14, p2

    .line 63
    .line 64
    invoke-virtual {v10, v11, v14, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_2
    instance-of v10, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 79
    .line 80
    if-eqz v10, :cond_5

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const/4 v5, 0x3

    .line 108
    if-eq v4, v13, :cond_4

    .line 109
    .line 110
    const/4 v10, 0x2

    .line 111
    if-eq v4, v10, :cond_3

    .line 112
    .line 113
    if-eq v4, v5, :cond_2

    .line 114
    .line 115
    const/4 v5, 0x4

    .line 116
    if-eq v4, v5, :cond_1

    .line 117
    .line 118
    const/4 v5, 0x5

    .line 119
    if-eq v4, v5, :cond_0

    .line 120
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v5, "Unexpected CameraAccessException: "

    .line 124
    .line 125
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    const/16 v5, 0xb

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    move v5, v10

    .line 142
    goto :goto_0

    .line 143
    :cond_1
    move v5, v13

    .line 144
    goto :goto_0

    .line 145
    :cond_2
    move v5, v12

    .line 146
    goto :goto_0

    .line 147
    :cond_3
    const/4 v5, 0x6

    .line 148
    :cond_4
    :goto_0
    invoke-virtual {v15, v5, v7, v13}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    :goto_1
    const/4 v0, 0x0

    .line 152
    goto :goto_3

    .line 153
    :cond_5
    instance-of v5, v0, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    if-nez v5, :cond_8

    .line 156
    .line 157
    instance-of v5, v0, Ljava/lang/SecurityException;

    .line 158
    .line 159
    if-nez v5, :cond_8

    .line 160
    .line 161
    instance-of v5, v0, Ljava/lang/UnsupportedOperationException;

    .line 162
    .line 163
    if-nez v5, :cond_8

    .line 164
    .line 165
    instance-of v5, v0, Ljava/lang/NullPointerException;

    .line 166
    .line 167
    if-eqz v5, :cond_6

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    .line 171
    .line 172
    if-eqz v4, :cond_7

    .line 173
    .line 174
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 175
    .line 176
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    throw v0

    .line 181
    :cond_8
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    const/16 v0, 0x9

    .line 201
    .line 202
    invoke-virtual {v15, v0, v7, v12}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :goto_3
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 207
    .line 208
    .line 209
    move-result-wide v4

    .line 210
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    long-to-double v4, v4

    .line 215
    div-double v4, v4, v16

    .line 216
    .line 217
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    new-array v5, v13, [Ljava/lang/Object;

    .line 222
    .line 223
    aput-object v4, v5, v12

    .line 224
    .line 225
    const/4 v4, 0x0

    .line 226
    invoke-static {v5, v13, v4, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    return-object v0

    .line 234
    :catchall_1
    move-exception v0

    .line 235
    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    :goto_4
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 241
    .line 242
    .line 243
    move-result-wide v4

    .line 244
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    long-to-double v4, v4

    .line 249
    div-double v4, v4, v16

    .line 250
    .line 251
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    new-array v5, v13, [Ljava/lang/Object;

    .line 256
    .line 257
    aput-object v4, v5, v12

    .line 258
    .line 259
    const/4 v4, 0x0

    .line 260
    invoke-static {v5, v13, v4, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    throw v0
.end method

.method public final setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "%.3f ms"

    .line 4
    .line 5
    const-string v2, " - "

    .line 6
    .line 7
    const-string v3, "CXCP"

    .line 8
    .line 9
    const-string v4, "Failed to execute call: Unexpected exception: "

    .line 10
    .line 11
    const-string v5, "Failed to execute call: Camera encountered an error: "

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v7, "CXCP#setRepeatingRequest-"

    .line 19
    .line 20
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 24
    .line 25
    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v13, 0x1

    .line 42
    :try_start_0
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v15, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    .line 51
    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    :try_start_1
    iget-object v10, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->callbackHandler:Landroid/os/Handler;

    .line 59
    .line 60
    move-object/from16 v11, p1

    .line 61
    .line 62
    move-object/from16 v14, p2

    .line 63
    .line 64
    invoke-virtual {v10, v11, v14, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_2
    instance-of v10, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 79
    .line 80
    if-eqz v10, :cond_5

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const/4 v5, 0x3

    .line 108
    if-eq v4, v13, :cond_4

    .line 109
    .line 110
    const/4 v10, 0x2

    .line 111
    if-eq v4, v10, :cond_3

    .line 112
    .line 113
    if-eq v4, v5, :cond_2

    .line 114
    .line 115
    const/4 v5, 0x4

    .line 116
    if-eq v4, v5, :cond_1

    .line 117
    .line 118
    const/4 v5, 0x5

    .line 119
    if-eq v4, v5, :cond_0

    .line 120
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v5, "Unexpected CameraAccessException: "

    .line 124
    .line 125
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    const/16 v5, 0xb

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    move v5, v10

    .line 142
    goto :goto_0

    .line 143
    :cond_1
    move v5, v13

    .line 144
    goto :goto_0

    .line 145
    :cond_2
    move v5, v12

    .line 146
    goto :goto_0

    .line 147
    :cond_3
    const/4 v5, 0x6

    .line 148
    :cond_4
    :goto_0
    invoke-virtual {v15, v5, v7, v13}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    :goto_1
    const/4 v0, 0x0

    .line 152
    goto :goto_3

    .line 153
    :cond_5
    instance-of v5, v0, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    if-nez v5, :cond_8

    .line 156
    .line 157
    instance-of v5, v0, Ljava/lang/SecurityException;

    .line 158
    .line 159
    if-nez v5, :cond_8

    .line 160
    .line 161
    instance-of v5, v0, Ljava/lang/UnsupportedOperationException;

    .line 162
    .line 163
    if-nez v5, :cond_8

    .line 164
    .line 165
    instance-of v5, v0, Ljava/lang/NullPointerException;

    .line 166
    .line 167
    if-eqz v5, :cond_6

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    .line 171
    .line 172
    if-eqz v4, :cond_7

    .line 173
    .line 174
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 175
    .line 176
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    throw v0

    .line 181
    :cond_8
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    const/16 v0, 0x9

    .line 201
    .line 202
    invoke-virtual {v15, v0, v7, v12}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :goto_3
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 207
    .line 208
    .line 209
    move-result-wide v4

    .line 210
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    long-to-double v4, v4

    .line 215
    div-double v4, v4, v16

    .line 216
    .line 217
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    new-array v5, v13, [Ljava/lang/Object;

    .line 222
    .line 223
    aput-object v4, v5, v12

    .line 224
    .line 225
    const/4 v4, 0x0

    .line 226
    invoke-static {v5, v13, v4, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    return-object v0

    .line 234
    :catchall_1
    move-exception v0

    .line 235
    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    :goto_4
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 241
    .line 242
    .line 243
    move-result-wide v4

    .line 244
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    long-to-double v4, v4

    .line 249
    div-double v4, v4, v16

    .line 250
    .line 251
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    new-array v5, v13, [Ljava/lang/Object;

    .line 256
    .line 257
    aput-object v4, v5, v12

    .line 258
    .line 259
    const/4 v4, 0x0

    .line 260
    invoke-static {v5, v13, v4, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    throw v0
.end method

.method public final stopRepeating()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "%.3f ms"

    .line 4
    .line 5
    const-string v2, " - "

    .line 6
    .line 7
    const-string v3, "CXCP"

    .line 8
    .line 9
    const-string v4, "Failed to execute call: Unexpected exception: "

    .line 10
    .line 11
    const-string v5, "Failed to execute call: Camera encountered an error: "

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v7, "CXCP#stopRepeating-"

    .line 16
    .line 17
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 21
    .line 22
    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    const/4 v13, 0x1

    .line 40
    :try_start_0
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    iget-object v14, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :try_start_1
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    const-wide v15, 0x412e848000000000L    # 1000000.0

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :catchall_0
    move-exception v0

    .line 64
    const-wide v15, 0x412e848000000000L    # 1000000.0

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-wide v15, 0x412e848000000000L    # 1000000.0

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :try_start_2
    instance-of v10, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 78
    .line 79
    if-eqz v10, :cond_5

    .line 80
    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    const/4 v5, 0x3

    .line 107
    if-eq v4, v13, :cond_4

    .line 108
    .line 109
    const/4 v10, 0x2

    .line 110
    if-eq v4, v10, :cond_3

    .line 111
    .line 112
    if-eq v4, v5, :cond_2

    .line 113
    .line 114
    const/4 v5, 0x4

    .line 115
    if-eq v4, v5, :cond_1

    .line 116
    .line 117
    const/4 v5, 0x5

    .line 118
    if-eq v4, v5, :cond_0

    .line 119
    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v5, "Unexpected CameraAccessException: "

    .line 123
    .line 124
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    const/16 v5, 0xb

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    move v5, v10

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    move v5, v13

    .line 143
    goto :goto_0

    .line 144
    :cond_2
    move v5, v11

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    const/4 v5, 0x6

    .line 147
    :cond_4
    :goto_0
    invoke-virtual {v14, v5, v7, v13}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 148
    .line 149
    .line 150
    :goto_1
    move-object v0, v12

    .line 151
    goto :goto_3

    .line 152
    :catchall_1
    move-exception v0

    .line 153
    goto :goto_4

    .line 154
    :cond_5
    instance-of v5, v0, Ljava/lang/IllegalArgumentException;

    .line 155
    .line 156
    if-nez v5, :cond_8

    .line 157
    .line 158
    instance-of v5, v0, Ljava/lang/SecurityException;

    .line 159
    .line 160
    if-nez v5, :cond_8

    .line 161
    .line 162
    instance-of v5, v0, Ljava/lang/UnsupportedOperationException;

    .line 163
    .line 164
    if-nez v5, :cond_8

    .line 165
    .line 166
    instance-of v5, v0, Ljava/lang/NullPointerException;

    .line 167
    .line 168
    if-eqz v5, :cond_6

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_6
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    .line 172
    .line 173
    if-eqz v4, :cond_7

    .line 174
    .line 175
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 176
    .line 177
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_7
    throw v0

    .line 182
    :cond_8
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    const/16 v0, 0x9

    .line 202
    .line 203
    invoke-virtual {v14, v0, v7, v11}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :goto_3
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 208
    .line 209
    .line 210
    move-result-wide v4

    .line 211
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    long-to-double v4, v4

    .line 216
    div-double/2addr v4, v15

    .line 217
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    new-array v5, v13, [Ljava/lang/Object;

    .line 222
    .line 223
    aput-object v4, v5, v11

    .line 224
    .line 225
    invoke-static {v5, v13, v12, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    if-eqz v0, :cond_9

    .line 233
    .line 234
    move v11, v13

    .line 235
    :cond_9
    return v11

    .line 236
    :goto_4
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 237
    .line 238
    .line 239
    move-result-wide v4

    .line 240
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    long-to-double v4, v4

    .line 245
    div-double/2addr v4, v15

    .line 246
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    new-array v5, v13, [Ljava/lang/Object;

    .line 251
    .line 252
    aput-object v4, v5, v11

    .line 253
    .line 254
    invoke-static {v5, v13, v12, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    throw v0
.end method

.method public unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Landroid/hardware/camera2/CameraCaptureSession;

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
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method
