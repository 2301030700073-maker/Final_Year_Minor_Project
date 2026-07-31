.class public final Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final backendStorageFactory:Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

.field public final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final remoteFolderCreatorFactory:Lnet/thunderbird/backend/api/folder/RemoteFolderCreator$Factory;

.field public final specialFolderUpdaterFactory:Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/K9BackendStorageFactory;Lnet/thunderbird/backend/api/folder/RemoteFolderCreator$Factory;Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;)V
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
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 12
    .line 13
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;->backendStorageFactory:Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 14
    .line 15
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;->remoteFolderCreatorFactory:Lnet/thunderbird/backend/api/folder/RemoteFolderCreator$Factory;

    .line 16
    .line 17
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;->specialFolderUpdaterFactory:Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;

    .line 18
    .line 19
    iput-object v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 20
    .line 21
    return-void
.end method

.method public static final access$handleRemoteFolderCreationSuccess(Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;JLnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/core/android/account/LegacyAccount;Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    instance-of v2, v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move-object v2, v1

    .line 13
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;

    .line 14
    .line 15
    iget v3, v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->label:I

    .line 16
    .line 17
    const/high16 v5, -0x80000000

    .line 18
    .line 19
    and-int v6, v3, v5

    .line 20
    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    sub-int/2addr v3, v5

    .line 24
    iput v3, v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->label:I

    .line 25
    .line 26
    :goto_0
    move-object v7, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;

    .line 29
    .line 30
    invoke-direct {v2, p0, v1}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    iget-object v1, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->result:Ljava/lang/Object;

    .line 35
    .line 36
    iget v2, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->label:I

    .line 37
    .line 38
    const/4 v8, 0x3

    .line 39
    const/4 v9, 0x2

    .line 40
    const/4 v3, 0x1

    .line 41
    const/4 v10, 0x0

    .line 42
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    if-eq v2, v3, :cond_3

    .line 47
    .line 48
    if-eq v2, v9, :cond_2

    .line 49
    .line 50
    if-ne v2, v8, :cond_1

    .line 51
    .line 52
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v10

    .line 63
    :cond_2
    iget-wide v2, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->J$0:J

    .line 64
    .line 65
    iget-object v0, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->L$2:Lkotlin/jvm/functions/Function2;

    .line 66
    .line 67
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-wide v2, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->J$0:J

    .line 72
    .line 73
    iget-object v0, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->L$3:Lcom/eygraber/uri/Uri$Builder;

    .line 74
    .line 75
    iget-object v5, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->L$2:Lkotlin/jvm/functions/Function2;

    .line 76
    .line 77
    iget-object v6, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 78
    .line 79
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    move-object v1, v0

    .line 83
    move-object v12, v5

    .line 84
    move-object v5, v6

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;->specialFolderUpdaterFactory:Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;

    .line 90
    .line 91
    move-object/from16 v2, p3

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/DefaultSpecialFolderUpdater$Factory;->create(Lnet/thunderbird/feature/account/AccountId;)Lcom/eygraber/uri/Uri$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v2, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 98
    .line 99
    sget-object v5, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success$UpdatingSpecialFolders;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success$UpdatingSpecialFolders;

    .line 100
    .line 101
    invoke-direct {v2, v5}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move-object/from16 v5, p4

    .line 105
    .line 106
    iput-object v5, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 107
    .line 108
    iput-object v0, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->L$2:Lkotlin/jvm/functions/Function2;

    .line 109
    .line 110
    iput-object v1, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->L$3:Lcom/eygraber/uri/Uri$Builder;

    .line 111
    .line 112
    move-wide v12, p1

    .line 113
    iput-wide v12, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->J$0:J

    .line 114
    .line 115
    iput v3, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->label:I

    .line 116
    .line 117
    invoke-virtual {v0, v2, v7}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-ne v2, v11, :cond_5

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    move-wide v2, v12

    .line 125
    move-object v12, v0

    .line 126
    :goto_2
    iget-object v13, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 127
    .line 128
    new-instance v0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    move-object v4, p0

    .line 132
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$getOutboxFolderId$4$2;-><init>(Lcom/eygraber/uri/Uri$Builder;JLnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder;Lnet/thunderbird/core/android/account/LegacyAccount;Lkotlin/coroutines/Continuation;)V

    .line 133
    .line 134
    .line 135
    iput-object v10, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 136
    .line 137
    iput-object v12, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->L$2:Lkotlin/jvm/functions/Function2;

    .line 138
    .line 139
    iput-object v10, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->L$3:Lcom/eygraber/uri/Uri$Builder;

    .line 140
    .line 141
    iput-wide v2, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->J$0:J

    .line 142
    .line 143
    iput v9, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->label:I

    .line 144
    .line 145
    invoke-static {v13, v0, v7}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-ne v0, v11, :cond_6

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    move-object v0, v12

    .line 153
    :goto_3
    new-instance v1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 154
    .line 155
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success$Created;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success$Created;

    .line 156
    .line 157
    invoke-direct {v1, v4}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iput-object v10, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 161
    .line 162
    iput-object v10, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->L$2:Lkotlin/jvm/functions/Function2;

    .line 163
    .line 164
    iput-object v10, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->L$3:Lcom/eygraber/uri/Uri$Builder;

    .line 165
    .line 166
    iput-wide v2, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->J$0:J

    .line 167
    .line 168
    iput v8, v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/CreateArchiveFolder$handleRemoteFolderCreationSuccess$1;->label:I

    .line 169
    .line 170
    invoke-interface {v0, v1, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-ne v0, v11, :cond_7

    .line 175
    .line 176
    :goto_4
    return-object v11

    .line 177
    :cond_7
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 178
    .line 179
    return-object v0
.end method
