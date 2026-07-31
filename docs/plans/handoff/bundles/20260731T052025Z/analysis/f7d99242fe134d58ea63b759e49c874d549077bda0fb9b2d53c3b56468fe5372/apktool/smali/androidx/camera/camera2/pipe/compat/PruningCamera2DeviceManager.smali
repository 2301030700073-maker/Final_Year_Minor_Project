.class public final Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final activeCameras:Ljava/util/LinkedHashSet;

.field public final camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

.field public final camera2ErrorProcessor:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

.field public final pendingRequestOpens:Ljava/util/ArrayList;

.field public final queue:Lcom/eygraber/uri/Uri$Builder;

.field public final retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Permissions;Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/camera/camera2/pipe/core/Threads;)V
    .locals 8

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
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;

    .line 20
    .line 21
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 22
    .line 23
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->camera2ErrorProcessor:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 24
    .line 25
    iget-object p1, p5, Landroidx/camera/camera2/pipe/core/Threads;->cameraPipeScope:Lkotlinx/coroutines/CoroutineScope;

    .line 26
    .line 27
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 28
    .line 29
    new-instance p2, Lcom/eygraber/uri/Uri$Builder;

    .line 30
    .line 31
    new-instance v0, Landroidx/room/InvalidationTracker$implementation$1;

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x1

    .line 35
    const/4 v1, 0x1

    .line 36
    const-class v3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

    .line 37
    .line 38
    const-string v4, "prune"

    .line 39
    .line 40
    const-string v5, "prune$camera_camera2_pipe(Ljava/util/List;)V"

    .line 41
    .line 42
    move-object v2, p0

    .line 43
    invoke-direct/range {v0 .. v7}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 44
    .line 45
    .line 46
    new-instance p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 47
    .line 48
    const/4 p3, 0x0

    .line 49
    const/16 p4, 0x8

    .line 50
    .line 51
    invoke-direct {p0, v2, p3, p4}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, v0, p0}, Lcom/eygraber/uri/Uri$Builder;-><init>(Landroidx/room/InvalidationTracker$implementation$1;Landroidx/compose/material/ripple/RippleNode$onAttach$1;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object p0, p2, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lkotlinx/atomicfu/AtomicBoolean;

    .line 63
    .line 64
    invoke-virtual {p0}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_1

    .line 69
    .line 70
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 71
    .line 72
    invoke-direct {p0, p2, p3, p4}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 73
    .line 74
    .line 75
    const/4 p4, 0x3

    .line 76
    invoke-static {p1, p3, p3, p0, p4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isCancelled()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_0

    .line 85
    .line 86
    invoke-static {p2, p3}, Lcom/eygraber/uri/Uri$Builder;->access$closeAndReleaseUnprocessedElements(Lcom/eygraber/uri/Uri$Builder;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    iput-object p2, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Lcom/eygraber/uri/Uri$Builder;

    .line 90
    .line 91
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 92
    .line 93
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p0, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/LinkedHashSet;

    .line 97
    .line 98
    new-instance p0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object p0, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/ArrayList;

    .line 104
    .line 105
    return-void

    .line 106
    :cond_1
    const-string p0, "PruningProcessingQueue cannot be re-started!"

    .line 107
    .line 108
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p3
.end method


# virtual methods
.method public final close-EfqyGwQ(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Lcom/eygraber/uri/Uri$Builder;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 14
    .line 15
    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    instance-of p0, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Camera close by ID request failed for "

    .line 26
    .line 27
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/16 p1, 0x21

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p1, "CXCP"

    .line 47
    .line 48
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 52
    .line 53
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->deferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public final connectPendingRequestOpens(Ljava/util/Set;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/ArrayList;

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v4, :cond_1

    .line 36
    .line 37
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->L$1:Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 38
    .line 39
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->L$0:Ljava/util/Iterator;

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    move-object v6, v5

    .line 75
    check-cast v6, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 76
    .line 77
    iget-object v6, v6, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->request:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 78
    .line 79
    iget-object v6, v6, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 80
    .line 81
    iget-object v6, v6, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->cameraId:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v7, Landroidx/camera/camera2/pipe/CameraId;

    .line 84
    .line 85
    invoke-direct {v7, v6}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_3

    .line 93
    .line 94
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    move-object v1, p1

    .line 103
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    .line 109
    if-eqz p1, :cond_b

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 116
    .line 117
    iget-object v5, p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->request:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 118
    .line 119
    iget-object v6, v5, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 120
    .line 121
    iget-object v7, v6, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->cameraId:Ljava/lang/String;

    .line 122
    .line 123
    new-instance v8, Landroidx/camera/camera2/pipe/CameraId;

    .line 124
    .line 125
    invoke-direct {v8, v7}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    iget-object v5, v5, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    .line 133
    .line 134
    invoke-static {v7, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_5

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_9

    .line 154
    .line 155
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    check-cast v7, Landroidx/camera/camera2/pipe/CameraId;

    .line 160
    .line 161
    iget-object v7, v7, Landroidx/camera/camera2/pipe/CameraId;->value:Ljava/lang/String;

    .line 162
    .line 163
    iget-object v8, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/LinkedHashSet;

    .line 164
    .line 165
    if-eqz v8, :cond_6

    .line 166
    .line 167
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-nez v9, :cond_8

    .line 172
    .line 173
    :cond_6
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-eqz v9, :cond_8

    .line 182
    .line 183
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    check-cast v9, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 188
    .line 189
    iget-object v9, v9, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 190
    .line 191
    iget-object v9, v9, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    if-eqz v9, :cond_7

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_8
    const-string p0, "Check failed."

    .line 201
    .line 202
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-object v2

    .line 206
    :cond_9
    :goto_4
    iget-object v5, p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 207
    .line 208
    iget-object v7, p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->token:Landroidx/camera/camera2/pipe/core/MutexToken;

    .line 209
    .line 210
    iput-object v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->L$0:Ljava/util/Iterator;

    .line 211
    .line 212
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->L$1:Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 213
    .line 214
    iput v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$connectPendingRequestOpens$1;->label:I

    .line 215
    .line 216
    invoke-virtual {v5, v6, v7}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->connectTo(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/core/MutexToken;)Lkotlin/Unit;

    .line 217
    .line 218
    .line 219
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 220
    .line 221
    if-ne p2, v5, :cond_a

    .line 222
    .line 223
    return-object v5

    .line 224
    :cond_a
    :goto_5
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_b
    return-object p2
.end method

.method public final disconnectPendingRequestOpens(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->token:Landroidx/camera/camera2/pipe/core/MutexToken;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/MutexToken;->release()Z

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public final openCameraWithRetry-zDSwpeU(Ljava/lang/String;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p5, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$2:Lkotlinx/coroutines/CoroutineScope;

    .line 35
    .line 36
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$1:Ljava/util/List;

    .line 37
    .line 38
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$0:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance p5, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "Opening "

    .line 57
    .line 58
    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, " with retries..."

    .line 69
    .line 70
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p5

    .line 77
    const-string v1, "CXCP"

    .line 78
    .line 79
    invoke-static {v1, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$0:Ljava/lang/String;

    .line 83
    .line 84
    iput-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$1:Ljava/util/List;

    .line 85
    .line 86
    iput-object p4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->L$2:Lkotlinx/coroutines/CoroutineScope;

    .line 87
    .line 88
    iput v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$openCameraWithRetry$1;->label:I

    .line 89
    .line 90
    iget-object p5, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;

    .line 91
    .line 92
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 93
    .line 94
    invoke-virtual {p5, p1, v1, p3, v0}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->openCameraWithRetry-aeCOTgg(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p5

    .line 98
    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 99
    .line 100
    if-ne p5, p3, :cond_3

    .line 101
    .line 102
    return-object p3

    .line 103
    :cond_3
    :goto_1
    check-cast p5, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    .line 104
    .line 105
    iget-object p3, p5, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 106
    .line 107
    if-nez p3, :cond_4

    .line 108
    .line 109
    new-instance p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;

    .line 110
    .line 111
    iget-object p1, p5, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 112
    .line 113
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;-><init>(Landroidx/camera/camera2/pipe/CameraError;)V

    .line 114
    .line 115
    .line 116
    return-object p0

    .line 117
    :cond_4
    new-instance p5, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;

    .line 118
    .line 119
    new-instance v0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 120
    .line 121
    new-instance v1, Landroidx/camera/camera2/pipe/CameraId;

    .line 122
    .line 123
    invoke-direct {v1, p1}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance p2, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 135
    .line 136
    const/4 v1, 0x5

    .line 137
    invoke-direct {p2, v1, p0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, p3, p1, p4, p2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Ljava/util/Set;Lkotlinx/coroutines/CoroutineScope;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p5, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;-><init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)V

    .line 144
    .line 145
    .line 146
    return-object p5
.end method

.method public final processRequestClose(Landroidx/camera/camera2/pipe/compat/RequestClose;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    if-eq v1, v5, :cond_2

    .line 39
    .line 40
    if-ne v1, v4, :cond_1

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v3

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestClose;

    .line 53
    .line 54
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p1, Landroidx/camera/camera2/pipe/compat/RequestClose;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 62
    .line 63
    iget-object v1, p2, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 64
    .line 65
    iget-object v1, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v8, "PruningCamera2DeviceManager#processRequestClose("

    .line 70
    .line 71
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/16 v1, 0x29

    .line 82
    .line 83
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v7, "CXCP"

    .line 91
    .line 92
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/LinkedHashSet;

    .line 96
    .line 97
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_4

    .line 102
    .line 103
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_6

    .line 122
    .line 123
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    move-object v9, v8

    .line 128
    check-cast v9, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 129
    .line 130
    iget-object v9, v9, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 131
    .line 132
    if-eq v9, p2, :cond_5

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestClose;

    .line 140
    .line 141
    iput v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->disconnectPendingRequestOpens(Ljava/util/ArrayList;)V

    .line 144
    .line 145
    .line 146
    if-ne v3, v6, :cond_7

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    :goto_2
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/RequestClose;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 150
    .line 151
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    .line 152
    .line 153
    .line 154
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/RequestClose;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 155
    .line 156
    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestClose;

    .line 157
    .line 158
    iput v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestClose$1;->label:I

    .line 159
    .line 160
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    if-ne p0, v6, :cond_8

    .line 165
    .line 166
    :goto_3
    return-object v6

    .line 167
    :cond_8
    return-object v3
.end method

.method public final processRequestCloseAll(Landroidx/camera/camera2/pipe/compat/RequestCloseAll;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    .line 28
    .line 29
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/LinkedHashSet;

    .line 34
    .line 35
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    if-eq v1, v4, :cond_2

    .line 40
    .line 41
    if-ne v1, v3, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$1:Ljava/util/Iterator;

    .line 44
    .line 45
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    .line 46
    .line 47
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return-object p0

    .line 58
    :cond_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    .line 59
    .line 60
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const-string p2, "CXCP"

    .line 68
    .line 69
    const-string v1, "PruningCamera2DeviceManager#processRequestCloseAll()"

    .line 70
    .line 71
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    .line 75
    .line 76
    iput v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    .line 77
    .line 78
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->disconnectPendingRequestOpens(Ljava/util/ArrayList;)V

    .line 81
    .line 82
    .line 83
    if-ne v2, v6, :cond_4

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_5

    .line 95
    .line 96
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 101
    .line 102
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_7

    .line 115
    .line 116
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    check-cast p2, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 121
    .line 122
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    .line 123
    .line 124
    iput-object p0, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->L$1:Ljava/util/Iterator;

    .line 125
    .line 126
    iput v3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseAll$1;->label:I

    .line 127
    .line 128
    invoke-virtual {p2, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    if-ne p2, v6, :cond_6

    .line 133
    .line 134
    :goto_4
    return-object v6

    .line 135
    :cond_7
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 136
    .line 137
    .line 138
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->deferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 139
    .line 140
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    return-object v2
.end method

.method public final processRequestCloseById(Landroidx/camera/camera2/pipe/compat/RequestCloseById;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    if-eq v1, v5, :cond_2

    .line 39
    .line 40
    if-ne v1, v4, :cond_1

    .line 41
    .line 42
    iget-object p0, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v2

    .line 55
    :cond_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$1:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 58
    .line 59
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p1, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->activeCameraId:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v7, "PruningCamera2DeviceManager#processRequestCloseById("

    .line 71
    .line 72
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v7, p1, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->activeCameraId:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v7}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const/16 v7, 0x29

    .line 85
    .line 86
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v7, "CXCP"

    .line 94
    .line 95
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_5

    .line 114
    .line 115
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    move-object v9, v8

    .line 120
    check-cast v9, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 121
    .line 122
    iget-object v9, v9, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->request:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 123
    .line 124
    iget-object v9, v9, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 125
    .line 126
    iget-object v9, v9, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->cameraId:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v9, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-eqz v9, :cond_4

    .line 133
    .line 134
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 139
    .line 140
    iput-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$1:Ljava/lang/String;

    .line 141
    .line 142
    iput v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    .line 143
    .line 144
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->disconnectPendingRequestOpens(Ljava/util/ArrayList;)V

    .line 145
    .line 146
    .line 147
    if-ne v3, v6, :cond_6

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_6
    move-object v1, p1

    .line 151
    move-object p1, p2

    .line 152
    :goto_2
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/LinkedHashSet;

    .line 153
    .line 154
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_8

    .line 163
    .line 164
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    move-object v7, v5

    .line 169
    check-cast v7, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 170
    .line 171
    iget-object v7, v7, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 172
    .line 173
    iget-object v7, v7, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-eqz v7, :cond_7

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_8
    move-object v5, v2

    .line 183
    :goto_3
    check-cast v5, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 184
    .line 185
    if-eqz v5, :cond_a

    .line 186
    .line 187
    invoke-interface {p0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    .line 191
    .line 192
    .line 193
    iput-object v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 194
    .line 195
    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->L$1:Ljava/lang/String;

    .line 196
    .line 197
    iput v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestCloseById$1;->label:I

    .line 198
    .line 199
    invoke-virtual {v5, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    if-ne p0, v6, :cond_9

    .line 204
    .line 205
    :goto_4
    return-object v6

    .line 206
    :cond_9
    move-object p0, v1

    .line 207
    :goto_5
    move-object v1, p0

    .line 208
    :cond_a
    iget-object p0, v1, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->deferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 209
    .line 210
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    return-object v3
.end method

.method public final processRequestOpen(Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    packed-switch v2, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v3

    .line 41
    :pswitch_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_11

    .line 45
    .line 46
    :pswitch_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_f

    .line 50
    .line 51
    :pswitch_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 52
    .line 53
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_e

    .line 57
    .line 58
    :pswitch_3
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 61
    .line 62
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object v8, p2

    .line 66
    move-object p2, p1

    .line 67
    move-object p1, v2

    .line 68
    move-object v2, v0

    .line 69
    move-object v0, v8

    .line 70
    goto/16 :goto_9

    .line 71
    .line 72
    :pswitch_4
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Ljava/util/Iterator;

    .line 75
    .line 76
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 79
    .line 80
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_6

    .line 84
    .line 85
    :pswitch_5
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, Ljava/util/List;

    .line 88
    .line 89
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 92
    .line 93
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :pswitch_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 102
    .line 103
    iget-object v2, p2, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->cameraId:Ljava/lang/String;

    .line 104
    .line 105
    const-string p2, "CXCP"

    .line 106
    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v5, "PruningCamera2DeviceManager#processRequestOpen("

    .line 110
    .line 111
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const/16 v5, 0x29

    .line 122
    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-static {p2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    iget-object p2, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-eqz p2, :cond_2

    .line 140
    .line 141
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/LinkedHashSet;

    .line 142
    .line 143
    new-instance v4, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_5

    .line 157
    .line 158
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    move-object v6, v5

    .line 163
    check-cast v6, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 164
    .line 165
    iget-object v6, v6, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 166
    .line 167
    iget-object v6, v6, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-nez v6, :cond_1

    .line 174
    .line 175
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_2
    iget-object p2, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    .line 180
    .line 181
    iget-object v4, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 182
    .line 183
    iget-object v4, v4, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->cameraId:Ljava/lang/String;

    .line 184
    .line 185
    new-instance v5, Landroidx/camera/camera2/pipe/CameraId;

    .line 186
    .line 187
    invoke-direct {v5, v4}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {p2, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/LinkedHashSet;

    .line 199
    .line 200
    new-instance v5, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-eqz v6, :cond_4

    .line 214
    .line 215
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    move-object v7, v6

    .line 220
    check-cast v7, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 221
    .line 222
    iget-object v7, v7, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->allCameraIds:Ljava/util/Set;

    .line 223
    .line 224
    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    if-nez v7, :cond_3

    .line 229
    .line 230
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_4
    move-object v4, v5

    .line 235
    :cond_5
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    if-nez p2, :cond_c

    .line 240
    .line 241
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/LinkedHashSet;

    .line 242
    .line 243
    invoke-interface {p2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 244
    .line 245
    .line 246
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/ArrayList;

    .line 247
    .line 248
    new-instance v5, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    if-eqz v6, :cond_7

    .line 262
    .line 263
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    move-object v7, v6

    .line 268
    check-cast v7, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 269
    .line 270
    iget-object v7, v7, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 271
    .line 272
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    if-eqz v7, :cond_6

    .line 277
    .line 278
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_7
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 283
    .line 284
    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/String;

    .line 285
    .line 286
    iput-object v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    .line 287
    .line 288
    const/4 p2, 0x1

    .line 289
    iput p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    .line 290
    .line 291
    invoke-virtual {p0, v5}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->disconnectPendingRequestOpens(Ljava/util/ArrayList;)V

    .line 292
    .line 293
    .line 294
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 295
    .line 296
    if-ne p2, v1, :cond_8

    .line 297
    .line 298
    goto/16 :goto_10

    .line 299
    .line 300
    :cond_8
    move-object v8, v4

    .line 301
    move-object v4, p1

    .line 302
    move-object p1, v8

    .line 303
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    if-eqz v5, :cond_9

    .line 312
    .line 313
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    check-cast v5, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 318
    .line 319
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    :cond_a
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result p2

    .line 331
    if-eqz p2, :cond_b

    .line 332
    .line 333
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    check-cast p2, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 338
    .line 339
    iput-object v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 340
    .line 341
    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/String;

    .line 342
    .line 343
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    .line 344
    .line 345
    const/4 v5, 0x2

    .line 346
    iput v5, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    .line 347
    .line 348
    invoke-virtual {p2, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    if-ne p2, v1, :cond_a

    .line 353
    .line 354
    goto/16 :goto_10

    .line 355
    .line 356
    :cond_b
    :goto_7
    move-object p1, v2

    .line 357
    goto :goto_8

    .line 358
    :cond_c
    move-object v4, p1

    .line 359
    goto :goto_7

    .line 360
    :goto_8
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->camera2ErrorProcessor:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 361
    .line 362
    iget-object v2, v4, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 363
    .line 364
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    iget-object v5, p2, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->lock:Ljava/lang/Object;

    .line 371
    .line 372
    monitor-enter v5

    .line 373
    :try_start_0
    iget-object p2, p2, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->virtualCameraStateMap:Ljava/util/LinkedHashMap;

    .line 374
    .line 375
    new-instance v6, Landroidx/camera/camera2/pipe/CameraId;

    .line 376
    .line 377
    invoke-direct {v6, p1}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-interface {p2, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    .line 382
    .line 383
    monitor-exit v5

    .line 384
    iput-object v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 385
    .line 386
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/String;

    .line 387
    .line 388
    iput-object v3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$2:Ljava/lang/Object;

    .line 389
    .line 390
    const/4 p2, 0x3

    .line 391
    iput p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    .line 392
    .line 393
    invoke-virtual {p0, p1, v4, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->retrieveActiveCamera-RzXb1QE(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p2

    .line 397
    if-ne p2, v1, :cond_d

    .line 398
    .line 399
    goto/16 :goto_10

    .line 400
    .line 401
    :cond_d
    move-object v2, v0

    .line 402
    move-object v0, p2

    .line 403
    move-object p2, p1

    .line 404
    move-object p1, v4

    .line 405
    :goto_9
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;

    .line 406
    .line 407
    instance-of v4, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    .line 408
    .line 409
    if-eqz v4, :cond_f

    .line 410
    .line 411
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    .line 412
    .line 413
    iget-object p0, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    .line 414
    .line 415
    if-eqz p0, :cond_e

    .line 416
    .line 417
    const-string p0, "CXCP"

    .line 418
    .line 419
    new-instance p1, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string v1, "Failed to retrieve active camera for "

    .line 422
    .line 423
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p2

    .line 430
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string p2, ". Last camera error was "

    .line 434
    .line 435
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    .line 439
    .line 440
    iget p2, p2, Landroidx/camera/camera2/pipe/CameraError;->value:I

    .line 441
    .line 442
    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraError;->toString-impl(I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    goto :goto_a

    .line 457
    :cond_e
    const-string p0, "CXCP"

    .line 458
    .line 459
    new-instance p1, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    const-string v0, "Failed to retrieve active camera for "

    .line 462
    .line 463
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object p2

    .line 470
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    const-string p2, ". Camera might have been closed during opening."

    .line 474
    .line 475
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    :goto_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 486
    .line 487
    return-object p0

    .line 488
    :cond_f
    instance-of p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;

    .line 489
    .line 490
    if-eqz p2, :cond_19

    .line 491
    .line 492
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;

    .line 493
    .line 494
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 495
    .line 496
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;->token:Landroidx/camera/camera2/pipe/core/MutexToken;

    .line 497
    .line 498
    iget-object v4, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    .line 499
    .line 500
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    if-nez v4, :cond_17

    .line 505
    .line 506
    iget-object v4, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    .line 507
    .line 508
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 509
    .line 510
    .line 511
    move-result v5

    .line 512
    if-eqz v5, :cond_10

    .line 513
    .line 514
    goto :goto_d

    .line 515
    :cond_10
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 520
    .line 521
    .line 522
    move-result v5

    .line 523
    if-eqz v5, :cond_14

    .line 524
    .line 525
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    check-cast v5, Landroidx/camera/camera2/pipe/CameraId;

    .line 530
    .line 531
    iget-object v5, v5, Landroidx/camera/camera2/pipe/CameraId;->value:Ljava/lang/String;

    .line 532
    .line 533
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/ArrayList;

    .line 534
    .line 535
    if-eqz v6, :cond_11

    .line 536
    .line 537
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 538
    .line 539
    .line 540
    move-result v7

    .line 541
    if-eqz v7, :cond_11

    .line 542
    .line 543
    goto :goto_c

    .line 544
    :cond_11
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    :cond_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 549
    .line 550
    .line 551
    move-result v7

    .line 552
    if-eqz v7, :cond_13

    .line 553
    .line 554
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v7

    .line 558
    check-cast v7, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 559
    .line 560
    iget-object v7, v7, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 561
    .line 562
    iget-object v7, v7, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 563
    .line 564
    iget-object v7, v7, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 565
    .line 566
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    if-eqz v7, :cond_12

    .line 571
    .line 572
    goto :goto_b

    .line 573
    :cond_13
    :goto_c
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->pendingRequestOpens:Ljava/util/ArrayList;

    .line 574
    .line 575
    new-instance v1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;

    .line 576
    .line 577
    invoke-direct {v1, p1, p2, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;-><init>(Landroidx/camera/camera2/pipe/compat/RequestOpen;Landroidx/camera/camera2/pipe/compat/ActiveCamera;Landroidx/camera/camera2/pipe/core/MutexToken;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 584
    .line 585
    return-object p0

    .line 586
    :cond_14
    :goto_d
    iget-object v4, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 587
    .line 588
    iput-object p1, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 589
    .line 590
    iput-object v3, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/String;

    .line 591
    .line 592
    const/4 v5, 0x4

    .line 593
    iput v5, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    .line 594
    .line 595
    invoke-virtual {p2, v4, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->connectTo(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/core/MutexToken;)Lkotlin/Unit;

    .line 596
    .line 597
    .line 598
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 599
    .line 600
    if-ne p2, v1, :cond_15

    .line 601
    .line 602
    goto :goto_10

    .line 603
    :cond_15
    move-object v0, v2

    .line 604
    :goto_e
    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    .line 605
    .line 606
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 607
    .line 608
    .line 609
    move-result-object p1

    .line 610
    iput-object v3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 611
    .line 612
    const/4 p2, 0x5

    .line 613
    iput p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    .line 614
    .line 615
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->connectPendingRequestOpens(Ljava/util/Set;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object p0

    .line 619
    if-ne p0, v1, :cond_16

    .line 620
    .line 621
    goto :goto_10

    .line 622
    :cond_16
    :goto_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 623
    .line 624
    return-object p0

    .line 625
    :cond_17
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 626
    .line 627
    iput-object v3, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$0:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 628
    .line 629
    iput-object v3, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->L$1:Ljava/lang/String;

    .line 630
    .line 631
    const/4 p1, 0x6

    .line 632
    iput p1, v2, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$processRequestOpen$1;->label:I

    .line 633
    .line 634
    invoke-virtual {p2, p0, v0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->connectTo(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/core/MutexToken;)Lkotlin/Unit;

    .line 635
    .line 636
    .line 637
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 638
    .line 639
    if-ne p0, v1, :cond_18

    .line 640
    .line 641
    :goto_10
    return-object v1

    .line 642
    :cond_18
    :goto_11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 643
    .line 644
    return-object p0

    .line 645
    :cond_19
    const-string p0, "Check failed."

    .line 646
    .line 647
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    return-object v3

    .line 651
    :catchall_0
    move-exception p0

    .line 652
    monitor-exit v5

    .line 653
    throw p0

    .line 654
    nop

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final retrieveActiveCamera-RzXb1QE(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;-><init>(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->activeCameras:Ljava/util/LinkedHashSet;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v3, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$1:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 41
    .line 42
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$0:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v5

    .line 55
    :cond_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$3:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 56
    .line 57
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$2:Ljava/util/Iterator;

    .line 58
    .line 59
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$1:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 60
    .line 61
    iget-object v6, v0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$0:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move-object v11, v0

    .line 67
    move-object v7, v6

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    move-object v7, p1

    .line 77
    move-object p1, p2

    .line 78
    move-object p2, p3

    .line 79
    move-object v11, v0

    .line 80
    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 85
    .line 86
    if-eqz p3, :cond_7

    .line 87
    .line 88
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    check-cast p3, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 93
    .line 94
    iget-object v1, p3, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 95
    .line 96
    iget-object v1, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->acquire()Landroidx/camera/camera2/pipe/core/MutexToken;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->close()V

    .line 112
    .line 113
    .line 114
    iput-object v7, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$0:Ljava/lang/String;

    .line 115
    .line 116
    iput-object p1, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$1:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 117
    .line 118
    iput-object p2, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$2:Ljava/util/Iterator;

    .line 119
    .line 120
    iput-object p3, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$3:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 121
    .line 122
    iput v3, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    .line 123
    .line 124
    invoke-virtual {p3, v11}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->awaitClosed(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-ne v1, v0, :cond_6

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_6
    move-object v1, p1

    .line 132
    move-object p1, p3

    .line 133
    :goto_2
    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-object p1, v1

    .line 137
    goto :goto_1

    .line 138
    :cond_7
    move-object p3, v5

    .line 139
    move-object v1, p3

    .line 140
    :goto_3
    if-nez p3, :cond_c

    .line 141
    .line 142
    iget-object v8, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    .line 143
    .line 144
    iget-object v9, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;

    .line 145
    .line 146
    iput-object v7, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$0:Ljava/lang/String;

    .line 147
    .line 148
    iput-object p1, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$1:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 149
    .line 150
    iput-object v5, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$2:Ljava/util/Iterator;

    .line 151
    .line 152
    iput-object v5, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->L$3:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 153
    .line 154
    iput v2, v11, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$retrieveActiveCamera$1;->label:I

    .line 155
    .line 156
    iget-object v10, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 157
    .line 158
    move-object v6, p0

    .line 159
    invoke-virtual/range {v6 .. v11}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->openCameraWithRetry-zDSwpeU(Ljava/lang/String;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    if-ne p3, v0, :cond_8

    .line 164
    .line 165
    :goto_4
    return-object v0

    .line 166
    :cond_8
    move-object p0, p1

    .line 167
    move-object p1, v7

    .line 168
    :goto_5
    check-cast p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult;

    .line 169
    .line 170
    instance-of p2, p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;

    .line 171
    .line 172
    const-string v0, "PruningCameraDeviceManager: Failed to open "

    .line 173
    .line 174
    const-string v1, "CXCP"

    .line 175
    .line 176
    if-eqz p2, :cond_a

    .line 177
    .line 178
    check-cast p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;

    .line 179
    .line 180
    iget-object p3, p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 181
    .line 182
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->acquire()Landroidx/camera/camera2/pipe/core/MutexToken;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    if-eqz p2, :cond_9

    .line 187
    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v0, "PruningCameraDeviceManager: "

    .line 191
    .line 192
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string p1, " opened successfully"

    .line 203
    .line 204
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    invoke-interface {v4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-object v1, p2

    .line 218
    goto :goto_6

    .line 219
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string p1, ": Camera may have been closed (possibly due to an error) immediately after opening"

    .line 232
    .line 233
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 244
    .line 245
    invoke-virtual {p0, v5}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V

    .line 246
    .line 247
    .line 248
    new-instance p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    .line 249
    .line 250
    invoke-direct {p0, v5}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;-><init>(Landroidx/camera/camera2/pipe/CameraError;)V

    .line 251
    .line 252
    .line 253
    return-object p0

    .line 254
    :cond_a
    instance-of p2, p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;

    .line 255
    .line 256
    if-eqz p2, :cond_b

    .line 257
    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 278
    .line 279
    check-cast p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;

    .line 280
    .line 281
    iget-object p1, p3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    .line 282
    .line 283
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V

    .line 284
    .line 285
    .line 286
    new-instance p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    .line 287
    .line 288
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;-><init>(Landroidx/camera/camera2/pipe/CameraError;)V

    .line 289
    .line 290
    .line 291
    return-object p0

    .line 292
    :cond_b
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 293
    .line 294
    .line 295
    return-object v5

    .line 296
    :cond_c
    :goto_6
    new-instance p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;

    .line 297
    .line 298
    if-eqz v1, :cond_d

    .line 299
    .line 300
    invoke-direct {p0, p3, v1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;-><init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;Landroidx/camera/camera2/pipe/core/MutexToken;)V

    .line 301
    .line 302
    .line 303
    return-object p0

    .line 304
    :cond_d
    const-string p0, "Required value was null."

    .line 305
    .line 306
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    return-object v5
.end method
