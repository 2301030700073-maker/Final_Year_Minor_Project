.class public final Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $cameraId:Ljava/lang/String;

.field public final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->$cameraId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->$cameraId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Failed to execute call: Unexpected exception: "

    .line 4
    .line 5
    const-string v2, "Failed to execute call: Camera may be closed"

    .line 6
    .line 7
    const-string v3, "Unexpected CameraAccessException: "

    .line 8
    .line 9
    const-string v4, "Failed to execute call: Camera encountered an error: "

    .line 10
    .line 11
    const-string v5, "CXCP"

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v6, v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->$cameraId:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 19
    .line 20
    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->cameraManager:Ljavax/inject/Provider;

    .line 21
    .line 22
    iget-object v8, v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 23
    .line 24
    const/4 v12, 0x5

    .line 25
    const/4 v13, 0x4

    .line 26
    const/4 v14, 0x2

    .line 27
    const/4 v15, 0x3

    .line 28
    const/4 v11, 0x1

    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    :try_start_0
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 36
    .line 37
    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CameraManager;->isCameraDeviceSetupSupported(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :catch_0
    move-exception v0

    .line 48
    instance-of v9, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 49
    .line 50
    if-eqz v9, :cond_5

    .line 51
    .line 52
    new-instance v9, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eq v9, v11, :cond_4

    .line 78
    .line 79
    if-eq v9, v14, :cond_3

    .line 80
    .line 81
    if-eq v9, v15, :cond_2

    .line 82
    .line 83
    if-eq v9, v13, :cond_1

    .line 84
    .line 85
    if-eq v9, v12, :cond_0

    .line 86
    .line 87
    new-instance v9, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    const/16 v0, 0xb

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    move v0, v14

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    move v0, v11

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    const/4 v0, 0x0

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, 0x6

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    move v0, v15

    .line 114
    :goto_0
    invoke-virtual {v8, v0, v6, v11}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    :goto_1
    move-object/from16 v0, v16

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_5
    instance-of v9, v0, Ljava/lang/IllegalArgumentException;

    .line 121
    .line 122
    if-nez v9, :cond_8

    .line 123
    .line 124
    instance-of v9, v0, Ljava/lang/SecurityException;

    .line 125
    .line 126
    if-nez v9, :cond_8

    .line 127
    .line 128
    instance-of v9, v0, Ljava/lang/UnsupportedOperationException;

    .line 129
    .line 130
    if-nez v9, :cond_8

    .line 131
    .line 132
    instance-of v9, v0, Ljava/lang/NullPointerException;

    .line 133
    .line 134
    if-eqz v9, :cond_6

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    instance-of v9, v0, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    if-eqz v9, :cond_7

    .line 140
    .line 141
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_7
    throw v0

    .line 146
    :cond_8
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    const/16 v9, 0x9

    .line 166
    .line 167
    const/4 v10, 0x0

    .line 168
    invoke-virtual {v8, v9, v6, v10}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :goto_3
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_9

    .line 179
    .line 180
    return-object v16

    .line 181
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v9, "Initializing CameraDeviceSetup for "

    .line 184
    .line 185
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :try_start_1
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 207
    .line 208
    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CameraManager;->getCameraDeviceSetup(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    .line 209
    .line 210
    .line 211
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    goto/16 :goto_7

    .line 213
    .line 214
    :catch_1
    move-exception v0

    .line 215
    instance-of v7, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 216
    .line 217
    if-eqz v7, :cond_f

    .line 218
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 239
    .line 240
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eq v1, v11, :cond_e

    .line 245
    .line 246
    if-eq v1, v14, :cond_d

    .line 247
    .line 248
    if-eq v1, v15, :cond_c

    .line 249
    .line 250
    if-eq v1, v13, :cond_b

    .line 251
    .line 252
    if-eq v1, v12, :cond_a

    .line 253
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    const/16 v10, 0xb

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_a
    move v10, v14

    .line 273
    goto :goto_4

    .line 274
    :cond_b
    move v10, v11

    .line 275
    goto :goto_4

    .line 276
    :cond_c
    const/4 v10, 0x0

    .line 277
    goto :goto_4

    .line 278
    :cond_d
    const/4 v10, 0x6

    .line 279
    goto :goto_4

    .line 280
    :cond_e
    move v10, v15

    .line 281
    :goto_4
    invoke-virtual {v8, v10, v6, v11}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 282
    .line 283
    .line 284
    :goto_5
    move-object/from16 v0, v16

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_f
    instance-of v3, v0, Ljava/lang/IllegalArgumentException;

    .line 288
    .line 289
    if-nez v3, :cond_12

    .line 290
    .line 291
    instance-of v3, v0, Ljava/lang/SecurityException;

    .line 292
    .line 293
    if-nez v3, :cond_12

    .line 294
    .line 295
    instance-of v3, v0, Ljava/lang/UnsupportedOperationException;

    .line 296
    .line 297
    if-nez v3, :cond_12

    .line 298
    .line 299
    instance-of v3, v0, Ljava/lang/NullPointerException;

    .line 300
    .line 301
    if-eqz v3, :cond_10

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_10
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    .line 305
    .line 306
    if-eqz v1, :cond_11

    .line 307
    .line 308
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_11
    throw v0

    .line 313
    :cond_12
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    const/16 v9, 0x9

    .line 333
    .line 334
    const/4 v10, 0x0

    .line 335
    invoke-virtual {v8, v9, v6, v10}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 336
    .line 337
    .line 338
    goto :goto_5

    .line 339
    :goto_7
    if-eqz v0, :cond_13

    .line 340
    .line 341
    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;

    .line 342
    .line 343
    invoke-direct {v1, v0, v6, v8}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;-><init>(Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)V

    .line 344
    .line 345
    .line 346
    move-object/from16 v16, v1

    .line 347
    .line 348
    :cond_13
    return-object v16
.end method
