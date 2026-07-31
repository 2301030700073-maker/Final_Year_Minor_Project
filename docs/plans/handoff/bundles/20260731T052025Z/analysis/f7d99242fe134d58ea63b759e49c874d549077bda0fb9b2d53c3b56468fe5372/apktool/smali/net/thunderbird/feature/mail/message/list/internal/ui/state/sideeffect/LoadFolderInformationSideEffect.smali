.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;
.super Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountIds:Ljava/util/Set;

.field public final folderId:Ljava/lang/Long;

.field public final folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final profileRepository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/lang/Long;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Lnet/thunderbird/core/logging/Logger;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p3}, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;-><init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/jvm/functions/Function2;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;->accountIds:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;->folderId:Ljava/lang/Long;

    .line 7
    .line 8
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 9
    .line 10
    iput-object p5, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 11
    .line 12
    iput-object p6, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;->profileRepository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 2
    .line 3
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 4
    .line 5
    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$LoadConfigurations;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$LoadConfigurations;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final consume(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/MutatorMutex$mutate$2;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 2
    .line 3
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 4
    .line 5
    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 6
    .line 7
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    invoke-direct {p1, p2, p3, v0}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;I)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 14
    .line 15
    const-string p3, "LoadFolderInformationSideEffect"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p2, p3, v1, p1, v0}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;->folderId:Ljava/lang/Long;

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;->consumeUnifiedFolder(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    invoke-virtual {p0, p1, p2, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;->consumeSingleAccountFolder(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final consumeSingleAccountFolder(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p3, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->label:I

    .line 28
    .line 29
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    if-eq v1, v5, :cond_3

    .line 40
    .line 41
    if-eq v1, v4, :cond_2

    .line 42
    .line 43
    if-ne v1, v3, :cond_1

    .line 44
    .line 45
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v6

    .line 56
    :cond_2
    iget-wide p1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->J$0:J

    .line 57
    .line 58
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->L$2:Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 59
    .line 60
    iget-object v2, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->L$1:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 61
    .line 62
    iget-object v4, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 63
    .line 64
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_3
    iget-wide p1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->J$0:J

    .line 70
    .line 71
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 72
    .line 73
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;->accountIds:Ljava/util/Set;

    .line 81
    .line 82
    check-cast p3, Ljava/lang/Iterable;

    .line 83
    .line 84
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    check-cast p3, Lnet/thunderbird/feature/account/AccountId;

    .line 89
    .line 90
    iput-object p3, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 91
    .line 92
    iput-wide p1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->J$0:J

    .line 93
    .line 94
    iput v5, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->label:I

    .line 95
    .line 96
    invoke-virtual {v2, p3, p1, p2, v0}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->getFolder(Lnet/thunderbird/feature/account/AccountId;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-ne v1, v7, :cond_5

    .line 101
    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :cond_5
    move-object v11, v1

    .line 105
    move-object v1, p3

    .line 106
    move-object p3, v11

    .line 107
    :goto_1
    check-cast p3, Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 108
    .line 109
    if-eqz p3, :cond_d

    .line 110
    .line 111
    iget-boolean v5, p3, Lnet/thunderbird/feature/mail/folder/api/Folder;->isLocalOnly:Z

    .line 112
    .line 113
    if-nez v5, :cond_8

    .line 114
    .line 115
    invoke-virtual {v2, v1}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->getRemoteFolders(Lnet/thunderbird/feature/account/AccountId;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_7

    .line 128
    .line 129
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 134
    .line 135
    iget-wide v8, v5, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->id:J

    .line 136
    .line 137
    cmp-long v8, v8, p1

    .line 138
    .line 139
    if-nez v8, :cond_6

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_7
    const-string p0, "Collection contains no element matching the predicate."

    .line 143
    .line 144
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-object v6

    .line 148
    :cond_8
    move-object v5, v6

    .line 149
    :goto_2
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;->profileRepository:Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 150
    .line 151
    invoke-virtual {v2, v1}, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;->getById(Lnet/thunderbird/feature/account/AccountId;)Lkotlinx/coroutines/flow/Flow;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iput-object v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 156
    .line 157
    iput-object p3, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->L$1:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 158
    .line 159
    iput-object v5, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->L$2:Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 160
    .line 161
    iput-wide p1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->J$0:J

    .line 162
    .line 163
    iput v4, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->label:I

    .line 164
    .line 165
    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    if-ne v2, v7, :cond_9

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_9
    move-object v4, v2

    .line 173
    move-object v2, p3

    .line 174
    move-object p3, v4

    .line 175
    move-object v4, v1

    .line 176
    move-object v1, v5

    .line 177
    :goto_3
    check-cast p3, Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 178
    .line 179
    if-eqz p3, :cond_a

    .line 180
    .line 181
    iget p3, p3, Lnet/thunderbird/feature/account/profile/AccountProfile;->color:I

    .line 182
    .line 183
    invoke-static {p3}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 184
    .line 185
    .line 186
    move-result-wide v8

    .line 187
    goto :goto_4

    .line 188
    :cond_a
    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 189
    .line 190
    :goto_4
    new-instance p3, Lnet/thunderbird/feature/mail/message/list/ui/event/FolderEvent$FolderLoaded;

    .line 191
    .line 192
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 193
    .line 194
    if-eqz v1, :cond_b

    .line 195
    .line 196
    iget-object v1, v1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->serverId:Ljava/lang/String;

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_b
    const-string v1, "local_folder"

    .line 200
    .line 201
    :goto_5
    new-instance v10, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 202
    .line 203
    invoke-direct {v10, v4, v8, v9}, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;-><init>(Lnet/thunderbird/feature/account/AccountId;J)V

    .line 204
    .line 205
    .line 206
    iget-object v4, v2, Lnet/thunderbird/feature/mail/folder/api/Folder;->name:Ljava/lang/String;

    .line 207
    .line 208
    iget-object v2, v2, Lnet/thunderbird/feature/mail/folder/api/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 209
    .line 210
    invoke-direct {v5, v1, v10, v4, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;-><init>(Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/state/Account;Ljava/lang/String;Lnet/thunderbird/feature/mail/folder/api/FolderType;)V

    .line 211
    .line 212
    .line 213
    invoke-direct {p3, v5}, Lnet/thunderbird/feature/mail/message/list/ui/event/FolderEvent$FolderLoaded;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;)V

    .line 214
    .line 215
    .line 216
    iput-object v6, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 217
    .line 218
    iput-object v6, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->L$1:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 219
    .line 220
    iput-object v6, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->L$2:Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 221
    .line 222
    iput-wide p1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->J$0:J

    .line 223
    .line 224
    iput v3, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeSingleAccountFolder$1;->label:I

    .line 225
    .line 226
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;->dispatch:Lkotlin/jvm/functions/Function2;

    .line 227
    .line 228
    invoke-interface {p0, p3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    if-ne p0, v7, :cond_c

    .line 233
    .line 234
    :goto_6
    return-object v7

    .line 235
    :cond_c
    :goto_7
    sget-object p0, Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Consumed;->INSTANCE:Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Consumed;

    .line 236
    .line 237
    return-object p0

    .line 238
    :cond_d
    sget-object p0, Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Ignored;->INSTANCE:Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Ignored;

    .line 239
    .line 240
    return-object p0
.end method

.method public final consumeUnifiedFolder(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeUnifiedFolder$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeUnifiedFolder$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeUnifiedFolder$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeUnifiedFolder$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeUnifiedFolder$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeUnifiedFolder$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeUnifiedFolder$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeUnifiedFolder$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/ui/event/FolderEvent$FolderLoaded;

    .line 49
    .line 50
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 51
    .line 52
    new-instance v3, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 53
    .line 54
    sget-object v4, Lnet/thunderbird/feature/account/UnifiedAccountIdKt;->UnifiedAccountId:Lnet/thunderbird/feature/account/AccountId;

    .line 55
    .line 56
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 57
    .line 58
    invoke-direct {v3, v4, v5, v6}, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;-><init>(Lnet/thunderbird/feature/account/AccountId;J)V

    .line 59
    .line 60
    .line 61
    const-string v4, "Unified Inbox"

    .line 62
    .line 63
    sget-object v5, Lnet/thunderbird/feature/mail/folder/api/FolderType;->INBOX:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 64
    .line 65
    const-string v6, "unified_inbox"

    .line 66
    .line 67
    invoke-direct {v1, v6, v3, v4, v5}, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;-><init>(Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/state/Account;Ljava/lang/String;Lnet/thunderbird/feature/mail/folder/api/FolderType;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v1}, Lnet/thunderbird/feature/mail/message/list/ui/event/FolderEvent$FolderLoaded;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;)V

    .line 71
    .line 72
    .line 73
    iput v2, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadFolderInformationSideEffect$consumeUnifiedFolder$1;->label:I

    .line 74
    .line 75
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;->dispatch:Lkotlin/jvm/functions/Function2;

    .line 76
    .line 77
    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 82
    .line 83
    if-ne p0, p1, :cond_3

    .line 84
    .line 85
    return-object p1

    .line 86
    :cond_3
    :goto_1
    sget-object p0, Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Consumed;->INSTANCE:Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Consumed;

    .line 87
    .line 88
    return-object p0
.end method
