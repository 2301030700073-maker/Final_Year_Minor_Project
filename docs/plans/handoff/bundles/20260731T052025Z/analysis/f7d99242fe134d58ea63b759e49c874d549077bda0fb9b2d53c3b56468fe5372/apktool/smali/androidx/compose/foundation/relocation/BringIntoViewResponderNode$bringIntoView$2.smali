.class public final Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $boundsProvider:Ljava/lang/Object;

.field public final synthetic $childCoordinates:Ljava/lang/Object;

.field public final synthetic $parentRect:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$r8$classId:I

    .line 19
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$childCoordinates:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$boundsProvider:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$parentRect:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Dispatcher;Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;Lcom/eygraber/uri/Uri$Builder;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;Lnet/thunderbird/core/android/account/LegacyAccount;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$childCoordinates:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$boundsProvider:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$parentRect:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$parentRect:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$boundsProvider:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$childCoordinates:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance v5, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v6, p0

    .line 19
    check-cast v6, Lokhttp3/Dispatcher;

    .line 20
    .line 21
    move-object v7, v4

    .line 22
    check-cast v7, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 23
    .line 24
    move-object v8, v3

    .line 25
    check-cast v8, Lcom/eygraber/uri/Uri$Builder;

    .line 26
    .line 27
    move-object v9, v2

    .line 28
    check-cast v9, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;

    .line 29
    .line 30
    move-object v10, v1

    .line 31
    check-cast v10, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 32
    .line 33
    move-object v11, p2

    .line 34
    invoke-direct/range {v5 .. v11}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;-><init>(Lokhttp3/Dispatcher;Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;Lcom/eygraber/uri/Uri$Builder;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;Lnet/thunderbird/core/android/account/LegacyAccount;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    return-object v5

    .line 38
    :pswitch_0
    move-object v11, p2

    .line 39
    new-instance v6, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;

    .line 40
    .line 41
    move-object v7, v4

    .line 42
    check-cast v7, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 43
    .line 44
    move-object v8, v3

    .line 45
    check-cast v8, Landroidx/compose/ui/node/NodeCoordinator;

    .line 46
    .line 47
    move-object v9, v2

    .line 48
    check-cast v9, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;

    .line 49
    .line 50
    move-object v10, v1

    .line 51
    check-cast v10, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct/range {v6 .. v11}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;Lkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, v6, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    return-object v6

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$parentRect:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$boundsProvider:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->$childCoordinates:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lokhttp3/Dispatcher;

    .line 20
    .line 21
    new-instance p1, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;-><init>(Lokhttp3/Dispatcher;)V

    .line 24
    .line 25
    .line 26
    check-cast v4, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 27
    .line 28
    check-cast v3, Lcom/eygraber/uri/Uri$Builder;

    .line 29
    .line 30
    iget-object v0, v3, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 33
    .line 34
    iget-object v5, v3, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 37
    .line 38
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;

    .line 39
    .line 40
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 41
    .line 42
    :try_start_0
    iget-object v6, v4, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->serverId:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v7, v4, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->name:Ljava/lang/String;

    .line 45
    .line 46
    sget-object v8, Lcom/fsck/k9/mail/FolderType;->ARCHIVE:Lcom/fsck/k9/mail/FolderType;

    .line 47
    .line 48
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 51
    .line 52
    invoke-virtual {p0, v6, v7, v8}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->changeFolder(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;)V

    .line 53
    .line 54
    .line 55
    iget-wide v6, v4, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->id:J

    .line 56
    .line 57
    new-instance p0, Ljava/lang/Long;

    .line 58
    .line 59
    invoke-direct {p0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 63
    .line 64
    const/16 v6, 0x1d

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    invoke-direct {v4, v3, p0, v7, v6}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x2

    .line 71
    invoke-static {v5, v0, v7, v4, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 72
    .line 73
    .line 74
    new-instance v4, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$updateSpecialFolders$1;

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    invoke-direct {v4, v3, v7, v6}, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$updateSpecialFolders$1;-><init>(Lcom/eygraber/uri/Uri$Builder;Lkotlin/coroutines/Continuation;I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v5, v0, v7, v4, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 81
    .line 82
    .line 83
    iget-object p0, v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 89
    .line 90
    .line 91
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/domain/SetAccountFolderOutcome$Success;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/domain/SetAccountFolderOutcome$Success;

    .line 92
    .line 93
    new-instance v0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;->close()V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    move-object p0, v0

    .line 104
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;->L$0:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 116
    .line 117
    new-instance v5, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    .line 118
    .line 119
    move-object v6, v4

    .line 120
    check-cast v6, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 121
    .line 122
    move-object v7, v3

    .line 123
    check-cast v7, Landroidx/compose/ui/node/NodeCoordinator;

    .line 124
    .line 125
    move-object v8, v2

    .line 126
    check-cast v8, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;

    .line 127
    .line 128
    const/16 v10, 0x15

    .line 129
    .line 130
    const/4 v9, 0x0

    .line 131
    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 132
    .line 133
    .line 134
    const/4 p1, 0x3

    .line 135
    invoke-static {p0, v9, v9, v5, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 136
    .line 137
    .line 138
    new-instance v0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 139
    .line 140
    check-cast v1, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    const/16 v2, 0x14

    .line 143
    .line 144
    invoke-direct {v0, v6, v1, v9, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 145
    .line 146
    .line 147
    invoke-static {p0, v9, v9, v0, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    return-object p0

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
