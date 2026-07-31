.class public final Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic L$1:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p2, 0x3

    .line 6
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->this$0:Ljava/lang/Object;

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
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;

    .line 15
    .line 16
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-direct {v0, p3, p0, v2}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 23
    .line 24
    iput-object p2, v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_0
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;

    .line 32
    .line 33
    check-cast p0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {v0, p3, p0, v2}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    iput-object p1, v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 40
    .line 41
    iput-object p2, v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :pswitch_1
    new-instance v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;

    .line 49
    .line 50
    check-cast p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-direct {v0, p3, p0, v2}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    iput-object p1, v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 57
    .line 58
    iput-object p2, v0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    iget-object v3, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 18
    .line 19
    iget-object v8, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 20
    .line 21
    iget v9, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->label:I

    .line 22
    .line 23
    if-eqz v9, :cond_1

    .line 24
    .line 25
    if-ne v9, v6, :cond_0

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v1, v7

    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast v8, Ljava/util/List;

    .line 42
    .line 43
    check-cast v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 44
    .line 45
    iget-object p1, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 46
    .line 47
    const-string v4, "display_in_app_notifications"

    .line 48
    .line 49
    invoke-virtual {p1, v4}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isDisabledOrUnavailable()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/16 v4, 0xa

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    invoke-static {v8, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/16 v4, 0x10

    .line 72
    .line 73
    if-ge v3, v4, :cond_2

    .line 74
    .line 75
    move v3, v4

    .line 76
    :cond_2
    invoke-direct {p1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    move-object v8, v4

    .line 94
    check-cast v8, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 95
    .line 96
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-interface {p1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    new-instance v3, Lkotlinx/coroutines/flow/SafeFlow;

    .line 103
    .line 104
    invoke-direct {v3, v2, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-static {v8, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-eqz v9, :cond_5

    .line 126
    .line 127
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    check-cast v9, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 132
    .line 133
    iget-object v9, v9, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    iget-object v3, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;->notificationStream:Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;

    .line 140
    .line 141
    iget-object v3, v3, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;->notifications:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 142
    .line 143
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;

    .line 144
    .line 145
    invoke-direct {v4, v2, v3, p1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;

    .line 149
    .line 150
    const/4 p1, 0x7

    .line 151
    invoke-direct {v3, p1, v4, v8}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :goto_2
    iput-object v7, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 155
    .line 156
    iput-object v7, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 157
    .line 158
    iput v6, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->label:I

    .line 159
    .line 160
    invoke-static {p0, v3, v0}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    if-ne p0, v5, :cond_6

    .line 165
    .line 166
    move-object v1, v5

    .line 167
    :cond_6
    :goto_3
    return-object v1

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 169
    .line 170
    iget-object v8, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 171
    .line 172
    iget v9, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->label:I

    .line 173
    .line 174
    if-eqz v9, :cond_8

    .line 175
    .line 176
    if-ne v9, v6, :cond_7

    .line 177
    .line 178
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_7
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    move-object v1, v7

    .line 186
    goto :goto_6

    .line 187
    :cond_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    check-cast v8, Lde/cketti/changelog/ChangeLog;

    .line 191
    .line 192
    iget p1, v8, Lde/cketti/changelog/ChangeLog;->lastVersionCode:I

    .line 193
    .line 194
    iget v4, v8, Lde/cketti/changelog/ChangeLog;->currentVersionCode:I

    .line 195
    .line 196
    if-ge p1, v4, :cond_a

    .line 197
    .line 198
    iget p1, v8, Lde/cketti/changelog/ChangeLog;->firstVersionCode:I

    .line 199
    .line 200
    if-ne p1, v4, :cond_9

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_9
    check-cast v3, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;

    .line 204
    .line 205
    iget-object p1, v3, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 206
    .line 207
    check-cast p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 208
    .line 209
    iget-object p1, p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->generalSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 210
    .line 211
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 212
    .line 213
    const/4 v3, 0x5

    .line 214
    invoke-direct {v2, p1, v3}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 215
    .line 216
    .line 217
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    goto :goto_5

    .line 222
    :cond_a
    :goto_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 223
    .line 224
    new-instance v3, Lkotlinx/coroutines/flow/SafeFlow;

    .line 225
    .line 226
    invoke-direct {v3, v2, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    move-object p1, v3

    .line 230
    :goto_5
    iput-object v7, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 231
    .line 232
    iput-object v7, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 233
    .line 234
    iput v6, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->label:I

    .line 235
    .line 236
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    if-ne p0, v5, :cond_b

    .line 241
    .line 242
    move-object v1, v5

    .line 243
    :cond_b
    :goto_6
    return-object v1

    .line 244
    :pswitch_1
    iget-object v0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 245
    .line 246
    iget-object v2, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 247
    .line 248
    iget v8, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->label:I

    .line 249
    .line 250
    if-eqz v8, :cond_d

    .line 251
    .line 252
    if-ne v8, v6, :cond_c

    .line 253
    .line 254
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_c
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    move-object v1, v7

    .line 262
    goto :goto_7

    .line 263
    :cond_d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    check-cast v2, Lcom/fsck/k9/ui/choosefolder/DisplayMode;

    .line 267
    .line 268
    iget-object p1, v2, Lcom/fsck/k9/ui/choosefolder/DisplayMode;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 269
    .line 270
    iget-boolean v2, v2, Lcom/fsck/k9/ui/choosefolder/DisplayMode;->showHiddenFolders:Z

    .line 271
    .line 272
    check-cast v3, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;

    .line 273
    .line 274
    iget-object v3, v3, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;->folderRepository:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 275
    .line 276
    invoke-virtual {v3, p1, v2}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->getDisplayFoldersFlow(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)Lkotlinx/coroutines/flow/Flow;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    iput-object v7, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 281
    .line 282
    iput-object v7, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 283
    .line 284
    iput v6, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;->label:I

    .line 285
    .line 286
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    if-ne p0, v5, :cond_e

    .line 291
    .line 292
    move-object v1, v5

    .line 293
    :cond_e
    :goto_7
    return-object v1

    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
