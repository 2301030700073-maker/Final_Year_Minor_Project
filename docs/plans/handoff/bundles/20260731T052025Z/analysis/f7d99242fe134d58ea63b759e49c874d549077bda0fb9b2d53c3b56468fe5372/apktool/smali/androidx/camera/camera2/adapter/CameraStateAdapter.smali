.class public final Landroidx/camera/camera2/adapter/CameraStateAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cameraInternalState:Landroidx/core/view/MenuHostHelper;

.field public final cameraState:Landroidx/lifecycle/MutableLiveData;

.field public final cameraStateListeners:Ljava/util/LinkedHashMap;

.field public currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

.field public currentCameraStateError:Landroidx/camera/core/AutoValue_CameraState_StateError;

.field public currentGraph:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

.field public isRemoved:Z

.field public final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroidx/core/view/MenuHostHelper;

    .line 12
    .line 13
    const/4 v1, 0x7

    .line 14
    invoke-direct {v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraInternalState:Landroidx/core/view/MenuHostHelper;

    .line 18
    .line 19
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraState:Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    sget-object v0, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 29
    .line 30
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraStateListeners:Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final handleStateTransition(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/GraphState;)V
    .locals 11

    .line 1
    sget-object v0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE$1:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentGraph:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 6
    .line 7
    const-string v3, "CXCP"

    .line 8
    .line 9
    if-eq p1, v2, :cond_0

    .line 10
    .line 11
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_15

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Ignored stale transition "

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, " for "

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 v2, 0x2

    .line 56
    sget-object v4, Landroidx/camera/core/impl/CameraInternal$State;->OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    .line 57
    .line 58
    sget-object v5, Landroidx/camera/core/impl/CameraInternal$State;->OPENING:Landroidx/camera/core/impl/CameraInternal$State;

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    if-eq p1, v2, :cond_12

    .line 62
    .line 63
    const/4 v2, 0x3

    .line 64
    sget-object v7, Landroidx/camera/core/impl/CameraInternal$State;->PENDING_OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    .line 65
    .line 66
    sget-object v8, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    .line 67
    .line 68
    if-eq p1, v2, :cond_e

    .line 69
    .line 70
    const/4 v2, 0x4

    .line 71
    sget-object v9, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    .line 72
    .line 73
    sget-object v10, Landroidx/camera/core/impl/CameraInternal$State;->CLOSING:Landroidx/camera/core/impl/CameraInternal$State;

    .line 74
    .line 75
    if-eq p1, v2, :cond_b

    .line 76
    .line 77
    const/4 v0, 0x5

    .line 78
    sget-object v2, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    .line 79
    .line 80
    if-eq p1, v0, :cond_5

    .line 81
    .line 82
    const/4 v0, 0x6

    .line 83
    if-eq p1, v0, :cond_1

    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 94
    .line 95
    invoke-direct {v6, v10}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_2
    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 107
    .line 108
    invoke-direct {v6, v8}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :cond_3
    instance-of p1, p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    .line 114
    .line 115
    if-eqz p1, :cond_14

    .line 116
    .line 117
    move-object p1, p2

    .line 118
    check-cast p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    .line 119
    .line 120
    iget p1, p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->cameraError:I

    .line 121
    .line 122
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->isRecoverableError-90vkdD0$camera_camera2(I)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 129
    .line 130
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-direct {v6, v7, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_4
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 140
    .line 141
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {v6, v8, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_5
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_6

    .line 155
    .line 156
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 157
    .line 158
    invoke-direct {v6, v4}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_6
    instance-of p1, p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    .line 164
    .line 165
    if-eqz p1, :cond_9

    .line 166
    .line 167
    move-object p1, p2

    .line 168
    check-cast p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    .line 169
    .line 170
    iget v0, p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->cameraError:I

    .line 171
    .line 172
    iget-boolean p1, p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->willAttemptRetry:Z

    .line 173
    .line 174
    if-eqz p1, :cond_7

    .line 175
    .line 176
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 177
    .line 178
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-direct {v6, v5, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_7
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->isRecoverableError-90vkdD0$camera_camera2(I)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_8

    .line 192
    .line 193
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 194
    .line 195
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-direct {v6, v7, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_8
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 205
    .line 206
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-direct {v6, v10, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_9
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_a

    .line 220
    .line 221
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 222
    .line 223
    invoke-direct {v6, v10}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_a
    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-eqz p1, :cond_14

    .line 233
    .line 234
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 235
    .line 236
    invoke-direct {v6, v8}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_b
    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-eqz p1, :cond_c

    .line 246
    .line 247
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 248
    .line 249
    invoke-direct {v6, v8}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_c
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-eqz p1, :cond_d

    .line 259
    .line 260
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 261
    .line 262
    invoke-direct {v6, v5}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;)V

    .line 263
    .line 264
    .line 265
    goto :goto_0

    .line 266
    :cond_d
    instance-of p1, p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    .line 267
    .line 268
    if-eqz p1, :cond_14

    .line 269
    .line 270
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 271
    .line 272
    move-object p1, p2

    .line 273
    check-cast p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    .line 274
    .line 275
    iget p1, p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->cameraError:I

    .line 276
    .line 277
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-direct {v6, v10, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 282
    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_e
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    if-eqz p1, :cond_f

    .line 290
    .line 291
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 292
    .line 293
    invoke-direct {v6, v5}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;)V

    .line 294
    .line 295
    .line 296
    goto :goto_0

    .line 297
    :cond_f
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    if-eqz p1, :cond_10

    .line 302
    .line 303
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 304
    .line 305
    invoke-direct {v6, v4}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;)V

    .line 306
    .line 307
    .line 308
    goto :goto_0

    .line 309
    :cond_10
    instance-of p1, p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    .line 310
    .line 311
    if-eqz p1, :cond_14

    .line 312
    .line 313
    move-object p1, p2

    .line 314
    check-cast p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    .line 315
    .line 316
    iget p1, p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->cameraError:I

    .line 317
    .line 318
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->isRecoverableError-90vkdD0$camera_camera2(I)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_11

    .line 323
    .line 324
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 325
    .line 326
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-direct {v6, v7, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 331
    .line 332
    .line 333
    goto :goto_0

    .line 334
    :cond_11
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 335
    .line 336
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->toCameraStateError-90vkdD0$camera_camera2(I)Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-direct {v6, v8, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 341
    .line 342
    .line 343
    goto :goto_0

    .line 344
    :cond_12
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    if-eqz p1, :cond_13

    .line 349
    .line 350
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 351
    .line 352
    invoke-direct {v6, v5}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;)V

    .line 353
    .line 354
    .line 355
    goto :goto_0

    .line 356
    :cond_13
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    if-eqz p1, :cond_14

    .line 361
    .line 362
    new-instance v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;

    .line 363
    .line 364
    invoke-direct {v6, v4}, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;-><init>(Landroidx/camera/core/impl/CameraInternal$State;)V

    .line 365
    .line 366
    .line 367
    :cond_14
    :goto_0
    if-nez v6, :cond_16

    .line 368
    .line 369
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    if-eqz p1, :cond_15

    .line 374
    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v0, "Impermissible state transition: current camera internal state: "

    .line 378
    .line 379
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 383
    .line 384
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string p0, ", received graph state: "

    .line 388
    .line 389
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    :cond_15
    return-void

    .line 403
    :cond_16
    iget-object p1, v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->state:Landroidx/camera/core/impl/CameraInternal$State;

    .line 404
    .line 405
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 406
    .line 407
    iget-object p1, v6, Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;->error:Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 408
    .line 409
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraStateError:Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 410
    .line 411
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    if-eqz p1, :cond_17

    .line 416
    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string p2, "Updated current camera internal state to "

    .line 420
    .line 421
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    :cond_17
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 435
    .line 436
    iget-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraStateError:Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 437
    .line 438
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 439
    .line 440
    .line 441
    return-void
.end method

.method public final onGraphStateUpdated(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/GraphState;)V
    .locals 4

    .line 1
    const-string v0, "Ignoring graph state update "

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-boolean v2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->isRemoved:Z

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const-string p0, "CXCP"

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, " on removed camera."

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit v1

    .line 45
    return-void

    .line 46
    :cond_1
    :try_start_1
    const-string v0, "CXCP"

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const-string v0, "CXCP"

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, " state updated to "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->handleStateTransition(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/GraphState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 84
    :goto_1
    monitor-exit v1

    .line 85
    throw p0
.end method

.method public final postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraInternalState:Landroidx/core/view/MenuHostHelper;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    new-instance v1, Landroidx/camera/core/impl/LiveDataObservable$Result;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Landroidx/camera/core/impl/LiveDataObservable$Result;-><init>(Landroidx/camera/core/impl/CameraInternal$State;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x5

    .line 23
    const/4 v2, 0x3

    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v0, v3, :cond_4

    .line 26
    .line 27
    if-eq v0, v2, :cond_3

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    if-eq v0, v4, :cond_2

    .line 31
    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x6

    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    move v1, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string p0, "Unexpected CameraInternal state: "

    .line 40
    .line 41
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    move v1, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move v1, v4

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const/4 v1, 0x1

    .line 50
    :cond_4
    :goto_0
    new-instance p1, Landroidx/camera/core/AutoValue_CameraState;

    .line 51
    .line 52
    invoke-direct {p1, v1, p2}, Landroidx/camera/core/AutoValue_CameraState;-><init>(ILandroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraState:Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-object p2, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter p2

    .line 84
    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraStateListeners:Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Ljava/lang/Iterable;

    .line 91
    .line 92
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p2

    .line 97
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_6

    .line 106
    .line 107
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Ljava/util/Map$Entry;

    .line 112
    .line 113
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroidx/core/util/Consumer;

    .line 118
    .line 119
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    check-cast p2, Ljava/util/concurrent/Executor;

    .line 124
    .line 125
    new-instance v1, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;

    .line 126
    .line 127
    invoke-direct {v1, v2, v0, p1}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_6
    return-void

    .line 135
    :catchall_0
    move-exception p0

    .line 136
    monitor-exit p2

    .line 137
    throw p0
.end method
