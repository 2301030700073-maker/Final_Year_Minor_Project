.class public final Lcom/eygraber/uri/Uri$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public authority:Ljava/lang/Object;

.field public fragment:Ljava/lang/Object;

.field public opaquePart:Ljava/lang/Object;

.field public path:Ljava/lang/Object;

.field public query:Ljava/lang/Object;

.field public scheme:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/eygraber/uri/Uri$Builder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f080074

    .line 10
    .line 11
    .line 12
    const v0, 0x7f08002a

    .line 13
    .line 14
    .line 15
    const v1, 0x7f080076

    .line 16
    .line 17
    .line 18
    filled-new-array {v1, p1, v0}, [I

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 p1, 0x7

    .line 25
    new-array v0, p1, [I

    .line 26
    .line 27
    fill-array-data v0, :array_0

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 31
    .line 32
    new-array p1, p1, [I

    .line 33
    .line 34
    fill-array-data p1, :array_1

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 38
    .line 39
    const p1, 0x7f080039

    .line 40
    .line 41
    .line 42
    const v0, 0x7f08005a

    .line 43
    .line 44
    .line 45
    const v1, 0x7f08005b

    .line 46
    .line 47
    .line 48
    filled-new-array {v1, p1, v0}, [I

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 53
    .line 54
    const p1, 0x7f08006d

    .line 55
    .line 56
    .line 57
    const v0, 0x7f080077

    .line 58
    .line 59
    .line 60
    filled-new-array {p1, v0}, [I

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 65
    .line 66
    const p1, 0x7f08002e

    .line 67
    .line 68
    .line 69
    const v0, 0x7f080034

    .line 70
    .line 71
    .line 72
    const v1, 0x7f08002d

    .line 73
    .line 74
    .line 75
    const v2, 0x7f080033

    .line 76
    .line 77
    .line 78
    filled-new-array {v1, v2, p1, v0}, [I

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 95
    .line 96
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 103
    .line 104
    const-string p1, "PublicSuffixDatabase.list"

    .line 105
    .line 106
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_0
    .array-data 4
        0x7f080042
        0x7f080065
        0x7f080049
        0x7f080044
        0x7f080045
        0x7f080048
        0x7f080047
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_1
    .array-data 4
        0x7f080073
        0x7f080075
        0x7f08003b
        0x7f08006f
        0x7f080070
        0x7f080071
        0x7f080072
    .end array-data
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/eygraber/uri/Uri$Builder;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;Landroidx/camera/camera2/pipe/CameraPipeImpl;Landroidx/cardview/widget/CardView$1;Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;Landroidx/camera/core/CameraXConfig;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/eygraber/uri/Uri$Builder;->$r8$classId:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 125
    iput-object p2, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 126
    iput-object p3, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 127
    iput-object p4, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 128
    iput-object p5, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 129
    iput-object p6, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2Backend;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/graph/SurfaceGraph;Landroidx/camera/camera2/pipe/compat/Camera2Backend;)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, Lcom/eygraber/uri/Uri$Builder;->$r8$classId:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 141
    iput-object p3, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 142
    iput-object p4, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 143
    iput-object p5, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 144
    iput-object p6, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 145
    iput-object p7, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/CoroutineLiveData;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/internal/ContextScope;Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/eygraber/uri/Uri$Builder;->$r8$classId:I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 148
    iput-object p2, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 149
    iput-object p3, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 150
    iput-object p4, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/InvalidationTracker$implementation$1;Landroidx/compose/material/ripple/RippleNode$onAttach$1;)V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lcom/eygraber/uri/Uri$Builder;->$r8$classId:I

    .line 131
    new-instance v0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 134
    iput-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 135
    iput-object p2, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 136
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 137
    new-instance p1, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    const p2, 0x7fffffff

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p2, v0, p1, v1}, Lokhttp3/Cookie$Companion;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 138
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lcom/eygraber/uri/Uri$Builder;->$r8$classId:I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 118
    iput-object p2, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 119
    iput-object p3, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 120
    iput-object p4, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 121
    iput-object p5, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 122
    iput-object p6, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;Lnet/thunderbird/feature/account/AccountId;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/eygraber/uri/Uri$Builder;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 111
    iput-object p2, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 112
    iput-object p3, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 113
    iput-object p4, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 114
    iput-object p5, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 115
    iput-object p6, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    return-void
.end method

.method public static final access$closeAndReleaseUnprocessedElements(Lcom/eygraber/uri/Uri$Builder;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/collections/ArrayDeque;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, p1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    instance-of v2, p1, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->getOrThrow-impl(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    new-instance p1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public static final access$updateSpecialFoldersSynchronous(Lcom/eygraber/uri/Uri$Builder;)V
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lnet/thunderbird/feature/account/AccountId;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/eygraber/uri/Uri$Builder;->getAccountById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, v0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->getRemoteFolders(Lnet/thunderbird/feature/account/AccountId;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v3, v3, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 20
    .line 21
    iget-object v5, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->inboxFolderId:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    const/4 v8, 0x0

    .line 32
    if-eqz v7, :cond_1

    .line 33
    .line 34
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    move-object v9, v7

    .line 39
    check-cast v9, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 40
    .line 41
    iget-object v9, v9, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 42
    .line 43
    sget-object v10, Lnet/thunderbird/feature/mail/folder/api/FolderType;->INBOX:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 44
    .line 45
    if-ne v9, v10, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v7, v8

    .line 49
    :goto_0
    check-cast v7, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 50
    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    iget-wide v6, v7, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->id:J

    .line 54
    .line 55
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    :cond_2
    move-object v10, v8

    .line 60
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_3

    .line 65
    .line 66
    move-object/from16 v45, v4

    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_3
    const/16 v40, -0x1

    .line 71
    .line 72
    const v41, 0x7fffff

    .line 73
    .line 74
    .line 75
    move-object v6, v3

    .line 76
    const/4 v3, 0x0

    .line 77
    move-object v7, v4

    .line 78
    const/4 v4, 0x0

    .line 79
    move-object v8, v5

    .line 80
    const/4 v5, 0x0

    .line 81
    move-object v9, v6

    .line 82
    const/4 v6, 0x0

    .line 83
    move-object v11, v7

    .line 84
    const/4 v7, 0x0

    .line 85
    move-object v12, v8

    .line 86
    const/4 v8, 0x0

    .line 87
    move-object v13, v9

    .line 88
    const/4 v9, 0x0

    .line 89
    move-object v14, v11

    .line 90
    const/4 v11, 0x0

    .line 91
    move-object v15, v12

    .line 92
    const/4 v12, 0x0

    .line 93
    move-object/from16 v16, v13

    .line 94
    .line 95
    const/4 v13, 0x0

    .line 96
    move-object/from16 v17, v14

    .line 97
    .line 98
    const/4 v14, 0x0

    .line 99
    move-object/from16 v18, v15

    .line 100
    .line 101
    const/4 v15, 0x0

    .line 102
    move-object/from16 v19, v16

    .line 103
    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    move-object/from16 v20, v17

    .line 107
    .line 108
    const/16 v17, 0x0

    .line 109
    .line 110
    move-object/from16 v21, v18

    .line 111
    .line 112
    const/16 v18, 0x0

    .line 113
    .line 114
    move-object/from16 v22, v19

    .line 115
    .line 116
    const/16 v19, 0x0

    .line 117
    .line 118
    move-object/from16 v23, v20

    .line 119
    .line 120
    const/16 v20, 0x0

    .line 121
    .line 122
    move-object/from16 v24, v21

    .line 123
    .line 124
    const/16 v21, 0x0

    .line 125
    .line 126
    move-object/from16 v25, v22

    .line 127
    .line 128
    const/16 v22, 0x0

    .line 129
    .line 130
    move-object/from16 v26, v23

    .line 131
    .line 132
    const/16 v23, 0x0

    .line 133
    .line 134
    move-object/from16 v27, v24

    .line 135
    .line 136
    const/16 v24, 0x0

    .line 137
    .line 138
    move-object/from16 v28, v25

    .line 139
    .line 140
    const/16 v25, 0x0

    .line 141
    .line 142
    move-object/from16 v29, v26

    .line 143
    .line 144
    const/16 v26, 0x0

    .line 145
    .line 146
    move-object/from16 v30, v27

    .line 147
    .line 148
    const/16 v27, 0x0

    .line 149
    .line 150
    move-object/from16 v31, v28

    .line 151
    .line 152
    const/16 v28, 0x0

    .line 153
    .line 154
    move-object/from16 v32, v29

    .line 155
    .line 156
    const/16 v29, 0x0

    .line 157
    .line 158
    move-object/from16 v33, v30

    .line 159
    .line 160
    const/16 v30, 0x0

    .line 161
    .line 162
    move-object/from16 v34, v31

    .line 163
    .line 164
    const/16 v31, 0x0

    .line 165
    .line 166
    move-object/from16 v35, v32

    .line 167
    .line 168
    const/16 v32, 0x0

    .line 169
    .line 170
    move-object/from16 v36, v33

    .line 171
    .line 172
    const/16 v33, 0x0

    .line 173
    .line 174
    move-object/from16 v37, v34

    .line 175
    .line 176
    const/16 v34, 0x0

    .line 177
    .line 178
    move-object/from16 v38, v35

    .line 179
    .line 180
    const/16 v35, 0x0

    .line 181
    .line 182
    move-object/from16 v39, v36

    .line 183
    .line 184
    const/16 v36, 0x0

    .line 185
    .line 186
    move-object/from16 v42, v37

    .line 187
    .line 188
    const/16 v37, 0x0

    .line 189
    .line 190
    move-object/from16 v43, v38

    .line 191
    .line 192
    const/16 v38, 0x0

    .line 193
    .line 194
    move-object/from16 v44, v39

    .line 195
    .line 196
    const v39, -0x800001

    .line 197
    .line 198
    .line 199
    move-object/from16 v0, v42

    .line 200
    .line 201
    move-object/from16 v45, v43

    .line 202
    .line 203
    invoke-static/range {v2 .. v41}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    const/4 v3, 0x0

    .line 208
    if-eqz v44, :cond_6

    .line 209
    .line 210
    invoke-interface/range {v45 .. v45}, Ljava/util/Collection;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_4

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_4
    invoke-interface/range {v45 .. v45}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    if-eqz v5, :cond_6

    .line 226
    .line 227
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 232
    .line 233
    iget-wide v5, v5, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->id:J

    .line 234
    .line 235
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    .line 236
    .line 237
    .line 238
    move-result-wide v7

    .line 239
    cmp-long v5, v5, v7

    .line 240
    .line 241
    if-nez v5, :cond_5

    .line 242
    .line 243
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    .line 244
    .line 245
    .line 246
    move-result-wide v4

    .line 247
    invoke-virtual {v0, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-virtual {v6, v4, v5, v3}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setIncludeInUnifiedInbox(JZ)V

    .line 252
    .line 253
    .line 254
    :cond_6
    :goto_1
    if-eqz v10, :cond_7

    .line 255
    .line 256
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 257
    .line 258
    .line 259
    move-result-wide v4

    .line 260
    invoke-virtual {v0, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    const/4 v7, 0x1

    .line 265
    invoke-virtual {v6, v4, v5, v7}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setIncludeInUnifiedInbox(JZ)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 269
    .line 270
    .line 271
    move-result-wide v4

    .line 272
    invoke-virtual {v0, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-virtual {v6, v4, v5}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setVisible(J)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 280
    .line 281
    .line 282
    move-result-wide v12

    .line 283
    invoke-virtual {v0, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    iget-object v5, v4, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 288
    .line 289
    iget-object v5, v5, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v5, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 292
    .line 293
    iget-object v5, v5, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 294
    .line 295
    iget-object v5, v5, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 296
    .line 297
    new-instance v11, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;

    .line 298
    .line 299
    const/16 v16, 0x0

    .line 300
    .line 301
    const-string v14, "sync_enabled"

    .line 302
    .line 303
    const/4 v15, 0x1

    .line 304
    invoke-direct/range {v11 .. v16}, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;-><init>(JLjava/lang/String;ZI)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5, v3, v11}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->notifyFolderSettingsChanged()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 314
    .line 315
    .line 316
    move-result-wide v13

    .line 317
    invoke-virtual {v0, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iget-object v1, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 322
    .line 323
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v1, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 326
    .line 327
    iget-object v1, v1, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 328
    .line 329
    iget-object v1, v1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 330
    .line 331
    new-instance v12, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;

    .line 332
    .line 333
    const/16 v17, 0x0

    .line 334
    .line 335
    const-string v15, "notifications_enabled"

    .line 336
    .line 337
    const/16 v16, 0x1

    .line 338
    .line 339
    invoke-direct/range {v12 .. v17}, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;-><init>(JLjava/lang/String;ZI)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v3, v12}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->notifyFolderSettingsChanged()V

    .line 346
    .line 347
    .line 348
    :cond_7
    :goto_2
    iget-object v0, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 349
    .line 350
    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 351
    .line 352
    const-string v1, "pop3"

    .line 353
    .line 354
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-nez v0, :cond_8

    .line 359
    .line 360
    sget-object v0, Lnet/thunderbird/feature/mail/folder/api/FolderType;->ARCHIVE:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 361
    .line 362
    move-object/from16 v1, p0

    .line 363
    .line 364
    move-object/from16 v7, v45

    .line 365
    .line 366
    invoke-virtual {v1, v2, v0, v7}, Lcom/eygraber/uri/Uri$Builder;->updateSpecialFolderSynchronous(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;Ljava/util/List;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    sget-object v2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->DRAFTS:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 371
    .line 372
    invoke-virtual {v1, v0, v2, v7}, Lcom/eygraber/uri/Uri$Builder;->updateSpecialFolderSynchronous(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;Ljava/util/List;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    sget-object v2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SENT:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 377
    .line 378
    invoke-virtual {v1, v0, v2, v7}, Lcom/eygraber/uri/Uri$Builder;->updateSpecialFolderSynchronous(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;Ljava/util/List;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    sget-object v2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SPAM:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 383
    .line 384
    invoke-virtual {v1, v0, v2, v7}, Lcom/eygraber/uri/Uri$Builder;->updateSpecialFolderSynchronous(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;Ljava/util/List;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    sget-object v2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->TRASH:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 389
    .line 390
    invoke-virtual {v1, v0, v2, v7}, Lcom/eygraber/uri/Uri$Builder;->updateSpecialFolderSynchronous(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;Ljava/util/List;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    :goto_3
    move-object v3, v2

    .line 395
    goto :goto_4

    .line 396
    :cond_8
    move-object/from16 v1, p0

    .line 397
    .line 398
    goto :goto_3

    .line 399
    :goto_4
    const/16 v41, -0x1

    .line 400
    .line 401
    const v42, 0x7fffff

    .line 402
    .line 403
    .line 404
    const/4 v4, 0x0

    .line 405
    const/4 v5, 0x0

    .line 406
    const/4 v6, 0x0

    .line 407
    const/4 v7, 0x0

    .line 408
    const/4 v8, 0x0

    .line 409
    const/4 v9, 0x0

    .line 410
    const/4 v10, 0x0

    .line 411
    const/4 v11, 0x0

    .line 412
    const/4 v12, 0x0

    .line 413
    const/4 v13, 0x0

    .line 414
    const/4 v14, 0x0

    .line 415
    const/4 v15, 0x0

    .line 416
    const/16 v16, 0x0

    .line 417
    .line 418
    const/16 v17, 0x0

    .line 419
    .line 420
    const/16 v18, 0x0

    .line 421
    .line 422
    const/16 v19, 0x0

    .line 423
    .line 424
    const/16 v20, 0x0

    .line 425
    .line 426
    const/16 v21, 0x0

    .line 427
    .line 428
    const/16 v22, 0x0

    .line 429
    .line 430
    const/16 v23, 0x0

    .line 431
    .line 432
    const/16 v24, 0x0

    .line 433
    .line 434
    const/16 v25, 0x0

    .line 435
    .line 436
    const/16 v26, 0x0

    .line 437
    .line 438
    const/16 v27, 0x0

    .line 439
    .line 440
    const/16 v28, 0x0

    .line 441
    .line 442
    const/16 v29, 0x0

    .line 443
    .line 444
    const/16 v30, 0x0

    .line 445
    .line 446
    const/16 v31, 0x0

    .line 447
    .line 448
    const/16 v32, 0x0

    .line 449
    .line 450
    const/16 v33, 0x0

    .line 451
    .line 452
    const/16 v34, 0x0

    .line 453
    .line 454
    const/16 v35, 0x0

    .line 455
    .line 456
    const/16 v36, 0x0

    .line 457
    .line 458
    const/16 v37, 0x0

    .line 459
    .line 460
    const/16 v38, 0x0

    .line 461
    .line 462
    const/16 v39, 0x0

    .line 463
    .line 464
    const v40, -0x7c0001

    .line 465
    .line 466
    .line 467
    invoke-static/range {v3 .. v42}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    iget-object v1, v1, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 472
    .line 473
    check-cast v1, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 474
    .line 475
    invoke-virtual {v1, v0}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 476
    .line 477
    .line 478
    return-void
.end method

.method public static arrayContains([II)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    if-ne v3, p1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method public static createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    .line 1
    const v0, 0x7f040120

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f04011b

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x4

    .line 24
    new-array v2, v2, [[I

    .line 25
    .line 26
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v3, v2, v4

    .line 30
    .line 31
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    aput-object v3, v2, v4

    .line 35
    .line 36
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    aput-object v3, v2, v4

    .line 40
    .line 41
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    aput-object v3, v2, v4

    .line 45
    .line 46
    filled-new-array {p0, v1, v0, p1}, [I

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 51
    .line 52
    invoke-direct {p1, v2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 53
    .line 54
    .line 55
    return-object p1
.end method

.method public static getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const v0, 0x7f080069

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f08006a

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne p1, p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-ne p1, p2, :cond_0

    .line 39
    .line 40
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 41
    .line 42
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 53
    .line 54
    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v2, Landroid/graphics/Canvas;

    .line 59
    .line 60
    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 75
    .line 76
    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    .line 78
    .line 79
    move-object p1, v2

    .line 80
    :goto_0
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 83
    .line 84
    .line 85
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 86
    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-ne v2, p2, :cond_1

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-ne v2, p2, :cond_1

    .line 100
    .line 101
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 105
    .line 106
    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-instance v3, Landroid/graphics/Canvas;

    .line 111
    .line 112
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    .line 120
    .line 121
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 122
    .line 123
    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .line 125
    .line 126
    :goto_1
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    .line 127
    .line 128
    const/4 v2, 0x3

    .line 129
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    aput-object v0, v2, v1

    .line 132
    .line 133
    const/4 v0, 0x1

    .line 134
    aput-object p0, v2, v0

    .line 135
    .line 136
    const/4 p0, 0x2

    .line 137
    aput-object p1, v2, p0

    .line 138
    .line 139
    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    const/high16 p1, 0x1020000

    .line 143
    .line 144
    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 145
    .line 146
    .line 147
    const p1, 0x102000f

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 151
    .line 152
    .line 153
    const p1, 0x102000d

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 157
    .line 158
    .line 159
    return-object p2
.end method

.method public static getSpecialFolderId(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string p0, "Unsupported: "

    .line 24
    .line 25
    invoke-static {p1, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_1
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderId:Ljava/lang/Long;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_2
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderId:Ljava/lang/Long;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_3
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderId:Ljava/lang/Long;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_4
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderId:Ljava/lang/Long;

    .line 40
    .line 41
    return-object p0
.end method

.method public static getSpecialFolderSelection(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string p0, "Unsupported: "

    .line 24
    .line 25
    invoke-static {p1, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_1
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_2
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_3
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_4
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderSelection:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 40
    .line 41
    return-object p0
.end method

.method public static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    sget-object p2, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    :cond_0
    invoke-static {p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public appendPath$1(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/eygraber/uri/parts/PathPart;->NULL:Lcom/eygraber/uri/parts/PathPart;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/eygraber/uri/parts/PathPart;

    .line 6
    .line 7
    sget-object v1, Lcom/eygraber/uri/UriCodec;->lowercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1}, Lcom/eygraber/uri/UriCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v2, "/"

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroidx/core/util/DebugUtils;->fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/PathPart;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, ""

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/16 v4, 0x2f

    .line 53
    .line 54
    if-ne v3, v4, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-static {v0, v2, p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_0
    invoke-static {p1}, Landroidx/core/util/DebugUtils;->fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/PathPart;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_1
    iput-object v1, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 72
    .line 73
    return-void
.end method

.method public appendQueryParameter$1(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 3
    .line 4
    sget-object v1, Lcom/eygraber/uri/UriCodec;->lowercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

    .line 5
    .line 6
    const-string/jumbo v1, "v"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/eygraber/uri/UriCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1, v0}, Lcom/eygraber/uri/UriCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    const-string p1, "="

    .line 21
    .line 22
    invoke-static {v1, p1, v0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/eygraber/uri/parts/Part;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 33
    .line 34
    invoke-static {p1}, Landroidx/room/util/DBUtil;->fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/Part;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    sget-object v1, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, "&"

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Landroidx/room/util/DBUtil;->fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/Part;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    :goto_1
    sget-object v0, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 82
    .line 83
    invoke-static {p1}, Landroidx/room/util/DBUtil;->fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/Part;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_2
    iput-object p1, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 88
    .line 89
    return-void
.end method

.method public build()Lcom/eygraber/uri/Uri;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/eygraber/uri/parts/Part;

    .line 4
    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    iget-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/eygraber/uri/parts/PathPart;

    .line 10
    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    sget-object v1, Lcom/eygraber/uri/parts/PathPart;->NULL:Lcom/eygraber/uri/parts/PathPart;

    .line 14
    .line 15
    if-eq v0, v1, :cond_7

    .line 16
    .line 17
    iget-object v1, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lcom/eygraber/uri/parts/Part;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    sget-object v2, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 30
    .line 31
    if-eq v1, v2, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    move-object v4, v0

    .line 35
    goto :goto_5

    .line 36
    :cond_1
    :goto_1
    iget-boolean v1, v0, Lcom/eygraber/uri/parts/AbstractPart;->wasEncodedCached:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {v0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_2
    if-eqz v2, :cond_0

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 v3, 0x0

    .line 59
    const-string v4, "/"

    .line 60
    .line 61
    invoke-static {v2, v4, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    if-eqz v1, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v4, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_3

    .line 79
    :cond_5
    sget-object v1, Lcom/eygraber/uri/NotCachedHolder;->NotCached:Ljava/lang/String;

    .line 80
    .line 81
    :goto_3
    iget-boolean v2, v0, Lcom/eygraber/uri/parts/AbstractPart;->wasDecodedCached:Z

    .line 82
    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v4, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_4

    .line 94
    :cond_6
    sget-object v0, Lcom/eygraber/uri/NotCachedHolder;->NotCached:Ljava/lang/String;

    .line 95
    .line 96
    :goto_4
    new-instance v2, Lcom/eygraber/uri/parts/PathPart;

    .line 97
    .line 98
    invoke-direct {v2, v1, v0}, Lcom/eygraber/uri/parts/PathPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    move-object v0, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_7
    sget-object v0, Lcom/eygraber/uri/parts/PathPart;->EMPTY:Lcom/eygraber/uri/parts/PathPart;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :goto_5
    new-instance v1, Lcom/eygraber/uri/uris/HierarchicalUri;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 109
    .line 110
    move-object v2, v0

    .line 111
    check-cast v2, Ljava/lang/String;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 114
    .line 115
    move-object v3, v0

    .line 116
    check-cast v3, Lcom/eygraber/uri/parts/Part;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 119
    .line 120
    move-object v5, v0

    .line 121
    check-cast v5, Lcom/eygraber/uri/parts/Part;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 124
    .line 125
    move-object v6, p0

    .line 126
    check-cast v6, Lcom/eygraber/uri/parts/Part;

    .line 127
    .line 128
    invoke-direct/range {v1 .. v6}, Lcom/eygraber/uri/uris/HierarchicalUri;-><init>(Ljava/lang/String;Lcom/eygraber/uri/parts/Part;Lcom/eygraber/uri/parts/PathPart;Lcom/eygraber/uri/parts/Part;Lcom/eygraber/uri/parts/Part;)V

    .line 129
    .line 130
    .line 131
    return-object v1

    .line 132
    :cond_8
    iget-object v1, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v1, Ljava/lang/String;

    .line 135
    .line 136
    if-eqz v1, :cond_9

    .line 137
    .line 138
    new-instance v2, Lcom/eygraber/uri/uris/OpaqueUri;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 143
    .line 144
    invoke-direct {v2, v1, v0, p0}, Lcom/eygraber/uri/uris/OpaqueUri;-><init>(Ljava/lang/String;Lcom/eygraber/uri/parts/Part;Lcom/eygraber/uri/parts/Part;)V

    .line 145
    .line 146
    .line 147
    return-object v2

    .line 148
    :cond_9
    const-string p0, "An opaque URI must have a scheme."

    .line 149
    .line 150
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 p0, 0x0

    .line 154
    return-object p0
.end method

.method public getAccountById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccount;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getByIdSync(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "Account not found: "

    .line 13
    .line 14
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public getTintListForDrawableRes(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 7

    .line 1
    const v0, 0x7f08003e

    .line 2
    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    const p0, 0x7f060015

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p0}, Landroidx/tracing/TraceApi29Impl;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const v0, 0x7f08006c

    .line 15
    .line 16
    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    const p0, 0x7f060018

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p0}, Landroidx/tracing/TraceApi29Impl;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const v0, 0x7f08006b

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-ne p2, v0, :cond_3

    .line 32
    .line 33
    const/4 p0, 0x3

    .line 34
    new-array p2, p0, [[I

    .line 35
    .line 36
    new-array p0, p0, [I

    .line 37
    .line 38
    const v0, 0x7f040153

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x2

    .line 46
    const v4, 0x7f04011f

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_2

    .line 57
    .line 58
    sget-object v0, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    .line 59
    .line 60
    aput-object v0, p2, v1

    .line 61
    .line 62
    invoke-virtual {v2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    aput v0, p0, v1

    .line 67
    .line 68
    sget-object v0, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    .line 69
    .line 70
    aput-object v0, p2, v5

    .line 71
    .line 72
    invoke-static {p1, v4}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    aput p1, p0, v5

    .line 77
    .line 78
    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    .line 79
    .line 80
    aput-object p1, p2, v3

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    aput p1, p0, v3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    .line 90
    .line 91
    aput-object v2, p2, v1

    .line 92
    .line 93
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    aput v2, p0, v1

    .line 98
    .line 99
    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    .line 100
    .line 101
    aput-object v1, p2, v5

    .line 102
    .line 103
    invoke-static {p1, v4}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    aput v1, p0, v5

    .line 108
    .line 109
    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    .line 110
    .line 111
    aput-object v1, p2, v3

    .line 112
    .line 113
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    aput p1, p0, v3

    .line 118
    .line 119
    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 120
    .line 121
    invoke-direct {p1, p2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 122
    .line 123
    .line 124
    return-object p1

    .line 125
    :cond_3
    const v0, 0x7f080032

    .line 126
    .line 127
    .line 128
    if-ne p2, v0, :cond_4

    .line 129
    .line 130
    const p0, 0x7f04011b

    .line 131
    .line 132
    .line 133
    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    invoke-static {p1, p0}, Lcom/eygraber/uri/Uri$Builder;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    :cond_4
    const v0, 0x7f08002c

    .line 143
    .line 144
    .line 145
    if-ne p2, v0, :cond_5

    .line 146
    .line 147
    invoke-static {p1, v1}, Lcom/eygraber/uri/Uri$Builder;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    return-object p0

    .line 152
    :cond_5
    const v0, 0x7f080031

    .line 153
    .line 154
    .line 155
    if-ne p2, v0, :cond_6

    .line 156
    .line 157
    const p0, 0x7f040119

    .line 158
    .line 159
    .line 160
    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    invoke-static {p1, p0}, Lcom/eygraber/uri/Uri$Builder;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0

    .line 169
    :cond_6
    const v0, 0x7f080067

    .line 170
    .line 171
    .line 172
    if-eq p2, v0, :cond_c

    .line 173
    .line 174
    const v0, 0x7f080068

    .line 175
    .line 176
    .line 177
    if-ne p2, v0, :cond_7

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    iget-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, [I

    .line 183
    .line 184
    invoke-static {v0, p2}, Lcom/eygraber/uri/Uri$Builder;->arrayContains([II)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    const p0, 0x7f040121

    .line 191
    .line 192
    .line 193
    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    return-object p0

    .line 198
    :cond_8
    iget-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, [I

    .line 201
    .line 202
    invoke-static {v0, p2}, Lcom/eygraber/uri/Uri$Builder;->arrayContains([II)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_9

    .line 207
    .line 208
    const p0, 0x7f060014

    .line 209
    .line 210
    .line 211
    invoke-static {p1, p0}, Landroidx/tracing/TraceApi29Impl;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    return-object p0

    .line 216
    :cond_9
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p0, [I

    .line 219
    .line 220
    invoke-static {p0, p2}, Lcom/eygraber/uri/Uri$Builder;->arrayContains([II)Z

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-eqz p0, :cond_a

    .line 225
    .line 226
    const p0, 0x7f060013

    .line 227
    .line 228
    .line 229
    invoke-static {p1, p0}, Landroidx/tracing/TraceApi29Impl;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    return-object p0

    .line 234
    :cond_a
    const p0, 0x7f080064

    .line 235
    .line 236
    .line 237
    if-ne p2, p0, :cond_b

    .line 238
    .line 239
    const p0, 0x7f060016

    .line 240
    .line 241
    .line 242
    invoke-static {p1, p0}, Landroidx/tracing/TraceApi29Impl;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    return-object p0

    .line 247
    :cond_b
    const/4 p0, 0x0

    .line 248
    return-object p0

    .line 249
    :cond_c
    :goto_1
    const p0, 0x7f060017

    .line 250
    .line 251
    .line 252
    invoke-static {p1, p0}, Landroidx/tracing/TraceApi29Impl;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    return-object p0
.end method

.method public listSource()Lokio/InputStreamSource;
    .locals 2

    .line 1
    sget-object v0, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 2
    .line 3
    sget-object v0, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast v0, Lokhttp3/internal/platform/ContextAwarePlatform;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lokhttp3/internal/platform/ContextAwarePlatform;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v0, v1

    .line 20
    :goto_1
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v0, v1

    .line 28
    :goto_2
    if-nez v0, :cond_4

    .line 29
    .line 30
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 31
    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    const-string p0, "Platform applicationContext not initialized. Possibly running Android unit test without Robolectric. Android tests should run with Robolectric and call OkHttp.initialize before test"

    .line 35
    .line 36
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_3
    const-string p0, "Platform applicationContext not initialized. Startup Initializer possibly disabled, call OkHttp.initialize before test."

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_4
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/InputStreamSource;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public readTheList()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/eygraber/uri/Uri$Builder;->listSource()Lokio/InputStreamSource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lokio/RealBufferedSource;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :try_start_1
    invoke-virtual {v1}, Lokio/RealBufferedSource;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-long v2, v0

    .line 15
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->readByteString(J)Lokio/ByteString;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1}, Lokio/RealBufferedSource;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-long v2, v2

    .line 24
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->readByteString(J)Lokio/ByteString;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 28
    :try_start_2
    invoke-virtual {v1}, Lokio/RealBufferedSource;->close()V

    .line 29
    .line 30
    .line 31
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    .line 42
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    :try_start_5
    monitor-exit p0

    .line 55
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 56
    :catchall_2
    move-exception v0

    .line 57
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 58
    :catchall_3
    move-exception v2

    .line 59
    :try_start_7
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 63
    :goto_0
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public setSpecialFolderSynchronous(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)Lnet/thunderbird/core/android/account/LegacyAccount;
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p3

    .line 4
    .line 5
    invoke-static/range {p1 .. p2}, Lcom/eygraber/uri/Uri$Builder;->getSpecialFolderId(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x3

    .line 21
    if-eq v1, v2, :cond_5

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    if-eq v1, v2, :cond_4

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    if-eq v1, v2, :cond_3

    .line 28
    .line 29
    const/4 v2, 0x6

    .line 30
    if-eq v1, v2, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x7

    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    const/16 v39, -0x3

    .line 36
    .line 37
    const v40, 0x7fffff

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v11, 0x0

    .line 50
    const/4 v12, 0x0

    .line 51
    const/4 v13, 0x0

    .line 52
    const/4 v15, 0x0

    .line 53
    const/16 v16, 0x0

    .line 54
    .line 55
    const/16 v17, 0x0

    .line 56
    .line 57
    const/16 v18, 0x0

    .line 58
    .line 59
    const/16 v20, 0x0

    .line 60
    .line 61
    const/16 v21, 0x0

    .line 62
    .line 63
    const/16 v22, 0x0

    .line 64
    .line 65
    const/16 v23, 0x0

    .line 66
    .line 67
    const/16 v24, 0x0

    .line 68
    .line 69
    const/16 v25, 0x0

    .line 70
    .line 71
    const/16 v26, 0x0

    .line 72
    .line 73
    const/16 v27, 0x0

    .line 74
    .line 75
    const/16 v28, 0x0

    .line 76
    .line 77
    const/16 v29, 0x0

    .line 78
    .line 79
    const/16 v30, 0x0

    .line 80
    .line 81
    const/16 v31, 0x0

    .line 82
    .line 83
    const/16 v32, 0x0

    .line 84
    .line 85
    const/16 v33, 0x0

    .line 86
    .line 87
    const/16 v34, 0x0

    .line 88
    .line 89
    const/16 v35, 0x0

    .line 90
    .line 91
    const/16 v36, 0x0

    .line 92
    .line 93
    const/16 v37, 0x0

    .line 94
    .line 95
    const v38, -0x10000001

    .line 96
    .line 97
    .line 98
    move-object/from16 v1, p1

    .line 99
    .line 100
    move-object/from16 v14, p3

    .line 101
    .line 102
    move-object/from16 v19, p4

    .line 103
    .line 104
    invoke-static/range {v1 .. v40}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :cond_1
    const-string v0, "Unsupported: "

    .line 111
    .line 112
    move-object/from16 v1, p2

    .line 113
    .line 114
    invoke-static {v1, v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    return-object v0

    .line 119
    :cond_2
    const/16 v39, -0x2

    .line 120
    .line 121
    const v40, 0x7fffff

    .line 122
    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    const/4 v3, 0x0

    .line 126
    const/4 v4, 0x0

    .line 127
    const/4 v5, 0x0

    .line 128
    const/4 v6, 0x0

    .line 129
    const/4 v7, 0x0

    .line 130
    const/4 v8, 0x0

    .line 131
    const/4 v9, 0x0

    .line 132
    const/4 v10, 0x0

    .line 133
    const/4 v11, 0x0

    .line 134
    const/4 v12, 0x0

    .line 135
    const/4 v14, 0x0

    .line 136
    const/4 v15, 0x0

    .line 137
    const/16 v16, 0x0

    .line 138
    .line 139
    const/16 v17, 0x0

    .line 140
    .line 141
    const/16 v19, 0x0

    .line 142
    .line 143
    const/16 v20, 0x0

    .line 144
    .line 145
    const/16 v21, 0x0

    .line 146
    .line 147
    const/16 v22, 0x0

    .line 148
    .line 149
    const/16 v23, 0x0

    .line 150
    .line 151
    const/16 v24, 0x0

    .line 152
    .line 153
    const/16 v25, 0x0

    .line 154
    .line 155
    const/16 v26, 0x0

    .line 156
    .line 157
    const/16 v27, 0x0

    .line 158
    .line 159
    const/16 v28, 0x0

    .line 160
    .line 161
    const/16 v29, 0x0

    .line 162
    .line 163
    const/16 v30, 0x0

    .line 164
    .line 165
    const/16 v31, 0x0

    .line 166
    .line 167
    const/16 v32, 0x0

    .line 168
    .line 169
    const/16 v33, 0x0

    .line 170
    .line 171
    const/16 v34, 0x0

    .line 172
    .line 173
    const/16 v35, 0x0

    .line 174
    .line 175
    const/16 v36, 0x0

    .line 176
    .line 177
    const/16 v37, 0x0

    .line 178
    .line 179
    const v38, -0x8000001

    .line 180
    .line 181
    .line 182
    move-object/from16 v1, p1

    .line 183
    .line 184
    move-object/from16 v13, p3

    .line 185
    .line 186
    move-object/from16 v18, p4

    .line 187
    .line 188
    invoke-static/range {v1 .. v40}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_3
    const/16 v39, -0x1

    .line 195
    .line 196
    const v40, 0x7fffff

    .line 197
    .line 198
    .line 199
    const/4 v2, 0x0

    .line 200
    const/4 v3, 0x0

    .line 201
    const/4 v4, 0x0

    .line 202
    const/4 v5, 0x0

    .line 203
    const/4 v6, 0x0

    .line 204
    const/4 v7, 0x0

    .line 205
    const/4 v8, 0x0

    .line 206
    const/4 v9, 0x0

    .line 207
    const/4 v11, 0x0

    .line 208
    const/4 v12, 0x0

    .line 209
    const/4 v13, 0x0

    .line 210
    const/4 v14, 0x0

    .line 211
    const/16 v16, 0x0

    .line 212
    .line 213
    const/16 v17, 0x0

    .line 214
    .line 215
    const/16 v18, 0x0

    .line 216
    .line 217
    const/16 v19, 0x0

    .line 218
    .line 219
    const/16 v20, 0x0

    .line 220
    .line 221
    const/16 v21, 0x0

    .line 222
    .line 223
    const/16 v22, 0x0

    .line 224
    .line 225
    const/16 v23, 0x0

    .line 226
    .line 227
    const/16 v24, 0x0

    .line 228
    .line 229
    const/16 v25, 0x0

    .line 230
    .line 231
    const/16 v26, 0x0

    .line 232
    .line 233
    const/16 v27, 0x0

    .line 234
    .line 235
    const/16 v28, 0x0

    .line 236
    .line 237
    const/16 v29, 0x0

    .line 238
    .line 239
    const/16 v30, 0x0

    .line 240
    .line 241
    const/16 v31, 0x0

    .line 242
    .line 243
    const/16 v32, 0x0

    .line 244
    .line 245
    const/16 v33, 0x0

    .line 246
    .line 247
    const/16 v34, 0x0

    .line 248
    .line 249
    const/16 v35, 0x0

    .line 250
    .line 251
    const/16 v36, 0x0

    .line 252
    .line 253
    const/16 v37, 0x0

    .line 254
    .line 255
    const v38, -0x21000001

    .line 256
    .line 257
    .line 258
    move-object/from16 v1, p1

    .line 259
    .line 260
    move-object/from16 v10, p3

    .line 261
    .line 262
    move-object/from16 v15, p4

    .line 263
    .line 264
    invoke-static/range {v1 .. v40}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_4
    const/16 v39, -0x1

    .line 271
    .line 272
    const v40, 0x7fffff

    .line 273
    .line 274
    .line 275
    const/4 v2, 0x0

    .line 276
    const/4 v3, 0x0

    .line 277
    const/4 v4, 0x0

    .line 278
    const/4 v5, 0x0

    .line 279
    const/4 v6, 0x0

    .line 280
    const/4 v7, 0x0

    .line 281
    const/4 v8, 0x0

    .line 282
    const/4 v9, 0x0

    .line 283
    const/4 v10, 0x0

    .line 284
    const/4 v11, 0x0

    .line 285
    const/4 v13, 0x0

    .line 286
    const/4 v14, 0x0

    .line 287
    const/4 v15, 0x0

    .line 288
    const/16 v16, 0x0

    .line 289
    .line 290
    const/16 v18, 0x0

    .line 291
    .line 292
    const/16 v19, 0x0

    .line 293
    .line 294
    const/16 v20, 0x0

    .line 295
    .line 296
    const/16 v21, 0x0

    .line 297
    .line 298
    const/16 v22, 0x0

    .line 299
    .line 300
    const/16 v23, 0x0

    .line 301
    .line 302
    const/16 v24, 0x0

    .line 303
    .line 304
    const/16 v25, 0x0

    .line 305
    .line 306
    const/16 v26, 0x0

    .line 307
    .line 308
    const/16 v27, 0x0

    .line 309
    .line 310
    const/16 v28, 0x0

    .line 311
    .line 312
    const/16 v29, 0x0

    .line 313
    .line 314
    const/16 v30, 0x0

    .line 315
    .line 316
    const/16 v31, 0x0

    .line 317
    .line 318
    const/16 v32, 0x0

    .line 319
    .line 320
    const/16 v33, 0x0

    .line 321
    .line 322
    const/16 v34, 0x0

    .line 323
    .line 324
    const/16 v35, 0x0

    .line 325
    .line 326
    const/16 v36, 0x0

    .line 327
    .line 328
    const/16 v37, 0x0

    .line 329
    .line 330
    const v38, 0x7bffffff

    .line 331
    .line 332
    .line 333
    move-object/from16 v1, p1

    .line 334
    .line 335
    move-object/from16 v12, p3

    .line 336
    .line 337
    move-object/from16 v17, p4

    .line 338
    .line 339
    invoke-static/range {v1 .. v40}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    goto :goto_0

    .line 344
    :cond_5
    const/16 v39, -0x1

    .line 345
    .line 346
    const v40, 0x7fffff

    .line 347
    .line 348
    .line 349
    const/4 v2, 0x0

    .line 350
    const/4 v3, 0x0

    .line 351
    const/4 v4, 0x0

    .line 352
    const/4 v5, 0x0

    .line 353
    const/4 v6, 0x0

    .line 354
    const/4 v7, 0x0

    .line 355
    const/4 v8, 0x0

    .line 356
    const/4 v9, 0x0

    .line 357
    const/4 v10, 0x0

    .line 358
    const/4 v12, 0x0

    .line 359
    const/4 v13, 0x0

    .line 360
    const/4 v14, 0x0

    .line 361
    const/4 v15, 0x0

    .line 362
    const/16 v17, 0x0

    .line 363
    .line 364
    const/16 v18, 0x0

    .line 365
    .line 366
    const/16 v19, 0x0

    .line 367
    .line 368
    const/16 v20, 0x0

    .line 369
    .line 370
    const/16 v21, 0x0

    .line 371
    .line 372
    const/16 v22, 0x0

    .line 373
    .line 374
    const/16 v23, 0x0

    .line 375
    .line 376
    const/16 v24, 0x0

    .line 377
    .line 378
    const/16 v25, 0x0

    .line 379
    .line 380
    const/16 v26, 0x0

    .line 381
    .line 382
    const/16 v27, 0x0

    .line 383
    .line 384
    const/16 v28, 0x0

    .line 385
    .line 386
    const/16 v29, 0x0

    .line 387
    .line 388
    const/16 v30, 0x0

    .line 389
    .line 390
    const/16 v31, 0x0

    .line 391
    .line 392
    const/16 v32, 0x0

    .line 393
    .line 394
    const/16 v33, 0x0

    .line 395
    .line 396
    const/16 v34, 0x0

    .line 397
    .line 398
    const/16 v35, 0x0

    .line 399
    .line 400
    const/16 v36, 0x0

    .line 401
    .line 402
    const/16 v37, 0x0

    .line 403
    .line 404
    const v38, -0x42000001    # -0.12499999f

    .line 405
    .line 406
    .line 407
    move-object/from16 v1, p1

    .line 408
    .line 409
    move-object/from16 v11, p3

    .line 410
    .line 411
    move-object/from16 v16, p4

    .line 412
    .line 413
    invoke-static/range {v1 .. v40}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    :goto_0
    if-eqz p3, :cond_6

    .line 418
    .line 419
    iget-object v2, v0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v2, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 422
    .line 423
    iget-object v0, v0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v0, Lnet/thunderbird/feature/account/AccountId;

    .line 426
    .line 427
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    .line 428
    .line 429
    .line 430
    move-result-wide v3

    .line 431
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    iget-object v2, v2, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 438
    .line 439
    invoke-virtual {v2, v0}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-virtual {v0, v3, v4}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setVisible(J)V

    .line 444
    .line 445
    .line 446
    :cond_6
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/eygraber/uri/Uri$Builder;->$r8$classId:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

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
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "[mimeType="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", mediaType="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", subType="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ", boundary="

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", charset="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Ljava/lang/String;

    .line 69
    .line 70
    const-string v1, "]"

    .line 71
    .line 72
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :sswitch_1
    invoke-virtual {p0}, Lcom/eygraber/uri/Uri$Builder;->build()Lcom/eygraber/uri/Uri;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    nop

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public updateSpecialFolderSynchronous(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;Ljava/util/List;)Lnet/thunderbird/core/android/account/LegacyAccount;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eq v1, v2, :cond_4

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    if-eq v1, v2, :cond_3

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    const/4 v2, 0x6

    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x7

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSpamFolder:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "Unsupported: "

    .line 29
    .line 30
    invoke-static {p2, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_1
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedArchiveFolder:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedDraftsFolder:Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedTrashFolder:Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->importedSentFolder:Ljava/lang/String;

    .line 44
    .line 45
    :goto_0
    if-eqz v1, :cond_8

    .line 46
    .line 47
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_6

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    move-object v5, v4

    .line 62
    check-cast v5, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 63
    .line 64
    iget-object v5, v5, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->serverId:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_6
    move-object v4, v3

    .line 74
    :goto_1
    check-cast v4, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 75
    .line 76
    if-eqz v4, :cond_7

    .line 77
    .line 78
    iget-wide v1, v4, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->id:J

    .line 79
    .line 80
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_2

    .line 85
    :cond_7
    move-object v1, v3

    .line 86
    :goto_2
    if-eqz v1, :cond_8

    .line 87
    .line 88
    invoke-static {p1, p2}, Lcom/eygraber/uri/Uri$Builder;->getSpecialFolderSelection(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/eygraber/uri/Uri$Builder;->setSpecialFolderSynchronous(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_8
    invoke-static {p1, p2}, Lcom/eygraber/uri/Uri$Builder;->getSpecialFolderSelection(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    sget-object v2, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->AUTOMATIC:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 106
    .line 107
    if-eqz v1, :cond_f

    .line 108
    .line 109
    const/4 v4, 0x1

    .line 110
    if-ne v1, v4, :cond_e

    .line 111
    .line 112
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_9

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_9
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_c

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 134
    .line 135
    iget-wide v4, v4, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->id:J

    .line 136
    .line 137
    invoke-static {p1, p2}, Lcom/eygraber/uri/Uri$Builder;->getSpecialFolderId(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    if-nez v6, :cond_b

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 145
    .line 146
    .line 147
    move-result-wide v6

    .line 148
    cmp-long v4, v4, v6

    .line 149
    .line 150
    if-nez v4, :cond_a

    .line 151
    .line 152
    return-object p1

    .line 153
    :cond_c
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {p3, p2}, Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;->selectSpecialFolder(Ljava/util/List;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    if-eqz p3, :cond_d

    .line 161
    .line 162
    iget-wide v0, p3, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->id:J

    .line 163
    .line 164
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    :cond_d
    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/eygraber/uri/Uri$Builder;->setSpecialFolderSynchronous(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :cond_e
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 174
    .line 175
    .line 176
    return-object v3

    .line 177
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {p3, p2}, Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;->selectSpecialFolder(Ljava/util/List;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    if-eqz p3, :cond_10

    .line 185
    .line 186
    iget-wide v0, p3, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->id:J

    .line 187
    .line 188
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    :cond_10
    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/eygraber/uri/Uri$Builder;->setSpecialFolderSynchronous(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    return-object p0
.end method
