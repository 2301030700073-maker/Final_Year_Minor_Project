.class public final Landroidx/camera/camera2/impl/UseCaseCameraState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final currentInternalParameters:Ljava/util/LinkedHashMap;

.field public final currentListeners:Ljava/util/LinkedHashSet;

.field public final currentParameters:Ljava/util/LinkedHashMap;

.field public final currentStreams:Ljava/util/LinkedHashSet;

.field public currentTemplate:Landroidx/camera/camera2/pipe/RequestTemplate;

.field public lastAeMode:Landroidx/camera/camera2/pipe/AeMode;

.field public lastAfMode:Landroidx/camera/camera2/pipe/AfMode;

.field public lastAwbMode:Landroidx/camera/camera2/pipe/AwbMode;

.field public final lock:Ljava/lang/Object;

.field public final pendingSignalCount:Lkotlinx/atomicfu/AtomicInt;

.field public final requestListener:Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;

.field public final submittedRequestCounter:Lkotlinx/atomicfu/AtomicInt;

.field public final templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

.field public updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

.field public final updateSignals:Lkotlin/collections/ArrayDeque;

.field public updating:Z

.field public final useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->submittedRequestCounter:Lkotlinx/atomicfu/AtomicInt;

    .line 24
    .line 25
    new-instance p2, Lkotlin/collections/ArrayDeque;

    .line 26
    .line 27
    invoke-direct {p2}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lkotlin/collections/ArrayDeque;

    .line 31
    .line 32
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 47
    .line 48
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/LinkedHashSet;

    .line 52
    .line 53
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 54
    .line 55
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/LinkedHashSet;

    .line 59
    .line 60
    new-instance p2, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-direct {p2, v0, p0}, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->requestListener:Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;

    .line 67
    .line 68
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Lkotlinx/atomicfu/AtomicInt;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final submitLatest(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "Update RepeatingRequest: "

    .line 6
    .line 7
    instance-of v3, v0, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;

    .line 13
    .line 14
    iget v4, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;

    .line 27
    .line 28
    invoke-direct {v3, v1, v0}, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x0

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    if-ne v5, v7, :cond_1

    .line 43
    .line 44
    iget-object v3, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 45
    .line 46
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    goto/16 :goto_8

    .line 52
    .line 53
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v8

    .line 59
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    :try_start_1
    iget-object v0, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v5, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 74
    .line 75
    iput v7, v3, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->label:I

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->acquireSession(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    if-ne v0, v4, :cond_3

    .line 82
    .line 83
    return-object v4

    .line 84
    :cond_3
    move-object v3, v5

    .line 85
    :goto_1
    :try_start_2
    move-object v4, v0

    .line 86
    check-cast v4, Ljava/lang/AutoCloseable;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    .line 88
    :try_start_3
    move-object v0, v4

    .line 89
    check-cast v0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;

    .line 90
    .line 91
    iget-object v5, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    .line 92
    .line 93
    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    :try_start_4
    iget-object v7, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/LinkedHashSet;

    .line 95
    .line 96
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_4

    .line 101
    .line 102
    move-object v9, v8

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    iget-object v14, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentTemplate:Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 105
    .line 106
    iget-object v7, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/LinkedHashSet;

    .line 107
    .line 108
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    iget-object v7, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    .line 113
    .line 114
    iget-object v9, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentTemplate:Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 115
    .line 116
    invoke-interface {v7, v9}, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;->getOverrideParams-xlOpshk(Landroidx/camera/camera2/pipe/RequestTemplate;)Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    iget-object v9, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/LinkedHashMap;

    .line 121
    .line 122
    invoke-static {v9}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-static {v7, v9}, Lkotlin/collections/MapsKt__MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    iget-object v7, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    sget-object v7, Landroidx/camera/camera2/impl/TagsKt;->USE_CASE_CAMERA_STATE_CUSTOM_TAG:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 137
    .line 138
    iget-object v9, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->submittedRequestCounter:Lkotlinx/atomicfu/AtomicInt;

    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    sget-object v13, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 144
    .line 145
    invoke-virtual {v13, v9}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    new-instance v13, Ljava/lang/Integer;

    .line 150
    .line 151
    invoke-direct {v13, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v12, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    iget-object v7, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/LinkedHashSet;

    .line 158
    .line 159
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    iget-object v7, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->requestListener:Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;

    .line 164
    .line 165
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    new-instance v9, Landroidx/camera/camera2/pipe/Request;

    .line 169
    .line 170
    const/16 v15, 0x20

    .line 171
    .line 172
    invoke-direct/range {v9 .. v15}, Landroidx/camera/camera2/pipe/Request;-><init>(Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/RequestTemplate;I)V

    .line 173
    .line 174
    .line 175
    :goto_2
    iget-object v7, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 176
    .line 177
    iput-boolean v6, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    .line 178
    .line 179
    iput-object v8, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 180
    .line 181
    :try_start_5
    monitor-exit v5

    .line 182
    if-nez v9, :cond_6

    .line 183
    .line 184
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/MutexToken;

    .line 185
    .line 186
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/MutexToken;->getReleased()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-nez v2, :cond_5

    .line 191
    .line 192
    iget-object v0, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 193
    .line 194
    invoke-virtual {v0, v8}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->setRepeatingRequest(Landroidx/camera/camera2/pipe/Request;)V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_5
    const-string v2, "Cannot call stopRepeating on "

    .line 199
    .line 200
    const-string v5, " after close."

    .line 201
    .line 202
    invoke-static {v0, v5, v2}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :goto_3
    iput-object v7, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    move-object v2, v0

    .line 210
    goto :goto_7

    .line 211
    :cond_6
    if-eqz v7, :cond_7

    .line 212
    .line 213
    iget-object v5, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    .line 214
    .line 215
    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 216
    :try_start_6
    iget-object v10, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lkotlin/collections/ArrayDeque;

    .line 217
    .line 218
    new-instance v11, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    .line 219
    .line 220
    iget-object v12, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->submittedRequestCounter:Lkotlinx/atomicfu/AtomicInt;

    .line 221
    .line 222
    iget v12, v12, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 223
    .line 224
    invoke-direct {v11, v12, v7}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;-><init>(ILkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v10, v11}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    iget-object v7, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Lkotlinx/atomicfu/AtomicInt;

    .line 231
    .line 232
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    sget-object v10, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 236
    .line 237
    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 238
    .line 239
    .line 240
    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 241
    :try_start_7
    monitor-exit v5

    .line 242
    new-instance v5, Ljava/lang/Integer;

    .line 243
    .line 244
    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :catchall_1
    move-exception v0

    .line 249
    monitor-exit v5

    .line 250
    throw v0

    .line 251
    :cond_7
    :goto_4
    const-string v5, "CXCP"

    .line 252
    .line 253
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_8

    .line 258
    .line 259
    const-string v5, "CXCP"

    .line 260
    .line 261
    new-instance v7, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/MutexToken;

    .line 283
    .line 284
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/MutexToken;->getReleased()Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-nez v2, :cond_9

    .line 289
    .line 290
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 291
    .line 292
    invoke-virtual {v2, v9}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->setRepeatingRequest(Landroidx/camera/camera2/pipe/Request;)V

    .line 293
    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_9
    const-string v2, "Cannot call startRepeating on "

    .line 297
    .line 298
    const-string v5, " after close."

    .line 299
    .line 300
    invoke-static {v0, v5, v2}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    :goto_5
    iget-object v2, v9, Landroidx/camera/camera2/pipe/Request;->parameters:Ljava/util/Map;

    .line 304
    .line 305
    invoke-virtual {v1, v0, v2}, Landroidx/camera/camera2/impl/UseCaseCameraState;->update3A(Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 306
    .line 307
    .line 308
    :goto_6
    :try_start_8
    invoke-static {v4, v8}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_0

    .line 309
    .line 310
    .line 311
    goto :goto_a

    .line 312
    :catchall_2
    move-exception v0

    .line 313
    :try_start_9
    monitor-exit v5

    .line 314
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 315
    :goto_7
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 316
    :catchall_3
    move-exception v0

    .line 317
    :try_start_b
    invoke-static {v4, v2}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 318
    .line 319
    .line 320
    throw v0
    :try_end_b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_b} :catch_0

    .line 321
    :catch_1
    move-exception v0

    .line 322
    move-object v3, v5

    .line 323
    :goto_8
    const-string v2, "CXCP"

    .line 324
    .line 325
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-eqz v2, :cond_a

    .line 330
    .line 331
    const-string v2, "CXCP"

    .line 332
    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v5, "Cannot acquire session at "

    .line 336
    .line 337
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    .line 349
    .line 350
    :cond_a
    iget-object v2, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    .line 351
    .line 352
    monitor-enter v2

    .line 353
    :try_start_c
    iget-boolean v0, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    .line 354
    .line 355
    if-eqz v0, :cond_b

    .line 356
    .line 357
    iput-boolean v6, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    .line 358
    .line 359
    iget-object v0, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 360
    .line 361
    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 362
    .line 363
    iput-object v8, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 364
    .line 365
    goto :goto_9

    .line 366
    :catchall_4
    move-exception v0

    .line 367
    goto :goto_b

    .line 368
    :cond_b
    :goto_9
    monitor-exit v2

    .line 369
    :goto_a
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 372
    .line 373
    if-eqz v0, :cond_c

    .line 374
    .line 375
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 381
    .line 382
    return-object v0

    .line 383
    :goto_b
    monitor-exit v2

    .line 384
    throw v0
.end method

.method public final update3A(Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;Ljava/util/Map;)V
    .locals 10

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, v1

    .line 15
    :goto_0
    instance-of v2, v0, Ljava/lang/Integer;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    check-cast v0, Ljava/lang/Integer;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object v0, v1

    .line 23
    :goto_1
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sget-object v2, Landroidx/camera/camera2/pipe/AeMode;->values:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->fromIntOrNull-kQd0u18(I)Landroidx/camera/camera2/pipe/AeMode;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v3, v0

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move-object v3, v1

    .line 38
    :goto_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move-object v0, v1

    .line 51
    :goto_3
    instance-of v2, v0, Ljava/lang/Integer;

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    check-cast v0, Ljava/lang/Integer;

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    move-object v0, v1

    .line 59
    :goto_4
    if-eqz v0, :cond_7

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    sget-object v2, Landroidx/camera/camera2/pipe/AfMode;->values:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_6

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    move-object v5, v4

    .line 82
    check-cast v5, Landroidx/camera/camera2/pipe/AfMode;

    .line 83
    .line 84
    iget v5, v5, Landroidx/camera/camera2/pipe/AfMode;->value:I

    .line 85
    .line 86
    if-ne v5, v0, :cond_5

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_6
    move-object v4, v1

    .line 90
    :goto_5
    check-cast v4, Landroidx/camera/camera2/pipe/AfMode;

    .line 91
    .line 92
    goto :goto_6

    .line 93
    :cond_7
    move-object v4, v1

    .line 94
    :goto_6
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    if-eqz p2, :cond_8

    .line 100
    .line 101
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    goto :goto_7

    .line 106
    :cond_8
    move-object p2, v1

    .line 107
    :goto_7
    instance-of v0, p2, Ljava/lang/Integer;

    .line 108
    .line 109
    if-eqz v0, :cond_9

    .line 110
    .line 111
    check-cast p2, Ljava/lang/Integer;

    .line 112
    .line 113
    goto :goto_8

    .line 114
    :cond_9
    move-object p2, v1

    .line 115
    :goto_8
    if-eqz p2, :cond_c

    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    sget-object v0, Landroidx/camera/camera2/pipe/AwbMode;->values:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_b

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    move-object v5, v2

    .line 138
    check-cast v5, Landroidx/camera/camera2/pipe/AwbMode;

    .line 139
    .line 140
    iget v5, v5, Landroidx/camera/camera2/pipe/AwbMode;->value:I

    .line 141
    .line 142
    if-ne v5, p2, :cond_a

    .line 143
    .line 144
    move-object v1, v2

    .line 145
    :cond_b
    check-cast v1, Landroidx/camera/camera2/pipe/AwbMode;

    .line 146
    .line 147
    :cond_c
    move-object v5, v1

    .line 148
    const/4 p2, 0x0

    .line 149
    const/4 v0, 0x1

    .line 150
    if-eqz v3, :cond_d

    .line 151
    .line 152
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAeMode:Landroidx/camera/camera2/pipe/AeMode;

    .line 153
    .line 154
    invoke-virtual {v3, v1}, Landroidx/camera/camera2/pipe/AeMode;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_d

    .line 159
    .line 160
    move v1, v0

    .line 161
    goto :goto_9

    .line 162
    :cond_d
    move v1, p2

    .line 163
    :goto_9
    if-eqz v4, :cond_e

    .line 164
    .line 165
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAfMode:Landroidx/camera/camera2/pipe/AfMode;

    .line 166
    .line 167
    invoke-virtual {v4, v2}, Landroidx/camera/camera2/pipe/AfMode;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-nez v2, :cond_e

    .line 172
    .line 173
    move v2, v0

    .line 174
    goto :goto_a

    .line 175
    :cond_e
    move v2, p2

    .line 176
    :goto_a
    if-eqz v5, :cond_f

    .line 177
    .line 178
    iget-object v6, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAwbMode:Landroidx/camera/camera2/pipe/AwbMode;

    .line 179
    .line 180
    invoke-virtual {v5, v6}, Landroidx/camera/camera2/pipe/AwbMode;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-nez v6, :cond_f

    .line 185
    .line 186
    move p2, v0

    .line 187
    :cond_f
    if-nez v1, :cond_10

    .line 188
    .line 189
    if-nez v2, :cond_10

    .line 190
    .line 191
    if-eqz p2, :cond_14

    .line 192
    .line 193
    :cond_10
    const-string v0, "CXCP"

    .line 194
    .line 195
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-eqz v6, :cond_11

    .line 200
    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v7, "UseCaseCameraState: Updating 3A modes: AE("

    .line 204
    .line 205
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v7, ", changed="

    .line 212
    .line 213
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v1, "), AF("

    .line 220
    .line 221
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v1, "), AWB("

    .line 234
    .line 235
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const/16 p2, 0x29

    .line 248
    .line 249
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    :cond_11
    const/4 v8, 0x0

    .line 260
    const/16 v9, 0x38

    .line 261
    .line 262
    const/4 v6, 0x0

    .line 263
    const/4 v7, 0x0

    .line 264
    move-object v2, p1

    .line 265
    invoke-static/range {v2 .. v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->update3A-ydBZfZg$default(Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Lkotlinx/coroutines/Deferred;

    .line 266
    .line 267
    .line 268
    if-eqz v3, :cond_12

    .line 269
    .line 270
    iput-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAeMode:Landroidx/camera/camera2/pipe/AeMode;

    .line 271
    .line 272
    :cond_12
    if-eqz v4, :cond_13

    .line 273
    .line 274
    iput-object v4, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAfMode:Landroidx/camera/camera2/pipe/AfMode;

    .line 275
    .line 276
    :cond_13
    if-eqz v5, :cond_14

    .line 277
    .line 278
    iput-object v5, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAwbMode:Landroidx/camera/camera2/pipe/AwbMode;

    .line 279
    .line 280
    :cond_14
    return-void
.end method

.method public final updateAsync-Tp9XwKQ(Ljava/util/LinkedHashMap;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Ljava/util/Set;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-string v0, "UseCaseCameraState#updateState: parameters = "

    .line 2
    .line 3
    instance-of v1, p6, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p6

    .line 8
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;

    .line 9
    .line 10
    iget v2, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p6}, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p6, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v3, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    if-ne v3, v4, :cond_1

    .line 37
    .line 38
    iget-object p0, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 39
    .line 40
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :cond_2
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance p6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 56
    .line 57
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v3

    .line 63
    :try_start_0
    const-string v5, "CXCP"

    .line 64
    .line 65
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    const-string v5, "CXCP"

    .line 72
    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, ", internalParameters = "

    .line 82
    .line 83
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v0, ", streams = "

    .line 90
    .line 91
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, ", template = "

    .line 98
    .line 99
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 116
    .line 117
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/LinkedHashMap;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/LinkedHashMap;

    .line 123
    .line 124
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    if-eqz p2, :cond_5

    .line 128
    .line 129
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/LinkedHashMap;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/LinkedHashMap;

    .line 135
    .line 136
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    if-eqz p3, :cond_6

    .line 140
    .line 141
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/LinkedHashSet;

    .line 142
    .line 143
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/LinkedHashSet;

    .line 147
    .line 148
    check-cast p3, Ljava/util/Collection;

    .line 149
    .line 150
    invoke-interface {p1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 151
    .line 152
    .line 153
    :cond_6
    if-eqz p4, :cond_7

    .line 154
    .line 155
    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentTemplate:Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 156
    .line 157
    :cond_7
    if-eqz p5, :cond_8

    .line 158
    .line 159
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/LinkedHashSet;

    .line 160
    .line 161
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/LinkedHashSet;

    .line 165
    .line 166
    check-cast p5, Ljava/util/Collection;

    .line 167
    .line 168
    invoke-interface {p1, p5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 169
    .line 170
    .line 171
    :cond_8
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 172
    .line 173
    if-nez p1, :cond_9

    .line 174
    .line 175
    new-instance p1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 176
    .line 177
    invoke-direct {p1}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 181
    .line 182
    :cond_9
    iget-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    .line 183
    .line 184
    if-eqz p1, :cond_a

    .line 185
    .line 186
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 187
    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .line 190
    .line 191
    monitor-exit v3

    .line 192
    return-object p0

    .line 193
    :cond_a
    :try_start_1
    iput-boolean v4, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    .line 194
    .line 195
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    iput-object p1, p6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    .line 202
    monitor-exit v3

    .line 203
    iput-object p6, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 204
    .line 205
    iput v4, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    .line 206
    .line 207
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/impl/UseCaseCameraState;->submitLatest(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    if-ne p0, v2, :cond_b

    .line 212
    .line 213
    return-object v2

    .line 214
    :cond_b
    move-object p0, p6

    .line 215
    :goto_2
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 216
    .line 217
    return-object p0

    .line 218
    :goto_3
    monitor-exit v3

    .line 219
    throw p0
.end method
