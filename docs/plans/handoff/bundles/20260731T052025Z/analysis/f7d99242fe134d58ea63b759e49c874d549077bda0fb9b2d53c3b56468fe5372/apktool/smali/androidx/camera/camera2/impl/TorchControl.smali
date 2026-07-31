.class public final Landroidx/camera/camera2/impl/TorchControl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# instance fields
.field public _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field public final _torchState:Landroidx/lifecycle/MutableLiveData;

.field public final _torchStrength:Landroidx/lifecycle/MutableLiveData;

.field public _updateTorchStateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

.field public _updateTorchStrengthSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

.field public final defaultTorchStrength:I

.field public final hasFlashUnit:Z

.field public final isTorchStrengthSupported:Z

.field public final state3AControl:Landroidx/camera/camera2/impl/State3AControl;

.field public torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Landroidx/camera/camera2/impl/TorchControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    .line 14
    .line 15
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isFlashAvailable$default(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iput-boolean p2, p0, Landroidx/camera/camera2/impl/TorchControl;->hasFlashUnit:Z

    .line 20
    .line 21
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p2, v0}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchState:Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    sget-object p2, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    .line 34
    .line 35
    iget-object p1, p1, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    const/16 v1, 0x23

    .line 47
    .line 48
    if-lt p2, v1, :cond_0

    .line 49
    .line 50
    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api35Compat;->isTorchStrengthSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    move p3, v0

    .line 57
    :cond_0
    iput-boolean p3, p0, Landroidx/camera/camera2/impl/TorchControl;->isTorchStrengthSupported:Z

    .line 58
    .line 59
    if-lt p2, v1, :cond_1

    .line 60
    .line 61
    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api35Compat;->getDefaultTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    :cond_1
    iput v0, p0, Landroidx/camera/camera2/impl/TorchControl;->defaultTorchStrength:I

    .line 66
    .line 67
    if-lt p2, v1, :cond_2

    .line 68
    .line 69
    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api35Compat;->getMaxTorchStrengthLevel(Landroidx/camera/camera2/pipe/CameraMetadata;)I

    .line 70
    .line 71
    .line 72
    :cond_2
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-direct {p1, p2}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchStrength:Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "There is a new enableTorch being set"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string v2, "There is a new torch strength being set"

    .line 18
    .line 19
    invoke-static {v2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iput-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchState-RaJ5uN0(I)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {p0, v1, v2, v1}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync-Oup_wC0$camera_camera2(IZZ)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchState:Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Integer;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move v1, v0

    .line 28
    :goto_1
    invoke-virtual {p0, v1, v0, v0}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync-Oup_wC0$camera_camera2(IZZ)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public final setTorchAsync-Oup_wC0$camera_camera2(IZZ)Lkotlinx/coroutines/CompletableDeferredImpl;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    .line 2
    .line 3
    const-string v1, "CXCP"

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "TorchControl#setTorchAsync: torch mode = "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v4, "TorchMode(value="

    .line 21
    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v4, 0x29

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    new-instance v2, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 48
    .line 49
    invoke-direct {v2}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 50
    .line 51
    .line 52
    if-nez p3, :cond_1

    .line 53
    .line 54
    iget-boolean p3, p0, Landroidx/camera/camera2/impl/TorchControl;->hasFlashUnit:Z

    .line 55
    .line 56
    if-nez p3, :cond_1

    .line 57
    .line 58
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string p1, "No flash unit"

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p0}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 66
    .line 67
    .line 68
    return-object v2

    .line 69
    :cond_1
    iget-object p3, p0, Landroidx/camera/camera2/impl/TorchControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 70
    .line 71
    if-eqz p3, :cond_d

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchState-RaJ5uN0(I)V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    const-string p2, "There is a new enableTorch being set"

    .line 84
    .line 85
    invoke-static {p2, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    iput-object v4, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    if-eqz v3, :cond_4

    .line 92
    .line 93
    invoke-static {v2, v3}, Landroidx/room/util/DBUtil;->propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    :goto_0
    iput-object v2, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 97
    .line 98
    const/4 p2, 0x0

    .line 99
    const/4 v3, 0x1

    .line 100
    if-nez p1, :cond_5

    .line 101
    .line 102
    move v5, v3

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    move v5, p2

    .line 105
    :goto_1
    if-nez v5, :cond_6

    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    :cond_6
    iget-object v5, v0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    .line 112
    .line 113
    monitor-enter v5

    .line 114
    :try_start_0
    iput-object v4, v0, Landroidx/camera/camera2/impl/State3AControl;->_preferredAeMode:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    monitor-exit v5

    .line 117
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/State3AControl;->update()Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 118
    .line 119
    .line 120
    sget-object v4, Landroidx/camera/camera2/pipe/AeMode;->values:Ljava/util/List;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/State3AControl;->getFinalSupportedAeMode()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->fromIntOrNull-kQd0u18(I)Landroidx/camera/camera2/pipe/AeMode;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    if-eqz v4, :cond_7

    .line 131
    .line 132
    iget v0, v4, Landroidx/camera/camera2/pipe/AeMode;->value:I

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_8

    .line 140
    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v5, "TorchControl#setTorchAsync: Failed to convert ae mode of value "

    .line 144
    .line 145
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/State3AControl;->getFinalSupportedAeMode()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v0, " with AeMode.fromIntOrNull, fallback to AeMode.ON"

    .line 156
    .line 157
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :cond_8
    move v0, v3

    .line 168
    :goto_2
    if-nez p1, :cond_9

    .line 169
    .line 170
    move p2, v3

    .line 171
    :cond_9
    if-nez p2, :cond_c

    .line 172
    .line 173
    if-ne p1, v3, :cond_a

    .line 174
    .line 175
    iget-object p1, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchStrength:Landroidx/lifecycle/MutableLiveData;

    .line 176
    .line 177
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Ljava/lang/Integer;

    .line 182
    .line 183
    if-eqz p1, :cond_b

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchStrengthLevelAsync(I)V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_a
    iget p1, p0, Landroidx/camera/camera2/impl/TorchControl;->defaultTorchStrength:I

    .line 194
    .line 195
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->updateTorchStrengthLevelAsync(I)V

    .line 196
    .line 197
    .line 198
    :cond_b
    :goto_3
    invoke-interface {p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setTorchOnAsync()Lkotlinx/coroutines/Deferred;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    goto :goto_4

    .line 203
    :cond_c
    invoke-interface {p3, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setTorchOffAsync-MtizInI(I)Lkotlinx/coroutines/Deferred;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    :goto_4
    new-instance p1, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 208
    .line 209
    const/4 p2, 0x3

    .line 210
    invoke-direct {p1, p2}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    new-instance p2, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 217
    .line 218
    invoke-direct {p2, p0, v2, p1, v3}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 219
    .line 220
    .line 221
    check-cast p0, Lkotlinx/coroutines/JobSupport;

    .line 222
    .line 223
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 224
    .line 225
    .line 226
    return-object v2

    .line 227
    :catchall_0
    move-exception p0

    .line 228
    monitor-exit v5

    .line 229
    throw p0

    .line 230
    :cond_d
    const-string p0, "Camera is not active."

    .line 231
    .line 232
    invoke-static {p0, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 233
    .line 234
    .line 235
    return-object v2
.end method

.method public final updateTorchState-RaJ5uN0(I)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/camera/camera2/impl/TorchControl$TorchMode;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->torchMode:Landroidx/camera/camera2/impl/TorchControl$TorchMode;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {}, Lorg/jsoup/helper/Validate;->isMainThread()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object p0, p0, Landroidx/camera/camera2/impl/TorchControl;->_torchState:Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final updateTorchStrengthLevelAsync(I)V
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x23

    .line 9
    .line 10
    if-lt v1, v2, :cond_3

    .line 11
    .line 12
    iget-boolean v1, p0, Landroidx/camera/camera2/impl/TorchControl;->isTorchStrengthSupported:Z

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string v2, "There is a new torch strength being set"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 29
    .line 30
    :cond_1
    iput-object v0, p0, Landroidx/camera/camera2/impl/TorchControl;->_updateTorchStrengthSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 31
    .line 32
    new-instance v1, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v1, v2, p0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v1, p1}, Landroidx/camera/camera2/compat/Api35Compat;->setFlashStrengthLevel(Ljava/util/LinkedHashMap;I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Landroidx/camera/camera2/impl/TorchControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    sget-object p1, Landroidx/camera/camera2/impl/UseCaseCameraKt;->defaultOptionPriority:Landroidx/camera/core/impl/Config$OptionPriority;

    .line 54
    .line 55
    invoke-interface {p0, v1, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setParametersAsync(Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;)Lkotlinx/coroutines/Deferred;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    invoke-static {p0, v0}, Landroidx/room/util/DBUtil;->propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    const-string p0, "Camera is not active."

    .line 66
    .line 67
    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 72
    .line 73
    const-string p1, "Configuring torch strength is not supported on the device."

    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method
