.class public final Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $skipped:Ljava/lang/Object;

.field public final synthetic $this_flow:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p3, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$r8$classId:I

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;

    iget v1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;->result:Ljava/lang/Object;

    .line 1961
    iget v1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-lez p1, :cond_3

    .line 1962
    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p2, :cond_3

    .line 1963
    iput-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1964
    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    iput v3, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;->label:I

    sget-object p1, Lkotlinx/coroutines/flow/SharingCommand;->START:Lkotlinx/coroutines/flow/SharingCommand;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    return-object p1

    :cond_3
    return-object v2
.end method

.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$r8$classId:I

    .line 8
    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    const/4 v5, 0x3

    .line 12
    const/16 v6, 0xa

    .line 13
    .line 14
    const/high16 v7, -0x80000000

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x1

    .line 18
    const/4 v10, 0x0

    .line 19
    packed-switch v3, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Effect;

    .line 23
    .line 24
    instance-of v2, v1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Effect$LaunchOAuth;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 31
    .line 32
    check-cast v1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Effect$LaunchOAuth;

    .line 33
    .line 34
    iget-object v1, v1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Effect$LaunchOAuth;->intent:Landroid/content/Intent;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/activity/compose/ManagedActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    instance-of v1, v1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Effect$NavigateToIncomingServerSettings;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 47
    .line 48
    sget-object v1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$IncomingSettings;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$IncomingSettings;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :goto_0
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-object v10

    .line 60
    :pswitch_0
    instance-of v3, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$2$1;

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    move-object v3, v2

    .line 65
    check-cast v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$2$1;

    .line 66
    .line 67
    iget v4, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$2$1;->label:I

    .line 68
    .line 69
    and-int v5, v4, v7

    .line 70
    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    sub-int/2addr v4, v7

    .line 74
    iput v4, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$2$1;->label:I

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    new-instance v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$2$1;

    .line 78
    .line 79
    invoke-direct {v3, v0, v2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;Lkotlin/coroutines/Continuation;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    iget-object v2, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    .line 83
    .line 84
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 85
    .line 86
    iget v5, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$2$1;->label:I

    .line 87
    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    if-ne v5, v9, :cond_3

    .line 91
    .line 92
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_3
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 97
    .line 98
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 108
    .line 109
    check-cast v1, Ljava/util/List;

    .line 110
    .line 111
    new-instance v5, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-eqz v6, :cond_5

    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    check-cast v6, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 135
    .line 136
    new-instance v10, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 137
    .line 138
    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 139
    .line 140
    move-object v11, v7

    .line 141
    check-cast v11, Ljava/lang/String;

    .line 142
    .line 143
    iget-object v12, v6, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 144
    .line 145
    iget-boolean v13, v6, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->isInTopGroup:Z

    .line 146
    .line 147
    iget v14, v6, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->unreadMessageCount:I

    .line 148
    .line 149
    iget v15, v6, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->starredMessageCount:I

    .line 150
    .line 151
    iget-object v6, v6, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->pathDelimiter:Ljava/lang/String;

    .line 152
    .line 153
    move-object/from16 v16, v6

    .line 154
    .line 155
    invoke-direct/range {v10 .. v16}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;-><init>(Ljava/lang/String;Lnet/thunderbird/feature/mail/folder/api/Folder;ZIILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_5
    iput v9, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$2$1;->label:I

    .line 163
    .line 164
    invoke-interface {v2, v5, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-ne v0, v4, :cond_6

    .line 169
    .line 170
    move-object v10, v4

    .line 171
    goto :goto_5

    .line 172
    :cond_6
    :goto_4
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 173
    .line 174
    :goto_5
    return-object v10

    .line 175
    :pswitch_1
    instance-of v3, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$2$1;

    .line 176
    .line 177
    if-eqz v3, :cond_7

    .line 178
    .line 179
    move-object v3, v2

    .line 180
    check-cast v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$2$1;

    .line 181
    .line 182
    iget v5, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$2$1;->label:I

    .line 183
    .line 184
    and-int v11, v5, v7

    .line 185
    .line 186
    if-eqz v11, :cond_7

    .line 187
    .line 188
    sub-int/2addr v5, v7

    .line 189
    iput v5, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$2$1;->label:I

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_7
    new-instance v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$2$1;

    .line 193
    .line 194
    invoke-direct {v3, v0, v2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;Lkotlin/coroutines/Continuation;)V

    .line 195
    .line 196
    .line 197
    :goto_6
    iget-object v2, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    .line 198
    .line 199
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 200
    .line 201
    iget v7, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$2$1;->label:I

    .line 202
    .line 203
    if-eqz v7, :cond_9

    .line 204
    .line 205
    if-ne v7, v9, :cond_8

    .line 206
    .line 207
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto :goto_a

    .line 211
    :cond_8
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 212
    .line 213
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_b

    .line 217
    :cond_9
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 223
    .line 224
    check-cast v1, Ljava/util/Map;

    .line 225
    .line 226
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v0, Ljava/util/List;

    .line 229
    .line 230
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 231
    .line 232
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    invoke-static {v6}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-ge v6, v4, :cond_a

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_a
    move v4, v6

    .line 244
    :goto_7
    invoke-direct {v7, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 245
    .line 246
    .line 247
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-eqz v4, :cond_c

    .line 256
    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    move-object v6, v4

    .line 262
    check-cast v6, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 263
    .line 264
    iget-object v6, v6, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 265
    .line 266
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    if-eqz v6, :cond_b

    .line 271
    .line 272
    move v6, v9

    .line 273
    goto :goto_9

    .line 274
    :cond_b
    move v6, v8

    .line 275
    :goto_9
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_c
    iput v9, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$2$1;->label:I

    .line 284
    .line 285
    invoke-interface {v2, v7, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    if-ne v0, v5, :cond_d

    .line 290
    .line 291
    move-object v10, v5

    .line 292
    goto :goto_b

    .line 293
    :cond_d
    :goto_a
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 294
    .line 295
    :goto_b
    return-object v10

    .line 296
    :pswitch_2
    instance-of v3, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$2$1;

    .line 297
    .line 298
    if-eqz v3, :cond_e

    .line 299
    .line 300
    move-object v3, v2

    .line 301
    check-cast v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$2$1;

    .line 302
    .line 303
    iget v5, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$2$1;->label:I

    .line 304
    .line 305
    and-int v8, v5, v7

    .line 306
    .line 307
    if-eqz v8, :cond_e

    .line 308
    .line 309
    sub-int/2addr v5, v7

    .line 310
    iput v5, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$2$1;->label:I

    .line 311
    .line 312
    goto :goto_c

    .line 313
    :cond_e
    new-instance v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$2$1;

    .line 314
    .line 315
    invoke-direct {v3, v0, v2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;Lkotlin/coroutines/Continuation;)V

    .line 316
    .line 317
    .line 318
    :goto_c
    iget-object v2, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 319
    .line 320
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 321
    .line 322
    iget v7, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$2$1;->label:I

    .line 323
    .line 324
    if-eqz v7, :cond_10

    .line 325
    .line 326
    if-ne v7, v9, :cond_f

    .line 327
    .line 328
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_10

    .line 332
    .line 333
    :cond_f
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 334
    .line 335
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_11

    .line 339
    .line 340
    :cond_10
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 346
    .line 347
    check-cast v1, Ljava/util/Set;

    .line 348
    .line 349
    check-cast v1, Ljava/lang/Iterable;

    .line 350
    .line 351
    new-instance v7, Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    :cond_11
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 361
    .line 362
    .line 363
    move-result v8

    .line 364
    if-eqz v8, :cond_12

    .line 365
    .line 366
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    move-object v10, v8

    .line 371
    check-cast v10, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 372
    .line 373
    instance-of v11, v10, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 374
    .line 375
    if-eqz v11, :cond_11

    .line 376
    .line 377
    iget-object v11, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v11, Ljava/util/ArrayList;

    .line 380
    .line 381
    check-cast v10, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 382
    .line 383
    iget-object v10, v10, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountUuid:Ljava/lang/String;

    .line 384
    .line 385
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v10

    .line 389
    if-eqz v10, :cond_11

    .line 390
    .line 391
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    goto :goto_d

    .line 395
    :cond_12
    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-ge v0, v4, :cond_13

    .line 404
    .line 405
    goto :goto_e

    .line 406
    :cond_13
    move v4, v0

    .line 407
    :goto_e
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 408
    .line 409
    invoke-direct {v0, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_14

    .line 421
    .line 422
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    move-object v6, v4

    .line 427
    check-cast v6, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 428
    .line 429
    invoke-interface {v6}, Lnet/thunderbird/feature/notification/api/content/Notification;->getAccountUuid()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    goto :goto_f

    .line 437
    :cond_14
    iput v9, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$2$1;->label:I

    .line 438
    .line 439
    invoke-interface {v2, v0, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    if-ne v0, v5, :cond_15

    .line 444
    .line 445
    move-object v10, v5

    .line 446
    goto :goto_11

    .line 447
    :cond_15
    :goto_10
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 448
    .line 449
    :goto_11
    return-object v10

    .line 450
    :pswitch_3
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/effect/MessageListEffect;

    .line 451
    .line 452
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 453
    .line 454
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 455
    .line 456
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;

    .line 459
    .line 460
    invoke-interface {v2, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 464
    .line 465
    return-object v0

    .line 466
    :pswitch_4
    check-cast v1, Lkotlin/Pair;

    .line 467
    .line 468
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 469
    .line 470
    iget-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 471
    .line 472
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 473
    .line 474
    iget-object v4, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v4, Ljava/lang/Number;

    .line 477
    .line 478
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast v1, Ljava/lang/Number;

    .line 485
    .line 486
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-lez v1, :cond_17

    .line 491
    .line 492
    add-int/lit8 v5, v1, -0x1

    .line 493
    .line 494
    if-lt v4, v5, :cond_17

    .line 495
    .line 496
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    check-cast v6, Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;

    .line 501
    .line 502
    iget v6, v6, Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;->prefetchDistance:I

    .line 503
    .line 504
    if-le v1, v6, :cond_17

    .line 505
    .line 506
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;

    .line 511
    .line 512
    iget v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;->prefetchDistance:I

    .line 513
    .line 514
    sub-int/2addr v5, v1

    .line 515
    if-gez v5, :cond_16

    .line 516
    .line 517
    goto :goto_12

    .line 518
    :cond_16
    move v8, v5

    .line 519
    :goto_12
    if-lt v4, v8, :cond_17

    .line 520
    .line 521
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;

    .line 526
    .line 527
    iget-object v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;->phase:Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi$Phase;

    .line 528
    .line 529
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi$Phase;->Loading:Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi$Phase;

    .line 530
    .line 531
    if-eq v1, v4, :cond_17

    .line 532
    .line 533
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;

    .line 538
    .line 539
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 543
    .line 544
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 545
    .line 546
    sget-object v1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$LoadNextPage;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$LoadNextPage;

    .line 547
    .line 548
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    :cond_17
    return-object v2

    .line 552
    :pswitch_5
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/component/ScrollEvent$ScrollToMessage;

    .line 553
    .line 554
    if-eqz v1, :cond_18

    .line 555
    .line 556
    iget-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListState;

    .line 559
    .line 560
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 561
    .line 562
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 563
    .line 564
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    check-cast v0, Lkotlinx/collections/immutable/ImmutableList;

    .line 569
    .line 570
    invoke-static {v3, v0, v1, v2}, Lokhttp3/Handshake$Companion;->access$scrollToMessage(Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/collections/immutable/ImmutableList;Lnet/thunderbird/feature/mail/message/list/ui/component/ScrollEvent$ScrollToMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v10

    .line 574
    goto :goto_13

    .line 575
    :cond_18
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 576
    .line 577
    .line 578
    :goto_13
    return-object v10

    .line 579
    :pswitch_6
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Effect;

    .line 580
    .line 581
    instance-of v2, v1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Effect$NavigateBack;

    .line 582
    .line 583
    if-eqz v2, :cond_19

    .line 584
    .line 585
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 588
    .line 589
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    goto :goto_14

    .line 593
    :cond_19
    instance-of v1, v1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Effect$OpenAvatarImagePicker;

    .line 594
    .line 595
    if-eqz v1, :cond_1a

    .line 596
    .line 597
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 598
    .line 599
    check-cast v0, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 600
    .line 601
    const-string v1, "image/jpeg"

    .line 602
    .line 603
    const-string v2, "image/png"

    .line 604
    .line 605
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Landroidx/activity/compose/ManagedActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    :goto_14
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 613
    .line 614
    goto :goto_15

    .line 615
    :cond_1a
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 616
    .line 617
    .line 618
    :goto_15
    return-object v10

    .line 619
    :pswitch_7
    check-cast v1, Ljava/lang/Number;

    .line 620
    .line 621
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 622
    .line 623
    .line 624
    move-result v1

    .line 625
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->emit(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    return-object v0

    .line 630
    :pswitch_8
    instance-of v3, v2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;

    .line 631
    .line 632
    if-eqz v3, :cond_1b

    .line 633
    .line 634
    move-object v3, v2

    .line 635
    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;

    .line 636
    .line 637
    iget v4, v3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->label:I

    .line 638
    .line 639
    and-int v5, v4, v7

    .line 640
    .line 641
    if-eqz v5, :cond_1b

    .line 642
    .line 643
    sub-int/2addr v4, v7

    .line 644
    iput v4, v3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->label:I

    .line 645
    .line 646
    goto :goto_16

    .line 647
    :cond_1b
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;

    .line 648
    .line 649
    invoke-direct {v3, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;Lkotlin/coroutines/Continuation;)V

    .line 650
    .line 651
    .line 652
    :goto_16
    iget-object v2, v3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->result:Ljava/lang/Object;

    .line 653
    .line 654
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 655
    .line 656
    iget v5, v3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->label:I

    .line 657
    .line 658
    if-eqz v5, :cond_1d

    .line 659
    .line 660
    if-ne v5, v9, :cond_1c

    .line 661
    .line 662
    iget-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->L$2:Ljava/lang/Object;

    .line 663
    .line 664
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    goto :goto_17

    .line 668
    :cond_1c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 669
    .line 670
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    goto :goto_18

    .line 674
    :cond_1d
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 675
    .line 676
    .line 677
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 678
    .line 679
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 680
    .line 681
    iput-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->L$2:Ljava/lang/Object;

    .line 682
    .line 683
    iput v9, v3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->label:I

    .line 684
    .line 685
    invoke-interface {v2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    if-ne v2, v4, :cond_1e

    .line 690
    .line 691
    move-object v10, v4

    .line 692
    goto :goto_18

    .line 693
    :cond_1e
    :goto_17
    check-cast v2, Ljava/lang/Boolean;

    .line 694
    .line 695
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 696
    .line 697
    .line 698
    move-result v2

    .line 699
    if-nez v2, :cond_1f

    .line 700
    .line 701
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 702
    .line 703
    :goto_18
    return-object v10

    .line 704
    :cond_1f
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 705
    .line 706
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 707
    .line 708
    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 709
    .line 710
    new-instance v1, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    .line 711
    .line 712
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 713
    .line 714
    .line 715
    throw v1

    .line 716
    :pswitch_9
    instance-of v3, v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;

    .line 717
    .line 718
    if-eqz v3, :cond_20

    .line 719
    .line 720
    move-object v3, v2

    .line 721
    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;

    .line 722
    .line 723
    iget v4, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;->label:I

    .line 724
    .line 725
    and-int v5, v4, v7

    .line 726
    .line 727
    if-eqz v5, :cond_20

    .line 728
    .line 729
    sub-int/2addr v4, v7

    .line 730
    iput v4, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;->label:I

    .line 731
    .line 732
    goto :goto_19

    .line 733
    :cond_20
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;

    .line 734
    .line 735
    invoke-direct {v3, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;Lkotlin/coroutines/Continuation;)V

    .line 736
    .line 737
    .line 738
    :goto_19
    iget-object v2, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;->result:Ljava/lang/Object;

    .line 739
    .line 740
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 741
    .line 742
    iget v5, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;->label:I

    .line 743
    .line 744
    const/4 v6, 0x2

    .line 745
    if-eqz v5, :cond_23

    .line 746
    .line 747
    if-eq v5, v9, :cond_22

    .line 748
    .line 749
    if-ne v5, v6, :cond_21

    .line 750
    .line 751
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 752
    .line 753
    .line 754
    goto :goto_1c

    .line 755
    :cond_21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 756
    .line 757
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    goto :goto_1d

    .line 761
    :cond_22
    iget v8, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;->I$0:I

    .line 762
    .line 763
    iget-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;->L$2:Ljava/lang/Object;

    .line 764
    .line 765
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 766
    .line 767
    .line 768
    goto :goto_1a

    .line 769
    :cond_23
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 770
    .line 771
    .line 772
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 773
    .line 774
    check-cast v2, Landroidx/compose/runtime/Recomposer$join$2;

    .line 775
    .line 776
    iput-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;->L$2:Ljava/lang/Object;

    .line 777
    .line 778
    iput v8, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;->I$0:I

    .line 779
    .line 780
    iput v9, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;->label:I

    .line 781
    .line 782
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/Recomposer$join$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    if-ne v2, v4, :cond_24

    .line 787
    .line 788
    goto :goto_1b

    .line 789
    :cond_24
    :goto_1a
    check-cast v2, Ljava/lang/Boolean;

    .line 790
    .line 791
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 792
    .line 793
    .line 794
    move-result v2

    .line 795
    if-eqz v2, :cond_26

    .line 796
    .line 797
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 798
    .line 799
    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 800
    .line 801
    iput-object v10, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;->L$2:Ljava/lang/Object;

    .line 802
    .line 803
    iput v8, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;->I$0:I

    .line 804
    .line 805
    iput v6, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1$1;->label:I

    .line 806
    .line 807
    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    if-ne v0, v4, :cond_25

    .line 812
    .line 813
    :goto_1b
    move-object v10, v4

    .line 814
    goto :goto_1d

    .line 815
    :cond_25
    :goto_1c
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 816
    .line 817
    :goto_1d
    return-object v10

    .line 818
    :cond_26
    new-instance v1, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    .line 819
    .line 820
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 821
    .line 822
    .line 823
    throw v1

    .line 824
    :pswitch_a
    check-cast v1, Lcom/fsck/k9/ui/settings/AboutContract$Effect;

    .line 825
    .line 826
    instance-of v2, v1, Lcom/fsck/k9/ui/settings/AboutContract$Effect$OpenChangeLog;

    .line 827
    .line 828
    if-eqz v2, :cond_27

    .line 829
    .line 830
    sget v1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 831
    .line 832
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 833
    .line 834
    check-cast v0, Lcom/fsck/k9/ui/settings/AboutFragment;

    .line 835
    .line 836
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    new-instance v1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Changelog;

    .line 841
    .line 842
    sget-object v2, Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;->CHANGE_LOG:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 843
    .line 844
    invoke-direct {v1, v2}, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Changelog;-><init>(Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;)V

    .line 845
    .line 846
    .line 847
    invoke-static {v0, v1}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V

    .line 848
    .line 849
    .line 850
    goto :goto_1e

    .line 851
    :cond_27
    instance-of v2, v1, Lcom/fsck/k9/ui/settings/AboutContract$Effect$OpenUrl;

    .line 852
    .line 853
    if-eqz v2, :cond_28

    .line 854
    .line 855
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 856
    .line 857
    check-cast v0, Landroidx/compose/ui/platform/ComposeView;

    .line 858
    .line 859
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 864
    .line 865
    .line 866
    check-cast v1, Lcom/fsck/k9/ui/settings/AboutContract$Effect$OpenUrl;

    .line 867
    .line 868
    iget-object v1, v1, Lcom/fsck/k9/ui/settings/AboutContract$Effect$OpenUrl;->url:Ljava/lang/String;

    .line 869
    .line 870
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 871
    .line 872
    const-string v3, "android.intent.action.VIEW"

    .line 873
    .line 874
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .line 883
    .line 884
    goto :goto_1e

    .line 885
    :catch_0
    const v1, 0x7f1202c4

    .line 886
    .line 887
    .line 888
    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 893
    .line 894
    .line 895
    :goto_1e
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 896
    .line 897
    goto :goto_1f

    .line 898
    :cond_28
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 899
    .line 900
    .line 901
    :goto_1f
    return-object v10

    .line 902
    :pswitch_b
    instance-of v3, v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$2$1;

    .line 903
    .line 904
    if-eqz v3, :cond_29

    .line 905
    .line 906
    move-object v3, v2

    .line 907
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$2$1;

    .line 908
    .line 909
    iget v4, v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$2$1;->label:I

    .line 910
    .line 911
    and-int v5, v4, v7

    .line 912
    .line 913
    if-eqz v5, :cond_29

    .line 914
    .line 915
    sub-int/2addr v4, v7

    .line 916
    iput v4, v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$2$1;->label:I

    .line 917
    .line 918
    goto :goto_20

    .line 919
    :cond_29
    new-instance v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$2$1;

    .line 920
    .line 921
    invoke-direct {v3, v0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;Lkotlin/coroutines/Continuation;)V

    .line 922
    .line 923
    .line 924
    :goto_20
    iget-object v2, v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 925
    .line 926
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 927
    .line 928
    iget v5, v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$2$1;->label:I

    .line 929
    .line 930
    if-eqz v5, :cond_2b

    .line 931
    .line 932
    if-ne v5, v9, :cond_2a

    .line 933
    .line 934
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 935
    .line 936
    .line 937
    goto :goto_21

    .line 938
    :cond_2a
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 939
    .line 940
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    goto :goto_22

    .line 944
    :cond_2b
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 945
    .line 946
    .line 947
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 948
    .line 949
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 950
    .line 951
    check-cast v1, Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 952
    .line 953
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 954
    .line 955
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 956
    .line 957
    iget-object v0, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->platformConfigProvider:Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 958
    .line 959
    new-instance v5, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 960
    .line 961
    const/16 v6, 0x6e

    .line 962
    .line 963
    invoke-direct {v5, v0, v1, v6}, Lnet/thunderbird/core/preference/GeneralSettings;-><init>(Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;Lnet/thunderbird/core/preference/privacy/PrivacySettings;I)V

    .line 964
    .line 965
    .line 966
    iput v9, v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$2$1;->label:I

    .line 967
    .line 968
    invoke-interface {v2, v5, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    if-ne v0, v4, :cond_2c

    .line 973
    .line 974
    move-object v10, v4

    .line 975
    goto :goto_22

    .line 976
    :cond_2c
    :goto_21
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 977
    .line 978
    :goto_22
    return-object v10

    .line 979
    :pswitch_c
    check-cast v1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect;

    .line 980
    .line 981
    instance-of v2, v1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;

    .line 982
    .line 983
    if-eqz v2, :cond_2d

    .line 984
    .line 985
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 986
    .line 987
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 988
    .line 989
    check-cast v1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;

    .line 990
    .line 991
    iget-boolean v1, v1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$ToggleSaveButtonEnabled;->isEnabled:Z

    .line 992
    .line 993
    sget v2, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->$r8$clinit:I

    .line 994
    .line 995
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1000
    .line 1001
    .line 1002
    goto :goto_24

    .line 1003
    :cond_2d
    instance-of v2, v1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$DoneUpdatingAccount;

    .line 1004
    .line 1005
    if-nez v2, :cond_2f

    .line 1006
    .line 1007
    instance-of v1, v1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$Back;

    .line 1008
    .line 1009
    if-eqz v1, :cond_2e

    .line 1010
    .line 1011
    goto :goto_23

    .line 1012
    :cond_2e
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1013
    .line 1014
    .line 1015
    goto :goto_25

    .line 1016
    :cond_2f
    :goto_23
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1017
    .line 1018
    check-cast v0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .line 1019
    .line 1020
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1021
    .line 1022
    .line 1023
    :goto_24
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1024
    .line 1025
    :goto_25
    return-object v10

    .line 1026
    :pswitch_d
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1027
    .line 1028
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1029
    .line 1030
    check-cast v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect;

    .line 1031
    .line 1032
    instance-of v3, v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$NavigateNext;

    .line 1033
    .line 1034
    if-eqz v3, :cond_30

    .line 1035
    .line 1036
    new-instance v0, Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult$Success;

    .line 1037
    .line 1038
    check-cast v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$NavigateNext;

    .line 1039
    .line 1040
    iget-object v1, v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$NavigateNext;->state:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 1041
    .line 1042
    invoke-direct {v0, v1}, Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult$Success;-><init>(Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    goto :goto_26

    .line 1049
    :cond_30
    instance-of v3, v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$NavigateBack;

    .line 1050
    .line 1051
    if-eqz v3, :cond_31

    .line 1052
    .line 1053
    sget-object v0, Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult$Failure;->INSTANCE:Lapp/k9mail/feature/account/oauth/domain/entity/OAuthResult$Failure;

    .line 1054
    .line 1055
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    goto :goto_26

    .line 1059
    :cond_31
    instance-of v2, v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$LaunchOAuth;

    .line 1060
    .line 1061
    if-eqz v2, :cond_32

    .line 1062
    .line 1063
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 1064
    .line 1065
    check-cast v0, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 1066
    .line 1067
    check-cast v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$LaunchOAuth;

    .line 1068
    .line 1069
    iget-object v1, v1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Effect$LaunchOAuth;->intent:Landroid/content/Intent;

    .line 1070
    .line 1071
    invoke-virtual {v0, v1}, Landroidx/activity/compose/ManagedActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 1072
    .line 1073
    .line 1074
    :goto_26
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1075
    .line 1076
    goto :goto_27

    .line 1077
    :cond_32
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1078
    .line 1079
    .line 1080
    :goto_27
    return-object v10

    .line 1081
    :pswitch_e
    check-cast v1, Landroidx/work/impl/constraints/ConstraintsState;

    .line 1082
    .line 1083
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1084
    .line 1085
    check-cast v2, Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;

    .line 1086
    .line 1087
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 1088
    .line 1089
    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 1090
    .line 1091
    invoke-interface {v2, v0, v1}, Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;->onConstraintsStateChanged(Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/constraints/ConstraintsState;)V

    .line 1092
    .line 1093
    .line 1094
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1095
    .line 1096
    return-object v0

    .line 1097
    :pswitch_f
    check-cast v1, Landroidx/activity/BackEventCompat;

    .line 1098
    .line 1099
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1100
    .line 1101
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 1102
    .line 1103
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1104
    .line 1105
    invoke-interface {v2, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1106
    .line 1107
    .line 1108
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 1109
    .line 1110
    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 1111
    .line 1112
    iget v1, v1, Landroidx/activity/BackEventCompat;->progress:F

    .line 1113
    .line 1114
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 1115
    .line 1116
    .line 1117
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1118
    .line 1119
    return-object v0

    .line 1120
    :pswitch_10
    check-cast v1, Landroidx/compose/foundation/interaction/Interaction;

    .line 1121
    .line 1122
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1123
    .line 1124
    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 1125
    .line 1126
    instance-of v3, v1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1127
    .line 1128
    if-eqz v3, :cond_33

    .line 1129
    .line 1130
    iget v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1131
    .line 1132
    add-int/2addr v1, v9

    .line 1133
    iput v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1134
    .line 1135
    goto :goto_28

    .line 1136
    :cond_33
    instance-of v3, v1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 1137
    .line 1138
    if-eqz v3, :cond_34

    .line 1139
    .line 1140
    iget v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1141
    .line 1142
    add-int/lit8 v1, v1, -0x1

    .line 1143
    .line 1144
    iput v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1145
    .line 1146
    goto :goto_28

    .line 1147
    :cond_34
    instance-of v1, v1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 1148
    .line 1149
    if-eqz v1, :cond_35

    .line 1150
    .line 1151
    iget v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1152
    .line 1153
    add-int/lit8 v1, v1, -0x1

    .line 1154
    .line 1155
    iput v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1156
    .line 1157
    :cond_35
    :goto_28
    iget v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1158
    .line 1159
    if-lez v1, :cond_36

    .line 1160
    .line 1161
    move v8, v9

    .line 1162
    :cond_36
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 1163
    .line 1164
    check-cast v0, Landroidx/compose/material3/ThumbNode;

    .line 1165
    .line 1166
    iget-boolean v1, v0, Landroidx/compose/material3/ThumbNode;->isPressed:Z

    .line 1167
    .line 1168
    if-eq v1, v8, :cond_37

    .line 1169
    .line 1170
    iput-boolean v8, v0, Landroidx/compose/material3/ThumbNode;->isPressed:Z

    .line 1171
    .line 1172
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 1173
    .line 1174
    .line 1175
    :cond_37
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1176
    .line 1177
    return-object v0

    .line 1178
    :pswitch_11
    check-cast v1, Landroidx/compose/foundation/interaction/Interaction;

    .line 1179
    .line 1180
    instance-of v2, v1, Landroidx/compose/foundation/interaction/PressInteraction;

    .line 1181
    .line 1182
    iget-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1183
    .line 1184
    check-cast v3, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 1185
    .line 1186
    if-eqz v2, :cond_39

    .line 1187
    .line 1188
    iget-boolean v0, v3, Landroidx/compose/material/ripple/AndroidRippleNode;->hasValidSize:Z

    .line 1189
    .line 1190
    if-eqz v0, :cond_38

    .line 1191
    .line 1192
    check-cast v1, Landroidx/compose/foundation/interaction/PressInteraction;

    .line 1193
    .line 1194
    invoke-virtual {v3, v1}, Landroidx/compose/material/ripple/AndroidRippleNode;->handlePressInteraction(Landroidx/compose/foundation/interaction/PressInteraction;)V

    .line 1195
    .line 1196
    .line 1197
    goto/16 :goto_2e

    .line 1198
    .line 1199
    :cond_38
    iget-object v0, v3, Landroidx/compose/material/ripple/AndroidRippleNode;->pendingInteractions:Landroidx/collection/MutableObjectList;

    .line 1200
    .line 1201
    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 1202
    .line 1203
    .line 1204
    goto/16 :goto_2e

    .line 1205
    .line 1206
    :cond_39
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 1207
    .line 1208
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 1209
    .line 1210
    iget-object v2, v3, Landroidx/compose/material/ripple/AndroidRippleNode;->stateLayer:Landroidx/compose/material/ripple/StateLayer;

    .line 1211
    .line 1212
    const/4 v4, 0x0

    .line 1213
    if-nez v2, :cond_3a

    .line 1214
    .line 1215
    new-instance v2, Landroidx/compose/material/ripple/StateLayer;

    .line 1216
    .line 1217
    iget-boolean v6, v3, Landroidx/compose/material/ripple/AndroidRippleNode;->bounded:Z

    .line 1218
    .line 1219
    iget-object v7, v3, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleAlpha:Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;

    .line 1220
    .line 1221
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1222
    .line 1223
    .line 1224
    iput-boolean v6, v2, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 1225
    .line 1226
    iput-object v7, v2, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 1227
    .line 1228
    invoke-static {v4}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v6

    .line 1232
    iput-object v6, v2, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 1233
    .line 1234
    new-instance v6, Ljava/util/ArrayList;

    .line 1235
    .line 1236
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .line 1238
    .line 1239
    iput-object v6, v2, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    .line 1240
    .line 1241
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 1242
    .line 1243
    .line 1244
    iput-object v2, v3, Landroidx/compose/material/ripple/AndroidRippleNode;->stateLayer:Landroidx/compose/material/ripple/StateLayer;

    .line 1245
    .line 1246
    :cond_3a
    iget-object v3, v2, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    .line 1247
    .line 1248
    check-cast v3, Ljava/util/ArrayList;

    .line 1249
    .line 1250
    instance-of v6, v1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1251
    .line 1252
    if-eqz v6, :cond_3b

    .line 1253
    .line 1254
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    .line 1256
    .line 1257
    goto :goto_29

    .line 1258
    :cond_3b
    instance-of v6, v1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 1259
    .line 1260
    if-eqz v6, :cond_3c

    .line 1261
    .line 1262
    check-cast v1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 1263
    .line 1264
    iget-object v1, v1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->enter:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1265
    .line 1266
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    goto :goto_29

    .line 1270
    :cond_3c
    instance-of v6, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1271
    .line 1272
    if-eqz v6, :cond_3d

    .line 1273
    .line 1274
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    .line 1276
    .line 1277
    goto :goto_29

    .line 1278
    :cond_3d
    instance-of v6, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1279
    .line 1280
    if-eqz v6, :cond_3e

    .line 1281
    .line 1282
    check-cast v1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1283
    .line 1284
    iget-object v1, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1285
    .line 1286
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1287
    .line 1288
    .line 1289
    goto :goto_29

    .line 1290
    :cond_3e
    instance-of v6, v1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 1291
    .line 1292
    if-eqz v6, :cond_3f

    .line 1293
    .line 1294
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    .line 1296
    .line 1297
    goto :goto_29

    .line 1298
    :cond_3f
    instance-of v6, v1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 1299
    .line 1300
    if-eqz v6, :cond_40

    .line 1301
    .line 1302
    check-cast v1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 1303
    .line 1304
    iget-object v1, v1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;->start:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 1305
    .line 1306
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1307
    .line 1308
    .line 1309
    goto :goto_29

    .line 1310
    :cond_40
    instance-of v6, v1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 1311
    .line 1312
    if-eqz v6, :cond_4b

    .line 1313
    .line 1314
    check-cast v1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 1315
    .line 1316
    iget-object v1, v1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;->start:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 1317
    .line 1318
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1319
    .line 1320
    .line 1321
    :goto_29
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v1

    .line 1325
    check-cast v1, Landroidx/compose/foundation/interaction/Interaction;

    .line 1326
    .line 1327
    iget-object v3, v2, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    .line 1328
    .line 1329
    check-cast v3, Landroidx/compose/foundation/interaction/Interaction;

    .line 1330
    .line 1331
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1332
    .line 1333
    .line 1334
    move-result v3

    .line 1335
    if-nez v3, :cond_4b

    .line 1336
    .line 1337
    if-eqz v1, :cond_47

    .line 1338
    .line 1339
    iget-object v3, v2, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 1340
    .line 1341
    check-cast v3, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;

    .line 1342
    .line 1343
    invoke-virtual {v3}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 1344
    .line 1345
    .line 1346
    instance-of v3, v1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1347
    .line 1348
    if-eqz v3, :cond_41

    .line 1349
    .line 1350
    const v4, 0x3da3d70a    # 0.08f

    .line 1351
    .line 1352
    .line 1353
    goto :goto_2a

    .line 1354
    :cond_41
    instance-of v6, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1355
    .line 1356
    if-eqz v6, :cond_42

    .line 1357
    .line 1358
    const v4, 0x3dcccccd    # 0.1f

    .line 1359
    .line 1360
    .line 1361
    goto :goto_2a

    .line 1362
    :cond_42
    instance-of v6, v1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 1363
    .line 1364
    if-eqz v6, :cond_43

    .line 1365
    .line 1366
    const v4, 0x3e23d70a    # 0.16f

    .line 1367
    .line 1368
    .line 1369
    :cond_43
    :goto_2a
    sget-object v6, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 1370
    .line 1371
    if-eqz v3, :cond_44

    .line 1372
    .line 1373
    goto :goto_2b

    .line 1374
    :cond_44
    instance-of v3, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1375
    .line 1376
    const/16 v7, 0x2d

    .line 1377
    .line 1378
    if-eqz v3, :cond_45

    .line 1379
    .line 1380
    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    .line 1381
    .line 1382
    sget-object v3, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 1383
    .line 1384
    invoke-direct {v6, v7, v8, v3}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 1385
    .line 1386
    .line 1387
    goto :goto_2b

    .line 1388
    :cond_45
    instance-of v3, v1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 1389
    .line 1390
    if-eqz v3, :cond_46

    .line 1391
    .line 1392
    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    .line 1393
    .line 1394
    sget-object v3, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 1395
    .line 1396
    invoke-direct {v6, v7, v8, v3}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 1397
    .line 1398
    .line 1399
    :cond_46
    :goto_2b
    new-instance v3, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 1400
    .line 1401
    invoke-direct {v3, v2, v4, v6, v10}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;-><init>(Landroidx/compose/material/ripple/StateLayer;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 1402
    .line 1403
    .line 1404
    invoke-static {v0, v10, v10, v3, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1405
    .line 1406
    .line 1407
    goto :goto_2d

    .line 1408
    :cond_47
    iget-object v3, v2, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    .line 1409
    .line 1410
    check-cast v3, Landroidx/compose/foundation/interaction/Interaction;

    .line 1411
    .line 1412
    sget-object v4, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 1413
    .line 1414
    instance-of v6, v3, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1415
    .line 1416
    if-eqz v6, :cond_48

    .line 1417
    .line 1418
    goto :goto_2c

    .line 1419
    :cond_48
    instance-of v6, v3, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1420
    .line 1421
    if-eqz v6, :cond_49

    .line 1422
    .line 1423
    goto :goto_2c

    .line 1424
    :cond_49
    instance-of v3, v3, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 1425
    .line 1426
    if-eqz v3, :cond_4a

    .line 1427
    .line 1428
    new-instance v4, Landroidx/compose/animation/core/TweenSpec;

    .line 1429
    .line 1430
    const/16 v3, 0x96

    .line 1431
    .line 1432
    sget-object v6, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 1433
    .line 1434
    invoke-direct {v4, v3, v8, v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 1435
    .line 1436
    .line 1437
    :cond_4a
    :goto_2c
    new-instance v3, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 1438
    .line 1439
    const/16 v6, 0x1a

    .line 1440
    .line 1441
    invoke-direct {v3, v2, v4, v10, v6}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1442
    .line 1443
    .line 1444
    invoke-static {v0, v10, v10, v3, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1445
    .line 1446
    .line 1447
    :goto_2d
    iput-object v1, v2, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    .line 1448
    .line 1449
    :cond_4b
    :goto_2e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1450
    .line 1451
    return-object v0

    .line 1452
    :pswitch_12
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 1453
    .line 1454
    iget-wide v8, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1455
    .line 1456
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1457
    .line 1458
    iget-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1459
    .line 1460
    move-object v7, v3

    .line 1461
    check-cast v7, Landroidx/compose/animation/core/Animatable;

    .line 1462
    .line 1463
    invoke-virtual {v7}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v3

    .line 1467
    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    .line 1468
    .line 1469
    iget-wide v3, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1470
    .line 1471
    const-wide v10, 0x7fffffff7fffffffL

    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    and-long/2addr v3, v10

    .line 1477
    const-wide v12, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    cmp-long v3, v3, v12

    .line 1483
    .line 1484
    if-eqz v3, :cond_4d

    .line 1485
    .line 1486
    and-long v3, v8, v10

    .line 1487
    .line 1488
    cmp-long v3, v3, v12

    .line 1489
    .line 1490
    if-eqz v3, :cond_4d

    .line 1491
    .line 1492
    invoke-virtual {v7}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v3

    .line 1496
    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    .line 1497
    .line 1498
    iget-wide v3, v3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1499
    .line 1500
    const-wide v10, 0xffffffffL

    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    and-long/2addr v3, v10

    .line 1506
    long-to-int v3, v3

    .line 1507
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1508
    .line 1509
    .line 1510
    move-result v3

    .line 1511
    and-long/2addr v10, v8

    .line 1512
    long-to-int v4, v10

    .line 1513
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1514
    .line 1515
    .line 1516
    move-result v4

    .line 1517
    cmpg-float v3, v3, v4

    .line 1518
    .line 1519
    if-nez v3, :cond_4c

    .line 1520
    .line 1521
    goto :goto_2f

    .line 1522
    :cond_4c
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 1523
    .line 1524
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 1525
    .line 1526
    new-instance v6, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;

    .line 1527
    .line 1528
    const/4 v11, 0x2

    .line 1529
    const/4 v10, 0x0

    .line 1530
    invoke-direct/range {v6 .. v11}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;-><init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 1531
    .line 1532
    .line 1533
    invoke-static {v0, v10, v10, v6, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1534
    .line 1535
    .line 1536
    goto :goto_30

    .line 1537
    :cond_4d
    :goto_2f
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 1538
    .line 1539
    invoke-direct {v0, v8, v9}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v7, v0, v2}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v0

    .line 1546
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1547
    .line 1548
    if-ne v0, v2, :cond_4e

    .line 1549
    .line 1550
    move-object v1, v0

    .line 1551
    :cond_4e
    :goto_30
    return-object v1

    .line 1552
    :pswitch_13
    check-cast v1, Landroidx/compose/foundation/interaction/Interaction;

    .line 1553
    .line 1554
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 1555
    .line 1556
    check-cast v2, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    .line 1557
    .line 1558
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1559
    .line 1560
    check-cast v0, Landroidx/collection/MutableObjectList;

    .line 1561
    .line 1562
    instance-of v3, v1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1563
    .line 1564
    if-nez v3, :cond_53

    .line 1565
    .line 1566
    instance-of v3, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1567
    .line 1568
    if-nez v3, :cond_53

    .line 1569
    .line 1570
    instance-of v3, v1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1571
    .line 1572
    if-eqz v3, :cond_4f

    .line 1573
    .line 1574
    goto :goto_31

    .line 1575
    :cond_4f
    instance-of v3, v1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 1576
    .line 1577
    if-eqz v3, :cond_50

    .line 1578
    .line 1579
    check-cast v1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 1580
    .line 1581
    iget-object v1, v1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->enter:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1582
    .line 1583
    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    .line 1584
    .line 1585
    .line 1586
    goto :goto_32

    .line 1587
    :cond_50
    instance-of v3, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1588
    .line 1589
    if-eqz v3, :cond_51

    .line 1590
    .line 1591
    check-cast v1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1592
    .line 1593
    iget-object v1, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1594
    .line 1595
    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    .line 1596
    .line 1597
    .line 1598
    goto :goto_32

    .line 1599
    :cond_51
    instance-of v3, v1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 1600
    .line 1601
    if-eqz v3, :cond_52

    .line 1602
    .line 1603
    check-cast v1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 1604
    .line 1605
    iget-object v1, v1, Landroidx/compose/foundation/interaction/PressInteraction$Release;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1606
    .line 1607
    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    .line 1608
    .line 1609
    .line 1610
    goto :goto_32

    .line 1611
    :cond_52
    instance-of v3, v1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 1612
    .line 1613
    if-eqz v3, :cond_54

    .line 1614
    .line 1615
    check-cast v1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 1616
    .line 1617
    iget-object v1, v1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1618
    .line 1619
    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    .line 1620
    .line 1621
    .line 1622
    goto :goto_32

    .line 1623
    :cond_53
    :goto_31
    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 1624
    .line 1625
    .line 1626
    :cond_54
    :goto_32
    iget-object v1, v0, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 1627
    .line 1628
    iget v0, v0, Landroidx/collection/MutableObjectList;->_size:I

    .line 1629
    .line 1630
    move v3, v8

    .line 1631
    :goto_33
    if-ge v8, v0, :cond_58

    .line 1632
    .line 1633
    aget-object v4, v1, v8

    .line 1634
    .line 1635
    check-cast v4, Landroidx/compose/foundation/interaction/Interaction;

    .line 1636
    .line 1637
    instance-of v5, v4, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1638
    .line 1639
    if-eqz v5, :cond_55

    .line 1640
    .line 1641
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1642
    .line 1643
    .line 1644
    or-int/lit8 v3, v3, 0x2

    .line 1645
    .line 1646
    goto :goto_34

    .line 1647
    :cond_55
    instance-of v5, v4, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1648
    .line 1649
    if-eqz v5, :cond_56

    .line 1650
    .line 1651
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1652
    .line 1653
    .line 1654
    or-int/lit8 v3, v3, 0x1

    .line 1655
    .line 1656
    goto :goto_34

    .line 1657
    :cond_56
    instance-of v4, v4, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1658
    .line 1659
    if-eqz v4, :cond_57

    .line 1660
    .line 1661
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1662
    .line 1663
    .line 1664
    or-int/lit8 v3, v3, 0x4

    .line 1665
    .line 1666
    :cond_57
    :goto_34
    add-int/lit8 v8, v8, 0x1

    .line 1667
    .line 1668
    goto :goto_33

    .line 1669
    :cond_58
    iget-object v0, v2, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 1670
    .line 1671
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 1672
    .line 1673
    .line 1674
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1675
    .line 1676
    return-object v0

    .line 1677
    :pswitch_14
    check-cast v1, Landroidx/compose/foundation/interaction/Interaction;

    .line 1678
    .line 1679
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1680
    .line 1681
    check-cast v2, Ljava/util/ArrayList;

    .line 1682
    .line 1683
    instance-of v3, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1684
    .line 1685
    if-eqz v3, :cond_59

    .line 1686
    .line 1687
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    .line 1689
    .line 1690
    goto :goto_35

    .line 1691
    :cond_59
    instance-of v3, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1692
    .line 1693
    if-eqz v3, :cond_5a

    .line 1694
    .line 1695
    check-cast v1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1696
    .line 1697
    iget-object v1, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1698
    .line 1699
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1700
    .line 1701
    .line 1702
    :cond_5a
    :goto_35
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 1703
    .line 1704
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 1705
    .line 1706
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1707
    .line 1708
    .line 1709
    move-result v1

    .line 1710
    xor-int/2addr v1, v9

    .line 1711
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v1

    .line 1715
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1716
    .line 1717
    .line 1718
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1719
    .line 1720
    return-object v0

    .line 1721
    :pswitch_15
    check-cast v1, Landroidx/camera/camera2/pipe/compat/CameraState;

    .line 1722
    .line 1723
    instance-of v2, v1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    .line 1724
    .line 1725
    if-eqz v2, :cond_5d

    .line 1726
    .line 1727
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1728
    .line 1729
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1730
    .line 1731
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1732
    .line 1733
    check-cast v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 1734
    .line 1735
    check-cast v1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    .line 1736
    .line 1737
    iget-object v1, v1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 1738
    .line 1739
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 1740
    .line 1741
    monitor-enter v2

    .line 1742
    :try_start_1
    iget-object v3, v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 1743
    .line 1744
    sget-object v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 1745
    .line 1746
    if-eq v3, v4, :cond_5c

    .line 1747
    .line 1748
    sget-object v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 1749
    .line 1750
    if-ne v3, v4, :cond_5b

    .line 1751
    .line 1752
    goto :goto_36

    .line 1753
    :cond_5b
    iput-object v1, v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 1754
    .line 1755
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 1756
    .line 1757
    new-instance v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$cameraDevice$2$1;

    .line 1758
    .line 1759
    invoke-direct {v3, v0, v10, v8}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$cameraDevice$2$1;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/Continuation;I)V

    .line 1760
    .line 1761
    .line 1762
    invoke-static {v1, v10, v10, v3, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1763
    .line 1764
    .line 1765
    :cond_5c
    :goto_36
    monitor-exit v2

    .line 1766
    goto :goto_37

    .line 1767
    :catchall_0
    move-exception v0

    .line 1768
    monitor-exit v2

    .line 1769
    throw v0

    .line 1770
    :cond_5d
    instance-of v2, v1, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    .line 1771
    .line 1772
    if-eqz v2, :cond_5e

    .line 1773
    .line 1774
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1775
    .line 1776
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1777
    .line 1778
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1779
    .line 1780
    check-cast v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 1781
    .line 1782
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    .line 1783
    .line 1784
    .line 1785
    goto :goto_37

    .line 1786
    :cond_5e
    instance-of v2, v1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    .line 1787
    .line 1788
    if-eqz v2, :cond_5f

    .line 1789
    .line 1790
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1791
    .line 1792
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1793
    .line 1794
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1795
    .line 1796
    check-cast v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 1797
    .line 1798
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    .line 1799
    .line 1800
    .line 1801
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 1802
    .line 1803
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    .line 1804
    .line 1805
    check-cast v1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    .line 1806
    .line 1807
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$onStateClosed(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/compat/CameraStateClosed;)V

    .line 1808
    .line 1809
    .line 1810
    :cond_5f
    :goto_37
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1811
    .line 1812
    return-object v0

    .line 1813
    :pswitch_16
    check-cast v1, Landroidx/camera/camera2/pipe/CameraId;

    .line 1814
    .line 1815
    iget-object v1, v1, Landroidx/camera/camera2/pipe/CameraId;->value:Ljava/lang/String;

    .line 1816
    .line 1817
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1818
    .line 1819
    iget-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1820
    .line 1821
    check-cast v3, Ljava/lang/String;

    .line 1822
    .line 1823
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1824
    .line 1825
    .line 1826
    move-result v3

    .line 1827
    if-eqz v3, :cond_60

    .line 1828
    .line 1829
    const-string v3, "CXCP"

    .line 1830
    .line 1831
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1832
    .line 1833
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1834
    .line 1835
    .line 1836
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v1

    .line 1840
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1841
    .line 1842
    .line 1843
    const-string v1, " has become available! Notifying listeners..."

    .line 1844
    .line 1845
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    .line 1847
    .line 1848
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v1

    .line 1852
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    .line 1854
    .line 1855
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 1856
    .line 1857
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;

    .line 1858
    .line 1859
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1860
    .line 1861
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v0

    .line 1865
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1866
    .line 1867
    .line 1868
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1869
    .line 1870
    .line 1871
    move-result v1

    .line 1872
    if-eqz v1, :cond_60

    .line 1873
    .line 1874
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v1

    .line 1878
    check-cast v1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1879
    .line 1880
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 1881
    .line 1882
    .line 1883
    goto :goto_38

    .line 1884
    :cond_60
    return-object v2

    .line 1885
    :pswitch_17
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1886
    .line 1887
    instance-of v4, v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1$emit$1;

    .line 1888
    .line 1889
    if-eqz v4, :cond_61

    .line 1890
    .line 1891
    move-object v4, v2

    .line 1892
    check-cast v4, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1$emit$1;

    .line 1893
    .line 1894
    iget v5, v4, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1$emit$1;->label:I

    .line 1895
    .line 1896
    and-int v6, v5, v7

    .line 1897
    .line 1898
    if-eqz v6, :cond_61

    .line 1899
    .line 1900
    sub-int/2addr v5, v7

    .line 1901
    iput v5, v4, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1$emit$1;->label:I

    .line 1902
    .line 1903
    goto :goto_39

    .line 1904
    :cond_61
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1$emit$1;

    .line 1905
    .line 1906
    invoke-direct {v4, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1$emit$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;Lkotlin/coroutines/Continuation;)V

    .line 1907
    .line 1908
    .line 1909
    :goto_39
    iget-object v2, v4, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1$emit$1;->result:Ljava/lang/Object;

    .line 1910
    .line 1911
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1912
    .line 1913
    iget v6, v4, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1$emit$1;->label:I

    .line 1914
    .line 1915
    if-eqz v6, :cond_64

    .line 1916
    .line 1917
    if-ne v6, v9, :cond_63

    .line 1918
    .line 1919
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1920
    .line 1921
    .line 1922
    :cond_62
    :goto_3a
    move-object v10, v3

    .line 1923
    goto :goto_3b

    .line 1924
    :cond_63
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1925
    .line 1926
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1927
    .line 1928
    .line 1929
    goto :goto_3b

    .line 1930
    :cond_64
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1931
    .line 1932
    .line 1933
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$skipped:Ljava/lang/Object;

    .line 1934
    .line 1935
    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 1936
    .line 1937
    iget v6, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1938
    .line 1939
    if-lt v6, v9, :cond_65

    .line 1940
    .line 1941
    iget-object v0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;->$this_flow:Ljava/lang/Object;

    .line 1942
    .line 1943
    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 1944
    .line 1945
    iput v9, v4, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1$emit$1;->label:I

    .line 1946
    .line 1947
    invoke-interface {v0, v1, v4}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1948
    .line 1949
    .line 1950
    move-result-object v0

    .line 1951
    if-ne v0, v5, :cond_62

    .line 1952
    .line 1953
    move-object v10, v5

    .line 1954
    goto :goto_3b

    .line 1955
    :cond_65
    add-int/2addr v6, v9

    .line 1956
    iput v6, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1957
    .line 1958
    goto :goto_3a

    .line 1959
    :goto_3b
    return-object v10

    .line 1960
    nop

    .line 1961
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
