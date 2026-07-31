.class public abstract Lokhttp3/Cookie$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;
    .locals 4

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p0, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p3, 0x2

    .line 8
    .line 9
    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object p1, v2

    .line 14
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    move-object p2, v0

    .line 20
    :cond_2
    const/4 p3, -0x2

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eq p0, p3, :cond_9

    .line 23
    .line 24
    const/4 p3, -0x1

    .line 25
    if-eq p0, p3, :cond_7

    .line 26
    .line 27
    if-eqz p0, :cond_5

    .line 28
    .line 29
    const p3, 0x7fffffff

    .line 30
    .line 31
    .line 32
    if-eq p0, p3, :cond_4

    .line 33
    .line 34
    if-ne p1, v2, :cond_3

    .line 35
    .line 36
    new-instance p1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 37
    .line 38
    invoke-direct {p1, p0, p2}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_3
    new-instance p3, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;

    .line 43
    .line 44
    invoke-direct {p3, p0, p1, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V

    .line 45
    .line 46
    .line 47
    return-object p3

    .line 48
    :cond_4
    new-instance p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 49
    .line 50
    invoke-direct {p0, p3, p2}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_5
    if-ne p1, v2, :cond_6

    .line 55
    .line 56
    new-instance p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 57
    .line 58
    invoke-direct {p0, v1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_6
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;

    .line 63
    .line 64
    invoke-direct {p0, v3, p1, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_7
    if-ne p1, v2, :cond_8

    .line 69
    .line 70
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;

    .line 71
    .line 72
    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 73
    .line 74
    invoke-direct {p0, v3, p1, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_8
    const-string p0, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    .line 79
    .line 80
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_9
    if-ne p1, v2, :cond_a

    .line 85
    .line 86
    new-instance p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 87
    .line 88
    sget-object p1, Lkotlinx/coroutines/channels/Channel;->Factory:Lkotlinx/coroutines/channels/Channel$Factory;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget p1, Lkotlinx/coroutines/channels/Channel$Factory;->CHANNEL_DEFAULT_CAPACITY:I

    .line 94
    .line 95
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_a
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;

    .line 100
    .line 101
    invoke-direct {p0, v3, p1, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V

    .line 102
    .line 103
    .line 104
    return-object p0
.end method

.method public static final GeneralSettingsScreen(Lnet/thunderbird/feature/account/AccountId;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-object/from16 v0, p5

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v3, 0x432145a4

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v3, 0x2

    .line 30
    :goto_0
    or-int v3, p6, v3

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const/16 v4, 0x20

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v4, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v3, v4

    .line 44
    or-int/lit16 v3, v3, 0x2480

    .line 45
    .line 46
    and-int/lit16 v4, v3, 0x2493

    .line 47
    .line 48
    const/16 v5, 0x2492

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    if-eq v4, v5, :cond_2

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move v4, v9

    .line 56
    :goto_2
    and-int/lit8 v5, v3, 0x1

    .line 57
    .line 58
    invoke-virtual {v0, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_12

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 65
    .line 66
    .line 67
    and-int/lit8 v4, p6, 0x1

    .line 68
    .line 69
    const v5, -0xff81

    .line 70
    .line 71
    .line 72
    move v6, v4

    .line 73
    const/4 v4, 0x0

    .line 74
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 75
    .line 76
    if-eqz v6, :cond_4

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 86
    .line 87
    .line 88
    and-int/2addr v3, v5

    .line 89
    move-object/from16 v11, p3

    .line 90
    .line 91
    move-object/from16 v12, p4

    .line 92
    .line 93
    move v13, v3

    .line 94
    move-object/from16 v3, p2

    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_4
    :goto_3
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    if-nez v6, :cond_5

    .line 107
    .line 108
    if-ne v7, v10, :cond_6

    .line 109
    .line 110
    :cond_5
    new-instance v7, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    const/4 v6, 0x7

    .line 113
    invoke-direct {v7, v1, v6}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/AccountId;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    move-object/from16 v16, v7

    .line 120
    .line 121
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 122
    .line 123
    invoke-static {v0}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    if-eqz v6, :cond_11

    .line 128
    .line 129
    invoke-static {v6}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    invoke-static {v0}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 134
    .line 135
    .line 136
    move-result-object v15

    .line 137
    const-class v7, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

    .line 138
    .line 139
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    invoke-interface {v6}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    const/4 v14, 0x0

    .line 148
    invoke-static/range {v11 .. v16}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

    .line 153
    .line 154
    invoke-static {v0}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    or-int/2addr v11, v12

    .line 167
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    if-nez v11, :cond_7

    .line 172
    .line 173
    if-ne v12, v10, :cond_8

    .line 174
    .line 175
    :cond_7
    const-class v11, Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;

    .line 176
    .line 177
    invoke-static {v11, v7, v4, v4, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    :cond_8
    move-object v7, v12

    .line 182
    check-cast v7, Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;

    .line 183
    .line 184
    invoke-static {v0}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v12

    .line 192
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    or-int/2addr v12, v13

    .line 197
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    if-nez v12, :cond_9

    .line 202
    .line 203
    if-ne v13, v10, :cond_a

    .line 204
    .line 205
    :cond_9
    const-class v12, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;

    .line 206
    .line 207
    invoke-static {v12, v11, v4, v4, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v13

    .line 211
    :cond_a
    move-object v11, v13

    .line 212
    check-cast v11, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;

    .line 213
    .line 214
    and-int/2addr v3, v5

    .line 215
    move v13, v3

    .line 216
    move-object v3, v6

    .line 217
    move-object v12, v11

    .line 218
    move-object v11, v7

    .line 219
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 220
    .line 221
    .line 222
    new-instance v5, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 223
    .line 224
    const/4 v6, 0x3

    .line 225
    invoke-direct {v5, v6}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    if-nez v6, :cond_b

    .line 237
    .line 238
    if-ne v7, v10, :cond_c

    .line 239
    .line 240
    :cond_b
    new-instance v7, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsScreenKt$$ExternalSyntheticLambda1;

    .line 241
    .line 242
    invoke-direct {v7, v3, v9}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsScreenKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_c
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 249
    .line 250
    invoke-static {v5, v7, v0}, Landroidx/room/util/DBUtil;->rememberLauncherForActivityResult(Lcom/fsck/k9/sasl/OAuthBearer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    iget-object v5, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 255
    .line 256
    invoke-static {v5, v0}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 257
    .line 258
    .line 259
    move-result-object v14

    .line 260
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    if-nez v5, :cond_d

    .line 269
    .line 270
    if-ne v7, v10, :cond_e

    .line 271
    .line 272
    :cond_d
    new-instance v7, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    .line 273
    .line 274
    const/16 v5, 0xa

    .line 275
    .line 276
    invoke-direct {v7, v5, v3}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    :cond_e
    move-object v15, v7

    .line 283
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 284
    .line 285
    iget-object v5, v3, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 286
    .line 287
    new-instance v2, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;

    .line 288
    .line 289
    const/4 v7, 0x3

    .line 290
    move-object v8, v5

    .line 291
    move-object/from16 v5, p1

    .line 292
    .line 293
    invoke-direct/range {v2 .. v7}, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;-><init>(Landroidx/lifecycle/ViewModel;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 294
    .line 295
    .line 296
    move-object/from16 v16, v3

    .line 297
    .line 298
    move-object v3, v2

    .line 299
    move-object v2, v5

    .line 300
    invoke-static {v0, v8, v3}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    and-int/lit8 v3, v13, 0x70

    .line 310
    .line 311
    const/4 v4, 0x1

    .line 312
    invoke-static {v9, v2, v0, v3, v4}, Landroidx/core/util/DebugUtils;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 313
    .line 314
    .line 315
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;

    .line 320
    .line 321
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    if-nez v4, :cond_f

    .line 330
    .line 331
    if-ne v5, v10, :cond_10

    .line 332
    .line 333
    :cond_f
    new-instance v5, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    .line 334
    .line 335
    const/4 v4, 0x6

    .line 336
    invoke-direct {v5, v4, v15}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    :cond_10
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 343
    .line 344
    const/4 v6, 0x0

    .line 345
    const/4 v8, 0x0

    .line 346
    move-object v7, v0

    .line 347
    move-object v2, v3

    .line 348
    move-object v3, v5

    .line 349
    move-object v4, v11

    .line 350
    move-object v5, v12

    .line 351
    invoke-static/range {v2 .. v8}, Lokhttp3/CacheControl$Companion;->GeneralSettingsContent(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/core/ui/setting/dialog/DialogSettingViewProvider;Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 352
    .line 353
    .line 354
    move-object/from16 v3, v16

    .line 355
    .line 356
    goto :goto_5

    .line 357
    :cond_11
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 358
    .line 359
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :cond_12
    move-object v7, v0

    .line 364
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 365
    .line 366
    .line 367
    move-object/from16 v3, p2

    .line 368
    .line 369
    move-object/from16 v4, p3

    .line 370
    .line 371
    move-object/from16 v5, p4

    .line 372
    .line 373
    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    if-eqz v8, :cond_13

    .line 378
    .line 379
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 380
    .line 381
    const/16 v7, 0x11

    .line 382
    .line 383
    move-object/from16 v2, p1

    .line 384
    .line 385
    move/from16 v6, p6

    .line 386
    .line 387
    invoke-direct/range {v0 .. v7}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 388
    .line 389
    .line 390
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 391
    .line 392
    :cond_13
    return-void
.end method

.method public static final IconListItem(Lnet/thunderbird/core/ui/setting/SettingValue$IconList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    .line 1
    move/from16 v4, p4

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v10, p3

    .line 10
    .line 11
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x43b29de3    # 357.2335f

    .line 14
    .line 15
    .line 16
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v4, 0x6

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    and-int/lit8 v0, v4, 0x8

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x2

    .line 41
    :goto_1
    or-int/2addr v0, v4

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v0, v4

    .line 44
    :goto_2
    and-int/lit8 v1, v4, 0x30

    .line 45
    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    const/16 v1, 0x20

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    const/16 v1, 0x10

    .line 58
    .line 59
    :goto_3
    or-int/2addr v0, v1

    .line 60
    :cond_4
    and-int/lit16 v1, v4, 0x180

    .line 61
    .line 62
    if-nez v1, :cond_6

    .line 63
    .line 64
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    const/16 v1, 0x100

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    const/16 v1, 0x80

    .line 74
    .line 75
    :goto_4
    or-int/2addr v0, v1

    .line 76
    :cond_6
    and-int/lit16 v1, v0, 0x93

    .line 77
    .line 78
    const/16 v2, 0x92

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    if-eq v1, v2, :cond_7

    .line 82
    .line 83
    const/4 v1, 0x1

    .line 84
    goto :goto_5

    .line 85
    :cond_7
    move v1, v3

    .line 86
    :goto_5
    and-int/lit8 v2, v0, 0x1

    .line 87
    .line 88
    invoke-virtual {v10, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_8

    .line 93
    .line 94
    iget-object v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icon:Lkotlin/jvm/functions/Function0;

    .line 95
    .line 96
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    move-object v6, v1

    .line 101
    check-cast v6, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 102
    .line 103
    new-instance v1, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/IconListItemKt$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    invoke-direct {v1, p0, p1, v3}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/IconListItemKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/ui/setting/SettingValue$IconList;Lkotlin/jvm/functions/Function1;I)V

    .line 106
    .line 107
    .line 108
    const v2, -0x72da572b

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v1, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    and-int/lit16 v0, v0, 0x380

    .line 116
    .line 117
    or-int/lit16 v11, v0, 0x6006

    .line 118
    .line 119
    const/16 v12, 0x8

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v8, 0x0

    .line 123
    move-object v7, p2

    .line 124
    invoke-static/range {v5 .. v12}, Lokhttp3/Cookie$Companion;->SettingItemLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 125
    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 129
    .line 130
    .line 131
    :goto_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    if-eqz v6, :cond_9

    .line 136
    .line 137
    new-instance v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;

    .line 138
    .line 139
    const/4 v5, 0x1

    .line 140
    move-object v1, p0

    .line 141
    move-object v2, p1

    .line 142
    move-object v3, p2

    .line 143
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 144
    .line 145
    .line 146
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 147
    .line 148
    :cond_9
    return-void
.end method

.method public static final MessageListPage(Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move/from16 v6, p6

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-object/from16 v0, p5

    .line 16
    .line 17
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v2, -0x7e4513d1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    and-int/lit8 v2, v6, 0x6

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x2

    .line 38
    :goto_0
    or-int/2addr v2, v6

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v2, v6

    .line 41
    :goto_1
    and-int/lit8 v5, v6, 0x30

    .line 42
    .line 43
    move-object/from16 v15, p1

    .line 44
    .line 45
    if-nez v5, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    const/16 v5, 0x20

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v5, 0x10

    .line 57
    .line 58
    :goto_2
    or-int/2addr v2, v5

    .line 59
    :cond_3
    and-int/lit16 v5, v6, 0x180

    .line 60
    .line 61
    if-nez v5, :cond_5

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    const/16 v5, 0x100

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    const/16 v5, 0x80

    .line 73
    .line 74
    :goto_3
    or-int/2addr v2, v5

    .line 75
    :cond_5
    and-int/lit16 v5, v6, 0xc00

    .line 76
    .line 77
    if-nez v5, :cond_7

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    const/16 v5, 0x800

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    const/16 v5, 0x400

    .line 89
    .line 90
    :goto_4
    or-int/2addr v2, v5

    .line 91
    :cond_7
    and-int/lit16 v5, v6, 0x6000

    .line 92
    .line 93
    if-nez v5, :cond_9

    .line 94
    .line 95
    move-object/from16 v5, p4

    .line 96
    .line 97
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_8

    .line 102
    .line 103
    const/16 v7, 0x4000

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_8
    const/16 v7, 0x2000

    .line 107
    .line 108
    :goto_5
    or-int/2addr v2, v7

    .line 109
    goto :goto_6

    .line 110
    :cond_9
    move-object/from16 v5, p4

    .line 111
    .line 112
    :goto_6
    and-int/lit16 v7, v2, 0x2493

    .line 113
    .line 114
    const/16 v8, 0x2492

    .line 115
    .line 116
    if-eq v7, v8, :cond_a

    .line 117
    .line 118
    const/4 v7, 0x1

    .line 119
    goto :goto_7

    .line 120
    :cond_a
    const/4 v7, 0x0

    .line 121
    :goto_7
    and-int/lit8 v8, v2, 0x1

    .line 122
    .line 123
    invoke-virtual {v0, v8, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_b

    .line 128
    .line 129
    new-instance v7, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    invoke-direct {v7, v3, v4, v1}, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/page/MessageListPageKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;)V

    .line 132
    .line 133
    .line 134
    const v8, -0x389e5177

    .line 135
    .line 136
    .line 137
    invoke-static {v8, v7, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 138
    .line 139
    .line 140
    move-result-object v16

    .line 141
    shr-int/lit8 v7, v2, 0xc

    .line 142
    .line 143
    and-int/lit8 v7, v7, 0xe

    .line 144
    .line 145
    const/high16 v8, 0x30000000

    .line 146
    .line 147
    or-int/2addr v7, v8

    .line 148
    shl-int/lit8 v2, v2, 0x15

    .line 149
    .line 150
    const/high16 v8, 0xe000000

    .line 151
    .line 152
    and-int/2addr v2, v8

    .line 153
    or-int v18, v7, v2

    .line 154
    .line 155
    const/4 v8, 0x0

    .line 156
    const/4 v9, 0x0

    .line 157
    const/4 v10, 0x0

    .line 158
    const/4 v11, 0x0

    .line 159
    const/4 v12, 0x0

    .line 160
    const/4 v13, 0x0

    .line 161
    const/4 v14, 0x0

    .line 162
    move-object/from16 v17, v0

    .line 163
    .line 164
    move-object v7, v5

    .line 165
    invoke-static/range {v7 .. v18}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->InAppNotificationScaffold(Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/organism/snackbar/Material3BackedSnackbarHostState;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 166
    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_b
    move-object/from16 v17, v0

    .line 170
    .line 171
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 172
    .line 173
    .line 174
    :goto_8
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    if-eqz v8, :cond_c

    .line 179
    .line 180
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;

    .line 181
    .line 182
    const/16 v7, 0xc

    .line 183
    .line 184
    move-object/from16 v2, p1

    .line 185
    .line 186
    move-object/from16 v5, p4

    .line 187
    .line 188
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lkotlin/Function;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/Modifier;II)V

    .line 189
    .line 190
    .line 191
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 192
    .line 193
    :cond_c
    return-void
.end method

.method public static final SettingItemLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v8, p4

    .line 8
    .line 9
    move/from16 v9, p6

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v3, 0x32b1880e

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v3, v9, 0x6

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    move v3, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v3, 0x2

    .line 35
    :goto_0
    or-int/2addr v3, v9

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v3, v9

    .line 38
    :goto_1
    and-int/lit8 v6, v9, 0x30

    .line 39
    .line 40
    const/16 v10, 0x20

    .line 41
    .line 42
    if-nez v6, :cond_3

    .line 43
    .line 44
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    move v6, v10

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v6, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v3, v6

    .line 55
    :cond_3
    and-int/lit16 v6, v9, 0x180

    .line 56
    .line 57
    if-nez v6, :cond_5

    .line 58
    .line 59
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    const/16 v6, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v6, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v3, v6

    .line 71
    :cond_5
    and-int/lit8 v6, p7, 0x8

    .line 72
    .line 73
    if-eqz v6, :cond_7

    .line 74
    .line 75
    or-int/lit16 v3, v3, 0xc00

    .line 76
    .line 77
    :cond_6
    move-object/from16 v7, p3

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_7
    and-int/lit16 v7, v9, 0xc00

    .line 81
    .line 82
    if-nez v7, :cond_6

    .line 83
    .line 84
    move-object/from16 v7, p3

    .line 85
    .line 86
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-eqz v11, :cond_8

    .line 91
    .line 92
    const/16 v11, 0x800

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_8
    const/16 v11, 0x400

    .line 96
    .line 97
    :goto_4
    or-int/2addr v3, v11

    .line 98
    :goto_5
    and-int/lit16 v11, v9, 0x6000

    .line 99
    .line 100
    if-nez v11, :cond_a

    .line 101
    .line 102
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-eqz v11, :cond_9

    .line 107
    .line 108
    const/16 v11, 0x4000

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_9
    const/16 v11, 0x2000

    .line 112
    .line 113
    :goto_6
    or-int/2addr v3, v11

    .line 114
    :cond_a
    move v11, v3

    .line 115
    and-int/lit16 v3, v11, 0x2493

    .line 116
    .line 117
    const/16 v12, 0x2492

    .line 118
    .line 119
    const/4 v13, 0x0

    .line 120
    if-eq v3, v12, :cond_b

    .line 121
    .line 122
    const/4 v3, 0x1

    .line 123
    goto :goto_7

    .line 124
    :cond_b
    move v3, v13

    .line 125
    :goto_7
    and-int/lit8 v12, v11, 0x1

    .line 126
    .line 127
    invoke-virtual {v5, v12, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_17

    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    if-eqz v6, :cond_c

    .line 135
    .line 136
    move-object v12, v3

    .line 137
    goto :goto_8

    .line 138
    :cond_c
    move-object v12, v7

    .line 139
    :goto_8
    if-eqz v1, :cond_d

    .line 140
    .line 141
    const/4 v6, 0x1

    .line 142
    goto :goto_9

    .line 143
    :cond_d
    move v6, v13

    .line 144
    :goto_9
    and-int/lit8 v7, v11, 0xe

    .line 145
    .line 146
    if-ne v7, v4, :cond_e

    .line 147
    .line 148
    const/4 v4, 0x1

    .line 149
    goto :goto_a

    .line 150
    :cond_e
    move v4, v13

    .line 151
    :goto_a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    if-nez v4, :cond_f

    .line 156
    .line 157
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 158
    .line 159
    if-ne v7, v4, :cond_10

    .line 160
    .line 161
    :cond_f
    new-instance v7, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 162
    .line 163
    const/16 v4, 0xd

    .line 164
    .line 165
    invoke-direct {v7, v4, v1}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_10
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 172
    .line 173
    const/16 v4, 0xe

    .line 174
    .line 175
    invoke-static {v0, v6, v3, v7, v4}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 180
    .line 181
    invoke-static {v4, v13}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    iget-wide v6, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 186
    .line 187
    ushr-long v15, v6, v10

    .line 188
    .line 189
    xor-long/2addr v6, v15

    .line 190
    long-to-int v6, v6

    .line 191
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-static {v5, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 200
    .line 201
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 205
    .line 206
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 207
    .line 208
    .line 209
    move/from16 p5, v10

    .line 210
    .line 211
    iget-boolean v10, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 212
    .line 213
    if-eqz v10, :cond_11

    .line 214
    .line 215
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 216
    .line 217
    .line 218
    goto :goto_b

    .line 219
    :cond_11
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 220
    .line 221
    .line 222
    :goto_b
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 223
    .line 224
    invoke-static {v5, v4, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 225
    .line 226
    .line 227
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 228
    .line 229
    invoke-static {v5, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 237
    .line 238
    invoke-static {v5, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 239
    .line 240
    .line 241
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 242
    .line 243
    invoke-static {v5, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 244
    .line 245
    .line 246
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 247
    .line 248
    invoke-static {v5, v3, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 249
    .line 250
    .line 251
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 252
    .line 253
    sget-object v14, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 254
    .line 255
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v17

    .line 259
    check-cast v17, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 260
    .line 261
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 265
    .line 266
    new-instance v1, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 267
    .line 268
    const/4 v9, 0x7

    .line 269
    invoke-direct {v1, v9}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 270
    .line 271
    .line 272
    const/high16 v9, 0x41000000    # 8.0f

    .line 273
    .line 274
    const/4 v2, 0x1

    .line 275
    invoke-direct {v0, v9, v2, v1}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    const/high16 v1, 0x41400000    # 12.0f

    .line 297
    .line 298
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 299
    .line 300
    const/high16 v2, 0x41800000    # 16.0f

    .line 301
    .line 302
    invoke-static {v9, v2, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    const/16 v2, 0x30

    .line 307
    .line 308
    invoke-static {v0, v3, v5, v2}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    iget-wide v2, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 313
    .line 314
    ushr-long v17, v2, p5

    .line 315
    .line 316
    xor-long v2, v2, v17

    .line 317
    .line 318
    long-to-int v2, v2

    .line 319
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-static {v5, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 328
    .line 329
    .line 330
    move/from16 v17, v11

    .line 331
    .line 332
    iget-boolean v11, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 333
    .line 334
    if-eqz v11, :cond_12

    .line 335
    .line 336
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 337
    .line 338
    .line 339
    goto :goto_c

    .line 340
    :cond_12
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 341
    .line 342
    .line 343
    :goto_c
    invoke-static {v5, v0, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 344
    .line 345
    .line 346
    invoke-static {v5, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 347
    .line 348
    .line 349
    invoke-static {v2, v5, v7, v5, v6}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 350
    .line 351
    .line 352
    invoke-static {v5, v1, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 353
    .line 354
    .line 355
    if-nez p1, :cond_13

    .line 356
    .line 357
    const v0, -0x12981838

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 361
    .line 362
    .line 363
    const/4 v0, 0x0

    .line 364
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 365
    .line 366
    .line 367
    move-object v0, v4

    .line 368
    move-object v11, v6

    .line 369
    move-object v1, v7

    .line 370
    goto :goto_e

    .line 371
    :cond_13
    const/4 v0, 0x0

    .line 372
    const v1, -0x12981837

    .line 373
    .line 374
    .line 375
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 376
    .line 377
    .line 378
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 379
    .line 380
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    iget-wide v2, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 385
    .line 386
    ushr-long v18, v2, p5

    .line 387
    .line 388
    xor-long v2, v2, v18

    .line 389
    .line 390
    long-to-int v0, v2

    .line 391
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    invoke-static {v5, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 400
    .line 401
    .line 402
    iget-boolean v11, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 403
    .line 404
    if-eqz v11, :cond_14

    .line 405
    .line 406
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 407
    .line 408
    .line 409
    goto :goto_d

    .line 410
    :cond_14
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 411
    .line 412
    .line 413
    :goto_d
    invoke-static {v5, v1, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 414
    .line 415
    .line 416
    invoke-static {v5, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 417
    .line 418
    .line 419
    invoke-static {v0, v5, v7, v5, v6}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 420
    .line 421
    .line 422
    invoke-static {v5, v3, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 423
    .line 424
    .line 425
    move-object v0, v6

    .line 426
    const/4 v6, 0x0

    .line 427
    move-object v1, v7

    .line 428
    const/16 v7, 0xe

    .line 429
    .line 430
    const/4 v3, 0x0

    .line 431
    move-object v2, v4

    .line 432
    const/4 v4, 0x0

    .line 433
    move-object v11, v0

    .line 434
    move-object v0, v2

    .line 435
    move-object/from16 v2, p1

    .line 436
    .line 437
    invoke-static/range {v2 .. v7}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 438
    .line 439
    .line 440
    const/4 v2, 0x1

    .line 441
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 442
    .line 443
    .line 444
    const/4 v2, 0x0

    .line 445
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 446
    .line 447
    .line 448
    :goto_e
    const/high16 v2, 0x3f800000    # 1.0f

    .line 449
    .line 450
    sget-object v3, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 451
    .line 452
    invoke-virtual {v3, v9, v2}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 461
    .line 462
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    new-instance v4, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 466
    .line 467
    new-instance v6, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 468
    .line 469
    const/4 v7, 0x7

    .line 470
    invoke-direct {v6, v7}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 471
    .line 472
    .line 473
    const/high16 v7, 0x40800000    # 4.0f

    .line 474
    .line 475
    const/4 v9, 0x1

    .line 476
    invoke-direct {v4, v7, v9, v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 477
    .line 478
    .line 479
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 480
    .line 481
    const/4 v7, 0x0

    .line 482
    invoke-static {v4, v6, v5, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    iget-wide v6, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 487
    .line 488
    ushr-long v18, v6, p5

    .line 489
    .line 490
    xor-long v6, v6, v18

    .line 491
    .line 492
    long-to-int v6, v6

    .line 493
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 494
    .line 495
    .line 496
    move-result-object v7

    .line 497
    invoke-static {v5, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 502
    .line 503
    .line 504
    iget-boolean v9, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 505
    .line 506
    if-eqz v9, :cond_15

    .line 507
    .line 508
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 509
    .line 510
    .line 511
    goto :goto_f

    .line 512
    :cond_15
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 513
    .line 514
    .line 515
    :goto_f
    invoke-static {v5, v4, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 516
    .line 517
    .line 518
    invoke-static {v5, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 519
    .line 520
    .line 521
    invoke-static {v6, v5, v1, v5, v11}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 522
    .line 523
    .line 524
    invoke-static {v5, v2, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 525
    .line 526
    .line 527
    shr-int/lit8 v0, v17, 0x9

    .line 528
    .line 529
    and-int/lit8 v0, v0, 0x70

    .line 530
    .line 531
    const/4 v1, 0x6

    .line 532
    or-int/2addr v0, v1

    .line 533
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    sget-object v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 538
    .line 539
    invoke-virtual {v8, v2, v5, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    const/4 v2, 0x1

    .line 543
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 544
    .line 545
    .line 546
    if-nez v12, :cond_16

    .line 547
    .line 548
    const v0, -0x12912c03

    .line 549
    .line 550
    .line 551
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 552
    .line 553
    .line 554
    const/4 v0, 0x0

    .line 555
    :goto_10
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 556
    .line 557
    .line 558
    const/4 v2, 0x1

    .line 559
    goto :goto_11

    .line 560
    :cond_16
    const/4 v0, 0x0

    .line 561
    const v2, 0x7a8bc84

    .line 562
    .line 563
    .line 564
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 565
    .line 566
    .line 567
    shr-int/lit8 v2, v17, 0x6

    .line 568
    .line 569
    and-int/lit8 v2, v2, 0x70

    .line 570
    .line 571
    or-int/2addr v1, v2

    .line 572
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-interface {v12, v3, v5, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    goto :goto_10

    .line 580
    :goto_11
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 584
    .line 585
    .line 586
    move-object v4, v12

    .line 587
    goto :goto_12

    .line 588
    :cond_17
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 589
    .line 590
    .line 591
    move-object v4, v7

    .line 592
    :goto_12
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 593
    .line 594
    .line 595
    move-result-object v9

    .line 596
    if-eqz v9, :cond_18

    .line 597
    .line 598
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda5;

    .line 599
    .line 600
    move-object/from16 v1, p0

    .line 601
    .line 602
    move-object/from16 v2, p1

    .line 603
    .line 604
    move-object/from16 v3, p2

    .line 605
    .line 606
    move/from16 v6, p6

    .line 607
    .line 608
    move/from16 v7, p7

    .line 609
    .line 610
    move-object v5, v8

    .line 611
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 612
    .line 613
    .line 614
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 615
    .line 616
    :cond_18
    return-void
.end method

.method public static final SettingListItem(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-object/from16 v8, p5

    .line 17
    .line 18
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    const v2, 0x3963d330

    .line 21
    .line 22
    .line 23
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    move v2, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v2, v5

    .line 37
    :goto_0
    or-int v2, p6, v2

    .line 38
    .line 39
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    const/16 v6, 0x20

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/16 v6, 0x10

    .line 49
    .line 50
    :goto_1
    or-int/2addr v2, v6

    .line 51
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    const/16 v6, 0x100

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v6, 0x80

    .line 61
    .line 62
    :goto_2
    or-int/2addr v2, v6

    .line 63
    or-int/lit16 v6, v2, 0xc00

    .line 64
    .line 65
    and-int/lit8 v7, p7, 0x10

    .line 66
    .line 67
    if-eqz v7, :cond_3

    .line 68
    .line 69
    or-int/lit16 v2, v2, 0x6c00

    .line 70
    .line 71
    move v11, v2

    .line 72
    move/from16 v2, p4

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_3
    move/from16 v2, p4

    .line 76
    .line 77
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_4

    .line 82
    .line 83
    const/16 v9, 0x4000

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    const/16 v9, 0x2000

    .line 87
    .line 88
    :goto_3
    or-int/2addr v6, v9

    .line 89
    move v11, v6

    .line 90
    :goto_4
    and-int/lit16 v6, v11, 0x2493

    .line 91
    .line 92
    const/16 v9, 0x2492

    .line 93
    .line 94
    const/4 v10, 0x1

    .line 95
    const/4 v12, 0x0

    .line 96
    if-eq v6, v9, :cond_5

    .line 97
    .line 98
    move v6, v10

    .line 99
    goto :goto_5

    .line 100
    :cond_5
    move v6, v12

    .line 101
    :goto_5
    and-int/lit8 v9, v11, 0x1

    .line 102
    .line 103
    invoke-virtual {v8, v9, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_d

    .line 108
    .line 109
    if-eqz v7, :cond_6

    .line 110
    .line 111
    move v13, v12

    .line 112
    goto :goto_6

    .line 113
    :cond_6
    move v13, v2

    .line 114
    :goto_6
    invoke-static {v8}, Lorg/jsoup/Jsoup;->calculateWindowSizeInfo(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-wide v6, v2, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->size:J

    .line 119
    .line 120
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    iget-wide v14, v2, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->size:J

    .line 125
    .line 126
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-lez v6, :cond_7

    .line 135
    .line 136
    move v6, v10

    .line 137
    goto :goto_7

    .line 138
    :cond_7
    move v6, v12

    .line 139
    :goto_7
    iget-object v2, v2, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->sizeClass:Lnet/thunderbird/core/ui/common/window/WindowSizeClass;

    .line 140
    .line 141
    iget-object v2, v2, Lnet/thunderbird/core/ui/common/window/WindowSizeClass;->heightSizeClass:Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;

    .line 142
    .line 143
    sget-object v7, Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;->Compact:Lnet/thunderbird/core/ui/common/window/WindowHeightSizeClass;

    .line 144
    .line 145
    if-ne v2, v7, :cond_8

    .line 146
    .line 147
    move v2, v10

    .line 148
    goto :goto_8

    .line 149
    :cond_8
    move v2, v12

    .line 150
    :goto_8
    if-eqz v6, :cond_9

    .line 151
    .line 152
    if-eqz v2, :cond_9

    .line 153
    .line 154
    move v2, v10

    .line 155
    goto :goto_9

    .line 156
    :cond_9
    move v2, v12

    .line 157
    :goto_9
    const/4 v14, 0x0

    .line 158
    if-eqz v13, :cond_a

    .line 159
    .line 160
    const v6, -0x783735cc

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 164
    .line 165
    .line 166
    invoke-static {v8, v12}, Landroidx/compose/animation/core/ArcSplineKt;->rememberInfiniteTransition(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    const/16 v7, 0x3e8

    .line 171
    .line 172
    sget-object v9, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 173
    .line 174
    invoke-static {v7, v12, v9, v5}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-static {v5, v4}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    const/16 v9, 0x71b8

    .line 183
    .line 184
    const/4 v10, 0x0

    .line 185
    const/4 v5, 0x0

    .line 186
    move-object v4, v6

    .line 187
    const/high16 v6, 0x43b40000    # 360.0f

    .line 188
    .line 189
    invoke-static/range {v4 .. v10}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    iget-object v4, v4, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 194
    .line 195
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    check-cast v4, Ljava/lang/Number;

    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 206
    .line 207
    .line 208
    goto :goto_a

    .line 209
    :cond_a
    const v4, -0x78309220

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 216
    .line 217
    .line 218
    move v4, v14

    .line 219
    :goto_a
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 220
    .line 221
    if-eqz v2, :cond_c

    .line 222
    .line 223
    const v2, -0x782fe5ee

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 227
    .line 228
    .line 229
    cmpg-float v2, v4, v14

    .line 230
    .line 231
    if-nez v2, :cond_b

    .line 232
    .line 233
    move-object v2, v9

    .line 234
    goto :goto_b

    .line 235
    :cond_b
    invoke-static {v9, v4}, Landroidx/compose/ui/draw/ClipKt;->rotate(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    :goto_b
    shr-int/lit8 v4, v11, 0x3

    .line 240
    .line 241
    and-int/lit8 v4, v4, 0x7e

    .line 242
    .line 243
    shl-int/lit8 v5, v11, 0xc

    .line 244
    .line 245
    const v6, 0xe000

    .line 246
    .line 247
    .line 248
    and-int/2addr v5, v6

    .line 249
    or-int v7, v4, v5

    .line 250
    .line 251
    move-object v6, v8

    .line 252
    const/16 v8, 0x28

    .line 253
    .line 254
    const/4 v3, 0x0

    .line 255
    const/4 v5, 0x0

    .line 256
    move-object v4, v1

    .line 257
    move-object/from16 v1, p2

    .line 258
    .line 259
    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 260
    .line 261
    .line 262
    move-object v3, v1

    .line 263
    move-object v1, v4

    .line 264
    move-object v8, v6

    .line 265
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 266
    .line 267
    .line 268
    goto :goto_c

    .line 269
    :cond_c
    const v2, -0x782c5295

    .line 270
    .line 271
    .line 272
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 273
    .line 274
    .line 275
    new-instance v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/SettingListItemKt$$ExternalSyntheticLambda0;

    .line 276
    .line 277
    invoke-direct {v2, v3, v4}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/SettingListItemKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;F)V

    .line 278
    .line 279
    .line 280
    const v4, 0x4adb40c3    # 7184481.5f

    .line 281
    .line 282
    .line 283
    invoke-static {v4, v2, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    and-int/lit8 v4, v11, 0xe

    .line 288
    .line 289
    or-int/lit16 v4, v4, 0x6030

    .line 290
    .line 291
    shl-int/lit8 v5, v11, 0x3

    .line 292
    .line 293
    and-int/lit16 v5, v5, 0x380

    .line 294
    .line 295
    or-int/2addr v4, v5

    .line 296
    or-int/lit16 v4, v4, 0xc00

    .line 297
    .line 298
    invoke-static {v1, v0, v2, v8, v4}, Landroidx/work/Operation$State;->NavigationDrawerItem(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 302
    .line 303
    .line 304
    :goto_c
    move-object v4, v9

    .line 305
    move v5, v13

    .line 306
    goto :goto_d

    .line 307
    :cond_d
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 308
    .line 309
    .line 310
    move-object/from16 v4, p3

    .line 311
    .line 312
    move v5, v2

    .line 313
    :goto_d
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    if-eqz v8, :cond_e

    .line 318
    .line 319
    new-instance v0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;

    .line 320
    .line 321
    move-object/from16 v2, p1

    .line 322
    .line 323
    move/from16 v6, p6

    .line 324
    .line 325
    move/from16 v7, p7

    .line 326
    .line 327
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZII)V

    .line 328
    .line 329
    .line 330
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 331
    .line 332
    :cond_e
    return-void
.end method

.method public static final UnreadMessageItem(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v7, p6

    .line 8
    .line 9
    move/from16 v9, p9

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-object/from16 v4, p8

    .line 30
    .line 31
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 32
    .line 33
    const v2, 0x6224bd96

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 37
    .line 38
    .line 39
    and-int/lit8 v2, v9, 0x6

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v2, 0x2

    .line 52
    :goto_0
    or-int/2addr v2, v9

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v2, v9

    .line 55
    :goto_1
    and-int/lit8 v5, v9, 0x30

    .line 56
    .line 57
    if-nez v5, :cond_3

    .line 58
    .line 59
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    const/16 v5, 0x20

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const/16 v5, 0x10

    .line 69
    .line 70
    :goto_2
    or-int/2addr v2, v5

    .line 71
    :cond_3
    and-int/lit16 v5, v9, 0x180

    .line 72
    .line 73
    if-nez v5, :cond_6

    .line 74
    .line 75
    and-int/lit16 v5, v9, 0x200

    .line 76
    .line 77
    if-nez v5, :cond_4

    .line 78
    .line 79
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    :goto_3
    if-eqz v5, :cond_5

    .line 89
    .line 90
    const/16 v5, 0x100

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    const/16 v5, 0x80

    .line 94
    .line 95
    :goto_4
    or-int/2addr v2, v5

    .line 96
    :cond_6
    and-int/lit16 v5, v9, 0xc00

    .line 97
    .line 98
    move-object/from16 v10, p3

    .line 99
    .line 100
    if-nez v5, :cond_8

    .line 101
    .line 102
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_7

    .line 107
    .line 108
    const/16 v5, 0x800

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_7
    const/16 v5, 0x400

    .line 112
    .line 113
    :goto_5
    or-int/2addr v2, v5

    .line 114
    :cond_8
    and-int/lit16 v5, v9, 0x6000

    .line 115
    .line 116
    move-object/from16 v11, p4

    .line 117
    .line 118
    if-nez v5, :cond_a

    .line 119
    .line 120
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_9

    .line 125
    .line 126
    const/16 v5, 0x4000

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_9
    const/16 v5, 0x2000

    .line 130
    .line 131
    :goto_6
    or-int/2addr v2, v5

    .line 132
    :cond_a
    const/high16 v5, 0x30000

    .line 133
    .line 134
    and-int/2addr v5, v9

    .line 135
    move-object/from16 v12, p5

    .line 136
    .line 137
    if-nez v5, :cond_c

    .line 138
    .line 139
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_b

    .line 144
    .line 145
    const/high16 v5, 0x20000

    .line 146
    .line 147
    goto :goto_7

    .line 148
    :cond_b
    const/high16 v5, 0x10000

    .line 149
    .line 150
    :goto_7
    or-int/2addr v2, v5

    .line 151
    :cond_c
    const/high16 v5, 0x180000

    .line 152
    .line 153
    and-int/2addr v5, v9

    .line 154
    if-nez v5, :cond_e

    .line 155
    .line 156
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_d

    .line 161
    .line 162
    const/high16 v5, 0x100000

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_d
    const/high16 v5, 0x80000

    .line 166
    .line 167
    :goto_8
    or-int/2addr v2, v5

    .line 168
    :cond_e
    move/from16 v14, p10

    .line 169
    .line 170
    and-int/lit16 v5, v14, 0x80

    .line 171
    .line 172
    const/high16 v15, 0xc00000

    .line 173
    .line 174
    if-eqz v5, :cond_10

    .line 175
    .line 176
    or-int/2addr v2, v15

    .line 177
    :cond_f
    move-object/from16 v15, p7

    .line 178
    .line 179
    :goto_9
    move/from16 v16, v2

    .line 180
    .line 181
    goto :goto_b

    .line 182
    :cond_10
    and-int/2addr v15, v9

    .line 183
    if-nez v15, :cond_f

    .line 184
    .line 185
    move-object/from16 v15, p7

    .line 186
    .line 187
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v16

    .line 191
    if-eqz v16, :cond_11

    .line 192
    .line 193
    const/high16 v16, 0x800000

    .line 194
    .line 195
    goto :goto_a

    .line 196
    :cond_11
    const/high16 v16, 0x400000

    .line 197
    .line 198
    :goto_a
    or-int v2, v2, v16

    .line 199
    .line 200
    goto :goto_9

    .line 201
    :goto_b
    const v2, 0x492493

    .line 202
    .line 203
    .line 204
    and-int v2, v16, v2

    .line 205
    .line 206
    const v13, 0x492492

    .line 207
    .line 208
    .line 209
    const/16 v18, 0x1

    .line 210
    .line 211
    if-eq v2, v13, :cond_12

    .line 212
    .line 213
    move/from16 v2, v18

    .line 214
    .line 215
    goto :goto_c

    .line 216
    :cond_12
    const/4 v2, 0x0

    .line 217
    :goto_c
    and-int/lit8 v13, v16, 0x1

    .line 218
    .line 219
    invoke-virtual {v4, v13, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-eqz v2, :cond_1a

    .line 224
    .line 225
    if-eqz v5, :cond_13

    .line 226
    .line 227
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 228
    .line 229
    move-object v15, v2

    .line 230
    :cond_13
    iget-object v12, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->excerpt:Ljava/lang/String;

    .line 231
    .line 232
    iget-object v13, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->formattedReceivedAt:Ljava/lang/String;

    .line 233
    .line 234
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 235
    .line 236
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 241
    .line 242
    iget-wide v6, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->inverseSurface:J

    .line 243
    .line 244
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 249
    .line 250
    iget-wide v8, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->inverseOnSurface:J

    .line 251
    .line 252
    new-instance v19, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;

    .line 253
    .line 254
    const/16 v24, 0x0

    .line 255
    .line 256
    move-wide/from16 v20, v6

    .line 257
    .line 258
    move-wide/from16 v22, v8

    .line 259
    .line 260
    invoke-direct/range {v19 .. v24}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;-><init>(JJLandroidx/compose/ui/graphics/Color;)V

    .line 261
    .line 262
    .line 263
    and-int/lit8 v6, v16, 0x70

    .line 264
    .line 265
    and-int/lit8 v5, v16, 0x7e

    .line 266
    .line 267
    shl-int/lit8 v7, v16, 0x3

    .line 268
    .line 269
    and-int/lit16 v7, v7, 0x1c00

    .line 270
    .line 271
    or-int/2addr v5, v7

    .line 272
    move-object v7, v2

    .line 273
    move-object/from16 v2, v19

    .line 274
    .line 275
    invoke-static/range {v0 .. v5}, Lokio/Okio;->rememberMessageItemConfiguration(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Landroidx/compose/runtime/Composer;I)Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    iget-boolean v3, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 280
    .line 281
    if-eqz v3, :cond_14

    .line 282
    .line 283
    const v5, 0x6bec9bb1

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 294
    .line 295
    iget-wide v8, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainer:J

    .line 296
    .line 297
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 302
    .line 303
    move-object/from16 p7, v2

    .line 304
    .line 305
    move/from16 v19, v3

    .line 306
    .line 307
    iget-wide v2, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurface:J

    .line 308
    .line 309
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;

    .line 310
    .line 311
    invoke-direct {v5, v8, v9, v2, v3}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;-><init>(JJ)V

    .line 312
    .line 313
    .line 314
    const/4 v2, 0x0

    .line 315
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 316
    .line 317
    .line 318
    goto :goto_d

    .line 319
    :cond_14
    move-object/from16 p7, v2

    .line 320
    .line 321
    move/from16 v19, v3

    .line 322
    .line 323
    iget-boolean v2, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->active:Z

    .line 324
    .line 325
    if-eqz v2, :cond_15

    .line 326
    .line 327
    const v2, 0x6beca52f

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 338
    .line 339
    iget-wide v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->infoContainer:J

    .line 340
    .line 341
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 346
    .line 347
    iget-wide v7, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurface:J

    .line 348
    .line 349
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;

    .line 350
    .line 351
    invoke-direct {v5, v2, v3, v7, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;-><init>(JJ)V

    .line 352
    .line 353
    .line 354
    const/4 v2, 0x0

    .line 355
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 356
    .line 357
    .line 358
    goto :goto_d

    .line 359
    :cond_15
    const v2, 0x6becad70

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 370
    .line 371
    iget-wide v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->surfaceContainerLowest:J

    .line 372
    .line 373
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 378
    .line 379
    iget-wide v7, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurface:J

    .line 380
    .line 381
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;

    .line 382
    .line 383
    invoke-direct {v5, v2, v3, v7, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;-><init>(JJ)V

    .line 384
    .line 385
    .line 386
    const/4 v2, 0x0

    .line 387
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 388
    .line 389
    .line 390
    :goto_d
    iget-object v3, v1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 391
    .line 392
    invoke-static {v3, v4}, Lokio/Options$Companion;->toContentPadding$api(Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    new-instance v7, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda0;

    .line 397
    .line 398
    const/4 v8, 0x2

    .line 399
    invoke-direct {v7, v0, v1, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;I)V

    .line 400
    .line 401
    .line 402
    const v9, 0x75e9e3a7

    .line 403
    .line 404
    .line 405
    invoke-static {v9, v7, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    new-instance v9, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda1;

    .line 410
    .line 411
    invoke-direct {v9, v0, v1, v8}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;I)V

    .line 412
    .line 413
    .line 414
    const v8, 0x1f93f54b

    .line 415
    .line 416
    .line 417
    invoke-static {v8, v9, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    const/16 v9, 0x20

    .line 422
    .line 423
    if-ne v6, v9, :cond_16

    .line 424
    .line 425
    move/from16 v6, v18

    .line 426
    .line 427
    goto :goto_e

    .line 428
    :cond_16
    move v6, v2

    .line 429
    :goto_e
    const/high16 v9, 0x380000

    .line 430
    .line 431
    and-int v9, v16, v9

    .line 432
    .line 433
    const/high16 v2, 0x100000

    .line 434
    .line 435
    if-ne v9, v2, :cond_17

    .line 436
    .line 437
    move/from16 v26, v18

    .line 438
    .line 439
    goto :goto_f

    .line 440
    :cond_17
    const/16 v26, 0x0

    .line 441
    .line 442
    :goto_f
    or-int v2, v6, v26

    .line 443
    .line 444
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v6

    .line 448
    if-nez v2, :cond_19

    .line 449
    .line 450
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 451
    .line 452
    if-ne v6, v2, :cond_18

    .line 453
    .line 454
    goto :goto_10

    .line 455
    :cond_18
    move-object/from16 v2, p6

    .line 456
    .line 457
    goto :goto_11

    .line 458
    :cond_19
    :goto_10
    new-instance v6, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda2;

    .line 459
    .line 460
    move-object/from16 v2, p6

    .line 461
    .line 462
    const/4 v9, 0x2

    .line 463
    invoke-direct {v6, v1, v2, v9}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlin/jvm/functions/Function1;I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    :goto_11
    move-object/from16 v22, v6

    .line 470
    .line 471
    check-cast v22, Lkotlin/jvm/functions/Function1;

    .line 472
    .line 473
    const/high16 v6, 0x70000

    .line 474
    .line 475
    shr-int/lit8 v9, v16, 0x6

    .line 476
    .line 477
    and-int/2addr v6, v9

    .line 478
    const/16 v9, 0x36

    .line 479
    .line 480
    or-int/2addr v6, v9

    .line 481
    shl-int/lit8 v9, v16, 0x12

    .line 482
    .line 483
    const/high16 v17, 0x70000000

    .line 484
    .line 485
    and-int v9, v9, v17

    .line 486
    .line 487
    or-int v24, v6, v9

    .line 488
    .line 489
    shr-int/lit8 v6, v16, 0xc

    .line 490
    .line 491
    and-int/lit8 v25, v6, 0x7e

    .line 492
    .line 493
    move-object/from16 v21, p5

    .line 494
    .line 495
    move-object/from16 v14, p7

    .line 496
    .line 497
    move-object/from16 v18, v3

    .line 498
    .line 499
    move-object/from16 v23, v4

    .line 500
    .line 501
    move-object/from16 v16, v5

    .line 502
    .line 503
    move-object/from16 v20, v11

    .line 504
    .line 505
    move/from16 v17, v19

    .line 506
    .line 507
    move-object v11, v8

    .line 508
    move-object/from16 v19, v10

    .line 509
    .line 510
    move-object v10, v7

    .line 511
    invoke-static/range {v10 .. v25}, Lkotlin/io/ByteStreamsKt;->MessageItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/mail/message/list/ui/component/organism/MessageItemColors;ZLandroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 512
    .line 513
    .line 514
    :goto_12
    move-object v8, v15

    .line 515
    goto :goto_13

    .line 516
    :cond_1a
    move-object v2, v7

    .line 517
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 518
    .line 519
    .line 520
    goto :goto_12

    .line 521
    :goto_13
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 522
    .line 523
    .line 524
    move-result-object v12

    .line 525
    if-eqz v12, :cond_1b

    .line 526
    .line 527
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/ReadMessageItemKt$$ExternalSyntheticLambda3;

    .line 528
    .line 529
    const/4 v11, 0x1

    .line 530
    move-object/from16 v3, p2

    .line 531
    .line 532
    move-object/from16 v4, p3

    .line 533
    .line 534
    move-object/from16 v5, p4

    .line 535
    .line 536
    move-object/from16 v6, p5

    .line 537
    .line 538
    move/from16 v9, p9

    .line 539
    .line 540
    move/from16 v10, p10

    .line 541
    .line 542
    move-object v7, v2

    .line 543
    move-object v2, v1

    .line 544
    move-object/from16 v1, p0

    .line 545
    .line 546
    invoke-direct/range {v0 .. v11}, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/ReadMessageItemKt$$ExternalSyntheticLambda3;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;III)V

    .line 547
    .line 548
    .line 549
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 550
    .line 551
    :cond_1b
    return-void
.end method

.method public static final closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_8

    .line 2
    .line 3
    if-nez p1, :cond_7

    .line 4
    .line 5
    instance-of p1, p0, Ljava/lang/AutoCloseable;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    instance-of p1, p0, Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    invoke-static {p0}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m$1(Ljava/util/concurrent/ExecutorService;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    instance-of p1, p0, Landroid/content/res/TypedArray;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    check-cast p0, Landroid/content/res/TypedArray;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    instance-of p1, p0, Landroid/media/MediaMetadataRetriever;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    check-cast p0, Landroid/media/MediaMetadataRetriever;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    instance-of p1, p0, Landroid/media/MediaDrm;

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    check-cast p0, Landroid/media/MediaDrm;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    instance-of p1, p0, Landroid/drm/DrmManagerClient;

    .line 54
    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    check-cast p0, Landroid/drm/DrmManagerClient;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_5
    instance-of p1, p0, Landroid/content/ContentProviderClient;

    .line 64
    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    check-cast p0, Landroid/content/ContentProviderClient;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_6
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_7
    :try_start_0
    invoke-static {p0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    invoke-static {p1, p0}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :cond_8
    return-void
.end method

.method public static dateCharacterOffset(Ljava/lang/String;IIZ)I
    .locals 4

    .line 1
    :goto_0
    if-ge p1, p2, :cond_7

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x9

    .line 13
    .line 14
    if-ne v0, v1, :cond_5

    .line 15
    .line 16
    :cond_0
    const/16 v1, 0x7f

    .line 17
    .line 18
    if-ge v0, v1, :cond_5

    .line 19
    .line 20
    const/16 v1, 0x30

    .line 21
    .line 22
    const/16 v3, 0x3a

    .line 23
    .line 24
    if-gt v1, v0, :cond_1

    .line 25
    .line 26
    if-ge v0, v3, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v1, 0x61

    .line 30
    .line 31
    if-gt v1, v0, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x7b

    .line 34
    .line 35
    if-ge v0, v1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/16 v1, 0x41

    .line 39
    .line 40
    if-gt v1, v0, :cond_3

    .line 41
    .line 42
    const/16 v1, 0x5b

    .line 43
    .line 44
    if-ge v0, v1, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    if-ne v0, v3, :cond_4

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    const/4 v0, 0x0

    .line 51
    goto :goto_2

    .line 52
    :cond_5
    :goto_1
    move v0, v2

    .line 53
    :goto_2
    xor-int/lit8 v1, p3, 0x1

    .line 54
    .line 55
    if-ne v0, v1, :cond_6

    .line 56
    .line 57
    return p1

    .line 58
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_7
    return p2
.end method

.method public static final defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 6
    .line 7
    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getCapturedKClass(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lkotlinx/serialization/descriptors/ContextDescriptor;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Lkotlinx/serialization/descriptors/ContextDescriptor;

    .line 9
    .line 10
    iget-object p0, p0, Lkotlinx/serialization/descriptors/ContextDescriptor;->kClass:Lkotlin/reflect/KClass;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    instance-of v0, p0, Lkotlinx/serialization/internal/SerialDescriptorForNullable;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p0, Lkotlinx/serialization/internal/SerialDescriptorForNullable;

    .line 18
    .line 19
    iget-object p0, p0, Lkotlinx/serialization/internal/SerialDescriptorForNullable;->original:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 20
    .line 21
    invoke-static {p0}, Lokhttp3/Cookie$Companion;->getCapturedKClass(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/reflect/KClass;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static isASCII(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    move v2, v0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const v4, 0xff80

    .line 16
    .line 17
    .line 18
    and-int/2addr v3, v4

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v0

    .line 25
    :cond_1
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_2
    const-string p0, "String may not be null"

    .line 28
    .line 29
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return v0
.end method

.method public static isWhitespace(C)Z
    .locals 1

    .line 25
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isWhitespace(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {v3}, Lokhttp3/Cookie$Companion;->isWhitespace(C)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public static parseExpires(Ljava/lang/String;I)J
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, v0}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    sget-object v2, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, -0x1

    .line 13
    move v4, v3

    .line 14
    move v5, v4

    .line 15
    move v6, v5

    .line 16
    move v7, v6

    .line 17
    move v8, v7

    .line 18
    move v9, v8

    .line 19
    :goto_0
    const/4 v10, 0x2

    .line 20
    const/4 v11, 0x1

    .line 21
    if-ge v1, p1, :cond_4

    .line 22
    .line 23
    add-int/lit8 v12, v1, 0x1

    .line 24
    .line 25
    invoke-static {p0, v12, p1, v11}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    invoke-virtual {v2, v1, v12}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 30
    .line 31
    .line 32
    if-ne v5, v3, :cond_0

    .line 33
    .line 34
    sget-object v1, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    const/4 v1, 0x3

    .line 69
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    if-ne v6, v3, :cond_1

    .line 82
    .line 83
    sget-object v1, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    if-ne v7, v3, :cond_2

    .line 108
    .line 109
    sget-object v1, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_2

    .line 120
    .line 121
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 129
    .line 130
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    const/4 v10, 0x6

    .line 148
    invoke-static {v1, v7, v0, v0, v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    div-int/lit8 v7, v1, 0x4

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    if-ne v4, v3, :cond_3

    .line 156
    .line 157
    sget-object v1, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    .line 158
    .line 159
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_3

    .line 168
    .line 169
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 181
    .line 182
    invoke-static {p0, v12, p1, v0}, Lokhttp3/Cookie$Companion;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_4
    const/16 p0, 0x46

    .line 189
    .line 190
    if-gt p0, v4, :cond_5

    .line 191
    .line 192
    const/16 p1, 0x64

    .line 193
    .line 194
    if-ge v4, p1, :cond_5

    .line 195
    .line 196
    add-int/lit16 v4, v4, 0x76c

    .line 197
    .line 198
    :cond_5
    if-ltz v4, :cond_6

    .line 199
    .line 200
    if-ge v4, p0, :cond_6

    .line 201
    .line 202
    add-int/lit16 v4, v4, 0x7d0

    .line 203
    .line 204
    :cond_6
    const/16 p0, 0x641

    .line 205
    .line 206
    const-wide/16 v1, 0x0

    .line 207
    .line 208
    const-string p1, "Failed requirement."

    .line 209
    .line 210
    if-lt v4, p0, :cond_c

    .line 211
    .line 212
    if-eq v7, v3, :cond_b

    .line 213
    .line 214
    if-gt v11, v6, :cond_a

    .line 215
    .line 216
    const/16 p0, 0x20

    .line 217
    .line 218
    if-ge v6, p0, :cond_a

    .line 219
    .line 220
    if-ltz v5, :cond_9

    .line 221
    .line 222
    const/16 p0, 0x18

    .line 223
    .line 224
    if-ge v5, p0, :cond_9

    .line 225
    .line 226
    if-ltz v8, :cond_8

    .line 227
    .line 228
    const/16 p0, 0x3c

    .line 229
    .line 230
    if-ge v8, p0, :cond_8

    .line 231
    .line 232
    if-ltz v9, :cond_7

    .line 233
    .line 234
    if-ge v9, p0, :cond_7

    .line 235
    .line 236
    new-instance p0, Ljava/util/GregorianCalendar;

    .line 237
    .line 238
    sget-object p1, Lokhttp3/internal/_UtilJvmKt;->UTC:Ljava/util/TimeZone;

    .line 239
    .line 240
    invoke-direct {p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v11, v4}, Ljava/util/Calendar;->set(II)V

    .line 247
    .line 248
    .line 249
    sub-int/2addr v7, v11

    .line 250
    invoke-virtual {p0, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 251
    .line 252
    .line 253
    const/4 p1, 0x5

    .line 254
    invoke-virtual {p0, p1, v6}, Ljava/util/Calendar;->set(II)V

    .line 255
    .line 256
    .line 257
    const/16 p1, 0xb

    .line 258
    .line 259
    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->set(II)V

    .line 260
    .line 261
    .line 262
    const/16 p1, 0xc

    .line 263
    .line 264
    invoke-virtual {p0, p1, v8}, Ljava/util/Calendar;->set(II)V

    .line 265
    .line 266
    .line 267
    const/16 p1, 0xd

    .line 268
    .line 269
    invoke-virtual {p0, p1, v9}, Ljava/util/Calendar;->set(II)V

    .line 270
    .line 271
    .line 272
    const/16 p1, 0xe

    .line 273
    .line 274
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 278
    .line 279
    .line 280
    move-result-wide p0

    .line 281
    return-wide p0

    .line 282
    :cond_7
    invoke-static {p1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    return-wide v1

    .line 286
    :cond_8
    invoke-static {p1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    return-wide v1

    .line 290
    :cond_9
    invoke-static {p1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    return-wide v1

    .line 294
    :cond_a
    invoke-static {p1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    return-wide v1

    .line 298
    :cond_b
    invoke-static {p1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-wide v1

    .line 302
    :cond_c
    invoke-static {p1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return-wide v1
.end method

.method public static final toHostname(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lnet/thunderbird/core/common/net/HostNameUtils;->isLegalHostNameOrIP(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "Not a valid domain or IP: \'"

    .line 12
    .line 13
    const-string v1, "\'"

    .line 14
    .line 15
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
