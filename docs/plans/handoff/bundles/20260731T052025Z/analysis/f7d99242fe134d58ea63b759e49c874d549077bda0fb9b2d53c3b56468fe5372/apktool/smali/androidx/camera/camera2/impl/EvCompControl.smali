.class public final Landroidx/camera/camera2/impl/EvCompControl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# instance fields
.field public _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field public final compat:Landroidx/camera/camera2/compat/EvCompImpl;

.field public exposureState:Landroidx/camera/camera2/adapter/EvCompValue;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/compat/EvCompImpl;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompImpl;

    .line 8
    .line 9
    new-instance v0, Landroidx/camera/camera2/adapter/EvCompValue;

    .line 10
    .line 11
    iget-boolean v1, p1, Landroidx/camera/camera2/compat/EvCompImpl;->supported:Z

    .line 12
    .line 13
    iget-object v2, p1, Landroidx/camera/camera2/compat/EvCompImpl;->range:Landroid/util/Range;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/camera/camera2/compat/EvCompImpl;->step:Landroid/util/Rational;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v0, v1, v3, v2, p1}, Landroidx/camera/camera2/adapter/EvCompValue;-><init>(ZILandroid/util/Range;Landroid/util/Rational;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/camera/camera2/impl/EvCompControl;->exposureState:Landroidx/camera/camera2/adapter/EvCompValue;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/EvCompControl;->exposureState:Landroidx/camera/camera2/adapter/EvCompValue;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/camera/camera2/adapter/EvCompValue;->supported:Z

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/camera/camera2/adapter/EvCompValue;->range:Landroid/util/Range;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/camera/camera2/adapter/EvCompValue;->step:Landroid/util/Rational;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v3, Landroidx/camera/camera2/adapter/EvCompValue;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct {v3, v1, v4, v2, v0}, Landroidx/camera/camera2/adapter/EvCompValue;-><init>(ZILandroid/util/Range;Landroid/util/Rational;)V

    .line 19
    .line 20
    .line 21
    iput-object v3, p0, Landroidx/camera/camera2/impl/EvCompControl;->exposureState:Landroidx/camera/camera2/adapter/EvCompValue;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/EvCompControl;->updateAsync(Z)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/impl/EvCompControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/EvCompControl;->updateAsync(Z)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final updateAsync(Z)Lkotlinx/coroutines/CompletableDeferredImpl;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Landroidx/camera/camera2/impl/EvCompControl;->compat:Landroidx/camera/camera2/compat/EvCompImpl;

    .line 7
    .line 8
    iget-boolean v3, v2, Landroidx/camera/camera2/compat/EvCompImpl;->supported:Z

    .line 9
    .line 10
    iget-object v4, v2, Landroidx/camera/camera2/compat/EvCompImpl;->range:Landroid/util/Range;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string p1, "ExposureCompensation is not supported"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 22
    .line 23
    invoke-direct {p1}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-virtual {v4, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "Requested ExposureCompensation 0 is not within valid range ["

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, " .. "

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/16 v0, 0x5d

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 77
    .line 78
    invoke-direct {p1}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_1
    iget-object v3, p0, Landroidx/camera/camera2/impl/EvCompControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 86
    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    iget-object v4, p0, Landroidx/camera/camera2/impl/EvCompControl;->exposureState:Landroidx/camera/camera2/adapter/EvCompValue;

    .line 90
    .line 91
    iget-boolean v5, v4, Landroidx/camera/camera2/adapter/EvCompValue;->supported:Z

    .line 92
    .line 93
    iget-object v6, v4, Landroidx/camera/camera2/adapter/EvCompValue;->range:Landroid/util/Range;

    .line 94
    .line 95
    iget-object v4, v4, Landroidx/camera/camera2/adapter/EvCompValue;->step:Landroid/util/Rational;

    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    new-instance v7, Landroidx/camera/camera2/adapter/EvCompValue;

    .line 104
    .line 105
    invoke-direct {v7, v5, v0, v6, v4}, Landroidx/camera/camera2/adapter/EvCompValue;-><init>(ZILandroid/util/Range;Landroid/util/Rational;)V

    .line 106
    .line 107
    .line 108
    iput-object v7, p0, Landroidx/camera/camera2/impl/EvCompControl;->exposureState:Landroidx/camera/camera2/adapter/EvCompValue;

    .line 109
    .line 110
    iget-object p0, v2, Landroidx/camera/camera2/compat/EvCompImpl;->comboRequestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    .line 111
    .line 112
    new-instance v4, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 113
    .line 114
    invoke-direct {v4}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object v5, v2, Landroidx/camera/camera2/compat/EvCompImpl;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 118
    .line 119
    if-eqz v5, :cond_3

    .line 120
    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    const-string p1, "Cancelled by another setExposureCompensationIndex()"

    .line 124
    .line 125
    invoke-static {p1, v5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    invoke-static {v4, v5}, Landroidx/room/util/DBUtil;->propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    :goto_0
    iput-object v4, v2, Landroidx/camera/camera2/compat/EvCompImpl;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 133
    .line 134
    iget-object p1, v2, Landroidx/camera/camera2/compat/EvCompImpl;->updateListener:Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;

    .line 135
    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/ComboRequestListener;->removeListener(Landroidx/camera/camera2/pipe/Request$Listener;)V

    .line 139
    .line 140
    .line 141
    const/4 p1, 0x0

    .line 142
    iput-object p1, v2, Landroidx/camera/camera2/compat/EvCompImpl;->updateListener:Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;

    .line 143
    .line 144
    :cond_4
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 145
    .line 146
    invoke-static {p1, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    sget-object v1, Landroidx/camera/camera2/impl/UseCaseCameraKt;->defaultOptionPriority:Landroidx/camera/core/impl/Config$OptionPriority;

    .line 154
    .line 155
    invoke-interface {v3, p1, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setParametersAsync(Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;)Lkotlinx/coroutines/Deferred;

    .line 156
    .line 157
    .line 158
    new-instance p1, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;

    .line 159
    .line 160
    invoke-direct {p1, v0, v4}, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;-><init>(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, v2, Landroidx/camera/camera2/compat/EvCompImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 164
    .line 165
    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutor:Landroidx/camera/camera2/impl/UseCaseThreads$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/impl/ComboRequestListener;->addListener(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/impl/UseCaseThreads$$ExternalSyntheticLambda0;)V

    .line 168
    .line 169
    .line 170
    new-instance p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 171
    .line 172
    const/4 v0, 0x4

    .line 173
    invoke-direct {p0, v0, v2, p1}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, p0}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 177
    .line 178
    .line 179
    iput-object p1, v2, Landroidx/camera/camera2/compat/EvCompImpl;->updateListener:Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;

    .line 180
    .line 181
    return-object v4

    .line 182
    :cond_5
    new-instance p0, Lorg/koin/core/error/InstanceCreationException;

    .line 183
    .line 184
    const-string p1, "Camera is not active."

    .line 185
    .line 186
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, v2, Landroidx/camera/camera2/compat/EvCompImpl;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 190
    .line 191
    if-eqz p1, :cond_6

    .line 192
    .line 193
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 194
    .line 195
    .line 196
    :cond_6
    new-instance p1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 197
    .line 198
    invoke-direct {p1}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 202
    .line 203
    .line 204
    return-object p1
.end method
