.class public final Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final backendStorageFactory:Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

.field public final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final specialFolderUpdaterFactory:Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/K9BackendStorageFactory;Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 12
    .line 13
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;->backendStorageFactory:Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 14
    .line 15
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;->specialFolderUpdaterFactory:Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;

    .line 16
    .line 17
    iput-object v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final invoke(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object/from16 v1, p3

    .line 2
    .line 3
    instance-of v2, v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;

    .line 9
    .line 10
    iget v3, v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;->label:I

    .line 11
    .line 12
    const/high16 v5, -0x80000000

    .line 13
    .line 14
    and-int v6, v3, v5

    .line 15
    .line 16
    if-eqz v6, :cond_0

    .line 17
    .line 18
    sub-int/2addr v3, v5

    .line 19
    iput v3, v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;->label:I

    .line 20
    .line 21
    :goto_0
    move-object v7, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;

    .line 24
    .line 25
    invoke-direct {v2, p0, v1}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    iget-object v1, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    iget v2, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;->label:I

    .line 32
    .line 33
    iget-object v8, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    const/4 v9, 0x2

    .line 37
    const/4 v10, 0x0

    .line 38
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    if-eq v2, v3, :cond_2

    .line 43
    .line 44
    if-ne v2, v9, :cond_1

    .line 45
    .line 46
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_4

    .line 50
    :catch_0
    move-exception v0

    .line 51
    goto :goto_5

    .line 52
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v10

    .line 58
    :cond_2
    iget-object v0, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;->L$1:Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 59
    .line 60
    iget-object v2, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 61
    .line 62
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object v12, v2

    .line 66
    move-object v2, v0

    .line 67
    move-object v0, v12

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 73
    .line 74
    const/4 v2, 0x4

    .line 75
    invoke-direct {v1, p0, p1, v10, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 76
    .line 77
    .line 78
    iput-object p1, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 79
    .line 80
    iput-object p2, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;->L$1:Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 81
    .line 82
    iput v3, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;->label:I

    .line 83
    .line 84
    invoke-static {v8, v1, v7}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-ne v1, v11, :cond_4

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move-object v0, p1

    .line 92
    move-object v2, p2

    .line 93
    :goto_2
    move-object v5, v1

    .line 94
    check-cast v5, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 95
    .line 96
    if-nez v5, :cond_5

    .line 97
    .line 98
    new-instance v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 99
    .line 100
    sget-object v1, Lnet/thunderbird/feature/mail/message/list/domain/SetAccountFolderOutcome$Error$AccountNotFound;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/domain/SetAccountFolderOutcome$Error$AccountNotFound;

    .line 101
    .line 102
    invoke-direct {v0, v1, v10}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_5
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;->backendStorageFactory:Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->createBackendStorage$1(Lnet/thunderbird/feature/account/AccountId;)Lokhttp3/Dispatcher;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;->specialFolderUpdaterFactory:Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;

    .line 113
    .line 114
    invoke-virtual {v3, v0}, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;->create(Lnet/thunderbird/feature/account/AccountId;)Lcom/eygraber/uri/Uri$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    :try_start_1
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;

    .line 119
    .line 120
    const/4 v6, 0x0

    .line 121
    move-object v4, p0

    .line 122
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2;-><init>(Lokhttp3/Dispatcher;Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;Lcom/eygraber/uri/Uri$Builder;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder;Lnet/thunderbird/core/android/account/LegacyAccount;Lkotlin/coroutines/Continuation;)V

    .line 123
    .line 124
    .line 125
    iput-object v10, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 126
    .line 127
    iput-object v10, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;->L$1:Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 128
    .line 129
    iput v9, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/SetArchiveFolder$invoke$1;->label:I

    .line 130
    .line 131
    invoke-static {v8, v0, v7}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-ne v1, v11, :cond_6

    .line 136
    .line 137
    :goto_3
    return-object v11

    .line 138
    :cond_6
    :goto_4
    check-cast v1, Lnet/thunderbird/core/outcome/Outcome;
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    .line 140
    return-object v1

    .line 141
    :goto_5
    new-instance v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 142
    .line 143
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/domain/SetAccountFolderOutcome$Error$UnhandledError;

    .line 144
    .line 145
    invoke-direct {v2, v0}, Lnet/thunderbird/feature/mail/message/list/domain/SetAccountFolderOutcome$Error$UnhandledError;-><init>(Lnet/thunderbird/core/common/exception/MessagingException;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v2, v10}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    return-object v1
.end method
