.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic L$1:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;


# direct methods
.method public synthetic constructor <init>(ILkotlin/coroutines/Continuation;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->this$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->this$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;

    .line 6
    .line 7
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 8
    .line 9
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v2, p3, p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;-><init>(ILkotlin/coroutines/Continuation;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 21
    .line 22
    iput-object p2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-direct {v0, v2, p3, p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;-><init>(ILkotlin/coroutines/Continuation;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 36
    .line 37
    iput-object p2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

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
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->this$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 17
    .line 18
    iget-object v7, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 19
    .line 20
    iget v8, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->label:I

    .line 21
    .line 22
    if-eqz v8, :cond_1

    .line 23
    .line 24
    if-ne v8, v5, :cond_0

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v1, v6

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    check-cast v7, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object v2, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->getDisplayAccounts:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 45
    .line 46
    iget-object v3, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 47
    .line 48
    check-cast v3, Lcom/fsck/k9/Preferences;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/fsck/k9/Preferences;->getAccountsFlow()Lkotlinx/coroutines/flow/Flow;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-instance v7, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;

    .line 55
    .line 56
    const/4 v8, 0x2

    .line 57
    invoke-direct {v7, v6, v2, v8}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v7}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    new-instance v7, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$$inlined$flatMapLatest$2;

    .line 65
    .line 66
    invoke-direct {v7, v6, v2, p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;Z)V

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v7}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object v6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 74
    .line 75
    iput-object v6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    iput v5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->label:I

    .line 78
    .line 79
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-ne p0, v4, :cond_2

    .line 84
    .line 85
    move-object v1, v4

    .line 86
    :cond_2
    :goto_0
    return-object v1

    .line 87
    :pswitch_0
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 88
    .line 89
    iget-object v7, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 90
    .line 91
    iget v8, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->label:I

    .line 92
    .line 93
    if-eqz v8, :cond_4

    .line 94
    .line 95
    if-ne v8, v5, :cond_3

    .line 96
    .line 97
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    move-object v1, v6

    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    check-cast v7, Ljava/lang/String;

    .line 112
    .line 113
    iget-object p1, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->getDisplayFoldersForAccount:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    const-string v2, "unified_account"

    .line 122
    .line 123
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    const/4 v3, 0x0

    .line 128
    if-eqz v2, :cond_6

    .line 129
    .line 130
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;->unifiedFolderRepository:Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository;

    .line 131
    .line 132
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository;->messageCountsProvider:Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 133
    .line 134
    sget-object v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 135
    .line 136
    aget v2, v2, v3

    .line 137
    .line 138
    if-ne v2, v5, :cond_5

    .line 139
    .line 140
    new-instance v2, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 141
    .line 142
    invoke-direct {v2}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v3, "unified_inbox"

    .line 146
    .line 147
    iput-object v3, v2, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 148
    .line 149
    sget-object v3, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->INTEGRATE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 150
    .line 151
    const-string v7, "1"

    .line 152
    .line 153
    sget-object v8, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 154
    .line 155
    invoke-virtual {v2, v3, v7, v8}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;)V

    .line 156
    .line 157
    .line 158
    new-instance v3, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 159
    .line 160
    const/16 v7, 0x15

    .line 161
    .line 162
    invoke-direct {v3, p1, v2, v6, v7}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 163
    .line 164
    .line 165
    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const/4 v3, -0x1

    .line 170
    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    iget-object p1, p1, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 179
    .line 180
    invoke-static {v2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 185
    .line 186
    const/4 v3, 0x6

    .line 187
    invoke-direct {v2, p1, v3}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 188
    .line 189
    .line 190
    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    .line 191
    .line 192
    const/16 v3, 0x9

    .line 193
    .line 194
    invoke-direct {p1, v3, v2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_6
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount;->displayFolderRepository:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 203
    .line 204
    iget-object v2, p1, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 205
    .line 206
    check-cast v2, Lcom/fsck/k9/Preferences;

    .line 207
    .line 208
    invoke-virtual {v2, v7}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    if-eqz v2, :cond_7

    .line 213
    .line 214
    invoke-virtual {p1, v2, v3}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->getDisplayFoldersFlow(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)Lkotlinx/coroutines/flow/Flow;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;

    .line 219
    .line 220
    const/16 v3, 0x8

    .line 221
    .line 222
    invoke-direct {v2, v3, p1, v7}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    move-object p1, v2

    .line 226
    :goto_2
    iput-object v6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 227
    .line 228
    iput-object v6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 229
    .line 230
    iput v5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$flatMapLatest$1;->label:I

    .line 231
    .line 232
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    if-ne p0, v4, :cond_8

    .line 237
    .line 238
    move-object v1, v4

    .line 239
    goto :goto_3

    .line 240
    :cond_7
    const-string p0, "Account not found: "

    .line 241
    .line 242
    invoke-virtual {p0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-static {p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :cond_8
    :goto_3
    return-object v1

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
