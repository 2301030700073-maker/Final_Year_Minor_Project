.class public abstract Lkotlin/ranges/RangesKt;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lkotlin/ranges/RangesKt;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final ChooseArchiveFolderDialogButtons(Landroidx/compose/foundation/layout/RowScope;Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v5, p5

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-object/from16 v12, p4

    .line 18
    .line 19
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    const v0, -0x5f9e81fa    # -1.9099939E-19f

    .line 22
    .line 23
    .line 24
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    .line 27
    and-int/lit8 v0, v5, 0x30

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const/16 v0, 0x20

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/16 v0, 0x10

    .line 41
    .line 42
    :goto_0
    or-int/2addr v0, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v0, v5

    .line 45
    :goto_1
    and-int/lit16 v1, v5, 0x180

    .line 46
    .line 47
    move-object/from16 v3, p2

    .line 48
    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const/16 v1, 0x100

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v1, 0x80

    .line 61
    .line 62
    :goto_2
    or-int/2addr v0, v1

    .line 63
    :cond_3
    and-int/lit16 v1, v5, 0xc00

    .line 64
    .line 65
    move-object/from16 v4, p3

    .line 66
    .line 67
    if-nez v1, :cond_5

    .line 68
    .line 69
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    const/16 v1, 0x800

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    const/16 v1, 0x400

    .line 79
    .line 80
    :goto_3
    or-int/2addr v0, v1

    .line 81
    :cond_5
    and-int/lit16 v1, v0, 0x491

    .line 82
    .line 83
    const/16 v6, 0x490

    .line 84
    .line 85
    const/4 v15, 0x1

    .line 86
    if-eq v1, v6, :cond_6

    .line 87
    .line 88
    move v1, v15

    .line 89
    goto :goto_4

    .line 90
    :cond_6
    const/4 v1, 0x0

    .line 91
    :goto_4
    and-int/lit8 v6, v0, 0x1

    .line 92
    .line 93
    invoke-virtual {v12, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_7

    .line 98
    .line 99
    const v1, 0x7f1205dc

    .line 100
    .line 101
    .line 102
    invoke-static {v12, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    shr-int/lit8 v1, v0, 0x3

    .line 107
    .line 108
    and-int/lit8 v13, v1, 0x70

    .line 109
    .line 110
    const/16 v14, 0x3c

    .line 111
    .line 112
    const/4 v8, 0x0

    .line 113
    const/4 v9, 0x0

    .line 114
    const/4 v10, 0x0

    .line 115
    const/4 v11, 0x0

    .line 116
    move-object v7, v3

    .line 117
    invoke-static/range {v6 .. v14}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 118
    .line 119
    .line 120
    const v1, 0x7f1205dd

    .line 121
    .line 122
    .line 123
    invoke-static {v12, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    iget-boolean v1, v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;->isLoadingFolders:Z

    .line 128
    .line 129
    xor-int/lit8 v9, v1, 0x1

    .line 130
    .line 131
    shr-int/lit8 v0, v0, 0x6

    .line 132
    .line 133
    and-int/lit8 v13, v0, 0x70

    .line 134
    .line 135
    const/16 v14, 0x34

    .line 136
    .line 137
    move-object v7, v4

    .line 138
    invoke-static/range {v6 .. v14}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 143
    .line 144
    .line 145
    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    if-eqz v7, :cond_8

    .line 150
    .line 151
    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    .line 152
    .line 153
    const/16 v6, 0xf

    .line 154
    .line 155
    move-object/from16 v1, p0

    .line 156
    .line 157
    move-object/from16 v3, p2

    .line 158
    .line 159
    move-object/from16 v4, p3

    .line 160
    .line 161
    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 162
    .line 163
    .line 164
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 165
    .line 166
    :cond_8
    return-void
.end method

.method public static final DrawerView(Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v0, p9

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v2, -0x1505e255

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x4

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    move v2, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x2

    .line 29
    :goto_0
    or-int v2, p10, v2

    .line 30
    .line 31
    move-object/from16 v7, p1

    .line 32
    .line 33
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/16 v14, 0x10

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    const/16 v4, 0x20

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v4, v14

    .line 45
    :goto_1
    or-int/2addr v2, v4

    .line 46
    move-object/from16 v8, p2

    .line 47
    .line 48
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    const/16 v4, 0x100

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v4, 0x80

    .line 58
    .line 59
    :goto_2
    or-int/2addr v2, v4

    .line 60
    move-object/from16 v9, p3

    .line 61
    .line 62
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    const/16 v4, 0x800

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/16 v4, 0x400

    .line 72
    .line 73
    :goto_3
    or-int/2addr v2, v4

    .line 74
    move-object/from16 v5, p4

    .line 75
    .line 76
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_4

    .line 81
    .line 82
    const/16 v4, 0x4000

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    const/16 v4, 0x2000

    .line 86
    .line 87
    :goto_4
    or-int/2addr v2, v4

    .line 88
    move-object/from16 v6, p5

    .line 89
    .line 90
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_5

    .line 95
    .line 96
    const/high16 v4, 0x20000

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_5
    const/high16 v4, 0x10000

    .line 100
    .line 101
    :goto_5
    or-int/2addr v2, v4

    .line 102
    move-object/from16 v12, p6

    .line 103
    .line 104
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_6

    .line 109
    .line 110
    const/high16 v4, 0x100000

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_6
    const/high16 v4, 0x80000

    .line 114
    .line 115
    :goto_6
    or-int/2addr v2, v4

    .line 116
    move-object/from16 v13, p7

    .line 117
    .line 118
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_7

    .line 123
    .line 124
    const/high16 v4, 0x800000

    .line 125
    .line 126
    goto :goto_7

    .line 127
    :cond_7
    const/high16 v4, 0x400000

    .line 128
    .line 129
    :goto_7
    or-int/2addr v2, v4

    .line 130
    const/high16 v4, 0x2000000

    .line 131
    .line 132
    or-int/2addr v2, v4

    .line 133
    const v4, 0x2492493

    .line 134
    .line 135
    .line 136
    and-int/2addr v4, v2

    .line 137
    const v10, 0x2492492

    .line 138
    .line 139
    .line 140
    if-eq v4, v10, :cond_8

    .line 141
    .line 142
    const/4 v4, 0x1

    .line 143
    goto :goto_8

    .line 144
    :cond_8
    const/4 v4, 0x0

    .line 145
    :goto_8
    and-int/lit8 v10, v2, 0x1

    .line 146
    .line 147
    invoke-virtual {v0, v10, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_16

    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 154
    .line 155
    .line 156
    and-int/lit8 v4, p10, 0x1

    .line 157
    .line 158
    const v10, -0xe000001

    .line 159
    .line 160
    .line 161
    if-eqz v4, :cond_a

    .line 162
    .line 163
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_9

    .line 168
    .line 169
    goto :goto_9

    .line 170
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 171
    .line 172
    .line 173
    and-int/2addr v2, v10

    .line 174
    move-object/from16 v4, p8

    .line 175
    .line 176
    goto :goto_a

    .line 177
    :cond_a
    :goto_9
    invoke-static {v0}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    if-eqz v4, :cond_15

    .line 182
    .line 183
    invoke-static {v4}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 184
    .line 185
    .line 186
    move-result-object v18

    .line 187
    invoke-static {v0}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 188
    .line 189
    .line 190
    move-result-object v20

    .line 191
    const-class v16, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;

    .line 192
    .line 193
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 194
    .line 195
    .line 196
    move-result-object v16

    .line 197
    invoke-interface {v4}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 198
    .line 199
    .line 200
    move-result-object v17

    .line 201
    const/16 v19, 0x0

    .line 202
    .line 203
    const/16 v21, 0x0

    .line 204
    .line 205
    invoke-static/range {v16 .. v21}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    check-cast v4, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;

    .line 210
    .line 211
    and-int/2addr v2, v10

    .line 212
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 213
    .line 214
    .line 215
    iget-object v10, v4, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 216
    .line 217
    invoke-static {v10, v0}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 218
    .line 219
    .line 220
    move-result-object v16

    .line 221
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v10

    .line 225
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 230
    .line 231
    if-nez v10, :cond_b

    .line 232
    .line 233
    if-ne v11, v15, :cond_c

    .line 234
    .line 235
    :cond_b
    new-instance v11, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    .line 236
    .line 237
    invoke-direct {v11, v14, v4}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_c
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 244
    .line 245
    iget-object v10, v4, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 246
    .line 247
    move-object v5, v4

    .line 248
    new-instance v4, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;

    .line 249
    .line 250
    const/4 v6, 0x0

    .line 251
    move-object v14, v10

    .line 252
    move-object/from16 p8, v11

    .line 253
    .line 254
    move-object/from16 v10, p4

    .line 255
    .line 256
    move-object/from16 v11, p5

    .line 257
    .line 258
    invoke-direct/range {v4 .. v13}, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;Lkotlin/coroutines/Continuation;Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lkotlin/jvm/functions/Function0;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v0, v14, v4}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    iget-object v4, v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;->selectedAccountUuid:Ljava/lang/String;

    .line 271
    .line 272
    move-object/from16 v11, p8

    .line 273
    .line 274
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    and-int/lit8 v2, v2, 0xe

    .line 279
    .line 280
    if-eq v2, v3, :cond_d

    .line 281
    .line 282
    const/4 v7, 0x0

    .line 283
    goto :goto_b

    .line 284
    :cond_d
    const/4 v7, 0x1

    .line 285
    :goto_b
    or-int/2addr v6, v7

    .line 286
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    const/4 v8, 0x0

    .line 291
    if-nez v6, :cond_e

    .line 292
    .line 293
    if-ne v7, v15, :cond_f

    .line 294
    .line 295
    :cond_e
    new-instance v7, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;

    .line 296
    .line 297
    const/4 v6, 0x0

    .line 298
    invoke-direct {v7, v11, v1, v8, v6}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;Lkotlin/coroutines/Continuation;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    :cond_f
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 305
    .line 306
    invoke-static {v0, v4, v7}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 307
    .line 308
    .line 309
    iget-object v4, v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;->selectedFolderId:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    if-eq v2, v3, :cond_10

    .line 316
    .line 317
    const/4 v2, 0x0

    .line 318
    goto :goto_c

    .line 319
    :cond_10
    const/4 v2, 0x1

    .line 320
    :goto_c
    or-int/2addr v2, v6

    .line 321
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    if-nez v2, :cond_11

    .line 326
    .line 327
    if-ne v3, v15, :cond_12

    .line 328
    .line 329
    :cond_11
    new-instance v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;

    .line 330
    .line 331
    const/4 v2, 0x1

    .line 332
    invoke-direct {v3, v11, v1, v8, v2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$DrawerView$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;Lkotlin/coroutines/Continuation;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    :cond_12
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 339
    .line 340
    invoke-static {v0, v4, v3}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 341
    .line 342
    .line 343
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    check-cast v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 348
    .line 349
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    if-nez v3, :cond_13

    .line 358
    .line 359
    if-ne v4, v15, :cond_14

    .line 360
    .line 361
    :cond_13
    new-instance v4, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;

    .line 362
    .line 363
    const/16 v3, 0x10

    .line 364
    .line 365
    invoke-direct {v4, v3, v11}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda7;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    :cond_14
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 372
    .line 373
    const/4 v6, 0x0

    .line 374
    invoke-static {v2, v4, v8, v0, v6}, Lokhttp3/Handshake$Companion;->DrawerContent(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 375
    .line 376
    .line 377
    move-object v9, v5

    .line 378
    goto :goto_d

    .line 379
    :cond_15
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 380
    .line 381
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    return-void

    .line 385
    :cond_16
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 386
    .line 387
    .line 388
    move-object/from16 v9, p8

    .line 389
    .line 390
    :goto_d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 391
    .line 392
    .line 393
    move-result-object v11

    .line 394
    if-eqz v11, :cond_17

    .line 395
    .line 396
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$$ExternalSyntheticLambda1;

    .line 397
    .line 398
    move-object/from16 v2, p1

    .line 399
    .line 400
    move-object/from16 v3, p2

    .line 401
    .line 402
    move-object/from16 v4, p3

    .line 403
    .line 404
    move-object/from16 v5, p4

    .line 405
    .line 406
    move-object/from16 v6, p5

    .line 407
    .line 408
    move-object/from16 v7, p6

    .line 409
    .line 410
    move-object/from16 v8, p7

    .line 411
    .line 412
    move/from16 v10, p10

    .line 413
    .line 414
    invoke-direct/range {v0 .. v10}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;I)V

    .line 415
    .line 416
    .line 417
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 418
    .line 419
    :cond_17
    return-void
.end method

.method public static final GeneralSettingsProfileView-T042LqI(Ljava/lang/String;JLnet/thunderbird/feature/account/avatar/Avatar;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    move/from16 v11, p6

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-object/from16 v8, p5

    .line 13
    .line 14
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    const v3, 0x5755ebe7

    .line 17
    .line 18
    .line 19
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v3, v11, 0x6

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v3, 0x2

    .line 35
    :goto_0
    or-int/2addr v3, v11

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v3, v11

    .line 38
    :goto_1
    and-int/lit8 v4, v11, 0x30

    .line 39
    .line 40
    const/16 v5, 0x20

    .line 41
    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    move v4, v5

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v4, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v3, v4

    .line 56
    :cond_3
    and-int/lit16 v4, v11, 0x180

    .line 57
    .line 58
    move-wide/from16 v6, p1

    .line 59
    .line 60
    if-nez v4, :cond_5

    .line 61
    .line 62
    invoke-virtual {v8, v6, v7}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    const/16 v4, 0x100

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/16 v4, 0x80

    .line 72
    .line 73
    :goto_3
    or-int/2addr v3, v4

    .line 74
    :cond_5
    and-int/lit16 v4, v11, 0xc00

    .line 75
    .line 76
    if-nez v4, :cond_8

    .line 77
    .line 78
    and-int/lit16 v4, v11, 0x1000

    .line 79
    .line 80
    if-nez v4, :cond_6

    .line 81
    .line 82
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    goto :goto_4

    .line 87
    :cond_6
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    :goto_4
    if-eqz v4, :cond_7

    .line 92
    .line 93
    const/16 v4, 0x800

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_7
    const/16 v4, 0x400

    .line 97
    .line 98
    :goto_5
    or-int/2addr v3, v4

    .line 99
    :cond_8
    and-int/lit16 v4, v11, 0x6000

    .line 100
    .line 101
    if-nez v4, :cond_a

    .line 102
    .line 103
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_9

    .line 108
    .line 109
    const/16 v4, 0x4000

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_9
    const/16 v4, 0x2000

    .line 113
    .line 114
    :goto_6
    or-int/2addr v3, v4

    .line 115
    :cond_a
    and-int/lit16 v4, v3, 0x2493

    .line 116
    .line 117
    const/16 v9, 0x2492

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    const/4 v12, 0x1

    .line 121
    if-eq v4, v9, :cond_b

    .line 122
    .line 123
    move v4, v12

    .line 124
    goto :goto_7

    .line 125
    :cond_b
    move v4, v10

    .line 126
    :goto_7
    and-int/lit8 v9, v3, 0x1

    .line 127
    .line 128
    invoke-virtual {v8, v9, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_d

    .line 133
    .line 134
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 135
    .line 136
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    check-cast v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 141
    .line 142
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    const/high16 v9, 0x41800000    # 16.0f

    .line 146
    .line 147
    invoke-static {v0, v9}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    .line 152
    .line 153
    invoke-static {v13, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    iget-wide v13, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 158
    .line 159
    ushr-long v15, v13, v5

    .line 160
    .line 161
    xor-long/2addr v13, v15

    .line 162
    long-to-int v5, v13

    .line 163
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    invoke-static {v8, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 172
    .line 173
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 177
    .line 178
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 179
    .line 180
    .line 181
    iget-boolean v15, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 182
    .line 183
    if-eqz v15, :cond_c

    .line 184
    .line 185
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 186
    .line 187
    .line 188
    goto :goto_8

    .line 189
    :cond_c
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 190
    .line 191
    .line 192
    :goto_8
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 193
    .line 194
    invoke-static {v8, v10, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 195
    .line 196
    .line 197
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 198
    .line 199
    invoke-static {v8, v13, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 207
    .line 208
    invoke-static {v8, v5, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 209
    .line 210
    .line 211
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 212
    .line 213
    invoke-static {v8, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 214
    .line 215
    .line 216
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 217
    .line 218
    invoke-static {v8, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    const/16 v17, 0x0

    .line 231
    .line 232
    const/16 v18, 0xd

    .line 233
    .line 234
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 235
    .line 236
    const/4 v14, 0x0

    .line 237
    const/high16 v15, 0x42000000    # 32.0f

    .line 238
    .line 239
    const/16 v16, 0x0

    .line 240
    .line 241
    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 246
    .line 247
    invoke-interface {v4, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    and-int/lit8 v5, v3, 0x7e

    .line 252
    .line 253
    invoke-static {v1, v4, v8, v5}, Lkotlin/ranges/RangesKt;->ProfileCard(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 254
    .line 255
    .line 256
    shr-int/lit8 v4, v3, 0x9

    .line 257
    .line 258
    and-int/lit8 v4, v4, 0xe

    .line 259
    .line 260
    or-int/lit16 v4, v4, 0x180

    .line 261
    .line 262
    shr-int/lit8 v3, v3, 0x3

    .line 263
    .line 264
    and-int/lit8 v3, v3, 0x70

    .line 265
    .line 266
    or-int v9, v4, v3

    .line 267
    .line 268
    const/16 v10, 0x38

    .line 269
    .line 270
    sget-object v5, Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;->LARGE:Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;

    .line 271
    .line 272
    const/4 v6, 0x0

    .line 273
    const/4 v7, 0x0

    .line 274
    move-wide/from16 v3, p1

    .line 275
    .line 276
    invoke-static/range {v2 .. v10}, Lorg/jsoup/nodes/NodeUtils;->Avatar-OadGlvw(Lnet/thunderbird/feature/account/avatar/Avatar;JLnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 280
    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_d
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 284
    .line 285
    .line 286
    :goto_9
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    if-eqz v7, :cond_e

    .line 291
    .line 292
    new-instance v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;

    .line 293
    .line 294
    move-wide/from16 v2, p1

    .line 295
    .line 296
    move-object/from16 v4, p3

    .line 297
    .line 298
    move-object/from16 v5, p4

    .line 299
    .line 300
    move v6, v11

    .line 301
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;JLnet/thunderbird/feature/account/avatar/Avatar;Landroidx/compose/ui/Modifier;I)V

    .line 302
    .line 303
    .line 304
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 305
    .line 306
    :cond_e
    return-void
.end method

.method public static final ProfileCard(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    move-object v5, p2

    .line 2
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p2, 0x5d869851

    .line 5
    .line 6
    .line 7
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 p2, p3, 0x6

    .line 11
    .line 12
    const/4 v7, 0x4

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    move p2, v7

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p2, 0x2

    .line 24
    :goto_0
    or-int/2addr p2, p3

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move p2, p3

    .line 27
    :goto_1
    and-int/lit8 v0, p3, 0x30

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/16 v0, 0x20

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v0, 0x10

    .line 42
    .line 43
    :goto_2
    or-int/2addr p2, v0

    .line 44
    :cond_3
    and-int/lit16 v0, p3, 0x180

    .line 45
    .line 46
    if-nez v0, :cond_5

    .line 47
    .line 48
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const/16 v0, 0x100

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    const/16 v0, 0x80

    .line 58
    .line 59
    :goto_3
    or-int/2addr p2, v0

    .line 60
    :cond_5
    and-int/lit16 v0, p2, 0x93

    .line 61
    .line 62
    const/16 v1, 0x92

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    if-eq v0, v1, :cond_6

    .line 66
    .line 67
    move v0, v2

    .line 68
    goto :goto_4

    .line 69
    :cond_6
    const/4 v0, 0x0

    .line 70
    :goto_4
    and-int/2addr p2, v2

    .line 71
    invoke-virtual {v5, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_7

    .line 76
    .line 77
    sget-object p2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 78
    .line 79
    invoke-interface {p1, p2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance p2, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;

    .line 84
    .line 85
    const/4 v1, 0x5

    .line 86
    invoke-direct {p2, p0, v1}, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    const v1, 0x758a4c15

    .line 90
    .line 91
    .line 92
    invoke-static {v1, p2, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    const/high16 v6, 0x30000

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    const/4 v2, 0x0

    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-static/range {v0 .. v6}, Lcom/fsck/k9/sasl/OAuthBearer;->CardElevated(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 102
    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_7
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 106
    .line 107
    .line 108
    :goto_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    if-eqz p2, :cond_8

    .line 113
    .line 114
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda6;

    .line 115
    .line 116
    invoke-direct {v0, p0, p1, p3, v7}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;II)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 120
    .line 121
    :cond_8
    return-void
.end method

.method public static final SelectItem(Lnet/thunderbird/core/ui/setting/SettingValue$Select;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
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
    const v0, 0x6d38377f

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
    if-eq v1, v2, :cond_7

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    goto :goto_5

    .line 84
    :cond_7
    const/4 v1, 0x0

    .line 85
    :goto_5
    and-int/lit8 v2, v0, 0x1

    .line 86
    .line 87
    invoke-virtual {v10, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_8

    .line 92
    .line 93
    iget-object v1, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->icon:Lkotlin/jvm/functions/Function0;

    .line 94
    .line 95
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    move-object v6, v1

    .line 100
    check-cast v6, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 101
    .line 102
    new-instance v1, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    const/16 v2, 0xb

    .line 105
    .line 106
    invoke-direct {v1, v2, p0}, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    const v2, 0x60c2dff1

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v1, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    shr-int/lit8 v1, v0, 0x3

    .line 117
    .line 118
    and-int/lit8 v1, v1, 0xe

    .line 119
    .line 120
    or-int/lit16 v1, v1, 0x6000

    .line 121
    .line 122
    and-int/lit16 v0, v0, 0x380

    .line 123
    .line 124
    or-int v11, v1, v0

    .line 125
    .line 126
    const/16 v12, 0x8

    .line 127
    .line 128
    const/4 v8, 0x0

    .line 129
    move-object v5, p1

    .line 130
    move-object v7, p2

    .line 131
    invoke-static/range {v5 .. v12}, Lokhttp3/Cookie$Companion;->SettingItemLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 132
    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 136
    .line 137
    .line 138
    :goto_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    if-eqz v6, :cond_9

    .line 143
    .line 144
    new-instance v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;

    .line 145
    .line 146
    const/4 v5, 0x3

    .line 147
    move-object v1, p0

    .line 148
    move-object v2, p1

    .line 149
    move-object v3, p2

    .line 150
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 151
    .line 152
    .line 153
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 154
    .line 155
    :cond_9
    return-void
.end method

.method public static final SettingTopBar(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v4, p4

    .line 8
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const p4, -0x6ea723ad

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4, p4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    if-eqz p4, :cond_0

    .line 21
    .line 22
    const/4 p4, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p4, 0x2

    .line 25
    :goto_0
    or-int/2addr p4, p5

    .line 26
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x20

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v0, 0x10

    .line 36
    .line 37
    :goto_1
    or-int/2addr p4, v0

    .line 38
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/16 v0, 0x100

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v0, 0x80

    .line 48
    .line 49
    :goto_2
    or-int/2addr p4, v0

    .line 50
    invoke-virtual {v4, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    const/16 v0, 0x800

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const/16 v0, 0x400

    .line 60
    .line 61
    :goto_3
    or-int/2addr p4, v0

    .line 62
    and-int/lit16 v0, p4, 0x493

    .line 63
    .line 64
    const/16 v1, 0x492

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    if-eq v0, v1, :cond_4

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    goto :goto_4

    .line 71
    :cond_4
    move v0, v7

    .line 72
    :goto_4
    and-int/lit8 v1, p4, 0x1

    .line 73
    .line 74
    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    const v0, 0x33d1f838

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 86
    .line 87
    .line 88
    and-int/lit16 v0, p4, 0x3fe

    .line 89
    .line 90
    const v1, 0xe000

    .line 91
    .line 92
    .line 93
    shl-int/lit8 p4, p4, 0x3

    .line 94
    .line 95
    and-int/2addr p4, v1

    .line 96
    or-int v6, v0, p4

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    move-object v0, p0

    .line 100
    move-object v1, p1

    .line 101
    move-object v2, p2

    .line 102
    move-object v5, v4

    .line 103
    move-object v4, p3

    .line 104
    invoke-static/range {v0 .. v6}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->SubtitleTopAppBarWithBackButton(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 105
    .line 106
    .line 107
    move-object p2, v1

    .line 108
    move-object p3, v2

    .line 109
    move-object p0, v4

    .line 110
    move-object v4, v5

    .line 111
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_5
    move-object v0, p0

    .line 116
    move-object p0, p3

    .line 117
    move-object p3, p2

    .line 118
    move-object p2, p1

    .line 119
    const p1, 0x33d4cbe0

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 123
    .line 124
    .line 125
    and-int/lit8 p1, p4, 0xe

    .line 126
    .line 127
    shr-int/lit8 p4, p4, 0x3

    .line 128
    .line 129
    and-int/lit8 p4, p4, 0x70

    .line 130
    .line 131
    or-int v5, p1, p4

    .line 132
    .line 133
    const/4 v2, 0x0

    .line 134
    const/4 v3, 0x0

    .line 135
    move-object v1, p3

    .line 136
    invoke-static/range {v0 .. v5}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->TopAppBarWithBackButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 140
    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_6
    move-object v0, p0

    .line 144
    move-object p0, p3

    .line 145
    move-object p3, p2

    .line 146
    move-object p2, p1

    .line 147
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 148
    .line 149
    .line 150
    :goto_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    move-object p4, p0

    .line 157
    new-instance p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;

    .line 158
    .line 159
    move-object p1, v0

    .line 160
    invoke-direct/range {p0 .. p5}, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;I)V

    .line 161
    .line 162
    .line 163
    iput-object p0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 164
    .line 165
    :cond_7
    return-void
.end method

.method public static final awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;

    .line 7
    .line 8
    iget v1, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget-object p1, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->L$1:Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 57
    .line 58
    invoke-interface {p2, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-ne p2, p0, :cond_4

    .line 63
    .line 64
    :try_start_1
    iput-object p1, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->L$1:Lkotlin/jvm/functions/Function0;

    .line 65
    .line 66
    iput v3, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->label:I

    .line 67
    .line 68
    new-instance p2, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 69
    .line 70
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p2, v3, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 87
    .line 88
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProducerCoroutine;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->invokeOnClose(Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 98
    .line 99
    if-ne p0, p2, :cond_3

    .line 100
    .line 101
    return-object p2

    .line 102
    :cond_3
    :goto_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p0

    .line 108
    :goto_2
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_4
    const-string p0, "awaitClose() can only be invoked from the producer context"

    .line 113
    .line 114
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object v2
.end method

.method public static coerceIn(DDD)D
    .locals 1

    cmpl-double v0, p2, p4

    if-gtz v0, :cond_2

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmpl-double p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot coerce value to an empty range: maximum "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p4, " is less than minimum "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coerceIn(FFF)F
    .locals 2

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0

    .line 50
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coerceIn(III)I
    .locals 2

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coerceIn(JJJ)J
    .locals 1

    .line 1
    cmp-long v0, p2, p4

    .line 2
    .line 3
    if-gtz v0, :cond_2

    .line 4
    .line 5
    cmp-long v0, p0, p2

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    return-wide p2

    .line 10
    :cond_0
    cmp-long p2, p0, p4

    .line 11
    .line 12
    if-lez p2, :cond_1

    .line 13
    .line 14
    return-wide p4

    .line 15
    :cond_1
    return-wide p0

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "Cannot coerce value to an empty range: maximum "

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p4, " is less than minimum "

    .line 29
    .line 30
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 p2, 0x2e

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public static encodeToString([B)Ljava/lang/String;
    .locals 14

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x5

    .line 3
    rem-int/2addr v0, v1

    .line 4
    int-to-double v2, v0

    .line 5
    const-wide v4, 0x3ff999999999999aL    # 1.6

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    mul-double/2addr v2, v4

    .line 11
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    .line 12
    .line 13
    sub-double/2addr v4, v2

    .line 14
    double-to-int v0, v4

    .line 15
    rem-int/lit8 v0, v0, 0x8

    .line 16
    .line 17
    array-length v2, p0

    .line 18
    add-int/2addr v2, v0

    .line 19
    new-array v2, v2, [B

    .line 20
    .line 21
    array-length v3, p0

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    move v5, v4

    .line 32
    :goto_0
    array-length v6, p0

    .line 33
    if-ge v5, v6, :cond_0

    .line 34
    .line 35
    aget-byte v6, v2, v5

    .line 36
    .line 37
    and-int/lit16 v6, v6, 0xff

    .line 38
    .line 39
    int-to-long v6, v6

    .line 40
    const/16 v8, 0x20

    .line 41
    .line 42
    shl-long/2addr v6, v8

    .line 43
    add-int/lit8 v8, v5, 0x1

    .line 44
    .line 45
    aget-byte v8, v2, v8

    .line 46
    .line 47
    and-int/lit16 v8, v8, 0xff

    .line 48
    .line 49
    int-to-long v8, v8

    .line 50
    const/16 v10, 0x18

    .line 51
    .line 52
    shl-long/2addr v8, v10

    .line 53
    add-long/2addr v6, v8

    .line 54
    add-int/lit8 v8, v5, 0x2

    .line 55
    .line 56
    aget-byte v8, v2, v8

    .line 57
    .line 58
    and-int/lit16 v8, v8, 0xff

    .line 59
    .line 60
    shl-int/lit8 v8, v8, 0x10

    .line 61
    .line 62
    int-to-long v8, v8

    .line 63
    add-long/2addr v6, v8

    .line 64
    add-int/lit8 v8, v5, 0x3

    .line 65
    .line 66
    aget-byte v8, v2, v8

    .line 67
    .line 68
    and-int/lit16 v8, v8, 0xff

    .line 69
    .line 70
    shl-int/lit8 v8, v8, 0x8

    .line 71
    .line 72
    int-to-long v8, v8

    .line 73
    add-long/2addr v6, v8

    .line 74
    add-int/lit8 v8, v5, 0x4

    .line 75
    .line 76
    aget-byte v8, v2, v8

    .line 77
    .line 78
    and-int/lit16 v8, v8, 0xff

    .line 79
    .line 80
    int-to-long v8, v8

    .line 81
    add-long/2addr v6, v8

    .line 82
    const/16 v8, 0x23

    .line 83
    .line 84
    shr-long v8, v6, v8

    .line 85
    .line 86
    const-wide/16 v10, 0x1f

    .line 87
    .line 88
    and-long/2addr v8, v10

    .line 89
    long-to-int v8, v8

    .line 90
    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 91
    .line 92
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const/16 v8, 0x1e

    .line 100
    .line 101
    shr-long v12, v6, v8

    .line 102
    .line 103
    and-long/2addr v12, v10

    .line 104
    long-to-int v8, v12

    .line 105
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const/16 v8, 0x19

    .line 113
    .line 114
    shr-long v12, v6, v8

    .line 115
    .line 116
    and-long/2addr v12, v10

    .line 117
    long-to-int v8, v12

    .line 118
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const/16 v8, 0x14

    .line 126
    .line 127
    shr-long v12, v6, v8

    .line 128
    .line 129
    and-long/2addr v12, v10

    .line 130
    long-to-int v8, v12

    .line 131
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const/16 v8, 0xf

    .line 139
    .line 140
    shr-long v12, v6, v8

    .line 141
    .line 142
    and-long/2addr v12, v10

    .line 143
    long-to-int v8, v12

    .line 144
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const/16 v8, 0xa

    .line 152
    .line 153
    shr-long v12, v6, v8

    .line 154
    .line 155
    and-long/2addr v12, v10

    .line 156
    long-to-int v8, v12

    .line 157
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    shr-long v12, v6, v1

    .line 165
    .line 166
    and-long/2addr v12, v10

    .line 167
    long-to-int v8, v12

    .line 168
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    and-long/2addr v6, v10

    .line 176
    long-to-int v6, v6

    .line 177
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    add-int/lit8 v5, v5, 0x5

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    sub-int/2addr p0, v0

    .line 193
    invoke-virtual {v3, v4, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    const-string v1, "======"

    .line 198
    .line 199
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {p0, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    return-object p0
.end method

.method public static get(Ljava/lang/String;)Lokhttp3/MediaType;
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokhttp3/MediaType;->TYPE_SUBTYPE:Lkotlin/text/Regex;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p0}, Lkotlin/text/Regex;->matchAt(ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/16 v2, 0x22

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_7

    .line 15
    .line 16
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lkotlin/collections/ReversedListReadOnly;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-virtual {v4, v5}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/String;

    .line 28
    .line 29
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 30
    .line 31
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Lkotlin/collections/ReversedListReadOnly;

    .line 43
    .line 44
    const/4 v8, 0x2

    .line 45
    invoke-virtual {v7, v8}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    check-cast v7, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v7, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v7, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget v0, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 68
    .line 69
    :goto_0
    add-int/2addr v0, v5

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-ge v0, v9, :cond_6

    .line 75
    .line 76
    sget-object v9, Lokhttp3/MediaType;->PARAMETER:Lkotlin/text/Regex;

    .line 77
    .line 78
    invoke-virtual {v9, v0, p0}, Lkotlin/text/Regex;->matchAt(ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    if-eqz v9, :cond_5

    .line 83
    .line 84
    iget-object v0, v9, Lkotlin/text/MatcherMatchResult;->groups:Lkotlin/text/MatcherMatchResult$groups$1;

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Lkotlin/text/MatcherMatchResult$groups$1;->get(I)Lkotlin/text/MatchGroup;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    if-eqz v10, :cond_0

    .line 91
    .line 92
    iget-object v10, v10, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_0
    move-object v10, v3

    .line 96
    :goto_1
    if-nez v10, :cond_1

    .line 97
    .line 98
    invoke-virtual {v9}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget v0, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0, v8}, Lkotlin/text/MatcherMatchResult$groups$1;->get(I)Lkotlin/text/MatchGroup;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    if-eqz v11, :cond_2

    .line 110
    .line 111
    iget-object v11, v11, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    move-object v11, v3

    .line 115
    :goto_2
    if-nez v11, :cond_3

    .line 116
    .line 117
    const/4 v11, 0x3

    .line 118
    invoke-virtual {v0, v11}, Lkotlin/text/MatcherMatchResult$groups$1;->get(I)Lkotlin/text/MatchGroup;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-object v11, v0, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_3
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-lez v0, :cond_4

    .line 133
    .line 134
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    const/16 v12, 0x27

    .line 139
    .line 140
    invoke-static {v0, v12, v1}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    invoke-static {v12, v11}, Lkotlin/text/StringsKt;->endsWith$default(CLjava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-le v0, v8, :cond_4

    .line 157
    .line 158
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    sub-int/2addr v0, v5

    .line 163
    invoke-virtual {v11, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    :cond_4
    :goto_3
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget v0, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-string v1, "\" for: \""

    .line 185
    .line 186
    const-string v4, "Parameter is not formatted correctly: \""

    .line 187
    .line 188
    invoke-static {v4, v0, v1, p0, v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 189
    .line 190
    .line 191
    return-object v3

    .line 192
    :cond_6
    new-instance v0, Lokhttp3/MediaType;

    .line 193
    .line 194
    new-array v1, v1, [Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    check-cast v1, [Ljava/lang/String;

    .line 201
    .line 202
    invoke-direct {v0, p0, v4, v6, v1}, Lokhttp3/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-object v0

    .line 206
    :cond_7
    const-string v0, "No subtype found for: \""

    .line 207
    .line 208
    invoke-static {v2, v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-object v3
.end method

.method public static final getCurrentOrPreview(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Lorg/jetbrains/compose/resources/AndroidContextProviderKt;->PreviewContextConfigurationEffect(Landroidx/compose/runtime/Composer;I)V

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 15
    .line 16
    return-object p0
.end method

.method public static getSystemPattern(Lnet/thunderbird/feature/notification/VibratePattern;I)[J
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/thunderbird/feature/notification/VibratePattern;->vibrationPattern:[J

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    mul-int v1, v0, p1

    .line 8
    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, p1, :cond_0

    .line 14
    .line 15
    mul-int/lit8 v4, v3, 0x2

    .line 16
    .line 17
    invoke-static {p0, v1, v4, v2, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto([J[JIII)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-wide/16 p0, 0x0

    .line 24
    .line 25
    aput-wide p0, v1, v2

    .line 26
    .line 27
    return-object v1
.end method

.method public static step(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget v0, p0, Lkotlin/ranges/IntProgression;->first:I

    .line 16
    .line 17
    iget v1, p0, Lkotlin/ranges/IntProgression;->last:I

    .line 18
    .line 19
    iget p0, p0, Lkotlin/ranges/IntProgression;->step:I

    .line 20
    .line 21
    if-lez p0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    neg-int p1, p1

    .line 25
    :goto_1
    new-instance p0, Lkotlin/ranges/IntProgression;

    .line 26
    .line 27
    invoke-direct {p0, v0, v1, p1}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "Step must be positive, was: "

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v0, 0x2e

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public static final toPropertyMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 6

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    instance-of v0, p0, Ljava/util/Map;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    array-length v2, v0

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v2, :cond_2

    .line 29
    .line 30
    aget-object v4, v0, v3

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    .line 55
    .line 56
    const/16 v2, 0x17

    .line 57
    .line 58
    invoke-direct {v0, v2}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lkotlin/collections/builders/MapBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :catch_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/reflect/Field;

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v3, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_4
    :goto_2
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 111
    .line 112
    return-object p0
.end method

.method public static until(II)Lkotlin/ranges/IntRange;
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/ranges/IntRange;->EMPTY:Lkotlin/ranges/IntRange;

    .line 6
    .line 7
    sget-object p0, Lkotlin/ranges/IntRange;->EMPTY:Lkotlin/ranges/IntRange;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr p1, v1

    .line 14
    invoke-direct {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/ranges/RangesKt;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Lkotlin/ranges/RangesKt;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/ranges/RangesKt;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
