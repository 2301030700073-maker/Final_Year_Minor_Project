.class public abstract Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$246239164:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, 0xead4fbc

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogKt;->lambda$246239164:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    return-void
.end method

.method public static final SentFolderNotFoundConfirmationDialog(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-object/from16 v14, p4

    .line 17
    .line 18
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    const v0, 0x2b6d28ef

    .line 21
    .line 22
    .line 23
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/16 v0, 0x20

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v0, 0x10

    .line 36
    .line 37
    :goto_0
    or-int v0, p5, v0

    .line 38
    .line 39
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    const/16 v4, 0x100

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/16 v4, 0x80

    .line 49
    .line 50
    :goto_1
    or-int/2addr v0, v4

    .line 51
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    const/16 v4, 0x800

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v4, 0x400

    .line 61
    .line 62
    :goto_2
    or-int/2addr v0, v4

    .line 63
    or-int/lit16 v0, v0, 0x6000

    .line 64
    .line 65
    and-int/lit16 v4, v0, 0x2493

    .line 66
    .line 67
    const/16 v5, 0x2492

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    if-eq v4, v5, :cond_3

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    move v4, v6

    .line 75
    :goto_3
    and-int/lit8 v5, v0, 0x1

    .line 76
    .line 77
    invoke-virtual {v14, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    const v4, -0x6bed2e72

    .line 84
    .line 85
    .line 86
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 87
    .line 88
    .line 89
    const v4, 0x7f120591

    .line 90
    .line 91
    .line 92
    invoke-static {v14, v4}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    const v5, 0x7f120590

    .line 97
    .line 98
    .line 99
    invoke-static {v14, v5}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 104
    .line 105
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    const/high16 v5, 0x41000000    # 8.0f

    .line 115
    .line 116
    const/4 v7, 0x2

    .line 117
    invoke-static {v7, v5}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    new-instance v5, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;

    .line 122
    .line 123
    const/16 v10, 0x8

    .line 124
    .line 125
    invoke-direct {v5, v10, v1}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 126
    .line 127
    .line 128
    const v10, -0x34d70315    # -1.1074795E7f

    .line 129
    .line 130
    .line 131
    invoke-static {v10, v5, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    new-instance v10, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;

    .line 136
    .line 137
    invoke-direct {v10, v3, v2, v7}, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 138
    .line 139
    .line 140
    const v7, -0x2c0f2d2c

    .line 141
    .line 142
    .line 143
    invoke-static {v7, v10, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    shr-int/lit8 v0, v0, 0x6

    .line 148
    .line 149
    and-int/lit8 v0, v0, 0x70

    .line 150
    .line 151
    or-int/lit16 v15, v0, 0x6d80

    .line 152
    .line 153
    const/16 v16, 0x380

    .line 154
    .line 155
    move v0, v6

    .line 156
    move-object v6, v7

    .line 157
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 158
    .line 159
    const/4 v10, 0x0

    .line 160
    const-wide/16 v11, 0x0

    .line 161
    .line 162
    const/4 v13, 0x0

    .line 163
    move-object/from16 v17, v4

    .line 164
    .line 165
    move-object v4, v3

    .line 166
    move-object/from16 v3, v17

    .line 167
    .line 168
    invoke-static/range {v3 .. v16}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->BasicDialog-FItCLgY(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 172
    .line 173
    .line 174
    move-object v4, v7

    .line 175
    goto :goto_4

    .line 176
    :cond_4
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 177
    .line 178
    .line 179
    move-object/from16 v4, p3

    .line 180
    .line 181
    :goto_4
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    if-eqz v7, :cond_5

    .line 186
    .line 187
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 188
    .line 189
    const/16 v6, 0x11

    .line 190
    .line 191
    move-object/from16 v3, p2

    .line 192
    .line 193
    move/from16 v5, p5

    .line 194
    .line 195
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 196
    .line 197
    .line 198
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 199
    .line 200
    :cond_5
    return-void
.end method
