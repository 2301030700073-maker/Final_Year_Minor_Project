.class public final Landroidx/compose/ui/node/NodeChain;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public buffer:Ljava/lang/Object;

.field public cachedDiffer:Ljava/lang/Object;

.field public current:Ljava/lang/Object;

.field public head:Ljava/lang/Object;

.field public final innerCoordinator:Ljava/lang/Object;

.field public final layoutNode:Ljava/lang/Object;

.field public outerCoordinator:Ljava/lang/Object;

.field public final sentinelHead:Ljava/lang/Object;

.field public final stack:Ljava/lang/Object;

.field public final tail:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/node/NodeChain;->$r8$classId:I

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 177
    new-instance v0, Landroidx/compose/ui/node/NodeChain$sentinelHead$1;

    .line 178
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    const/4 v1, -0x1

    .line 179
    iput v1, v0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 180
    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 181
    new-instance v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/InnerNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 182
    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 183
    iget-object p1, v0, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 184
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 185
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v0, v0, [Landroidx/compose/ui/Modifier;

    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 186
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/SynchronizedLazyImpl;Landroid/content/Context;Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;Landroidx/cardview/widget/CardView$1;Landroidx/camera/core/CameraSelector;Landroidx/cardview/widget/CardView$1;Landroidx/camera/core/CameraXConfig;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/compose/ui/node/NodeChain;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance p5, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 19
    .line 20
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p6

    .line 24
    check-cast p6, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 25
    .line 26
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->cameras()Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p5, p6, p1}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;-><init>(Landroidx/camera/camera2/pipe/CameraPipeImpl;Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;)V

    .line 37
    .line 38
    .line 39
    iput-object p5, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 40
    .line 41
    new-instance v0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    move-object v3, p0

    .line 45
    move-object v1, p2

    .line 46
    move-object v2, p3

    .line 47
    move-object v4, p4

    .line 48
    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    new-instance p0, Lkotlin/SynchronizedLazyImpl;

    .line 52
    .line 53
    invoke-direct {p0, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    iput-object p0, v3, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 57
    .line 58
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 59
    .line 60
    iput-object p1, v3, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 61
    .line 62
    new-instance p1, Ljava/lang/Object;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, v3, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 68
    .line 69
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    const/4 p2, 0x0

    .line 72
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 73
    .line 74
    .line 75
    iput-object p1, v3, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->getCameraDevices()Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->awaitCameraIds-SeavPBo$default(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;)Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    if-eqz p0, :cond_0

    .line 92
    .line 93
    new-instance p1, Ljava/util/ArrayList;

    .line 94
    .line 95
    const/16 p2, 0xa

    .line 96
    .line 97
    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-eqz p2, :cond_1

    .line 113
    .line 114
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Landroidx/camera/camera2/pipe/CameraId;

    .line 119
    .line 120
    iget-object p2, p2, Landroidx/camera/camera2/pipe/CameraId;->value:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 127
    .line 128
    :cond_1
    new-instance p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 129
    .line 130
    iget-object p2, v3, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p2, Lkotlin/SynchronizedLazyImpl;

    .line 133
    .line 134
    invoke-virtual {p2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    check-cast p2, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 139
    .line 140
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->cameras()Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo()Landroidx/camera/camera2/pipe/CameraBackend;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    .line 149
    .line 150
    iget-object p2, p2, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 151
    .line 152
    iget-object p2, p2, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->cameraIds:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 153
    .line 154
    iget-object p3, v2, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;->cameraExecutor:Ljava/util/concurrent/Executor;

    .line 155
    .line 156
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {p3}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    invoke-static {p3}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-direct {p0, p2, p3, p1, v1}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;Lkotlinx/coroutines/internal/ContextScope;Ljava/util/List;Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    iput-object p0, v3, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 171
    .line 172
    invoke-virtual {v3, p1}, Landroidx/compose/ui/node/NodeChain;->onCameraIdsUpdated(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public static final access$propagateCoordinator(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    :goto_0
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/ui/node/NodeChain$sentinelHead$1;

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_1
    iput-object p1, p2, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 30
    .line 31
    iput-object p2, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget v0, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 35
    .line 36
    and-int/lit8 v0, v0, 0x2

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_2
    return-void
.end method

.method public static createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 1
    instance-of v0, p0, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifierNodeElement;->create()Landroidx/compose/ui/Modifier$Node;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Element;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 28
    .line 29
    iput-object p0, v0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 30
    .line 31
    new-instance p0, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    move-object p0, v0

    .line 37
    :goto_0
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const-string v0, "A ModifierNodeElement cannot return an already attached node from create() "

    .line 42
    .line 43
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    .line 48
    .line 49
    iget-object v0, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iput-object p0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 54
    .line 55
    iput-object v0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 56
    .line 57
    :cond_2
    iput-object p0, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 58
    .line 59
    iput-object p1, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 60
    .line 61
    return-object p0
.end method

.method public static detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/ui/node/NodeKindKt;->classToKindSetMap:Landroidx/collection/MutableObjectIntMap;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "autoInvalidateRemovedNode called on unattached node"

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, -0x1

    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->runDetachLifecycle$ui()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->markAsDetached$ui()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iput-object v1, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 33
    .line 34
    iput-object v2, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 35
    .line 36
    :cond_2
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iput-object v0, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 39
    .line 40
    iput-object v2, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 41
    .line 42
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    return-object v1
.end method

.method public static updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    .line 1
    instance-of p0, p0, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    instance-of p0, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/ModifierNodeElement;->update(Landroidx/compose/ui/Modifier$Node;)V

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-static {p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iput-boolean v0, p2, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    instance-of p0, p2, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 30
    .line 31
    if-eqz p0, :cond_6

    .line 32
    .line 33
    move-object p0, p2

    .line 34
    check-cast p0, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 35
    .line 36
    iget-boolean v1, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    const-string v1, "unInitializeModifier called on unattached node"

    .line 43
    .line 44
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 48
    .line 49
    and-int/lit8 v1, v1, 0x8

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->onSemanticsChange()V

    .line 60
    .line 61
    .line 62
    :cond_3
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 63
    .line 64
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Element;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 69
    .line 70
    iget-boolean p1, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;->initializeModifier(Z)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iget-boolean p0, p2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 79
    .line 80
    if-eqz p0, :cond_5

    .line 81
    .line 82
    invoke-static {p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    iput-boolean v0, p2, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    .line 87
    .line 88
    return-void

    .line 89
    :cond_6
    const-string p0, "Unknown Modifier.Node type"

    .line 90
    .line 91
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public calculateAvailableCameraIds(Ljava/util/List;)Ljava/util/LinkedHashSet;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/SynchronizedLazyImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Landroidx/camera/core/CameraSelector;

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Landroidx/cardview/widget/CardView$1;

    .line 22
    .line 23
    const-string v3, "CXCP"

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->getCameraDevices()Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    .line 34
    .line 35
    .line 36
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroidx/camera/core/CameraSelector;->getLensFacing()Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-static {v5, v6}, Landroidx/work/OperationKt;->decideSkippedCameraIdByHeuristic(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;Ljava/lang/Integer;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception v5

    .line 51
    :try_start_2
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    const-string v6, "Unable to get Metadata for cameraID 0 and/or 1"

    .line 58
    .line 59
    invoke-static {v3, v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_1
    move-exception p0

    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 67
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_3

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-eqz v8, :cond_2

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v8, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 96
    .line 97
    new-instance v9, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 98
    .line 99
    invoke-static {v7}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 v10, 0x1

    .line 103
    invoke-direct {v9, v7, v10}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    new-instance v7, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    .line 107
    .line 108
    invoke-direct {v7, v8, v9, p0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Lcom/fsck/k9/mailstore/LocalStore$8;Landroidx/cardview/widget/CardView$1;)V

    .line 109
    .line 110
    .line 111
    iget-object v7, v7, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInternalAdapterProvider:Lokhttp3/ConnectionPool;

    .line 112
    .line 113
    invoke-virtual {v7}, Lokhttp3/ConnectionPool;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Landroidx/camera/core/impl/CameraInternal;

    .line 118
    .line 119
    invoke-interface {v7}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    invoke-virtual {v2, v6}, Landroidx/camera/core/CameraSelector;->filter(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_4

    .line 143
    .line 144
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Landroidx/camera/core/CameraInfo;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    check-cast p1, Landroidx/camera/core/impl/CameraInfoInternal;

    .line 154
    .line 155
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_4
    move-object p1, v4

    .line 167
    :goto_4
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 168
    .line 169
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 174
    .line 175
    invoke-virtual {v0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->getCameraDevices()Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_9

    .line 193
    .line 194
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Ljava/lang/String;

    .line 199
    .line 200
    const-string v4, "0"

    .line 201
    .line 202
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-nez v4, :cond_8

    .line 207
    .line 208
    const-string v4, "1"

    .line 209
    .line 210
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_6

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_6
    invoke-static {v0, v2}, Landroidx/work/Operation$State;->isBackwardCompatible(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_7

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_7
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_5

    .line 232
    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v5, "Camera "

    .line 236
    .line 237
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v2, " is filtered out because its capabilities do not contain REQUEST_AVAILABLE_CAPABILITIES_BACKWARD_COMPATIBLE."

    .line 244
    .line 245
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_8
    :goto_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_9
    invoke-direct {p0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 261
    .line 262
    .line 263
    return-object p0

    .line 264
    :goto_7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isErrorEnabled()Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_a

    .line 269
    .line 270
    const-string p1, "Error while accessing info about cameras."

    .line 271
    .line 272
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .line 274
    .line 275
    :cond_a
    new-instance p1, Landroidx/camera/core/InitializationException;

    .line 276
    .line 277
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 278
    .line 279
    .line 280
    throw p1
.end method

.method public getAvailableCameraIds()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/Set;

    .line 25
    .line 26
    check-cast p0, Ljava/util/Collection;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    throw p0
.end method

.method public getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lkotlin/SynchronizedLazyImpl;

    .line 17
    .line 18
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 25
    .line 26
    new-instance v1, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 27
    .line 28
    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-direct {v1, p1, v2}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Landroidx/cardview/widget/CardView$1;

    .line 38
    .line 39
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    .line 40
    .line 41
    invoke-direct {p1, v0, v1, p0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Lcom/fsck/k9/mailstore/LocalStore$8;Landroidx/cardview/widget/CardView$1;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInternalAdapterProvider:Lokhttp3/ConnectionPool;

    .line 45
    .line 46
    invoke-virtual {p0}, Lokhttp3/ConnectionPool;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Landroidx/camera/core/impl/CameraInternal;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_0
    new-instance p0, Landroidx/camera/core/impl/CameraUpdateException;

    .line 54
    .line 55
    const-string p1, "CameraFactory has been shut down."

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public has-H91voCI$ui(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 4
    .line 5
    iget p0, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 6
    .line 7
    and-int/2addr p0, p1

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public onCameraIdsUpdated(Ljava/util/List;)V
    .locals 4

    .line 1
    const-string v0, "Updated available camera list: "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeChain;->calculateAvailableCameraIds(Ljava/util/List;)Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    monitor-exit v1

    .line 32
    return-void

    .line 33
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Ljava/util/Set;

    .line 36
    .line 37
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :cond_2
    :try_start_2
    const-string v2, "CXCP"

    .line 46
    .line 47
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const-string v2, "CXCP"

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Ljava/util/Set;

    .line 63
    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, " -> "

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 89
    :goto_1
    monitor-exit v1

    .line 90
    throw p0
.end method

.method public runAttachLifecycle()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 4
    .line 5
    :goto_0
    if-eqz p0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->runAttachLifecycle$ui()V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Landroidx/compose/ui/node/NodeKindKt;->classToKindSetMap:Landroidx/collection/MutableObjectIntMap;

    .line 15
    .line 16
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "autoInvalidateInsertedNode called on unattached node"

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v0, -0x1

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    .line 41
    .line 42
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    return-void
.end method

.method public structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move/from16 v5, p5

    .line 12
    .line 13
    iget-object v6, v0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v6, Landroidx/compose/ui/node/NodeChain$Differ;

    .line 16
    .line 17
    if-nez v6, :cond_0

    .line 18
    .line 19
    new-instance v6, Landroidx/compose/ui/node/NodeChain$Differ;

    .line 20
    .line 21
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, v6, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object v4, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 27
    .line 28
    iput v1, v6, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 29
    .line 30
    iput-object v2, v6, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object v3, v6, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    .line 33
    .line 34
    iput-boolean v5, v6, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    .line 35
    .line 36
    iput-object v6, v0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object v4, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 40
    .line 41
    iput v1, v6, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 42
    .line 43
    iput-object v2, v6, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    .line 44
    .line 45
    iput-object v3, v6, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    .line 46
    .line 47
    iput-boolean v5, v6, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    .line 48
    .line 49
    :goto_0
    iget-object v4, v6, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v4, Landroidx/compose/ui/node/NodeChain;

    .line 52
    .line 53
    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 54
    .line 55
    sub-int/2addr v2, v1

    .line 56
    iget v3, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 57
    .line 58
    sub-int/2addr v3, v1

    .line 59
    add-int v1, v2, v3

    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    add-int/2addr v1, v5

    .line 63
    const/4 v7, 0x2

    .line 64
    div-int/2addr v1, v7

    .line 65
    new-instance v8, Landroidx/compose/runtime/IntStack;

    .line 66
    .line 67
    mul-int/lit8 v9, v1, 0x3

    .line 68
    .line 69
    invoke-direct {v8, v9}, Landroidx/compose/runtime/IntStack;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance v9, Landroidx/compose/runtime/IntStack;

    .line 73
    .line 74
    mul-int/lit8 v10, v1, 0x4

    .line 75
    .line 76
    invoke-direct {v9, v10}, Landroidx/compose/runtime/IntStack;-><init>(I)V

    .line 77
    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    invoke-virtual {v9, v10, v2, v10, v3}, Landroidx/compose/runtime/IntStack;->pushRange(IIII)V

    .line 81
    .line 82
    .line 83
    mul-int/2addr v1, v7

    .line 84
    add-int/2addr v1, v5

    .line 85
    new-array v11, v1, [I

    .line 86
    .line 87
    new-array v12, v1, [I

    .line 88
    .line 89
    const/4 v13, 0x5

    .line 90
    new-array v13, v13, [I

    .line 91
    .line 92
    :goto_1
    iget v14, v9, Landroidx/compose/runtime/IntStack;->tos:I

    .line 93
    .line 94
    if-eqz v14, :cond_1d

    .line 95
    .line 96
    move/from16 p1, v7

    .line 97
    .line 98
    iget-object v7, v9, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 99
    .line 100
    move/from16 p2, v10

    .line 101
    .line 102
    add-int/lit8 v10, v14, -0x1

    .line 103
    .line 104
    iput v10, v9, Landroidx/compose/runtime/IntStack;->tos:I

    .line 105
    .line 106
    aget v10, v7, v10

    .line 107
    .line 108
    const/16 p3, 0x3

    .line 109
    .line 110
    add-int/lit8 v15, v14, -0x2

    .line 111
    .line 112
    iput v15, v9, Landroidx/compose/runtime/IntStack;->tos:I

    .line 113
    .line 114
    aget v15, v7, v15

    .line 115
    .line 116
    add-int/lit8 v5, v14, -0x3

    .line 117
    .line 118
    iput v5, v9, Landroidx/compose/runtime/IntStack;->tos:I

    .line 119
    .line 120
    aget v5, v7, v5

    .line 121
    .line 122
    add-int/lit8 v14, v14, -0x4

    .line 123
    .line 124
    iput v14, v9, Landroidx/compose/runtime/IntStack;->tos:I

    .line 125
    .line 126
    aget v7, v7, v14

    .line 127
    .line 128
    sub-int v14, v5, v7

    .line 129
    .line 130
    move/from16 p5, v1

    .line 131
    .line 132
    sub-int v1, v10, v15

    .line 133
    .line 134
    move-object/from16 v16, v11

    .line 135
    .line 136
    const/4 v11, 0x1

    .line 137
    if-lt v14, v11, :cond_1c

    .line 138
    .line 139
    if-ge v1, v11, :cond_1

    .line 140
    .line 141
    goto/16 :goto_19

    .line 142
    .line 143
    :cond_1
    add-int v17, v14, v1

    .line 144
    .line 145
    add-int/lit8 v17, v17, 0x1

    .line 146
    .line 147
    move/from16 p4, v11

    .line 148
    .line 149
    div-int/lit8 v11, v17, 0x2

    .line 150
    .line 151
    div-int/lit8 v17, p5, 0x2

    .line 152
    .line 153
    add-int/lit8 v18, v17, 0x1

    .line 154
    .line 155
    aput v7, v16, v18

    .line 156
    .line 157
    aput v5, v12, v18

    .line 158
    .line 159
    move/from16 v18, v1

    .line 160
    .line 161
    move/from16 v1, p2

    .line 162
    .line 163
    :goto_2
    if-ge v1, v11, :cond_1c

    .line 164
    .line 165
    sub-int v19, v14, v18

    .line 166
    .line 167
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    .line 168
    .line 169
    .line 170
    move-result v20

    .line 171
    move/from16 v21, v11

    .line 172
    .line 173
    and-int/lit8 v11, v20, 0x1

    .line 174
    .line 175
    move-object/from16 v20, v12

    .line 176
    .line 177
    move/from16 v12, p4

    .line 178
    .line 179
    if-ne v11, v12, :cond_2

    .line 180
    .line 181
    const/4 v11, 0x1

    .line 182
    goto :goto_3

    .line 183
    :cond_2
    move/from16 v11, p2

    .line 184
    .line 185
    :goto_3
    neg-int v12, v1

    .line 186
    move/from16 v22, v11

    .line 187
    .line 188
    move v11, v12

    .line 189
    :goto_4
    const/16 v23, 0x4

    .line 190
    .line 191
    if-gt v11, v1, :cond_b

    .line 192
    .line 193
    if-eq v11, v12, :cond_5

    .line 194
    .line 195
    if-eq v11, v1, :cond_3

    .line 196
    .line 197
    add-int/lit8 v24, v11, 0x1

    .line 198
    .line 199
    add-int v24, v24, v17

    .line 200
    .line 201
    move/from16 v25, v11

    .line 202
    .line 203
    aget v11, v16, v24

    .line 204
    .line 205
    add-int/lit8 v24, v25, -0x1

    .line 206
    .line 207
    add-int v24, v24, v17

    .line 208
    .line 209
    move-object/from16 v26, v13

    .line 210
    .line 211
    aget v13, v16, v24

    .line 212
    .line 213
    if-le v11, v13, :cond_4

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_3
    move/from16 v25, v11

    .line 217
    .line 218
    move-object/from16 v26, v13

    .line 219
    .line 220
    :cond_4
    add-int/lit8 v11, v25, -0x1

    .line 221
    .line 222
    add-int v11, v11, v17

    .line 223
    .line 224
    aget v11, v16, v11

    .line 225
    .line 226
    add-int/lit8 v13, v11, 0x1

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_5
    move/from16 v25, v11

    .line 230
    .line 231
    move-object/from16 v26, v13

    .line 232
    .line 233
    :goto_5
    add-int/lit8 v11, v25, 0x1

    .line 234
    .line 235
    add-int v11, v11, v17

    .line 236
    .line 237
    aget v11, v16, v11

    .line 238
    .line 239
    move v13, v11

    .line 240
    :goto_6
    sub-int v24, v13, v7

    .line 241
    .line 242
    add-int v24, v24, v15

    .line 243
    .line 244
    sub-int v24, v24, v25

    .line 245
    .line 246
    if-eqz v1, :cond_6

    .line 247
    .line 248
    const/16 v27, 0x1

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_6
    move/from16 v27, p2

    .line 252
    .line 253
    :goto_7
    if-ne v13, v11, :cond_7

    .line 254
    .line 255
    const/16 v28, 0x1

    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_7
    move/from16 v28, p2

    .line 259
    .line 260
    :goto_8
    and-int v27, v27, v28

    .line 261
    .line 262
    sub-int v27, v24, v27

    .line 263
    .line 264
    move/from16 v30, v24

    .line 265
    .line 266
    move/from16 v24, v11

    .line 267
    .line 268
    move/from16 v11, v30

    .line 269
    .line 270
    :goto_9
    if-ge v13, v5, :cond_8

    .line 271
    .line 272
    if-ge v11, v10, :cond_8

    .line 273
    .line 274
    invoke-virtual {v6, v13, v11}, Landroidx/compose/ui/node/NodeChain$Differ;->areItemsTheSame(II)Z

    .line 275
    .line 276
    .line 277
    move-result v28

    .line 278
    if-eqz v28, :cond_8

    .line 279
    .line 280
    add-int/lit8 v13, v13, 0x1

    .line 281
    .line 282
    add-int/lit8 v11, v11, 0x1

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_8
    add-int v28, v17, v25

    .line 286
    .line 287
    aput v13, v16, v28

    .line 288
    .line 289
    if-eqz v22, :cond_9

    .line 290
    .line 291
    move/from16 v28, v11

    .line 292
    .line 293
    sub-int v11, v19, v25

    .line 294
    .line 295
    move/from16 v29, v14

    .line 296
    .line 297
    add-int/lit8 v14, v12, 0x1

    .line 298
    .line 299
    if-lt v11, v14, :cond_a

    .line 300
    .line 301
    add-int/lit8 v14, v1, -0x1

    .line 302
    .line 303
    if-gt v11, v14, :cond_a

    .line 304
    .line 305
    add-int v11, v17, v11

    .line 306
    .line 307
    aget v11, v20, v11

    .line 308
    .line 309
    if-gt v11, v13, :cond_a

    .line 310
    .line 311
    aput v24, v26, p2

    .line 312
    .line 313
    const/4 v11, 0x1

    .line 314
    aput v27, v26, v11

    .line 315
    .line 316
    aput v13, v26, p1

    .line 317
    .line 318
    aput v28, v26, p3

    .line 319
    .line 320
    aput p2, v26, v23

    .line 321
    .line 322
    const/4 v11, 0x1

    .line 323
    goto/16 :goto_11

    .line 324
    .line 325
    :cond_9
    move/from16 v29, v14

    .line 326
    .line 327
    :cond_a
    add-int/lit8 v11, v25, 0x2

    .line 328
    .line 329
    move-object/from16 v13, v26

    .line 330
    .line 331
    move/from16 v14, v29

    .line 332
    .line 333
    goto/16 :goto_4

    .line 334
    .line 335
    :cond_b
    move-object/from16 v26, v13

    .line 336
    .line 337
    move/from16 v29, v14

    .line 338
    .line 339
    and-int/lit8 v11, v19, 0x1

    .line 340
    .line 341
    if-nez v11, :cond_c

    .line 342
    .line 343
    const/4 v11, 0x1

    .line 344
    goto :goto_a

    .line 345
    :cond_c
    move/from16 v11, p2

    .line 346
    .line 347
    :goto_a
    move v13, v12

    .line 348
    :goto_b
    if-gt v13, v1, :cond_1b

    .line 349
    .line 350
    if-eq v13, v12, :cond_f

    .line 351
    .line 352
    if-eq v13, v1, :cond_d

    .line 353
    .line 354
    add-int/lit8 v14, v13, 0x1

    .line 355
    .line 356
    add-int v14, v14, v17

    .line 357
    .line 358
    aget v14, v20, v14

    .line 359
    .line 360
    add-int/lit8 v22, v13, -0x1

    .line 361
    .line 362
    add-int v22, v22, v17

    .line 363
    .line 364
    move/from16 v24, v11

    .line 365
    .line 366
    aget v11, v20, v22

    .line 367
    .line 368
    if-ge v14, v11, :cond_e

    .line 369
    .line 370
    goto :goto_c

    .line 371
    :cond_d
    move/from16 v24, v11

    .line 372
    .line 373
    :cond_e
    add-int/lit8 v11, v13, -0x1

    .line 374
    .line 375
    add-int v11, v11, v17

    .line 376
    .line 377
    aget v11, v20, v11

    .line 378
    .line 379
    add-int/lit8 v14, v11, -0x1

    .line 380
    .line 381
    goto :goto_d

    .line 382
    :cond_f
    move/from16 v24, v11

    .line 383
    .line 384
    :goto_c
    add-int/lit8 v11, v13, 0x1

    .line 385
    .line 386
    add-int v11, v11, v17

    .line 387
    .line 388
    aget v11, v20, v11

    .line 389
    .line 390
    move v14, v11

    .line 391
    :goto_d
    sub-int v22, v5, v14

    .line 392
    .line 393
    sub-int v22, v22, v13

    .line 394
    .line 395
    sub-int v22, v10, v22

    .line 396
    .line 397
    if-eqz v1, :cond_10

    .line 398
    .line 399
    const/16 v25, 0x1

    .line 400
    .line 401
    goto :goto_e

    .line 402
    :cond_10
    move/from16 v25, p2

    .line 403
    .line 404
    :goto_e
    if-ne v14, v11, :cond_11

    .line 405
    .line 406
    const/16 v27, 0x1

    .line 407
    .line 408
    goto :goto_f

    .line 409
    :cond_11
    move/from16 v27, p2

    .line 410
    .line 411
    :goto_f
    and-int v25, v25, v27

    .line 412
    .line 413
    add-int v25, v22, v25

    .line 414
    .line 415
    move/from16 v30, v22

    .line 416
    .line 417
    move/from16 v22, v11

    .line 418
    .line 419
    move/from16 v11, v30

    .line 420
    .line 421
    :goto_10
    if-le v14, v7, :cond_12

    .line 422
    .line 423
    if-le v11, v15, :cond_12

    .line 424
    .line 425
    move/from16 v27, v11

    .line 426
    .line 427
    add-int/lit8 v11, v14, -0x1

    .line 428
    .line 429
    move/from16 v28, v13

    .line 430
    .line 431
    add-int/lit8 v13, v27, -0x1

    .line 432
    .line 433
    invoke-virtual {v6, v11, v13}, Landroidx/compose/ui/node/NodeChain$Differ;->areItemsTheSame(II)Z

    .line 434
    .line 435
    .line 436
    move-result v11

    .line 437
    if-eqz v11, :cond_13

    .line 438
    .line 439
    add-int/lit8 v14, v14, -0x1

    .line 440
    .line 441
    add-int/lit8 v11, v27, -0x1

    .line 442
    .line 443
    move/from16 v13, v28

    .line 444
    .line 445
    goto :goto_10

    .line 446
    :cond_12
    move/from16 v27, v11

    .line 447
    .line 448
    move/from16 v28, v13

    .line 449
    .line 450
    :cond_13
    add-int v13, v17, v28

    .line 451
    .line 452
    aput v14, v20, v13

    .line 453
    .line 454
    if-eqz v24, :cond_1a

    .line 455
    .line 456
    sub-int v11, v19, v28

    .line 457
    .line 458
    if-lt v11, v12, :cond_1a

    .line 459
    .line 460
    if-gt v11, v1, :cond_1a

    .line 461
    .line 462
    add-int v11, v17, v11

    .line 463
    .line 464
    aget v11, v16, v11

    .line 465
    .line 466
    if-lt v11, v14, :cond_1a

    .line 467
    .line 468
    aput v14, v26, p2

    .line 469
    .line 470
    const/4 v11, 0x1

    .line 471
    aput v27, v26, v11

    .line 472
    .line 473
    aput v22, v26, p1

    .line 474
    .line 475
    aput v25, v26, p3

    .line 476
    .line 477
    aput v11, v26, v23

    .line 478
    .line 479
    :goto_11
    aget v1, v26, p1

    .line 480
    .line 481
    aget v12, v26, p2

    .line 482
    .line 483
    sub-int/2addr v1, v12

    .line 484
    aget v12, v26, p3

    .line 485
    .line 486
    aget v13, v26, v11

    .line 487
    .line 488
    sub-int/2addr v12, v13

    .line 489
    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    if-lez v1, :cond_19

    .line 494
    .line 495
    aget v1, v26, p2

    .line 496
    .line 497
    aget v12, v26, v11

    .line 498
    .line 499
    aget v11, v26, p3

    .line 500
    .line 501
    sub-int/2addr v11, v12

    .line 502
    aget v13, v26, p1

    .line 503
    .line 504
    sub-int/2addr v13, v1

    .line 505
    if-eq v11, v13, :cond_18

    .line 506
    .line 507
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    .line 508
    .line 509
    .line 510
    move-result v13

    .line 511
    aget v11, v26, v23

    .line 512
    .line 513
    if-eqz v11, :cond_14

    .line 514
    .line 515
    const/4 v14, 0x1

    .line 516
    goto :goto_12

    .line 517
    :cond_14
    move/from16 v14, p2

    .line 518
    .line 519
    :goto_12
    aget v17, v26, p3

    .line 520
    .line 521
    const/16 v18, 0x1

    .line 522
    .line 523
    aget v19, v26, v18

    .line 524
    .line 525
    move/from16 p4, v1

    .line 526
    .line 527
    sub-int v1, v17, v19

    .line 528
    .line 529
    aget v21, v26, p1

    .line 530
    .line 531
    aget v22, v26, p2

    .line 532
    .line 533
    move/from16 v23, v11

    .line 534
    .line 535
    sub-int v11, v21, v22

    .line 536
    .line 537
    if-le v1, v11, :cond_15

    .line 538
    .line 539
    move/from16 v1, v18

    .line 540
    .line 541
    goto :goto_13

    .line 542
    :cond_15
    move/from16 v1, p2

    .line 543
    .line 544
    :goto_13
    or-int/2addr v1, v14

    .line 545
    xor-int/lit8 v1, v1, 0x1

    .line 546
    .line 547
    add-int v1, p4, v1

    .line 548
    .line 549
    if-eqz v23, :cond_16

    .line 550
    .line 551
    move/from16 v11, v18

    .line 552
    .line 553
    goto :goto_14

    .line 554
    :cond_16
    move/from16 v11, p2

    .line 555
    .line 556
    :goto_14
    sub-int v14, v17, v19

    .line 557
    .line 558
    move/from16 p4, v1

    .line 559
    .line 560
    sub-int v1, v21, v22

    .line 561
    .line 562
    if-le v14, v1, :cond_17

    .line 563
    .line 564
    move/from16 v1, v18

    .line 565
    .line 566
    goto :goto_15

    .line 567
    :cond_17
    move/from16 v1, p2

    .line 568
    .line 569
    :goto_15
    xor-int/lit8 v1, v1, 0x1

    .line 570
    .line 571
    or-int/2addr v1, v11

    .line 572
    xor-int/lit8 v1, v1, 0x1

    .line 573
    .line 574
    add-int/2addr v12, v1

    .line 575
    move/from16 v1, p4

    .line 576
    .line 577
    goto :goto_16

    .line 578
    :cond_18
    move/from16 p4, v1

    .line 579
    .line 580
    const/16 v18, 0x1

    .line 581
    .line 582
    :goto_16
    invoke-virtual {v8, v1, v12, v13}, Landroidx/compose/runtime/IntStack;->pushDiagonal(III)V

    .line 583
    .line 584
    .line 585
    goto :goto_17

    .line 586
    :cond_19
    move/from16 v18, v11

    .line 587
    .line 588
    :goto_17
    aget v1, v26, p2

    .line 589
    .line 590
    aget v11, v26, v18

    .line 591
    .line 592
    invoke-virtual {v9, v7, v1, v15, v11}, Landroidx/compose/runtime/IntStack;->pushRange(IIII)V

    .line 593
    .line 594
    .line 595
    aget v1, v26, p1

    .line 596
    .line 597
    aget v7, v26, p3

    .line 598
    .line 599
    invoke-virtual {v9, v1, v5, v7, v10}, Landroidx/compose/runtime/IntStack;->pushRange(IIII)V

    .line 600
    .line 601
    .line 602
    :goto_18
    move/from16 v7, p1

    .line 603
    .line 604
    move/from16 v10, p2

    .line 605
    .line 606
    move/from16 v1, p5

    .line 607
    .line 608
    move-object/from16 v11, v16

    .line 609
    .line 610
    move-object/from16 v12, v20

    .line 611
    .line 612
    move-object/from16 v13, v26

    .line 613
    .line 614
    const/4 v5, 0x1

    .line 615
    goto/16 :goto_1

    .line 616
    .line 617
    :cond_1a
    add-int/lit8 v13, v28, 0x2

    .line 618
    .line 619
    move/from16 v11, v24

    .line 620
    .line 621
    goto/16 :goto_b

    .line 622
    .line 623
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 624
    .line 625
    move-object/from16 v12, v20

    .line 626
    .line 627
    move/from16 v11, v21

    .line 628
    .line 629
    move-object/from16 v13, v26

    .line 630
    .line 631
    move/from16 v14, v29

    .line 632
    .line 633
    const/16 p4, 0x1

    .line 634
    .line 635
    goto/16 :goto_2

    .line 636
    .line 637
    :cond_1c
    :goto_19
    move-object/from16 v20, v12

    .line 638
    .line 639
    move-object/from16 v26, v13

    .line 640
    .line 641
    goto :goto_18

    .line 642
    :cond_1d
    move/from16 p1, v7

    .line 643
    .line 644
    move/from16 p2, v10

    .line 645
    .line 646
    const/16 p3, 0x3

    .line 647
    .line 648
    iget v1, v8, Landroidx/compose/runtime/IntStack;->tos:I

    .line 649
    .line 650
    rem-int/lit8 v5, v1, 0x3

    .line 651
    .line 652
    if-nez v5, :cond_1e

    .line 653
    .line 654
    :goto_1a
    move/from16 v5, p3

    .line 655
    .line 656
    goto :goto_1b

    .line 657
    :cond_1e
    const-string v5, "Array size not a multiple of 3"

    .line 658
    .line 659
    invoke-static {v5}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    goto :goto_1a

    .line 663
    :goto_1b
    if-le v1, v5, :cond_1f

    .line 664
    .line 665
    sub-int/2addr v1, v5

    .line 666
    move/from16 v5, p2

    .line 667
    .line 668
    invoke-virtual {v8, v5, v1}, Landroidx/compose/runtime/IntStack;->quickSort(II)V

    .line 669
    .line 670
    .line 671
    goto :goto_1c

    .line 672
    :cond_1f
    move/from16 v5, p2

    .line 673
    .line 674
    :goto_1c
    invoke-virtual {v8, v2, v3, v5}, Landroidx/compose/runtime/IntStack;->pushDiagonal(III)V

    .line 675
    .line 676
    .line 677
    move v1, v5

    .line 678
    move v2, v1

    .line 679
    move v3, v2

    .line 680
    :cond_20
    iget v7, v8, Landroidx/compose/runtime/IntStack;->tos:I

    .line 681
    .line 682
    if-ge v1, v7, :cond_29

    .line 683
    .line 684
    iget-object v7, v8, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 685
    .line 686
    aget v9, v7, v1

    .line 687
    .line 688
    add-int/lit8 v10, v1, 0x2

    .line 689
    .line 690
    aget v10, v7, v10

    .line 691
    .line 692
    sub-int/2addr v9, v10

    .line 693
    add-int/lit8 v11, v1, 0x1

    .line 694
    .line 695
    aget v7, v7, v11

    .line 696
    .line 697
    sub-int/2addr v7, v10

    .line 698
    add-int/lit8 v1, v1, 0x3

    .line 699
    .line 700
    :goto_1d
    if-ge v2, v9, :cond_23

    .line 701
    .line 702
    iget-object v11, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 703
    .line 704
    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .line 705
    .line 706
    iget-object v11, v11, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 707
    .line 708
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    .line 710
    .line 711
    iget v12, v11, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 712
    .line 713
    and-int/lit8 v12, v12, 0x2

    .line 714
    .line 715
    if-eqz v12, :cond_22

    .line 716
    .line 717
    iget-object v12, v11, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 718
    .line 719
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    .line 721
    .line 722
    iget-object v13, v12, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 723
    .line 724
    iget-object v12, v12, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    .line 725
    .line 726
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 727
    .line 728
    .line 729
    if-eqz v13, :cond_21

    .line 730
    .line 731
    iput-object v12, v13, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    .line 732
    .line 733
    :cond_21
    iput-object v13, v12, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 734
    .line 735
    iget-object v13, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 736
    .line 737
    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .line 738
    .line 739
    invoke-static {v4, v13, v12}, Landroidx/compose/ui/node/NodeChain;->access$propagateCoordinator(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 740
    .line 741
    .line 742
    :cond_22
    invoke-static {v11}, Landroidx/compose/ui/node/NodeChain;->detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    .line 743
    .line 744
    .line 745
    move-result-object v11

    .line 746
    iput-object v11, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 747
    .line 748
    add-int/lit8 v2, v2, 0x1

    .line 749
    .line 750
    goto :goto_1d

    .line 751
    :cond_23
    :goto_1e
    if-ge v3, v7, :cond_27

    .line 752
    .line 753
    iget v9, v6, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 754
    .line 755
    add-int/2addr v9, v3

    .line 756
    iget-object v11, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 757
    .line 758
    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .line 759
    .line 760
    iget-object v12, v6, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    .line 761
    .line 762
    check-cast v12, Landroidx/compose/runtime/collection/MutableVector;

    .line 763
    .line 764
    iget-object v12, v12, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 765
    .line 766
    aget-object v9, v12, v9

    .line 767
    .line 768
    check-cast v9, Landroidx/compose/ui/Modifier$Element;

    .line 769
    .line 770
    invoke-static {v9, v11}, Landroidx/compose/ui/node/NodeChain;->createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    .line 771
    .line 772
    .line 773
    move-result-object v9

    .line 774
    iput-object v9, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 775
    .line 776
    iget-boolean v11, v6, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    .line 777
    .line 778
    if-eqz v11, :cond_26

    .line 779
    .line 780
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 781
    .line 782
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 786
    .line 787
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 788
    .line 789
    .line 790
    iget-object v11, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 791
    .line 792
    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .line 793
    .line 794
    invoke-static {v11}, Landroidx/compose/ui/node/HitTestResultKt;->asLayoutModifierNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/node/LayoutModifierNode;

    .line 795
    .line 796
    .line 797
    move-result-object v11

    .line 798
    if-eqz v11, :cond_24

    .line 799
    .line 800
    new-instance v12, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 801
    .line 802
    iget-object v13, v4, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 803
    .line 804
    check-cast v13, Landroidx/compose/ui/node/LayoutNode;

    .line 805
    .line 806
    invoke-direct {v12, v13, v11}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 807
    .line 808
    .line 809
    iget-object v11, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 810
    .line 811
    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .line 812
    .line 813
    invoke-virtual {v11, v12}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 814
    .line 815
    .line 816
    iget-object v11, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 817
    .line 818
    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .line 819
    .line 820
    invoke-static {v4, v11, v12}, Landroidx/compose/ui/node/NodeChain;->access$propagateCoordinator(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 821
    .line 822
    .line 823
    iget-object v11, v9, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 824
    .line 825
    iput-object v11, v12, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 826
    .line 827
    iput-object v9, v12, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    .line 828
    .line 829
    iput-object v12, v9, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 830
    .line 831
    goto :goto_1f

    .line 832
    :cond_24
    iget-object v11, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 833
    .line 834
    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .line 835
    .line 836
    invoke-virtual {v11, v9}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 837
    .line 838
    .line 839
    :goto_1f
    iget-object v9, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 840
    .line 841
    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .line 842
    .line 843
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->markAsAttached$ui()V

    .line 844
    .line 845
    .line 846
    iget-object v9, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 847
    .line 848
    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .line 849
    .line 850
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->runAttachLifecycle$ui()V

    .line 851
    .line 852
    .line 853
    iget-object v9, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 854
    .line 855
    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .line 856
    .line 857
    sget-object v11, Landroidx/compose/ui/node/NodeKindKt;->classToKindSetMap:Landroidx/collection/MutableObjectIntMap;

    .line 858
    .line 859
    iget-boolean v11, v9, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 860
    .line 861
    if-nez v11, :cond_25

    .line 862
    .line 863
    const-string v11, "autoInvalidateInsertedNode called on unattached node"

    .line 864
    .line 865
    invoke-static {v11}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    :cond_25
    const/4 v11, -0x1

    .line 869
    const/4 v12, 0x1

    .line 870
    invoke-static {v9, v11, v12}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    .line 871
    .line 872
    .line 873
    goto :goto_20

    .line 874
    :cond_26
    const/4 v12, 0x1

    .line 875
    iput-boolean v12, v9, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    .line 876
    .line 877
    :goto_20
    add-int/lit8 v3, v3, 0x1

    .line 878
    .line 879
    goto/16 :goto_1e

    .line 880
    .line 881
    :cond_27
    const/4 v12, 0x1

    .line 882
    :goto_21
    add-int/lit8 v7, v10, -0x1

    .line 883
    .line 884
    if-lez v10, :cond_20

    .line 885
    .line 886
    iget-object v9, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 887
    .line 888
    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .line 889
    .line 890
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 891
    .line 892
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 893
    .line 894
    .line 895
    iput-object v9, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 896
    .line 897
    iget-object v9, v6, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    .line 898
    .line 899
    check-cast v9, Landroidx/compose/runtime/collection/MutableVector;

    .line 900
    .line 901
    iget v10, v6, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 902
    .line 903
    add-int v11, v10, v2

    .line 904
    .line 905
    iget-object v9, v9, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 906
    .line 907
    aget-object v9, v9, v11

    .line 908
    .line 909
    check-cast v9, Landroidx/compose/ui/Modifier$Element;

    .line 910
    .line 911
    iget-object v11, v6, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    .line 912
    .line 913
    check-cast v11, Landroidx/compose/runtime/collection/MutableVector;

    .line 914
    .line 915
    add-int/2addr v10, v3

    .line 916
    iget-object v11, v11, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 917
    .line 918
    aget-object v10, v11, v10

    .line 919
    .line 920
    check-cast v10, Landroidx/compose/ui/Modifier$Element;

    .line 921
    .line 922
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 923
    .line 924
    .line 925
    move-result v11

    .line 926
    if-nez v11, :cond_28

    .line 927
    .line 928
    iget-object v11, v6, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 929
    .line 930
    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .line 931
    .line 932
    invoke-static {v9, v10, v11}, Landroidx/compose/ui/node/NodeChain;->updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 933
    .line 934
    .line 935
    :cond_28
    add-int/lit8 v2, v2, 0x1

    .line 936
    .line 937
    add-int/lit8 v3, v3, 0x1

    .line 938
    .line 939
    move v10, v7

    .line 940
    goto :goto_21

    .line 941
    :cond_29
    iget-object v1, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 942
    .line 943
    check-cast v1, Landroidx/compose/ui/node/TailModifierNode;

    .line 944
    .line 945
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 946
    .line 947
    move v10, v5

    .line 948
    :goto_22
    if-eqz v1, :cond_2a

    .line 949
    .line 950
    iget-object v2, v0, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 951
    .line 952
    check-cast v2, Landroidx/compose/ui/node/NodeChain$sentinelHead$1;

    .line 953
    .line 954
    if-eq v1, v2, :cond_2a

    .line 955
    .line 956
    iget v2, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 957
    .line 958
    or-int/2addr v10, v2

    .line 959
    iput v10, v1, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 960
    .line 961
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 962
    .line 963
    goto :goto_22

    .line 964
    :cond_2a
    return-void
.end method

.method public syncCoordinators()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroidx/compose/ui/node/TailModifierNode;

    .line 12
    .line 13
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    :goto_0
    if-eqz v2, :cond_3

    .line 16
    .line 17
    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->asLayoutModifierNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/node/LayoutModifierNode;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    iget-object v4, v2, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    check-cast v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 28
    .line 29
    iget-object v5, v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->layoutModifierNode:Landroidx/compose/ui/node/LayoutModifierNode;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->setLayoutModifierNode$ui(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 32
    .line 33
    .line 34
    if-eq v5, v2, :cond_1

    .line 35
    .line 36
    iget-object v3, v4, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    check-cast v3, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidate()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    new-instance v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 47
    .line 48
    invoke-direct {v4, v0, v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v4}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_1
    iput-object v4, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 55
    .line 56
    iput-object v1, v4, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    .line 57
    .line 58
    move-object v1, v4

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {v2, v1}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 73
    .line 74
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    const/4 v0, 0x0

    .line 80
    :goto_3
    iput-object v0, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 81
    .line 82
    iput-object v1, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 83
    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/NodeChain;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "["

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Landroidx/compose/ui/node/TailModifierNode;

    .line 25
    .line 26
    const-string v2, "]"

    .line 27
    .line 28
    if-ne v1, p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-eq v1, p0, :cond_2

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v3, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 46
    .line 47
    if-ne v3, p0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const-string v3, ","

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
