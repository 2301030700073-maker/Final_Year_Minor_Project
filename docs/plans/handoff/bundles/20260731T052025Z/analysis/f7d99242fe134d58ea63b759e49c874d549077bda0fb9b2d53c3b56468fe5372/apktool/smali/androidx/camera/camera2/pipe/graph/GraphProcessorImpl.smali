.class public final Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final _graphState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

.field public final externalStateGraphListeners:Ljava/util/List;

.field public final graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/Listener3A;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 20
    .line 21
    iget-object v1, p3, Landroidx/camera/camera2/pipe/CameraGraph$Config;->graphStateListeners:Ljava/util/List;

    .line 22
    .line 23
    iput-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->externalStateGraphListeners:Ljava/util/List;

    .line 24
    .line 25
    iget-object v4, p3, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultParameters:Ljava/util/Map;

    .line 26
    .line 27
    iget-object v5, p3, Landroidx/camera/camera2/pipe/CameraGraph$Config;->requiredParameters:Ljava/util/Map;

    .line 28
    .line 29
    sget-object v1, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->ignore3ARequiredParameters:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 30
    .line 31
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const-string v10, "CXCP"

    .line 42
    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " is set to true, ignoring GraphState3A parameters."

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v0, p3, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-object/from16 v1, p6

    .line 81
    .line 82
    iget-object v1, v1, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget-object v0, v0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->awaitRepeatingRequestBeforeCapture:Lnet/openid/appauth/internal/Logger;

    .line 88
    .line 89
    sget-object v1, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->SHOULD_WAIT_FOR_REPEATING_DEVICE_MAP:Ljava/util/Map;

    .line 90
    .line 91
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Ljava/util/Set;

    .line 98
    .line 99
    const/4 v2, 0x1

    .line 100
    const/4 v11, 0x0

    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-ne v1, v2, :cond_2

    .line 110
    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 112
    .line 113
    const/16 v3, 0x22

    .line 114
    .line 115
    if-ge v1, v3, :cond_2

    .line 116
    .line 117
    const/16 v1, 0xa

    .line 118
    .line 119
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    move v1, v11

    .line 125
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget v0, v0, Lnet/openid/appauth/internal/Logger;->mLogLevel:I

    .line 129
    .line 130
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const/4 v1, 0x0

    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    new-instance v3, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;

    .line 138
    .line 139
    int-to-long v6, v0

    .line 140
    invoke-direct {v3, v6, v7}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;-><init>(J)V

    .line 141
    .line 142
    .line 143
    move-object v0, v3

    .line 144
    :goto_1
    move v3, v2

    .line 145
    goto :goto_2

    .line 146
    :cond_3
    move-object v0, v1

    .line 147
    goto :goto_1

    .line 148
    :goto_2
    new-instance v2, Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 149
    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    :goto_3
    move-object/from16 v7, p5

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_4
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :goto_4
    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    const/4 v7, 0x2

    .line 167
    new-array v7, v7, [Ljava/lang/Object;

    .line 168
    .line 169
    aput-object p4, v7, v11

    .line 170
    .line 171
    aput-object v0, v7, v3

    .line 172
    .line 173
    invoke-static {v7}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    iget-object v8, p1, Landroidx/camera/camera2/pipe/core/Threads;->cameraPipeScope:Lkotlinx/coroutines/CoroutineScope;

    .line 178
    .line 179
    iget-object v9, p1, Landroidx/camera/camera2/pipe/core/Threads;->lightweightDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 180
    .line 181
    move-object v3, p2

    .line 182
    invoke-direct/range {v2 .. v9}, Landroidx/camera/camera2/pipe/graph/GraphLoop;-><init>(Landroidx/camera/camera2/pipe/CameraGraphId;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 183
    .line 184
    .line 185
    iput-object v2, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 186
    .line 187
    if-eqz v0, :cond_6

    .line 188
    .line 189
    iget-object p1, v0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->_graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 190
    .line 191
    if-nez p1, :cond_5

    .line 192
    .line 193
    iput-object v2, v0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->_graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 194
    .line 195
    invoke-virtual {v2, v11}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setCaptureProcessingEnabled(Z)V

    .line 196
    .line 197
    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string p2, "Capture processing has been disabled for "

    .line 201
    .line 202
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string p2, " until "

    .line 209
    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget-wide v0, v0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->requestsUntilActive:J

    .line 214
    .line 215
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string p2, " frames have been completed."

    .line 219
    .line 220
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_5
    const-string p0, "GraphLoop has already been set!"

    .line 232
    .line 233
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v1

    .line 237
    :cond_6
    :goto_5
    sget-object p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    .line 238
    .line 239
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->_graphState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 244
    .line 245
    return-void
.end method


# virtual methods
.method public final onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V
    .locals 4

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
    const-string v1, " onGraphError("

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x29

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "CXCP"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->_graphState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 32
    .line 33
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object v2, v1

    .line 38
    check-cast v2, Landroidx/camera/camera2/pipe/GraphState;

    .line 39
    .line 40
    instance-of v3, v2, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    instance-of v2, v2, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v2, p1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    sget-object v2, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    .line 52
    .line 53
    :goto_1
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->externalStateGraphListeners:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v1, v0, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/GraphState;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    return-void
.end method

.method public final onGraphStarted(Lorg/apache/james/mime4j/stream/RawField;)V
    .locals 2

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
    const-string v1, " onGraphStarted"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "CXCP"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    sget-object v0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->_graphState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setRequestProcessor(Lorg/apache/james/mime4j/stream/RawField;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->externalStateGraphListeners:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    .line 52
    .line 53
    iget-object v1, p1, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v1, p1, v0}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/GraphState;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public final onGraphStopped()V
    .locals 3

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
    const-string v1, " onGraphStopped"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "CXCP"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->_graphState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    .line 25
    sget-object v1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v2}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setRequestProcessor(Lorg/apache/james/mime4j/stream/RawField;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->externalStateGraphListeners:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    .line 53
    .line 54
    iget-object v2, v0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2, v0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/GraphState;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public final setRepeatingRequest(Landroidx/camera/camera2/pipe/Request;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->lock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_repeatingRequest:Landroidx/camera/camera2/pipe/Request;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_repeatingRequest:Landroidx/camera/camera2/pipe/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    :try_start_1
    new-instance v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    .line 20
    .line 21
    invoke-direct {v2, p1}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;-><init>(Landroidx/camera/camera2/pipe/Request;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalStore$7;->tryEmit(Landroidx/camera/camera2/pipe/graph/GraphCommand;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    sget-object v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalStore$7;->tryEmit(Landroidx/camera/camera2/pipe/graph/GraphCommand;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    :goto_0
    monitor-exit v0

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->listeners:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_1
    if-ge v0, p1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->listeners:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;

    .line 54
    .line 55
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;->onStopRepeating()V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    return-void

    .line 62
    :goto_2
    monitor-exit v0

    .line 63
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GraphProcessor(cameraGraph: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final update3AParameters(Ljava/util/LinkedHashMap;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 10
    .line 11
    new-instance v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_graphParameters:Ljava/util/Map;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalStore$7;->tryEmit(Landroidx/camera/camera2/pipe/graph/GraphCommand;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    .line 25
    throw p0
.end method
