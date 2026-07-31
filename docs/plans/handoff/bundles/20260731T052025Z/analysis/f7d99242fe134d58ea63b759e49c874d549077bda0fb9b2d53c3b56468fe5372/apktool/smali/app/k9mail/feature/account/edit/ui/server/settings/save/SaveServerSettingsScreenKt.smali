.class public abstract Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$-933224993:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$1143731368:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$1868006988:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lapp/k9mail/feature/account/oauth/AccountOAuthModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 8
    .line 9
    const v2, -0x379fe221

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsScreenKt;->lambda$-933224993:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    new-instance v0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-direct {v0, v1}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 25
    .line 26
    const v2, 0x6f57864c

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsScreenKt;->lambda$1868006988:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 33
    .line 34
    new-instance v0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;

    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    invoke-direct {v0, v1}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 41
    .line 42
    const v2, 0x442bf4a8

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 46
    .line 47
    .line 48
    sput-object v1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsScreenKt;->lambda$1143731368:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 49
    .line 50
    return-void
.end method

.method public static final SaveServerSettingsContent(Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, -0x37afb063

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v0, p4, 0x6

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    and-int/lit8 v0, p4, 0x8

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :goto_0
    if-eqz v0, :cond_1

    .line 34
    .line 35
    move v0, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v0, 0x2

    .line 38
    :goto_1
    or-int/2addr v0, p4

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v0, p4

    .line 41
    :goto_2
    and-int/lit8 v2, p4, 0x30

    .line 42
    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    const/16 v2, 0x20

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    const/16 v2, 0x10

    .line 55
    .line 56
    :goto_3
    or-int/2addr v0, v2

    .line 57
    :cond_4
    or-int/lit16 v0, v0, 0x180

    .line 58
    .line 59
    and-int/lit16 v2, v0, 0x93

    .line 60
    .line 61
    const/16 v3, 0x92

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x1

    .line 65
    if-eq v2, v3, :cond_5

    .line 66
    .line 67
    move v2, v5

    .line 68
    goto :goto_4

    .line 69
    :cond_5
    move v2, v4

    .line 70
    :goto_4
    and-int/2addr v0, v5

    .line 71
    invoke-virtual {p3, v0, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    const-string p2, "SaveServerSettingsContent"

    .line 78
    .line 79
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 80
    .line 81
    invoke-static {v0, p2}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p2, p1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-interface {p2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    new-instance v2, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;

    .line 94
    .line 95
    invoke-direct {v2, v1, p0}, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const v1, -0x6815f2e3

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v2, p3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/16 v2, 0x30

    .line 106
    .line 107
    invoke-static {p2, v1, p3, v2, v4}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->ResponsiveWidthContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 108
    .line 109
    .line 110
    move-object v8, v0

    .line 111
    goto :goto_5

    .line 112
    :cond_6
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 113
    .line 114
    .line 115
    move-object v8, p2

    .line 116
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    if-eqz p2, :cond_7

    .line 121
    .line 122
    new-instance v5, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    .line 123
    .line 124
    const/16 v10, 0x13

    .line 125
    .line 126
    move-object v6, p0

    .line 127
    move-object v7, p1

    .line 128
    move v9, p4

    .line 129
    invoke-direct/range {v5 .. v10}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 130
    .line 131
    .line 132
    iput-object v5, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 133
    .line 134
    :cond_7
    return-void
.end method

.method public static final SaveServerSettingsScreen(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 14

    .line 1
    move-object/from16 v1, p3

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
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-object/from16 v7, p5

    .line 16
    .line 17
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v0, 0x333cadf8

    .line 20
    .line 21
    .line 22
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v6, 0x2

    .line 30
    const/4 v2, 0x4

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    move v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v6

    .line 36
    :goto_0
    or-int v0, p6, v0

    .line 37
    .line 38
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    const/16 v4, 0x20

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v4, 0x10

    .line 48
    .line 49
    :goto_1
    or-int/2addr v0, v4

    .line 50
    move-object/from16 v4, p2

    .line 51
    .line 52
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    const/16 v5, 0x100

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/16 v5, 0x80

    .line 62
    .line 63
    :goto_2
    or-int/2addr v0, v5

    .line 64
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_3

    .line 69
    .line 70
    const/16 v5, 0x800

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    const/16 v5, 0x400

    .line 74
    .line 75
    :goto_3
    or-int/2addr v0, v5

    .line 76
    or-int/lit16 v0, v0, 0x6000

    .line 77
    .line 78
    and-int/lit16 v5, v0, 0x2493

    .line 79
    .line 80
    const/16 v8, 0x2492

    .line 81
    .line 82
    const/4 v9, 0x0

    .line 83
    const/4 v10, 0x1

    .line 84
    if-eq v5, v8, :cond_4

    .line 85
    .line 86
    move v5, v10

    .line 87
    goto :goto_4

    .line 88
    :cond_4
    move v5, v9

    .line 89
    :goto_4
    and-int/lit8 v8, v0, 0x1

    .line 90
    .line 91
    invoke-virtual {v7, v8, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_e

    .line 96
    .line 97
    shr-int/lit8 v0, v0, 0x9

    .line 98
    .line 99
    iget-object v5, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 100
    .line 101
    invoke-static {v5, v7}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    and-int/lit8 v5, v0, 0xe

    .line 106
    .line 107
    xor-int/lit8 v5, v5, 0x6

    .line 108
    .line 109
    if-le v5, v2, :cond_5

    .line 110
    .line 111
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-nez v5, :cond_6

    .line 116
    .line 117
    :cond_5
    and-int/lit8 v0, v0, 0x6

    .line 118
    .line 119
    if-ne v0, v2, :cond_7

    .line 120
    .line 121
    :cond_6
    move v0, v10

    .line 122
    goto :goto_5

    .line 123
    :cond_7
    move v0, v9

    .line 124
    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 129
    .line 130
    if-nez v0, :cond_8

    .line 131
    .line 132
    if-ne v2, v11, :cond_9

    .line 133
    .line 134
    :cond_8
    new-instance v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;

    .line 135
    .line 136
    invoke-direct {v2, v1, v10}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_9
    move-object v12, v2

    .line 143
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 144
    .line 145
    iget-object v13, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 146
    .line 147
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2;

    .line 148
    .line 149
    const/4 v5, 0x1

    .line 150
    const/4 v2, 0x0

    .line 151
    move-object v3, p1

    .line 152
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 153
    .line 154
    .line 155
    invoke-static {v7, v13, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    if-nez v0, :cond_a

    .line 173
    .line 174
    if-ne v1, v11, :cond_b

    .line 175
    .line 176
    :cond_a
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;

    .line 177
    .line 178
    invoke-direct {v1, v10, v2, v12}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;-><init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_b
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 185
    .line 186
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 187
    .line 188
    invoke-static {v7, v0, v1}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-nez v0, :cond_c

    .line 200
    .line 201
    if-ne v1, v11, :cond_d

    .line 202
    .line 203
    :cond_c
    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 204
    .line 205
    invoke-direct {v1, v6, v12}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_d
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 212
    .line 213
    invoke-static {v9, v1, v7, v9, v10}, Landroidx/core/util/DebugUtils;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 214
    .line 215
    .line 216
    new-instance v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;

    .line 217
    .line 218
    invoke-direct {v0, p0, v12, v10}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    .line 219
    .line 220
    .line 221
    const v1, -0x1299794c

    .line 222
    .line 223
    .line 224
    invoke-static {v1, v0, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda2;

    .line 229
    .line 230
    invoke-direct {v0, v12, v8}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    .line 231
    .line 232
    .line 233
    const v2, -0x506a9ded

    .line 234
    .line 235
    .line 236
    invoke-static {v2, v0, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;

    .line 241
    .line 242
    invoke-direct {v0, v8, v10}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 243
    .line 244
    .line 245
    const v3, -0x7b181b14

    .line 246
    .line 247
    .line 248
    invoke-static {v3, v0, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    const v8, 0x1801b6

    .line 253
    .line 254
    .line 255
    const/16 v9, 0x38

    .line 256
    .line 257
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 258
    .line 259
    const/4 v3, 0x0

    .line 260
    const/4 v4, 0x0

    .line 261
    const/4 v5, 0x0

    .line 262
    invoke-static/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->Scaffold(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 263
    .line 264
    .line 265
    move-object v5, v0

    .line 266
    goto :goto_6

    .line 267
    :cond_e
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 268
    .line 269
    .line 270
    move-object/from16 v5, p4

    .line 271
    .line 272
    :goto_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    if-eqz v8, :cond_f

    .line 277
    .line 278
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 279
    .line 280
    const/4 v7, 0x3

    .line 281
    move-object v1, p0

    .line 282
    move-object v2, p1

    .line 283
    move-object/from16 v3, p2

    .line 284
    .line 285
    move-object/from16 v4, p3

    .line 286
    .line 287
    move/from16 v6, p6

    .line 288
    .line 289
    invoke-direct/range {v0 .. v7}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 290
    .line 291
    .line 292
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 293
    .line 294
    :cond_f
    return-void
.end method
