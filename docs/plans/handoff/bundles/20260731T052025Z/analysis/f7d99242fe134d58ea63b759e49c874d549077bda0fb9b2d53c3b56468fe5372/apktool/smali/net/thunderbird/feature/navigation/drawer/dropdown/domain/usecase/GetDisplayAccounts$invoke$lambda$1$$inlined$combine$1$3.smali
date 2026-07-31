.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $accounts$inlined:Ljava/util/List;

.field public final synthetic $accountsMap$inlined:Ljava/util/Map;

.field public final synthetic $showUnifiedAccount$inlined:Z

.field public synthetic L$0:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic L$1:[Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->$showUnifiedAccount$inlined:Z

    .line 2
    .line 3
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->this$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 4
    .line 5
    iput-object p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->$accounts$inlined:Ljava/util/List;

    .line 6
    .line 7
    iput-object p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->$accountsMap$inlined:Ljava/util/Map;

    .line 8
    .line 9
    const/4 p2, 0x3

    .line 10
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p2, [Ljava/lang/Object;

    .line 4
    .line 5
    move-object v1, p3

    .line 6
    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 7
    .line 8
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;

    .line 9
    .line 10
    iget-object v4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->$accounts$inlined:Ljava/util/List;

    .line 11
    .line 12
    iget-object v5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->$accountsMap$inlined:Ljava/util/Map;

    .line 13
    .line 14
    iget-boolean v2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->$showUnifiedAccount$inlined:Z

    .line 15
    .line 16
    iget-object v3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->this$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 17
    .line 18
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;Ljava/util/List;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 22
    .line 23
    iput-object p2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->L$1:[Ljava/lang/Object;

    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 4
    .line 5
    iget-object v2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->L$1:[Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->label:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    if-ne v3, v5, :cond_0

    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v4

    .line 26
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    check-cast v2, [Lapp/k9mail/legacy/message/controller/MessageCounts;

    .line 30
    .line 31
    new-instance v3, Ljava/util/ArrayList;

    .line 32
    .line 33
    array-length v6, v2

    .line 34
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    array-length v6, v2

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    :goto_0
    iget-object v10, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->this$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;

    .line 41
    .line 42
    if-ge v8, v6, :cond_3

    .line 43
    .line 44
    aget-object v11, v2, v8

    .line 45
    .line 46
    add-int/lit8 v12, v9, 0x1

    .line 47
    .line 48
    iget-object v13, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->$accounts$inlined:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    check-cast v9, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 55
    .line 56
    iget-object v14, v9, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v9}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v15

    .line 62
    invoke-virtual {v9}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getEmail()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v16

    .line 66
    invoke-virtual {v9}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 67
    .line 68
    .line 69
    move-result v17

    .line 70
    iget-object v10, v10, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts;->avatarMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;

    .line 71
    .line 72
    invoke-virtual {v9}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAvatar()Lnet/thunderbird/feature/account/storage/profile/AvatarDto;

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    invoke-virtual {v10, v13}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;->toDomain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    move-object/from16 v18, v10

    .line 81
    .line 82
    check-cast v18, Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 83
    .line 84
    iget v10, v11, Lapp/k9mail/legacy/message/controller/MessageCounts;->unread:I

    .line 85
    .line 86
    iget v11, v11, Lapp/k9mail/legacy/message/controller/MessageCounts;->starred:I

    .line 87
    .line 88
    iget-object v13, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->$accountsMap$inlined:Ljava/util/Map;

    .line 89
    .line 90
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v13

    .line 94
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v22

    .line 100
    invoke-virtual {v9}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutoExpandFolderId()Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    if-eqz v7, :cond_2

    .line 105
    .line 106
    move/from16 v19, v5

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    const/16 v19, 0x0

    .line 110
    .line 111
    :goto_1
    new-instance v13, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 112
    .line 113
    move/from16 v20, v10

    .line 114
    .line 115
    move/from16 v21, v11

    .line 116
    .line 117
    invoke-direct/range {v13 .. v22}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILnet/thunderbird/feature/account/avatar/Avatar;ZIIZ)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    add-int/lit8 v8, v8, 0x1

    .line 124
    .line 125
    move v9, v12

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    iget-boolean v2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->$showUnifiedAccount$inlined:Z

    .line 128
    .line 129
    if-eqz v2, :cond_9

    .line 130
    .line 131
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const/4 v6, 0x0

    .line 139
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_4

    .line 144
    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    check-cast v7, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 150
    .line 151
    invoke-interface {v7}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;->getUnreadMessageCount()I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    add-int/2addr v6, v7

    .line 156
    goto :goto_2

    .line 157
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const/4 v7, 0x0

    .line 162
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_5

    .line 167
    .line 168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    check-cast v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 173
    .line 174
    invoke-interface {v8}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;->getStarredMessageCount()I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    add-int/2addr v7, v8

    .line 179
    goto :goto_3

    .line 180
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_7

    .line 185
    .line 186
    :cond_6
    const/4 v2, 0x0

    .line 187
    goto :goto_4

    .line 188
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-eqz v8, :cond_6

    .line 197
    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    check-cast v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 203
    .line 204
    invoke-interface {v8}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;->getHasError()Z

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    if-eqz v8, :cond_8

    .line 209
    .line 210
    move v2, v5

    .line 211
    :goto_4
    new-instance v8, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;

    .line 212
    .line 213
    invoke-direct {v8, v6, v7, v2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;-><init>(IIZ)V

    .line 214
    .line 215
    .line 216
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    :cond_9
    iput-object v4, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 225
    .line 226
    iput-object v4, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->L$1:[Ljava/lang/Object;

    .line 227
    .line 228
    iput v5, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3;->label:I

    .line 229
    .line 230
    invoke-interface {v1, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 235
    .line 236
    if-ne v0, v1, :cond_a

    .line 237
    .line 238
    return-object v1

    .line 239
    :cond_a
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 240
    .line 241
    return-object v0
.end method
