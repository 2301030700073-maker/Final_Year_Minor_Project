.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;
.super Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final getMessageListPreferences:Ljava/lang/Object;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public runningFlow:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final scope:Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Lnet/thunderbird/core/logging/Logger;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p5, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->$r8$classId:I

    invoke-direct {p0, p3, p2}, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;-><init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->scope:Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->logger:Lnet/thunderbird/core/logging/Logger;

    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->getMessageListPreferences:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/ui/messagelist/MessageListFragment;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0, p2, p4}, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;-><init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/jvm/functions/Function2;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->scope:Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->getMessageListPreferences:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$LoadConfigurations;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$LoadConfigurations;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 9
    .line 10
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 11
    .line 12
    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    instance-of p0, p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0

    .line 37
    :pswitch_0
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 38
    .line 39
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 40
    .line 41
    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0

    .line 57
    :pswitch_1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 58
    .line 59
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 60
    .line 61
    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final consume(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/MutatorMutex$mutate$2;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->$r8$classId:I

    .line 4
    .line 5
    iget-object v2, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 6
    .line 7
    sget-object v4, Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Consumed;->INSTANCE:Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Consumed;

    .line 8
    .line 9
    iget-object v5, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->scope:Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 10
    .line 11
    iget-object v6, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->getMessageListPreferences:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x2

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 23
    .line 24
    move-object/from16 v1, p2

    .line 25
    .line 26
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 27
    .line 28
    move-object/from16 v1, p3

    .line 29
    .line 30
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 31
    .line 32
    instance-of v2, v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    sget-object v4, Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Ignored;->INSTANCE:Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Ignored;

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    iget-object v2, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->runningFlow:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2, v7}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    check-cast v6, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 48
    .line 49
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 50
    .line 51
    iget-object v2, v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;->preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 52
    .line 53
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;->metadata:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v11, v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->sortCriteriaPerAccount:Lkotlinx/collections/immutable/PersistentMap;

    .line 62
    .line 63
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 68
    .line 69
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    sget-object v12, Lnet/thunderbird/feature/account/UnifiedAccountIdKt;->UnifiedAccountId:Lnet/thunderbird/feature/account/AccountId;

    .line 74
    .line 75
    invoke-virtual {v1, v12}, Lnet/thunderbird/feature/account/AccountId;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    if-nez v12, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move-object v1, v7

    .line 83
    :goto_0
    invoke-static {v11, v1}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 88
    .line 89
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->primary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 90
    .line 91
    invoke-static {v1}, Lkotlinx/atomicfu/AtomicFU;->toDomainSortType(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;)Lkotlin/Pair;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v11, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 96
    .line 97
    move-object v15, v11

    .line 98
    check-cast v15, Lnet/thunderbird/core/android/account/SortType;

    .line 99
    .line 100
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v1, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v16

    .line 108
    new-instance v12, Lcom/fsck/k9/ui/messagelist/MessageListConfig;

    .line 109
    .line 110
    invoke-virtual {v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    iget-boolean v14, v6, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showingThreadedList:Z

    .line 115
    .line 116
    iget-boolean v1, v6, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortDateAscending:Z

    .line 117
    .line 118
    iget-object v11, v6, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->activeMessage:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 119
    .line 120
    invoke-virtual {v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget-object v3, v3, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageSortOverrides:Ljava/util/LinkedList;

    .line 125
    .line 126
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 127
    .line 128
    .line 129
    move-result-object v19

    .line 130
    move/from16 v17, v1

    .line 131
    .line 132
    move-object/from16 v18, v11

    .line 133
    .line 134
    invoke-direct/range {v12 .. v19}, Lcom/fsck/k9/ui/messagelist/MessageListConfig;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;ZLnet/thunderbird/core/android/account/SortType;ZZLapp/k9mail/legacy/message/controller/MessageReference;Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1, v12, v9}, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->loadMessageList(Lcom/fsck/k9/ui/messagelist/MessageListConfig;Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v1, v1, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageListLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    new-instance v3, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 154
    .line 155
    const/16 v11, 0xc

    .line 156
    .line 157
    invoke-direct {v3, v1, v7, v11}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 158
    .line 159
    .line 160
    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const/4 v3, -0x1

    .line 165
    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 170
    .line 171
    invoke-direct {v3, v1, v6, v2, v8}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 172
    .line 173
    .line 174
    new-instance v1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 175
    .line 176
    const/16 v2, 0xa

    .line 177
    .line 178
    invoke-direct {v1, v0, v7, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 179
    .line 180
    .line 181
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 182
    .line 183
    invoke-direct {v2, v3, v1, v10}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 184
    .line 185
    .line 186
    new-instance v1, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1$1;

    .line 187
    .line 188
    const/4 v3, 0x4

    .line 189
    invoke-direct {v1, v0, v7, v3}, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 190
    .line 191
    .line 192
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    .line 193
    .line 194
    invoke-direct {v3, v2, v1, v8}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;I)V

    .line 195
    .line 196
    .line 197
    new-instance v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 198
    .line 199
    const/16 v2, 0xd

    .line 200
    .line 201
    invoke-direct {v1, v0, v7, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 202
    .line 203
    .line 204
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    .line 205
    .line 206
    invoke-direct {v2, v3, v1, v9}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;I)V

    .line 207
    .line 208
    .line 209
    invoke-static {v2, v5}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iput-object v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->runningFlow:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 214
    .line 215
    :goto_1
    return-object v4

    .line 216
    :pswitch_0
    move-object/from16 v1, p1

    .line 217
    .line 218
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 219
    .line 220
    move-object/from16 v1, p2

    .line 221
    .line 222
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 223
    .line 224
    move-object/from16 v3, p3

    .line 225
    .line 226
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 227
    .line 228
    new-instance v9, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$$ExternalSyntheticLambda0;

    .line 229
    .line 230
    const/4 v11, 0x4

    .line 231
    invoke-direct {v9, v1, v3, v11}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;I)V

    .line 232
    .line 233
    .line 234
    const-string v1, "LoadSwipeActionsSideEffectHandler"

    .line 235
    .line 236
    invoke-static {v2, v1, v7, v9, v10}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->runningFlow:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 240
    .line 241
    if-eqz v1, :cond_3

    .line 242
    .line 243
    invoke-virtual {v1, v7}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 244
    .line 245
    .line 246
    :cond_3
    check-cast v6, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;

    .line 247
    .line 248
    iget-object v1, v6, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;->swipeActions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 249
    .line 250
    new-instance v2, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 251
    .line 252
    const/16 v3, 0x9

    .line 253
    .line 254
    invoke-direct {v2, v0, v7, v3}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 255
    .line 256
    .line 257
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 258
    .line 259
    invoke-direct {v3, v1, v2, v10}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 260
    .line 261
    .line 262
    new-instance v1, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1$1;

    .line 263
    .line 264
    const/4 v2, 0x3

    .line 265
    invoke-direct {v1, v0, v7, v2}, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 266
    .line 267
    .line 268
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    .line 269
    .line 270
    invoke-direct {v2, v3, v1, v8}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;I)V

    .line 271
    .line 272
    .line 273
    invoke-static {v2, v5}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    iput-object v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->runningFlow:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 278
    .line 279
    return-object v4

    .line 280
    :pswitch_1
    move-object/from16 v1, p1

    .line 281
    .line 282
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 283
    .line 284
    move-object/from16 v1, p2

    .line 285
    .line 286
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 287
    .line 288
    move-object/from16 v3, p3

    .line 289
    .line 290
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 291
    .line 292
    new-instance v11, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$$ExternalSyntheticLambda0;

    .line 293
    .line 294
    invoke-direct {v11, v1, v3, v9}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;I)V

    .line 295
    .line 296
    .line 297
    const-string v1, "LoadPreferencesSideEffect"

    .line 298
    .line 299
    invoke-static {v2, v1, v7, v11, v10}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 300
    .line 301
    .line 302
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->runningFlow:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 303
    .line 304
    if-eqz v1, :cond_4

    .line 305
    .line 306
    invoke-virtual {v1, v7}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 307
    .line 308
    .line 309
    :cond_4
    check-cast v6, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;

    .line 310
    .line 311
    iget-object v1, v6, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;->displayPreferenceManager:Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;

    .line 312
    .line 313
    iget-object v1, v1, Lnet/thunderbird/core/preference/display/DefaultDisplaySettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 314
    .line 315
    iget-object v2, v6, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetMessageListPreferences;->interactionPreferenceManager:Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;

    .line 316
    .line 317
    iget-object v2, v2, Lnet/thunderbird/core/preference/interaction/DefaultInteractionSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 318
    .line 319
    new-instance v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;

    .line 320
    .line 321
    invoke-direct {v3, v6, v7, v10}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$8;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 322
    .line 323
    .line 324
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 325
    .line 326
    invoke-direct {v6, v1, v2, v3, v9}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 327
    .line 328
    .line 329
    new-instance v1, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 330
    .line 331
    const/16 v2, 0x8

    .line 332
    .line 333
    invoke-direct {v1, v0, v7, v2}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 334
    .line 335
    .line 336
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 337
    .line 338
    invoke-direct {v2, v6, v1, v10}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 339
    .line 340
    .line 341
    new-instance v1, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1$1;

    .line 342
    .line 343
    invoke-direct {v1, v0, v7, v10}, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 344
    .line 345
    .line 346
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    .line 347
    .line 348
    invoke-direct {v3, v2, v1, v8}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;I)V

    .line 349
    .line 350
    .line 351
    invoke-static {v3, v5}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    iput-object v1, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect;->runningFlow:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 356
    .line 357
    return-object v4

    .line 358
    nop

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
