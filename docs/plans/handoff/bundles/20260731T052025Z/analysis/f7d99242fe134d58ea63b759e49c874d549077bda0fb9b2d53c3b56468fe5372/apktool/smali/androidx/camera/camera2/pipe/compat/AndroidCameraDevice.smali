.class public final Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;


# instance fields
.field public final _lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

.field public final cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field public final cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

.field public final cameraId:Ljava/lang/String;

.field public final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field public final closed:Lkotlinx/atomicfu/AtomicBoolean;

.field public final interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

.field public final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/cardview/widget/CardView$1;Landroidx/camera/camera2/pipe/core/Threads;)V
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
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 17
    .line 18
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 19
    .line 20
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 23
    .line 24
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 25
    .line 26
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Lkotlin/Pair;

    .line 13
    .line 14
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance v0, Lkotlin/Pair;

    .line 22
    .line 23
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v2, Lkotlinx/atomicfu/AtomicRef;->FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 31
    .line 32
    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public final createCaptureRequest-2PPcXtw(I)Landroid/hardware/camera2/CaptureRequest$Builder;
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
    const-string v7, "CXCP#createCaptureRequest-"

    .line 16
    .line 17
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 30
    .line 31
    .line 32
    move-result-wide v8

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v12, 0x1

    .line 35
    const/4 v13, 0x0

    .line 36
    :try_start_0
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v14, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    :try_start_1
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .line 43
    move/from16 v10, p1

    .line 44
    .line 45
    const-wide v15, 0x412e848000000000L    # 1000000.0

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    :try_start_2
    invoke-virtual {v0, v10}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto :goto_0

    .line 61
    :catchall_1
    move-exception v0

    .line 62
    const-wide v15, 0x412e848000000000L    # 1000000.0

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :catch_1
    move-exception v0

    .line 70
    const-wide v15, 0x412e848000000000L    # 1000000.0

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :goto_0
    :try_start_3
    instance-of v10, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 76
    .line 77
    if-eqz v10, :cond_5

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    const/4 v5, 0x3

    .line 105
    if-eq v4, v12, :cond_4

    .line 106
    .line 107
    const/4 v10, 0x2

    .line 108
    if-eq v4, v10, :cond_3

    .line 109
    .line 110
    if-eq v4, v5, :cond_2

    .line 111
    .line 112
    const/4 v5, 0x4

    .line 113
    if-eq v4, v5, :cond_1

    .line 114
    .line 115
    const/4 v5, 0x5

    .line 116
    if-eq v4, v5, :cond_0

    .line 117
    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v5, "Unexpected CameraAccessException: "

    .line 121
    .line 122
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    const/16 v5, 0xb

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_0
    move v5, v10

    .line 139
    goto :goto_1

    .line 140
    :cond_1
    move v5, v12

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    move v5, v11

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    const/4 v5, 0x6

    .line 145
    :cond_4
    :goto_1
    invoke-virtual {v14, v5, v7, v12}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    :goto_2
    move-object v0, v13

    .line 149
    goto :goto_4

    .line 150
    :cond_5
    instance-of v5, v0, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    if-nez v5, :cond_8

    .line 153
    .line 154
    instance-of v5, v0, Ljava/lang/SecurityException;

    .line 155
    .line 156
    if-nez v5, :cond_8

    .line 157
    .line 158
    instance-of v5, v0, Ljava/lang/UnsupportedOperationException;

    .line 159
    .line 160
    if-nez v5, :cond_8

    .line 161
    .line 162
    instance-of v5, v0, Ljava/lang/NullPointerException;

    .line 163
    .line 164
    if-eqz v5, :cond_6

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    .line 168
    .line 169
    if-eqz v4, :cond_7

    .line 170
    .line 171
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 172
    .line 173
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_7
    throw v0

    .line 178
    :cond_8
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    const/16 v0, 0x9

    .line 198
    .line 199
    invoke-virtual {v14, v0, v7, v11}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :goto_4
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 204
    .line 205
    .line 206
    move-result-wide v4

    .line 207
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    long-to-double v4, v4

    .line 212
    div-double/2addr v4, v15

    .line 213
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    new-array v5, v12, [Ljava/lang/Object;

    .line 218
    .line 219
    aput-object v4, v5, v11

    .line 220
    .line 221
    invoke-static {v5, v12, v13, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    return-object v0

    .line 229
    :goto_5
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 230
    .line 231
    .line 232
    move-result-wide v4

    .line 233
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    long-to-double v4, v4

    .line 238
    div-double/2addr v4, v15

    .line 239
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    new-array v5, v12, [Ljava/lang/Object;

    .line 244
    .line 245
    aput-object v4, v5, v11

    .line 246
    .line 247
    invoke-static {v5, v12, v13, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    throw v0
.end method

.method public final createCaptureSession(Landroidx/camera/camera2/pipe/compat/SessionConfigData;)Z
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const-string v8, "%.3f ms"

    .line 6
    .line 7
    const-string v9, " - "

    .line 8
    .line 9
    iget-object v10, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 10
    .line 11
    const-string v11, "CXCP"

    .line 12
    .line 13
    iget-object v12, v7, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->inputConfiguration:Ljava/util/List;

    .line 14
    .line 15
    iget-object v0, v7, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v3, v0

    .line 32
    check-cast v3, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 33
    .line 34
    const/4 v13, 0x0

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    return v13

    .line 38
    :cond_0
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    const-string v0, "CXCP#createCaptureSession-"

    .line 44
    .line 45
    iget-object v14, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0, v14}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v15

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 52
    .line 53
    .line 54
    move-result-wide v16

    .line 55
    const-wide v18, 0x412e848000000000L    # 1000000.0

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    :try_start_0
    invoke-static {v15}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v5, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 64
    .line 65
    :try_start_1
    iget v0, v7, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionType:I

    .line 66
    .line 67
    iget-object v6, v7, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->outputConfigurations:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance v13, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 70
    .line 71
    move-object/from16 v21, v8

    .line 72
    .line 73
    const/16 v8, 0xa

    .line 74
    .line 75
    :try_start_2
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_2

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 97
    .line 98
    invoke-static {}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;->m$1()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    move-result-object v22

    .line 102
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v6, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    .line 107
    .line 108
    invoke-virtual {v6, v4}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v4}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    :goto_1
    move-object/from16 v4, v21

    .line 122
    .line 123
    goto/16 :goto_e

    .line 124
    .line 125
    :catch_0
    move-exception v0

    .line 126
    move-object/from16 v24, v5

    .line 127
    .line 128
    goto/16 :goto_6

    .line 129
    .line 130
    :cond_2
    iget-object v2, v7, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->executor:Ljava/util/concurrent/Executor;

    .line 131
    .line 132
    move v4, v0

    .line 133
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;

    .line 134
    .line 135
    move-object v6, v2

    .line 136
    iget-object v2, v7, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 137
    .line 138
    move/from16 v22, v4

    .line 139
    .line 140
    iget-object v4, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    .line 142
    move-object/from16 v23, v5

    .line 143
    .line 144
    :try_start_3
    iget-object v5, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 145
    .line 146
    iget-object v8, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 147
    .line 148
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 149
    .line 150
    .line 151
    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    move/from16 v24, v22

    .line 153
    .line 154
    move-object/from16 v22, v6

    .line 155
    .line 156
    move-object v6, v8

    .line 157
    move/from16 v8, v24

    .line 158
    .line 159
    move-object/from16 v24, v23

    .line 160
    .line 161
    :try_start_4
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/cardview/widget/CardView$1;Landroid/os/Handler;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    move-object/from16 v6, v22

    .line 168
    .line 169
    invoke-static {v8, v13, v6, v0}, Landroidx/camera/camera2/pipe/compat/Api28Compat$$ExternalSyntheticApiModelOutline0;->m(ILjava/util/ArrayList;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;)Landroid/hardware/camera2/params/SessionConfiguration;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-eqz v12, :cond_4

    .line 174
    .line 175
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 176
    .line 177
    const/16 v4, 0x1f

    .line 178
    .line 179
    if-lt v2, v4, :cond_3

    .line 180
    .line 181
    invoke-static {v14, v12}, Landroidx/camera/camera2/pipe/compat/Api31Compat;->newInputConfiguration(Ljava/lang/String;Ljava/util/List;)Landroid/hardware/camera2/params/InputConfiguration;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->setInputConfiguration(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :catch_1
    move-exception v0

    .line 190
    goto/16 :goto_6

    .line 191
    .line 192
    :cond_3
    new-instance v2, Landroid/hardware/camera2/params/InputConfiguration;

    .line 193
    .line 194
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    .line 199
    .line 200
    iget v4, v4, Landroidx/camera/camera2/pipe/compat/InputConfigData;->width:I

    .line 201
    .line 202
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    check-cast v5, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    .line 207
    .line 208
    iget v5, v5, Landroidx/camera/camera2/pipe/compat/InputConfigData;->height:I

    .line 209
    .line 210
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    check-cast v6, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    .line 215
    .line 216
    iget v6, v6, Landroidx/camera/camera2/pipe/compat/InputConfigData;->format:I

    .line 217
    .line 218
    invoke-direct {v2, v4, v5, v6}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 219
    .line 220
    .line 221
    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->setInputConfiguration(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 222
    .line 223
    .line 224
    :cond_4
    :goto_2
    const-string v2, "createCaptureRequest"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    .line 226
    :try_start_5
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget v2, v7, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionTemplateId:I

    .line 230
    .line 231
    invoke-virtual {v10, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 235
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    iget-object v4, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 242
    .line 243
    check-cast v4, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 244
    .line 245
    iget-object v4, v4, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->_sessionKeys:Lkotlin/Lazy;

    .line 246
    .line 247
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    check-cast v4, Ljava/util/Set;

    .line 252
    .line 253
    check-cast v4, Ljava/lang/Iterable;

    .line 254
    .line 255
    new-instance v5, Ljava/util/ArrayList;

    .line 256
    .line 257
    const/16 v6, 0xa

    .line 258
    .line 259
    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    if-eqz v6, :cond_5

    .line 275
    .line 276
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 281
    .line 282
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_5
    iget-object v4, v7, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->sessionParameters:Ljava/util/Map;

    .line 291
    .line 292
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    if-eqz v6, :cond_7

    .line 305
    .line 306
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    check-cast v6, Ljava/util/Map$Entry;

    .line 311
    .line 312
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    instance-of v8, v7, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 321
    .line 322
    if-eqz v8, :cond_6

    .line 323
    .line 324
    move-object v8, v7

    .line 325
    check-cast v8, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 326
    .line 327
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v8

    .line 331
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v8

    .line 335
    if-eqz v8, :cond_6

    .line 336
    .line 337
    invoke-static {v2, v7, v6}, Landroidx/core/util/DebugUtils;->writeParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_7
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->setSessionParameters(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/CaptureRequest;)V

    .line 349
    .line 350
    .line 351
    const-string v2, "Api28Compat.createCaptureSession"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 352
    .line 353
    :try_start_7
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-static {v10, v0}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->createCaptureSession(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 357
    .line 358
    .line 359
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 360
    .line 361
    .line 362
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 363
    .line 364
    :goto_5
    const/4 v4, 0x0

    .line 365
    goto/16 :goto_c

    .line 366
    .line 367
    :catchall_1
    move-exception v0

    .line 368
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 369
    .line 370
    .line 371
    throw v0

    .line 372
    :catchall_2
    move-exception v0

    .line 373
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 374
    .line 375
    .line 376
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 377
    :catch_2
    move-exception v0

    .line 378
    move-object/from16 v24, v23

    .line 379
    .line 380
    goto :goto_6

    .line 381
    :catchall_3
    move-exception v0

    .line 382
    move-object/from16 v21, v8

    .line 383
    .line 384
    goto/16 :goto_1

    .line 385
    .line 386
    :catch_3
    move-exception v0

    .line 387
    move-object/from16 v24, v5

    .line 388
    .line 389
    move-object/from16 v21, v8

    .line 390
    .line 391
    :goto_6
    :try_start_9
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 392
    .line 393
    if-eqz v2, :cond_d

    .line 394
    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    const-string v4, "Failed to execute call: Camera encountered an error: "

    .line 401
    .line 402
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 420
    .line 421
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    const/4 v4, 0x3

    .line 426
    const/4 v5, 0x1

    .line 427
    if-eq v2, v5, :cond_c

    .line 428
    .line 429
    const/4 v5, 0x2

    .line 430
    if-eq v2, v5, :cond_b

    .line 431
    .line 432
    if-eq v2, v4, :cond_a

    .line 433
    .line 434
    const/4 v4, 0x4

    .line 435
    if-eq v2, v4, :cond_9

    .line 436
    .line 437
    const/4 v4, 0x5

    .line 438
    if-eq v2, v4, :cond_8

    .line 439
    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    const-string v4, "Unexpected CameraAccessException: "

    .line 443
    .line 444
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    const/16 v4, 0xb

    .line 458
    .line 459
    :goto_7
    move-object/from16 v2, v24

    .line 460
    .line 461
    :goto_8
    const/4 v5, 0x1

    .line 462
    goto :goto_9

    .line 463
    :cond_8
    move v4, v5

    .line 464
    goto :goto_7

    .line 465
    :cond_9
    move-object/from16 v2, v24

    .line 466
    .line 467
    const/4 v4, 0x1

    .line 468
    goto :goto_8

    .line 469
    :cond_a
    move-object/from16 v2, v24

    .line 470
    .line 471
    const/4 v4, 0x0

    .line 472
    goto :goto_8

    .line 473
    :cond_b
    const/4 v4, 0x6

    .line 474
    goto :goto_7

    .line 475
    :cond_c
    move-object/from16 v2, v24

    .line 476
    .line 477
    :goto_9
    invoke-virtual {v2, v4, v14, v5}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 478
    .line 479
    .line 480
    :goto_a
    const/4 v2, 0x0

    .line 481
    goto :goto_5

    .line 482
    :cond_d
    move-object/from16 v2, v24

    .line 483
    .line 484
    instance-of v4, v0, Ljava/lang/IllegalArgumentException;

    .line 485
    .line 486
    if-nez v4, :cond_10

    .line 487
    .line 488
    instance-of v4, v0, Ljava/lang/SecurityException;

    .line 489
    .line 490
    if-nez v4, :cond_10

    .line 491
    .line 492
    instance-of v4, v0, Ljava/lang/UnsupportedOperationException;

    .line 493
    .line 494
    if-nez v4, :cond_10

    .line 495
    .line 496
    instance-of v4, v0, Ljava/lang/NullPointerException;

    .line 497
    .line 498
    if-eqz v4, :cond_e

    .line 499
    .line 500
    goto :goto_b

    .line 501
    :cond_e
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    .line 502
    .line 503
    if-eqz v2, :cond_f

    .line 504
    .line 505
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 506
    .line 507
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    goto :goto_a

    .line 511
    :cond_f
    throw v0

    .line 512
    :cond_10
    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .line 516
    .line 517
    const-string v5, "Failed to execute call: Unexpected exception: "

    .line 518
    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .line 535
    .line 536
    const/16 v0, 0x9

    .line 537
    .line 538
    const/4 v4, 0x0

    .line 539
    invoke-virtual {v2, v0, v14, v4}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 540
    .line 541
    .line 542
    const/4 v2, 0x0

    .line 543
    :goto_c
    invoke-static/range {v16 .. v17}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 544
    .line 545
    .line 546
    move-result-wide v5

    .line 547
    invoke-static {v15, v9}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    long-to-double v5, v5

    .line 552
    div-double v5, v5, v18

    .line 553
    .line 554
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    const/4 v6, 0x1

    .line 559
    new-array v7, v6, [Ljava/lang/Object;

    .line 560
    .line 561
    aput-object v5, v7, v4

    .line 562
    .line 563
    move-object/from16 v4, v21

    .line 564
    .line 565
    const/4 v5, 0x0

    .line 566
    invoke-static {v7, v6, v5, v4, v0}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    if-nez v2, :cond_11

    .line 574
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    const-string v4, "Failed to create capture session from "

    .line 578
    .line 579
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v4, ". Finalizing previous session"

    .line 586
    .line 587
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .line 596
    .line 597
    if-eqz v3, :cond_11

    .line 598
    .line 599
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 600
    .line 601
    .line 602
    :cond_11
    if-eqz v2, :cond_12

    .line 603
    .line 604
    const/4 v13, 0x1

    .line 605
    goto :goto_d

    .line 606
    :cond_12
    const/4 v13, 0x0

    .line 607
    :goto_d
    return v13

    .line 608
    :catchall_4
    move-exception v0

    .line 609
    move-object v4, v8

    .line 610
    :goto_e
    invoke-static/range {v16 .. v17}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 611
    .line 612
    .line 613
    move-result-wide v1

    .line 614
    invoke-static {v15, v9}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    long-to-double v1, v1

    .line 619
    div-double v1, v1, v18

    .line 620
    .line 621
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    const/4 v5, 0x1

    .line 626
    new-array v2, v5, [Ljava/lang/Object;

    .line 627
    .line 628
    const/16 v20, 0x0

    .line 629
    .line 630
    aput-object v1, v2, v20

    .line 631
    .line 632
    const/4 v1, 0x0

    .line 633
    invoke-static {v2, v5, v1, v4, v3}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    throw v0
.end method

.method public final createCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 26

    move-object/from16 v1, p0

    const-string v7, "%.3f ms"

    const-string v8, " - "

    iget-object v9, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v10, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v11, "CXCP"

    const-string v12, "Failed to execute call: Unexpected exception: "

    const-string v13, "Failed to execute call: Camera encountered an error: "

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, p2

    .line 641
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    move-result-object v0

    .line 642
    iget-object v3, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 643
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 644
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 645
    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    const/4 v14, 0x0

    if-nez v3, :cond_0

    return v14

    :cond_0
    if-eqz v4, :cond_1

    .line 646
    invoke-virtual {v1, v4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 647
    :cond_1
    const-string v0, "CXCP#createCaptureSession-"

    .line 648
    iget-object v15, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    invoke-static {v0, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 649
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 650
    :try_start_0
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 651
    iget-object v14, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 652
    :try_start_1
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v21, v3

    move-object v3, v4

    .line 653
    :try_start_2
    iget-object v4, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    move-object/from16 v22, v5

    .line 654
    iget-object v5, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v23, v6

    .line 655
    :try_start_3
    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v24, v9

    move-object/from16 v25, v21

    move/from16 v9, v23

    .line 656
    :try_start_4
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/cardview/widget/CardView$1;Landroid/os/Handler;)V

    .line 657
    invoke-virtual/range {v24 .. v24}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v4, p1

    .line 658
    invoke-virtual {v10, v4, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 659
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    :goto_0
    move-object/from16 v4, v25

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v25, v21

    move/from16 v9, v23

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v25, v21

    move/from16 v9, v23

    goto :goto_1

    :catchall_2
    move-exception v0

    move v9, v6

    move-object/from16 v25, v21

    goto :goto_0

    :catch_2
    move-exception v0

    move v9, v6

    move-object/from16 v25, v21

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v25, v3

    move v9, v6

    goto :goto_0

    :catch_3
    move-exception v0

    move-object/from16 v25, v3

    move-object v3, v4

    move v9, v6

    .line 660
    :goto_1
    :try_start_5
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v2, :cond_7

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 662
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 664
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v9, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    if-eq v2, v6, :cond_4

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3

    const/4 v5, 0x5

    if-eq v2, v5, :cond_2

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected CameraAccessException: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xb

    goto :goto_2

    :cond_2
    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v9

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const/4 v6, 0x6

    .line 667
    :cond_6
    :goto_2
    invoke-virtual {v14, v6, v15, v9}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    :goto_3
    const/4 v2, 0x0

    :goto_4
    const/4 v5, 0x0

    goto :goto_6

    .line 668
    :cond_7
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    if-nez v2, :cond_a

    .line 669
    instance-of v2, v0, Ljava/lang/SecurityException;

    if-nez v2, :cond_a

    .line 670
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v2, :cond_a

    .line 671
    instance-of v2, v0, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_8

    goto :goto_5

    .line 672
    :cond_8
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_9

    .line 673
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 674
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 675
    :cond_9
    throw v0

    .line 676
    :cond_a
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    const/4 v2, 0x0

    .line 678
    invoke-virtual {v14, v0, v15, v2}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 679
    :goto_6
    invoke-static/range {v16 .. v17}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    move-result-wide v12

    move-object/from16 v4, v25

    .line 680
    invoke-static {v4, v8}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-double v12, v12

    div-double v12, v12, v18

    .line 681
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const/4 v2, 0x0

    .line 682
    invoke-static {v6, v9, v2, v7, v0}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_b

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create capture session from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Finalizing previous session"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_b

    .line 686
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    :cond_b
    if-eqz v5, :cond_c

    move v14, v9

    goto :goto_7

    :cond_c
    const/4 v14, 0x0

    :goto_7
    return v14

    :catchall_4
    move-exception v0

    move-object v4, v3

    move v9, v6

    .line 687
    :goto_8
    invoke-static/range {v16 .. v17}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    move-result-wide v1

    .line 688
    invoke-static {v4, v8}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-double v1, v1

    div-double v1, v1, v18

    .line 689
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v1, v2, v20

    const/4 v1, 0x0

    .line 690
    invoke-static {v2, v9, v1, v7, v3}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 691
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    throw v0
.end method

.method public final createCaptureSessionByOutputConfigurations(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v7, "%.3f ms"

    .line 4
    .line 5
    const-string v8, " - "

    .line 6
    .line 7
    iget-object v9, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 8
    .line 9
    iget-object v10, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 10
    .line 11
    const-string v11, "CXCP"

    .line 12
    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-object/from16 v2, p2

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v3, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 31
    .line 32
    move-object v4, v0

    .line 33
    check-cast v4, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 34
    .line 35
    const/4 v12, 0x0

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    return v12

    .line 39
    :cond_0
    if-eqz v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    const-string v0, "CXCP#createCaptureSessionByOutputConfigurations-"

    .line 45
    .line 46
    iget-object v13, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0, v13}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v14

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    const-wide v17, 0x412e848000000000L    # 1000000.0

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :try_start_0
    invoke-static {v14}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v6, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 67
    .line 68
    const/16 v3, 0xa

    .line 69
    .line 70
    move-object/from16 v5, p1

    .line 71
    .line 72
    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 94
    .line 95
    const-class v19, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 96
    .line 97
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    check-cast v5, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    .line 102
    .line 103
    invoke-virtual {v5, v12}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 108
    .line 109
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    const/4 v12, 0x0

    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    goto/16 :goto_a

    .line 116
    .line 117
    :catch_0
    move-exception v0

    .line 118
    move-object v3, v4

    .line 119
    :goto_1
    move-object/from16 v21, v6

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_2
    move-object v3, v0

    .line 123
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .line 125
    move-object v5, v3

    .line 126
    move-object v3, v4

    .line 127
    :try_start_2
    iget-object v4, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 128
    .line 129
    move-object v12, v5

    .line 130
    iget-object v5, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    move-object/from16 v19, v6

    .line 133
    .line 134
    :try_start_3
    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 135
    .line 136
    .line 137
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    move-object/from16 v21, v19

    .line 139
    .line 140
    :try_start_4
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/cardview/widget/CardView$1;Landroid/os/Handler;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v10, v12, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 148
    .line 149
    .line 150
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    .line 152
    :goto_2
    const/4 v4, 0x0

    .line 153
    goto/16 :goto_8

    .line 154
    .line 155
    :catch_1
    move-exception v0

    .line 156
    goto :goto_3

    .line 157
    :catch_2
    move-exception v0

    .line 158
    move-object/from16 v21, v19

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :catch_3
    move-exception v0

    .line 162
    goto :goto_1

    .line 163
    :goto_3
    :try_start_5
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 164
    .line 165
    if-eqz v2, :cond_8

    .line 166
    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v4, "Failed to execute call: Camera encountered an error: "

    .line 173
    .line 174
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    const/4 v5, 0x3

    .line 198
    const/4 v4, 0x1

    .line 199
    if-eq v2, v4, :cond_7

    .line 200
    .line 201
    const/4 v4, 0x2

    .line 202
    if-eq v2, v4, :cond_6

    .line 203
    .line 204
    if-eq v2, v5, :cond_5

    .line 205
    .line 206
    const/4 v5, 0x4

    .line 207
    if-eq v2, v5, :cond_4

    .line 208
    .line 209
    const/4 v5, 0x5

    .line 210
    if-eq v2, v5, :cond_3

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v4, "Unexpected CameraAccessException: "

    .line 215
    .line 216
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    const/16 v5, 0xb

    .line 230
    .line 231
    :goto_4
    move-object/from16 v2, v21

    .line 232
    .line 233
    const/4 v4, 0x1

    .line 234
    goto :goto_5

    .line 235
    :cond_3
    move v5, v4

    .line 236
    goto :goto_4

    .line 237
    :cond_4
    move-object/from16 v2, v21

    .line 238
    .line 239
    const/4 v4, 0x1

    .line 240
    const/4 v5, 0x1

    .line 241
    goto :goto_5

    .line 242
    :cond_5
    move-object/from16 v2, v21

    .line 243
    .line 244
    const/4 v4, 0x1

    .line 245
    const/4 v5, 0x0

    .line 246
    goto :goto_5

    .line 247
    :cond_6
    const/4 v5, 0x6

    .line 248
    goto :goto_4

    .line 249
    :cond_7
    move-object/from16 v2, v21

    .line 250
    .line 251
    :goto_5
    invoke-virtual {v2, v5, v13, v4}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 252
    .line 253
    .line 254
    :goto_6
    const/4 v0, 0x0

    .line 255
    goto :goto_2

    .line 256
    :cond_8
    move-object/from16 v2, v21

    .line 257
    .line 258
    instance-of v4, v0, Ljava/lang/IllegalArgumentException;

    .line 259
    .line 260
    if-nez v4, :cond_b

    .line 261
    .line 262
    instance-of v4, v0, Ljava/lang/SecurityException;

    .line 263
    .line 264
    if-nez v4, :cond_b

    .line 265
    .line 266
    instance-of v4, v0, Ljava/lang/UnsupportedOperationException;

    .line 267
    .line 268
    if-nez v4, :cond_b

    .line 269
    .line 270
    instance-of v4, v0, Ljava/lang/NullPointerException;

    .line 271
    .line 272
    if-eqz v4, :cond_9

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_9
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    .line 276
    .line 277
    if-eqz v2, :cond_a

    .line 278
    .line 279
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 280
    .line 281
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_a
    throw v0

    .line 286
    :cond_b
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    const-string v5, "Failed to execute call: Unexpected exception: "

    .line 292
    .line 293
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    const/16 v0, 0x9

    .line 311
    .line 312
    const/4 v4, 0x0

    .line 313
    invoke-virtual {v2, v0, v13, v4}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 314
    .line 315
    .line 316
    const/4 v0, 0x0

    .line 317
    :goto_8
    invoke-static/range {v15 .. v16}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 318
    .line 319
    .line 320
    move-result-wide v5

    .line 321
    invoke-static {v14, v8}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    long-to-double v5, v5

    .line 326
    div-double v5, v5, v17

    .line 327
    .line 328
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    const/4 v6, 0x1

    .line 333
    new-array v8, v6, [Ljava/lang/Object;

    .line 334
    .line 335
    aput-object v5, v8, v4

    .line 336
    .line 337
    const/4 v4, 0x0

    .line 338
    invoke-static {v8, v6, v4, v7, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    if-nez v0, :cond_c

    .line 346
    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v4, "Failed to create capture session from "

    .line 350
    .line 351
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v4, ". Finalizing previous session"

    .line 358
    .line 359
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    if-eqz v3, :cond_c

    .line 370
    .line 371
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 372
    .line 373
    .line 374
    :cond_c
    if-eqz v0, :cond_d

    .line 375
    .line 376
    const/4 v12, 0x1

    .line 377
    goto :goto_9

    .line 378
    :cond_d
    const/4 v12, 0x0

    .line 379
    :goto_9
    return v12

    .line 380
    :goto_a
    invoke-static/range {v15 .. v16}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 381
    .line 382
    .line 383
    move-result-wide v1

    .line 384
    invoke-static {v14, v8}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    long-to-double v1, v1

    .line 389
    div-double v1, v1, v17

    .line 390
    .line 391
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    const/4 v4, 0x1

    .line 396
    new-array v2, v4, [Ljava/lang/Object;

    .line 397
    .line 398
    const/16 v20, 0x0

    .line 399
    .line 400
    aput-object v1, v2, v20

    .line 401
    .line 402
    const/4 v1, 0x0

    .line 403
    invoke-static {v2, v4, v1, v7, v3}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    throw v0
.end method

.method public final createConstrainedHighSpeedCaptureSession(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v7, "%.3f ms"

    .line 4
    .line 5
    const-string v8, " - "

    .line 6
    .line 7
    iget-object v9, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 8
    .line 9
    iget-object v10, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 10
    .line 11
    const-string v11, "CXCP"

    .line 12
    .line 13
    const-string v12, "Failed to execute call: Unexpected exception: "

    .line 14
    .line 15
    const-string v13, "Failed to execute call: Camera encountered an error: "

    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-object/from16 v2, p2

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v3, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v4, v0

    .line 37
    check-cast v4, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 38
    .line 39
    const/4 v14, 0x0

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    return v14

    .line 43
    :cond_0
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    const-string v0, "CXCP#createConstrainedHighSpeedCaptureSession-"

    .line 49
    .line 50
    iget-object v15, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 57
    .line 58
    .line 59
    move-result-wide v16

    .line 60
    const-wide v18, 0x412e848000000000L    # 1000000.0

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x1

    .line 67
    :try_start_0
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v14, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 71
    .line 72
    :try_start_1
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 73
    .line 74
    move-object/from16 v21, v3

    .line 75
    .line 76
    move-object v3, v4

    .line 77
    :try_start_2
    iget-object v4, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 78
    .line 79
    move-object/from16 v22, v5

    .line 80
    .line 81
    iget-object v5, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 82
    .line 83
    move/from16 v23, v6

    .line 84
    .line 85
    :try_start_3
    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 86
    .line 87
    .line 88
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    move-object/from16 v24, v9

    .line 90
    .line 91
    move-object/from16 v25, v21

    .line 92
    .line 93
    move/from16 v9, v23

    .line 94
    .line 95
    :try_start_4
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/cardview/widget/CardView$1;Landroid/os/Handler;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {v24 .. v24}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    move-object/from16 v4, p1

    .line 103
    .line 104
    invoke-virtual {v10, v4, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 105
    .line 106
    .line 107
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :catchall_0
    move-exception v0

    .line 113
    :goto_0
    move-object/from16 v4, v25

    .line 114
    .line 115
    goto/16 :goto_8

    .line 116
    .line 117
    :catch_0
    move-exception v0

    .line 118
    goto :goto_1

    .line 119
    :catchall_1
    move-exception v0

    .line 120
    move-object/from16 v25, v21

    .line 121
    .line 122
    move/from16 v9, v23

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catch_1
    move-exception v0

    .line 126
    move-object/from16 v25, v21

    .line 127
    .line 128
    move/from16 v9, v23

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catchall_2
    move-exception v0

    .line 132
    move v9, v6

    .line 133
    move-object/from16 v25, v21

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catch_2
    move-exception v0

    .line 137
    move v9, v6

    .line 138
    move-object/from16 v25, v21

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :catchall_3
    move-exception v0

    .line 142
    move-object/from16 v25, v3

    .line 143
    .line 144
    move v9, v6

    .line 145
    goto :goto_0

    .line 146
    :catch_3
    move-exception v0

    .line 147
    move-object/from16 v25, v3

    .line 148
    .line 149
    move-object v3, v4

    .line 150
    move v9, v6

    .line 151
    :goto_1
    :try_start_5
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 152
    .line 153
    if-eqz v2, :cond_7

    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 175
    .line 176
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    const/4 v6, 0x3

    .line 181
    if-eq v2, v9, :cond_6

    .line 182
    .line 183
    const/4 v4, 0x2

    .line 184
    if-eq v2, v4, :cond_5

    .line 185
    .line 186
    if-eq v2, v6, :cond_4

    .line 187
    .line 188
    const/4 v5, 0x4

    .line 189
    if-eq v2, v5, :cond_3

    .line 190
    .line 191
    const/4 v5, 0x5

    .line 192
    if-eq v2, v5, :cond_2

    .line 193
    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v4, "Unexpected CameraAccessException: "

    .line 197
    .line 198
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    const/16 v6, 0xb

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_2
    move v6, v4

    .line 215
    goto :goto_2

    .line 216
    :cond_3
    move v6, v9

    .line 217
    goto :goto_2

    .line 218
    :cond_4
    const/4 v6, 0x0

    .line 219
    goto :goto_2

    .line 220
    :cond_5
    const/4 v6, 0x6

    .line 221
    :cond_6
    :goto_2
    invoke-virtual {v14, v6, v15, v9}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 222
    .line 223
    .line 224
    :goto_3
    const/4 v2, 0x0

    .line 225
    :goto_4
    const/4 v5, 0x0

    .line 226
    goto :goto_6

    .line 227
    :cond_7
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    .line 228
    .line 229
    if-nez v2, :cond_a

    .line 230
    .line 231
    instance-of v2, v0, Ljava/lang/SecurityException;

    .line 232
    .line 233
    if-nez v2, :cond_a

    .line 234
    .line 235
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    .line 236
    .line 237
    if-nez v2, :cond_a

    .line 238
    .line 239
    instance-of v2, v0, Ljava/lang/NullPointerException;

    .line 240
    .line 241
    if-eqz v2, :cond_8

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_8
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    .line 245
    .line 246
    if-eqz v2, :cond_9

    .line 247
    .line 248
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 249
    .line 250
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_9
    throw v0

    .line 255
    :cond_a
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    const/16 v0, 0x9

    .line 275
    .line 276
    const/4 v2, 0x0

    .line 277
    invoke-virtual {v14, v0, v15, v2}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :goto_6
    invoke-static/range {v16 .. v17}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 282
    .line 283
    .line 284
    move-result-wide v12

    .line 285
    move-object/from16 v4, v25

    .line 286
    .line 287
    invoke-static {v4, v8}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    long-to-double v12, v12

    .line 292
    div-double v12, v12, v18

    .line 293
    .line 294
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    new-array v6, v9, [Ljava/lang/Object;

    .line 299
    .line 300
    aput-object v4, v6, v2

    .line 301
    .line 302
    const/4 v2, 0x0

    .line 303
    invoke-static {v6, v9, v2, v7, v0}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    if-nez v5, :cond_b

    .line 311
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v2, "Failed to create capture session from "

    .line 315
    .line 316
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v2, ". Finalizing previous session"

    .line 323
    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    if-eqz v3, :cond_b

    .line 335
    .line 336
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 337
    .line 338
    .line 339
    :cond_b
    if-eqz v5, :cond_c

    .line 340
    .line 341
    move v14, v9

    .line 342
    goto :goto_7

    .line 343
    :cond_c
    const/4 v14, 0x0

    .line 344
    :goto_7
    return v14

    .line 345
    :catchall_4
    move-exception v0

    .line 346
    move-object v4, v3

    .line 347
    move v9, v6

    .line 348
    :goto_8
    invoke-static/range {v16 .. v17}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 349
    .line 350
    .line 351
    move-result-wide v1

    .line 352
    invoke-static {v4, v8}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    long-to-double v1, v1

    .line 357
    div-double v1, v1, v18

    .line 358
    .line 359
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    new-array v2, v9, [Ljava/lang/Object;

    .line 364
    .line 365
    const/16 v20, 0x0

    .line 366
    .line 367
    aput-object v1, v2, v20

    .line 368
    .line 369
    const/4 v1, 0x0

    .line 370
    invoke-static {v2, v9, v1, v7, v3}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    throw v0
.end method

.method public final createExtensionSession(Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;)Z
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v6, v7, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->executor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 6
    .line 7
    const-string v8, "%.3f ms"

    .line 8
    .line 9
    const-string v9, " - "

    .line 10
    .line 11
    iget-object v10, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 12
    .line 13
    const-string v11, "CXCP"

    .line 14
    .line 15
    iget-object v0, v7, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionMode:Ljava/lang/Integer;

    .line 16
    .line 17
    iget-object v2, v7, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionStateCallback:Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 34
    .line 35
    const/4 v12, 0x0

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    return v12

    .line 39
    :cond_0
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    const-string v4, "CXCP#createExtensionSession-"

    .line 45
    .line 46
    iget-object v13, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v4, v13}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v14

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    const-wide v17, 0x412e848000000000L    # 1000000.0

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :try_start_0
    invoke-static {v14}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v12, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v4, v7, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->outputConfigurations:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 71
    .line 72
    move-wide/from16 v20, v15

    .line 73
    .line 74
    :try_start_2
    new-instance v15, Ljava/util/ArrayList;

    .line 75
    .line 76
    const/16 v5, 0xa

    .line 77
    .line 78
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 93
    if-eqz v5, :cond_2

    .line 94
    .line 95
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 100
    .line 101
    invoke-static {}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;->m$1()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    move-result-object v22

    .line 105
    move/from16 v23, v0

    .line 106
    .line 107
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v5, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    .line 112
    .line 113
    invoke-virtual {v5, v0}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    .line 123
    .line 124
    move/from16 v0, v23

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    move-object v2, v8

    .line 129
    :goto_1
    const/4 v5, 0x0

    .line 130
    goto/16 :goto_e

    .line 131
    .line 132
    :catch_0
    move-exception v0

    .line 133
    :goto_2
    move-object/from16 v16, v8

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_2
    move/from16 v23, v0

    .line 137
    .line 138
    :try_start_4
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;

    .line 139
    .line 140
    iget-object v4, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 141
    .line 142
    iget-object v5, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 143
    .line 144
    move-object/from16 v16, v8

    .line 145
    .line 146
    move/from16 v8, v23

    .line 147
    .line 148
    :try_start_5
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/cardview/widget/CardView$1;Landroidx/camera/camera2/pipe/core/HandlerExecutor;)V

    .line 149
    .line 150
    .line 151
    new-instance v2, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;

    .line 152
    .line 153
    invoke-direct {v2, v8, v15, v6, v0}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, v7, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 157
    .line 158
    if-eqz v0, :cond_4

    .line 159
    .line 160
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 161
    .line 162
    const/16 v5, 0x22

    .line 163
    .line 164
    if-lt v4, v5, :cond_4

    .line 165
    .line 166
    invoke-static {}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;->m$1()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    .line 175
    .line 176
    invoke-virtual {v0, v4}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v0}, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-eqz v0, :cond_3

    .line 185
    .line 186
    invoke-static {v2, v0}, Landroidx/camera/camera2/pipe/compat/Api34Compat;->setPostviewOutputConfiguration(Landroid/hardware/camera2/params/ExtensionSessionConfiguration;Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :catchall_1
    move-exception v0

    .line 191
    :goto_3
    move-object/from16 v2, v16

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :catch_1
    move-exception v0

    .line 195
    goto :goto_6

    .line 196
    :cond_3
    const-string v0, "Failed to unwrap Postview OutputConfiguration"

    .line 197
    .line 198
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 199
    .line 200
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v2

    .line 204
    :cond_4
    :goto_4
    invoke-virtual {v10, v2}, Landroid/hardware/camera2/CameraDevice;->createExtensionSession(Landroid/hardware/camera2/params/ExtensionSessionConfiguration;)V

    .line 205
    .line 206
    .line 207
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 208
    .line 209
    const/4 v2, 0x0

    .line 210
    goto/16 :goto_c

    .line 211
    .line 212
    :catchall_2
    move-exception v0

    .line 213
    :goto_5
    move-object/from16 v16, v8

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :catchall_3
    move-exception v0

    .line 217
    move-wide/from16 v20, v15

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :catch_2
    move-exception v0

    .line 221
    move-wide/from16 v20, v15

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :goto_6
    :try_start_6
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 225
    .line 226
    if-eqz v2, :cond_a

    .line 227
    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v4, "Failed to execute call: Camera encountered an error: "

    .line 234
    .line 235
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 253
    .line 254
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    const/4 v5, 0x3

    .line 259
    const/4 v4, 0x1

    .line 260
    if-eq v2, v4, :cond_9

    .line 261
    .line 262
    const/4 v4, 0x2

    .line 263
    if-eq v2, v4, :cond_8

    .line 264
    .line 265
    if-eq v2, v5, :cond_7

    .line 266
    .line 267
    const/4 v5, 0x4

    .line 268
    if-eq v2, v5, :cond_6

    .line 269
    .line 270
    const/4 v5, 0x5

    .line 271
    if-eq v2, v5, :cond_5

    .line 272
    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string v4, "Unexpected CameraAccessException: "

    .line 276
    .line 277
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    const/16 v5, 0xb

    .line 291
    .line 292
    :goto_7
    const/4 v4, 0x1

    .line 293
    goto :goto_8

    .line 294
    :cond_5
    move v5, v4

    .line 295
    goto :goto_7

    .line 296
    :cond_6
    const/4 v4, 0x1

    .line 297
    const/4 v5, 0x1

    .line 298
    goto :goto_8

    .line 299
    :cond_7
    const/4 v4, 0x1

    .line 300
    const/4 v5, 0x0

    .line 301
    goto :goto_8

    .line 302
    :cond_8
    const/4 v5, 0x6

    .line 303
    goto :goto_7

    .line 304
    :cond_9
    :goto_8
    invoke-virtual {v12, v5, v13, v4}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 305
    .line 306
    .line 307
    :goto_9
    const/4 v2, 0x0

    .line 308
    :goto_a
    const/4 v4, 0x0

    .line 309
    goto :goto_c

    .line 310
    :cond_a
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    .line 311
    .line 312
    if-nez v2, :cond_d

    .line 313
    .line 314
    instance-of v2, v0, Ljava/lang/SecurityException;

    .line 315
    .line 316
    if-nez v2, :cond_d

    .line 317
    .line 318
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    .line 319
    .line 320
    if-nez v2, :cond_d

    .line 321
    .line 322
    instance-of v2, v0, Ljava/lang/NullPointerException;

    .line 323
    .line 324
    if-eqz v2, :cond_b

    .line 325
    .line 326
    goto :goto_b

    .line 327
    :cond_b
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    .line 328
    .line 329
    if-eqz v2, :cond_c

    .line 330
    .line 331
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 332
    .line 333
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_c
    throw v0

    .line 338
    :cond_d
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    const-string v4, "Failed to execute call: Unexpected exception: "

    .line 344
    .line 345
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    const/16 v0, 0x9

    .line 363
    .line 364
    const/4 v2, 0x0

    .line 365
    invoke-virtual {v12, v0, v13, v2}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 366
    .line 367
    .line 368
    goto :goto_a

    .line 369
    :goto_c
    invoke-static/range {v20 .. v21}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 370
    .line 371
    .line 372
    move-result-wide v5

    .line 373
    invoke-static {v14, v9}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    long-to-double v5, v5

    .line 378
    div-double v5, v5, v17

    .line 379
    .line 380
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    const/4 v6, 0x1

    .line 385
    new-array v7, v6, [Ljava/lang/Object;

    .line 386
    .line 387
    aput-object v5, v7, v2

    .line 388
    .line 389
    move-object/from16 v2, v16

    .line 390
    .line 391
    const/4 v5, 0x0

    .line 392
    invoke-static {v7, v6, v5, v2, v0}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    if-nez v4, :cond_e

    .line 400
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    const-string v2, "Failed to create extension session from "

    .line 404
    .line 405
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v2, ". Finalizing previous session"

    .line 412
    .line 413
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    if-eqz v3, :cond_e

    .line 424
    .line 425
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 426
    .line 427
    .line 428
    :cond_e
    if-eqz v4, :cond_f

    .line 429
    .line 430
    const/4 v12, 0x1

    .line 431
    goto :goto_d

    .line 432
    :cond_f
    const/4 v12, 0x0

    .line 433
    :goto_d
    return v12

    .line 434
    :catchall_4
    move-exception v0

    .line 435
    move-object v2, v8

    .line 436
    move-wide/from16 v20, v15

    .line 437
    .line 438
    goto/16 :goto_1

    .line 439
    .line 440
    :goto_e
    invoke-static/range {v20 .. v21}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 441
    .line 442
    .line 443
    move-result-wide v3

    .line 444
    invoke-static {v14, v9}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    long-to-double v3, v3

    .line 449
    div-double v3, v3, v17

    .line 450
    .line 451
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    const/4 v4, 0x1

    .line 456
    new-array v6, v4, [Ljava/lang/Object;

    .line 457
    .line 458
    const/16 v19, 0x0

    .line 459
    .line 460
    aput-object v3, v6, v19

    .line 461
    .line 462
    invoke-static {v6, v4, v5, v2, v1}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .line 468
    .line 469
    throw v0
.end method

.method public final createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
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
    const-string v7, "CXCP#createReprocessCaptureRequest-"

    .line 16
    .line 17
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 30
    .line 31
    .line 32
    move-result-wide v8

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v12, 0x1

    .line 35
    const/4 v13, 0x0

    .line 36
    :try_start_0
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v14, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    :try_start_1
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .line 43
    move-object/from16 v10, p1

    .line 44
    .line 45
    const-wide v15, 0x412e848000000000L    # 1000000.0

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    :try_start_2
    invoke-virtual {v0, v10}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto :goto_0

    .line 61
    :catchall_1
    move-exception v0

    .line 62
    const-wide v15, 0x412e848000000000L    # 1000000.0

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :catch_1
    move-exception v0

    .line 70
    const-wide v15, 0x412e848000000000L    # 1000000.0

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :goto_0
    :try_start_3
    instance-of v10, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 76
    .line 77
    if-eqz v10, :cond_5

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    const/4 v5, 0x3

    .line 105
    if-eq v4, v12, :cond_4

    .line 106
    .line 107
    const/4 v10, 0x2

    .line 108
    if-eq v4, v10, :cond_3

    .line 109
    .line 110
    if-eq v4, v5, :cond_2

    .line 111
    .line 112
    const/4 v5, 0x4

    .line 113
    if-eq v4, v5, :cond_1

    .line 114
    .line 115
    const/4 v5, 0x5

    .line 116
    if-eq v4, v5, :cond_0

    .line 117
    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v5, "Unexpected CameraAccessException: "

    .line 121
    .line 122
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    const/16 v5, 0xb

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_0
    move v5, v10

    .line 139
    goto :goto_1

    .line 140
    :cond_1
    move v5, v12

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    move v5, v11

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    const/4 v5, 0x6

    .line 145
    :cond_4
    :goto_1
    invoke-virtual {v14, v5, v7, v12}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    :goto_2
    move-object v0, v13

    .line 149
    goto :goto_4

    .line 150
    :cond_5
    instance-of v5, v0, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    if-nez v5, :cond_8

    .line 153
    .line 154
    instance-of v5, v0, Ljava/lang/SecurityException;

    .line 155
    .line 156
    if-nez v5, :cond_8

    .line 157
    .line 158
    instance-of v5, v0, Ljava/lang/UnsupportedOperationException;

    .line 159
    .line 160
    if-nez v5, :cond_8

    .line 161
    .line 162
    instance-of v5, v0, Ljava/lang/NullPointerException;

    .line 163
    .line 164
    if-eqz v5, :cond_6

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    .line 168
    .line 169
    if-eqz v4, :cond_7

    .line 170
    .line 171
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 172
    .line 173
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_7
    throw v0

    .line 178
    :cond_8
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    const/16 v0, 0x9

    .line 198
    .line 199
    invoke-virtual {v14, v0, v7, v11}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :goto_4
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 204
    .line 205
    .line 206
    move-result-wide v4

    .line 207
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    long-to-double v4, v4

    .line 212
    div-double/2addr v4, v15

    .line 213
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    new-array v5, v12, [Ljava/lang/Object;

    .line 218
    .line 219
    aput-object v4, v5, v11

    .line 220
    .line 221
    invoke-static {v5, v12, v13, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    return-object v0

    .line 229
    :goto_5
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 230
    .line 231
    .line 232
    move-result-wide v4

    .line 233
    invoke-static {v6, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    long-to-double v4, v4

    .line 238
    div-double/2addr v4, v15

    .line 239
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    new-array v5, v12, [Ljava/lang/Object;

    .line 244
    .line 245
    aput-object v4, v5, v11

    .line 246
    .line 247
    invoke-static {v5, v12, v13, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    throw v0
.end method

.method public final createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v7, "%.3f ms"

    .line 4
    .line 5
    const-string v8, " - "

    .line 6
    .line 7
    iget-object v9, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 8
    .line 9
    iget-object v10, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 10
    .line 11
    const-string v11, "CXCP"

    .line 12
    .line 13
    const-string v12, "Failed to execute call: Unexpected exception: "

    .line 14
    .line 15
    const-string v13, "Failed to execute call: Camera encountered an error: "

    .line 16
    .line 17
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-object/from16 v2, p3

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v3, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v4, v0

    .line 37
    check-cast v4, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 38
    .line 39
    const/4 v14, 0x0

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    return v14

    .line 43
    :cond_0
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    const-string v0, "CXCP#createReprocessableCaptureSession-"

    .line 49
    .line 50
    iget-object v15, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 57
    .line 58
    .line 59
    move-result-wide v16

    .line 60
    const-wide v18, 0x412e848000000000L    # 1000000.0

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x1

    .line 67
    :try_start_0
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v14, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 71
    .line 72
    :try_start_1
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 73
    .line 74
    move-object/from16 v21, v3

    .line 75
    .line 76
    move-object v3, v4

    .line 77
    :try_start_2
    iget-object v4, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 78
    .line 79
    move-object/from16 v22, v5

    .line 80
    .line 81
    iget-object v5, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 82
    .line 83
    move/from16 v23, v6

    .line 84
    .line 85
    :try_start_3
    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 86
    .line 87
    .line 88
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    move-object/from16 v24, v9

    .line 90
    .line 91
    move-object/from16 v25, v21

    .line 92
    .line 93
    move/from16 v9, v23

    .line 94
    .line 95
    :try_start_4
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/cardview/widget/CardView$1;Landroid/os/Handler;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {v24 .. v24}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    move-object/from16 v4, p1

    .line 103
    .line 104
    move-object/from16 v5, p2

    .line 105
    .line 106
    invoke-virtual {v10, v4, v5, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 107
    .line 108
    .line 109
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    goto/16 :goto_6

    .line 113
    .line 114
    :catchall_0
    move-exception v0

    .line 115
    :goto_0
    move-object/from16 v4, v25

    .line 116
    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :catch_0
    move-exception v0

    .line 120
    goto :goto_1

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    move-object/from16 v25, v21

    .line 123
    .line 124
    move/from16 v9, v23

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    .line 128
    move-object/from16 v25, v21

    .line 129
    .line 130
    move/from16 v9, v23

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catchall_2
    move-exception v0

    .line 134
    move v9, v6

    .line 135
    move-object/from16 v25, v21

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catch_2
    move-exception v0

    .line 139
    move v9, v6

    .line 140
    move-object/from16 v25, v21

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catchall_3
    move-exception v0

    .line 144
    move-object/from16 v25, v3

    .line 145
    .line 146
    move v9, v6

    .line 147
    goto :goto_0

    .line 148
    :catch_3
    move-exception v0

    .line 149
    move-object/from16 v25, v3

    .line 150
    .line 151
    move-object v3, v4

    .line 152
    move v9, v6

    .line 153
    :goto_1
    :try_start_5
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 154
    .line 155
    if-eqz v2, :cond_7

    .line 156
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    const/4 v6, 0x3

    .line 183
    if-eq v2, v9, :cond_6

    .line 184
    .line 185
    const/4 v4, 0x2

    .line 186
    if-eq v2, v4, :cond_5

    .line 187
    .line 188
    if-eq v2, v6, :cond_4

    .line 189
    .line 190
    const/4 v5, 0x4

    .line 191
    if-eq v2, v5, :cond_3

    .line 192
    .line 193
    const/4 v5, 0x5

    .line 194
    if-eq v2, v5, :cond_2

    .line 195
    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v4, "Unexpected CameraAccessException: "

    .line 199
    .line 200
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    const/16 v6, 0xb

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_2
    move v6, v4

    .line 217
    goto :goto_2

    .line 218
    :cond_3
    move v6, v9

    .line 219
    goto :goto_2

    .line 220
    :cond_4
    const/4 v6, 0x0

    .line 221
    goto :goto_2

    .line 222
    :cond_5
    const/4 v6, 0x6

    .line 223
    :cond_6
    :goto_2
    invoke-virtual {v14, v6, v15, v9}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 224
    .line 225
    .line 226
    :goto_3
    const/4 v2, 0x0

    .line 227
    :goto_4
    const/4 v5, 0x0

    .line 228
    goto :goto_6

    .line 229
    :cond_7
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    .line 230
    .line 231
    if-nez v2, :cond_a

    .line 232
    .line 233
    instance-of v2, v0, Ljava/lang/SecurityException;

    .line 234
    .line 235
    if-nez v2, :cond_a

    .line 236
    .line 237
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    .line 238
    .line 239
    if-nez v2, :cond_a

    .line 240
    .line 241
    instance-of v2, v0, Ljava/lang/NullPointerException;

    .line 242
    .line 243
    if-eqz v2, :cond_8

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_8
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    .line 247
    .line 248
    if-eqz v2, :cond_9

    .line 249
    .line 250
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 251
    .line 252
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_9
    throw v0

    .line 257
    :cond_a
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    const/16 v0, 0x9

    .line 277
    .line 278
    const/4 v2, 0x0

    .line 279
    invoke-virtual {v14, v0, v15, v2}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 280
    .line 281
    .line 282
    goto :goto_4

    .line 283
    :goto_6
    invoke-static/range {v16 .. v17}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 284
    .line 285
    .line 286
    move-result-wide v12

    .line 287
    move-object/from16 v4, v25

    .line 288
    .line 289
    invoke-static {v4, v8}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    long-to-double v12, v12

    .line 294
    div-double v12, v12, v18

    .line 295
    .line 296
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    new-array v6, v9, [Ljava/lang/Object;

    .line 301
    .line 302
    aput-object v4, v6, v2

    .line 303
    .line 304
    const/4 v2, 0x0

    .line 305
    invoke-static {v6, v9, v2, v7, v0}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    if-nez v5, :cond_b

    .line 313
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    const-string v2, "Failed to create reprocess session from "

    .line 317
    .line 318
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v2, ". Finalizing previous session"

    .line 325
    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    if-eqz v3, :cond_b

    .line 337
    .line 338
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 339
    .line 340
    .line 341
    :cond_b
    if-eqz v5, :cond_c

    .line 342
    .line 343
    move v14, v9

    .line 344
    goto :goto_7

    .line 345
    :cond_c
    const/4 v14, 0x0

    .line 346
    :goto_7
    return v14

    .line 347
    :catchall_4
    move-exception v0

    .line 348
    move-object v4, v3

    .line 349
    move v9, v6

    .line 350
    :goto_8
    invoke-static/range {v16 .. v17}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 351
    .line 352
    .line 353
    move-result-wide v1

    .line 354
    invoke-static {v4, v8}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    long-to-double v1, v1

    .line 359
    div-double v1, v1, v18

    .line 360
    .line 361
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    new-array v2, v9, [Ljava/lang/Object;

    .line 366
    .line 367
    const/16 v20, 0x0

    .line 368
    .line 369
    aput-object v1, v2, v20

    .line 370
    .line 371
    const/4 v1, 0x0

    .line 372
    invoke-static {v2, v9, v1, v7, v3}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    throw v0
.end method

.method public final createReprocessableCaptureSessionByConfigurations(Landroidx/camera/camera2/pipe/compat/InputConfigData;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v7, "%.3f ms"

    .line 6
    .line 7
    const-string v8, " - "

    .line 8
    .line 9
    iget-object v9, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 10
    .line 11
    iget-object v10, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 12
    .line 13
    const-string v11, "CXCP"

    .line 14
    .line 15
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-object/from16 v2, p3

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v4, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 35
    .line 36
    const/4 v12, 0x0

    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    return v12

    .line 40
    :cond_0
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    const-string v4, "CXCP#createReprocessableCaptureSessionByConfigurations-"

    .line 46
    .line 47
    iget-object v13, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v4, v13}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v14

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 54
    .line 55
    .line 56
    move-result-wide v15

    .line 57
    const-wide v17, 0x412e848000000000L    # 1000000.0

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    :try_start_0
    invoke-static {v14}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v6, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    :try_start_1
    new-instance v12, Landroid/hardware/camera2/params/InputConfiguration;

    .line 68
    .line 69
    iget v4, v0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->width:I

    .line 70
    .line 71
    iget v5, v0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->height:I

    .line 72
    .line 73
    iget v0, v0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->format:I

    .line 74
    .line 75
    invoke-direct {v12, v4, v5, v0}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    .line 79
    .line 80
    const/16 v4, 0xa

    .line 81
    .line 82
    move-object/from16 v5, p2

    .line 83
    .line 84
    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_2

    .line 100
    .line 101
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 106
    .line 107
    const-class v20, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 108
    .line 109
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v5, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    .line 114
    .line 115
    invoke-virtual {v5, v2}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-object/from16 v2, p3

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    goto/16 :goto_9

    .line 129
    .line 130
    :catch_0
    move-exception v0

    .line 131
    move-object/from16 v22, v6

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_2
    move-object v2, v0

    .line 135
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;

    .line 136
    .line 137
    iget-object v4, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 138
    .line 139
    iget-object v5, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .line 141
    move-object/from16 v20, v6

    .line 142
    .line 143
    :try_start_2
    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 144
    .line 145
    .line 146
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    move-object/from16 v21, v9

    .line 148
    .line 149
    move-object/from16 v22, v20

    .line 150
    .line 151
    move-object v9, v2

    .line 152
    move-object/from16 v2, p3

    .line 153
    .line 154
    :try_start_3
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/cardview/widget/CardView$1;Landroid/os/Handler;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual/range {v21 .. v21}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v10, v12, v9, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 162
    .line 163
    .line 164
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    .line 166
    move-object v0, v4

    .line 167
    :goto_1
    const/4 v4, 0x0

    .line 168
    goto/16 :goto_7

    .line 169
    .line 170
    :catch_1
    move-exception v0

    .line 171
    goto :goto_2

    .line 172
    :catch_2
    move-exception v0

    .line 173
    move-object/from16 v22, v20

    .line 174
    .line 175
    :goto_2
    :try_start_4
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 176
    .line 177
    if-eqz v2, :cond_8

    .line 178
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v4, "Failed to execute call: Camera encountered an error: "

    .line 185
    .line 186
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    const/4 v5, 0x3

    .line 210
    const/4 v4, 0x1

    .line 211
    if-eq v2, v4, :cond_7

    .line 212
    .line 213
    const/4 v4, 0x2

    .line 214
    if-eq v2, v4, :cond_6

    .line 215
    .line 216
    if-eq v2, v5, :cond_5

    .line 217
    .line 218
    const/4 v5, 0x4

    .line 219
    if-eq v2, v5, :cond_4

    .line 220
    .line 221
    const/4 v5, 0x5

    .line 222
    if-eq v2, v5, :cond_3

    .line 223
    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v4, "Unexpected CameraAccessException: "

    .line 227
    .line 228
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    const/16 v5, 0xb

    .line 242
    .line 243
    :goto_3
    move-object/from16 v2, v22

    .line 244
    .line 245
    const/4 v4, 0x1

    .line 246
    goto :goto_4

    .line 247
    :cond_3
    move v5, v4

    .line 248
    goto :goto_3

    .line 249
    :cond_4
    move-object/from16 v2, v22

    .line 250
    .line 251
    const/4 v4, 0x1

    .line 252
    const/4 v5, 0x1

    .line 253
    goto :goto_4

    .line 254
    :cond_5
    move-object/from16 v2, v22

    .line 255
    .line 256
    const/4 v4, 0x1

    .line 257
    const/4 v5, 0x0

    .line 258
    goto :goto_4

    .line 259
    :cond_6
    const/4 v5, 0x6

    .line 260
    goto :goto_3

    .line 261
    :cond_7
    move-object/from16 v2, v22

    .line 262
    .line 263
    :goto_4
    invoke-virtual {v2, v5, v13, v4}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 264
    .line 265
    .line 266
    :goto_5
    const/4 v0, 0x0

    .line 267
    goto :goto_1

    .line 268
    :cond_8
    move-object/from16 v2, v22

    .line 269
    .line 270
    instance-of v4, v0, Ljava/lang/IllegalArgumentException;

    .line 271
    .line 272
    if-nez v4, :cond_b

    .line 273
    .line 274
    instance-of v4, v0, Ljava/lang/SecurityException;

    .line 275
    .line 276
    if-nez v4, :cond_b

    .line 277
    .line 278
    instance-of v4, v0, Ljava/lang/UnsupportedOperationException;

    .line 279
    .line 280
    if-nez v4, :cond_b

    .line 281
    .line 282
    instance-of v4, v0, Ljava/lang/NullPointerException;

    .line 283
    .line 284
    if-eqz v4, :cond_9

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_9
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    .line 288
    .line 289
    if-eqz v2, :cond_a

    .line 290
    .line 291
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 292
    .line 293
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_a
    throw v0

    .line 298
    :cond_b
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v5, "Failed to execute call: Unexpected exception: "

    .line 304
    .line 305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    const/16 v0, 0x9

    .line 323
    .line 324
    const/4 v4, 0x0

    .line 325
    invoke-virtual {v2, v0, v13, v4}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 326
    .line 327
    .line 328
    const/4 v0, 0x0

    .line 329
    :goto_7
    invoke-static/range {v15 .. v16}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 330
    .line 331
    .line 332
    move-result-wide v5

    .line 333
    invoke-static {v14, v8}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    long-to-double v5, v5

    .line 338
    div-double v5, v5, v17

    .line 339
    .line 340
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    const/4 v6, 0x1

    .line 345
    new-array v8, v6, [Ljava/lang/Object;

    .line 346
    .line 347
    aput-object v5, v8, v4

    .line 348
    .line 349
    const/4 v4, 0x0

    .line 350
    invoke-static {v8, v6, v4, v7, v2}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    if-nez v0, :cond_c

    .line 358
    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    const-string v4, "Failed to create reprocess session from "

    .line 362
    .line 363
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v4, ". Finalizing previous session"

    .line 370
    .line 371
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    if-eqz v3, :cond_c

    .line 382
    .line 383
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 384
    .line 385
    .line 386
    :cond_c
    if-eqz v0, :cond_d

    .line 387
    .line 388
    const/4 v12, 0x1

    .line 389
    goto :goto_8

    .line 390
    :cond_d
    const/4 v12, 0x0

    .line 391
    :goto_8
    return v12

    .line 392
    :goto_9
    invoke-static/range {v15 .. v16}, Landroidx/camera/core/impl/Config$-CC;->m(J)J

    .line 393
    .line 394
    .line 395
    move-result-wide v1

    .line 396
    invoke-static {v14, v8}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    long-to-double v1, v1

    .line 401
    div-double v1, v1, v17

    .line 402
    .line 403
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    const/4 v4, 0x1

    .line 408
    new-array v2, v4, [Ljava/lang/Object;

    .line 409
    .line 410
    const/16 v19, 0x0

    .line 411
    .line 412
    aput-object v1, v2, v19

    .line 413
    .line 414
    const/4 v1, 0x0

    .line 415
    invoke-static {v2, v4, v1, v7, v3}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    throw v0
.end method

.method public final getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onCameraAudioRestrictionUpdated-LwUUkyU(I)V
    .locals 7

    .line 1
    const-string v0, "Failed to execute call: Unexpected exception: "

    .line 2
    .line 3
    const-string v1, "Failed to execute call: Camera encountered an error: "

    .line 4
    .line 5
    const-string v2, "setCameraAudioRestriction"

    .line 6
    .line 7
    :try_start_0
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    :try_start_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Api30Compat;->setCameraAudioRestriction(Landroid/hardware/camera2/CameraDevice;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :catch_0
    move-exception p0

    .line 22
    :try_start_2
    instance-of p1, p0, Landroid/hardware/camera2/CameraAccessException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const-string v5, "CXCP"

    .line 26
    .line 27
    if-eqz p1, :cond_5

    .line 28
    .line 29
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/4 v0, 0x1

    .line 55
    const/4 v1, 0x3

    .line 56
    if-eq p1, v0, :cond_3

    .line 57
    .line 58
    const/4 v6, 0x2

    .line 59
    if-eq p1, v6, :cond_2

    .line 60
    .line 61
    if-eq p1, v1, :cond_4

    .line 62
    .line 63
    const/4 v1, 0x4

    .line 64
    if-eq p1, v1, :cond_1

    .line 65
    .line 66
    const/4 v1, 0x5

    .line 67
    if-eq p1, v1, :cond_0

    .line 68
    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "Unexpected CameraAccessException: "

    .line 72
    .line 73
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    const/16 v4, 0xb

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move v4, v6

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    move v4, v0

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const/4 v4, 0x6

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    move v4, v1

    .line 96
    :cond_4
    :goto_0
    invoke-virtual {v3, v4, v2, v0}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    if-nez p1, :cond_8

    .line 103
    .line 104
    instance-of p1, p0, Ljava/lang/SecurityException;

    .line 105
    .line 106
    if-nez p1, :cond_8

    .line 107
    .line 108
    instance-of p1, p0, Ljava/lang/UnsupportedOperationException;

    .line 109
    .line 110
    if-nez p1, :cond_8

    .line 111
    .line 112
    instance-of p1, p0, Ljava/lang/NullPointerException;

    .line 113
    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    const-string p0, "Failed to execute call: Camera may be closed"

    .line 122
    .line 123
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_7
    throw p0

    .line 128
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    const/16 p0, 0x9

    .line 148
    .line 149
    invoke-virtual {v3, p0, v2, v4}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    .line 151
    .line 152
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :catchall_0
    move-exception p0

    .line 157
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 158
    .line 159
    .line 160
    throw p0
.end method

.method public final onDeviceClosed()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v1, Lkotlinx/atomicfu/AtomicRef;->FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    const-string p0, "Check failed."

    .line 30
    .line 31
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onDeviceClosing()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    .line 10
    .line 11
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, "#onSessionDisconnected"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :try_start_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, "#onSessionFinalized"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :try_start_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AndroidCameraDevice(camera="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 p0, 0x29

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Landroid/hardware/camera2/CameraDevice;

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
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method
