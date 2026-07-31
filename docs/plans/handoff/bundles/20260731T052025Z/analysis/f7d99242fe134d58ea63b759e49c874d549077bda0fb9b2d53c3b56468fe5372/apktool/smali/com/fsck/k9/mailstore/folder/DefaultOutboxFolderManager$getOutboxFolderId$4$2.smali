.class public final Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $accountId:Ljava/lang/Object;

.field public final synthetic $outboxId:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public synthetic J$0:J

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/eygraber/uri/Uri$Builder;JLnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;Lnet/thunderbird/core/android/account/LegacyAccount;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->J$0:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->$accountId:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->$outboxId:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->$r8$classId:I

    .line 17
    iput-object p1, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->$accountId:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->$outboxId:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 1
    iget v0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->$outboxId:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->$accountId:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v4, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;

    .line 13
    .line 14
    move-object v5, v3

    .line 15
    check-cast v5, Lcom/eygraber/uri/Uri$Builder;

    .line 16
    .line 17
    iget-wide v6, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->J$0:J

    .line 18
    .line 19
    move-object v8, v2

    .line 20
    check-cast v8, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 21
    .line 22
    move-object v9, v1

    .line 23
    check-cast v9, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 24
    .line 25
    move-object v10, p2

    .line 26
    invoke-direct/range {v4 .. v10}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;-><init>(Lcom/eygraber/uri/Uri$Builder;JLnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;Lnet/thunderbird/core/android/account/LegacyAccount;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    return-object v4

    .line 30
    :pswitch_0
    move-object v10, p2

    .line 31
    new-instance p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;

    .line 32
    .line 33
    check-cast v3, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 34
    .line 35
    check-cast v2, Lnet/thunderbird/feature/account/AccountId;

    .line 36
    .line 37
    check-cast v1, Lkotlin/jvm/internal/Ref$LongRef;

    .line 38
    .line 39
    invoke-direct {p0, v3, v2, v1, v10}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;-><init>(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    check-cast p1, Ljava/lang/Number;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide p1

    .line 48
    iput-wide p1, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->J$0:J

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 29
    .line 30
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->$outboxId:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->$accountId:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object v6, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    check-cast v6, Lcom/eygraber/uri/Uri$Builder;

    .line 20
    .line 21
    iget-wide p0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->J$0:J

    .line 22
    .line 23
    new-instance v0, Ljava/lang/Long;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    .line 26
    .line 27
    .line 28
    iget-object p0, v6, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 31
    .line 32
    iget-object p1, v6, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 35
    .line 36
    new-instance v7, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 37
    .line 38
    const/16 v8, 0x1d

    .line 39
    .line 40
    invoke-direct {v7, v6, v0, v5, v8}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1, v5, v7, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 44
    .line 45
    .line 46
    iget-object p0, v6, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 49
    .line 50
    new-instance v0, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$updateSpecialFolders$1;

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    invoke-direct {v0, v6, v5, v7}, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$updateSpecialFolders$1;-><init>(Lcom/eygraber/uri/Uri$Builder;Lkotlin/coroutines/Continuation;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1, v5, v0, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 57
    .line 58
    .line 59
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;

    .line 60
    .line 61
    iget-object p0, v3, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 62
    .line 63
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 69
    .line 70
    .line 71
    return-object v1

    .line 72
    :pswitch_0
    iget-wide v7, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;->J$0:J

    .line 73
    .line 74
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    check-cast v6, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 78
    .line 79
    iget-object p0, v6, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 80
    .line 81
    new-instance p1, Lcoil3/memory/MemoryCache$Builder$$ExternalSyntheticLambda1;

    .line 82
    .line 83
    const/4 v0, 0x4

    .line 84
    invoke-direct {p1, v0, v7, v8}, Lcoil3/memory/MemoryCache$Builder$$ExternalSyntheticLambda1;-><init>(IJ)V

    .line 85
    .line 86
    .line 87
    const-string v0, "DefaultOutboxFolderManager"

    .line 88
    .line 89
    invoke-static {p0, v0, v5, p1, v4}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 90
    .line 91
    .line 92
    iget-object p0, v6, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->outboxFolderIdCache:Lnet/thunderbird/core/common/cache/TimeLimitedCache;

    .line 93
    .line 94
    check-cast v3, Lnet/thunderbird/feature/account/AccountId;

    .line 95
    .line 96
    new-instance p1, Ljava/lang/Long;

    .line 97
    .line 98
    invoke-direct {p1, v7, v8}, Ljava/lang/Long;-><init>(J)V

    .line 99
    .line 100
    .line 101
    invoke-static {p0, v3, p1}, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->set-SxA4cEA$default(Lnet/thunderbird/core/common/cache/TimeLimitedCache;Ljava/lang/Object;Ljava/lang/Long;)V

    .line 102
    .line 103
    .line 104
    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 105
    .line 106
    iput-wide v7, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 107
    .line 108
    return-object v1

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
