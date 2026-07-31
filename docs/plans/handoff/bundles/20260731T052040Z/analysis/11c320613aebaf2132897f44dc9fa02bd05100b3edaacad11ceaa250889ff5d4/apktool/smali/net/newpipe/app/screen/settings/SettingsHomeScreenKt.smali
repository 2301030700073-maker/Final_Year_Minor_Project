.class public abstract Lnet/newpipe/app/screen/settings/SettingsHomeScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final lambda$-1607639693:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lnet/newpipe/app/navigation/NavModuleKt$$ExternalSyntheticLambda1;-><init>(IB)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, -0x5fd2a28d

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lnet/newpipe/app/screen/settings/SettingsHomeScreenKt;->lambda$-1607639693:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    return-void
.end method

.method public static final SettingsHomeScreen(Lnet/newpipe/app/navigation/Navigator;Lnet/newpipe/app/viewmodel/settings/SettingsViewModel;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0xeabc97d

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    or-int/lit8 v0, p3, 0x12

    .line 10
    .line 11
    and-int/lit8 v1, v0, 0x13

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    const/16 v4, 0x12

    .line 16
    .line 17
    if-eq v1, v4, :cond_0

    .line 18
    .line 19
    move v1, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    and-int/2addr v0, v3

    .line 23
    invoke-virtual {p2, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_b

    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 30
    .line 31
    .line 32
    and-int/lit8 v0, p3, 0x1

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_2
    :goto_1
    invoke-static {p2}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    or-int/2addr p1, v0

    .line 63
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    if-ne v0, v3, :cond_4

    .line 70
    .line 71
    :cond_3
    const-class p1, Lnet/newpipe/app/navigation/Navigator;

    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    move-object p0, v0

    .line 85
    check-cast p0, Lnet/newpipe/app/navigation/Navigator;

    .line 86
    .line 87
    sget-object p1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->LocalViewModelStoreOwner:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 94
    .line 95
    if-eqz p1, :cond_a

    .line 96
    .line 97
    instance-of v0, p1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    move-object v0, p1

    .line 102
    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 103
    .line 104
    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    .line 110
    .line 111
    :goto_2
    invoke-static {p2}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const-class v5, Lnet/newpipe/app/viewmodel/settings/SettingsViewModel;

    .line 116
    .line 117
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {v5, p1, v0, v4}, Lkotlin/text/UStringsKt;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/scope/Scope;)Landroidx/lifecycle/ViewModel;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Lnet/newpipe/app/viewmodel/settings/SettingsViewModel;

    .line 130
    .line 131
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 132
    .line 133
    .line 134
    iget-object v0, p1, Lnet/newpipe/app/viewmodel/settings/SettingsViewModel;->categories:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 135
    .line 136
    invoke-static {v0, p2}, Lkotlin/io/CloseableKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const v4, -0x12df3d25

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Ljava/util/List;

    .line 151
    .line 152
    new-instance v4, Ljava/util/ArrayList;

    .line 153
    .line 154
    const/16 v5, 0xa

    .line 155
    .line 156
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_7

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    check-cast v5, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;

    .line 178
    .line 179
    invoke-virtual {v5}, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;->getTitle()Lorg/jetbrains/compose/resources/StringResource;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v5}, Lnet/newpipe/app/screen/settings/model/SettingsCategoryType;->getIcon()Lorg/jetbrains/compose/resources/DrawableResource;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    if-ne v7, v3, :cond_6

    .line 192
    .line 193
    new-instance v7, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 194
    .line 195
    const/4 v8, 0x6

    .line 196
    invoke-direct {v7, v8}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_6
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 203
    .line 204
    new-instance v8, Lnet/newpipe/app/screen/settings/model/SettingsCategory;

    .line 205
    .line 206
    invoke-direct {v8, v6, v5, v7}, Lnet/newpipe/app/screen/settings/model/SettingsCategory;-><init>(Lorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DrawableResource;Lkotlin/jvm/functions/Function0;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_7
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    if-nez v0, :cond_8

    .line 225
    .line 226
    if-ne v5, v3, :cond_9

    .line 227
    .line 228
    :cond_8
    new-instance v5, Lnet/newpipe/app/navigation/NavDisplayKt$$ExternalSyntheticLambda1;

    .line 229
    .line 230
    const/4 v0, 0x3

    .line 231
    invoke-direct {v5, p0, v0}, Lnet/newpipe/app/navigation/NavDisplayKt$$ExternalSyntheticLambda1;-><init>(Lnet/newpipe/app/navigation/Navigator;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_9
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 238
    .line 239
    invoke-static {v4, v5, v1, p2, v2}, Lnet/newpipe/app/screen/settings/SettingsHomeScreenKt;->SettingsHomeScreenContent(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 240
    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_a
    const-string p0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 244
    .line 245
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_b
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 250
    .line 251
    .line 252
    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    if-eqz p2, :cond_c

    .line 257
    .line 258
    new-instance v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;

    .line 259
    .line 260
    const/16 v1, 0x14

    .line 261
    .line 262
    invoke-direct {v0, p3, p0, p1, v1}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 263
    .line 264
    .line 265
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 266
    .line 267
    :cond_c
    return-void
.end method

.method public static final SettingsHomeScreenContent(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v15, p3

    .line 6
    .line 7
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, -0x1fe9035c

    .line 10
    .line 11
    .line 12
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int v0, p4, v0

    .line 25
    .line 26
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    const/16 v3, 0x20

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v3, 0x10

    .line 36
    .line 37
    :goto_1
    or-int/2addr v0, v3

    .line 38
    or-int/lit16 v0, v0, 0x180

    .line 39
    .line 40
    and-int/lit16 v3, v0, 0x93

    .line 41
    .line 42
    const/16 v4, 0x92

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    if-eq v3, v4, :cond_2

    .line 46
    .line 47
    move v3, v5

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/4 v3, 0x0

    .line 50
    :goto_2
    and-int/2addr v0, v5

    .line 51
    invoke-virtual {v15, v0, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 58
    .line 59
    .line 60
    and-int/lit8 v0, p4, 0x1

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 72
    .line 73
    .line 74
    move-object/from16 v0, p2

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    :goto_3
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 82
    .line 83
    if-ne v0, v3, :cond_5

    .line 84
    .line 85
    new-instance v0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    const/4 v3, 0x6

    .line 88
    invoke-direct {v0, v3}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 95
    .line 96
    :goto_4
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 97
    .line 98
    .line 99
    new-instance v3, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;

    .line 100
    .line 101
    const/16 v4, 0x15

    .line 102
    .line 103
    invoke-direct {v3, v2, v0, v4}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 104
    .line 105
    .line 106
    const v4, 0x3224bc60

    .line 107
    .line 108
    .line 109
    invoke-static {v4, v3, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    new-instance v3, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;

    .line 114
    .line 115
    const/16 v5, 0xb

    .line 116
    .line 117
    invoke-direct {v3, v1, v5}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 118
    .line 119
    .line 120
    const v5, 0x8f01bf5

    .line 121
    .line 122
    .line 123
    invoke-static {v5, v3, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    const v16, 0x30000030

    .line 128
    .line 129
    .line 130
    const/4 v3, 0x0

    .line 131
    const/4 v5, 0x0

    .line 132
    const/4 v6, 0x0

    .line 133
    const/4 v7, 0x0

    .line 134
    const/4 v8, 0x0

    .line 135
    const-wide/16 v9, 0x0

    .line 136
    .line 137
    const-wide/16 v11, 0x0

    .line 138
    .line 139
    const/4 v13, 0x0

    .line 140
    invoke-static/range {v3 .. v16}, Landroidx/compose/material3/BadgeKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 141
    .line 142
    .line 143
    move-object v3, v0

    .line 144
    goto :goto_5

    .line 145
    :cond_6
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 146
    .line 147
    .line 148
    move-object/from16 v3, p2

    .line 149
    .line 150
    :goto_5
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    if-eqz v6, :cond_7

    .line 155
    .line 156
    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda2;

    .line 157
    .line 158
    const/4 v5, 0x7

    .line 159
    move/from16 v4, p4

    .line 160
    .line 161
    invoke-direct/range {v0 .. v5}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 162
    .line 163
    .line 164
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 165
    .line 166
    :cond_7
    return-void
.end method
