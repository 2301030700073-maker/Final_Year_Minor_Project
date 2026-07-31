.class public abstract Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$-601351087:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$1191111253:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, -0x23d7e3af

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsScreenKt;->lambda$-601351087:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    new-instance v0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;

    .line 20
    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 27
    .line 28
    const v2, 0x46feea55

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsScreenKt;->lambda$1191111253:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 35
    .line 36
    return-void
.end method

.method public static final DisplayOptionsContent(Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move/from16 v7, p6

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
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-object/from16 v8, p5

    .line 13
    .line 14
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    const v0, 0x33a3e8c5

    .line 17
    .line 18
    .line 19
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v0, v7, 0x6

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    and-int/lit8 v0, v7, 0x8

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v0, 0x2

    .line 44
    :goto_1
    or-int/2addr v0, v7

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move v0, v7

    .line 47
    :goto_2
    and-int/lit8 v2, v7, 0x30

    .line 48
    .line 49
    if-nez v2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    const/16 v3, 0x20

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    const/16 v3, 0x10

    .line 61
    .line 62
    :goto_3
    or-int/2addr v0, v3

    .line 63
    :cond_4
    and-int/lit16 v3, v7, 0x180

    .line 64
    .line 65
    if-nez v3, :cond_6

    .line 66
    .line 67
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_5

    .line 72
    .line 73
    const/16 v3, 0x100

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_5
    const/16 v3, 0x80

    .line 77
    .line 78
    :goto_4
    or-int/2addr v0, v3

    .line 79
    :cond_6
    and-int/lit16 v3, v7, 0xc00

    .line 80
    .line 81
    if-nez v3, :cond_8

    .line 82
    .line 83
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_7

    .line 88
    .line 89
    const/16 v3, 0x800

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_7
    const/16 v3, 0x400

    .line 93
    .line 94
    :goto_5
    or-int/2addr v0, v3

    .line 95
    :cond_8
    or-int/lit16 v0, v0, 0x6000

    .line 96
    .line 97
    and-int/lit16 v3, v0, 0x2493

    .line 98
    .line 99
    const/16 v5, 0x2492

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    const/4 v10, 0x1

    .line 103
    if-eq v3, v5, :cond_9

    .line 104
    .line 105
    move v3, v10

    .line 106
    goto :goto_6

    .line 107
    :cond_9
    move v3, v9

    .line 108
    :goto_6
    and-int/2addr v0, v10

    .line 109
    invoke-virtual {v8, v0, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_a

    .line 114
    .line 115
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 116
    .line 117
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    move-object v3, v0

    .line 122
    check-cast v3, Landroid/content/res/Resources;

    .line 123
    .line 124
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 125
    .line 126
    const-string v5, "DisplayOptionsContent"

    .line 127
    .line 128
    invoke-static {v0, v5}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0, p2}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0, p2}, Landroidx/compose/foundation/layout/OffsetKt;->consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 141
    .line 142
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    new-instance v0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    const/4 v5, 0x5

    .line 149
    move-object v2, p0

    .line 150
    move-object v4, p1

    .line 151
    move-object v1, p3

    .line 152
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    const v1, -0x65fb64bb

    .line 156
    .line 157
    .line 158
    invoke-static {v1, v0, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const/16 v1, 0x30

    .line 163
    .line 164
    invoke-static {v10, v0, v8, v1, v9}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->ResponsiveWidthContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 165
    .line 166
    .line 167
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 168
    .line 169
    move-object v5, v0

    .line 170
    goto :goto_7

    .line 171
    :cond_a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 172
    .line 173
    .line 174
    move-object v5, p4

    .line 175
    :goto_7
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    if-eqz v8, :cond_b

    .line 180
    .line 181
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;

    .line 182
    .line 183
    const/4 v7, 0x6

    .line 184
    move-object v1, p0

    .line 185
    move-object v2, p1

    .line 186
    move-object v3, p2

    .line 187
    move-object v4, p3

    .line 188
    move/from16 v6, p6

    .line 189
    .line 190
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lkotlin/Function;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/Modifier;II)V

    .line 191
    .line 192
    .line 193
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 194
    .line 195
    :cond_b
    return-void
.end method

.method public static final DisplayOptionsScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-object/from16 v14, p5

    .line 18
    .line 19
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    const v0, -0x451bc3ac

    .line 22
    .line 23
    .line 24
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    .line 27
    move-object/from16 v4, p0

    .line 28
    .line 29
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x4

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    move v0, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x2

    .line 39
    :goto_0
    or-int v0, p6, v0

    .line 40
    .line 41
    move-object/from16 v3, p1

    .line 42
    .line 43
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    const/16 v5, 0x20

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/16 v5, 0x10

    .line 53
    .line 54
    :goto_1
    or-int/2addr v0, v5

    .line 55
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    const/16 v5, 0x100

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/16 v5, 0x80

    .line 65
    .line 66
    :goto_2
    or-int/2addr v0, v5

    .line 67
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    const/16 v5, 0x800

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    const/16 v5, 0x400

    .line 77
    .line 78
    :goto_3
    or-int/2addr v0, v5

    .line 79
    or-int/lit16 v0, v0, 0x6000

    .line 80
    .line 81
    and-int/lit16 v5, v0, 0x2493

    .line 82
    .line 83
    const/16 v7, 0x2492

    .line 84
    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v9, 0x1

    .line 87
    if-eq v5, v7, :cond_4

    .line 88
    .line 89
    move v5, v9

    .line 90
    goto :goto_4

    .line 91
    :cond_4
    move v5, v8

    .line 92
    :goto_4
    and-int/lit8 v7, v0, 0x1

    .line 93
    .line 94
    invoke-virtual {v14, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_e

    .line 99
    .line 100
    const/4 v7, 0x6

    .line 101
    shr-int/2addr v0, v7

    .line 102
    iget-object v5, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 103
    .line 104
    invoke-static {v5, v14}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    and-int/lit8 v5, v0, 0xe

    .line 109
    .line 110
    xor-int/2addr v5, v7

    .line 111
    if-le v5, v2, :cond_5

    .line 112
    .line 113
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_6

    .line 118
    .line 119
    :cond_5
    and-int/2addr v0, v7

    .line 120
    if-ne v0, v2, :cond_7

    .line 121
    .line 122
    :cond_6
    move v0, v9

    .line 123
    goto :goto_5

    .line 124
    :cond_7
    move v0, v8

    .line 125
    :goto_5
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 130
    .line 131
    if-nez v0, :cond_8

    .line 132
    .line 133
    if-ne v2, v11, :cond_9

    .line 134
    .line 135
    :cond_8
    new-instance v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;

    .line 136
    .line 137
    const/16 v0, 0x9

    .line 138
    .line 139
    invoke-direct {v2, v1, v0}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_9
    move-object v12, v2

    .line 146
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 147
    .line 148
    iget-object v13, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 149
    .line 150
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2;

    .line 151
    .line 152
    const/4 v5, 0x4

    .line 153
    const/4 v2, 0x0

    .line 154
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 155
    .line 156
    .line 157
    invoke-static {v14, v13, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-nez v0, :cond_a

    .line 175
    .line 176
    if-ne v1, v11, :cond_b

    .line 177
    .line 178
    :cond_a
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;

    .line 179
    .line 180
    invoke-direct {v1, v7, v2, v12}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;-><init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_b
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 187
    .line 188
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 189
    .line 190
    invoke-static {v14, v0, v1}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    if-nez v0, :cond_c

    .line 202
    .line 203
    if-ne v1, v11, :cond_d

    .line 204
    .line 205
    :cond_c
    new-instance v1, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 206
    .line 207
    invoke-direct {v1, v7, v12}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_d
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 214
    .line 215
    invoke-static {v8, v1, v14, v8, v9}, Landroidx/core/util/DebugUtils;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 216
    .line 217
    .line 218
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 219
    .line 220
    invoke-static {v14}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iget-object v0, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->navigationBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 225
    .line 226
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 227
    .line 228
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    new-instance v2, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;

    .line 233
    .line 234
    invoke-direct {v2, v7, v12}, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 235
    .line 236
    .line 237
    const v3, -0x4118e727

    .line 238
    .line 239
    .line 240
    invoke-static {v3, v2, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    new-instance v3, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$$ExternalSyntheticLambda2;

    .line 245
    .line 246
    invoke-direct {v3, v10, v12, v6, v9}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/core/common/provider/BrandNameProvider;I)V

    .line 247
    .line 248
    .line 249
    const v4, -0x6bc3a920

    .line 250
    .line 251
    .line 252
    invoke-static {v4, v3, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 253
    .line 254
    .line 255
    move-result-object v13

    .line 256
    const v15, 0x180180

    .line 257
    .line 258
    .line 259
    const/16 v16, 0x3a

    .line 260
    .line 261
    const/4 v8, 0x0

    .line 262
    const/4 v10, 0x0

    .line 263
    const/4 v11, 0x0

    .line 264
    const/4 v12, 0x0

    .line 265
    move-object v7, v0

    .line 266
    move-object v9, v2

    .line 267
    invoke-static/range {v7 .. v16}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->Scaffold(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 268
    .line 269
    .line 270
    move-object v5, v1

    .line 271
    goto :goto_6

    .line 272
    :cond_e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 273
    .line 274
    .line 275
    move-object/from16 v5, p4

    .line 276
    .line 277
    :goto_6
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    if-eqz v8, :cond_f

    .line 282
    .line 283
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 284
    .line 285
    const/4 v7, 0x6

    .line 286
    move-object/from16 v1, p0

    .line 287
    .line 288
    move-object/from16 v2, p1

    .line 289
    .line 290
    move-object/from16 v3, p2

    .line 291
    .line 292
    move-object v4, v6

    .line 293
    move/from16 v6, p6

    .line 294
    .line 295
    invoke-direct/range {v0 .. v7}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 296
    .line 297
    .line 298
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 299
    .line 300
    :cond_f
    return-void
.end method

.method public static final toDisplayOptionsState(Lapp/k9mail/feature/account/common/domain/entity/AccountState;)Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;
    .locals 6

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->displayOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 9
    .line 10
    new-instance v3, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 11
    .line 12
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->emailAddress:Ljava/lang/String;

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, p0

    .line 18
    :goto_0
    invoke-direct {v3, v2, v1}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x7

    .line 25
    invoke-direct {p0, v1, v2}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 29
    .line 30
    invoke-direct {v4, v1, v2}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v3, p0, v4}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;-><init>(Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    new-instance p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 38
    .line 39
    new-instance v3, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 40
    .line 41
    iget-object v4, v0, Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;->accountName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {v3, v4, v1}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 47
    .line 48
    iget-object v5, v0, Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;->displayName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {v4, v5, v1}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 54
    .line 55
    iget-object v0, v0, Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;->emailSignature:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move-object v2, v0

    .line 61
    :goto_1
    invoke-direct {v5, v2, v1}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v3, v4, v5}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;-><init>(Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;)V

    .line 65
    .line 66
    .line 67
    return-object p0
.end method

.method public static final toResourceString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of v0, p0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateAccountName$ValidateAccountNameError$BlankAccountName;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const p0, 0x7f12018b

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    instance-of v0, p0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateDisplayName$ValidateDisplayNameError$EmptyDisplayName;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const p0, 0x7f1201a8

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    instance-of v0, p0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailSignature$ValidateEmailSignatureError$BlankEmailSignature;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const p0, 0x7f12018f

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    const-string p1, "Unknown error: "

    .line 53
    .line 54
    invoke-static {p0, p1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method
